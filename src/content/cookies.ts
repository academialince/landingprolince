/**
 * Cookies y almacenamiento de la web, por categoría. Es la fuente del aviso, del panel de
 * configuración y de la política de cookies: si se añade una herramienta (Google Analytics, el
 * píxel de Meta…), se apunta aquí en su categoría y se carga con <ScriptConsentido>.
 *
 * VERSION: súbela cuando cambien las herramientas o las finalidades; a quien ya eligió se le vuelve
 * a preguntar.
 */
export const VERSION_CONSENTIMIENTO = 1;
/** La AEPD recomienda no guardar la elección más de 24 meses; aquí, 12. */
export const DIAS_CONSENTIMIENTO = 365;
export const COOKIE_CONSENTIMIENTO = "prolince_consentimiento";

export type Categoria = "necesarias" | "analitica" | "marketing";

export type Elemento = {
  nombre: string;
  titular: string;
  tipo: "Cookie" | "Almacenamiento local";
  finalidad: string;
  duracion: string;
};

export const categorias: {
  id: Categoria;
  nombre: string;
  descripcion: string;
  obligatoria?: boolean;
  elementos: Elemento[];
}[] = [
  {
    id: "necesarias",
    nombre: "Necesarias",
    descripcion: "Imprescindibles para que la web funcione y para recordar lo que tú eliges. No se pueden desactivar.",
    obligatoria: true,
    elementos: [
      {
        nombre: COOKIE_CONSENTIMIENTO,
        titular: "Academia ProLince",
        tipo: "Cookie",
        finalidad: "Guardar tu elección sobre las cookies para no volver a preguntarte.",
        duracion: `${DIAS_CONSENTIMIENTO / 30} meses`,
      },
      {
        nombre: "prolince-tema",
        titular: "Academia ProLince",
        tipo: "Almacenamiento local",
        finalidad: "Recordar si prefieres el modo claro o el oscuro (solo si lo cambias).",
        duracion: "Hasta que borres los datos del navegador",
      },
      {
        nombre: "sb-*",
        titular: "Academia ProLince (Supabase)",
        tipo: "Cookie",
        finalidad: "Mantener la sesión en el panel de administración. Solo se crea al entrar en él.",
        duracion: "Sesión",
      },
    ],
  },
  {
    id: "analitica",
    nombre: "Analítica",
    descripcion: "Nos dirían cuántas personas visitan la web y qué páginas funcionan mejor, de forma agregada.",
    elementos: [],
  },
  {
    id: "marketing",
    nombre: "Marketing",
    descripcion: "Servirían para medir nuestras campañas y enseñarte anuncios relevantes en otras webs y redes.",
    elementos: [],
  },
];

/**
 * Solo hace falta pedir consentimiento si hay alguna cookie no necesaria. Mientras analítica y
 * marketing estén vacías, el aviso y el enlace «Configurar cookies» no se enseñan: aparecen solos
 * en cuanto se apunte aquí una herramienta.
 */
export const hayCookiesOpcionales = categorias.some((c) => !c.obligatoria && c.elementos.length > 0);
