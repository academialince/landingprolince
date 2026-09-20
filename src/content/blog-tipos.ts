/**
 * Registro de tipos de entrada. Decide cómo se llama el tipo, qué campos extra enseña el editor
 * y qué marcado estructurado se emite.
 *
 * Añadir un tipo es añadir una entrada aquí: no hay migración de por medio, porque los valores
 * acaban en la columna `datos` jsonb.
 */
export type CampoExtra = {
  clave: string;
  etiqueta: string;
  tipo: "texto" | "numero" | "fecha" | "url";
};

export type TipoEntrada = {
  clave: string;
  etiqueta: string;
  schema: "Article" | "NewsArticle" | "HowTo";
  campos: CampoExtra[];
};

export const tiposEntrada: TipoEntrada[] = [
  { clave: "articulo", etiqueta: "Artículo", schema: "Article", campos: [] },
  {
    clave: "convocatoria",
    etiqueta: "Convocatoria",
    schema: "NewsArticle",
    campos: [
      { clave: "plazas", etiqueta: "Plazas", tipo: "numero" },
      { clave: "organismo", etiqueta: "Organismo convocante", tipo: "texto" },
      { clave: "fecha_boe", etiqueta: "Publicación en el BOE", tipo: "fecha" },
      { clave: "url_boe", etiqueta: "Enlace al BOE", tipo: "url" },
    ],
  },
  {
    clave: "guia",
    etiqueta: "Guía de estudio",
    schema: "HowTo",
    campos: [{ clave: "duracion", etiqueta: "Tiempo estimado", tipo: "texto" }],
  },
  {
    clave: "prueba-fisica",
    etiqueta: "Pruebas físicas",
    schema: "HowTo",
    campos: [
      { clave: "categoria", etiqueta: "Categoría", tipo: "texto" },
      { clave: "marca", etiqueta: "Marca de referencia", tipo: "texto" },
    ],
  },
  { clave: "caso", etiqueta: "Caso de alumno", schema: "Article", campos: [] },
];

export const tipoPorClave = (clave: string) =>
  tiposEntrada.find((t) => t.clave === clave) ?? tiposEntrada[0];

export const ESTADOS = ["borrador", "programado", "publicado", "retirado"] as const;
export type Estado = (typeof ESTADOS)[number];
