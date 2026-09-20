/**
 * PENDIENTE — IMPORTANTE: los importes son provisionales, puestos para dar forma a la tienda.
 * Hay que confirmarlos antes de publicar, junto con la política de bajas y devoluciones que
 * aparece al pie de la página.
 *
 * La compra ocurre en la plataforma: aquí solo se presenta y se enlaza al alta del plan.
 */
export type Suscripcion = {
  slug: string;
  nombre: string;
  precio: number;
  periodo: string;
  equivalencia: string | null;
  ahorro: string | null;
  resumen: string;
  incluye: string[];
  destacado?: boolean;
};

export const suscripciones: Suscripcion[] = [
  {
    slug: "mensual",
    nombre: "Mensual",
    precio: 39,
    periodo: "/mes",
    equivalencia: null,
    ahorro: null,
    resumen: "Para empezar sin compromiso y comprobar si el método te encaja.",
    incluye: [
      "Acceso completo al curso que elijas",
      "Temario, tests y corrección inmediata",
      "Un simulacro cronometrado al mes",
      "Seguimiento de tu progreso",
      "Baja cuando quieras",
    ],
  },
  {
    slug: "trimestral",
    nombre: "Trimestral",
    precio: 99,
    periodo: "/3 meses",
    equivalencia: "33 € al mes",
    ahorro: "Ahorras 18 €",
    resumen: "El ritmo con el que la mayoría prepara una convocatoria entera.",
    destacado: true,
    incluye: [
      "Todo lo del plan mensual",
      "Simulacros ilimitados con ranking",
      "Guía y plan de pruebas físicas",
      "Corrección de preguntas de respuesta corta",
      "Avisos de convocatoria en el tablón",
    ],
  },
  {
    slug: "anual",
    nombre: "Anual",
    precio: 299,
    periodo: "/año",
    equivalencia: "24,92 € al mes",
    ahorro: "Ahorras 169 €",
    resumen: "Para quien va a por todas y prefiere olvidarse de renovar.",
    incluye: [
      "Todo lo del plan trimestral",
      "Acceso a los dos cursos publicados",
      "Informe de puntos débiles por bloque",
      "Plan de repaso construido sobre tus fallos",
      "Prioridad en la corrección",
    ],
  },
];

export type Complemento = {
  slug: string;
  icono: string;
  nombre: string;
  precio: number;
  formato: string;
  detalle: string;
};

export const complementos: Complemento[] = [
  {
    slug: "pack-simulacros",
    icono: "Timer",
    nombre: "Pack de simulacros",
    precio: 19,
    formato: "pago único",
    detalle:
      "Cinco simulacros cronometrados adicionales con revisión razonada y ranking, para las semanas previas al examen.",
  },
  {
    slug: "plan-fisico",
    icono: "Dumbbell",
    nombre: "Plan físico personalizado",
    precio: 29,
    formato: "pago único",
    detalle:
      "Plan de entrenamiento adaptado a tu nivel de partida y a la categoría por la que te presentas, con marcas objetivo por semana.",
  },
  {
    slug: "revision-entrevista",
    icono: "ClipboardCheck",
    nombre: "Preparación de entrevista",
    precio: 49,
    formato: "sesión",
    detalle:
      "Sesión individual para preparar la entrevista personal y el contraste con el cuestionario de personalidad.",
  },
];

export const comparativa = {
  filas: [
    { caracteristica: "Temario completo del curso", mensual: true, trimestral: true, anual: true },
    { caracteristica: "Tests por tema con explicación", mensual: true, trimestral: true, anual: true },
    { caracteristica: "Simulacros cronometrados", mensual: "1 al mes", trimestral: "Ilimitados", anual: "Ilimitados" },
    { caracteristica: "Ranking privado del curso", mensual: false, trimestral: true, anual: true },
    { caracteristica: "Plan de pruebas físicas", mensual: false, trimestral: true, anual: true },
    { caracteristica: "Corrección de respuesta corta", mensual: false, trimestral: true, anual: true },
    { caracteristica: "Acceso a los dos cursos", mensual: false, trimestral: false, anual: true },
    { caracteristica: "Informe de puntos débiles", mensual: false, trimestral: false, anual: true },
  ],
};

export const condiciones = [
  "Los precios incluyen IVA.",
  "La suscripción se renueva automáticamente al final de cada periodo y puedes darla de baja en cualquier momento desde tu cuenta.",
  "Salvo el plan anual, cada suscripción da acceso a un curso. Puedes cambiar de curso una vez por periodo.",
  "El pago se realiza en la plataforma. Esta web no recoge datos de tarjeta en ningún momento.",
];
