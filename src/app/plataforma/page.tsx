import type { Metadata } from "next";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { Telefono, Navegador } from "@/components/mockups/marcos";
import { PantallaTest } from "@/components/mockups/pantalla-test";
import { PantallaCurso } from "@/components/mockups/pantalla-curso";
import { Incluye } from "@/components/sections/incluye";
import { Simulacros } from "@/components/sections/simulacros";
import { CtaFinal } from "@/components/sections/cta-final";
import { links } from "@/lib/links";

export const metadata: Metadata = {
  title: "La plataforma",
  description:
    "Temario, tests, simulacros cronometrados y seguimiento del progreso, en el móvil y en el ordenador.",
  alternates: { canonical: "/plataforma" },
};

export default function Plataforma() {
  return (
    <>
      <PageHero
        eyebrow="La plataforma"
        titulo="Todo tu curso, en el bolsillo y en el escritorio"
        entradilla="Haces tests en el móvil mientras esperas, y te sientas al simulacro en el ordenador. La sesión y el progreso te siguen a los dos sitios."
      >
        <Button href={links.registro} tamano="lg">
          Crear mi cuenta
        </Button>
      </PageHero>

      <section className="overflow-hidden py-16 sm:py-24">
        <Container>
          <Reveal>
            <div className="relative">
              <Navegador className="mx-auto max-w-4xl">
                <PantallaCurso />
              </Navegador>
              <div className="pointer-events-none absolute -bottom-10 right-0 hidden w-56 lg:block xl:-right-6 xl:w-64">
                <Telefono className="max-w-none! rotate-[-4deg]">
                  <PantallaTest />
                </Telefono>
              </div>
            </div>
          </Reveal>

          <Reveal className="mx-auto mt-16 max-w-[42rem] text-center lg:mt-24">
            <h2 className="text-h2">El mismo curso, se abra donde se abra</h2>
            <p className="text-body-lg mt-4 text-muted-foreground">
              No hay que instalar nada. Entras desde el navegador y el progreso está donde lo
              dejaste, con el mismo temario y los mismos tests.
            </p>
          </Reveal>
        </Container>
      </section>

      <Incluye />
      <Simulacros />

      <Section
        eyebrow="En el móvil"
        titulo="Los ratos muertos también cuentan"
        entradilla="Diez minutos en la parada del autobús dan para una tanda de preguntas. El progreso se guarda igual que si fuera una sesión de dos horas."
        fondo="suave"
      >
        <div className="grid items-center gap-12 lg:grid-cols-2">
          <Reveal className="flex justify-center">
            <Telefono>
              <PantallaTest />
            </Telefono>
          </Reveal>
          <Reveal retardo={80}>
            <ul className="grid gap-6">
              {[
                {
                  titulo: "Tests cortos, en cualquier momento",
                  detalle:
                    "Tandas de preguntas por tema que puedes dejar a medias y retomar sin perder nada.",
                },
                {
                  titulo: "Corrección con explicación",
                  detalle:
                    "Al fallar ves por qué la respuesta correcta lo es, no solo que te equivocaste.",
                },
                {
                  titulo: "Las preguntas falladas vuelven",
                  detalle:
                    "Lo que se te resiste reaparece más adelante hasta que deja de resistirse.",
                },
              ].map((p) => (
                <li key={p.titulo}>
                  <h3 className="text-h3">{p.titulo}</h3>
                  <p className="mt-2 text-muted-foreground">{p.detalle}</p>
                </li>
              ))}
            </ul>
          </Reveal>
        </div>
      </Section>

      <CtaFinal />
    </>
  );
}
