import Link from "next/link";
import { ArrowRight, BookOpen, ChevronDown, FileText } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { CtaFinal } from "@/components/sections/cta-final";
import { cursoPorSlug } from "@/content/cursos";
import { programas } from "@/content/temario";
import type { PaginaTemario } from "@/content/paginas-temario";
import { paginasTemario } from "@/content/paginas-temario";
import { slugsPublicados } from "@/lib/blog";
import { absoluteUrl, destinoEmpezar, rutas, tiendaVisible } from "@/lib/links";
import { JsonLd, migasJsonLd } from "@/lib/seo";

const fecha = (iso: string) =>
  new Intl.DateTimeFormat("es-ES", { month: "long", year: "numeric" }).format(new Date(iso));

/**
 * Página de temario de un curso: índice, los temas con lo que entra en cada uno, cómo se examina,
 * cómo estudiarlo y preguntas frecuentes. Todo el texto está en el HTML (los desplegables usan
 * `<details>`), así que Google lo lee entero aunque el visitante no lo abra.
 */
export async function PaginaTemarioCurso({ pagina }: { pagina: PaginaTemario }) {
  const programa = programas[pagina.slug];
  const curso = cursoPorSlug(pagina.slug);
  if (!programa || !curso) return null;

  const publicados = await slugsPublicados();
  const enlazable = (slug?: string) => !!slug && publicados.has(slug);
  const otra = Object.values(paginasTemario).find((p) => p.slug !== pagina.slug);
  const ultimoConocimientos = programa.temas.length - 2;

  return (
    <>
      {/* hero */}
      <section className="relative overflow-hidden border-b border-border">
        <div
          aria-hidden
          className="absolute inset-0 -z-10"
          style={{ background: "radial-gradient(90% 100% at 20% -20%, var(--color-primary-soft) 0%, transparent 62%)" }}
        />
        <Container>
          <div className="max-w-[48rem] py-16 sm:py-20">
            <nav aria-label="Migas" className="text-body-sm text-muted-foreground">
              <Link href="/" className="hover:text-foreground">Inicio</Link>
              <span aria-hidden className="mx-2">/</span>
              <Link href={rutas.curso(curso.slug)} className="hover:text-foreground">{curso.nombre}</Link>
              <span aria-hidden className="mx-2">/</span>
              <span className="text-foreground">Temario</span>
            </nav>
            <p className="mt-6 text-eyebrow uppercase text-primary">{pagina.eyebrow}</p>
            <h1 className="text-display-xl mt-4">{pagina.h1}</h1>
            <p className="text-body-lg mt-6 text-muted-foreground">{pagina.entradilla}</p>
            <dl className="mt-9 grid max-w-xl grid-cols-3 gap-4">
              {pagina.datos.map((d) => (
                <div key={d.etiqueta} className="border-l-2 border-primary pl-4">
                  <dt className="sr-only">{d.etiqueta}</dt>
                  <dd className="text-h2 font-extrabold tabular">{d.valor}</dd>
                  <dd className="text-body-sm text-muted-foreground">{d.etiqueta}</dd>
                </div>
              ))}
            </dl>
            <div className="mt-9 flex flex-wrap gap-3">
              <Button href={destinoEmpezar} tamano="lg">
                Estudiar el temario gratis 7 días
                <ArrowRight size={18} aria-hidden />
              </Button>
              <Button href="#temas" variante="secundario" tamano="lg">
                Ver los {programa.temas.length} temas
              </Button>
            </div>
            <p className="mt-6 text-body-sm text-muted-foreground">
              Revisado en {fecha(pagina.revisado)} ·{" "}
              {programa.fuente.url ? (
                <a href={programa.fuente.url} className="text-primary hover:underline" rel="noopener" target="_blank">
                  Fuente oficial
                </a>
              ) : (
                "Fuente oficial: " + programa.fuente.texto
              )}
            </p>
          </div>
        </Container>
      </section>

      {/* índice */}
      <Section
        eyebrow="Índice"
        titulo={`Los ${programa.temas.length} temas de un vistazo`}
        entradilla={programa.entradilla}
      >
        <ol className="grid gap-x-8 gap-y-2 sm:grid-cols-2 lg:grid-cols-3">
          {programa.temas.map((t) => (
            <li key={t.numero}>
              <a href={`#tema-${t.numero}`} className="group flex gap-3 rounded-md py-1.5 text-body-sm hover:text-primary">
                <span className="w-6 shrink-0 font-bold tabular text-muted-foreground group-hover:text-primary">{t.numero}</span>
                <span className="font-medium">{t.titulo}</span>
              </a>
            </li>
          ))}
        </ol>
      </Section>

      {/* temas */}
      <Section
        id="temas"
        eyebrow="Tema a tema"
        titulo="Qué entra en cada tema"
        entradilla="De qué trata cada tema y qué normas lo forman. Si el programa cita títulos o capítulos concretos de una ley, el resto de esa ley no entra."
        fondo="suave"
      >
        <ol className="grid gap-4">
          {programa.temas.map((t) => (
            <li key={t.numero} id={`tema-${t.numero}`} className="scroll-mt-28">
              <article className="rounded-xl border border-border bg-surface p-6 sm:p-7">
                <div className="flex items-start gap-4">
                  <span className="grid size-11 shrink-0 place-items-center rounded-lg bg-primary-soft font-bold tabular text-primary-soft-fg">
                    {t.numero}
                  </span>
                  <div className="min-w-0">
                    <h3 className="text-h3">
                      Tema {t.numero}. {t.titulo}
                    </h3>
                    <p className="mt-2 leading-[1.7] text-muted-foreground">{t.resumen}</p>
                  </div>
                </div>
                <details className="group mt-4 sm:ml-15">
                  <summary className="inline-flex cursor-pointer list-none items-center gap-2 text-body-sm font-semibold text-primary [&::-webkit-details-marker]:hidden">
                    Qué normas entran ({t.normas.length})
                    <ChevronDown size={16} aria-hidden className="transition-transform group-open:rotate-180" />
                  </summary>
                  <ul className="mt-3 grid gap-2 text-body-sm">
                    {t.normas.map((n) => (
                      <li key={n} className="flex gap-3">
                        <FileText size={16} aria-hidden className="mt-0.5 shrink-0 text-primary" />
                        <span>{n}</span>
                      </li>
                    ))}
                  </ul>
                </details>
                {enlazable(t.articulo?.slug) && (
                  <Link
                    href={`${rutas.blog}/${t.articulo!.slug}`}
                    className="mt-4 inline-flex items-center gap-2 text-body-sm font-semibold text-primary hover:underline sm:ml-15"
                  >
                    {t.articulo!.titulo}
                    <ArrowRight size={15} aria-hidden />
                  </Link>
                )}
              </article>
            </li>
          ))}
        </ol>
        <p className="mt-8 text-body-sm text-muted-foreground">
          Fuente:{" "}
          {programa.fuente.url ? (
            <a href={programa.fuente.url} className="text-primary hover:underline" rel="noopener" target="_blank">
              {programa.fuente.texto}
            </a>
          ) : (
            programa.fuente.texto
          )}
          . Comprueba siempre las bases de tu convocatoria.
        </p>
      </Section>

      {/* examen */}
      <Section
        eyebrow="El examen"
        titulo="Cómo se examina este temario"
        entradilla={`Los temas 1 a ${ultimoConocimientos} van a la prueba de conocimientos; el inglés y la lengua española tienen pruebas propias.`}
      >
        <div className="grid gap-10 lg:grid-cols-[minmax(0,1fr)_20rem]">
          <dl className="grid gap-3">
            {pagina.examen.map((e) => (
              <Reveal key={e.parte}>
                <div className="grid gap-1 rounded-xl border border-border bg-surface px-5 py-4 sm:grid-cols-[11rem_1fr] sm:gap-6">
                  <dt className="font-bold">{e.parte}</dt>
                  <dd className="text-muted-foreground">{e.detalle}</dd>
                </div>
              </Reveal>
            ))}
          </dl>
          <aside className="rounded-xl border border-border bg-surface-subtle p-6">
            <p className="text-eyebrow uppercase text-primary">Para profundizar</p>
            <ul className="mt-4 grid gap-3">
              {pagina.articulosExamen.filter((a) => enlazable(a.slug)).map((a) => (
                <li key={a.slug}>
                  <Link href={`${rutas.blog}/${a.slug}`} className="inline-flex gap-2 font-semibold hover:text-primary">
                    <ArrowRight size={16} aria-hidden className="mt-1 shrink-0 text-primary" />
                    {a.titulo}
                  </Link>
                </li>
              ))}
              <li>
                <Link href={rutas.curso(curso.slug)} className="inline-flex gap-2 font-semibold hover:text-primary">
                  <ArrowRight size={16} aria-hidden className="mt-1 shrink-0 text-primary" />
                  Todas las pruebas del proceso
                </Link>
              </li>
            </ul>
          </aside>
        </div>
      </Section>

      {/* cómo estudiarlo */}
      <Section
        eyebrow="Método"
        titulo="Cómo estudiar el temario sin perderte"
        entradilla="Leer y subrayar no basta: lo que se recuerda el día del examen es lo que se ha practicado. Así se trabaja cada tema en ProLince."
        fondo="suave"
      >
        <ol className="grid gap-5 sm:grid-cols-2 lg:grid-cols-4">
          {[
            ["Primera lectura con esquema", "Lees el tema con su esquema al lado para quedarte con la estructura antes que con los detalles."],
            ["Test del tema el mismo día", "Haces tests de ese tema en cuanto lo terminas: los fallos te dicen qué releer."],
            ["Repaso espaciado", "Vuelves a cada tema a los pocos días y a las pocas semanas, con tests mezclados de temas anteriores."],
            ["Simulacros cronometrados", "Con el temario avanzado, exámenes completos con el formato, el tiempo y la penalización reales."],
          ].map(([t, d], i) => (
            <li key={t} className="rounded-xl border border-border bg-surface p-6">
              <span className="text-eyebrow uppercase text-primary">Paso {i + 1}</span>
              <h3 className="text-h3 mt-2">{t}</h3>
              <p className="mt-2 text-body-sm text-muted-foreground">{d}</p>
            </li>
          ))}
        </ol>
        <div className="mt-10 flex flex-wrap items-center gap-4 rounded-xl border border-primary bg-primary-soft p-6">
          <BookOpen size={22} aria-hidden className="shrink-0 text-primary-soft-fg" />
          <p className="grow font-semibold text-primary-soft-fg">
            Temario en PDF con esquemas, tests por tema y simulacros, todo en la misma plataforma.
          </p>
          <div className="flex flex-wrap gap-3">
            <Button href={destinoEmpezar}>Probar 7 días gratis</Button>
            {tiendaVisible && (
              <Button href={`${rutas.tienda}#packs-${curso.slug}`} variante="secundario">
                Ver packs
              </Button>
            )}
          </div>
        </div>
      </Section>

      {/* preguntas frecuentes */}
      <Section eyebrow="Dudas" titulo="Preguntas frecuentes sobre el temario" ancho="estrecho">
        <div className="grid gap-3">
          {pagina.faq.map((f) => (
            <details key={f.pregunta} className="group rounded-xl border border-border bg-surface">
              <summary className="flex cursor-pointer list-none items-center justify-between gap-4 px-5 py-4 font-semibold [&::-webkit-details-marker]:hidden">
                <h3>{f.pregunta}</h3>
                <ChevronDown size={18} aria-hidden className="shrink-0 text-primary transition-transform group-open:rotate-180" />
              </summary>
              <p className="px-5 pb-5 leading-[1.7] text-muted-foreground">{f.respuesta}</p>
            </details>
          ))}
        </div>
        {otra && (
          <p className="mt-8 text-body-sm text-muted-foreground">
            ¿Buscas el otro temario?{" "}
            <Link href={otra.ruta} className="font-semibold text-primary hover:underline">
              {otra.h1}
            </Link>
          </p>
        )}
      </Section>

      <CtaFinal />

      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: curso.nombre, ruta: rutas.curso(curso.slug) }, { nombre: "Temario", ruta: pagina.ruta }])} />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "WebPage",
          name: pagina.meta.titulo,
          description: pagina.meta.descripcion,
          url: absoluteUrl(pagina.ruta),
          inLanguage: "es-ES",
          dateModified: pagina.revisado,
          isPartOf: { "@id": absoluteUrl("/#website") },
          about: { "@type": "Course", name: curso.nombre, url: absoluteUrl(rutas.curso(curso.slug)) },
          mainEntity: {
            "@type": "ItemList",
            name: pagina.h1,
            numberOfItems: programa.temas.length,
            itemListElement: programa.temas.map((t) => ({
              "@type": "ListItem",
              position: t.numero,
              name: `Tema ${t.numero}. ${t.titulo}`,
              url: absoluteUrl(`${pagina.ruta}#tema-${t.numero}`),
            })),
          },
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "FAQPage",
          mainEntity: pagina.faq.map((f) => ({ "@type": "Question", name: f.pregunta, acceptedAnswer: { "@type": "Answer", text: f.respuesta } })),
        }}
      />
    </>
  );
}
