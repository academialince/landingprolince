import { rutas } from "@/lib/links";

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
    /**
     * PENDIENTE: número real en formato internacional y sin signos (por ejemplo 34600112233).
     * El que hay es un marcador: pertenece a un rango no asignado, así que el enlace no abre
     * conversación con nadie. Sustituirlo antes de publicar.
     */
    whatsapp: "34600000000" as string | null,
  },

  /** PENDIENTE: razón social, NIF y domicilio para el aviso legal. */
  legal: {
    razonSocial: null as string | null,
    nif: null as string | null,
    domicilio: null as string | null,
  },

  redes: [] as { nombre: string; url: string }[],
} as const;

export const navegacion = [
  { etiqueta: "La oposición", href: rutas.oposicion },
  { etiqueta: "Método", href: rutas.metodo },
  { etiqueta: "La plataforma", href: rutas.plataforma },
  { etiqueta: "Quiénes somos", href: rutas.quienesSomos },
  { etiqueta: "Precios", href: rutas.precios },
] as const;
