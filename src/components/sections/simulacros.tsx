import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Icono } from "@/components/ui/icon";
import { Navegador } from "@/components/mockups/marcos";
import { PantallaSimulacro } from "@/components/mockups/pantalla-simulacro";
import { simulacros } from "@/content/propuesta";

export function Simulacros() {
  return (
    <section className="bg-primary-deep py-16 text-white sm:py-24">
      <Container>
        <Reveal className="max-w-[46rem]">
          <p className="text-eyebrow uppercase text-primary-soft">Simulacros</p>
          <h2 className="text-h2 mt-3">{simulacros.titulo}</h2>
          <p className="text-body-lg mt-4 text-white/75">{simulacros.entradilla}</p>
        </Reveal>

        <div className="mt-14 grid items-center gap-12 lg:grid-cols-[1fr_1.1fr] lg:gap-16">
          <Reveal>
            <ul className="grid gap-6">
              {simulacros.puntos.map((p) => (
                <li key={p.titulo} className="flex gap-4">
                  <span className="inline-flex size-11 shrink-0 items-center justify-center rounded-lg border border-white/12 bg-white/10 text-white">
                    <Icono nombre={p.icono} size={20} />
                  </span>
                  <div className="min-w-0">
                    <h3 className="text-h3">{p.titulo}</h3>
                    <p className="mt-1.5 text-white/70">{p.detalle}</p>
                  </div>
                </li>
              ))}
            </ul>
          </Reveal>

          <Reveal retardo={80}>
            <Navegador className="border-white/12!">
              <PantallaSimulacro />
            </Navegador>
          </Reveal>
        </div>
      </Container>
    </section>
  );
}
