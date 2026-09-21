import "server-only";
import { cache } from "react";
import { supabaseServidor } from "./supabase/server";
import { supabasePublico } from "./supabase/publico";
import { ENTRADAS_POR_PAGINA } from "./blog-filtros";
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

/** RLS sigue siendo la frontera de seguridad; el cliente público no hereda cookies. */
export async function listarPublicadas(opciones: { tipo?: string; limite?: number } = {}) {
  const sb = supabasePublico();
  if (!sb) return [];

  let consulta = sb
    .from("blog_posts")
    .select(CAMPOS)
    .order("publicado_en", { ascending: false, nullsFirst: false })
    .order("id", { ascending: false });

  if (opciones.tipo) consulta = consulta.eq("tipo", opciones.tipo);
  if (opciones.limite) consulta = consulta.limit(opciones.limite);

  const { data, error } = await consulta;
  if (error) throw new Error("No se han podido cargar las publicaciones.");
  return (data ?? []) as Entrada[];
}

export const entradaPorSlug = cache(async (slug: string) => {
  const sb = supabasePublico();
  if (!sb) return null;
  const { data, error } = await sb.from("blog_posts").select(CAMPOS).eq("slug", slug).maybeSingle();
  if (error) throw new Error("No se ha podido cargar el artículo.");
  return (data as Entrada | null) ?? null;
});

export type ResumenEntrada = Pick<Entrada, "id" | "slug" | "tipo" | "titulo" | "entradilla" | "portada_url" | "portada_alt" | "publicado_en">;
const CAMPOS_RESUMEN = "id,slug,tipo,titulo,entradilla,portada_url,portada_alt,publicado_en";

export const listarPaginaPublicada = cache(async (pagina: number, tipo?: string) => {
  const sb = supabasePublico();
  if (!sb) return { entradas: [] as ResumenEntrada[], total: 0 };
  let recuento = sb.from("blog_posts").select("id", { count: "exact", head: true });
  if (tipo) recuento = recuento.eq("tipo", tipo);
  const { count, error: errorRecuento } = await recuento;
  if (errorRecuento) throw new Error("No se han podido contar las publicaciones.");
  const total = count ?? 0;
  const desde = (pagina - 1) * ENTRADAS_POR_PAGINA;
  if (desde >= total) return { entradas: [] as ResumenEntrada[], total };
  let consulta = sb.from("blog_posts").select(CAMPOS_RESUMEN)
    .order("publicado_en", { ascending: false, nullsFirst: false })
    .order("id", { ascending: false })
    .range(desde, desde + ENTRADAS_POR_PAGINA - 1);
  if (tipo) consulta = consulta.eq("tipo", tipo);
  const { data, error } = await consulta;
  if (error) throw new Error("No se han podido cargar las publicaciones.");
  return { entradas: (data ?? []) as ResumenEntrada[], total };
});

export async function entradasRelacionadas(slug: string, curso: string | null) {
  const sb = supabasePublico();
  if (!sb) return [] as ResumenEntrada[];
  let consulta = sb.from("blog_posts").select(CAMPOS_RESUMEN).neq("slug", slug)
    .order("publicado_en", { ascending: false, nullsFirst: false }).order("id", { ascending: false }).limit(3);
  if (curso) consulta = consulta.eq("curso", curso);
  const { data, error } = await consulta;
  if (error) return [] as ResumenEntrada[];
  return (data ?? []) as ResumenEntrada[];
}

/** Recorre el sitemap por lotes, evitando el límite de filas de la API. */
export async function entradasSitemap() {
  const sb = supabasePublico();
  if (!sb) return [];
  type Fila = Pick<Entrada, "slug" | "actualizado_en" | "seo" | "portada_url">;
  const entradas: Fila[] = [];
  for (let desde = 0; ; desde += 500) {
    const { data, error } = await sb.from("blog_posts").select("slug,actualizado_en,seo,portada_url")
      .order("id").range(desde, desde + 499);
    if (error) throw new Error("No se ha podido generar el sitemap.");
    entradas.push(...((data ?? []) as Fila[]));
    if (!data || data.length < 500) break;
  }
  return entradas;
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
