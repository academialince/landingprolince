"use client";

import { useState } from "react";
import { ArrowRight, Check, RotateCcw, X } from "lucide-react";
import { Button } from "@/components/ui/button";

export type PreguntaTest = {
  id: string;
  tema: number;
  temaTitulo: string;
  pregunta: string;
  opciones: string[];
  correcta: number;
  explicacion: string;
};

type Respuesta = number | "blanco";

const LETRAS = ["A", "B", "C", "D"];
const fmt = (n: number) => n.toLocaleString("es-ES", { maximumFractionDigits: 2 });

/** Baraja (Fisher-Yates); solo se llama al pulsar, nunca al renderizar, para no romper la hidratación. */
function barajar<T>(lista: T[]) {
  const a = [...lista];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

/**
 * Test gratis: preguntas al azar del banco de la plataforma, corrección al momento con la
 * explicación y nota final con la penalización del examen (cada error resta un tercio).
 */
export function TestGratis({ preguntas, registro, banco }: { preguntas: PreguntaTest[]; registro: string; banco: string }) {
  const [test, setTest] = useState<PreguntaTest[] | null>(null);
  const [indice, setIndice] = useState(0);
  const [respuestas, setRespuestas] = useState<Respuesta[]>([]);

  const empezar = (n: number) => {
    setTest(barajar(preguntas).slice(0, n).sort((a, b) => a.tema - b.tema));
    setIndice(0);
    setRespuestas([]);
  };

  /* ------------------------------------------------------------ inicio */
  if (!test) {
    return (
      <div className="rounded-2xl border-2 border-primary bg-surface p-6 sm:p-8">
        <p className="text-eyebrow uppercase text-primary">Test gratis · sin registro</p>
        <h2 className="text-h2 mt-3">Elige cuántas preguntas</h2>
        <p className="mt-3 max-w-[40rem] text-muted-foreground">
          Preguntas al azar de todos los temas, sacadas del banco de la plataforma. Al contestar cada una ves si has acertado y
          por qué. Al final, tu nota con la penalización real del examen.
        </p>
        <div className="mt-6 flex flex-wrap gap-3">
          <Button onClick={() => empezar(10)} tamano="lg">
            Test de 10 preguntas
          </Button>
          <Button onClick={() => empezar(20)} variante="secundario" tamano="lg">
            Test de 20 preguntas
          </Button>
        </div>
      </div>
    );
  }

  /* ------------------------------------------------------------ resultado */
  if (respuestas.length === test.length && indice >= test.length) {
    const aciertos = respuestas.filter((r, i) => r === test[i].correcta).length;
    const blancos = respuestas.filter((r) => r === "blanco").length;
    const errores = test.length - aciertos - blancos;
    const neta = Math.max(0, aciertos - errores / 3);
    const sobre100 = (neta / test.length) * 100;
    const temasFallados = [...new Set(test.filter((q, i) => respuestas[i] !== q.correcta).map((q) => `Tema ${q.tema}. ${q.temaTitulo}`))];
    return (
      <div className="rounded-2xl border-2 border-primary bg-surface p-6 sm:p-8">
        <p className="text-eyebrow uppercase text-primary">Tu resultado</p>
        <p className="mt-3 tabular">
          <span className="text-display-l font-extrabold">{fmt(sobre100)}</span>
          <span className="text-h3 text-muted-foreground"> / 100</span>
        </p>
        <p className="mt-2 text-muted-foreground">
          {aciertos} aciertos, {errores} errores y {blancos} en blanco: {aciertos} − {errores} ÷ 3 = {fmt(neta)} netas de{" "}
          {test.length}. El mínimo del examen real es 50 sobre 100.
        </p>
        {temasFallados.length > 0 && (
          <div className="mt-6 rounded-xl bg-surface-subtle p-5">
            <p className="font-bold">Temas que conviene repasar</p>
            <ul className="mt-2 grid gap-1 text-body-sm text-muted-foreground">
              {temasFallados.map((t) => (
                <li key={t}>· {t}</li>
              ))}
            </ul>
          </div>
        )}
        <div className="mt-6 rounded-xl border border-primary bg-primary-soft p-5">
          <p className="font-semibold text-primary-soft-fg">
            En la plataforma tienes {banco}, tests por tema y simulacros cronometrados con esta misma corrección.
          </p>
          <div className="mt-4 flex flex-wrap gap-3">
            <Button href={registro}>
              Probar 7 días gratis
              <ArrowRight size={18} aria-hidden />
            </Button>
            <Button onClick={() => setTest(null)} variante="secundario">
              <RotateCcw size={17} aria-hidden />
              Hacer otro test
            </Button>
          </div>
        </div>
      </div>
    );
  }

  /* ------------------------------------------------------------ pregunta */
  const q = test[indice];
  const elegida = respuestas[indice];
  const contestada = elegida !== undefined;
  const responder = (r: Respuesta) => {
    if (contestada) return;
    setRespuestas((rs) => {
      const nuevas = [...rs];
      nuevas[indice] = r;
      return nuevas;
    });
  };

  return (
    <div className="rounded-2xl border border-border bg-surface p-6 sm:p-8">
      <div className="flex items-center justify-between gap-4 text-body-sm text-muted-foreground">
        <span className="font-semibold">
          Tema {q.tema}. {q.temaTitulo}
        </span>
        <span className="shrink-0 tabular">
          {indice + 1} / {test.length}
        </span>
      </div>
      <div className="mt-3 h-1.5 overflow-hidden rounded-full bg-muted">
        <div className="h-full rounded-full bg-primary transition-[width] duration-300" style={{ width: `${((indice + (contestada ? 1 : 0)) / test.length) * 100}%` }} />
      </div>

      <p className="mt-6 text-body-lg font-semibold leading-snug">{q.pregunta}</p>

      <div className="mt-5 grid gap-2.5" role="group" aria-label="Opciones">
        {q.opciones.map((o, i) => {
          const esCorrecta = i === q.correcta;
          const esElegida = elegida === i;
          const estado = !contestada ? "normal" : esCorrecta ? "correcta" : esElegida ? "fallo" : "apagada";
          return (
            <button
              key={i}
              type="button"
              onClick={() => responder(i)}
              disabled={contestada}
              aria-pressed={esElegida}
              className={`flex items-start gap-3 rounded-lg border px-4 py-3 text-left transition-colors ${
                estado === "normal"
                  ? "border-border bg-surface hover:border-primary"
                  : estado === "correcta"
                    ? "border-primary bg-primary-soft"
                    : estado === "fallo"
                      ? "border-[oklch(0.62_0.2_27)] bg-[color-mix(in_oklch,oklch(0.62_0.2_27)_12%,transparent)]"
                      : "border-border bg-surface opacity-60"
              }`}
            >
              <span
                className={`grid size-6 shrink-0 place-items-center rounded-full text-[0.7rem] font-bold ${
                  estado === "correcta" ? "bg-primary text-primary-fg" : estado === "fallo" ? "bg-[oklch(0.62_0.2_27)] text-white" : "bg-muted text-muted-foreground"
                }`}
              >
                {estado === "correcta" ? <Check size={13} strokeWidth={3} /> : estado === "fallo" ? <X size={13} strokeWidth={3} /> : LETRAS[i]}
              </span>
              <span className={estado === "correcta" ? "font-semibold text-primary-soft-fg" : ""}>{o}</span>
            </button>
          );
        })}
      </div>

      {!contestada ? (
        <button type="button" onClick={() => responder("blanco")} className="mt-4 text-body-sm font-semibold text-muted-foreground hover:text-foreground">
          Dejar en blanco (no resta)
        </button>
      ) : (
        <div aria-live="polite" className="mt-5 rounded-xl bg-surface-subtle p-5">
          <p className="font-bold">
            {elegida === q.correcta ? "¡Correcta!" : elegida === "blanco" ? `En blanco. La correcta es la ${LETRAS[q.correcta]}.` : `Fallo: resta un tercio. La correcta es la ${LETRAS[q.correcta]}.`}
          </p>
          <p className="mt-2 leading-[1.7] text-muted-foreground">{q.explicacion}</p>
          <div className="mt-4">
            <Button onClick={() => setIndice((i) => i + 1)}>
              {indice + 1 < test.length ? "Siguiente pregunta" : "Ver mi resultado"}
              <ArrowRight size={18} aria-hidden />
            </Button>
          </div>
        </div>
      )}
    </div>
  );
}
