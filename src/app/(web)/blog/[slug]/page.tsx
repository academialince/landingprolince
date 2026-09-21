import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ArrowLeft, Clock } from "lucide-react";
import { Container } from "@/components/layout/container";
import { CtaFinal } from "@/components/sections/cta-final";
import { entradaPorSlug, entradasRelacionadas, fechaLarga } from "@/lib/blog";
import { prepararArticulo, minutosLectura } from "@/lib/markdown";
import { tipoPorClave } from "@/content/blog-tipos";
import { site } from "@/content/site";
import { JsonLd, metadataPagina } from "@/lib/seo";
import { TarjetaEntrada } from "@/components/blog/tarjeta-entrada";
import { Button } from "@/components/ui/button";
import { cursoPorSlug } from "@/content/cursos";
import { absoluteUrl, rutas } from "@/lib/links";

export const revalidate = 300;

export async function generateMetadata(props: PageProps<"/blog/[slug]">): Promise<Metadata> {
  const { slug } = await props.params;
  const entrada = await entradaPorSlug(slug);
  if (!entrada) return {};

  const titulo = entrada.seo?.title || entrada.titulo;
  const descripcion = entrada.seo?.description || entrada.entradilla || site.descripcion;

  const metadata = metadataPagina({ titulo, descripcion,
    ruta: entrada.seo?.canonical || `${rutas.blog}/${entrada.slug}`,
    imagen: entrada.portada_url || undefined, imagenAlt: entrada.portada_alt || entrada.titulo,
    noindex: entrada.seo?.noindex,
  });
  return {
    ...metadata,
    authors: [{ name: site.nombreLargo, url: absoluteUrl(rutas.nosotros) }],
    openGraph: {
      ...metadata.openGraph,
      type: "article",
      publishedTime: entrada.publicado_en ?? undefined,
      modifiedTime: entrada.actualizado_en,
      authors: [absoluteUrl(rutas.nosotros)],
      section: tipoPorClave(entrada.tipo).etiqueta,
    },
  };
}

export default async function EntradaBlog(props: PageProps<"/blog/[slug]">) {
  const { slug } = await props.params;
  const entrada = await entradaPorSlug(slug);
  if (!entrada) notFound();

  const [{ html, indice }, relacionadas] = await Promise.all([
    prepararArticulo(entrada.cuerpo), entradasRelacionadas(entrada.slug, entrada.curso),
  ]);
  const tipo = tipoPorClave(entrada.tipo);
  const minutos = minutosLectura(entrada.cuerpo);
  const url = absoluteUrl(`${rutas.blog}/${entrada.slug}`);
  const curso = entrada.curso ? cursoPorSlug(entrada.curso) : undefined;

  return (
    <>
      <article>
        <header className="border-b border-border bg-surface-subtle py-14 sm:py-20">
          <Container ancho="estrecho">
            <Link
              href={rutas.blog}
              className="inline-flex items-center gap-2 text-body-sm font-semibold text-muted-foreground hover:text-foreground"
            >
              <ArrowLeft size={16} aria-hidden />
              Volver al blog
            </Link>

            <div className="mt-6 flex flex-wrap items-center gap-2 text-body-sm">
              <span className="rounded-full bg-primary-soft px-2.5 py-0.5 font-semibold text-primary-soft-fg">
                {tipo.etiqueta}
              </span>
              {entrada.publicado_en && (
                <time dateTime={entrada.publicado_en} className="text-muted-foreground">
                  {fechaLarga(entrada.publicado_en)}
                </time>
              )}
              <span className="inline-flex items-center gap-1.5 text-muted-foreground">
                <Clock size={14} aria-hidden />
                {minutos} min de lectura
              </span>
            </div>

            <h1 className="text-display-l mt-4">{entrada.titulo}</h1>
            {entrada.entradilla && (
              <p className="text-body-lg mt-5 text-muted-foreground">{entrada.entradilla}</p>
            )}
            <p className="mt-5 text-body-sm text-muted-foreground">
              Por <Link href={rutas.nosotros} rel="author" className="font-semibold text-primary hover:underline">{site.nombreLargo}</Link>
              {entrada.actualizado_en && <> · Actualizado el <time dateTime={entrada.actualizado_en}>{fechaLarga(entrada.actualizado_en)}</time></>}
            </p>
          </Container>
        </header>

        {entrada.portada_url && (
          <Container ancho="estrecho">
            <div className="relative mt-10 aspect-[16/9] overflow-hidden rounded-2xl bg-transparent">
              <Image
                src={entrada.portada_url}
                alt={entrada.portada_alt || entrada.titulo}
                fill
                priority
                sizes="(max-width: 768px) 100vw, 736px"
                className="scale-[1.04] object-cover object-center"
              />
            </div>
          </Container>
        )}

        <Container ancho="estrecho">
          {indice.length > 1 && (
            <nav aria-label="En este artículo" className="mt-10 rounded-xl border border-primary/15 bg-primary-soft/40 p-6">
              <h2 className="font-bold text-primary">En este artículo</h2>
              <ol className="mt-4 grid list-decimal gap-2 pl-5 text-body-sm">
                {indice.map((seccion) => <li key={seccion.id}><a href={`#${seccion.id}`} className="text-primary underline-offset-4 hover:underline">{seccion.texto}</a></li>)}
              </ol>
            </nav>
          )}
          <div className="prosa py-12 sm:py-16" dangerouslySetInnerHTML={{ __html: html }} />

          {curso && (
            <aside className="mb-10 rounded-2xl border border-primary/20 bg-primary-soft/50 p-7">
              <p className="text-eyebrow uppercase text-primary">Tu siguiente paso</p>
              <h2 className="text-h3 mt-3">Lleva esta preparación a la práctica</h2>
              <p className="mt-3 text-muted-foreground">Descubre el curso de {curso.nombre}: temario, tests y simulacros para avanzar con un método.</p>
              <Button href={rutas.curso(curso.slug)} variante="secundario" className="mt-5">Ver el curso</Button>
            </aside>
          )}

          {entrada.etiquetas.length > 0 && (
            <ul className="flex flex-wrap gap-2 pb-16">
              {entrada.etiquetas.map((t) => (
                <li
                  key={t}
                  className="rounded-full border border-border px-3 py-1 text-body-sm text-muted-foreground"
                >
                  {t}
                </li>
              ))}
            </ul>
          )}
        </Container>
      </article>

      {relacionadas.length > 0 && (
        <section className="bg-surface-subtle py-14">
          <Container>
            <h2 className="text-h2 mb-8">Sigue preparando tu oposición</h2>
            <ul className="grid gap-6 md:grid-cols-3">{relacionadas.map((relacionada) => <li key={relacionada.id}><TarjetaEntrada entrada={relacionada} /></li>)}</ul>
          </Container>
        </section>
      )}

      <CtaFinal />

      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": tipo.schema === "NewsArticle" ? "NewsArticle" : "BlogPosting",
          headline: entrada.titulo,
          description: entrada.entradilla ?? undefined,
          datePublished: entrada.publicado_en ?? undefined,
          dateModified: entrada.actualizado_en,
          image: entrada.portada_url ? absoluteUrl(entrada.portada_url) : undefined,
          inLanguage: "es-ES",
          author: { "@type": "Organization", name: site.nombreLargo, url: absoluteUrl(rutas.nosotros) },
          mainEntityOfPage: url,
          publisher: {
            "@type": "EducationalOrganization",
            "@id": absoluteUrl("/#organizacion"),
            name: site.nombreLargo,
            url: absoluteUrl("/"),
            logo: { "@type": "ImageObject", url: absoluteUrl("/brand/prolince-logo.svg") },
          },
        }}
      />
      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "BreadcrumbList",
          itemListElement: [
            { "@type": "ListItem", position: 1, name: "Inicio", item: absoluteUrl("/") },
            { "@type": "ListItem", position: 2, name: "Blog", item: absoluteUrl(rutas.blog) },
            { "@type": "ListItem", position: 3, name: entrada.titulo, item: url },
          ],
        }}
      />
    </>
  );
}
