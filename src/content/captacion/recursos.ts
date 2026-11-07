import { calcularPerfil, perfiles, type ClavePerfil } from "./tipo-opositor";

/**
 * Registro de las landing de captación. Cada una tiene un `recurso` (lo que se guarda en la
 * columna `leads.recurso`), su ruta, la palabra clave del anuncio y cómo se calcula y se nombra
 * su resultado. Añadir una landing nueva es añadir una entrada aquí.
 */
export type Recurso = {
  id: string;
  nombre: string;
  ruta: string;
  /** Palabra que hay que escribir en Instagram para recibir el enlace. */
  palabraClave: string;
  /**
   * Calcula el resultado en el servidor a partir de las respuestas. Devuelve null si las
   * respuestas no son válidas. Así el resultado guardado no depende de lo que diga el navegador.
   */
  resolver: (respuestas: unknown) => string | null;
  /** Nombre legible del resultado para el panel. */
  etiquetaResultado: (clave: string) => string;
};

export const recursos = {
  "tipo-opositor": {
    id: "tipo-opositor",
    nombre: "¿Qué tipo de opositor eres?",
    ruta: "/que-opositor-eres",
    palabraClave: "PERFIL",
    resolver: (respuestas) => calcularPerfil(respuestas)?.perfil ?? null,
    etiquetaResultado: (clave) => perfiles[clave as ClavePerfil]?.nombre ?? clave,
  },
} satisfies Record<string, Recurso>;

export type IdRecurso = keyof typeof recursos;

export function recursoPorId(id: string): Recurso | undefined {
  return (recursos as Record<string, Recurso>)[id];
}

/** Parámetros de campaña que se guardan con cada lead. */
export const CAMPOS_UTM = ["utm_source", "utm_medium", "utm_campaign", "utm_content", "utm_term"] as const;
