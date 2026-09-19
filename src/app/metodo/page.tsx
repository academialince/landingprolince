import type { Metadata } from "next";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { Compaginar } from "@/components/sections/compaginar";
import { CtaFinal } from "@/components/sections/cta-final";
import { metodo } from "@/content/propuesta";
import { links } from "@/lib/links";

export const metadata: Metadata = {
  title: "Método de preparación",
  description:
    "Cómo se prepara el acceso a la Guardia Civil con ProLince: diagnóstico, plan por semanas, práctica diaria y simulacros en condiciones reales.",
  alternates: { canonical: "/metodo" },
};

const semana = [
  { dia: "Lunes a jueves", detalle: "Dos horas de temario nuevo y un test corto al terminar." },
  { dia: "Martes y jueves", detalle: "Sesión de entrenamiento físico de unos 45 minutos." },
  { dia: "Viernes", detalle: "Repaso de lo que has fallado durante la semana." },
  { dia: "Sábado", detalle: "Simulacro o bloque largo de práctica, con tiempo medido." },
  { dia: "Domingo", detalle: "Descanso. Forma parte del plan, no es tiempo perdido." },
];

export default function Metodo() {
  return (
    <>
      <PageHero eyebrow="Método" titulo={metodo.titulo} entradilla={metodo.entradilla}>
        <Button href={links.registro} tamano="lg">
          Empezar ahora
        </Button>
      </PageHero>

      <Section eyebrow="Los cuatro pasos" titulo="De no saber por dónde empezar a examinarte con criterio">
        <ol className="grid gap-6 md:grid-cols-2">
          {metodo.pasos.map((paso, i) => (
            <Reveal key={paso.titulo} retardo={(i % 2) * 70}>
              <li className="h-full rounded-xl border border-border bg-surface p-7">
                <span className="text-display-l leading-none text-primary/25 tabular">
                  {String(i + 1).padStart(2, "0")}
                </span>
                <h3 className="text-h3 mt-4">{paso.titulo}</h3>
                <p className="mt-2 text-muted-foreground">{paso.detalle}</p>
              </li>
            </Reveal>
          ))}
        </ol>
      </Section>

      <Section
        eyebrow="Una semana tipo"
        titulo="Cómo se reparten 12 o 15 horas"
        entradilla="Es una referencia, no una norma. Lo importante es que el reparto exista y que lo físico no quede fuera."
        fondo="suave"
        ancho="estrecho"
      >
        <ul className="grid gap-3">
          {semana.map((d, i) => (
            <Reveal key={d.dia} retardo={i * 50}>
              <li className="flex flex-col gap-1 rounded-xl border border-border bg-surface p-5 sm:flex-row sm:items-baseline sm:gap-6">
                <span className="w-40 shrink-0 font-bold">{d.dia}</span>
                <span className="text-muted-foreground">{d.detalle}</span>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      <Compaginar />
      <CtaFinal />
    </>
  );
}
