/**
 * Faldón de datos de la portada. Solo hechos del producto que se pueden comprobar en la
 * plataforma (base de producción a 15/10/2026): nada de alumnos, años ni aprobados sin auditar.
 * Al crecer el banco o publicar más simulacros, se actualizan aquí.
 */
export type Kpi = {
  valor: string;
  etiqueta: string;
  detalle: string;
};

export const kpis: Kpi[] = [
  { valor: "+19.000", etiqueta: "preguntas", detalle: "en el banco de tests de la plataforma" },
  { valor: "19", etiqueta: "exámenes oficiales", detalle: "de Guardia Civil, de 2017 a 2026, como simulacro" },
  { valor: "23", etiqueta: "temas con esquemas", detalle: "en PDF, en versión web y móvil" },
  { valor: "0 €", etiqueta: "para empezar", detalle: "5 tests y 1 simulacro gratis en el curso que elijas" },
];
