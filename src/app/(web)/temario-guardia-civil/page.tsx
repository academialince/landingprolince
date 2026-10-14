import Link from "next/link";
import { ArrowRight, FileText } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Container } from "@/components/layout/container";
import { Section } from "@/components/layout/section";
import { Button } from "@/components/ui/button";
import { CtaFinal } from "@/components/sections/cta-final";
import { fuenteTemario, temario } from "@/content/temario";
import { absoluteUrl, rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Temario Guardia Civil 2026: los 25 temas",
  descripcion:
    "Temario Guardia Civil 2026 tema a tema: qué leyes y qué partes entran en cada uno de los 25 temas del programa oficial de la Escala de Cabos y Guardias.",
  ruta: rutas.temario,
});

const preguntas = [
  {
    pregunta: "¿Cuántos temas tiene el temario de la Guardia Civil?",
    respuesta:
      "El programa oficial tiene 25 temas. Del 1 al 23 forman la prueba de conocimientos (100 preguntas tipo test); el 24 es la lengua inglesa, con su propia prueba de 20 preguntas, y el 25 la lengua española, que se evalúa en los ejercicios de ortografía y gramática.",
  },
  {
    pregunta: "¿Entra la Constitución entera?",
    respuesta:
      "Sí. El tema 4 incluye la Constitución Española de 1978 completa, además de la Ley Orgánica del Defensor del Pueblo (Títulos I a III) y la Ley Orgánica 1/1982.",
  },
  {
    pregunta: "¿Hay que estudiar las leyes completas?",
    respuesta:
      "Depende del tema. Cuando el programa enumera títulos o capítulos concretos, solo entran esas partes y el resto queda fuera. Cuando dice «completa», entra toda la norma.",
  },
  {
    pregunta: "¿Cambia el temario de una convocatoria a otra?",
    respuesta:
      "El programa se actualiza de vez en cuando y las leyes que incluye se reforman. Antes de empezar, comprueba las bases de tu convocatoria en el BOE y trabaja siempre con textos consolidados.",
  },
];

export default function Temario() {
  return (
    <>
      <PageHero
        eyebrow="Escala de Cabos y Guardias · Convocatoria 2026"
        titulo="Temario de la Guardia Civil: los 25 temas oficiales"
        entradilla="Qué entra en cada tema y qué queda fuera, según el programa oficial. Los temas 1 a 23 forman las 100 preguntas de conocimientos; el inglés y la lengua española tienen sus propias pruebas."
      >
        <Button href={`${rutas.curso("acceso-guardia-civil")}#temario`}>
          Prepararlo con el curso
          <ArrowRight size={18} aria-hidden />
        </Button>
      </PageHero>

      <section className="py-12 sm:py-16">
        <Container>
          <nav aria-label="Índice del temario">
            <h2 className="text-h3">Índice</h2>
            <ol className="mt-5 grid gap-x-8 gap-y-2 sm:grid-cols-2 lg:grid-cols-3">
              {temario.map((t) => (
                <li key={t.numero}>
                  <Link href={`#tema-${t.numero}`} className="text-body-sm text-primary hover:underline">
                    <span className="tabular font-bold">Tema {t.numero}.</span> {t.titulo}
                  </Link>
                </li>
              ))}
            </ol>
          </nav>

          <div className="mt-14 grid gap-6">
            {temario.map((t) => (
              <article
                key={t.numero}
                id={`tema-${t.numero}`}
                className="scroll-mt-28 rounded-2xl border border-border bg-surface p-7 sm:p-9"
              >
                <p className="text-eyebrow uppercase text-primary">Tema {t.numero}</p>
                <h2 className="text-h2 mt-2">{t.titulo}</h2>
                <p className="mt-3 text-muted-foreground leading-[1.7]">{t.resumen}</p>
                <h3 className="mt-6 text-body-sm font-bold uppercase tracking-wide text-muted-foreground">
                  Qué entra
                </h3>
                <ul className="mt-3 grid gap-2">
                  {t.normas.map((n) => (
                    <li key={n} className="flex gap-3">
                      <FileText size={18} aria-hidden className="mt-0.5 shrink-0 text-primary" />
                      <span>{n}</span>
                    </li>
                  ))}
                </ul>
                {t.articulo && (
                  <Link
                    href={`${rutas.blog}/${t.articulo.slug}`}
                    className="mt-6 inline-flex items-center gap-2 font-semibold text-primary hover:underline"
                  >
                    {t.articulo.titulo}
                    <ArrowRight size={16} aria-hidden />
                  </Link>
                )}
              </article>
            ))}
          </div>

          <p className="mt-10 text-body-sm text-muted-foreground">
            Fuente: programa oficial publicado por la Guardia Civil, aplicable a la convocatoria de
            2026 (
            <a href={fuenteTemario.urlBoe} className="text-primary hover:underline" rel="noopener" target="_blank">
              {fuenteTemario.convocatoria}
            </a>
            ). Comprueba siempre las bases de tu convocatoria.
          </p>
        </Container>
      </section>

      <Section eyebrow="Dudas frecuentes" titulo="Preguntas sobre el temario" fondo="suave" ancho="estrecho">
        <div className="grid gap-6">
          {preguntas.map((p) => (
            <div key={p.pregunta}>
              <h3 className="text-h3">{p.pregunta}</h3>
              <p className="mt-2 text-muted-foreground leading-[1.7]">{p.respuesta}</p>
            </div>
          ))}
        </div>
      </Section>

      <CtaFinal />

      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Temario", ruta: rutas.temario }])} />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "ItemList",
          name: "Temario oficial de la Guardia Civil",
          url: absoluteUrl(rutas.temario),
          numberOfItems: temario.length,
          itemListElement: temario.map((t) => ({
            "@type": "ListItem",
            position: t.numero,
            name: `Tema ${t.numero}. ${t.titulo}`,
            url: absoluteUrl(`${rutas.temario}#tema-${t.numero}`),
          })),
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "FAQPage",
          mainEntity: preguntas.map((p) => ({
            "@type": "Question",
            name: p.pregunta,
            acceptedAnswer: { "@type": "Answer", text: p.respuesta },
          })),
        }}
      />
    </>
  );
}
