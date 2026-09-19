import type { MetadataRoute } from "next";
import { absoluteUrl, rutas } from "@/lib/links";

/** Las páginas legales van con `noindex`, así que no entran en el sitemap. */
const publicas = [
  { ruta: rutas.inicio, prioridad: 1 },
  { ruta: rutas.oposicion, prioridad: 0.9 },
  { ruta: rutas.plataforma, prioridad: 0.8 },
  { ruta: rutas.metodo, prioridad: 0.8 },
  { ruta: rutas.precios, prioridad: 0.8 },
  { ruta: rutas.quienesSomos, prioridad: 0.6 },
  { ruta: rutas.preguntas, prioridad: 0.6 },
];

export default function sitemap(): MetadataRoute.Sitemap {
  const ahora = new Date();
  return publicas.map(({ ruta, prioridad }) => ({
    url: absoluteUrl(ruta),
    lastModified: ahora,
    changeFrequency: "monthly",
    priority: prioridad,
  }));
}
