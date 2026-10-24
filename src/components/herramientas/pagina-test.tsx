import Link from "next/link";
import { ChevronDown } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Section } from "@/components/layout/section";
import { CtaFinal } from "@/components/sections/cta-final";
import { TestGratis, type PreguntaTest } from "@/components/herramientas/test-gratis";
import { cursoPorSlug } from "@/content/cursos";
import { absoluteUrl, destinoEmpezar, rutas } from "@/lib/links";
import { JsonLd, migasJsonLd } from "@/lib/seo";

export type ConfigTest = {
  slug: string;
  ruta: string;
  h1: string;
  entradilla: string;
  preguntas: PreguntaTest[];
  faq: { pregunta: string; respuesta: string }[];
};

/** Una pregunta por tema para la muestra visible: Google la lee entera y sirve de anticipo. */
function muestra(preguntas: PreguntaTest[], n: number) {
  const vistos = new Set<number>();
  return preguntas.filter((q) => !vistos.has(q.tema) && vistos.add(q.tema)).slice(0, n);
}

const LETRAS = ["A", "B", "C", "D"];

export function PaginaTest({ config }: { config: ConfigTest }) {
  const curso = cursoPorSlug(config.slug);
  const ejemplos = muestra(config.preguntas, 6);
  const temario = rutas.temario(config.slug);

  return (
    <>
      <section className="relative overflow-hidden border-b border-border">
        <div
          aria-hidden
          className="absolute inset-0 -z-10"
          style={{ background: "radial-gradient(90% 100% at 20% -20%, var(--color-primary-soft) 0%, transparent 62%)" }}
        />
        <Container>
          <div className="max-w-[48rem] py-14 sm:py-20">
            <nav aria-label="Migas" className="text-body-sm text-muted-foreground">
              <Link href="/" className="hover:text-foreground">Inicio</Link>
              <span aria-hidden className="mx-2">/</span>
              {curso && (
                <>
                  <Link href={rutas.curso(curso.slug)} className="hover:text-foreground">{curso.nombre}</Link>
                  <span aria-hidden className="mx-2">/</span>
                </>
              )}
              <span className="text-foreground">Test gratis</span>
            </nav>
            <p className="mt-6 text-eyebrow uppercase text-primary">Test online gratis</p>
            <h1 className="text-display-l mt-4">{config.h1}</h1>
            <p className="text-body-lg mt-6 text-muted-foreground">{config.entradilla}</p>
          </div>
        </Container>
      </section>

      <Section ancho="estrecho">
        <TestGratis preguntas={config.preguntas} registro={destinoEmpezar} />
      </Section>

      <Section
        eyebrow="Muestra"
        titulo="Algunas preguntas del test, con su solución"
        entradilla="Una pregunta de cada uno de los primeros temas, con la respuesta correcta y la explicación."
        fondo="suave"
        ancho="estrecho"
      >
        <ol className="grid gap-4">
          {ejemplos.map((q) => (
            <li key={q.id} className="rounded-xl border border-border bg-surface p-6">
              <p className="text-body-sm font-semibold text-primary">
                Tema {q.tema}. {q.temaTitulo}
              </p>
              <h3 className="mt-2 font-semibold leading-snug">{q.pregunta}</h3>
              <ol className="mt-3 grid gap-1 text-body-sm text-muted-foreground">
                {q.opciones.map((o, i) => (
                  <li key={i}>
                    {LETRAS[i]}) {o}
                  </li>
                ))}
              </ol>
              <details className="group mt-4">
                <summary className="inline-flex cursor-pointer list-none items-center gap-2 text-body-sm font-semibold text-primary [&::-webkit-details-marker]:hidden">
                  Ver la solución
                  <ChevronDown size={16} aria-hidden className="transition-transform group-open:rotate-180" />
                </summary>
                <p className="mt-3 text-body-sm">
                  <strong>
                    Correcta: {LETRAS[q.correcta]}) {q.opciones[q.correcta]}
                  </strong>
                </p>
                <p className="mt-2 text-body-sm leading-[1.7] text-muted-foreground">{q.explicacion}</p>
              </details>
            </li>
          ))}
        </ol>
      </Section>

      <Section eyebrow="Dudas" titulo="Preguntas frecuentes" ancho="estrecho">
        <div className="grid gap-3">
          {config.faq.map((f) => (
            <details key={f.pregunta} className="group rounded-xl border border-border bg-surface">
              <summary className="flex cursor-pointer list-none items-center justify-between gap-4 px-5 py-4 font-semibold [&::-webkit-details-marker]:hidden">
                <h3>{f.pregunta}</h3>
                <ChevronDown size={18} aria-hidden className="shrink-0 text-primary transition-transform group-open:rotate-180" />
              </summary>
              <p className="px-5 pb-5 leading-[1.7] text-muted-foreground">{f.respuesta}</p>
            </details>
          ))}
        </div>
        <ul className="mt-8 grid gap-2 text-body-sm">
          {temario && (
            <li>
              <Link href={temario} className="font-semibold text-primary hover:underline">Ver el temario completo, tema a tema</Link>
            </li>
          )}
          {config.slug === "acceso-guardia-civil" && (
            <li>
              <Link href={rutas.calculadora} className="font-semibold text-primary hover:underline">Calculadora de nota del examen</Link>
            </li>
          )}
          {curso && (
            <li>
              <Link href={rutas.curso(curso.slug)} className="font-semibold text-primary hover:underline">Curso {curso.nombre}</Link>
            </li>
          )}
        </ul>
      </Section>

      <CtaFinal />

      <JsonLd
        data={migasJsonLd([
          { nombre: "Inicio", ruta: "/" },
          ...(curso ? [{ nombre: curso.nombre, ruta: rutas.curso(curso.slug) }] : []),
          { nombre: "Test gratis", ruta: config.ruta },
        ])}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "Quiz",
          name: config.h1,
          url: absoluteUrl(config.ruta),
          inLanguage: "es-ES",
          isAccessibleForFree: true,
          educationalLevel: "Oposición",
          about: curso ? { "@type": "Thing", name: curso.nombre } : undefined,
          provider: { "@id": absoluteUrl("/#organizacion") },
          hasPart: ejemplos.map((q) => ({
            "@type": "Question",
            eduQuestionType: "Multiple choice",
            text: q.pregunta,
            suggestedAnswer: q.opciones.filter((_, i) => i !== q.correcta).map((o) => ({ "@type": "Answer", text: o })),
            acceptedAnswer: { "@type": "Answer", text: q.opciones[q.correcta], answerExplanation: { "@type": "Comment", text: q.explicacion } },
          })),
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "FAQPage",
          mainEntity: config.faq.map((f) => ({ "@type": "Question", name: f.pregunta, acceptedAnswer: { "@type": "Answer", text: f.respuesta } })),
        }}
      />
    </>
  );
}
