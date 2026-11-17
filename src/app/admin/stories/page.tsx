import type { Metadata } from "next";
import { Download, ExternalLink } from "lucide-react";
import { fechaLarga, listarPublicadas } from "@/lib/blog";
import { absoluteUrl } from "@/lib/links";
import { CopiarTexto } from "@/components/admin/copiar-texto";

export const metadata: Metadata = { title: "Stories del blog" };

/**
 * Una storie por entrada publicada. La imagen no se guarda: la genera /blog/<slug>/story con los
 * datos de la entrada, así que aparece sola el día que se publica (las programadas no salen
 * hasta su hora, igual que en el blog). Solo se listan las de los últimos 7 días.
 */
const DIAS = 7;

async function entradasRecientes() {
  const desde = Date.now() - DIAS * 24 * 60 * 60 * 1000;
  const entradas = await listarPublicadas({ limite: 30 });
  return {
    entradas: entradas.filter((e) => e.publicado_en && new Date(e.publicado_en).getTime() >= desde),
    hoy: new Date().toDateString(),
  };
}

export default async function PanelStories() {
  const { entradas, hoy } = await entradasRecientes();

  return (
    <>
      <div>
        <h1 className="text-h2">Stories del blog</h1>
        <p className="mt-1 max-w-2xl text-muted-foreground">
          Las stories de los artículos publicados en los últimos 7 días. Descarga la que quieras, súbela a
          Instagram y pon el sticker de enlace, con el enlace del artículo, en el hueco marcado.
        </p>
      </div>

      {entradas.length === 0 && <p className="mt-8 text-muted-foreground">No se ha publicado ningún artículo en los últimos 7 días.</p>}

      <ul className="mt-8 grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
        {entradas.map((e) => {
          const imagen = `/blog/${e.slug}/story`;
          const esHoy = e.publicado_en && new Date(e.publicado_en).toDateString() === hoy;
          return (
            <li key={e.id} className="flex flex-col rounded-xl border border-border bg-surface p-4">
              <div className="flex items-center justify-between gap-2 text-body-sm">
                <span className="text-muted-foreground">{fechaLarga(e.publicado_en)}</span>
                {esHoy && (
                  <span className="rounded-full bg-primary-soft px-2.5 py-0.5 font-semibold text-primary-soft-fg">Hoy</span>
                )}
              </div>
              <a href={imagen} target="_blank" rel="noreferrer" className="mt-3 block overflow-hidden rounded-lg border border-border">
                {/* eslint-disable-next-line @next/next/no-img-element -- la imagen ya la genera la ruta a su tamaño */}
                <img src={imagen} alt={`Storie de «${e.titulo}»`} width={1080} height={1920} loading="lazy" className="aspect-[9/16] w-full bg-muted object-cover" />
              </a>
              <p className="mt-3 line-clamp-2 font-semibold">{e.titulo}</p>
              <div className="mt-auto flex flex-wrap gap-2 pt-4">
                <a
                  href={imagen}
                  download={`story-${e.slug}.png`}
                  className="inline-flex min-h-10 items-center gap-2 rounded-md bg-primary px-3.5 text-body-sm font-bold text-primary-fg hover:bg-primary-hover"
                >
                  <Download size={16} aria-hidden /> Descargar
                </a>
                <CopiarTexto texto={absoluteUrl(`/blog/${e.slug}`)} etiqueta="Copiar enlace" />
                <a
                  href={`/blog/${e.slug}`}
                  target="_blank"
                  rel="noreferrer"
                  className="inline-flex min-h-10 items-center gap-1.5 px-2 text-body-sm font-semibold text-muted-foreground hover:text-foreground"
                >
                  Ver artículo <ExternalLink size={14} aria-hidden />
                </a>
              </div>
            </li>
          );
        })}
      </ul>
    </>
  );
}
