import { ArrowRight, Check } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { DIAS_PRUEBA } from "@/content/tienda";
import { cursosAbiertos, destinoEmpezar } from "@/lib/links";

export function FaldonPrueba({ curso, href = destinoEmpezar }: { curso?: string; href?: string }) {
  return (
    <section className="py-8 sm:py-12">
      <Container>
        <Reveal>
          <div className="relative overflow-hidden rounded-2xl bg-primary px-6 py-8 text-primary-fg shadow-[0_18px_50px_-24px_color-mix(in_oklch,var(--color-primary)_55%,transparent)] sm:px-10 lg:flex lg:items-center lg:justify-between lg:gap-10">
            <div
              aria-hidden
              className="absolute -right-20 -top-24 size-72 rounded-full border border-white/15"
            />
            <div className="relative max-w-[48rem]">
              <p className="text-eyebrow uppercase text-primary-soft">
                {cursosAbiertos ? `${DIAS_PRUEBA} días gratis` : "Apertura próxima"}
              </p>
              <h2 className="text-h2 mt-3">
                {cursosAbiertos
                  ? `Prueba ${curso ? `el curso de ${curso}` : "ProLince"} antes de decidir`
                  : "Apúntate y te avisamos cuando abramos"}
              </h2>
              <ul className="mt-5 flex flex-wrap gap-x-6 gap-y-2 text-body-sm text-white/85">
                {["Tests ilimitados", "Esquemas y repaso", "Sin pagar durante la prueba"].map((punto) => (
                  <li key={punto} className="flex items-center gap-2">
                    <Check size={16} aria-hidden className="shrink-0" />
                    {punto}
                  </li>
                ))}
              </ul>
            </div>
            <Button href={href} variante="claro" tamano="lg" className="relative mt-7 w-full sm:w-auto lg:mt-0 lg:shrink-0">
              {cursosAbiertos ? "Probar gratis" : "Apuntarme"}
              <ArrowRight size={18} aria-hidden />
            </Button>
          </div>
        </Reveal>
      </Container>
    </section>
  );
}
