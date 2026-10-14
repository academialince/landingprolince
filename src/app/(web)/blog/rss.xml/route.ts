import { listarPublicadas } from "@/lib/blog";
import { site } from "@/content/site";
import { absoluteUrl, rutas } from "@/lib/links";

/** Mismo ritmo que el blog: una entrada programada aparece en el feed a la vez que en la web. */
export const revalidate = 300;

const escapar = (texto: string) =>
  texto.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");

export async function GET() {
  const entradas = await listarPublicadas({ limite: 50 });
  const urlBlog = absoluteUrl(rutas.blog);

  const items = entradas
    .filter((e) => !e.seo?.noindex)
    .map((e) => {
      const url = absoluteUrl(`${rutas.blog}/${e.slug}`);
      return `    <item>
      <title>${escapar(e.titulo)}</title>
      <link>${url}</link>
      <guid isPermaLink="true">${url}</guid>
      ${e.publicado_en ? `<pubDate>${new Date(e.publicado_en).toUTCString()}</pubDate>` : ""}
      ${e.entradilla ? `<description>${escapar(e.entradilla)}</description>` : ""}
    </item>`;
    })
    .join("\n");

  const xml = `<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Blog de ${escapar(site.nombreLargo)}</title>
    <link>${urlBlog}</link>
    <description>${escapar(site.descripcion)}</description>
    <language>es-ES</language>
    <atom:link href="${absoluteUrl(`${rutas.blog}/rss.xml`)}" rel="self" type="application/rss+xml" />
${items}
  </channel>
</rss>`;

  return new Response(xml, { headers: { "Content-Type": "application/rss+xml; charset=utf-8" } });
}
