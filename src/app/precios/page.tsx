import type { Metadata } from "next";
import { PageHero } from "@/components/layout/page-hero";
import { Planes } from "@/components/sections/planes";
import { Faq } from "@/components/sections/faq";
import { CtaFinal } from "@/components/sections/cta-final";

export const metadata: Metadata = {
  title: "Precios",
  description:
    "Planes para preparar el acceso a la Guardia Civil con ProLince. Sin permanencia y sin letra pequeña.",
  alternates: { canonical: "/precios" },
};

export default function Precios() {
  return (
    <>
      <PageHero
        eyebrow="Precios"
        titulo="Elige cómo prepararte"
        entradilla="Tres formas de hacerlo, según el tiempo que te quede hasta el examen y lo que ya lleves andado. Puedes cambiar de plan cuando quieras."
      />
      <Planes />
      <Faq />
      <CtaFinal />
    </>
  );
}
