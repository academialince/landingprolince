import { absoluteUrl } from "./links";
import { site } from "@/content/site";
import { faq } from "@/content/faq";
import { oposicionPrincipal } from "@/content/oposiciones";

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

export function faqJsonLd() {
  return {
    "@context": "https://schema.org",
    "@type": "FAQPage",
    mainEntity: faq.map((item) => ({
      "@type": "Question",
      name: item.pregunta,
      acceptedAnswer: { "@type": "Answer", text: item.respuesta },
    })),
  };
}

export function cursoJsonLd() {
  const o = oposicionPrincipal;
  return {
    "@context": "https://schema.org",
    "@type": "Course",
    name: o.nombre,
    description: o.resumen,
    url: absoluteUrl("/#oposicion"),
    provider: {
      "@type": "EducationalOrganization",
      name: site.nombreLargo,
      url: absoluteUrl("/"),
    },
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
