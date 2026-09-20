/**
 * Única fuente de URLs hacia la plataforma. Si cambia el dominio, el slug de la academia o el
 * esquema de rutas del producto, este es el único fichero que se toca.
 *
 * El catálogo de cursos vive detrás del acceso, así que "ver cursos" lleva al alta y no a una
 * página que devolvería un muro de login.
 */
const APP = process.env.NEXT_PUBLIC_APP_URL ?? "https://prolince-lovat.vercel.app";

const ACADEMY = "academiaprolince";

export const links = {
  /** Alta de cuenta. Destino de «Empezar ahora». */
  registro: `${APP}/${ACADEMY}/registro`,
  /** Acceso de alumno ya matriculado. Destino de «Entrar». */
  login: `${APP}/${ACADEMY}/`,
  catalogo: `${APP}/${ACADEMY}/registro`,
} as const;

export const siteUrl = process.env.NEXT_PUBLIC_SITE_URL ?? "http://localhost:3000";

export function absoluteUrl(path = "/") {
  return new URL(path, siteUrl).toString();
}

/** Rutas internas de esta web. Centralizadas para que la navegación y el sitemap no se separen. */
export const rutas = {
  inicio: "/",
  curso: (slug: string) => `/cursos/${slug}`,
  blog: "/blog",
  nosotros: "/nosotros",
  tienda: "/tienda",
  admin: "/admin",
  avisoLegal: "/aviso-legal",
  privacidad: "/privacidad",
  cookies: "/cookies",
} as const;
