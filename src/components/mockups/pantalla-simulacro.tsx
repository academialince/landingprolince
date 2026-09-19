import { Trophy } from "lucide-react";

const bloques = [
  { nombre: "Conocimientos", acierto: 82 },
  { nombre: "Ortografía", acierto: 91 },
  { nombre: "Psicotécnico", acierto: 64 },
  { nombre: "Inglés", acierto: 73 },
];

const ranking = [
  { pos: 1, nombre: "M. Sánchez", nota: "8,9" },
  { pos: 2, nombre: "Tu intento", nota: "7,8", tuyo: true },
  { pos: 3, nombre: "J. Ortega", nota: "7,5" },
];

/** Representación del resultado de un simulacro con su ranking. */
export function PantallaSimulacro() {
  return (
    <div className="flex h-full flex-col gap-3 bg-surface-subtle p-4 text-[0.62rem]">
      <div className="flex items-start justify-between gap-3">
        <div>
          <p className="text-[0.55rem] font-bold uppercase tracking-wider text-primary">
            Simulacro entregado
          </p>
          <h3 className="mt-1 text-[0.9rem] font-extrabold tracking-tight">
            Simulacro general · Marzo
          </h3>
        </div>
        <div className="rounded-lg bg-primary px-3 py-2 text-center text-primary-fg">
          <div className="text-[1.15rem] font-extrabold leading-none tabular">7,8</div>
          <div className="mt-0.5 text-[0.5rem] font-semibold opacity-80">NOTA</div>
        </div>
      </div>

      <div className="grid gap-2 rounded-lg border border-border bg-surface p-3">
        {bloques.map((b) => (
          <div key={b.nombre} className="flex items-center gap-2">
            <span className="w-[5.5rem] shrink-0 truncate font-semibold">{b.nombre}</span>
            <div className="h-1.5 flex-1 overflow-hidden rounded-full bg-muted">
              <div
                className="h-full rounded-full bg-primary"
                style={{ width: `${b.acierto}%` }}
              />
            </div>
            <span className="w-7 shrink-0 text-right tabular text-muted-foreground">
              {b.acierto}%
            </span>
          </div>
        ))}
      </div>

      <div className="rounded-lg border border-border bg-surface p-3">
        <div className="mb-2 flex items-center gap-1.5 font-bold">
          <Trophy size={11} className="text-primary" />
          Ranking del simulacro
        </div>
        <div className="grid gap-1">
          {ranking.map((r) => (
            <div
              key={r.pos}
              className={`flex items-center gap-2 rounded-md px-2 py-1.5 ${
                r.tuyo ? "bg-primary-soft font-bold text-primary-soft-fg" : ""
              }`}
            >
              <span className="w-3 tabular text-muted-foreground">{r.pos}</span>
              <span className="min-w-0 flex-1 truncate">{r.nombre}</span>
              <span className="tabular">{r.nota}</span>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
