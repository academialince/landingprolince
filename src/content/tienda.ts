/**
 * El plan se paga dentro de la plataforma (Stripe), así que «Comprar» lleva al alta.
 * PENDIENTE: precio y páginas del temario suelto y descuentos de los packs, antes de activar
 * `materialesVisibles`; confirmar la política de bajas y devoluciones del pie.
 */
export type Suscripcion = {
  slug: string;
  nombre: string;
  precio: number;
  periodo: string;
  resumen: string;
  incluye: string[];
};

/**
 * Lo que vende la plataforma a 15/10/2026 (repo Prolince: src/lib/suscripcion.ts y src/lib/cuota.ts).
 * Si cambia el plan o la cuota gratuita en el producto, se cambia aquí.
 */
export const suscripcion: Suscripcion = {
  slug: "prolince",
  nombre: "Plan ProLince",
  precio: 9.95,
  periodo: "/mes por curso",
  resumen: "Un único plan con todo incluido. Sin niveles y sin permanencia: te das de baja cuando quieras.",
  incluye: [
    "Banco de más de 19.000 preguntas con su explicación",
    "Tests ilimitados por tema",
    "Tests personalizados de hasta 20 preguntas: de todo el temario, de un tema o de los subtemas que elijas",
    "«Repasa tus errores»: las preguntas que fallas vuelven hasta que las aciertas",
    "2 simulacros al mes con exámenes oficiales y ranking",
    "Temario en PDF con esquemas, en versión web y móvil",
    "Estadísticas por tema y tu evolución frente a la media del grupo",
    "Comunicados del curso en el tablón y en tu correo",
    "Soporte por email y canales de WhatsApp y Telegram",
  ],
};

/** Cuota gratuita: un curso a elegir, sin pagar nada (supabase/migrations/…_modelo_gratuito.sql). */
export const planGratis = {
  nombre: "Empieza gratis",
  resumen: "Elige un curso y prueba la plataforma antes de pagar nada.",
  incluye: ["Un curso a tu elección", "5 tests", "1 simulacro con ranking", "Estadísticas de tus resultados"],
} as const;

/**
 * Temario suelto y packs de simulacros: la plataforma todavía no los vende. Mientras sea `false`,
 * la tienda no los enseña. Al activarlos hay que rellenar páginas y precio del temario.
 */
export const materialesVisibles = false;

export type FormatoMaterial = "digital" | "fisico";

export const temario = {
  nombre: "Temario completo",
  paginas: "X páginas",
  precio: "X €",
  descripcion:
    "Todo el contenido necesario para preparar la oposición, disponible en formato digital o impreso.",
} as const;

export const packsSimulacros = [
  { cantidad: 10, precioUnidad: 3, descuento: null },
  { cantidad: 25, precioUnidad: 2.7, descuento: "10 % de descuento" },
  { cantidad: 50, precioUnidad: 2.4, descuento: "20 % de descuento" },
] as const;

export const formatoPrecio = (precio: number) =>
  precio.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });

export const condiciones = [
  "El precio incluye IVA.",
  "El plan es por curso, se renueva automáticamente cada mes y puedes darlo de baja en cualquier momento.",
  "El pago se procesa con Stripe. Esta web no recoge datos de tarjeta en ningún momento.",
];
