"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowRight, CalendarDays, CircleAlert, Clock, Mail, MailCheck, RotateCcw, Route } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, boton } from "@/components/captacion/ui";
import { HORAS, MESES, generarPlan, partidas, temas, type DatosPlan, type Partida } from "@/content/captacion/plan";

const RECURSO = "plan";
type Fase = "inicio" | "opciones" | "datos" | "resultado";

const TONO_FASE = ["bg-primary", "bg-primary/60", "bg-warning"];

function Deslizador({
  id,
  etiqueta,
  valor,
  min,
  max,
  sufijo,
  onCambio,
}: {
  id: string;
  etiqueta: string;
  valor: number;
  min: number;
  max: number;
  sufijo: string;
  onCambio: (n: number) => void;
}) {
  return (
    <label htmlFor={id} className="mt-6 grid gap-2">
      <span className="flex items-baseline justify-between text-body-sm font-semibold">
        {etiqueta}
        <span className="font-[family-name:var(--font-display)] text-3xl font-extrabold text-primary tabular">
          {valor} <span className="text-base text-muted-foreground">{sufijo}</span>
        </span>
      </span>
      <input
        id={id}
        type="range"
        min={min}
        max={max}
        value={valor}
        onChange={(e) => onCambio(Number(e.target.value))}
        className="h-10 w-full accent-[var(--color-primary)]"
      />
    </label>
  );
}

export function PlanEstudio({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [datos, setDatos] = useState<DatosPlan>({ horas: 20, meses: 8, partida: "cero" });
  const [resultado, setResultado] = useState<{ nombre: string; emailEnviado?: boolean; hoy: Date } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase]);

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Plan gratis · Guardia Civil"
          titulo="Tu plan de estudio personalizado"
          entradilla="Dinos cuántas horas tienes a la semana y cuántos meses faltan para el examen, y te devolvemos un calendario con los 23 temas repartidos semana a semana. Te lo enviamos también por email."
          puntos={[
            { icono: CalendarDays, texto: "Semana a semana, con fechas" },
            { icono: Route, texto: "Tres fases: vuelta, repaso y simulacros" },
            { icono: Mail, texto: "Lo recibes en tu correo para tenerlo a mano" },
          ]}
          textoBoton="Hacer mi plan"
          onEmpezar={() => setFase("opciones")}
        />
      )}

      {fase === "opciones" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <p className="text-eyebrow uppercase text-primary">Tu situación</p>
          <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
            ¿Con cuánto tiempo cuentas?
          </h1>

          <Deslizador
            id="horas"
            etiqueta="Horas de estudio a la semana"
            valor={datos.horas}
            min={HORAS.min}
            max={HORAS.max}
            sufijo="h"
            onCambio={(horas) => setDatos({ ...datos, horas })}
          />
          <Deslizador
            id="meses"
            etiqueta="Meses hasta el examen"
            valor={datos.meses}
            min={MESES.min}
            max={MESES.max}
            sufijo={datos.meses === 1 ? "mes" : "meses"}
            onCambio={(meses) => setDatos({ ...datos, meses })}
          />
          <p className="mt-1 text-body-sm text-muted-foreground">
            La convocatoria de 2027 aún no se ha publicado. Como referencia, en 2026 el examen fue el 11 de julio.
          </p>

          <fieldset className="mt-6">
            <legend className="text-body-sm font-semibold">¿Desde dónde empiezas?</legend>
            <div className="mt-2 grid gap-2">
              {(Object.keys(partidas) as Partida[]).map((p) => (
                <button
                  key={p}
                  type="button"
                  aria-pressed={datos.partida === p}
                  onClick={() => setDatos({ ...datos, partida: p })}
                  className={`min-h-13 border px-4 text-left font-semibold transition-colors ${
                    datos.partida === p ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
                  }`}
                >
                  {partidas[p]}
                </button>
              ))}
            </div>
          </fieldset>

          <button type="button" onClick={() => setFase("datos")} className={`${boton} mt-8`}>
            Generar mi plan
            <ArrowRight size={19} aria-hidden />
          </button>
        </div>
      )}

      {fase === "datos" && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={datos}
          etiqueta="Plan generado"
          titulo="Tu plan está listo"
          texto="Déjanos tus datos para verlo aquí y recibirlo en tu correo: tus semanas, tus fechas y los temas de cada semana."
          textoBoton="Ver y recibir mi plan"
          finalidad="enviarme mi plan de estudio por email y contactarme sobre la preparación de la oposición"
          anticipo={
            <>
              <div className="flex h-4 gap-0.5">
                <span className="w-[55%] bg-primary" />
                <span className="w-[30%] bg-primary/60" />
                <span className="w-[15%] bg-warning" />
              </div>
              <div className="mt-4 grid gap-2 text-body-sm">
                {[1, 2, 3, 4].map((n) => (
                  <div key={n} className="flex justify-between border border-border px-3 py-2">
                    <span>Semana {n}</span>
                    <span>Tema •• · Tema ••</span>
                  </div>
                ))}
              </div>
            </>
          }
          onVolver={() => setFase("opciones")}
          textoVolver="Cambiar horas o meses"
          onListo={(r, nombre) => {
            setResultado({ nombre, emailEnviado: r.emailEnviado, hoy: new Date() });
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && resultado && (
        <Resultado
          datos={datos}
          nombre={resultado.nombre}
          emailEnviado={resultado.emailEnviado}
          hoy={resultado.hoy}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={() => setFase("opciones")}
        />
      )}
    </div>
  );
}

function Resultado({
  datos,
  nombre,
  emailEnviado,
  hoy,
  registro,
  whatsapp,
  onRepetir,
}: {
  datos: DatosPlan;
  nombre: string;
  emailEnviado?: boolean;
  hoy: Date;
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const p = generarPlan(datos, hoy);
  const titulo = (n: number) => temas.find((t) => t.n === n)?.titulo ?? `Tema ${n}`;

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">
        {datos.horas} h/semana · {datos.meses} meses · {partidas[datos.partida].toLowerCase()}
      </p>
      <h1 data-foco tabIndex={-1} className="text-display-l mt-4 outline-none">
        {nombre ? `${nombre}, este es tu plan` : "Este es tu plan"}
      </h1>
      <p className="mt-3 text-body-lg text-muted-foreground">
        <strong className="text-foreground tabular">{p.total} semanas</strong> y unas{" "}
        <strong className="text-foreground tabular">{p.horasTotales.toLocaleString("es-ES", { useGrouping: "always" })} horas</strong> de
        estudio. Empiezas el lunes {p.empieza}.
      </p>

      <p
        className={`mt-5 flex items-start gap-2 border-l-4 bg-surface px-4 py-3 text-body-sm ${emailEnviado ? "border-primary" : "border-border-strong"}`}
      >
        {emailEnviado ? <MailCheck size={18} className="mt-0.5 shrink-0 text-primary" aria-hidden /> : <Mail size={18} className="mt-0.5 shrink-0" aria-hidden />}
        {emailEnviado
          ? "Te lo hemos enviado al correo. Si no lo ves en unos minutos, mira en promociones o spam."
          : "No hemos podido enviártelo por email ahora mismo. Guarda esta página o haz una captura."}
      </p>

      {p.aviso && (
        <p className="mt-3 flex items-start gap-2 border-l-4 border-warning bg-surface px-4 py-3 text-body-sm">
          <CircleAlert size={18} className="mt-0.5 shrink-0 text-warning" aria-hidden />
          {p.aviso}
        </p>
      )}

      {/* Línea de tiempo: las tres fases, proporcionales a sus semanas. */}
      <section aria-labelledby="fases" className="mt-8">
        <h2 id="fases" className="text-h3">
          Las tres fases
        </h2>
        <div className="mt-4 flex h-5 gap-0.5" aria-hidden>
          {p.fases.map((f, i) => (
            <span key={f.nombre} className={TONO_FASE[i]} style={{ width: `${((f.hasta - f.desde + 1) / p.total) * 100}%` }} />
          ))}
        </div>
        <ol className="mt-4 grid gap-3">
          {p.fases.map((f, i) => (
            <li key={f.nombre} className="flex gap-3">
              <span className={`mt-1.5 size-3 shrink-0 ${TONO_FASE[i]}`} aria-hidden />
              <div>
                <p className="font-bold">
                  {f.nombre}{" "}
                  <span className="font-normal text-muted-foreground">
                    · semanas {f.desde}–{f.hasta}
                  </span>
                </p>
                <p className="text-body-sm text-muted-foreground">{f.descripcion}</p>
              </div>
            </li>
          ))}
        </ol>
      </section>

      <section aria-labelledby="semana-tipo" className="mt-8 border border-border bg-surface p-5">
        <h2 id="semana-tipo" className="text-eyebrow uppercase text-muted-foreground">
          <Clock size={14} className="mr-1.5 inline align-[-2px]" aria-hidden />
          Tus {datos.horas} horas de una semana
        </h2>
        <ul className="mt-4 grid gap-3">
          {p.semanaTipo.map((t) => (
            <li key={t.tarea} className="grid grid-cols-[1fr_auto] items-center gap-x-3 gap-y-1 text-body-sm">
              <span>{t.tarea}</span>
              <span className="font-bold tabular">{t.horas.toLocaleString("es-ES")} h</span>
              <span className="col-span-2 h-2 bg-muted">
                <span className="block h-full bg-primary" style={{ width: `${(t.horas / datos.horas) * 100}%` }} />
              </span>
            </li>
          ))}
        </ul>
        <p className="mt-4 text-body-sm text-muted-foreground">Y las pruebas físicas, entrenadas aparte desde el primer mes, no al final.</p>
      </section>

      <CtaPlataforma
        titulo="Síguelo con todo preparado"
        texto="En ProLince tienes el temario de los 23 temas, tests por tema para cerrar cada semana y simulacros para la última fase, con tu progreso a la vista."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he hecho mi plan de estudio (${datos.horas} h a la semana durante ${datos.meses} meses) y me gustaría información.`}
      />

      <details className="group mt-8 border border-border bg-surface">
        <summary className="flex min-h-14 cursor-pointer list-none items-center justify-between gap-3 px-4 font-bold [&::-webkit-details-marker]:hidden">
          <span>Semana a semana ({p.total})</span>
          <ArrowRight size={18} className="shrink-0 text-primary transition-transform group-open:rotate-90" aria-hidden />
        </summary>
        <ol className="border-t border-border">
          {p.semanas.map((s) => {
            const i = p.fases.findIndex((f) => f.nombre === s.fase);
            return (
              <li key={s.n} className="flex gap-3 border-b border-border px-4 py-3 last:border-0">
                <span className={`w-1 shrink-0 self-stretch ${TONO_FASE[i]}`} aria-hidden />
                <div className="min-w-0">
                  <p className="text-body-sm">
                    <strong>Semana {s.n}</strong> <span className="text-muted-foreground">· {s.inicio}</span>
                  </p>
                  {s.temas.length ? (
                    <ul className="mt-1 text-body-sm text-muted-foreground">
                      {s.temas.map((t) => (
                        <li key={t}>
                          Tema {t}. {titulo(t)}
                        </li>
                      ))}
                    </ul>
                  ) : (
                    <p className="mt-1 text-body-sm text-muted-foreground">{s.foco}</p>
                  )}
                </div>
              </li>
            );
          })}
        </ol>
      </details>

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="Tu plan de estudio para la Guardia Civil" texto="Haz tu plan de estudio para la Guardia Civil, semana a semana." />
        <button type="button" onClick={onRepetir} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Cambiar horas o meses
        </button>
      </div>
    </div>
  );
}
