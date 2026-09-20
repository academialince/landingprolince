import { ArrowRight, Trophy } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Button } from "@/components/ui/button";
import { Telefono } from "@/components/mockups/marcos";
import { PantallaTest } from "@/components/mockups/pantalla-test";
import { links } from "@/lib/links";

const hechos = ["Acceso a la Guardia Civil", "Colegio de Guardias Jóvenes", "100 % online"];

export function Hero() {
  return (
    <section className="relative overflow-hidden">
      <div
        aria-hidden
        className="absolute inset-0 -z-10"
        style={{
          background:
            "radial-gradient(100% 90% at 78% -10%, var(--color-primary-soft) 0%, transparent 58%)",
        }}
      />
      <div
        aria-hidden
        className="absolute inset-0 -z-10 opacity-[0.55]"
        style={{
          backgroundImage:
            "radial-gradient(color-mix(in oklch, var(--color-primary) 16%, transparent) 1px, transparent 1px)",
          backgroundSize: "26px 26px",
          maskImage: "radial-gradient(70% 60% at 50% 0%, black, transparent)",
          WebkitMaskImage: "radial-gradient(70% 60% at 50% 0%, black, transparent)",
        }}
      />

      <Container>
        <div className="grid items-center gap-14 py-16 sm:py-24 lg:grid-cols-[1.05fr_0.95fr] lg:gap-10">
          <div className="max-w-[38rem]">
            <p className="text-eyebrow uppercase text-primary">
              Academia online de oposiciones
            </p>
            <h1 className="text-display-xl mt-4">
              Prepárate para entrar en la{" "}
              <span className="relative whitespace-nowrap">
                Guardia Civil
                <span
                  aria-hidden
                  className="absolute inset-x-0 bottom-1 -z-10 h-[0.32em] bg-primary-soft"
                />
              </span>
            </h1>
            <p className="text-body-lg mt-6 text-muted-foreground">
              Dos vías de acceso y un mismo método: temario, tests y simulacros cronometrados en
              un solo sitio, con tu progreso medido de verdad. Estudias a la hora que puedes,
              desde donde puedes.
            </p>

            <div className="mt-9 flex flex-wrap gap-3">
              <Button href={links.registro} tamano="lg">
                Empezar ahora
                <ArrowRight size={18} aria-hidden />
              </Button>
              <Button href="#cursos" variante="secundario" tamano="lg">
                Ver los cursos
              </Button>
            </div>

            <ul className="mt-10 flex flex-wrap gap-x-6 gap-y-2 text-body-sm text-muted-foreground">
              {hechos.map((hecho) => (
                <li key={hecho} className="flex items-center gap-2">
                  <span aria-hidden className="size-1.5 rounded-full bg-primary" />
                  {hecho}
                </li>
              ))}
            </ul>
          </div>

          <div className="relative flex justify-center lg:justify-end">
            <div
              aria-hidden
              className="absolute -inset-8 -z-10 rounded-[3rem] bg-primary-soft/45 blur-2xl"
            />
            <Telefono className="rotate-[2.5deg]">
              <PantallaTest />
            </Telefono>

            <div
              aria-hidden
              className="absolute -left-2 bottom-12 hidden rounded-xl border border-border bg-surface p-4 shadow-[0_18px_40px_-12px_rgba(2,67,52,0.28)] sm:block lg:-left-6"
            >
              <div className="flex items-center gap-2.5">
                <span className="inline-flex size-9 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                  <Trophy size={17} />
                </span>
                <div>
                  <p className="text-body-sm font-bold leading-tight">Simulacro corregido</p>
                  <p className="text-body-sm text-muted-foreground">
                    Nota <span className="tabular font-bold text-primary">7,8</span> · 2.º del
                    ranking
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </Container>
    </section>
  );
}
