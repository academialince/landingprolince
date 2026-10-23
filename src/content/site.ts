import { cursosAbiertos, cursosVisibles, inicioVisible, nosotrosVisible, rutas, tiendaVisible } from "@/lib/links";
import { cursos, cursosProximos } from "./cursos";

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
    email: "academialince0@gmail.com" as string | null,
    telefono: null as string | null, // PENDIENTE: teléfono público
    /** Formato internacional y sin signos, como lo pide wa.me. */
    whatsapp: "34695834018" as string | null,
    /** Texto con el que se abre la conversación desde el botón flotante y el pie. */
    mensajeWhatsapp: "Hola, quería más información de Academia Prolince.",
  },

  /**
   * Titular del sitio. PROVISIONAL: persona física hasta que se constituya la SL; entonces se
   * cambia por la razón social, el NIF y el domicilio de la sociedad.
   */
  legal: {
    razonSocial: null as string | null,
    nif: null as string | null,
    domicilio: null as string | null,
  },

  /**
   * Perfiles oficiales. Salen en el pie y en el `sameAs` del JSON-LD de la organización.
   * Una red con `url: null` todavía no existe y se omite.
   */
  redes: [
    { red: "instagram", nombre: "Instagram", usuario: "@academiaprolince", url: "https://www.instagram.com/academiaprolince/" },
    { red: "tiktok", nombre: "TikTok", usuario: "@academia.prolince", url: "https://www.tiktok.com/@academia.prolince" },
    { red: "x", nombre: "X", usuario: "@aprolince", url: "https://x.com/aprolince" },
    { red: "telegram", nombre: "Telegram", usuario: "@academiaprolince", url: "https://t.me/academiaprolince" },
  ] as Red[],
} as const;

export type Red = {
  red: "instagram" | "tiktok" | "x" | "telegram";
  nombre: string;
  usuario: string | null;
  url: string | null;
};

/** Solo las redes con perfil publicado. */
export const redesActivas = () =>
  site.redes.filter((r): r is Red & { url: string } => Boolean(r.url));

export type ItemNav = {
  etiqueta: string;
  /** Ausente en los grupos: «Cursos» abre un desplegable, no lleva a ninguna página. */
  href?: string;
  /** Un hijo sin `href` es un curso que aún no existe: sale bloqueado, con «Próximamente». */
  hijos?: { etiqueta: string; descripcion: string; href?: string }[];
};

export const navegacion: ItemNav[] = [
  ...(inicioVisible ? [{ etiqueta: "Inicio", href: rutas.inicio }] : []),
  ...(cursosVisibles
    ? [
        {
          etiqueta: "Cursos",
          hijos: [
            ...cursos.map((c) => ({
              etiqueta: c.nombre,
              descripcion: c.eyebrow,
              href: rutas.curso(c.slug),
            })),
            ...cursosProximos.map((c) => ({ etiqueta: c.nombre, descripcion: c.eyebrow })),
          ],
        },
      ]
    : []),
  { etiqueta: "Blog", href: rutas.blog },
  ...(nosotrosVisible ? [{ etiqueta: "Nosotros", href: rutas.nosotros }] : []),
  ...(tiendaVisible ? [{ etiqueta: "Tienda", href: rutas.tienda }] : []),
  ...(cursosAbiertos ? [] : [{ etiqueta: "Lista de espera", href: rutas.waitlist }]),
];
