"use client";

import { useId, useState } from "react";
import { CircleCheck, CircleX } from "lucide-react";

/**
 * Calculadora de la nota del examen de acceso a la Guardia Civil con la fórmula de la
 * convocatoria de 2026 (base 7.3): Puntuación = Y × (A − E / (N − 1)) / T, con N = 4.
 * Ortografía y gramática son apto o no apto: seis errores o más excluyen.
 */
type Prueba = { id: "conocimientos" | "ingles" | "psicotecnico"; nombre: string; T: number; Y: number; minimo: number };

const pruebas: Prueba[] = [
  { id: "conocimientos", nombre: "Conocimientos generales", T: 100, Y: 100, minimo: 50 },
  { id: "ingles", nombre: "Lengua inglesa", T: 20, Y: 20, minimo: 8 },
  { id: "psicotecnico", nombre: "Aptitudes intelectuales (psicotécnico)", T: 80, Y: 30, minimo: 12 },
];

const MAX_ERRORES_LENGUA = 5;
const MAX_CONCURSO = 45;

const nota = (p: Prueba, a: number, e: number) => Math.max(0, (p.Y * (a - e / 3)) / p.T);
const fmt = (n: number) => n.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });
const entero = (v: string, max: number) => Math.min(max, Math.max(0, Math.floor(Number(v) || 0)));

function Campo({ etiqueta, valor, max, onChange }: { etiqueta: string; valor: number; max: number; onChange: (n: number) => void }) {
  const id = useId();
  return (
    <label htmlFor={id} className="grid gap-1.5">
      <span className="text-body-sm font-semibold text-muted-foreground">{etiqueta}</span>
      <input
        id={id}
        type="number"
        inputMode="numeric"
        min={0}
        max={max}
        value={valor}
        onChange={(e) => onChange(entero(e.target.value, max))}
        className="h-12 w-full rounded-md border border-border-strong bg-surface px-3 text-h3 font-bold tabular text-foreground focus:border-primary focus:outline-none"
      />
    </label>
  );
}

function Estado({ ok, texto }: { ok: boolean; texto: string }) {
  return (
    <span className={`inline-flex items-center gap-1.5 text-body-sm font-bold ${ok ? "text-primary" : "text-[oklch(0.68_0.2_27)]"}`}>
      {ok ? <CircleCheck size={16} aria-hidden /> : <CircleX size={16} aria-hidden />}
      {texto}
    </span>
  );
}

export function CalculadoraNota() {
  const [valores, setValores] = useState({
    conocimientos: { a: 70, e: 15 },
    ingles: { a: 12, e: 4 },
    psicotecnico: { a: 45, e: 12 },
  });
  const [ortografia, setOrtografia] = useState(2);
  const [gramatica, setGramatica] = useState(1);
  const [concurso, setConcurso] = useState(0);

  const cambiar = (id: Prueba["id"], campo: "a" | "e", n: number, T: number) =>
    setValores((v) => {
      const otro = campo === "a" ? v[id].e : v[id].a;
      return { ...v, [id]: { ...v[id], [campo]: Math.min(n, T - otro) } };
    });

  const resultados = pruebas.map((p) => {
    const { a, e } = valores[p.id];
    const n = nota(p, a, e);
    return { ...p, a, e, blanco: p.T - a - e, n, apto: n >= p.minimo };
  });
  const lenguaApta = ortografia <= MAX_ERRORES_LENGUA && gramatica <= MAX_ERRORES_LENGUA;
  const oposicion = resultados.reduce((s, r) => s + r.n, 0);
  const todoApto = lenguaApta && resultados.every((r) => r.apto);

  return (
    <div className="grid gap-6 lg:grid-cols-[minmax(0,1fr)_22rem]">
      <div className="grid gap-4">
        {resultados.map((r) => (
          <fieldset key={r.id} className="rounded-xl border border-border bg-surface p-5">
            <legend className="sr-only">{r.nombre}</legend>
            <div className="flex flex-wrap items-baseline justify-between gap-2">
              <p className="font-bold">{r.nombre}</p>
              <p className="text-body-sm text-muted-foreground tabular">
                {r.T} preguntas · máx. {r.Y} · mínimo {r.minimo}
              </p>
            </div>
            <div className="mt-4 grid grid-cols-3 gap-3">
              <Campo etiqueta="Aciertos" valor={r.a} max={r.T} onChange={(n) => cambiar(r.id, "a", n, r.T)} />
              <Campo etiqueta="Errores" valor={r.e} max={r.T} onChange={(n) => cambiar(r.id, "e", n, r.T)} />
              <div className="grid gap-1.5">
                <span className="text-body-sm font-semibold text-muted-foreground">En blanco</span>
                <span className="flex h-12 items-center rounded-md bg-muted px-3 text-h3 font-bold tabular text-muted-foreground">{r.blanco}</span>
              </div>
            </div>
            <div className="mt-4 flex flex-wrap items-center justify-between gap-3 border-t border-border pt-4">
              <p className="tabular">
                <span className="text-h3 font-extrabold">{fmt(r.n)}</span>
                <span className="text-muted-foreground"> / {r.Y} puntos</span>
              </p>
              <Estado ok={r.apto} texto={r.apto ? "Supera el mínimo" : `No llega al mínimo de ${r.minimo}`} />
            </div>
          </fieldset>
        ))}

        <fieldset className="rounded-xl border border-border bg-surface p-5">
          <legend className="sr-only">Ortografía y gramática</legend>
          <div className="flex flex-wrap items-baseline justify-between gap-2">
            <p className="font-bold">Ortografía y gramática</p>
            <p className="text-body-sm text-muted-foreground">Apto o no apto · 6 errores o más excluyen</p>
          </div>
          <div className="mt-4 grid grid-cols-2 gap-3">
            <Campo etiqueta="Errores de ortografía" valor={ortografia} max={20} onChange={setOrtografia} />
            <Campo etiqueta="Errores de gramática" valor={gramatica} max={20} onChange={setGramatica} />
          </div>
          <div className="mt-4 border-t border-border pt-4">
            <Estado ok={lenguaApta} texto={lenguaApta ? "Apto en las dos" : "No apto: quedas excluido del proceso"} />
          </div>
        </fieldset>

        <fieldset className="rounded-xl border border-border bg-surface p-5">
          <legend className="sr-only">Fase de concurso</legend>
          <p className="font-bold">Fase de concurso (opcional)</p>
          <p className="mt-1 text-body-sm text-muted-foreground">Tus puntos por méritos, de 0 a {MAX_CONCURSO}.</p>
          <div className="mt-4 max-w-[12rem]">
            <Campo etiqueta="Puntos de méritos" valor={concurso} max={MAX_CONCURSO} onChange={setConcurso} />
          </div>
        </fieldset>
      </div>

      {/* resumen fijo */}
      <aside aria-live="polite" className="h-fit rounded-xl border-2 border-primary bg-surface p-6 lg:sticky lg:top-28">
        <p className="text-eyebrow uppercase text-primary">Tu resultado</p>
        <p className="mt-3 text-body-sm text-muted-foreground">Fase de oposición</p>
        <p className="tabular">
          <span className="text-display-l font-extrabold">{fmt(oposicion)}</span>
          <span className="text-muted-foreground"> / 150</span>
        </p>
        {concurso > 0 && (
          <>
            <p className="mt-4 text-body-sm text-muted-foreground">Con el concurso</p>
            <p className="tabular">
              <span className="text-h2 font-extrabold">{fmt(oposicion + concurso)}</span>
              <span className="text-muted-foreground"> / 195</span>
            </p>
          </>
        )}
        <ul className="mt-5 grid gap-2 border-t border-border pt-5 text-body-sm">
          {resultados.map((r) => (
            <li key={r.id} className="flex justify-between gap-3">
              <span className="text-muted-foreground">{r.nombre.split(" (")[0]}</span>
              <span className={`font-bold tabular ${r.apto ? "" : "text-[oklch(0.68_0.2_27)]"}`}>{fmt(r.n)}</span>
            </li>
          ))}
          <li className="flex justify-between gap-3">
            <span className="text-muted-foreground">Ortografía y gramática</span>
            <span className={`font-bold ${lenguaApta ? "" : "text-[oklch(0.68_0.2_27)]"}`}>{lenguaApta ? "Apto" : "No apto"}</span>
          </li>
        </ul>
        <div className="mt-5 border-t border-border pt-5">
          <Estado ok={todoApto} texto={todoApto ? "Superas todos los mínimos" : "Con estos datos quedarías fuera"} />
          <p className="mt-3 text-body-sm text-muted-foreground">
            Superar los mínimos no garantiza la plaza: el paso a las pruebas físicas y médicas depende de tu posición en la lista
            ordenada por esta nota.
          </p>
        </div>
      </aside>
    </div>
  );
}
