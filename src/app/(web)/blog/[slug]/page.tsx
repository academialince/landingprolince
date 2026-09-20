import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ArrowLeft, Clock } from "lucide-react";
import { Container } from "@/components/layout/container";
import { CtaFinal } from "@/components/sections/cta-final";
import { entradaPorSlug, fechaLarga } from "@/lib/blog";
import { markdownAHtml, minutosLectura } from "@/lib/markdown";
import { tipoPorClave } from "@/content/blog-tipos";
import { site } from "@/content/site";
import { JsonLd } from "@/lib/seo";
import { absoluteUrl, rutas } from "@/lib/links";

export const revalidate = 300;

export async function generateMetadata(props: PageProps<"/blog/[slug]">): Promise<Metadata> {
  const { slug } = await props.params;
  const entrada = await entradaPorSlug(slug);
  if (!entrada) return {};

  const titulo = entrada.seo?.title || entrada.titulo;
  const descripcion = entrada.seo?.description || entrada.entradilla || site.descripcion;

  return {
    title: titulo,
    description: descripcion,
    alternates: { canonical: entrada.seo?.canonical || `${rutas.blog}/${entrada.slug}` },
    robots: entrada.seo?.noindex ? { index: false, follow: true } : undefined,
    openGraph: {
      type: "article",
      title: titulo,
      description: descripcion,
      publishedTime: entrada.publicado_en ?? undefined,
      modifiedTime: entrada.actualizado_en,
      images: entrada.portada_url ? [entrada.portada_url] : undefined,
    },
  };
}

export default async function EntradaBlog(props: PageProps<"/blog/[slug]">) {
  const { slug } = await props.params;
  const entrada = await entradaPorSlug(slug);
  if (!entrada) notFound();

  const html = await markdownAHtml(entrada.cuerpo);
  const tipo = tipoPorClave(entrada.tipo);
  const minutos = minutosLectura(entrada.cuerpo);
  const url = absoluteUrl(`${rutas.blog}/${entrada.slug}`);

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
          </Container>
        </header>

        {entrada.portada_url && (
          <Container ancho="estrecho">
            <div className="relative mt-10 aspect-[16/9] overflow-hidden rounded-2xl border border-border">
              <Image
                src={entrada.portada_url}
                alt={entrada.portada_alt ?? ""}
                fill
                priority
                sizes="(max-width: 768px) 100vw, 736px"
                className="object-cover"
              />
            </div>
          </Container>
        )}

        <Container ancho="estrecho">
          <div className="prosa py-12 sm:py-16" dangerouslySetInnerHTML={{ __html: html }} />

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

      <CtaFinal />

      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": tipo.schema,
          headline: entrada.titulo,
          description: entrada.entradilla ?? undefined,
          datePublished: entrada.publicado_en ?? undefined,
          dateModified: entrada.actualizado_en,
          image: entrada.portada_url ?? undefined,
          mainEntityOfPage: url,
          publisher: {
            "@type": "EducationalOrganization",
            name: site.nombreLargo,
            url: absoluteUrl("/"),
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
