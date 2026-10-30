/**
 * Única fuente de URLs hacia la plataforma. Si cambia el dominio, el slug de la academia o el
 * esquema de rutas del producto, este es el único fichero que se toca.
 *
 * El catálogo de cursos vive detrás del acceso, así que "ver cursos" lleva al alta y no a una
 * página que devolvería un muro de login.
 */
export const links = {
  /** Alta de cuenta. Destino de «Empezar ahora». */
  registro: "https://acceso.prolinceacademia.com/academiaprolince/registro",
  /** Acceso de alumno ya matriculado. Destino de «Acceder». */
  login: "https://acceso.prolinceacademia.com/academiaprolince",
  catalogo: "https://acceso.prolinceacademia.com/academiaprolince/registro",
  /** Pago del plan: se contrata dentro de la plataforma (Stripe) después de crear la cuenta. */
  compra: "https://acceso.prolinceacademia.com/academiaprolince/registro",
} as const;

/** El slug de cada curso en la plataforma, que no coincide con el de esta web. */
const cursoEnPlataforma: Record<string, string> = {
  "acceso-guardia-civil": "acceso-a-la-guardia-civil",
  "colegio-guardias-jovenes": "acceso-a-colegio-de-guardias-jovenes",
};

/**
 * El botón de un pack: el alta en la plataforma con el pack elegido, para que el alumno no tenga
 * que volver a elegirlo. El de prueba empieza los días gratis en su curso (`?prueba=1&curso=`);
 * el resto abre el pago de ese pack al terminar el alta (`?pack=`).
 */
export function enlaceDePack(slugDelCurso: string, pack: { id: string; prueba?: number }) {
  const destino = new URL(links.registro);
  const curso = cursoEnPlataforma[slugDelCurso];
  if (pack.prueba && curso) {
    destino.searchParams.set("prueba", "1");
    destino.searchParams.set("curso", curso);
  } else {
    destino.searchParams.set("pack", pack.id);
  }
  return destino.toString();
}

/**
 * En producción manda `NEXT_PUBLIC_SITE_URL`. En una preview de Vercel no puede haber un valor
 * fijo —cada despliegue tiene su URL—, así que se cae a `VERCEL_URL`: sin eso, las canónicas y
 * el sitemap de una preview apuntarían a producción y se indexaría el sitio equivocado.
 */
export const siteUrl =
  process.env.NEXT_PUBLIC_SITE_URL ??
  (process.env.VERCEL_URL ? `https://${process.env.VERCEL_URL}` : "http://localhost:3000");

export function absoluteUrl(path = "/") {
  return new URL(path, siteUrl).toString();
}

/** Rutas internas de esta web. Centralizadas para que la navegación y el sitemap no se separen. */
export const rutas = {
  inicio: "/",
  curso: (slug: string) => `/cursos/${slug}`,
  blog: "/blog",
  nosotros: "/nosotros",
  /** La sección «Temarios»: los libros en papel de cada curso. */
  temarios: "/temarios",
  /** La sección «Packs» (antes «Tienda»): los packs de cada curso con sus precios. */
  tienda: "/packs",
  calculadora: "/calculadora-nota-guardia-civil",
  /** La guía de la última convocatoria (plazas, requisitos, pruebas y baremo), en PDF. */
  ultimaConvocatoria: "/convocatoria/ultima-convocatoria-guardia-civil.pdf",
  /** Test gratis de cada curso. */
  test: (slug: string) =>
    ({ "acceso-guardia-civil": "/test-guardia-civil", "colegio-guardias-jovenes": "/test-guardias-jovenes" })[slug],
  /** Página de temario de cada curso (para posicionar en «temario …»). */
  temario: (slug: string) =>
    ({ "acceso-guardia-civil": "/temario-guardia-civil", "colegio-guardias-jovenes": "/temario-colegio-guardias-jovenes" })[slug],
  waitlist: "/waitlist",
  admin: "/admin",
  avisoLegal: "/aviso-legal",
  privacidad: "/privacidad",
  contacto: "/contacto",
  cookies: "/cookies",
} as const;

/**
 * Interruptor del lanzamiento. Mientras sea `false`, los cursos salen como «Próximamente», no
 * se pueden comprar, la cabecera oculta «Acceder» y todos los «Empezar» llevan a la lista de
 * espera. Para publicar los cursos basta con ponerlo a `true`: todo vuelve a su destino original.
 */
export const cursosAbiertos = true;

/** Destino de todos los «Empezar»: el alta en la plataforma, o la lista de espera antes del lanzamiento. */
export const destinoEmpezar = cursosAbiertos ? links.registro : rutas.waitlist;

/**
 * Secciones ocultas de momento. Con `false` desaparecen del menú, del pie, de la portada, de los
 * enlaces y del sitemap, y su página devuelve 404. Con `true` vuelven tal cual estaban.
 */
export const tiendaVisible = true;
export const nosotrosVisible = true;

/**
 * Portada y páginas de curso. Con `false` salen del menú, del pie y del sitemap, y quien entre en
 * ellas (un enlace antiguo, el logo de la cabecera) va a la lista de espera. Con `true` vuelven.
 */
export const inicioVisible = true;
export const cursosVisibles = true;

/** Página de autor de las entradas del blog: «Nosotros», o la mejor alternativa visible. */
export const paginaAutor = nosotrosVisible ? rutas.nosotros : inicioVisible ? rutas.inicio : rutas.blog;
