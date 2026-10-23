import { ArrowRight } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { MarcoTactico } from "@/components/ui/marco-tactico";
import { cursosAbiertos, destinoEmpezar, links } from "@/lib/links";

export function CtaFinal() {
  return (
    <section className="bg-primary-deep text-white">
      <Container>
        <Reveal>
          <div className="grid items-center gap-14 py-20 lg:grid-cols-[1.2fr_0.8fr]">
          <div className="max-w-[40rem]">
            <p className="text-eyebrow uppercase text-primary">Misión</p>
            <h2 className="text-display-l mt-4">La plaza no se saca en un día, pero se empieza en uno</h2>
            <p className="text-body-lg text-white/75 mt-5">
              {cursosAbiertos
                ? "Crea tu cuenta y prueba gratis 7 días la suscripción de tests: tests ilimitados, esquemas, ortografía, gramática e inglés."
                : "Los cursos abren muy pronto. Apúntate a la lista de espera y te avisamos el primero."}
            </p>
            <div className="mt-9 flex flex-wrap gap-3">
              <Button href={destinoEmpezar} variante="claro" tamano="lg">
                Empezar ahora
                <ArrowRight size={18} aria-hidden />
              </Button>
              {cursosAbiertos && (
                <Button
                  href={links.catalogo}
                  variante="secundario"
                  tamano="lg"
                  className="bg-transparent! text-white! border-white/25! hover:bg-white/10!"
                >
                  Ver el catálogo
                </Button>
              )}
            </div>
          </div>
          <MarcoTactico
            src="/tactico/trafico.jpg"
            alt="Guardia civil de Tráfico en moto mirando al atardecer sobre un pueblo"
            etiqueta="OBJ-02 · Destino"
            pie="La plaza, cada día"
            dato="Agrupación de Tráfico"
            className="max-w-[22rem]"
          />
          </div>
        </Reveal>
      </Container>
    </section>
  );
}
