"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowRight, Brain, Check, CircleCheck, CircleX, RotateCcw, Scale, Timer, X } from "lucide-react";
import { BotonCompartir, Comparativa, Cronometro, CtaPlataforma, FormularioLead, Portada, Progreso, reloj } from "@/components/captacion/ui";
import {
  ESCALA,
  MINIMO,
  MINUTOS,
  NUM_PREGUNTAS,
  POR_TIPO,
  corregirPsico,
  elegirPreguntas,
  tipos,
  type PreguntaPsico,
  type TipoPsico,
} from "@/content/captacion/psicotecnico";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const RECURSO = "psicotecnico";
const LETRAS = ["A", "B", "C", "D"];
const BLANCO = -1;
/** Segundos transcurridos desde `t`. Fuera del componente: solo se llama desde eventos. */
const segundosDesde = (t: number) => Math.round((Date.now() - t) / 1000);
const fmt = (n: number) => n.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });

type Fase = "inicio" | "test" | "datos" | "resultado";

export function TestPsicotecnico({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [preguntas, setPreguntas] = useState<PreguntaPsico[]>([]);
  const [respuestas, setRespuestas] = useState<(number | undefined)[]>([]);
  const [indice, setIndice] = useState(0);
  const [inicio, setInicio] = useState(0);
  const [segundos, setSegundos] = useState(0);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, indice]);

  const empezar = () => {
    const q = elegirPreguntas();
    setPreguntas(q);
    setRespuestas(Array(q.length).fill(undefined));
    setIndice(0);
    setInicio(Date.now());
    setResultado(null);
    setFase("test");
  };

  const terminar = () => {
    setSegundos(Math.min(MINUTOS * 60, segundosDesde(inicio)));
    setFase("datos");
  };

  // Aquí, como en el examen, se responde y se pasa: tocar una opción ya avanza.
  const responder = (r: number) => {
    // Un doble toque no puede saltarse la pregunta siguiente.
    if (respuestas[indice] !== undefined) return;
    setRespuestas((rs) => rs.map((v, i) => (i === indice ? r : v)));
    window.setTimeout(() => (indice + 1 < preguntas.length ? setIndice(indice + 1) : terminar()), 220);
  };

  const enviables = preguntas.map((q, i) => ({ id: q.id, r: respuestas[i] ?? BLANCO }));

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Test gratis · Guardia Civil"
          titulo="Psicotécnico exprés"
          entradilla={`${NUM_PREGUNTAS} ejercicios de aptitudes en ${MINUTOS} minutos: series, letras, vocabulario y razonamiento. Al final, tu nota en la escala del examen y en qué aptitud fallas más.`}
          puntos={[
            { icono: Timer, texto: `${MINUTOS} minutos: hay que ir rápido` },
            { icono: Scale, texto: "Cada error resta un tercio, como en el examen" },
            { icono: Brain, texto: "Nota sobre 30 y tu punto fuerte y débil" },
          ]}
          textoBoton="Empezar el psicotécnico"
          onEmpezar={empezar}
        >
          <p className="mt-6 border-l-4 border-primary bg-surface px-4 py-3 text-body-sm text-muted-foreground">
            En el examen real son 80 preguntas en 55 minutos. Si dudas mucho, déjala en blanco: no resta.
          </p>
        </Portada>
      )}

      {fase === "test" && (
        <div className="pb-12" key={indice}>
          <div className="sticky top-0 z-10 -mx-4 border-b border-border bg-background/95 px-4 pt-4 pb-3 backdrop-blur">
            <div className="flex items-center justify-between">
              <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-muted-foreground tabular">
                {String(indice + 1).padStart(2, "0")} / {NUM_PREGUNTAS}
              </span>
              <Cronometro limite={inicio + MINUTOS * 60 * 1000} onFin={terminar} />
            </div>
            <div className="mt-3">
              <Progreso total={NUM_PREGUNTAS} hechas={indice} />
            </div>
          </div>

          <p className="mt-6 text-eyebrow uppercase text-muted-foreground">{tipos[preguntas[indice].tipo]}</p>
          <h1
            data-foco
            tabIndex={-1}
            style={{ fontFamily: "var(--font-sans)", textTransform: "none", letterSpacing: "normal", fontWeight: 700 }}
            className={`mt-3 leading-snug outline-none ${
              preguntas[indice].tipo === "numericas" || preguntas[indice].tipo === "letras"
                ? "font-[family-name:var(--font-hud)] text-[1.7rem] tracking-wide"
                : "text-[1.2rem] sm:text-[1.35rem]"
            }`}
          >
            {preguntas[indice].enunciado}
          </h1>

          <div className="mt-6 grid grid-cols-2 gap-2.5" role="radiogroup" aria-label={`Opciones de la pregunta ${indice + 1}`}>
            {preguntas[indice].opciones.map((o, i) => (
              <button
                key={i}
                type="button"
                role="radio"
                aria-checked={respuestas[indice] === i}
                onClick={() => responder(i)}
                className={`flex min-h-16 items-center gap-3 border px-3.5 py-3 text-left transition-colors ${
                  respuestas[indice] === i ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
                } ${preguntas[indice].opciones.some((x) => x.length > 14) ? "col-span-2" : ""}`}
              >
                <span className="grid size-7 shrink-0 place-items-center bg-muted font-[family-name:var(--font-hud)] text-xs font-bold text-muted-foreground">
                  {LETRAS[i]}
                </span>
                <span className="font-semibold">{o}</span>
              </button>
            ))}
          </div>

          <button
            type="button"
            onClick={() => responder(BLANCO)}
            className="mt-5 w-full text-center text-body-sm font-semibold text-muted-foreground hover:text-foreground"
          >
            Dejar en blanco (no resta)
          </button>
        </div>
      )}

      {fase === "datos" && (
        <>
          <div className="pt-6 sm:pt-10">
            <Progreso total={NUM_PREGUNTAS} hechas={NUM_PREGUNTAS} />
          </div>
          <FormularioLead
            recurso={RECURSO}
            respuestas={enviables}
            etiqueta="Psicotécnico terminado"
            titulo="Tu resultado está listo"
            texto="Déjanos tus datos para verlo: tu nota sobre 30, si pasarías el mínimo del examen y en qué aptitud fallas más."
            textoBoton="Ver mi resultado"
            anticipo={
              <>
                <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">••,•• / 30</p>
                <div className="mt-4 grid gap-2">
                  {[80, 55, 40, 70].map((w) => (
                    <div key={w} className="h-2.5 bg-primary" style={{ width: `${w}%` }} />
                  ))}
                </div>
              </>
            }
            onListo={(r, nombre) => {
              setResultado({ nombre, comparativa: r.comparativa });
              setFase("resultado");
            }}
          />
        </>
      )}

      {fase === "resultado" && resultado && (
        <Resultado
          preguntas={preguntas}
          respuestas={enviables.map((e) => e.r)}
          segundos={segundos}
          nombre={resultado.nombre}
          comparativa={resultado.comparativa}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={empezar}
        />
      )}
    </div>
  );
}

function Resultado({
  preguntas,
  respuestas,
  segundos,
  nombre,
  comparativa,
  registro,
  whatsapp,
  onRepetir,
}: {
  preguntas: PreguntaPsico[];
  respuestas: number[];
  segundos: number;
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const c = corregirPsico(preguntas.map((q, i) => ({ id: q.id, r: respuestas[i] })))!;
  const orden = (Object.keys(tipos) as TipoPsico[]).sort((a, b) => c.porTipo[b] - c.porTipo[a]);
  const fuerte = orden[0];
  const debil = orden[orden.length - 1];
  const fallos = preguntas.map((q, i) => ({ q, r: respuestas[i] })).filter(({ q, r }) => r !== q.correcta);
  const pctNota = (c.nota / ESCALA) * 100;
  const pctMin = (MINIMO / ESCALA) * 100;

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Resultado del psicotécnico</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, tu nota es…` : "Tu nota es…"}</p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        <span className="text-display-xl tabular">{fmt(c.nota)}</span>
        <span className="text-h2 text-muted-foreground"> / {ESCALA}</span>
      </h1>

      <div className="mt-6" role="img" aria-label={`Tu nota: ${fmt(c.nota)} sobre ${ESCALA}. Mínimo del examen: ${MINIMO}.`}>
        <div className="relative h-4 bg-muted">
          <div className={`h-full ${c.apto ? "bg-primary" : "bg-warning"}`} style={{ width: `${Math.max(1.5, pctNota)}%` }} />
          <span className="absolute -top-1.5 -bottom-1.5 w-0.5 bg-foreground" style={{ left: `${pctMin}%` }} aria-hidden />
        </div>
        <div className="relative mt-2 h-5 text-[0.7rem] font-bold text-muted-foreground" aria-hidden>
          <span className="absolute left-0">0</span>
          <span className="absolute -translate-x-1/2 uppercase" style={{ left: `${pctMin}%` }}>
            Mínimo {MINIMO}
          </span>
          <span className="absolute right-0">{ESCALA}</span>
        </div>
      </div>

      <section aria-labelledby="veredicto" className={`mt-8 border-l-4 bg-surface p-5 ${c.apto ? "border-primary" : "border-warning"}`}>
        <h2 id="veredicto" className="text-h3 flex items-center gap-2">
          {c.apto ? <CircleCheck size={22} className="text-primary" aria-hidden /> : <CircleX size={22} className="text-warning" aria-hidden />}
          {c.apto ? "Pasarías el mínimo" : "Hoy no llegarías al mínimo"}
        </h2>
        <p className="mt-3 text-muted-foreground">
          {c.apto
            ? `Superas el ${MINIMO} sobre ${ESCALA} que exige el examen. Pero el psicotécnico también suma puntos para la plaza: cada punto por encima cuenta.`
            : `El examen exige al menos un ${MINIMO} sobre ${ESCALA}. El psicotécnico es de las pruebas que más mejoran con práctica: son tipos de ejercicio que se repiten.`}
        </p>
      </section>

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      <section aria-labelledby="aptitudes" className="mt-8 border border-border bg-surface p-5">
        <h2 id="aptitudes" className="text-eyebrow uppercase text-muted-foreground">
          Tus aptitudes
        </h2>
        <ul className="mt-4 grid gap-3">
          {orden.map((t) => (
            <li key={t} className="grid grid-cols-[9.5rem_1fr_2.5rem] items-center gap-3 text-body-sm">
              <span className={t === fuerte || t === debil ? "font-bold" : "text-muted-foreground"}>{tipos[t]}</span>
              <span className="h-2.5 bg-muted">
                <span
                  className={`block h-full ${t === debil && c.porTipo[t] < POR_TIPO ? "bg-warning" : "bg-primary"}`}
                  style={{ width: `${(c.porTipo[t] / POR_TIPO) * 100}%` }}
                />
              </span>
              <span className="text-right font-bold tabular">
                {c.porTipo[t]}/{POR_TIPO}
              </span>
            </li>
          ))}
        </ul>
        {c.porTipo[debil] < POR_TIPO && (
          <p className="mt-4 text-body-sm text-muted-foreground">
            Tu punto débil: <strong className="text-foreground">{tipos[debil].toLowerCase()}</strong>. Es donde más rápido se nota la práctica.
          </p>
        )}
      </section>

      <p className="mt-4 text-body-sm text-muted-foreground">
        {c.aciertos} aciertos, {c.errores} errores y {c.blancos} en blanco: {fmt(c.netas)} netas de {NUM_PREGUNTAS} → {fmt(c.nota)} sobre {ESCALA}.
        Tiempo: {reloj(segundos)} de {MINUTOS}:00.
      </p>

      <CtaPlataforma
        titulo={c.apto ? "Convierte el mínimo en puntos" : "El psicotécnico se entrena"}
        texto="En ProLince tienes simulacros de psicotécnicos con tiempo y corrección, para que el día del examen los tipos de ejercicio ya te suenen."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he hecho el psicotécnico exprés y he sacado un ${fmt(c.nota)} sobre 30. Me gustaría información para prepararlo.`}
      />

      {fallos.length > 0 && (
        <details className="group mt-8 border border-border bg-surface">
          <summary className="flex min-h-14 cursor-pointer list-none items-center justify-between gap-3 px-4 font-bold [&::-webkit-details-marker]:hidden">
            <span>Ver la solución de lo que has fallado o dejado en blanco ({fallos.length})</span>
            <ArrowRight size={18} className="shrink-0 text-primary transition-transform group-open:rotate-90" aria-hidden />
          </summary>
          <ol className="grid gap-3 border-t border-border p-3">
            {fallos.map(({ q, r }) => (
              <li key={q.id} className="bg-surface-subtle p-4">
                <p className="text-eyebrow uppercase text-muted-foreground">{tipos[q.tipo]}</p>
                <p className="mt-2 font-semibold">{q.enunciado}</p>
                {r !== BLANCO && (
                  <p className="mt-3 flex gap-2 text-body-sm text-warning">
                    <X size={16} className="mt-0.5 shrink-0" aria-hidden />
                    Tu respuesta: {q.opciones[r]}
                  </p>
                )}
                <p className="mt-2 flex gap-2 text-body-sm font-semibold text-primary">
                  <Check size={16} className="mt-0.5 shrink-0" aria-hidden />
                  Correcta: {q.opciones[q.correcta]}
                </p>
                <p className="mt-2 text-body-sm text-muted-foreground">{q.explicacion}</p>
              </li>
            ))}
          </ol>
        </details>
      )}

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir
          titulo="Psicotécnico exprés"
          texto={`He sacado un ${fmt(c.nota)} sobre 30 en el psicotécnico exprés de Guardia Civil. ¿Cuánto sacas tú?`}
        />
        <button
          type="button"
          onClick={onRepetir}
          className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground"
        >
          <RotateCcw size={16} aria-hidden />
          Repetir con otras preguntas
        </button>
      </div>
    </div>
  );
}
