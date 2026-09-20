import { absoluteUrl } from "./links";
import { site } from "@/content/site";

export function organizacionJsonLd() {
  return {
    "@context": "https://schema.org",
    "@type": "EducationalOrganization",
    name: site.nombreLargo,
    alternateName: site.nombre,
    url: absoluteUrl("/"),
    logo: absoluteUrl("/brand/prolince-isotipo.svg"),
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
