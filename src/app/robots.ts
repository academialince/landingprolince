import type { MetadataRoute } from "next";
import { absoluteUrl } from "@/lib/links";

/**
 * La indexación está cerrada por defecto y se abre con `ALLOW_INDEXING=true`.
 *
 * Mientras el faldón de KPI, los testimonios y los precios sean datos de relleno, el sitio no
 * debería aparecer en buscadores: son afirmaciones sobre resultados y sobre personas que
 * todavía no se pueden sostener. La puerta es una variable de entorno para que abrirla sea una
 * decisión consciente y de un minuto, no un olvido.
 */
const indexable = process.env.ALLOW_INDEXING === "true";

export default function robots(): MetadataRoute.Robots {
  if (!indexable) {
    return { rules: { userAgent: "*", disallow: "/" } };
  }

  return {
    rules: { userAgent: "*", allow: "/", disallow: ["/admin"] },
    sitemap: absoluteUrl("/sitemap.xml"),
  };
}
