import Image from "next/image";

/**
 * Foto dentro de un visor: esquinas en escuadra, líneas de barrido, etiqueta de objetivo arriba y
 * una barra de datos abajo, como la pantalla de una misión. Las fotos del rediseño son pequeñas
 * (unos 360-470 px de ancho), así que se muestran a un tamaño cercano al original y en vertical.
 */
export function MarcoTactico({
  src,
  alt,
  etiqueta,
  pie,
  dato,
  sizes = "(max-width: 1024px) 80vw, 420px",
  preload = false,
  className = "",
}: {
  src: string;
  alt: string;
  /** Texto de la esquina superior, p. ej. «OBJ-01 · ESCALA DE CABOS Y GUARDIAS». */
  etiqueta: string;
  /** Barra inferior: qué es la misión. */
  pie: string;
  /** Dato destacado de la barra inferior (a la derecha). */
  dato?: string;
  sizes?: string;
  preload?: boolean;
  className?: string;
}) {
  return (
    <figure className={`hud-marco mx-auto w-full max-w-[26rem] ${className}`}>
      <div className="hud-foto relative aspect-[2/3] w-full border border-border-strong">
        <Image src={src} alt={alt} fill sizes={sizes} priority={preload} className="object-cover" />

        {/* etiqueta superior */}
        <div className="absolute inset-x-0 top-0 z-[1] flex items-center justify-between gap-3 bg-gradient-to-b from-black/70 to-transparent px-4 py-3 font-[family-name:var(--font-hud)] text-[0.68rem] font-bold uppercase tracking-[0.16em] text-white/90">
          <span>{etiqueta}</span>
          <span className="flex items-center gap-1.5 text-primary">
            <span aria-hidden className="hud-rec size-2 rounded-full bg-[oklch(0.65_0.24_27)]" />
            En directo
          </span>
        </div>

        {/* retícula central */}
        <svg aria-hidden viewBox="0 0 100 100" className="absolute left-1/2 top-[42%] z-[1] size-16 -translate-x-1/2 -translate-y-1/2 text-primary/70">
          <circle cx="50" cy="50" r="22" fill="none" stroke="currentColor" strokeWidth="1.5" />
          <path d="M50 14v18M50 68v18M14 50h18M68 50h18" stroke="currentColor" strokeWidth="1.5" />
          <circle cx="50" cy="50" r="1.8" fill="currentColor" />
        </svg>

        {/* barra inferior */}
        <figcaption className="absolute inset-x-0 bottom-0 z-[1] px-4 pb-4">
          <div aria-hidden className="hud-rayas mb-3 h-1.5 w-24" />
          <div className="flex items-end justify-between gap-4">
            <span className="font-[family-name:var(--font-display)] text-2xl font-extrabold uppercase leading-none text-white">{pie}</span>
            {dato && (
              <span className="shrink-0 font-[family-name:var(--font-hud)] text-[0.7rem] font-bold uppercase tracking-[0.14em] text-primary">
                {dato}
              </span>
            )}
          </div>
        </figcaption>
      </div>
    </figure>
  );
}
