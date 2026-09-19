import Image from "next/image";
import type { ReactNode } from "react";
import { Lock } from "lucide-react";

/**
 * Marcos de dispositivo. Aceptan `imagen` para cuando haya capturas reales del producto; hasta
 * entonces reciben una representación de la interfaz construida con HTML, que escala sin
 * pixelarse y se mantiene sola si cambia el diseño del producto.
 *
 * Son ilustraciones: van marcadas como decorativas y el texto que las acompaña es el que carga
 * con el significado.
 */

type ContenidoProps = {
  children?: ReactNode;
  imagen?: { src: string; alt: string };
};

function Contenido({ children, imagen }: ContenidoProps) {
  if (imagen) {
    return (
      <Image
        src={imagen.src}
        alt={imagen.alt}
        fill
        sizes="(max-width: 768px) 100vw, 640px"
        className="object-cover object-top"
      />
    );
  }
  return <>{children}</>;
}

export function Telefono({ children, imagen, className }: ContenidoProps & { className?: string }) {
  return (
    <div
      aria-hidden={!imagen}
      className={`relative w-full max-w-[19rem] aspect-[9/17.4] rounded-[2.75rem] bg-[#0B1714] p-[0.7rem] shadow-[0_32px_80px_-20px_rgba(2,67,52,0.45),0_0_0_1px_rgba(255,255,255,0.06)_inset] ${className ?? ""}`}
    >
      <div className="relative h-full w-full overflow-hidden rounded-[2.1rem] bg-background text-foreground">
        <div
          aria-hidden
          className="absolute left-1/2 top-2 z-20 h-6 w-24 -translate-x-1/2 rounded-full bg-[#0B1714]"
        />
        <Contenido imagen={imagen}>{children}</Contenido>
      </div>
    </div>
  );
}

export function Navegador({
  children,
  imagen,
  className,
  etiqueta = "Academia ProLince",
}: ContenidoProps & { className?: string; etiqueta?: string }) {
  return (
    <div
      aria-hidden={!imagen}
      className={`relative w-full overflow-hidden rounded-xl border border-border bg-surface text-foreground shadow-[0_32px_80px_-24px_rgba(2,67,52,0.35)] ${className ?? ""}`}
    >
      <div className="flex items-center gap-3 border-b border-border bg-surface-subtle px-4 py-3">
        <div className="flex gap-1.5">
          <span className="size-2.5 rounded-full bg-border-strong" />
          <span className="size-2.5 rounded-full bg-border-strong" />
          <span className="size-2.5 rounded-full bg-border-strong" />
        </div>
        <div className="mx-auto flex items-center gap-2 rounded-full bg-background px-3 py-1 text-[0.65rem] font-semibold text-muted-foreground">
          <Lock size={10} aria-hidden />
          {etiqueta}
        </div>
      </div>
      <div className="relative aspect-[16/10] text-foreground">
        <Contenido imagen={imagen}>{children}</Contenido>
      </div>
    </div>
  );
}
