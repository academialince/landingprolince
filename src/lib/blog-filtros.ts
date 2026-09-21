import { tiposEntrada } from "@/content/blog-tipos";

export const ENTRADAS_POR_PAGINA = 12;
export type ParametrosBlog = Record<string, string | string[] | undefined>;

export function leerFiltrosBlog(params: ParametrosBlog) {
  const tipo = typeof params.tipo === "string" && tiposEntrada.some((t) => t.clave === params.tipo)
    ? params.tipo : undefined;
  const numero = typeof params.pagina === "string" && /^[1-9]\d{0,6}$/.test(params.pagina)
    ? Number(params.pagina) : 1;
  return { tipo, pagina: numero };
}

export function urlBlog(tipo?: string, pagina = 1) {
  const params = new URLSearchParams();
  if (tipo) params.set("tipo", tipo);
  if (pagina > 1) params.set("pagina", String(pagina));
  return `/blog${params.size ? `?${params}` : ""}`;
}

export function paginasVisibles(actual: number, total: number) {
  return [...new Set([1, actual - 1, actual, actual + 1, total])]
    .filter((p) => p >= 1 && p <= total).sort((a, b) => a - b);
}
