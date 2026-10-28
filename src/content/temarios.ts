/**
 * Sección «Temarios»: los libros en papel de cada curso, en dos modalidades.
 *
 * PENDIENTE:
 * - Si un precio vuelve a ser `null`, la tarjeta dice «Precio próximamente» y no hay datos
 *   estructurados de producto.
 * - Compra: cada modalidad lleva en `compra` su enlace de pago de Stripe (cuenta real, sin Managed
 *   Payments: los libros en papel no entran). El enlace pide dirección de envío (solo España) y
 *   teléfono, suma «Envío en 48 h» (ENVIO) y emite factura. El aviso del pedido le llega a la
 *   academia por el webhook de la plataforma. Sin `compra`, el botón vuelve a abrir WhatsApp.
 * - Si cambia un precio aquí, hay que crear un precio nuevo en Stripe y otro enlace: el enlace
 *   cobra su propio precio, no el de este fichero.
 * - Ejemplo del libro resumen: falta el PDF. Mientras `ejemplo` sea `null`, el botón sale desactivado.
 *
 * Las páginas de ejemplo salen del temario de la plataforma: portada y 12 páginas repartidas del
 * tema 5; el visor enseña la portada y 5 de ellas al azar cada vez que se abre.
 */
import miniaturaGCCompleto from "../../public/temarios/miniaturas/gc-libro-completo.webp";
import miniaturaGCResumen from "../../public/temarios/miniaturas/gc-libro-resumen.webp";
import miniaturaCGJCompleto from "../../public/temarios/miniaturas/cgj-libro-completo.webp";
import miniaturaCGJResumen from "../../public/temarios/miniaturas/cgj-libro-resumen.webp";

export type Ejemplo = { portada: string; paginas: string[]; titulo: string };

export type ModalidadTemario = {
  id: string;
  nombre: string;
  resumen: string;
  miniatura: string;
  incluye: string[];
  precio: number | null;
  destacado?: string;
  ejemplo: Ejemplo | null;
  /** Enlace de compra; sin él, el pedido va por WhatsApp. */
  compra?: string;
};

export type TemarioCurso = { slug: string; ancla: string; modalidades: ModalidadTemario[] };

export const ENTREGA = "Lo recibes en 48 horas";

/**
 * Lo que se promete con cualquier temario en papel: basta con haberlo comprado. Las versiones
 * nuevas no se envían solas; el alumno las pide (WhatsApp o email) mientras siga opositando.
 * La plataforma lleva una copia de estos textos en `src/lib/web-de-la-academia.ts`.
 */
export const ACTUALIZACIONES = {
  titulo: "Siempre al día",
  texto:
    "Nuestros temarios están 100 % actualizados y adaptados a las últimas convocatorias. Además, con la compra del temario tienes todas sus versiones actualizadas en PDF sin coste adicional: reclámalas cuando salgan mientras sigas opositando. Estudia siempre con el contenido más reciente.",
  incluye: "Versiones actualizadas en PDF gratis mientras sigas opositando",
};

/** Gastos de envío de la compra con Stripe, IVA incluido: van como una línea más del pago. */
export const ENVIO = 8;

const paginas = (carpeta: string, numeros: number[]) => numeros.map((n) => `/temarios/${carpeta}/${String(n).padStart(3, "0")}.webp`);

const ejemploGC: Ejemplo = {
  titulo: "Temario completo · Tema 5, Derecho de la Unión Europea",
  portada: "/temarios/guardia-civil/001.webp",
  paginas: paginas("guardia-civil", [401, 409, 417, 426, 434, 442, 450, 458, 466, 475, 483, 491]),
};

const ejemploCGJ: Ejemplo = {
  titulo: "Temario completo · Tema 5, Derecho Penal",
  portada: "/temarios/guardias-jovenes/001.webp",
  paginas: paginas("guardias-jovenes", [32, 33, 35, 36, 37, 38, 40, 41, 42, 43, 45, 46]),
};

export const temarios: TemarioCurso[] = [
  {
    slug: "acceso-guardia-civil",
    ancla: "guardia-civil",
    modalidades: [
      {
        id: "gc-libro-completo",
        compra: "https://buy.stripe.com/eVq14g5WM7nvbqzetX38401",
        // La importación estática versiona la URL al cambiar la imagen y evita miniaturas antiguas.
        miniatura: miniaturaGCCompleto.src,
        nombre: "Pack completo",
        resumen: "Los tres libros para preparar la oposición entera, con el temario actualizado a 2027.",
        incluye: [
          "Libro completo: temario actualizado 2027, los 23 temas de conocimientos",
          "Libro de inglés",
          "Libro de ortografía y gramática",
          ACTUALIZACIONES.incluye,
        ],
        precio: 189.95,
        destacado: "El más completo",
        ejemplo: ejemploGC,
      },
      {
        id: "gc-libro-resumen",
        compra: "https://buy.stripe.com/bJebIU84UbDL1PZ71v38402",
        miniatura: miniaturaGCResumen.src,
        nombre: "Libro resumen",
        resumen: "El temario condensado en un solo libro, para repasar lo esencial de cada tema.",
        incluye: ["Libro resumen del temario actualizado 2027", ACTUALIZACIONES.incluye],
        precio: 69.95,
        ejemplo: null,
      },
    ],
  },
  {
    slug: "colegio-guardias-jovenes",
    ancla: "guardias-jovenes",
    modalidades: [
      {
        id: "cgj-libro-completo",
        compra: "https://buy.stripe.com/bJe3cobh6azHdyH3Pj38403",
        miniatura: miniaturaCGJCompleto.src,
        nombre: "Pack completo",
        resumen: "Los tres libros para preparar el acceso al Colegio, con el temario actualizado a 2027.",
        incluye: [
          "Libro completo: temario actualizado 2027, los 10 temas de conocimientos",
          "Libro de inglés",
          "Libro de ortografía y gramática",
          ACTUALIZACIONES.incluye,
        ],
        precio: 119.95,
        destacado: "El más completo",
        ejemplo: ejemploCGJ,
      },
      {
        id: "cgj-libro-resumen",
        compra: "https://buy.stripe.com/aFaaEQ3OE9vD52b85z38404",
        miniatura: miniaturaCGJResumen.src,
        nombre: "Libro resumen",
        resumen: "El temario del Colegio condensado en un solo libro, para repasar lo esencial.",
        incluye: ["Libro resumen del temario actualizado 2027", ACTUALIZACIONES.incluye],
        precio: 59.95,
        ejemplo: null,
      },
    ],
  },
];
