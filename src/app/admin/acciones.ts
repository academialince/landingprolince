"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { z } from "zod";
import { supabaseServidor } from "@/lib/supabase/server";
import { CORREO_EDITOR } from "@/lib/supabase/config";
import { markdownAHtml } from "@/lib/markdown";
import { ESTADOS } from "@/content/blog-tipos";
import { aSlug } from "@/lib/blog";
import { rutas } from "@/lib/links";

const esquema = z.object({
  id: z.string().uuid().optional().or(z.literal("")),
  titulo: z.string().trim().min(3, "El título necesita al menos 3 caracteres"),
  slug: z.string().trim().min(3, "El slug necesita al menos 3 caracteres"),
  tipo: z.string().trim().min(1),
  entradilla: z.string().trim().max(300, "La entradilla no debería pasar de 300 caracteres"),
  cuerpo: z.string(),
  portada_url: z.string().trim(),
  portada_alt: z.string().trim(),
  estado: z.enum(ESTADOS),
  publicado_en: z.string().trim(),
  curso: z.string().trim(),
  etiquetas: z.string().trim(),
  seo_title: z.string().trim(),
  seo_description: z.string().trim(),
  seo_canonical: z.string().trim(),
  noindex: z.string().optional(),
  datos: z.string(),
});

export type ResultadoAccion = { ok: boolean; error?: string };

async function editorOFallo() {
  const sb = await supabaseServidor();
  if (!sb) return { sb: null, error: "Supabase no está configurado en este entorno." };
  const {
    data: { user },
  } = await sb.auth.getUser();
  if (!user) return { sb: null, error: "Tu sesión ha caducado. Vuelve a entrar." };
  if (user.email !== CORREO_EDITOR)
    return { sb: null, error: "Esta cuenta no puede gestionar el blog." };
  return { sb, error: null };
}

export async function guardarEntrada(
  _previo: ResultadoAccion | null,
  datosFormulario: FormData,
): Promise<ResultadoAccion> {
  const { sb, error } = await editorOFallo();
  if (!sb) return { ok: false, error: error ?? "Sin permisos" };

  const bruto = Object.fromEntries(datosFormulario) as Record<string, string>;
  const validado = esquema.safeParse(bruto);
  if (!validado.success) {
    return { ok: false, error: validado.error.issues[0]?.message ?? "Datos no válidos" };
  }
  const v = validado.data;

  // Sin texto alternativo no se publica: es un requisito de accesibilidad, no una preferencia.
  if (v.estado === "publicado" && v.portada_url && !v.portada_alt) {
    return { ok: false, error: "La portada necesita texto alternativo antes de publicar." };
  }

  let datosExtra: Record<string, unknown> = {};
  try {
    datosExtra = v.datos ? JSON.parse(v.datos) : {};
  } catch {
    return { ok: false, error: "Los campos propios del tipo no son válidos." };
  }

  const fila = {
    slug: aSlug(v.slug),
    tipo: v.tipo,
    titulo: v.titulo,
    entradilla: v.entradilla || null,
    cuerpo: v.cuerpo,
    portada_url: v.portada_url || null,
    portada_alt: v.portada_alt || null,
    estado: v.estado,
    publicado_en:
      v.estado === "publicado" && !v.publicado_en
        ? new Date().toISOString()
        : v.publicado_en
          ? new Date(v.publicado_en).toISOString()
          : null,
    curso: v.curso || null,
    etiquetas: v.etiquetas ? v.etiquetas.split(",").map((t) => t.trim()).filter(Boolean) : [],
    seo: {
      title: v.seo_title || undefined,
      description: v.seo_description || undefined,
      canonical: v.seo_canonical || undefined,
      noindex: v.noindex === "on" || undefined,
    },
    datos: datosExtra,
  };

  const respuesta = v.id
    ? await sb.from("blog_posts").update(fila).eq("id", v.id)
    : await sb.from("blog_posts").insert(fila);

  if (respuesta.error) {
    const duplicado = respuesta.error.code === "23505";
    return {
      ok: false,
      error: duplicado ? "Ya existe una entrada con ese slug." : respuesta.error.message,
    };
  }

  // La entrada tiene que aparecer en segundos, sin esperar a la ventana de ISR.
  revalidatePath(rutas.blog);
  revalidatePath(`${rutas.blog}/${fila.slug}`);
  revalidatePath("/sitemap.xml");
  revalidatePath("/admin");

  redirect("/admin");
}

export async function borrarEntrada(datosFormulario: FormData) {
  const { sb } = await editorOFallo();
  if (!sb) return;
  const id = String(datosFormulario.get("id") ?? "");
  const slug = String(datosFormulario.get("slug") ?? "");
  if (!id) return;

  await sb.from("blog_posts").delete().eq("id", id);
  revalidatePath(rutas.blog);
  revalidatePath(`${rutas.blog}/${slug}`);
  revalidatePath("/admin");
  redirect("/admin");
}

/** Vista previa con el mismo remark que la web pública, para que no se parezcan: sean iguales. */
export async function previsualizar(markdown: string): Promise<string> {
  const { sb } = await editorOFallo();
  if (!sb) return "";
  return markdownAHtml(markdown);
}
