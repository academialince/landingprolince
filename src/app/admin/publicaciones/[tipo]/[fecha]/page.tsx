import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ChevronLeft, Download } from "lucide-react";
import { tipoPublicacion, fechaCarpeta } from "@/content/publicaciones";
import { publicacionPorFecha, urlsFirmadas } from "@/lib/publicaciones";
import { CopiarTexto } from "@/components/admin/copiar-texto";

export const metadata: Metadata = { title: "Publicación" };

function Descargar({ href, nombre, children }: { href: string; nombre?: string; children: React.ReactNode }) {
  return (
    <a
      href={href}
      download={nombre}
      className="inline-flex min-h-10 items-center gap-2 rounded-md bg-primary px-3.5 text-body-sm font-bold text-primary-fg transition-colors hover:bg-primary-hover"
    >
      <Download size={16} aria-hidden />
      {children}
    </a>
  );
}

export default async function CarpetaFecha(props: PageProps<"/admin/publicaciones/[tipo]/[fecha]">) {
  const { tipo, fecha } = await props.params;
  const t = tipoPublicacion(tipo);
  if (!t || !/^\d{4}-\d{2}-\d{2}$/.test(fecha)) notFound();
  const p = await publicacionPorFecha(t.clave, fecha);
  if (!p) notFound();
  const [video, portada] = await Promise.all([urlsFirmadas(p.video_path), urlsFirmadas(p.portada_path)]);
  const nombreTexto = `${t.clave}-${fecha}.txt`;

  return (
    <>
      <Link
        href={`/admin/publicaciones/${t.clave}`}
        className="inline-flex items-center gap-1 text-body-sm font-semibold text-muted-foreground hover:text-foreground"
      >
        <ChevronLeft size={16} aria-hidden />
        {t.etiqueta}
      </Link>
      <h1 className="text-h2 mt-3 tabular">{fechaCarpeta(fecha)}</h1>
      <p className="mt-1 text-muted-foreground">{p.titulo}</p>

      <div className="mt-8 grid items-start gap-8 lg:grid-cols-[22rem_1fr]">
        <section aria-labelledby="titulo-video" className="rounded-xl border border-border bg-surface p-5">
          <h2 id="titulo-video" className="font-extrabold">Vídeo</h2>
          {video ? (
            <>
              <video
                src={video.ver}
                poster={portada?.ver}
                controls
                playsInline
                preload="metadata"
                className="mt-4 aspect-[9/16] w-full rounded-lg bg-muted"
              />
              <div className="mt-4 flex flex-wrap gap-2">
                <Descargar href={video.descargar}>Descargar MP4</Descargar>
                {portada && <Descargar href={portada.descargar}>Portada</Descargar>}
              </div>
            </>
          ) : (
            <p className="mt-3 text-body-sm text-muted-foreground">No hay vídeo en esta carpeta.</p>
          )}
        </section>

        <section aria-labelledby="titulo-texto" className="rounded-xl border border-border bg-surface p-5">
          <div className="flex flex-wrap items-center justify-between gap-3">
            <h2 id="titulo-texto" className="font-extrabold">Descripción</h2>
            <div className="flex flex-wrap gap-2">
              <CopiarTexto texto={p.descripcion} />
              <Descargar
                href={`data:text/plain;charset=utf-8,${encodeURIComponent(p.descripcion)}`}
                nombre={nombreTexto}
              >
                {nombreTexto}
              </Descargar>
            </div>
          </div>
          <pre className="mt-4 whitespace-pre-wrap break-words rounded-lg bg-surface-subtle p-4 font-sans text-body-sm leading-relaxed">
            {p.descripcion}
          </pre>
        </section>
      </div>
    </>
  );
}
