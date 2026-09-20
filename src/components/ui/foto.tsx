import { existsSync } from "node:fs";
import { join } from "node:path";
import Image from "next/image";

/**
 * Imagen con respaldo. Comprueba en build si el fichero existe bajo `public/`; si no, pinta las
 * iniciales sobre el verde suave en lugar de dejar un hueco roto. Así se puede maquetar antes
 * de tener las fotos y no hay que tocar nada cuando lleguen: basta con dejarlas en su ruta.
 */
export function Foto({
  src,
  alt,
  iniciales,
  className,
  sizes = "(max-width: 768px) 100vw, 320px",
  priority = false,
}: {
  src: string;
  alt: string;
  iniciales: string;
  className?: string;
  sizes?: string;
  priority?: boolean;
}) {
  const existe = existsSync(join(process.cwd(), "public", src.replace(/^\//, "")));

  if (!existe) {
    return (
      <div
        className={`flex items-center justify-center bg-primary-soft text-primary-soft-fg ${className ?? ""}`}
        role="img"
        aria-label={alt}
      >
        <span className="text-display-l font-extrabold tracking-tight opacity-60">{iniciales}</span>
      </div>
    );
  }

  return (
    <Image src={src} alt={alt} fill sizes={sizes} priority={priority} className={`object-cover ${className ?? ""}`} />
  );
}
