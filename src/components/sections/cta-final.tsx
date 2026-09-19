import { ArrowRight } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { links } from "@/lib/links";

export function CtaFinal() {
  return (
    <section className="bg-primary-deep text-white">
      <Container>
        <Reveal>
          <div className="py-20 text-center max-w-[40rem] mx-auto">
            <h2 className="text-display-l">La plaza no se saca en un día, pero se empieza en uno</h2>
            <p className="text-body-lg text-white/75 mt-5">
              Crea tu cuenta y entra hoy al temario, a los tests y al primer simulacro.
            </p>
            <div className="mt-9 flex flex-wrap gap-3 justify-center">
              <Button href={links.registro} variante="claro" tamano="lg">
                Empezar ahora
                <ArrowRight size={18} aria-hidden />
              </Button>
              <Button
                href={links.catalogo}
                variante="secundario"
                tamano="lg"
                className="bg-transparent! text-white! border-white/25! hover:bg-white/10!"
              >
                Ver el catálogo
              </Button>
            </div>
          </div>
        </Reveal>
      </Container>
    </section>
  );
}
