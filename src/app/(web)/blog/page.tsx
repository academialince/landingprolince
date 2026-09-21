import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { ArrowLeft, ArrowRight, PenLine } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { CtaFinal } from "@/components/sections/cta-final";
import { TarjetaEntrada } from "@/components/blog/tarjeta-entrada";
import { listarPaginaPublicada } from "@/lib/blog";
import { ENTRADAS_POR_PAGINA, leerFiltrosBlog, paginasVisibles, urlBlog } from "@/lib/blog-filtros";
import { tiposEntrada, tipoPorClave } from "@/content/blog-tipos";
import { absoluteUrl } from "@/lib/links";
import { JsonLd, metadataPagina } from "@/lib/seo";

export const revalidate = 300;

export async function generateMetadata(props: PageProps<"/blog">): Promise<Metadata> {
  const { tipo, pagina } = leerFiltrosBlog(await props.searchParams);
  const titulo = tipo ? `${tipoPorClave(tipo).etiqueta} para Guardia Civil` : "Blog de oposiciones a Guardia Civil";
  return metadataPagina({
    titulo: `${titulo}${pagina > 1 ? ` · Página ${pagina}` : ""}`,
    descripcion: "Convocatorias, guías de estudio, pruebas físicas y consejos para preparar las oposiciones a la Guardia Civil. Los artículos más recientes, primero.",
    ruta: urlBlog(tipo, pagina),
    // Filtros de navegación, no landings editoriales diferenciadas.
    noindex: Boolean(tipo),
  });
}

export default async function Blog(props: PageProps<"/blog">) {
  const params = await props.searchParams;
  const { tipo, pagina } = leerFiltrosBlog(params);
  if ((params.tipo !== undefined && params.tipo !== tipo) ||
      (params.pagina !== undefined && params.pagina !== (pagina > 1 ? String(pagina) : undefined))) {
    redirect(urlBlog(tipo, pagina));
  }
  const { entradas, total } = await listarPaginaPublicada(pagina, tipo);
  const totalPaginas = Math.max(1, Math.ceil(total / ENTRADAS_POR_PAGINA));
  if (pagina > totalPaginas) redirect(urlBlog(tipo, totalPaginas));
  const paginas = paginasVisibles(pagina, totalPaginas);

  return (
    <>
      <PageHero eyebrow="Blog" titulo="Convocatorias, temario y preparación"
        entradilla="Resuelve tus dudas y prepara tu siguiente paso hacia la Guardia Civil. Guías prácticas y novedades, siempre con lo más reciente primero." />
      <section id="articulos" className="py-12 sm:py-16">
        <Container>
          <nav aria-label="Filtrar artículos por categoría" className="mb-7 flex flex-wrap gap-2">
            {[{ clave: undefined, etiqueta: "Todos" }, ...tiposEntrada].map((filtro) => {
              const seleccionado = tipo === filtro.clave;
              return (
                <Link key={filtro.clave ?? "todos"} href={`${urlBlog(filtro.clave)}#articulos`}
                  aria-current={seleccionado ? "page" : undefined}
                  className={`inline-flex min-h-11 items-center rounded-full border px-4 text-body-sm font-bold transition-colors ${seleccionado ? "border-primary bg-primary text-primary-fg" : "border-primary/35 text-primary hover:border-primary hover:bg-primary-soft"}`}>
                  {filtro.etiqueta}
                </Link>
              );
            })}
          </nav>
          <div className="mb-8 flex flex-wrap items-center justify-between gap-3 text-body-sm text-muted-foreground">
            <p>{total === 0 ? "Sin artículos en esta categoría" : `${(pagina - 1) * ENTRADAS_POR_PAGINA + 1}–${Math.min(pagina * ENTRADAS_POR_PAGINA, total)} de ${total} artículos`}</p>
            <p>Más recientes primero</p>
          </div>
          {entradas.length === 0 ? (
            <div className="mx-auto max-w-[36rem] rounded-2xl border border-dashed border-border-strong p-10 text-center">
              <PenLine size={26} aria-hidden className="mx-auto text-primary" />
              <h2 className="text-h3 mt-5">{tipo ? "Pronto habrá más contenido aquí" : "Todavía no hay entradas publicadas"}</h2>
              <p className="mt-2 text-muted-foreground">{tipo ? "Mientras tanto, descubre las guías y novedades del resto del blog." : "Estamos preparando las primeras guías para acompañarte en tu preparación."}</p>
              {tipo && <Link href="/blog#articulos" className="mt-6 inline-flex min-h-11 items-center rounded-md border border-primary px-4 font-bold text-primary transition-colors hover:bg-primary hover:text-white">Ver todos los artículos</Link>}
            </div>
          ) : (
            <ul className="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
              {entradas.map((entrada, i) => (
                <li key={entrada.id}>
                  <Reveal className="h-full" retardo={(i % 3) * 60}><TarjetaEntrada entrada={entrada} /></Reveal>
                </li>
              ))}
            </ul>
          )}
          {totalPaginas > 1 && (
            <nav aria-label="Paginación del blog" className="mt-12 flex flex-wrap items-center justify-center gap-2">
              {pagina > 1 && <Link rel="prev" href={`${urlBlog(tipo, pagina - 1)}#articulos`} className="inline-flex min-h-11 items-center gap-2 rounded-md border border-primary px-3 text-body-sm font-bold text-primary hover:bg-primary-soft"><ArrowLeft size={16} aria-hidden /><span className="sr-only sm:not-sr-only">Anterior</span></Link>}
              {paginas.map((p, i) => (
                <span key={p} className="inline-flex items-center gap-2">
                  {i > 0 && p - paginas[i - 1] > 1 && <span aria-hidden className="px-1">…</span>}
                  <Link href={`${urlBlog(tipo, p)}#articulos`} aria-label={`Página ${p}`} aria-current={p === pagina ? "page" : undefined}
                    className={`inline-flex size-11 items-center justify-center rounded-md border font-bold transition-colors ${p === pagina ? "border-primary bg-primary text-white" : "border-primary/30 text-primary hover:border-primary hover:bg-primary-soft"}`}>{p}</Link>
                </span>
              ))}
              {pagina < totalPaginas && <Link rel="next" href={`${urlBlog(tipo, pagina + 1)}#articulos`} className="inline-flex min-h-11 items-center gap-2 rounded-md border border-primary px-3 text-body-sm font-bold text-primary hover:bg-primary-soft"><span className="sr-only sm:not-sr-only">Siguiente</span><ArrowRight size={16} aria-hidden /></Link>}
            </nav>
          )}
        </Container>
      </section>
      <CtaFinal />
      <JsonLd data={{ "@context": "https://schema.org", "@type": "CollectionPage", name: "Blog de oposiciones a Guardia Civil", url: absoluteUrl(urlBlog(tipo, pagina)), inLanguage: "es-ES",
        mainEntity: { "@type": "ItemList", itemListElement: entradas.map((e, i) => ({ "@type": "ListItem", position: (pagina - 1) * ENTRADAS_POR_PAGINA + i + 1, name: e.titulo, url: absoluteUrl(`/blog/${e.slug}`) })) } }} />
    </>
  );
}
