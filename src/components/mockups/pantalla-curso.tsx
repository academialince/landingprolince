import { Logo } from "@/components/ui/logo";
import { BookOpen, CircleCheck, House, ListChecks, Megaphone, Play, Timer } from "lucide-react";

const menu = [
  { icono: House, etiqueta: "Inicio" },
  { icono: BookOpen, etiqueta: "Mi curso", activo: true },
  { icono: ListChecks, etiqueta: "Tests" },
  { icono: Timer, etiqueta: "Simulacros" },
  { icono: Megaphone, etiqueta: "Novedades" },
];

const modulos = [
  { titulo: "Derecho Constitucional", lecciones: 12, hechas: 12 },
  { titulo: "Unión Europea", lecciones: 8, hechas: 6 },
  { titulo: "Derechos Humanos", lecciones: 9, hechas: 2 },
  { titulo: "Igualdad efectiva", lecciones: 7, hechas: 0 },
];

/** Representación del área de curso del alumno. */
export function PantallaCurso() {
  return (
    <div className="flex h-full bg-surface-subtle text-[0.62rem]">
      <aside className="hidden w-[24%] shrink-0 flex-col gap-0.5 border-r border-border bg-surface p-3 sm:flex">
        <div className="mb-3 flex items-center gap-1.5 px-1">
          <Logo alto={14} decorativo />
          <span className="font-extrabold tracking-tight">ProLince</span>
        </div>
        {menu.map((m) => (
          <div
            key={m.etiqueta}
            className={`flex items-center gap-2 rounded-md px-2 py-1.5 font-semibold ${
              m.activo ? "bg-primary-soft text-primary-soft-fg" : "text-muted-foreground"
            }`}
          >
            <m.icono size={12} />
            {m.etiqueta}
          </div>
        ))}
      </aside>

      <div className="min-w-0 flex-1 overflow-hidden p-4">
        <p className="text-[0.55rem] font-bold uppercase tracking-wider text-primary">
          Curso en marcha
        </p>
        <h3 className="mt-1 text-[0.95rem] font-extrabold tracking-tight">
          Acceso a la Guardia Civil
        </h3>

        <div className="mt-3 rounded-lg border border-border bg-surface p-3">
          <div className="flex items-center justify-between font-semibold">
            <span>Tu progreso</span>
            <span className="tabular text-primary">54 %</span>
          </div>
          <div className="mt-2 h-1.5 overflow-hidden rounded-full bg-muted">
            <div className="h-full w-[54%] rounded-full bg-primary" />
          </div>
          <div className="mt-2.5 flex items-center gap-1.5 text-muted-foreground">
            <Play size={10} className="text-primary" />
            Sigues en «Título preliminar»
          </div>
        </div>

        <div className="mt-3 grid gap-1.5">
          {modulos.map((m) => {
            const completo = m.hechas === m.lecciones;
            return (
              <div
                key={m.titulo}
                className="flex items-center gap-2 rounded-md border border-border bg-surface px-2.5 py-2"
              >
                <CircleCheck
                  size={12}
                  className={completo ? "text-success" : "text-border-strong"}
                />
                <span className="min-w-0 flex-1 truncate font-semibold">{m.titulo}</span>
                <span className="tabular text-muted-foreground">
                  {m.hechas}/{m.lecciones}
                </span>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}
