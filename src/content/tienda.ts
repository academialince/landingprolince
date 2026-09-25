/**
 * PENDIENTE — IMPORTANTE: los botones de compra apuntan de momento a stripe.com. Hay que añadir
 * los enlaces de pago reales, confirmar páginas y precio del temario, y validar los descuentos
 * provisionales de los packs antes de publicar. También falta confirmar la política de bajas y
 * devoluciones que aparece al pie de la página.
 */
export type Suscripcion = {
  slug: string;
  nombre: string;
  precio: number;
  periodo: string;
  resumen: string;
  incluye: string[];
};

export const suscripcion: Suscripcion = {
  slug: "prolince",
  nombre: "Suscripción ProLince",
  precio: 11.95,
  periodo: "/mes",
  resumen: "Un único plan con todo incluido. Sin niveles, sin extras de pago y sin permanencia.",
  incluye: [
    "Acceso a más de 10.000 preguntas verificadas por guardias civiles expertos en la materia",
    "Tests ilimitados",
    "Tests personalizados ilimitados, creados por ti",
    "Tests de repaso basados en tus fallos",
    "Acceso a resúmenes, esquemas y material de estudio",
    "2 simulacros al mes",
    "Acceso a la plataforma",
    "Acceso a la comunidad en WhatsApp",
    "Soporte y resolución de dudas",
  ],
};

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
  "La suscripción se renueva automáticamente cada mes y puedes darla de baja en cualquier momento.",
  "El pago se procesa con Stripe. Esta web no recoge datos de tarjeta en ningún momento.",
];
