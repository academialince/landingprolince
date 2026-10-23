import { ArrowRight } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Button } from "@/components/ui/button";
import { MarcoTactico } from "@/components/ui/marco-tactico";
import { destinoEmpezar } from "@/lib/links";

const hechos = ["Acceso a la Guardia Civil", "Colegio de Guardias Jóvenes", "100 % online", "7 días gratis"];

export function Hero() {
  return (
    <section className="relative overflow-hidden">
      <div
        aria-hidden
        className="absolute inset-0 -z-10"
        style={{
          background:
            "radial-gradient(70% 80% at 80% 20%, color-mix(in oklch, var(--color-primary) 16%, transparent) 0%, transparent 60%), linear-gradient(180deg, transparent 70%, var(--color-background) 100%)",
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
              <span className="whitespace-nowrap text-primary">Guardia Civil</span>
            </h1>
            <p className="text-body-lg mt-6 text-muted-foreground">
              Simulacros con el formato del examen real, tests por temas y esquemas para repasar lo
              que más cae. Todo en un mismo sitio y con tu progreso a la vista. Método ProLince.
            </p>

            <div className="mt-9 flex flex-wrap gap-3">
              <Button href={destinoEmpezar} tamano="lg">
                Empezar ahora
                <ArrowRight size={18} aria-hidden />
              </Button>
              <Button href="#cursos" variante="secundario" tamano="lg">
                Ver los cursos
              </Button>
            </div>

            <ul className="mt-10 flex flex-wrap gap-x-6 gap-y-2 font-[family-name:var(--font-hud)] text-[0.72rem] font-bold uppercase tracking-[0.12em] text-muted-foreground">
              {hechos.map((hecho) => (
                <li key={hecho} className="flex items-center gap-2">
                  <span aria-hidden className="size-1.5 rotate-45 bg-primary" />
                  {hecho}
                </li>
              ))}
            </ul>
          </div>

          <MarcoTactico
            src="/tactico/tactico.jpg"
            alt="Guardia civil con equipo de intervención: casco con visera, chaleco y arma reglamentaria"
            etiqueta="OBJ-01 · Guardia Civil"
            pie="Tu plaza empieza aquí"
            dato="Convocatoria 2026"
            preload
          />
        </div>
      </Container>
    </section>
  );
}
