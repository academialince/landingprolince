import type { Metadata } from "next";
import { PageHero } from "@/components/layout/page-hero";
import { Faq } from "@/components/sections/faq";
import { CtaFinal } from "@/components/sections/cta-final";
import { JsonLd, faqJsonLd } from "@/lib/seo";

export const metadata: Metadata = {
  title: "Preguntas frecuentes",
  description:
    "Requisitos, tiempo de preparación, pruebas físicas, simulacros y acceso: las dudas más habituales antes de empezar una oposición.",
  alternates: { canonical: "/preguntas" },
};

export default function Preguntas() {
  return (
    <>
      <PageHero
        eyebrow="Preguntas"
        titulo="Lo que nos preguntáis antes de empezar"
        entradilla="Si tu duda no está aquí, escríbenos por WhatsApp y te contestamos."
      />
      <Faq />
      <CtaFinal />
      <JsonLd data={faqJsonLd()} />
    </>
  );
}
