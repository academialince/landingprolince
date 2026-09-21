import Image from "next/image";
import Link from "next/link";
import { ArrowRight } from "lucide-react";
import { fechaLarga, type ResumenEntrada } from "@/lib/blog";
import { tipoPorClave } from "@/content/blog-tipos";
import { rutas } from "@/lib/links";

export function TarjetaEntrada({ entrada: e }: { entrada: ResumenEntrada }) {
  return (
    <Link href={`${rutas.blog}/${e.slug}`} className="group flex h-full flex-col overflow-hidden rounded-2xl border border-border bg-surface transition-[border-color,box-shadow,transform] duration-200 hover:-translate-y-1 hover:border-primary/40 hover:shadow-[0_18px_40px_-16px_rgba(2,67,52,0.24)]">
      {e.portada_url && (
        <div className="relative aspect-video overflow-hidden">
          <Image src={e.portada_url} alt={e.portada_alt || e.titulo} fill
            sizes="(max-width: 767px) calc(100vw - 40px), (max-width: 1023px) 46vw, 380px"
            className="scale-[1.04] object-cover transition-transform duration-500 group-hover:scale-[1.08]" />
        </div>
      )}
      <div className="flex grow flex-col p-6">
        <div className="flex flex-wrap items-center gap-2 text-body-sm">
          <span className="rounded-full bg-primary-soft px-2.5 py-0.5 font-semibold text-primary-soft-fg">{tipoPorClave(e.tipo).etiqueta}</span>
          {e.publicado_en && <time dateTime={e.publicado_en} className="text-muted-foreground">{fechaLarga(e.publicado_en)}</time>}
        </div>
        <h2 className="text-h3 mt-3">{e.titulo}</h2>
        {e.entradilla && <p className="mt-2 grow text-muted-foreground">{e.entradilla}</p>}
        <span className="mt-5 inline-flex min-h-11 w-fit items-center gap-2 rounded-md border border-primary px-4 font-bold text-primary transition-colors duration-200 group-hover:bg-primary group-hover:text-primary-fg group-focus-visible:bg-primary group-focus-visible:text-primary-fg">
          Leer artículo <span className="sr-only">: {e.titulo}</span>
          <ArrowRight size={16} aria-hidden className="transition-transform group-hover:translate-x-1" />
        </span>
      </div>
    </Link>
  );
}
