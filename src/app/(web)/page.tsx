import { Hero } from "@/components/sections/hero";
import { Kpis } from "@/components/home/kpis";
import { CursosHome } from "@/components/home/cursos";
import { PlataformaHome } from "@/components/home/plataforma";
import { Simulacros } from "@/components/sections/simulacros";
import { NosotrosHome } from "@/components/home/nosotros";
import { Resultados } from "@/components/sections/resultados";
import { CtaFinal } from "@/components/sections/cta-final";
import { JsonLd, organizacionJsonLd } from "@/lib/seo";

export default function Portada() {
  return (
    <>
      <Hero />
      <Kpis />
      <CursosHome />
      <PlataformaHome />
      <Simulacros />
      <NosotrosHome />
      <Resultados />
      <CtaFinal />
      <JsonLd data={organizacionJsonLd()} />
    </>
  );
}
