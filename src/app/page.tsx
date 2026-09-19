import { Hero } from "@/components/sections/hero";
import { OposicionHome } from "@/components/home/oposicion";
import { PlataformaHome } from "@/components/home/plataforma";
import { MetodoHome } from "@/components/home/metodo";
import { Simulacros } from "@/components/sections/simulacros";
import { QuienesHome } from "@/components/home/quienes";
import { PreciosHome } from "@/components/home/precios";
import { Resultados } from "@/components/sections/resultados";
import { PreguntasHome } from "@/components/home/preguntas";
import { CtaFinal } from "@/components/sections/cta-final";
import { JsonLd, cursoJsonLd, faqJsonLd } from "@/lib/seo";

export default function Portada() {
  return (
    <>
      <Hero />
      <OposicionHome />
      <PlataformaHome />
      <MetodoHome />
      <Simulacros />
      <QuienesHome />
      <PreciosHome />
      <Resultados />
      <PreguntasHome />
      <CtaFinal />
      <JsonLd data={cursoJsonLd()} />
      <JsonLd data={faqJsonLd()} />
    </>
  );
}
