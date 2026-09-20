import type { MetadataRoute } from "next";
import { absoluteUrl, rutas } from "@/lib/links";
import { cursos } from "@/content/cursos";
import { listarPublicadas } from "@/lib/blog";

/**
 * Las páginas legales van con `noindex`, así que no entran en el sitemap.
 *
 * Las entradas del blog sí, con `lastModified` tomado de `actualizado_en`: es la señal con la
 * que un rastreador decide volver a pasar por un artículo corregido, y por eso la columna la
 * mantiene un trigger en la base de datos y no el cliente. Al publicar, la server action del
 * panel revalida `/sitemap.xml` para que la entrada nueva aparezca sin esperar a la ventana de
 * ISR.
 */
export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const ahora = new Date();
  const publicas: { ruta: string; prioridad: number }[] = [
    { ruta: rutas.inicio, prioridad: 1 },
    ...cursos.map((c) => ({ ruta: rutas.curso(c.slug), prioridad: 0.9 })),
    { ruta: rutas.tienda, prioridad: 0.8 },
    { ruta: rutas.blog, prioridad: 0.7 },
    { ruta: rutas.nosotros, prioridad: 0.6 },
  ];

  const entradas = await listarPublicadas();

  return [
    ...publicas.map(({ ruta, prioridad }) => ({
      url: absoluteUrl(ruta),
      lastModified: ahora,
      changeFrequency: "monthly" as const,
      priority: prioridad,
    })),
    // Una entrada con `noindex` propio se queda fuera: pedir que la rastreen y a la vez que no
    // la indexen es una contradicción que solo gasta presupuesto de rastreo.
    ...entradas
      .filter((e) => !e.seo?.noindex)
      .map((e) => ({
        url: absoluteUrl(`${rutas.blog}/${e.slug}`),
        lastModified: new Date(e.actualizado_en),
        changeFrequency: "weekly" as const,
        priority: 0.6,
      })),
  ];
}
