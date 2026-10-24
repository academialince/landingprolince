/**
 * Sección «Temarios»: los libros en papel de cada curso, en dos modalidades.
 *
 * PENDIENTE:
 * - Precios: mientras `precio` sea `null`, la tarjeta dice «Precio próximamente» y no hay datos
 *   estructurados de producto.
 * - Compra: de momento el botón abre WhatsApp con el pedido escrito. Cuando haya pasarela, se pone
 *   su enlace en `compra`.
 * - Ejemplo del libro resumen: falta el PDF. Mientras `ejemplo` sea `null`, el botón sale desactivado.
 *
 * Las páginas de ejemplo salen del temario de la plataforma: portada y 12 páginas repartidas del
 * tema 5; el visor enseña la portada y 5 de ellas al azar cada vez que se abre.
 */
export type Ejemplo = { portada: string; paginas: string[]; titulo: string };

export type ModalidadTemario = {
  id: string;
  nombre: string;
  resumen: string;
  incluye: string[];
  precio: number | null;
  destacado?: string;
  ejemplo: Ejemplo | null;
  /** Enlace de compra; sin él, el pedido va por WhatsApp. */
  compra?: string;
};

export type TemarioCurso = { slug: string; ancla: string; modalidades: ModalidadTemario[] };

export const ENTREGA = "Lo recibes en 48 horas";

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
        nombre: "Pack completo",
        resumen: "Los tres libros para preparar la oposición entera, con el temario actualizado a 2027.",
        incluye: [
          "Libro completo: temario actualizado 2027, los 23 temas de conocimientos",
          "Libro de inglés",
          "Libro de ortografía y gramática",
        ],
        precio: null,
        destacado: "El más completo",
        ejemplo: ejemploGC,
      },
      {
        id: "gc-libro-resumen",
        nombre: "Libro resumen",
        resumen: "El temario condensado en un solo libro, para repasar lo esencial de cada tema.",
        incluye: ["Libro resumen del temario actualizado 2027"],
        precio: null,
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
        nombre: "Pack completo",
        resumen: "Los tres libros para preparar el acceso al Colegio, con el temario actualizado a 2027.",
        incluye: [
          "Libro completo: temario actualizado 2027, los 10 temas de conocimientos",
          "Libro de inglés",
          "Libro de ortografía y gramática",
        ],
        precio: null,
        destacado: "El más completo",
        ejemplo: ejemploCGJ,
      },
      {
        id: "cgj-libro-resumen",
        nombre: "Libro resumen",
        resumen: "El temario del Colegio condensado en un solo libro, para repasar lo esencial.",
        incluye: ["Libro resumen del temario actualizado 2027"],
        precio: null,
        ejemplo: null,
      },
    ],
  },
];
