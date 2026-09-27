import { cursosAbiertos, cursosVisibles, inicioVisible, nosotrosVisible, rutas, tiendaVisible } from "@/lib/links";
import { cursos } from "./cursos";

/**
 * Datos de marca y contacto.
 *
 * Los campos a `null` son datos reales que todavía no existen. Los componentes los omiten en
 * lugar de inventarlos: es preferible un pie sin teléfono que un teléfono falso.
 */
export const site = {
  nombre: "ProLince",
  nombreLargo: "Academia ProLince",
  claim: "Preparación de oposiciones",
  descripcion:
    "Academia online para preparar el acceso a la Guardia Civil: temario, tests, simulacros cronometrados y seguimiento de tu progreso.",

  contacto: {
    email: null as string | null, // PENDIENTE: correo público
    telefono: null as string | null, // PENDIENTE: teléfono público
    /** Formato internacional y sin signos, como lo pide wa.me. */
    whatsapp: "34695834018" as string | null,
    /** Texto con el que se abre la conversación desde el botón flotante y el pie. */
    mensajeWhatsapp: "Hola, quería más información de Academia Prolince.",
  },

  /** PENDIENTE: razón social, NIF y domicilio para el aviso legal. */
  legal: {
    razonSocial: null as string | null,
    nif: null as string | null,
    domicilio: null as string | null,
  },

  redes: [] as { nombre: string; url: string }[],
} as const;

export type ItemNav = {
  etiqueta: string;
  /** Ausente en los grupos: «Cursos» abre un desplegable, no lleva a ninguna página. */
  href?: string;
  hijos?: { etiqueta: string; descripcion: string; href: string }[];
};

export const navegacion: ItemNav[] = [
  ...(inicioVisible ? [{ etiqueta: "Inicio", href: rutas.inicio }] : []),
  ...(cursosVisibles
    ? [
        {
          etiqueta: "Cursos",
          hijos: cursos.map((c) => ({
            etiqueta: c.nombre,
            descripcion: c.eyebrow,
            href: rutas.curso(c.slug),
          })),
        },
      ]
    : []),
  { etiqueta: "Blog", href: rutas.blog },
  ...(nosotrosVisible ? [{ etiqueta: "Nosotros", href: rutas.nosotros }] : []),
  ...(tiendaVisible ? [{ etiqueta: "Tienda", href: rutas.tienda }] : []),
  ...(cursosAbiertos ? [] : [{ etiqueta: "Lista de espera", href: rutas.waitlist }]),
];
