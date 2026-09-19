/**
 * PENDIENTE: los importes son provisionales y no deben publicarse sin confirmar. Mientras
 * `precio` sea `null`, la tarjeta enseña el plan sin cifra en lugar de inventar una.
 */
export type Plan = {
  slug: string;
  nombre: string;
  precio: number | null;
  periodo: string;
  resumen: string;
  incluye: string[];
  destacado?: boolean;
  cursoSlug?: string;
};

export const planes: Plan[] = [
  {
    slug: "mensual",
    nombre: "Mensual",
    precio: null,
    periodo: "al mes",
    resumen: "Para empezar sin compromiso y ver si el método te encaja.",
    incluye: [
      "Temario completo de la oposición",
      "Tests por tema con corrección inmediata",
      "Un simulacro cronometrado al mes",
      "Seguimiento de tu progreso",
    ],
    cursoSlug: "acceso-guardia-civil",
  },
  {
    slug: "convocatoria",
    nombre: "Convocatoria",
    precio: null,
    periodo: "hasta el examen",
    resumen: "La preparación completa, desde hoy hasta el día de la prueba.",
    destacado: true,
    incluye: [
      "Todo lo del plan mensual",
      "Simulacros ilimitados con ranking",
      "Guía y plan de pruebas físicas",
      "Corrección de preguntas de respuesta corta",
      "Avisos de convocatoria en el tablón",
    ],
    cursoSlug: "acceso-guardia-civil",
  },
  {
    slug: "intensivo",
    nombre: "Intensivo",
    precio: null,
    periodo: "3 meses",
    resumen: "Para quien ya lleva temario y quiere afinar antes del examen.",
    incluye: [
      "Simulacros semanales",
      "Revisión razonada de cada intento",
      "Informe de puntos débiles por bloque",
      "Plan de repaso sobre tus fallos",
    ],
    cursoSlug: "acceso-guardia-civil",
  },
];
