/**
 * Faldón de autoridad de la portada.
 *
 * PENDIENTE — IMPORTANTE: estas cifras son provisionales, puestas para dar forma al bloque.
 * Publicar datos de resultados que no se puedan sostener es publicidad engañosa y en una
 * academia de oposiciones es justo lo que más caro sale. Antes de salir a producción hay que
 * sustituirlas por las reales.
 *
 * Los tres últimos son hechos del producto y los podéis verificar en un minuto mirando la
 * plataforma, que además convence más que un porcentaje de aprobados sin auditar.
 */
export type Kpi = {
  valor: string;
  etiqueta: string;
  detalle: string;
};

export const kpis: Kpi[] = [
  { valor: "+8", etiqueta: "años", detalle: "preparando el acceso a la Guardia Civil" },
  { valor: "+1.200", etiqueta: "alumnos", detalle: "han preparado su convocatoria con nosotros" },
  { valor: "+9.000", etiqueta: "preguntas", detalle: "en el banco de tests, por tema y bloque" },
  { valor: "+40", etiqueta: "simulacros", detalle: "cronometrados con el formato del examen" },
];
