import type { Metadata } from "next";
import Image from "next/image";
import { notFound } from "next/navigation";
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
import { absoluteUrl, links, rutas } from "@/lib/links";

/** Las anclas quedan bajo la cabecera y el submenú, que suman 7,5rem. */
const ANCLA = "scroll-mt-[7.75rem]";

export function generateStaticParams() {
  return cursos.map((c) => ({ slug: c.slug }));
}

export async function generateMetadata(props: PageProps<"/cursos/[slug]">): Promise<Metadata> {
  const { slug } = await props.params;
  const curso = cursoPorSlug(slug);
  if (!curso) return {};
  return metadataPagina({ titulo: `Curso online: ${curso.nombre}`, descripcion: curso.entradilla, ruta: rutas.curso(curso.slug), imagen: curso.imagen, imagenAlt: curso.imagenAlt });
}

export default async function PaginaCurso(props: PageProps<"/cursos/[slug]">) {
  const { slug } = await props.params;
  const curso = cursoPorSlug(slug);
  if (!curso) notFound();

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
              <p className="text-eyebrow uppercase text-primary">{curso.eyebrow}</p>
              <h1 className="text-display-xl mt-4">{curso.titular}</h1>
              <p className="text-body-lg mt-6 text-muted-foreground">{curso.entradilla}</p>

              <div className="mt-9 flex flex-wrap gap-3">
                <Button href={links.registro} tamano="lg">
                  Empezar ahora
                  <ArrowRight size={18} aria-hidden />
                </Button>
                <Button href={rutas.tienda} variante="secundario" tamano="lg">
                  Ver precio
                </Button>
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

            <div className="relative aspect-[16/11] overflow-hidden rounded-2xl border border-border shadow-[0_28px_60px_-24px_rgba(2,67,52,0.35)]">
              <Image
                src={curso.imagen}
                alt={curso.imagenAlt}
                fill
                priority
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
        <ol className="grid gap-4">
          {curso.pruebas.map((prueba, i) => (
            <Reveal key={prueba.nombre} retardo={i * 50}>
              <li className="flex gap-5 rounded-xl border border-border bg-surface p-6">
                <span
                  aria-hidden
                  className="inline-flex size-10 shrink-0 items-center justify-center rounded-full bg-primary text-body-sm font-bold text-primary-fg tabular"
                >
                  {i + 1}
                </span>
                <div className="min-w-0">
                  <h3 className="text-h3">{prueba.nombre}</h3>
                  <p className="mt-2 text-muted-foreground">{prueba.detalle}</p>
                </div>
              </li>
            </Reveal>
          ))}
        </ol>
      </Section>

      <Section
        id="temario"
        className={ANCLA}
        eyebrow="Temario"
        titulo="Lo que vas a estudiar"
        entradilla="Dividido en bloques y, dentro de cada uno, en lecciones con sus tests. El progreso se guarda lección a lección."
        fondo="suave"
      >
        <ul className="grid gap-5 md:grid-cols-3">
          {curso.temario.map((bloque, i) => (
            <Reveal key={bloque.bloque} retardo={i * 70}>
              <li className="h-full rounded-xl border border-border bg-surface p-7">
                <span className="text-display-l leading-none text-primary/25 tabular">
                  {String(i + 1).padStart(2, "0")}
                </span>
                <h3 className="text-h3 mt-4">{bloque.bloque}</h3>
                <p className="mt-2 text-muted-foreground">{bloque.detalle}</p>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

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

      <CtaFinal />
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: curso.nombre, ruta: rutas.curso(curso.slug) }])} />

      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "Course",
          name: curso.nombre,
          description: curso.entradilla,
          url: absoluteUrl(rutas.curso(curso.slug)),
          provider: {
            "@type": "EducationalOrganization",
            name: site.nombreLargo,
            url: absoluteUrl("/"),
          },
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
