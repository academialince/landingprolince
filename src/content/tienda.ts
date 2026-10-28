/**
 * Los packs se contratan dentro de la plataforma (Stripe), así que los botones llevan al alta.
 * PENDIENTE: precio y páginas del temario suelto y descuentos de los packs, antes de activar
 * `materialesVisibles`; confirmar la política de bajas y devoluciones del pie.
 */
export type Pack = {
  id: string;
  /** No se enseña (ni en la tienda ni en los datos estructurados). */
  oculto?: boolean;
  /** Días de prueba gratis (solo la suscripción mensual de tests, oferta de apertura). */
  prueba?: number;
  nombre: string;
  /** Una línea bajo el nombre. */
  resumen: string;
  precio: number;
  /** "mensual" se cobra cada mes; "unico", una sola vez. */
  pago: "mensual" | "unico";
  incluye: string[];
  /** Lo que el pack deja fuera, dicho claro para que nadie se lleve una sorpresa. */
  noIncluye?: string;
  destacado?: string;
};

/**
 * Packs de cada curso (por su slug). Mismos cinco packs en los dos cursos; cambian el precio y el
 * temario, que en el Colegio es una versión reducida del de la Escala.
 * PENDIENTE: oferta de Black Friday del Pack Especial Simulacros (GC 75 €, CGJ 49,95 €), aún sin fechas.
 */
/** Mismas frases en los dos cursos, para que se lean igual; solo cambian cifras y precios. */
const comunes = {
  esquemasYLengua: "Acceso a esquemas por tema y de ortografía, gramática e inglés",
  tests: "Tests ilimitados personalizados por tema y por materia (inglés, ortografía, gramática…), aleatorios y predeterminados con ranking",
  repaso: "Tests de repaso de las preguntas falladas",
  temarioDigital: "Temario digital, en la web y en el móvil",
  /** Los años salen de los exámenes publicados en la plataforma: al subir uno nuevo, cambiarlos aquí y allí. */
  anteriores: (desde: number, hasta: number) => `Todos los exámenes de años anteriores (de ${desde} a ${hasta})`,
  exclusivos: (cuantos: number) => `${cuantos} simulacros de conocimientos, ortografía, inglés y psicotécnicos exclusivos de ProLince (5 de ellos también en PDF para imprimir)`,
  anual: "12 mensualidades de la Suscripción de Tests: tests ilimitados personalizados por tema y por materia (inglés, ortografía, gramática…)",
};

export const packs: Record<string, Pack[]> = {
  "acceso-guardia-civil": [
    {
      id: "gc-1",
      prueba: 7,
      nombre: "Suscripción mensual de Tests",
      resumen: "Para entrenar a diario con tests sin límite.",
      precio: 9.95,
      pago: "mensual",
      incluye: [comunes.tests, comunes.repaso, `${comunes.anteriores(2017, 2026)}, incluidos`, comunes.esquemasYLengua],
      noIncluye: "No incluye temario ni los simulacros exclusivos de ProLince.",
    },
    {
      id: "gc-2-1",
      nombre: "Pack Especial Simulacros",
      resumen: "Para llegar al examen con el formato bien entrenado.",
      precio: 89.95,
      pago: "unico",
      incluye: [comunes.anteriores(2017, 2026), comunes.exclusivos(25), comunes.esquemasYLengua],
      noIncluye: "No incluye temario.",
    },
    {
      id: "gc-2-2",
      // oculto de momento
      oculto: true,
      nombre: "Pack 2.2 · Simulacros de conocimientos",
      resumen: "Los mismos simulacros, solo de la prueba de conocimientos.",
      precio: 39.95,
      pago: "unico",
      incluye: ["25 simulacros de la prueba de conocimientos (5 de ellos en PDF)", comunes.esquemasYLengua],
      noIncluye: "No incluye temario.",
    },
    {
      id: "gc-3",
      // el temario se vende ahora en la sección Temario (libros)
      oculto: true,
      nombre: "Pack Temarios",
      resumen: "Todo el temario para estudiar, en PDF descargable.",
      precio: 69.95,
      pago: "unico",
      incluye: ["Temario de la Escala de Cabos y Guardias, descargable", "Temario de ortografía y gramática", "Temario de inglés"],
    },
    {
      id: "gc-4",
      nombre: "Pack Ahorro",
      resumen: "Un año de tests ilimitados, el temario digital y más de 50 simulacros.",
      precio: 179,
      pago: "unico",
      incluye: [comunes.anual, comunes.repaso, comunes.temarioDigital, comunes.anteriores(2017, 2026), "Más de 50 simulacros online: oficiales y exclusivos de ProLince", comunes.esquemasYLengua],
      destacado: "El más completo",
    },
  ],
  "colegio-guardias-jovenes": [
    {
      id: "cgj-1",
      prueba: 7,
      nombre: "Suscripción mensual de Tests",
      resumen: "Para entrenar a diario con tests sin límite.",
      precio: 8.95,
      pago: "mensual",
      incluye: [comunes.tests, comunes.repaso, `${comunes.anteriores(2024, 2026)}, incluidos`, comunes.esquemasYLengua],
      noIncluye: "No incluye temario ni los simulacros exclusivos de ProLince.",
    },
    {
      id: "cgj-2-1",
      nombre: "Pack Especial Simulacros",
      resumen: "Para llegar al examen con el formato bien entrenado.",
      precio: 59.95,
      pago: "unico",
      incluye: [comunes.anteriores(2024, 2026), comunes.exclusivos(15), comunes.esquemasYLengua],
      noIncluye: "No incluye temario.",
    },
    {
      id: "cgj-2-2",
      // oculto de momento
      oculto: true,
      nombre: "Pack 2.2 · Simulacros de conocimientos",
      resumen: "Los mismos simulacros, solo de la prueba de conocimientos.",
      precio: 29.95,
      pago: "unico",
      incluye: ["25 simulacros de la prueba de conocimientos (5 de ellos en PDF)", comunes.esquemasYLengua],
      noIncluye: "No incluye temario.",
    },
    {
      id: "cgj-3",
      // el temario se vende ahora en la sección Temario (libros)
      oculto: true,
      nombre: "Pack Temarios",
      resumen: "El temario del Colegio para estudiar, en PDF descargable.",
      precio: 49.95,
      pago: "unico",
      incluye: [
        "Temario del Colegio de Guardias Jóvenes (versión reducida del de la Escala), descargable",
        "Temario de ortografía y gramática",
        "Temario de inglés",
      ],
    },
    {
      id: "cgj-4",
      nombre: "Pack Ahorro",
      resumen: "Un año de tests ilimitados, el temario digital y más de 30 simulacros.",
      precio: 109.95,
      pago: "unico",
      incluye: [comunes.anual, comunes.repaso, comunes.temarioDigital, comunes.anteriores(2024, 2026), "Más de 30 simulacros online: oficiales y exclusivos de ProLince", comunes.esquemasYLengua],
      destacado: "El más completo",
    },
  ],
};

/** Packs que se enseñan de un curso. */
export const packsVisibles = (slug: string) => (packs[slug] ?? []).filter((p) => !p.oculto);

/** Precio más bajo y más alto de un curso, para los datos estructurados. */
export const rangoPrecios = (slug: string) => {
  const precios = packsVisibles(slug).map((p) => p.precio);
  return { min: Math.min(...precios), max: Math.max(...precios), n: precios.length };
};

/**
 * Oferta de apertura: 7 días de la suscripción mensual de tests del curso que elijas, gratis. Pasado el plazo, la
 * plataforma bloquea el acceso hasta que se contrata un pack.
 */
export const DIAS_PRUEBA = 7;

export const planGratis = {
  nombre: `Prueba ${DIAS_PRUEBA} días gratis`,
  resumen: `${DIAS_PRUEBA} días de la suscripción de tests de tu curso, sin pagar nada. Pasado ese plazo, el acceso se bloquea hasta que elijas un pack.`,
  incluye: ["Tests ilimitados", "Esquemas", "Ortografía, gramática e inglés", "Si no sigues, no pagas"],
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
  "Los packs son por curso. La suscripción mensual de tests se renueva cada mes y puedes darla de baja cuando quieras; el resto se paga una sola vez.",
  "El pago se procesa con Stripe. Esta web no recoge datos de tarjeta en ningún momento.",
];

/** Miniatura de marca de cada pack, compartida por las tarjetas y el JSON-LD. */
export const imagenPack = (id: string) => `/packs/${id}.webp`;

/**
 * Las dos versiones de la miniatura: 400 px para pantallas normales y 800 para retina. La
 * tarjeta mide ~400 px; con una sola imagen grande el navegador la encogía al vuelo y el texto
 * salía dentado.
 */
export const imagenPackSrcSet = (id: string) => `/packs/${id}-400.webp 400w, /packs/${id}.webp 800w`;
