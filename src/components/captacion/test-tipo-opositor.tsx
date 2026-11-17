"use client";

import { useEffect, useRef, useState } from "react";
import {
  ArrowLeft,
  ArrowRight,
  CalendarCheck,
  Check,
  Clock,
  Compass,
  RotateCcw,
  Target,
  TriangleAlert,
  Zap,
} from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Progreso, boton } from "@/components/captacion/ui";
import { GraficoArana } from "@/components/captacion/grafico-arana";
import {
  calcularPerfil,
  calcularRasgos,
  ordenPerfiles,
  perfiles,
  preguntas,
  type ClavePerfil,
} from "@/content/captacion/tipo-opositor";

const RECURSO = "tipo-opositor";
const LETRAS = ["A", "B", "C", "D"];
const ICONOS: Record<ClavePerfil, typeof Zap> = {
  metodico: CalendarCheck,
  sprinter: Zap,
  explorador: Compass,
  perfeccionista: Target,
};

type Fase = "inicio" | "preguntas" | "datos" | "resultado";

export function TestTipoOpositor({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [indice, setIndice] = useState(0);
  const [respuestas, setRespuestas] = useState<number[]>([]);
  const [perfil, setPerfil] = useState<ClavePerfil | null>(null);
  const [nombre, setNombre] = useState("");
  const raiz = useRef<HTMLDivElement>(null);

  // Cada cambio de pantalla vuelve arriba y lleva el foco al título, para que un lector de
  // pantalla anuncie la pregunta nueva y en el móvil no se quede la vista a media página.
  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, indice]);

  const empezar = () => {
    setRespuestas([]);
    setIndice(0);
    setPerfil(null);
    setFase("preguntas");
  };

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && <Inicio onEmpezar={empezar} />}
      {fase === "preguntas" && (
        <PantallaPregunta
          key={indice}
          indice={indice}
          elegida={respuestas[indice]}
          onElegir={(i) => {
            const nuevas = [...respuestas.slice(0, indice), i];
            setRespuestas(nuevas);
            // Un instante para ver marcada la opción antes de pasar a la siguiente.
            window.setTimeout(() => {
              if (indice + 1 < preguntas.length) setIndice(indice + 1);
              else setFase("datos");
            }, 260);
          }}
          onAtras={() => (indice === 0 ? setFase("inicio") : setIndice(indice - 1))}
        />
      )}
      {fase === "datos" && (
        <PantallaDatos
          respuestas={respuestas}
          onVolver={() => {
            setIndice(preguntas.length - 1);
            setFase("preguntas");
          }}
          onListo={(clave, n) => {
            setPerfil(clave);
            setNombre(n);
            setFase("resultado");
          }}
        />
      )}
      {fase === "resultado" && perfil && (
        <PantallaResultado
          clave={perfil}
          nombre={nombre}
          reparto={calcularPerfil(respuestas)?.reparto}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={empezar}
        />
      )}
    </div>
  );
}

/* ------------------------------------------------------------------ portada */

function Inicio({ onEmpezar }: { onEmpezar: () => void }) {
  return (
    <div className="pt-8 pb-12 sm:pt-14">
      <p className="text-eyebrow uppercase text-primary">Test gratis · Guardia Civil</p>
      <h1 className="text-display-l mt-4">¿Qué tipo de opositor eres?</h1>
      <p className="text-body-lg mt-5 text-muted-foreground">
        8 preguntas rápidas sobre cómo estudias. Al terminar sabrás tu perfil, tu punto débil y qué
        cambiar para aprobar antes.
      </p>

      <ul className="mt-6 grid gap-2 text-body-sm">
        {[
          { icono: Clock, texto: "Menos de 2 minutos" },
          { icono: Target, texto: "Resultado al momento" },
        ].map(({ icono: Icono, texto }) => (
          <li key={texto} className="flex items-center gap-3">
            <span className="inline-grid size-7 shrink-0 place-items-center bg-primary-soft text-primary-soft-fg">
              <Icono size={15} aria-hidden />
            </span>
            {texto}
          </li>
        ))}
      </ul>

      <button type="button" onClick={onEmpezar} className={`${boton} mt-8`}>
        Empezar el test
        <ArrowRight size={19} aria-hidden />
      </button>
    </div>
  );
}

/* ------------------------------------------------------------------ preguntas */

function PantallaPregunta({
  indice,
  elegida,
  onElegir,
  onAtras,
}: {
  indice: number;
  elegida: number | undefined;
  onElegir: (i: number) => void;
  onAtras: () => void;
}) {
  const q = preguntas[indice];
  // Bloquea el doble toque mientras se pasa a la siguiente pregunta. El componente se monta de
  // nuevo en cada pregunta (lleva `key={indice}`), así que este estado nace vacío en cada una.
  const [pulsada, setPulsada] = useState<number | null>(null);
  const marcada = pulsada ?? elegida;

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <div className="flex items-center justify-between text-body-sm">
        <button
          type="button"
          onClick={onAtras}
          className="-ml-2 inline-flex min-h-10 items-center gap-1.5 px-2 font-semibold text-muted-foreground hover:text-foreground"
        >
          <ArrowLeft size={16} aria-hidden />
          Atrás
        </button>
        <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-primary tabular">
          {String(indice + 1).padStart(2, "0")} / {String(preguntas.length).padStart(2, "0")}
        </span>
      </div>
      <div className="mt-3">
        <Progreso total={preguntas.length} hechas={indice} />
      </div>

      <h1 data-foco tabIndex={-1} className="mt-8 text-[1.45rem] leading-snug font-bold outline-none sm:text-[1.7rem]">
        {q.pregunta}
      </h1>

      <div className="mt-6 grid gap-3" role="group" aria-label={`Pregunta ${indice + 1} de ${preguntas.length}`}>
        {q.opciones.map((o, i) => {
          const activa = marcada === i;
          return (
            <button
              key={i}
              type="button"
              disabled={pulsada !== null}
              aria-pressed={activa}
              onClick={() => {
                setPulsada(i);
                onElegir(i);
              }}
              className={`flex min-h-16 items-center gap-4 border px-4 py-3.5 text-left transition-colors ${
                activa
                  ? "border-primary bg-primary-soft text-primary-soft-fg"
                  : "border-border-strong bg-surface hover:border-primary"
              }`}
            >
              <span
                className={`grid size-8 shrink-0 place-items-center font-[family-name:var(--font-hud)] text-xs font-bold ${
                  activa ? "bg-primary text-primary-fg" : "bg-muted text-muted-foreground"
                }`}
              >
                {activa ? <Check size={15} strokeWidth={3} aria-hidden /> : LETRAS[i]}
              </span>
              <span className="font-semibold">{o.texto}</span>
            </button>
          );
        })}
      </div>
    </div>
  );
}

/* ------------------------------------------------------------------ datos */

function PantallaDatos({
  respuestas,
  onVolver,
  onListo,
}: {
  respuestas: number[];
  onVolver: () => void;
  onListo: (perfil: ClavePerfil, nombre: string) => void;
}) {
  return (
    <>
      <div className="pt-6 sm:pt-10">
        <Progreso total={preguntas.length} hechas={preguntas.length} />
      </div>
      <FormularioLead
        recurso={RECURSO}
        respuestas={respuestas}
        titulo="Tu perfil está listo"
        texto="Déjanos tus datos para verlo: tu perfil de opositor, tu punto débil y un plan de 3 pasos para tu forma de estudiar."
        anticipo={
          <>
            <p className="font-[family-name:var(--font-display)] text-3xl font-extrabold uppercase">El ••••••••</p>
            <div className="mt-4 grid gap-2">
              {[72, 38, 25, 12].map((w) => (
                <div key={w} className="h-2.5 bg-primary" style={{ width: `${w}%` }} />
              ))}
            </div>
            <p className="mt-4 text-body-sm">Tus fortalezas, tu punto débil y tu plan de 3 pasos.</p>
          </>
        }
        onVolver={onVolver}
        onListo={(r, nombre) => {
          if (r.resultado in perfiles) onListo(r.resultado as ClavePerfil, nombre);
        }}
      />
    </>
  );
}

/* ------------------------------------------------------------------ resultado */

function PantallaResultado({
  clave,
  nombre,
  reparto,
  registro,
  whatsapp,
  onRepetir,
}: {
  clave: ClavePerfil;
  nombre: string;
  reparto?: Record<ClavePerfil, number>;
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const p = perfiles[clave];
  const Icono = ICONOS[clave];
  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">
        <span className="hud-rec mr-1.5 inline-block size-2 rounded-full bg-primary align-middle" aria-hidden />
        Perfil identificado · {p.codigo}
      </p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, eres…` : "Eres…"}</p>
      <h1 data-foco tabIndex={-1} className="text-display-l mt-1 flex items-center gap-3 outline-none">
        <Icono className="size-10 shrink-0 text-primary sm:size-12" aria-hidden />
        {p.nombre}
      </h1>
      <p className="mt-3 text-body-lg font-semibold">«{p.lema}»</p>
      <p className="mt-4 text-body-lg text-muted-foreground">{p.resumen}</p>

      {reparto && (
        <section aria-labelledby="mezcla" className="mt-8 border border-border bg-surface p-5">
          <h2 id="mezcla" className="text-eyebrow uppercase text-muted-foreground">
            Tu mezcla
          </h2>
          <ul className="mt-4 grid gap-3">
            {[...ordenPerfiles]
              .sort((a, b) => reparto[b] - reparto[a])
              .map((k) => (
                <li key={k} className="grid grid-cols-[8.5rem_1fr_2.75rem] items-center gap-3 text-body-sm">
                  <span className={k === clave ? "font-bold" : "text-muted-foreground"}>{perfiles[k].nombre}</span>
                  <span className="h-2.5 bg-muted">
                    <span
                      className={`block h-full ${k === clave ? "bg-primary" : "bg-border-strong"}`}
                      style={{ width: `${reparto[k]}%` }}
                    />
                  </span>
                  <span className="text-right font-bold tabular">{reparto[k]} %</span>
                </li>
              ))}
          </ul>
        </section>
      )}

      {reparto && (
        <section aria-labelledby="radar" className="hud-marco mt-8 border border-border bg-surface px-3 pt-5 pb-6">
          <h2 id="radar" className="text-eyebrow text-center uppercase text-muted-foreground">
            Tu radar de opositor
          </h2>
          <div className="mt-2">
            <GraficoArana rasgos={calcularRasgos(reparto)} />
          </div>
        </section>
      )}

      <section aria-labelledby="fortalezas" className="mt-8">
        <h2 id="fortalezas" className="text-h3">Tus fortalezas</h2>
        <ul className="mt-4 grid gap-3">
          {p.fortalezas.map((f) => (
            <li key={f} className="flex gap-3">
              <span className="mt-0.5 inline-grid size-6 shrink-0 place-items-center bg-primary-soft text-primary-soft-fg">
                <Check size={14} strokeWidth={3} aria-hidden />
              </span>
              {f}
            </li>
          ))}
        </ul>
      </section>

      <section aria-labelledby="riesgo" className="mt-8 border-l-4 border-warning bg-surface p-5">
        <h2 id="riesgo" className="text-h3 flex items-center gap-2">
          <TriangleAlert size={20} className="text-warning" aria-hidden />
          Tu punto débil
        </h2>
        <p className="mt-3 text-muted-foreground">{p.riesgo}</p>
      </section>

      <section aria-labelledby="plan" className="mt-8">
        <h2 id="plan" className="text-h3">Tu plan de 3 pasos</h2>
        <ol className="mt-4 grid gap-4">
          {p.plan.map((paso, i) => (
            <li key={paso} className="flex gap-4">
              <span className="grid size-9 shrink-0 place-items-center bg-primary font-[family-name:var(--font-display)] text-lg font-extrabold text-primary-fg">
                {i + 1}
              </span>
              <p className="pt-1">{paso}</p>
            </li>
          ))}
        </ol>
      </section>

      <CtaPlataforma
        texto={p.enProlince}
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he hecho el test y me ha salido «${p.nombre}». Me gustaría que me ayudarais con mi plan.`}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir
          titulo="¿Qué tipo de opositor eres?"
          texto={`Me ha salido «${p.nombre}». ¿Qué tipo de opositor eres tú?`}
        />
        <button
          type="button"
          onClick={onRepetir}
          className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground"
        >
          <RotateCcw size={16} aria-hidden />
          Repetir el test
        </button>
      </div>
    </div>
  );
}
