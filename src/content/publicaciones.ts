/**
 * Tipos de publicación para redes que el panel sabe mostrar. Deben coincidir con
 * `publicaciones_tipo_check` en la migración de publicaciones.
 */
export const tiposPublicacion = [
  {
    clave: "pregunta-del-dia",
    etiqueta: "Pregunta del día",
    descripcion: "Vídeo vertical con una pregunta del banco, su portada y el texto para la publicación.",
  },
] as const;

export type TipoPublicacion = (typeof tiposPublicacion)[number];

export function tipoPublicacion(clave: string) {
  return tiposPublicacion.find((t) => t.clave === clave) ?? null;
}

/** «2026-09-27» → «27/09/2026», que es como se nombran las carpetas. */
export function fechaCarpeta(fecha: string) {
  const [a, m, d] = fecha.split("-");
  return `${d}/${m}/${a}`;
}
