import { absoluteUrl } from "./links";
import { site } from "@/content/site";
import type { Metadata } from "next";
import { indexacionPermitida } from "./indexacion";

export function metadataPagina({ titulo, descripcion, ruta, imagen, imagenAlt, noindex = false }: {
  titulo: string; descripcion: string; ruta: string; imagen?: string; imagenAlt?: string; noindex?: boolean;
}): Metadata {
  const index = indexacionPermitida && !noindex;
  const images = [{ url: absoluteUrl(imagen || "/opengraph-image"), alt: imagenAlt || titulo }];
  return {
    title: titulo,
    description: descripcion,
    alternates: { canonical: ruta },
    robots: { index, follow: true, googleBot: { index, follow: true, "max-image-preview": "large", "max-snippet": -1, "max-video-preview": -1 } },
    openGraph: { type: "website", locale: "es_ES", siteName: site.nombreLargo, title: titulo, description: descripcion, url: absoluteUrl(ruta), images },
    twitter: { card: "summary_large_image", title: titulo, description: descripcion, images },
  };
}

export function migasJsonLd(items: { nombre: string; ruta: string }[]) {
  return { "@context": "https://schema.org", "@type": "BreadcrumbList", itemListElement: items.map((item, i) => ({ "@type": "ListItem", position: i + 1, name: item.nombre, item: absoluteUrl(item.ruta) })) };
}

export function organizacionJsonLd() {
  return {
    "@context": "https://schema.org",
    "@type": "EducationalOrganization",
    "@id": absoluteUrl("/#organizacion"),
    name: site.nombreLargo,
    alternateName: site.nombre,
    url: absoluteUrl("/"),
    logo: absoluteUrl("/brand/prolince-logo.svg"),
    description: site.descripcion,
    ...(site.contacto.email ? { email: site.contacto.email } : {}),
    ...(site.contacto.telefono ? { telephone: site.contacto.telefono } : {}),
  };
}

/** Un `<script type="application/ld+json">` por bloque, serializado sin romper el HTML. */
export function JsonLd({ data }: { data: object }) {
  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{
        __html: JSON.stringify(data).replace(/</g, "\\u003c"),
      }}
    />
  );
}
