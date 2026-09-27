import { Clock } from "lucide-react";

/** Etiqueta de los cursos antes del lanzamiento (ver `cursosAbiertos` en `lib/links.ts`). */
export function Proximamente({ className = "" }: { className?: string }) {
  return (
    <span
      className={`inline-flex items-center gap-1.5 rounded-full bg-primary px-3 py-1 text-eyebrow uppercase text-primary-fg ${className}`}
    >
      <Clock size={13} aria-hidden />
      Próximamente
    </span>
  );
}
