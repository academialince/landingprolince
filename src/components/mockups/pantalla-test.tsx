import { ChevronLeft, Timer } from "lucide-react";

const opciones = [
  { texto: "El Congreso de los Diputados", estado: "normal" },
  { texto: "El Senado", estado: "elegida" },
  { texto: "El Consejo de Ministros", estado: "normal" },
  { texto: "El Tribunal Constitucional", estado: "normal" },
] as const;

/** Representación de la pantalla de test del alumno. */
export function PantallaTest() {
  return (
    <div className="flex h-full flex-col bg-background pt-11">
      <div className="flex items-center justify-between px-4 pb-3">
        <ChevronLeft size={17} className="text-muted-foreground" />
        <span className="text-[0.6rem] font-bold uppercase tracking-wider text-muted-foreground">
          Tema 4 · Constitución
        </span>
        <span className="flex items-center gap-1 rounded-full bg-primary-soft px-2 py-0.5 text-[0.6rem] font-bold text-primary-soft-fg tabular">
          <Timer size={10} />
          08:14
        </span>
      </div>

      <div className="px-4">
        <div className="h-1 overflow-hidden rounded-full bg-muted">
          <div className="h-full w-[35%] rounded-full bg-primary" />
        </div>
        <p className="mt-2 text-[0.6rem] font-semibold text-muted-foreground tabular">
          Pregunta 7 de 20
        </p>
      </div>

      <div className="px-4 pt-4">
        <p className="text-[0.82rem] font-bold leading-snug">
          ¿Qué órgano representa la cámara de representación territorial?
        </p>
      </div>

      <div className="grid gap-2 px-4 pt-4">
        {opciones.map((o, i) => (
          <div
            key={o.texto}
            className={`flex items-center gap-2.5 rounded-lg border px-3 py-2.5 ${
              o.estado === "elegida"
                ? "border-primary bg-primary-soft"
                : "border-border bg-surface"
            }`}
          >
            <span
              className={`flex size-5 shrink-0 items-center justify-center rounded-full text-[0.6rem] font-bold ${
                o.estado === "elegida"
                  ? "bg-primary text-primary-fg"
                  : "bg-muted text-muted-foreground"
              }`}
            >
              {String.fromCharCode(65 + i)}
            </span>
            <span className="text-[0.7rem] font-medium leading-tight">{o.texto}</span>
          </div>
        ))}
      </div>

      <div className="px-4 pt-3">
        <div className="flex items-center justify-between rounded-lg bg-surface-tinted px-3 py-2">
          <span className="text-[0.62rem] font-semibold text-muted-foreground">
            Marcar para revisar
          </span>
          <span className="h-3.5 w-6 rounded-full bg-border-strong" />
        </div>
      </div>

      <div className="mt-auto p-4">
        <div className="flex h-10 items-center justify-center rounded-lg bg-primary text-[0.72rem] font-bold text-primary-fg">
          Siguiente pregunta
        </div>
      </div>
    </div>
  );
}
