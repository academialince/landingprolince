"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowRight, CalendarClock, CircleCheck, Flag, Gauge, Hourglass, RotateCcw, TriangleAlert } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, boton, campo } from "@/components/captacion/ui";
import { SEMANAS_REPASO, TOTAL_TEMAS, calcularCuentaAtras, niveles, type DatosCuentaAtras } from "@/content/captacion/cuenta-atras";

const RECURSO = "cuenta-atras";

type Fase = "inicio" | "opciones" | "datos" | "resultado";

/**
 * Fecha propuesta: el primer examen de 2026 fue el 11 de julio (BOE-A-2026-12817). La de 2027
 * aún no existe; se avisa en pantalla y se puede cambiar.
 */
const FECHA_PROPUESTA = "2027-07-10";

const num = (n: number) => n.toLocaleString("es-ES", { maximumFractionDigits: 1 });
/** «Hoy» se fija al pulsar, nunca al renderizar. */
const ahora = () => new Date();

export function CuentaAtras({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [datos, setDatos] = useState<DatosCuentaAtras>({ fecha: FECHA_PROPUESTA, temasHechos: 0 });
  const [hoy, setHoy] = useState<Date | null>(null);
  const [nombre, setNombre] = useState("");
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase]);

  const calculo = hoy ? calcularCuentaAtras(datos, hoy) : null;
  const [error, setError] = useState("");

  const seguir = () => {
    const h = ahora();
    if (!calcularCuentaAtras(datos, h)) {
      setError("Pon una fecha de examen que esté al menos a una semana vista y a menos de tres años.");
      return;
    }
    setError("");
    setHoy(h);
    setFase("datos");
  };

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Calculadora gratis · Guardia Civil"
          titulo="¿Te da tiempo?"
          entradilla={`Dinos cuándo es tu examen y cuántos temas llevas. Te decimos a qué ritmo tienes que ir cada semana para ver los ${TOTAL_TEMAS} temas y llegar con tiempo de repasar.`}
          puntos={[
            { icono: Hourglass, texto: "Semanas que te quedan, contadas de verdad" },
            { icono: Gauge, texto: "Temas por semana que necesitas" },
            { icono: Flag, texto: "Hitos para saber si vas bien" },
          ]}
          textoBoton="Calcular mi ritmo"
          onEmpezar={() => setFase("opciones")}
        />
      )}

      {fase === "opciones" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <p className="text-eyebrow uppercase text-primary">Tu situación</p>
          <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
            ¿Cuándo y cuánto?
          </h1>

          <label htmlFor="fecha" className="mt-6 grid gap-1.5">
            <span className="text-body-sm font-semibold">Fecha del examen</span>
            <input
              id="fecha"
              type="date"
              value={datos.fecha}
              onChange={(e) => setDatos((d) => ({ ...d, fecha: e.target.value }))}
              aria-invalid={error ? true : undefined}
              className={campo}
            />
            <span className="text-body-sm text-muted-foreground">
              La fecha de 2027 aún no es oficial. Te proponemos una parecida a la de 2026 (11 de julio); cámbiala si sabes la tuya.
            </span>
          </label>

          <label htmlFor="temas" className="mt-6 grid gap-1.5">
            <span className="flex items-baseline justify-between text-body-sm font-semibold">
              Temas que ya llevas estudiados
              <span className="font-[family-name:var(--font-display)] text-3xl font-extrabold text-primary tabular">
                {datos.temasHechos} <span className="text-base text-muted-foreground">de {TOTAL_TEMAS}</span>
              </span>
            </span>
            <input
              id="temas"
              type="range"
              min={0}
              max={TOTAL_TEMAS}
              value={datos.temasHechos}
              onChange={(e) => setDatos((d) => ({ ...d, temasHechos: Number(e.target.value) }))}
              className="h-10 w-full accent-[var(--color-primary)]"
            />
            <span className="text-body-sm text-muted-foreground">Cuenta solo los que has estudiado entero al menos una vez.</span>
          </label>

          {error && (
            <p role="alert" className="mt-4 bg-danger/10 px-3 py-2 text-body-sm text-danger">
              {error}
            </p>
          )}
          <button type="button" onClick={seguir} className={`${boton} mt-8`}>
            ¿Me da tiempo?
            <ArrowRight size={19} aria-hidden />
          </button>
        </div>
      )}

      {fase === "datos" && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={datos}
          etiqueta="Cálculo hecho"
          titulo="Tu ritmo está calculado"
          texto="Déjanos tus datos para verlo: las semanas que te quedan, los temas por semana que necesitas y los hitos para saber si vas bien."
          textoBoton="Ver mi ritmo"
          anticipo={
            <>
              <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">•,• temas / semana</p>
              <p className="mt-4 text-body-sm">•• semanas · •• temas pendientes · hitos</p>
            </>
          }
          onVolver={() => setFase("opciones")}
          textoVolver="Cambiar mis datos"
          onListo={(_, n) => {
            setNombre(n);
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && calculo && (
        <Resultado calculo={calculo} nombre={nombre} registro={registro} whatsapp={whatsapp} onCambiar={() => setFase("opciones")} />
      )}
    </div>
  );
}

function Resultado({
  calculo: c,
  nombre,
  registro,
  whatsapp,
  onCambiar,
}: {
  calculo: NonNullable<ReturnType<typeof calcularCuentaAtras>>;
  nombre: string;
  registro: string;
  whatsapp: string | null;
  onCambiar: () => void;
}) {
  const nivel = niveles[c.nivel];
  const hecho = c.nivel === "hecho";

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tu ritmo</p>
      <p className="mt-4 text-muted-foreground">
        {nombre ? `${nombre}, ` : ""}
        {hecho ? "te quedan" : "para llegar necesitas"}
      </p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        {hecho ? (
          <>
            <span className="text-display-xl tabular">{c.semanas}</span>
            <span className="text-h2 text-muted-foreground"> semanas de repaso</span>
          </>
        ) : (
          <>
            <span className="text-display-xl tabular">{num(c.ritmo)}</span>
            <span className="text-h2 text-muted-foreground"> {c.ritmo === 1 ? "tema" : "temas"} / semana</span>
          </>
        )}
      </h1>
      {!hecho && <p className="mt-2 text-muted-foreground">Un tema nuevo cada {c.diasPorTema} días, más o menos.</p>}

      <dl className="mt-6 grid grid-cols-3 gap-2 text-center">
        {[
          { t: "Semanas", v: c.semanas },
          { t: "Temas pendientes", v: c.pendientes },
          { t: "Días", v: c.dias },
        ].map((d) => (
          <div key={d.t} className="border border-border bg-surface px-2 py-4">
            <dt className="text-eyebrow uppercase text-muted-foreground">{d.t}</dt>
            <dd className="mt-1 font-[family-name:var(--font-display)] text-4xl font-extrabold tabular">{d.v}</dd>
          </div>
        ))}
      </dl>

      <section aria-labelledby="veredicto" className={`mt-8 border-l-4 bg-surface p-5 ${nivel.ok ? "border-primary" : "border-warning"}`}>
        <h2 id="veredicto" className="text-h3 flex items-center gap-2">
          {nivel.ok ? (
            <CircleCheck size={22} className="text-primary" aria-hidden />
          ) : (
            <TriangleAlert size={22} className="text-warning" aria-hidden />
          )}
          {nivel.nombre}
        </h2>
        <p className="mt-3 text-muted-foreground">{nivel.texto}</p>
      </section>

      {/* Reparto del tiempo: estudio y repaso, en una barra. */}
      <section aria-labelledby="reparto" className="mt-8">
        <h2 id="reparto" className="text-h3">
          Cómo se reparten tus {c.semanas} semanas
        </h2>
        <div className="mt-4 flex h-5 gap-0.5" role="img" aria-label={`${c.estudio} semanas de temario y ${c.repaso} de repaso y simulacros`}>
          {!hecho && <span className="h-full bg-primary" style={{ width: `${(c.estudio / c.semanas) * 100}%` }} />}
          <span className="h-full flex-1 bg-warning" />
        </div>
        <ul className="mt-3 flex flex-wrap gap-x-4 gap-y-1 text-body-sm">
          {!hecho && (
            <li className="inline-flex items-center gap-1.5">
              <span className="size-3 bg-primary" aria-hidden />
              Temario: <strong className="tabular">{c.estudio} semanas</strong>
            </li>
          )}
          <li className="inline-flex items-center gap-1.5">
            <span className="size-3 bg-warning" aria-hidden />
            Repaso y simulacros: <strong className="tabular">{hecho ? c.semanas : c.repaso} semanas</strong>
          </li>
        </ul>
        {!hecho && (
          <p className="mt-3 text-body-sm text-muted-foreground">
            Dejamos las últimas {c.repaso === SEMANAS_REPASO ? SEMANAS_REPASO : c.repaso} semanas sin temas nuevos: llegar al examen
            repasando es lo que marca la diferencia.
          </p>
        )}
      </section>

      {!hecho && (
        <section aria-labelledby="hitos" className="mt-8 border border-border bg-surface p-5">
          <h2 id="hitos" className="text-h3 flex items-center gap-2">
            <CalendarClock size={20} className="text-primary" aria-hidden />
            Tus hitos
          </h2>
          <p className="mt-2 text-body-sm text-muted-foreground">Si en estas fechas llevas estos temas, vas bien.</p>
          <ol className="mt-4 grid gap-2.5">
            {c.hitos.map((h) => (
              <li key={h.semana} className="grid grid-cols-[4.5rem_1fr_auto] items-center gap-3 text-body-sm">
                <span className="font-semibold tabular">{h.fecha}</span>
                <span className="h-2.5 bg-muted">
                  <span className="block h-full bg-primary" style={{ width: `${(h.temas / TOTAL_TEMAS) * 100}%` }} />
                </span>
                <span className="w-16 text-right tabular">
                  <strong>{h.temas}</strong> / {TOTAL_TEMAS}
                </span>
              </li>
            ))}
          </ol>
          <p className="mt-4 text-body-sm">
            ¿Quieres el calendario tema a tema?{" "}
            <a href="/plan-de-estudio" className="font-semibold text-primary hover:underline">
              Hazte tu plan de estudio
            </a>{" "}
            y te lo mandamos por email.
          </p>
        </section>
      )}

      <CtaPlataforma
        titulo={nivel.ok ? "Mantén ese ritmo" : "Que cada semana cuente"}
        texto="En ProLince tienes los 23 temas, tests de cada uno para comprobar que lo has fijado y simulacros completos para las semanas de repaso."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he calculado mi ritmo: me quedan ${c.semanas} semanas y ${c.pendientes} temas. Me gustaría información para organizarme.`}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Te da tiempo?" texto="Calcula a qué ritmo tienes que estudiar para llegar al examen de Guardia Civil." />
        <button type="button" onClick={onCambiar} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Cambiar mis datos
        </button>
      </div>
    </div>
  );
}
