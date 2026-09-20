import "server-only";
import { supabaseServidor } from "./supabase/server";
import type { Estado } from "@/content/blog-tipos";

export type Entrada = {
  id: string;
  slug: string;
  tipo: string;
  titulo: string;
  entradilla: string | null;
  cuerpo: string;
  portada_url: string | null;
  portada_alt: string | null;
  estado: Estado;
  publicado_en: string | null;
  curso: string | null;
  etiquetas: string[];
  seo: { title?: string; description?: string; canonical?: string; noindex?: boolean };
  datos: Record<string, string | number | null>;
  creado_en: string;
  actualizado_en: string;
};

const CAMPOS =
  "id, slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos, creado_en, actualizado_en";

/**
 * Las lecturas públicas no filtran por estado: de eso se encarga RLS, que solo devuelve lo
 * publicado. Repetir el filtro aquí daría una falsa sensación de seguridad si algún día la
 * política cambiara.
 */
export async function listarPublicadas(opciones: { tipo?: string; limite?: number } = {}) {
  const sb = await supabaseServidor();
  if (!sb) return [];

  let consulta = sb
    .from("blog_posts")
    .select(CAMPOS)
    .order("publicado_en", { ascending: false });

  if (opciones.tipo) consulta = consulta.eq("tipo", opciones.tipo);
  if (opciones.limite) consulta = consulta.limit(opciones.limite);

  const { data, error } = await consulta;
  if (error) return [];
  return (data ?? []) as Entrada[];
}

export async function entradaPorSlug(slug: string) {
  const sb = await supabaseServidor();
  if (!sb) return null;
  const { data } = await sb.from("blog_posts").select(CAMPOS).eq("slug", slug).maybeSingle();
  return (data as Entrada | null) ?? null;
}

/** Listado del panel: RLS deja ver todo solo al editor, así que aquí no se filtra nada. */
export async function listarTodas() {
  const sb = await supabaseServidor();
  if (!sb) return [];
  const { data } = await sb.from("blog_posts").select(CAMPOS).order("actualizado_en", { ascending: false });
  return (data ?? []) as Entrada[];
}

export async function entradaPorId(id: string) {
  const sb = await supabaseServidor();
  if (!sb) return null;
  const { data } = await sb.from("blog_posts").select(CAMPOS).eq("id", id).maybeSingle();
  return (data as Entrada | null) ?? null;
}

export function fechaLarga(iso: string | null) {
  if (!iso) return null;
  return new Date(iso).toLocaleDateString("es-ES", {
    day: "numeric",
    month: "long",
    year: "numeric",
  });
}

export function aSlug(texto: string) {
  return texto
    .normalize("NFD")
    .replace(/[̀-ͯ]/g, "")
    .toLowerCase()
    .replace(/[^a-z0-9\s-]/g, "")
    .trim()
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-")
    .slice(0, 80);
}
