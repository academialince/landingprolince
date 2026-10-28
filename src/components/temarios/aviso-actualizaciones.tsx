import { RefreshCw } from "lucide-react";
import { ACTUALIZACIONES } from "@/content/temarios";

/** «Siempre al día»: encima de las tarjetas de temario, en la sección Temarios y en cada curso. */
export function AvisoActualizaciones({ className = "" }: { className?: string }) {
  return (
    <div className={`flex gap-4 rounded-2xl border border-primary/30 bg-primary-soft p-5 text-primary-soft-fg ${className}`}>
      <RefreshCw size={22} className="mt-0.5 shrink-0" aria-hidden />
      <div>
        <p className="font-semibold">{ACTUALIZACIONES.titulo}</p>
        <p className="mt-1 text-body-sm">{ACTUALIZACIONES.texto}</p>
      </div>
    </div>
  );
}
