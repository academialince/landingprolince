"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowLeft, ArrowRight, Check, CircleCheck, CircleX, ListChecks, RotateCcw, Scale, Timer, X } from "lucide-react";
import { BotonCompartir, Comparativa, Cronometro, CtaPlataforma, FormularioLead, Portada, Progreso, boton, reloj } from "@/components/captacion/ui";
import {
  MINIMO,
  MINUTOS,
  NUM_PREGUNTAS,
  corregir,
  elegirPreguntas,
  type PreguntaSimulacro,
} from "@/content/captacion/simulacro";
import { ESCALAS, notasCorte } from "@/content/captacion/datos-oficiales";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const RECURSO = "simulacro";
const LETRAS = ["A", "B", "C", "D"];
const BLANCO = -1;

type Fase = "inicio" | "examen" | "datos" | "resultado";

const fmt = (n: number) => n.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });


export function Simulacro({
  registro,
  whatsapp,
}: {
  registro: string;
  whatsapp: string | null;
}) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [preguntas, setPreguntas] = useState<PreguntaSimulacro[]>([]);
  const [respuestas, setRespuestas] = useState<(number | undefined)[]>([]);
  const [indice, setIndice] = useState(0);
  const [inicio, setInicio] = useState(0);
  const [segundosUsados, setSegundosUsados] = useState(0);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, indice]);

  const empezar = () => {
    const elegidas = elegirPreguntas();
    setPreguntas(elegidas);
    setRespuestas(Array(elegidas.length).fill(undefined));
    setIndice(0);
    setInicio(Date.now());
    setResultado(null);
    setFase("examen");
  };

  const terminar = () => {
    setSegundosUsados(Math.min(MINUTOS * 60, Math.round((Date.now() - inicio) / 1000)));
    setFase("datos");
  };

  // Lo que no se contestó cuenta como blanco, igual que en el examen.
  const enviables = preguntas.map((q, i) => ({ id: q.id, r: respuestas[i] ?? BLANCO }));

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Simulacro gratis · Guardia Civil"
          titulo="¿Aprobarías hoy?"
          entradilla={`${NUM_PREGUNTAS} preguntas de conocimientos, de temas distintos, con cronómetro y la corrección del examen real. Al final, tu nota sobre 100, si hoy aprobarías y lo que hizo falta para conseguir plaza.`}
          puntos={[
            { icono: Timer, texto: `${MINUTOS} minutos de cronómetro` },
            { icono: Scale, texto: "Cada error resta un tercio, como en el examen" },
            { icono: ListChecks, texto: "Corrección de cada pregunta al terminar" },
          ]}
          textoBoton="Empezar el simulacro"
          onEmpezar={empezar}
        >
          <p className="mt-6 border-l-4 border-primary bg-surface px-4 py-3 text-body-sm text-muted-foreground">
            Como en el examen, no verás si aciertas hasta el final. Si no sabes una, déjala en blanco: no resta.
          </p>
        </Portada>
      )}

      {fase === "examen" && (
        <Examen
          key={indice}
          preguntas={preguntas}
          indice={indice}
          respuestas={respuestas}
          limite={inicio + MINUTOS * 60 * 1000}
          onResponder={(r) => setRespuestas((rs) => rs.map((v, i) => (i === indice ? r : v)))}
          onIr={(i) => (i >= preguntas.length ? terminar() : setIndice(Math.max(0, i)))}
          onTiempo={terminar}
        />
      )}

      {fase === "datos" && (
        <>
          <div className="pt-6 sm:pt-10">
            <Progreso total={NUM_PREGUNTAS} hechas={NUM_PREGUNTAS} />
          </div>
          <FormularioLead
            recurso={RECURSO}
            respuestas={enviables}
            etiqueta="Simulacro terminado"
            titulo="Tu nota está lista"
            texto="Déjanos tus datos para verla: tu nota sobre 100, si hoy pasarías el corte y la corrección de cada pregunta con su explicación."
            textoBoton="Ver mi nota"
            anticipo={
              <>
                <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">••,•• / 100</p>
                <div className="mt-4 h-3 bg-primary" style={{ width: "64%" }} />
                <p className="mt-4 text-body-sm">Aciertos, errores, blancos y la corrección de cada pregunta.</p>
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
          segundos={segundosUsados}
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

/* ------------------------------------------------------------------ examen */

function Examen({
  preguntas,
  indice,
  respuestas,
  limite,
  onResponder,
  onIr,
  onTiempo,
}: {
  preguntas: PreguntaSimulacro[];
  indice: number;
  respuestas: (number | undefined)[];
  limite: number;
  onResponder: (r: number) => void;
  onIr: (i: number) => void;
  onTiempo: () => void;
}) {
  const q = preguntas[indice];
  const elegida = respuestas[indice];
  const ultima = indice === preguntas.length - 1;
  const contestadas = respuestas.filter((r) => r !== undefined).length;

  return (
    <div className="pb-12">
      {/* Cabecera fija con el cronómetro: en el móvil siempre a la vista. */}
      <div className="sticky top-0 z-10 -mx-4 border-b border-border bg-background/95 px-4 pt-4 pb-3 backdrop-blur">
        <div className="flex items-center justify-between text-body-sm">
          <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-muted-foreground tabular">
            {String(indice + 1).padStart(2, "0")} / {preguntas.length}
          </span>
          <Cronometro limite={limite} onFin={onTiempo} />
        </div>
        <div className="mt-3">
          <Progreso total={preguntas.length} hechas={contestadas} />
        </div>
      </div>

      <p className="mt-6 text-eyebrow uppercase text-muted-foreground">
        Tema {q.tema} · {q.temaTitulo}
      </p>
      <h1
        data-foco
        tabIndex={-1}
        // Los titulares de la web van en mayúsculas condensadas; un enunciado largo así no se lee.
        style={{ fontFamily: "var(--font-sans)", textTransform: "none", letterSpacing: "normal", fontWeight: 700 }}
        className="mt-3 text-[1.15rem] leading-snug outline-none sm:text-[1.3rem]"
      >
        {q.pregunta}
      </h1>

      <div className="mt-5 grid gap-2.5" role="radiogroup" aria-label={`Opciones de la pregunta ${indice + 1}`}>
        {q.opciones.map((o, i) => {
          const activa = elegida === i;
          return (
            <button
              key={i}
              type="button"
              role="radio"
              aria-checked={activa}
              onClick={() => onResponder(i)}
              className={`flex min-h-14 items-center gap-3.5 border px-4 py-3 text-left transition-colors ${
                activa ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
              }`}
            >
              <span
                className={`grid size-7 shrink-0 place-items-center font-[family-name:var(--font-hud)] text-xs font-bold ${
                  activa ? "bg-primary text-primary-fg" : "bg-muted text-muted-foreground"
                }`}
              >
                {LETRAS[i]}
              </span>
              <span className={activa ? "font-semibold" : ""}>{o}</span>
            </button>
          );
        })}
      </div>

      <div className="mt-6 grid gap-3">
        <button type="button" onClick={() => onIr(indice + 1)} className={boton} disabled={elegida === undefined}>
          {ultima ? "Terminar y corregir" : "Siguiente"}
          <ArrowRight size={19} aria-hidden />
        </button>
        <div className="flex items-center justify-between text-body-sm font-semibold">
          <button
            type="button"
            onClick={() => onIr(indice - 1)}
            disabled={indice === 0}
            className="inline-flex min-h-11 items-center gap-1.5 text-muted-foreground hover:text-foreground disabled:invisible"
          >
            <ArrowLeft size={16} aria-hidden />
            Anterior
          </button>
          <button
            type="button"
            onClick={() => {
              onResponder(BLANCO);
              onIr(indice + 1);
            }}
            className="inline-flex min-h-11 items-center text-muted-foreground hover:text-foreground"
          >
            Dejar en blanco (no resta)
          </button>
        </div>
      </div>
    </div>
  );
}

/* ------------------------------------------------------------------ resultado */

/** Barra de 0 a 100 con tu nota y las marcas de referencia. Un solo valor: un «bullet chart». */
function BarraNota({ nota }: { nota: number }) {
  const aprobado = nota >= MINIMO;
  const marcas = [
    { valor: MINIMO, texto: `Mínimo ${MINIMO}` },
  ];
  return (
    <div className="mt-6" role="img" aria-label={`Tu nota: ${fmt(nota)} sobre 100. ${marcas.map((m) => m.texto).join(". ")}.`}>
      <div className="relative h-4 bg-muted">
        <div
          className={`arana-forma h-full origin-left ${aprobado ? "bg-primary" : "bg-warning"}`}
          style={{ width: `${Math.max(1.5, nota)}%`, transformOrigin: "left center" }}
        />
        {marcas.map((m) => (
          <span key={m.texto} className="absolute -top-1.5 -bottom-1.5 w-0.5 bg-foreground" style={{ left: `${m.valor}%` }} aria-hidden />
        ))}
      </div>
      <div className="relative mt-2 h-5 text-[0.7rem] font-bold text-muted-foreground" aria-hidden>
        <span className="absolute left-0">0</span>
        {marcas.map((m) => (
          <span key={m.texto} className="absolute -translate-x-1/2 whitespace-nowrap uppercase" style={{ left: `${m.valor}%` }}>
            {m.texto}
          </span>
        ))}
        <span className="absolute right-0">100</span>
      </div>
    </div>
  );
}

/** Aprobar no es entrar: notas de corte reales (sobre 195) de las últimas convocatorias. */
function NotasDeCorte() {
  const max = Math.max(...notasCorte.map((n) => n.libre));
  return (
    <section aria-labelledby="plaza" className="mt-8 border border-border bg-surface p-5">
      <h2 id="plaza" className="text-h3">
        ¿Y para conseguir plaza?
      </h2>
      <p className="mt-3 text-body-sm text-muted-foreground">
        Aprobar no basta: las plazas se reparten por puntuación final, que suma conocimientos (hasta 100), inglés (20),
        psicotécnico (30) y méritos (45), sobre {ESCALAS.final}. Esta fue la nota del último aspirante con plaza del turno
        libre:
      </p>
      <table className="mt-4 w-full text-body-sm">
        <caption className="sr-only">Notas de corte del turno libre, sobre {ESCALAS.final}</caption>
        <thead className="sr-only">
          <tr>
            <th scope="col">Convocatoria</th>
            <th scope="col">Nota de corte</th>
          </tr>
        </thead>
        <tbody>
          {notasCorte.map((n, i) => (
            <tr key={n.anio}>
              <th scope="row" className={`w-14 py-1.5 text-left tabular ${i === 0 ? "font-bold" : "font-semibold text-muted-foreground"}`}>
                {n.anio}
              </th>
              <td className="py-1.5">
                <div className="flex items-center gap-3">
                  <span className="h-2.5 flex-1 bg-muted">
                    <span
                      className={`block h-full ${i === 0 ? "bg-primary" : "bg-border-strong"}`}
                      style={{ width: `${(n.libre / max) * 100}%` }}
                    />
                  </span>
                  <span className={`w-14 text-right tabular ${i === 0 ? "font-bold" : ""}`}>{fmt(n.libre)}</span>
                </div>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      <p className="mt-3 text-[0.75rem] text-muted-foreground">
        Fuente: resoluciones de aspirantes propuestos publicadas en el BOE ({notasCorte.map((n) => n.boe).join(", ")}).
      </p>
    </section>
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
  preguntas: PreguntaSimulacro[];
  respuestas: number[];
  segundos: number;
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const c = corregir(preguntas.map((q, i) => ({ id: q.id, r: respuestas[i] })))!;
  const veredicto =
    c.nota < MINIMO
      ? {
          titulo: "Hoy suspenderías conocimientos",
          texto: `Para seguir en el proceso hace falta al menos un ${MINIMO} sobre 100 en la prueba de conocimientos. Te faltan ${fmt(MINIMO - c.nota)} puntos.`,
          ok: false,
        }
      : {
          titulo: "Hoy aprobarías conocimientos",
          texto: `Superas el ${MINIMO} sobre 100 que hace falta para seguir en el proceso. Ahora toca sostenerlo en 100 preguntas y con todos los temas.`,
          ok: true,
        };

  const fallos = preguntas.map((q, i) => ({ q, r: respuestas[i] })).filter(({ q, r }) => r !== q.correcta);

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Resultado del simulacro</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, tu nota es…` : "Tu nota es…"}</p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        <span className="text-display-xl tabular">{fmt(c.nota)}</span>
        <span className="text-h2 text-muted-foreground"> / 100</span>
      </h1>

      <BarraNota nota={c.nota} />

      <section
        aria-labelledby="veredicto"
        className={`mt-8 border-l-4 bg-surface p-5 ${veredicto.ok ? "border-primary" : "border-warning"}`}
      >
        <h2 id="veredicto" className="text-h3 flex items-center gap-2">
          {veredicto.ok ? (
            <CircleCheck size={22} className="text-primary" aria-hidden />
          ) : (
            <CircleX size={22} className="text-warning" aria-hidden />
          )}
          {veredicto.titulo}
        </h2>
        <p className="mt-3 text-muted-foreground">{veredicto.texto}</p>
      </section>

      <NotasDeCorte />

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      <section aria-labelledby="desglose" className="mt-8">
        <h2 id="desglose" className="sr-only">
          Desglose
        </h2>
        <dl className="grid grid-cols-3 gap-2 text-center">
          {[
            { t: "Aciertos", v: c.aciertos, cls: "text-primary" },
            { t: "Errores", v: c.errores, cls: "text-warning" },
            { t: "En blanco", v: c.blancos, cls: "text-muted-foreground" },
          ].map((d) => (
            <div key={d.t} className="border border-border bg-surface px-2 py-4">
              <dt className="text-eyebrow uppercase text-muted-foreground">{d.t}</dt>
              <dd className={`mt-1 font-[family-name:var(--font-display)] text-4xl font-extrabold tabular ${d.cls}`}>{d.v}</dd>
            </div>
          ))}
        </dl>
        <p className="mt-3 text-body-sm text-muted-foreground">
          {c.aciertos} − {c.errores} ÷ 3 = {fmt(c.netas)} netas de {NUM_PREGUNTAS} → {fmt(c.nota)} sobre 100. Tiempo:{" "}
          {reloj(segundos)} de {MINUTOS}:00.
        </p>
      </section>

      <CtaPlataforma
        titulo={veredicto.ok ? "Que el día del examen también salga así" : "Sube esa nota antes del examen"}
        texto="En ProLince tienes más de 20.000 preguntas, tests por tema y simulacros completos de 100 preguntas con esta misma corrección, para ver cómo evoluciona tu nota semana a semana."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he hecho el simulacro «¿Aprobarías hoy?» y he sacado un ${fmt(c.nota)}. Me gustaría información para mejorar mi nota.`}
      />


      {fallos.length > 0 && (
        <details className="group mt-8 border border-border bg-surface">
          <summary className="flex min-h-14 cursor-pointer list-none items-center justify-between gap-3 px-4 font-bold [&::-webkit-details-marker]:hidden">
            <span>Ver la corrección de lo que has fallado o dejado en blanco ({fallos.length})</span>
            <ArrowRight size={18} className="shrink-0 text-primary transition-transform group-open:rotate-90" aria-hidden />
          </summary>
          <ol className="grid gap-3 border-t border-border p-3">
            {fallos.map(({ q, r }) => (
              <li key={q.id} className="bg-surface-subtle p-4">
                <p className="text-eyebrow uppercase text-muted-foreground">
                  Tema {q.tema} · {q.temaTitulo}
                </p>
                <p className="mt-2 font-semibold">{q.pregunta}</p>
                {r !== BLANCO && (
                  <p className="mt-3 flex gap-2 text-body-sm text-warning">
                    <X size={16} className="mt-0.5 shrink-0" aria-hidden />
                    <span>
                      Tu respuesta: {LETRAS[r]}. {q.opciones[r]}
                    </span>
                  </p>
                )}
                <p className="mt-2 flex gap-2 text-body-sm text-primary">
                  <Check size={16} className="mt-0.5 shrink-0" aria-hidden />
                  <span className="font-semibold">
                    Correcta: {LETRAS[q.correcta]}. {q.opciones[q.correcta]}
                  </span>
                </p>
                <p className="mt-3 text-body-sm leading-relaxed text-muted-foreground">{q.explicacion}</p>
              </li>
            ))}
          </ol>
        </details>
      )}

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Aprobarías hoy?" texto={`He sacado un ${fmt(c.nota)} en el simulacro de Guardia Civil. ¿Te atreves?`} />
        <button
          type="button"
          onClick={onRepetir}
          className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground"
        >
          <RotateCcw size={16} aria-hidden />
          Hacer otro simulacro
        </button>
      </div>
    </div>
  );
}
