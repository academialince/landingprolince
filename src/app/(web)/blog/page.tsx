import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { ArrowRight, PenLine } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { CtaFinal } from "@/components/sections/cta-final";
import { fechaLarga, listarPublicadas } from "@/lib/blog";
import { tipoPorClave } from "@/content/blog-tipos";
import { rutas } from "@/lib/links";

export const revalidate = 300;

export const metadata: Metadata = {
  title: "Blog",
  description:
    "Convocatorias, guías de estudio y preparación física para las oposiciones de acceso a la Guardia Civil.",
  alternates: { canonical: rutas.blog },
};

export default async function Blog() {
  const entradas = await listarPublicadas();

  return (
    <>
      <PageHero
        eyebrow="Blog"
        titulo="Convocatorias, temario y preparación"
        entradilla="Lo que publicamos cuando sale algo que te afecta, y las guías que nos piden una y otra vez en el tablón."
      />

      <section className="py-16 sm:py-24">
        <Container>
          {entradas.length === 0 ? (
            <div className="mx-auto max-w-[36rem] rounded-2xl border border-dashed border-border-strong p-12 text-center">
              <span className="mx-auto inline-flex size-12 items-center justify-center rounded-full bg-primary-soft text-primary-soft-fg">
                <PenLine size={22} aria-hidden />
              </span>
              <h2 className="text-h3 mt-5">Todavía no hay entradas publicadas</h2>
              <p className="mt-2 text-muted-foreground">
                Estamos preparando las primeras. Mientras tanto, los avisos de convocatoria llegan
                al tablón de tu curso en cuanto se publican.
              </p>
            </div>
          ) : (
            <ul className="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
              {entradas.map((e, i) => {
                const tipo = tipoPorClave(e.tipo);
                return (
                  <Reveal key={e.id} retardo={(i % 3) * 70}>
                    <li className="h-full">
                      <Link
                        href={`${rutas.blog}/${e.slug}`}
                        className="group flex h-full flex-col overflow-hidden rounded-2xl border border-border bg-surface transition-[border-color,box-shadow,transform] duration-200 ease-[var(--ease-product)] hover:-translate-y-0.5 hover:border-border-strong hover:shadow-[0_18px_40px_-16px_rgba(2,67,52,0.24)]"
                      >
                        {e.portada_url && (
                          <div className="relative aspect-[16/9] overflow-hidden">
                            <Image
                              src={e.portada_url}
                              alt={e.portada_alt ?? ""}
                              fill
                              sizes="(max-width: 1024px) 100vw, 380px"
                              className="object-cover transition-transform duration-500 ease-[var(--ease-product)] group-hover:scale-[1.03]"
                            />
                          </div>
                        )}
                        <div className="flex grow flex-col p-6">
                          <div className="flex flex-wrap items-center gap-2 text-body-sm">
                            <span className="rounded-full bg-primary-soft px-2.5 py-0.5 font-semibold text-primary-soft-fg">
                              {tipo.etiqueta}
                            </span>
                            {e.publicado_en && (
                              <time dateTime={e.publicado_en} className="text-muted-foreground">
                                {fechaLarga(e.publicado_en)}
                              </time>
                            )}
                          </div>
                          <h2 className="text-h3 mt-3">{e.titulo}</h2>
                          {e.entradilla && (
                            <p className="mt-2 grow text-muted-foreground">{e.entradilla}</p>
                          )}
                          <span className="mt-5 inline-flex items-center gap-2 font-bold text-primary">
                            Leer
                            <ArrowRight
                              size={16}
                              aria-hidden
                              className="transition-transform duration-200 ease-[var(--ease-product)] group-hover:translate-x-1"
                            />
                          </span>
                        </div>
                      </Link>
                    </li>
                  </Reveal>
                );
              })}
            </ul>
          )}
        </Container>
      </section>

      <CtaFinal />
    </>
  );
}
