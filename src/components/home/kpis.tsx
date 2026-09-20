import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { kpis } from "@/content/kpis";

export function Kpis() {
  return (
    <section className="bg-primary-deep text-white">
      <Container>
        <ul className="grid gap-x-8 gap-y-10 py-12 sm:grid-cols-2 lg:grid-cols-4 lg:py-14">
          {kpis.map((k, i) => (
            <Reveal key={k.etiqueta} retardo={i * 60}>
              <li className="flex flex-col">
                <span className="text-display-l leading-none tabular">{k.valor}</span>
                <span className="mt-2 text-h3 text-primary-soft">{k.etiqueta}</span>
                <span className="mt-1.5 text-body-sm text-white/65">{k.detalle}</span>
              </li>
            </Reveal>
          ))}
        </ul>
      </Container>
    </section>
  );
}
