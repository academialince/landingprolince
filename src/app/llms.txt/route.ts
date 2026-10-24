import { cursos, cursosProximos } from "@/content/cursos";
import { formatoPrecio, packsVisibles, rangoPrecios } from "@/content/tienda";
import { site } from "@/content/site";
import { listarPublicadas } from "@/lib/blog";
import { absoluteUrl, rutas } from "@/lib/links";

/** Mismo ritmo que el blog: una entrada nueva aparece aquí a la vez que en la web. */
export const revalidate = 300;

/**
 * `llms.txt`: resumen en Markdown de la academia para los buscadores con IA (formato llmstxt.org).
 * Se genera con los mismos datos que la web, así que no hay que mantenerlo a mano.
 */
export async function GET() {
  const entradas = (await listarPublicadas({ limite: 100 })).filter((e) => !e.seo?.noindex);

  const lineas = [
    `# ${site.nombreLargo}`,
    "",
    `> ${site.descripcion}`,
    "",
    "Academia online de oposiciones a la Guardia Civil. Todo el estudio se hace en la plataforma: temario, tests por tema, simulacros cronometrados con exámenes oficiales y propios, y seguimiento del progreso.",
    "",
    "## Cursos",
    "",
    ...cursos.map((c) => {
      const r = packsVisibles(c.slug) ? rangoPrecios(c.slug) : null;
      const precio = r ? ` Packs desde ${formatoPrecio(r.min)} €.` : "";
      return `- [${c.nombre}](${absoluteUrl(rutas.curso(c.slug))}): ${c.entradilla}${precio}`;
    }),
    ...cursosProximos.map((c) => `- ${c.nombre} (próximamente): ${c.entradilla}`),
    "",
    "## Páginas",
    "",
    `- [Inicio](${absoluteUrl("/")})`,
    ...cursos.flatMap((c) => (rutas.temario(c.slug) ? [`- [Temario ${c.nombreCorto}](${absoluteUrl(rutas.temario(c.slug)!)}): todos los temas del programa oficial, qué normas entran en cada uno y cómo se examinan.`] : [])),
    ...cursos.flatMap((c) => (rutas.test(c.slug) ? [`- [Test gratis ${c.nombreCorto}](${absoluteUrl(rutas.test(c.slug)!)}): test online sin registro con preguntas del banco de la plataforma, solución explicada y nota con penalización.`] : [])),
    `- [Calculadora de nota del examen de Guardia Civil](${absoluteUrl(rutas.calculadora)}): herramienta gratis con la fórmula oficial de 2026 (penalización de un tercio por error, mínimos de cada prueba y concurso).`,
    `- [Temarios en papel](${absoluteUrl(rutas.temarios)}): temario actualizado a 2027 de cada curso, en pack completo (con inglés y ortografía y gramática) o libro resumen, con entrega en 48 horas.`,
    `- [Packs y precios](${absoluteUrl(rutas.tienda)}): por curso, suscripción mensual de tests con 7 días de prueba gratis, Pack Especial Simulacros y Pack Ahorro anual.`,
    `- [Nosotros](${absoluteUrl(rutas.nosotros)})`,
    `- [Blog](${absoluteUrl(rutas.blog)})`,
    "",
    "## Blog",
    "",
    ...entradas.map((e) => `- [${e.titulo}](${absoluteUrl(`${rutas.blog}/${e.slug}`)})${e.entradilla ? `: ${e.entradilla}` : ""}`),
    "",
    "## Contacto",
    "",
    ...(site.contacto.email ? [`- Email: ${site.contacto.email}`] : []),
    "",
  ];

  return new Response(lineas.join("\n"), {
    headers: { "Content-Type": "text/markdown; charset=utf-8" },
  });
}
