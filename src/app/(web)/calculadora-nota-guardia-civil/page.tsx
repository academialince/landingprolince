import Link from "next/link";
import { ArrowRight, ChevronDown } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Section } from "@/components/layout/section";
import { Button } from "@/components/ui/button";
import { CtaFinal } from "@/components/sections/cta-final";
import { CalculadoraNota } from "@/components/herramientas/calculadora-nota";
import { slugsPublicados } from "@/lib/blog";
import { absoluteUrl, destinoEmpezar, rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

const RUTA = "/calculadora-nota-guardia-civil";
const TITULO = "Calculadora de nota del examen de Guardia Civil 2026";
const DESCRIPCION =
  "Calcula gratis tu nota del examen de Guardia Civil con la fórmula oficial de 2026: conocimientos, inglés y psicotécnico con penalización, ortografía y concurso.";

/** Mismo ritmo que el blog: los enlaces a artículos aparecen cuando estos se publican. */
export const revalidate = 300;

export const metadata = metadataPagina({ titulo: "Calculadora de nota Guardia Civil 2026", descripcion: DESCRIPCION, ruta: RUTA });

const faq = [
  {
    pregunta: "¿Cuánto resta un error en el examen de Guardia Civil?",
    respuesta:
      "Un tercio de acierto en conocimientos generales y en inglés: tres errores anulan un acierto. En el psicotécnico, que se puntúa sobre 30, cada error resta 0,125 puntos.",
  },
  {
    pregunta: "¿Restan las preguntas en blanco?",
    respuesta: "No. La convocatoria dice expresamente que la pregunta no contestada no se penaliza.",
  },
  {
    pregunta: "¿Cuál es la nota mínima del examen?",
    respuesta:
      "50 sobre 100 en conocimientos generales, 8 sobre 20 en inglés y 12 sobre 30 en aptitudes intelectuales. Ortografía y gramática son apto o no apto: seis errores o más en cualquiera de las dos te excluyen.",
  },
  {
    pregunta: "¿Cuál es la nota máxima?",
    respuesta:
      "La fase de oposición suma hasta 150 puntos (100 + 20 + 30). Después se añade la fase de concurso, de hasta 45 puntos por méritos, y con esa suma se ordena a los aspirantes.",
  },
  {
    pregunta: "¿Me conviene contestar si dudo?",
    respuesta:
      "Si has descartado con seguridad al menos una opción, de media sí: ganas puntos. A ciegas, de media ni ganas ni pierdes, pero en la práctica las opciones falsas están hechas para atraerte, así que sin ningún criterio es mejor dejarla en blanco.",
  },
];

export default async function Calculadora() {
  const publicados = await slugsPublicados();
  const articulo = "calcular-nota-examen-guardia-civil";

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
              <span className="text-foreground">Calculadora de nota</span>
            </nav>
            <p className="mt-6 text-eyebrow uppercase text-primary">Herramienta gratis</p>
            <h1 className="text-display-l mt-4">{TITULO}</h1>
            <p className="text-body-lg mt-6 text-muted-foreground">
              Mete tus aciertos y errores de cada prueba y te decimos tu nota con la fórmula oficial de la convocatoria, si
              superas los mínimos y cuánto sumas con el concurso. Las preguntas en blanco se calculan solas.
            </p>
          </div>
        </Container>
      </section>

      <Section>
        <CalculadoraNota />
        <p className="mt-6 text-body-sm text-muted-foreground">
          Fórmula de la base 7.3 de la convocatoria de 2026 (Resolución 160/38243/2026, BOE de 8 de mayo de 2026).
          Comprueba la fórmula y los mínimos en las bases de tu año.
        </p>
      </Section>

      <Section
        eyebrow="Cómo se calcula"
        titulo="La fórmula oficial, explicada"
        entradilla="Cada prueba tipo test se puntúa con la misma fórmula. Con cuatro opciones por pregunta, cada error resta un tercio de acierto."
        fondo="suave"
      >
        <div className="grid gap-8 lg:grid-cols-2">
          <div className="rounded-xl border border-border bg-surface p-6">
            <p className="text-center font-[family-name:var(--font-hud)] text-h3 font-bold">Puntuación = Y × (A − E ÷ 3) ÷ T</p>
            <dl className="mt-6 grid grid-cols-[3rem_1fr] gap-x-4 gap-y-2 text-body-sm">
              <dt className="font-bold">A</dt><dd className="text-muted-foreground">aciertos</dd>
              <dt className="font-bold">E</dt><dd className="text-muted-foreground">errores (los blancos no cuentan)</dd>
              <dt className="font-bold">T</dt><dd className="text-muted-foreground">número de preguntas de la prueba</dd>
              <dt className="font-bold">Y</dt><dd className="text-muted-foreground">puntuación máxima de la prueba</dd>
            </dl>
          </div>
          <div className="overflow-x-auto rounded-xl border border-border bg-surface">
            <table className="w-full text-left text-body-sm">
              <caption className="sr-only">Pruebas tipo test del examen de Guardia Civil</caption>
              <thead className="border-b border-border text-muted-foreground">
                <tr>
                  <th scope="col" className="px-4 py-3 font-semibold">Prueba</th>
                  <th scope="col" className="px-4 py-3 font-semibold">Preguntas</th>
                  <th scope="col" className="px-4 py-3 font-semibold">Máximo</th>
                  <th scope="col" className="px-4 py-3 font-semibold">Mínimo</th>
                </tr>
              </thead>
              <tbody className="tabular">
                <tr className="border-b border-border"><th scope="row" className="px-4 py-3 font-semibold">Conocimientos</th><td className="px-4 py-3">100</td><td className="px-4 py-3">100</td><td className="px-4 py-3">50</td></tr>
                <tr className="border-b border-border"><th scope="row" className="px-4 py-3 font-semibold">Inglés</th><td className="px-4 py-3">20</td><td className="px-4 py-3">20</td><td className="px-4 py-3">8</td></tr>
                <tr><th scope="row" className="px-4 py-3 font-semibold">Psicotécnico</th><td className="px-4 py-3">80</td><td className="px-4 py-3">30</td><td className="px-4 py-3">12</td></tr>
              </tbody>
            </table>
          </div>
        </div>

        <h3 className="text-h3 mt-12">Un ejemplo</h3>
        <p className="mt-3 max-w-[46rem] leading-[1.7] text-muted-foreground">
          Dos opositores terminan conocimientos con 70 aciertos. Uno deja 15 en blanco y falla 15: 70 − 15 ÷ 3 ={" "}
          <strong className="text-foreground">65 puntos</strong>. El otro lo contesta todo y falla 30: 70 − 30 ÷ 3 ={" "}
          <strong className="text-foreground">60 puntos</strong>. Saben lo mismo; el segundo regala cinco puntos por contestar
          sin saber.
        </p>
        {publicados.has(articulo) && (
          <Link href={`${rutas.blog}/${articulo}`} className="mt-5 inline-flex items-center gap-2 font-semibold text-primary hover:underline">
            Más ejemplos y cuándo dejar en blanco
            <ArrowRight size={17} aria-hidden />
          </Link>
        )}
      </Section>

      <Section eyebrow="Entrena con la fórmula" titulo="Tests y simulacros corregidos como en el examen">
        <div className="flex flex-wrap items-center justify-between gap-6 rounded-xl border border-primary bg-primary-soft p-6 sm:p-8">
          <p className="max-w-[40rem] text-body-lg text-primary-soft-fg">
            En ProLince cada test y cada simulacro se corrige con la penalización de la convocatoria, así que la nota que ves es la
            que sacarías el día del examen.
          </p>
          <Button href={destinoEmpezar} tamano="lg">
            Probar 7 días gratis
            <ArrowRight size={18} aria-hidden />
          </Button>
        </div>
      </Section>

      <Section eyebrow="Dudas" titulo="Preguntas frecuentes sobre la nota" ancho="estrecho" fondo="suave">
        <div className="grid gap-3">
          {faq.map((f) => (
            <details key={f.pregunta} className="group rounded-xl border border-border bg-surface">
              <summary className="flex cursor-pointer list-none items-center justify-between gap-4 px-5 py-4 font-semibold [&::-webkit-details-marker]:hidden">
                <h3>{f.pregunta}</h3>
                <ChevronDown size={18} aria-hidden className="shrink-0 text-primary transition-transform group-open:rotate-180" />
              </summary>
              <p className="px-5 pb-5 leading-[1.7] text-muted-foreground">{f.respuesta}</p>
            </details>
          ))}
        </div>
        <p className="mt-8 text-body-sm text-muted-foreground">
          ¿Aún no conoces el programa?{" "}
          <Link href="/temario-guardia-civil" className="font-semibold text-primary hover:underline">
            Temario Guardia Civil 2026, tema a tema
          </Link>
        </p>
      </Section>

      <CtaFinal />

      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Calculadora de nota", ruta: RUTA }])} />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "WebApplication",
          name: TITULO,
          description: DESCRIPCION,
          url: absoluteUrl(RUTA),
          applicationCategory: "EducationalApplication",
          operatingSystem: "Web",
          inLanguage: "es-ES",
          isAccessibleForFree: true,
          offers: { "@type": "Offer", price: 0, priceCurrency: "EUR" },
          publisher: { "@id": absoluteUrl("/#organizacion") },
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "FAQPage",
          mainEntity: faq.map((f) => ({ "@type": "Question", name: f.pregunta, acceptedAnswer: { "@type": "Answer", text: f.respuesta } })),
        }}
      />
    </>
  );
}
