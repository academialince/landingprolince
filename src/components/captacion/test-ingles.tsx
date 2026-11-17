"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowLeft, ArrowRight, Check, CircleCheck, CircleX, Gauge, Languages, RotateCcw, Scale, X } from "lucide-react";
import { BotonCompartir, Comparativa, CtaPlataforma, FormularioLead, Portada, Progreso } from "@/components/captacion/ui";
import {
  ESCALA,
  MINIMO,
  NUM_PREGUNTAS,
  POR_NIVEL,
  corregirIngles,
  dificultades,
  elegirPreguntas,
  nivelParaExamen,
  type Dificultad,
  type PreguntaIngles,
} from "@/content/captacion/ingles";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const RECURSO = "ingles";
const LETRAS = ["A", "B", "C", "D"];
const BLANCO = -1;
const fmt = (n: number) => n.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });

type Fase = "inicio" | "test" | "datos" | "resultado";

export function TestIngles({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [preguntas, setPreguntas] = useState<PreguntaIngles[]>([]);
  const [respuestas, setRespuestas] = useState<(number | undefined)[]>([]);
  const [indice, setIndice] = useState(0);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);
  const avanzando = useRef(false);

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
    setResultado(null);
    setFase("test");
  };

  const enviables = preguntas.map((q, i) => ({ id: q.id, r: respuestas[i] ?? BLANCO }));
  const q = preguntas[indice];

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Test gratis · Guardia Civil"
          titulo="¿Qué nivel de inglés tienes para el examen?"
          entradilla={`${NUM_PREGUNTAS} preguntas tipo test de lo que más cae, de menos a más difícil. Al final, tu nota sobre ${ESCALA} como en el examen y si pasarías el mínimo de ${MINIMO}.`}
          puntos={[
            { icono: Gauge, texto: "Unos 3 minutos" },
            { icono: Scale, texto: "Cada error resta un tercio, como en el examen" },
            { icono: Languages, texto: "Tu nivel por bloques y la explicación de cada fallo" },
          ]}
          textoBoton="Empezar el test"
          onEmpezar={empezar}
        />
      )}

      {fase === "test" && q && (
        <div className="pt-6 pb-12 sm:pt-10" key={indice}>
          <div className="flex items-center justify-between text-body-sm">
            <button
              type="button"
              onClick={() => (indice === 0 ? setFase("inicio") : setIndice(indice - 1))}
              className="-ml-2 inline-flex min-h-10 items-center gap-1.5 px-2 font-semibold text-muted-foreground hover:text-foreground"
            >
              <ArrowLeft size={16} aria-hidden />
              Atrás
            </button>
            <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-primary tabular">
              {String(indice + 1).padStart(2, "0")} / {NUM_PREGUNTAS}
            </span>
          </div>
          <div className="mt-3">
            <Progreso total={NUM_PREGUNTAS} hechas={indice} />
          </div>

          <p className="mt-6 text-eyebrow uppercase text-muted-foreground">Nivel {dificultades[q.nivel].toLowerCase()}</p>
          <h1
            data-foco
            tabIndex={-1}
            lang={q.enunciado.startsWith("«") ? "es" : "en"}
            style={{ fontFamily: "var(--font-sans)", textTransform: "none", letterSpacing: "normal", fontWeight: 700 }}
            className="mt-3 text-[1.35rem] leading-snug outline-none sm:text-[1.5rem]"
          >
            {q.enunciado}
          </h1>

          <div className="mt-6 grid grid-cols-2 gap-2.5" role="radiogroup" aria-label={`Opciones de la pregunta ${indice + 1}`}>
            {q.opciones.map((o, i) => (
              <button
                key={i}
                type="button"
                role="radio"
                aria-checked={respuestas[indice] === i}
                onClick={() => responderTras(i)}
                className={`flex min-h-16 items-center gap-3 border px-3.5 py-3 text-left transition-colors ${
                  respuestas[indice] === i ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
                } ${q.opciones.some((x) => x.length > 13) ? "col-span-2" : ""}`}
              >
                <span className="grid size-7 shrink-0 place-items-center bg-muted font-[family-name:var(--font-hud)] text-xs font-bold text-muted-foreground">
                  {LETRAS[i]}
                </span>
                <span lang="en" className="font-semibold">
                  {o}
                </span>
              </button>
            ))}
          </div>

          <button
            type="button"
            onClick={() => responderTras(BLANCO)}
            className="mt-5 w-full text-center text-body-sm font-semibold text-muted-foreground hover:text-foreground"
          >
            No lo sé: dejar en blanco (no resta)
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
            etiqueta="Test terminado"
            titulo="Tu nivel está listo"
            texto={`Déjanos tus datos para verlo: tu nota sobre ${ESCALA}, si pasarías el mínimo del examen y la explicación de cada fallo.`}
            textoBoton="Ver mi nivel"
            anticipo={
              <>
                <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">••,•• / 20</p>
                <div className="mt-4 grid gap-2">
                  {[90, 60, 30].map((w) => (
                    <div key={w} className="h-2.5 bg-primary" style={{ width: `${w}%` }} />
                  ))}
                </div>
              </>
            }
            onVolver={() => {
              setIndice(NUM_PREGUNTAS - 1);
              setFase("test");
            }}
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
          nombre={resultado.nombre}
          comparativa={resultado.comparativa}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={empezar}
        />
      )}
    </div>
  );

  // Responder (o cambiar la respuesta tras volver atrás) y pasar a la siguiente. El bloqueo evita
  // que un doble toque conteste también la pregunta siguiente.
  function responderTras(r: number) {
    if (avanzando.current) return;
    avanzando.current = true;
    setRespuestas((rs) => rs.map((v, i) => (i === indice ? r : v)));
    window.setTimeout(() => {
      avanzando.current = false;
      if (indice + 1 < preguntas.length) setIndice(indice + 1);
      else setFase("datos");
    }, 220);
  }
}

function Resultado({
  preguntas,
  respuestas,
  nombre,
  comparativa,
  registro,
  whatsapp,
  onRepetir,
}: {
  preguntas: PreguntaIngles[];
  respuestas: number[];
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const c = corregirIngles(preguntas.map((q, i) => ({ id: q.id, r: respuestas[i] })))!;
  const nivel = nivelParaExamen(c.nota);
  const fallos = preguntas.map((q, i) => ({ q, r: respuestas[i] })).filter(({ q, r }) => r !== q.correcta);
  const pctMin = (MINIMO / ESCALA) * 100;

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tu inglés para el examen</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, tu nivel es…` : "Tu nivel es…"}</p>
      <h1 data-foco tabIndex={-1} className={`text-display-l mt-1 outline-none ${nivel.ok ? "" : "text-warning"}`}>
        {nivel.nombre}
      </h1>
      <p className="mt-2">
        <span className="font-[family-name:var(--font-display)] text-4xl font-extrabold tabular">{fmt(c.nota)}</span>
        <span className="text-h3 text-muted-foreground"> / {ESCALA}</span>
      </p>

      <div className="mt-5" role="img" aria-label={`Tu nota: ${fmt(c.nota)} sobre ${ESCALA}. Mínimo del examen: ${MINIMO}.`}>
        <div className="relative h-4 bg-muted">
          <div className={`h-full ${nivel.ok ? "bg-primary" : "bg-warning"}`} style={{ width: `${Math.max(1.5, (c.nota / ESCALA) * 100)}%` }} />
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

      <section aria-labelledby="veredicto" className={`mt-8 border-l-4 bg-surface p-5 ${nivel.ok ? "border-primary" : "border-warning"}`}>
        <h2 id="veredicto" className="text-h3 flex items-center gap-2">
          {nivel.ok ? <CircleCheck size={22} className="text-primary" aria-hidden /> : <CircleX size={22} className="text-warning" aria-hidden />}
          {nivel.ok ? "Pasarías la prueba de inglés" : "Hoy no pasarías la prueba de inglés"}
        </h2>
        <p className="mt-3 text-muted-foreground">{nivel.texto}</p>
      </section>

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      <section aria-labelledby="bloques" className="mt-8 border border-border bg-surface p-5">
        <h2 id="bloques" className="text-eyebrow uppercase text-muted-foreground">
          Aciertos por dificultad
        </h2>
        <ul className="mt-4 grid gap-3">
          {(Object.keys(dificultades) as Dificultad[]).map((n) => (
            <li key={n} className="grid grid-cols-[6.5rem_1fr_2.5rem] items-center gap-3 text-body-sm">
              <span className="font-semibold">{dificultades[n]}</span>
              <span className="h-2.5 bg-muted">
                <span className="block h-full bg-primary" style={{ width: `${(c.porNivel[n] / POR_NIVEL) * 100}%` }} />
              </span>
              <span className="text-right font-bold tabular">
                {c.porNivel[n]}/{POR_NIVEL}
              </span>
            </li>
          ))}
        </ul>
        <p className="mt-4 text-body-sm text-muted-foreground">
          {c.aciertos} aciertos, {c.errores} errores y {c.blancos} en blanco: {fmt(c.netas)} netas de {NUM_PREGUNTAS} →{" "}
          {fmt(c.nota)} sobre {ESCALA}.
        </p>
      </section>

      <CtaPlataforma
        titulo={nivel.ok ? "Convierte el inglés en puntos" : "Sube tu inglés antes del examen"}
        texto="En ProLince tienes tests de inglés ilimitados con el formato del examen, temario de inglés y simulacros con el inglés al final, como el día de verdad."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he hecho el test de inglés y he sacado un ${fmt(c.nota)} sobre 20. Me gustaría información para prepararlo.`}
      />

      {fallos.length > 0 && (
        <details className="group mt-8 border border-border bg-surface">
          <summary className="flex min-h-14 cursor-pointer list-none items-center justify-between gap-3 px-4 font-bold [&::-webkit-details-marker]:hidden">
            <span>Ver la explicación de lo que has fallado o dejado en blanco ({fallos.length})</span>
            <ArrowRight size={18} className="shrink-0 text-primary transition-transform group-open:rotate-90" aria-hidden />
          </summary>
          <ol className="grid gap-3 border-t border-border p-3">
            {fallos.map(({ q, r }) => (
              <li key={q.id} className="bg-surface-subtle p-4">
                <p className="font-semibold" lang="en">
                  {q.enunciado}
                </p>
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
          titulo="¿Qué nivel de inglés tienes para el examen?"
          texto={`He sacado un ${fmt(c.nota)} sobre 20 en el test de inglés de Guardia Civil. ¿Y tú?`}
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
