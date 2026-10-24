import type { Metadata } from "next";
import Image from "next/image";
import { notFound, redirect } from "next/navigation";
import { ArrowRight, Check, ChevronDown, FileText } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { SubmenuCurso } from "@/components/layout/submenu-curso";
import { VolverInicio } from "@/components/layout/volver-inicio";
import { Button } from "@/components/ui/button";
import { Icono } from "@/components/ui/icon";
import { CtaFinal } from "@/components/sections/cta-final";
import { cursoPorSlug, cursos } from "@/content/cursos";
import { site } from "@/content/site";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";
import { absoluteUrl, cursosAbiertos, cursosVisibles, destinoEmpezar, rutas, tiendaVisible } from "@/lib/links";
import { Proximamente } from "@/components/ui/proximamente";
import { TarjetaEntrada } from "@/components/blog/tarjeta-entrada";
import { entradasRelacionadas, slugsPublicados } from "@/lib/blog";
import { packs, rangoPrecios } from "@/content/tienda";
import { PacksCurso } from "@/components/tienda/packs-curso";
import { programas } from "@/content/temario";
import { temarios } from "@/content/temarios";
import { TarjetaTemario } from "@/components/temarios/tarjeta-temario";
import { PruebasRepaso } from "@/components/cursos/pruebas-repaso";
import { Resultados } from "@/components/sections/resultados";
import Link from "next/link";

/** Las anclas quedan bajo la cabecera y el submenú, que suman 7,5rem. */
const ANCLA = "scroll-mt-[7.75rem]";

/** El bloque de artículos sale de la base de datos: se refresca igual que el blog. */
export const revalidate = 300;
export const dynamicParams = false;

export function generateStaticParams() {
  return cursos.map((c) => ({ slug: c.slug }));
}

export async function generateMetadata(props: PageProps<"/cursos/[slug]">): Promise<Metadata> {
  const { slug } = await props.params;
  const curso = cursoPorSlug(slug);
  if (!curso) return {};
  return metadataPagina({
    titulo: curso.seo.titulo,
    descripcion: curso.seo.descripcion,
    ruta: rutas.curso(curso.slug),
    imagen: curso.imagen,
    imagenAlt: curso.imagenAlt,
  });
}

export default async function PaginaCurso(props: PageProps<"/cursos/[slug]">) {
  const { slug } = await props.params;
  const curso = cursoPorSlug(slug);
  if (!curso) notFound();
  if (!cursosVisibles) redirect(rutas.waitlist);
  const programa = programas[curso.slug];
  const publicados = await slugsPublicados();
  const librosCurso = temarios.find((t) => t.slug === curso.slug);

  // Enlazado de vuelta al blog: primero los artículos de este curso; si aún no hay, los últimos.
  const delCurso = await entradasRelacionadas("", curso.slug);
  const guias = delCurso.length ? delCurso : await entradasRelacionadas("", null);

  return (
    <>
      <VolverInicio />

      <section className="relative overflow-hidden border-b border-border">
        <div
          aria-hidden
          className="absolute inset-0 -z-10"
          style={{
            background:
              "radial-gradient(90% 100% at 20% -20%, var(--color-primary-soft) 0%, transparent 62%)",
          }}
        />
        <Container>
          <div className="grid items-center gap-12 py-16 sm:py-20 lg:grid-cols-[1.05fr_0.95fr]">
            <div>
              <div className="flex flex-wrap items-center gap-3">
                <p className="text-eyebrow uppercase text-primary">{curso.eyebrow}</p>
                {!cursosAbiertos && <Proximamente />}
              </div>
              <h1 className="text-display-xl mt-4">{curso.titular}</h1>
              <p className="text-body-lg mt-6 text-muted-foreground">{curso.entradilla}</p>

              <div className="mt-9 flex flex-wrap gap-3">
                <Button href={destinoEmpezar} tamano="lg">
                  Empezar ahora
                  <ArrowRight size={18} aria-hidden />
                </Button>
                {tiendaVisible && (
                  <Button href={rutas.tienda} variante="secundario" tamano="lg">
                    Ver precio
                  </Button>
                )}
              </div>

              <dl className="mt-10 flex flex-wrap gap-x-10 gap-y-4">
                {curso.destacados.map((d) => (
                  <div key={d.etiqueta}>
                    <dt className="sr-only">{d.etiqueta}</dt>
                    <dd className="text-h2 tabular text-primary">{d.valor}</dd>
                    <dd className="text-body-sm text-muted-foreground">{d.etiqueta}</dd>
                  </div>
                ))}
              </dl>
            </div>

            <div className="reflejo relative aspect-[16/11] overflow-hidden rounded-2xl border border-border shadow-[0_28px_60px_-24px_rgba(2,67,52,0.35)]">
              <Image
                src={curso.imagen}
                quality={90}
                alt={curso.imagenAlt}
                fill
                preload
                sizes="(max-width: 1024px) 100vw, 560px"
                className="object-cover"
              />
            </div>
          </div>
        </Container>
      </section>

      <SubmenuCurso secciones={curso.secciones} />

      <Section
        id="para-quien"
        className={ANCLA}
        eyebrow="Para quién es"
        titulo={curso.paraQuien.titulo}
        entradilla={curso.paraQuien.texto}
      >
        <ul className="grid gap-3 sm:grid-cols-2">
          {curso.paraQuien.puntos.map((p, i) => (
            <Reveal key={p} retardo={(i % 2) * 50}>
              <li className="flex items-start gap-3 rounded-xl border border-border bg-surface p-5">
                <Check size={18} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                <span className="font-medium">{p}</span>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      <Section
        id="requisitos"
        className={ANCLA}
        eyebrow="Requisitos"
        titulo={curso.requisitos.titulo}
        entradilla={curso.requisitos.nota}
        fondo="suave"
      >
        <ul className="grid gap-3 sm:grid-cols-2">
          {curso.requisitos.lista.map((r, i) => (
            <Reveal key={r} retardo={(i % 2) * 40}>
              <li className="flex items-start gap-3 rounded-xl border border-border bg-surface p-5">
                <span aria-hidden className="mt-2 size-1.5 shrink-0 rounded-full bg-primary" />
                <span className="font-medium">{r}</span>
              </li>
            </Reveal>
          ))}
        </ul>

        {curso.convocatoria && (
          <Reveal className="mt-8">
            <div className="flex flex-wrap items-center justify-between gap-6 rounded-xl border border-border bg-surface p-7">
              <div className="flex flex-wrap gap-10">
                <div>
                  <p className="text-eyebrow uppercase text-muted-foreground">Plazas</p>
                  <p className="text-display-l mt-1 tabular">
                    {curso.convocatoria.plazas.toLocaleString("es-ES")}
                  </p>
                </div>
                <div>
                  <p className="text-eyebrow uppercase text-muted-foreground">Convocatoria</p>
                  <p className="text-display-l mt-1 tabular">{curso.convocatoria.anio}</p>
                </div>
              </div>
              <Button href={curso.convocatoria.urlBoe} variante="secundario">
                <FileText size={16} aria-hidden />
                Texto en el BOE
              </Button>
            </div>
          </Reveal>
        )}
      </Section>

      <Section
        id="pruebas"
        className={ANCLA}
        eyebrow="Proceso selectivo"
        titulo="Las pruebas, por orden"
        entradilla="Cada fase elimina. No sirve de nada ir sobrado en el test si las marcas físicas te dejan fuera."
      >
        <PruebasRepaso
          pruebas={curso.pruebas}
          slug={curso.slug}
          curso={curso.nombre}
          temas={programa?.temas.map((t) => t.titulo) ?? []}
        />
      </Section>

      {programa && (
        <Section
          id="temario"
          className={ANCLA}
          eyebrow="Temario"
          titulo={`Los ${programa.temas.length} temas del programa oficial`}
          entradilla={programa.entradilla}
          fondo="suave"
        >
          <ol className="grid gap-3 md:grid-cols-2 md:items-start">
            {programa.temas.map((t) => (
              <li key={t.numero} id={`tema-${t.numero}`} className="scroll-mt-40">
                <details className="group rounded-xl border border-border bg-surface open:shadow-[0_10px_30px_-18px_rgba(2,67,52,0.3)]">
                  <summary className="flex min-h-14 cursor-pointer list-none items-center gap-4 px-5 py-4 [&::-webkit-details-marker]:hidden">
                    <span className="w-10 shrink-0 text-h3 tabular text-muted-foreground">{String(t.numero).padStart(2, "0")}</span>
                    <span className="grow font-semibold leading-snug">{t.titulo}</span>
                    <ChevronDown size={18} aria-hidden className="shrink-0 text-primary transition-transform group-open:rotate-180" />
                  </summary>
                  <div className="px-5 pb-6 sm:pl-[4.75rem]">
                    <p className="text-muted-foreground leading-[1.7]">{t.resumen}</p>
                    <h3 className="mt-5 text-body-sm font-bold uppercase tracking-wide text-muted-foreground">Qué entra</h3>
                    <ul className="mt-3 grid gap-2 text-body-sm">
                      {t.normas.map((n) => (
                        <li key={n} className="flex gap-3">
                          <FileText size={17} aria-hidden className="mt-0.5 shrink-0 text-primary" />
                          <span>{n}</span>
                        </li>
                      ))}
                    </ul>
                    {t.articulo && publicados.has(t.articulo.slug) && (
                      <Link href={`${rutas.blog}/${t.articulo.slug}`} className="mt-5 inline-flex items-center gap-2 text-body-sm font-semibold text-primary hover:underline">
                        {t.articulo.titulo}
                        <ArrowRight size={16} aria-hidden />
                      </Link>
                    )}
                  </div>
                </details>
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
          {rutas.temario(curso.slug) && (
            <Button href={rutas.temario(curso.slug)} variante="secundario" className="mt-6">
              Ver el temario completo, tema a tema
              <ArrowRight size={18} aria-hidden />
            </Button>
          )}

          {librosCurso && (
            <div className="mt-14">
              <h3 className="text-h3">El temario en papel</h3>
              <p className="mt-2 max-w-[46rem] text-muted-foreground">
                Actualizado a 2027 y en casa en 48 horas. Elige el pack completo, con los libros de inglés y de ortografía y
                gramática, o el libro resumen para repasar.
              </p>
              <ul className="mt-6 grid gap-6 lg:grid-cols-2">
                {librosCurso.modalidades.map((m, i) => (
                  <li key={m.id}>
                    <Reveal retardo={i * 60} className="h-full">
                      <TarjetaTemario m={m} curso={curso.nombreCorto} />
                    </Reveal>
                  </li>
                ))}
              </ul>
            </div>
          )}
        </Section>
      )}

      <Section
        id="incluye"
        className={ANCLA}
        eyebrow="Qué incluye"
        titulo="Todo lo que entra en tu curso"
        entradilla="Sin material extra que se cobre aparte y sin sorpresas a mitad de la preparación."
      >
        <ul className="grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
          {curso.incluye.map((c, i) => (
            <Reveal key={c.titulo} retardo={(i % 3) * 60}>
              <li className="h-full rounded-xl border border-border bg-surface p-6">
                <span className="inline-flex size-11 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                  <Icono nombre={c.icono} size={21} />
                </span>
                <h3 className="text-h3 mt-5">{c.titulo}</h3>
                <p className="mt-2 text-muted-foreground">{c.detalle}</p>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      {packs[curso.slug] && (
        <Section
          id="packs"
          className={ANCLA}
          eyebrow="Packs"
          titulo="Elige cómo prepararlo"
          entradilla="Tests para entrenar a diario, simulacros para el examen o el pack anual con todo."
          fondo="suave"
        >
          <PacksCurso slug={curso.slug} />
        </Section>
      )}

      <Resultados curso={curso.slug} />

      <Section
        id="preguntas"
        className={ANCLA}
        eyebrow="Preguntas"
        titulo="Dudas sobre este curso"
        ancho="estrecho"
        fondo="suave"
      >
        <div className="grid gap-3">
          {curso.faq.map((item, i) => (
            <Reveal key={item.pregunta} retardo={i * 40}>
              <details className="group rounded-xl border border-border bg-surface open:border-border-strong">
                <summary className="flex cursor-pointer list-none items-center justify-between gap-4 p-5 text-h3 [&::-webkit-details-marker]:hidden">
                  {item.pregunta}
                  <ChevronDown
                    size={20}
                    aria-hidden
                    className="shrink-0 text-muted-foreground transition-transform duration-200 ease-[var(--ease-product)] group-open:rotate-180"
                  />
                </summary>
                <p className="-mt-1 px-5 pb-5 leading-[1.7] text-muted-foreground">
                  {item.respuesta}
                </p>
              </details>
            </Reveal>
          ))}
        </div>
      </Section>

      {guias.length > 0 && (
        <Section eyebrow="Blog" titulo={`Guías para preparar ${curso.nombreCorto}`}>
          <div className="grid gap-6 md:grid-cols-3">
            {guias.map((e) => (
              <TarjetaEntrada key={e.id} entrada={e} />
            ))}
          </div>
          <Button href={rutas.blog} variante="secundario" className="mt-10">
            Ver todo el blog
            <ArrowRight size={18} aria-hidden />
          </Button>
        </Section>
      )}

      <CtaFinal />
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: curso.nombre, ruta: rutas.curso(curso.slug) }])} />

      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "Course",
          name: curso.nombre,
          description: curso.seo.descripcion,
          url: absoluteUrl(rutas.curso(curso.slug)),
          image: absoluteUrl(curso.imagen),
          inLanguage: "es-ES",
          provider: {
            "@type": "EducationalOrganization",
            "@id": absoluteUrl("/#organizacion"),
            name: site.nombreLargo,
            url: absoluteUrl("/"),
          },
          ...(packs[curso.slug]
            ? {
                offers: {
                  "@type": "AggregateOffer",
                  priceCurrency: "EUR",
                  lowPrice: rangoPrecios(curso.slug).min,
                  highPrice: rangoPrecios(curso.slug).max,
                  offerCount: rangoPrecios(curso.slug).n,
                  url: absoluteUrl(`${rutas.curso(curso.slug)}#packs`),
                },
              }
            : {}),
          hasCourseInstance: { "@type": "CourseInstance", courseMode: "Online" },
          ...(programa
            ? { syllabusSections: programa.temas.map((t) => ({ "@type": "Syllabus", name: `Tema ${t.numero}. ${t.titulo}`, description: t.resumen })) }
            : {}),
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "FAQPage",
          mainEntity: curso.faq.map((f) => ({
            "@type": "Question",
            name: f.pregunta,
            acceptedAnswer: { "@type": "Answer", text: f.respuesta },
          })),
        }}
      />
    </>
  );
}
