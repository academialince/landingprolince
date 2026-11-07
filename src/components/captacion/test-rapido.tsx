"use client";

import { useEffect, useRef, useState } from "react";
import {
  ArrowLeft,
  ArrowRight,
  BookOpen,
  Check,
  CircleCheck,
  CircleX,
  Lightbulb,
  ListChecks,
  RotateCcw,
  Scale,
  TriangleAlert,
  X,
  type LucideIcon,
} from "lucide-react";
import { BotonCompartir, Comparativa, CtaPlataforma, FormularioLead, Portada, Progreso, boton } from "@/components/captacion/ui";
import { bancos, corregirRapido, type IdBanco } from "@/content/captacion/tests-rapidos";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const LETRAS = ["A", "B", "C", "D"];
const BLANCO = -1;

type Fase = "inicio" | "test" | "datos" | "resultado";

const fmt = (n: number) => n.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });

type TextosTestRapido = {
  etiqueta: string;
  titulo: string;
  entradilla: string;
  puntos: { icono: LucideIcon; texto: string }[];
  textoBoton: string;
  /** Qué se compartirá: el texto lleva la nota al final. */
  compartir: (nota: string) => string;
  whatsapp: (nota: string) => string;
  cta: string;
};

const TEXTOS: Record<IdBanco, TextosTestRapido> = {
  constitucion: {
    etiqueta: "Test gratis · Guardia Civil",
    titulo: "¿Cuánto sabes de la Constitución?",
    entradilla:
      "10 preguntas sobre la Constitución, el tema que más pesa en el examen. Con la corrección del examen real y la explicación de cada respuesta.",
    puntos: [
      { icono: BookOpen, texto: "10 preguntas, unos 4 minutos" },
      { icono: Scale, texto: "Cada error resta un tercio, como en el examen" },
      { icono: ListChecks, texto: "Explicación de las 10 al terminar" },
    ],
    textoBoton: "Empezar el test",
    compartir: (nota) => `He sacado un ${nota} en el test de la Constitución para Guardia Civil. ¿Cuánto sacas tú?`,
    whatsapp: (nota) => `Hola, he hecho el test de la Constitución y he sacado un ${nota}. Me gustaría información para preparar la oposición.`,
    cta: "En ProLince tienes el temario completo de los 23 temas, tests de cada uno y más de 20.000 preguntas con su explicación, para que la Constitución deje de ser un problema.",
  },
  trampas: {
    etiqueta: "Test gratis · Guardia Civil",
    titulo: "10 preguntas trampa del examen",
    entradilla:
      "Diez preguntas con la trampa de siempre: el plazo cambiado, el número que bailan, la ley que no es. Al terminar te explicamos dónde está cada trampa.",
    puntos: [
      { icono: TriangleAlert, texto: "Las confusiones más típicas del temario" },
      { icono: Scale, texto: "Corrección del examen real" },
      { icono: Lightbulb, texto: "La trampa de cada pregunta, explicada" },
    ],
    textoBoton: "A ver si caigo",
    compartir: (nota) => `He sacado un ${nota} en el test de preguntas trampa de Guardia Civil. A ver si tú caes menos.`,
    whatsapp: (nota) => `Hola, he hecho el test de preguntas trampa y he sacado un ${nota}. Me gustaría información para preparar la oposición.`,
    cta: "Las trampas se aprenden a ver con práctica. En ProLince tienes más de 20.000 preguntas con su explicación y simulacros completos con la corrección del examen.",
  },
};

/** Test de 10 preguntas sin cronómetro: CONSTITUCION, TRAMPAS y los que vengan. */
export function TestRapido({
  banco,
  registro,
  whatsapp,
}: {
  banco: IdBanco;
  registro: string;
  whatsapp: string | null;
}) {
  const textos = TEXTOS[banco];
  const preguntas = bancos[banco];
  const [fase, setFase] = useState<Fase>("inicio");
  const [respuestas, setRespuestas] = useState<(number | undefined)[]>(() => Array(preguntas.length).fill(undefined));
  const [indice, setIndice] = useState(0);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, indice]);

  const empezar = () => {
    setRespuestas(Array(preguntas.length).fill(undefined));
    setIndice(0);
    setResultado(null);
    setFase("test");
  };
  const ir = (i: number) => (i >= preguntas.length ? setFase("datos") : setIndice(Math.max(0, i)));
  const responder = (r: number) => setRespuestas((rs) => rs.map((v, i) => (i === indice ? r : v)));
  const enviables = respuestas.map((r) => r ?? BLANCO);

  const q = preguntas[indice];
  const elegida = respuestas[indice];

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta={textos.etiqueta}
          titulo={textos.titulo}
          entradilla={textos.entradilla}
          puntos={textos.puntos}
          textoBoton={textos.textoBoton}
          onEmpezar={empezar}
        />
      )}

      {fase === "test" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <div className="flex items-center justify-between">
            <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-muted-foreground tabular">
              {String(indice + 1).padStart(2, "0")} / {preguntas.length}
            </span>
          </div>
          <div className="mt-3">
            <Progreso total={preguntas.length} hechas={respuestas.filter((r) => r !== undefined).length} />
          </div>

          <p className="mt-6 text-eyebrow uppercase text-muted-foreground">{q.fuente}</p>
          <h1
            key={q.id}
            data-foco
            tabIndex={-1}
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
                  onClick={() => responder(i)}
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
            <button type="button" onClick={() => ir(indice + 1)} className={boton} disabled={elegida === undefined}>
              {indice === preguntas.length - 1 ? "Terminar y corregir" : "Siguiente"}
              <ArrowRight size={19} aria-hidden />
            </button>
            <div className="flex items-center justify-between text-body-sm font-semibold">
              <button
                type="button"
                onClick={() => ir(indice - 1)}
                disabled={indice === 0}
                className="inline-flex min-h-11 items-center gap-1.5 text-muted-foreground hover:text-foreground disabled:invisible"
              >
                <ArrowLeft size={16} aria-hidden />
                Anterior
              </button>
              <button
                type="button"
                onClick={() => {
                  responder(BLANCO);
                  ir(indice + 1);
                }}
                className="inline-flex min-h-11 items-center text-muted-foreground hover:text-foreground"
              >
                Dejar en blanco (no resta)
              </button>
            </div>
          </div>
        </div>
      )}

      {fase === "datos" && (
        <>
          <div className="pt-6 sm:pt-10">
            <Progreso total={preguntas.length} hechas={preguntas.length} />
          </div>
          <FormularioLead
            recurso={banco}
            respuestas={enviables}
            etiqueta="Test terminado"
            titulo="Tu nota está lista"
            texto="Déjanos tus datos para verla: tu nota sobre 10 y la corrección de cada pregunta con su explicación."
            textoBoton="Ver mi nota"
            anticipo={
              <>
                <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">•,•• / 10</p>
                <div className="mt-4 h-3 bg-primary" style={{ width: "60%" }} />
                <p className="mt-4 text-body-sm">La corrección y la explicación de las 10 preguntas.</p>
              </>
            }
            onVolver={() => {
              setIndice(preguntas.length - 1);
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
          banco={banco}
          textos={textos}
          respuestas={enviables}
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
  banco,
  textos,
  respuestas,
  nombre,
  comparativa,
  registro,
  whatsapp,
  onRepetir,
}: {
  banco: IdBanco;
  textos: TextosTestRapido;
  respuestas: number[];
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const preguntas = bancos[banco];
  const c = corregirRapido(banco, respuestas)!;
  const nota = fmt(c.nota);
  const aprobado = c.nota >= 5;
  const conTrampa = preguntas.some((q) => q.trampa);

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Resultado</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, tu nota es…` : "Tu nota es…"}</p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        <span className="text-display-xl tabular">{nota}</span>
        <span className="text-h2 text-muted-foreground"> / 10</span>
      </h1>

      <div className="mt-6 h-4 bg-muted" role="img" aria-label={`${nota} sobre 10`}>
        <div
          className={`arana-forma h-full ${aprobado ? "bg-primary" : "bg-warning"}`}
          style={{ width: `${Math.max(1.5, c.nota * 10)}%`, transformOrigin: "left center" }}
        />
      </div>

      <dl className="mt-6 grid grid-cols-3 gap-2 text-center">
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
        Corrección del examen real: {c.aciertos} − {c.errores} ÷ 3 = {fmt(c.netas)} netas de {preguntas.length}.
      </p>

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      <section aria-labelledby="correccion" className="mt-10">
        <h2 id="correccion" className="text-h3">
          {conTrampa ? "Las trampas, una a una" : "La corrección"}
        </h2>
        <ol className="mt-4 grid gap-3">
          {preguntas.map((q, i) => {
            const r = respuestas[i];
            const bien = r === q.correcta;
            return (
              <li key={q.id} className={`border-l-4 bg-surface p-4 ${bien ? "border-primary" : "border-warning"}`}>
                <p className="flex items-center gap-2 text-eyebrow uppercase text-muted-foreground">
                  {bien ? (
                    <CircleCheck size={15} className="text-primary" aria-label="Acertada" />
                  ) : (
                    <CircleX size={15} className="text-warning" aria-label={r === BLANCO ? "En blanco" : "Fallada"} />
                  )}
                  {i + 1}. {q.fuente}
                </p>
                <p className="mt-2 font-semibold">{q.pregunta}</p>
                {!bien && r !== BLANCO && (
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
                    {LETRAS[q.correcta]}. {q.opciones[q.correcta]}
                  </span>
                </p>
                {q.trampa && (
                  <p className="mt-3 flex gap-2 bg-primary-soft px-3 py-2.5 text-body-sm text-primary-soft-fg">
                    <Lightbulb size={16} className="mt-0.5 shrink-0" aria-hidden />
                    <span>
                      <strong>La trampa: </strong>
                      {q.trampa}
                    </span>
                  </p>
                )}
                <p className="mt-3 text-body-sm leading-relaxed text-muted-foreground">{q.explicacion}</p>
              </li>
            );
          })}
        </ol>
      </section>

      <CtaPlataforma
        titulo={aprobado ? "Que no se te escape ninguna" : "Esto se entrena"}
        texto={textos.cta}
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={textos.whatsapp(nota)}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo={textos.titulo} texto={textos.compartir(nota)} />
        <button type="button" onClick={onRepetir} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Repetir el test
        </button>
      </div>
    </div>
  );
}
