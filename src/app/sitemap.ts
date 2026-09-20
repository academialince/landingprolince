import type { MetadataRoute } from "next";
import { absoluteUrl, rutas } from "@/lib/links";
import { cursos } from "@/content/cursos";

/** Las páginas legales van con `noindex`, así que no entran en el sitemap. */
export default function sitemap(): MetadataRoute.Sitemap {
  const ahora = new Date();
  const publicas: { ruta: string; prioridad: number }[] = [
    { ruta: rutas.inicio, prioridad: 1 },
    ...cursos.map((c) => ({ ruta: rutas.curso(c.slug), prioridad: 0.9 })),
    { ruta: rutas.tienda, prioridad: 0.8 },
    { ruta: rutas.blog, prioridad: 0.7 },
    { ruta: rutas.nosotros, prioridad: 0.6 },
  ];
  return publicas.map(({ ruta, prioridad }) => ({
    url: absoluteUrl(ruta),
    lastModified: ahora,
    changeFrequency: "monthly",
    priority: prioridad,
  }));
}
