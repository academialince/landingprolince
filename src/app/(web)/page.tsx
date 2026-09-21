import { Hero } from "@/components/sections/hero";
import { Kpis } from "@/components/home/kpis";
import { CursosHome } from "@/components/home/cursos";
import { PlataformaHome } from "@/components/home/plataforma";
import { Simulacros } from "@/components/sections/simulacros";
import { NosotrosHome } from "@/components/home/nosotros";
import { Resultados } from "@/components/sections/resultados";
import { CtaFinal } from "@/components/sections/cta-final";
import { JsonLd, metadataPagina } from "@/lib/seo";
import { absoluteUrl } from "@/lib/links";

export const metadata = metadataPagina({ titulo: "Academia online de oposiciones a Guardia Civil", descripcion: "Prepara Guardia Civil y Colegio de Guardias Jóvenes con ProLince: temario, tests por tema, simulacros cronometrados y seguimiento online de tu progreso.", ruta: "/" });

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
      <JsonLd data={{ "@context": "https://schema.org", "@type": "WebSite", "@id": absoluteUrl("/#website"), name: "Academia ProLince", alternateName: "ProLince", url: absoluteUrl("/"), inLanguage: "es-ES", publisher: { "@id": absoluteUrl("/#organizacion") } }} />
    </>
  );
}
