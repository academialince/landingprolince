"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowRight, CircleCheck, CircleX, History, RotateCcw, Sigma, Target, TriangleAlert } from "lucide-react";
import { BotonCompartir, Comparativa, CtaPlataforma, FormularioLead, Portada, boton } from "@/components/captacion/ui";
import { DATOS_INICIALES, calcularCorte, pruebasCorte, type DatosCorte } from "@/content/captacion/corte";
import { ESCALAS } from "@/content/captacion/datos-oficiales";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const RECURSO = "corte";

type Fase = "inicio" | "opciones" | "datos" | "resultado";

const fmt = (n: number) => n.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 });
const corto = (n: number) => n.toLocaleString("es-ES", { maximumFractionDigits: 2 });

/** Colores de cada parte de la nota, siempre en el mismo orden. */
const TONOS: Record<keyof DatosCorte, string> = {
  conocimientos: "bg-primary",
  ingles: "bg-[color-mix(in_oklch,var(--color-primary)_70%,white)]",
  psicotecnico: "bg-[color-mix(in_oklch,var(--color-primary)_45%,white)]",
  meritos: "bg-warning",
};

function Deslizador({
  id,
  nombre,
  valor,
  max,
  minimo,
  paso,
  onCambio,
}: {
  id: string;
  nombre: string;
  valor: number;
  max: number;
  minimo?: number;
  paso: number;
  onCambio: (n: number) => void;
}) {
  const bajo = minimo !== undefined && valor < minimo;
  return (
    <label htmlFor={id} className="mt-6 grid gap-1.5">
      <span className="flex items-baseline justify-between gap-3 text-body-sm font-semibold">
        <span>
          {nombre}
          <span className="block text-[0.8rem] font-normal text-muted-foreground">
            Sobre {max}
            {minimo !== undefined ? ` · mínimo ${minimo}` : " · sin mínimo"}
          </span>
        </span>
        <span className={`font-[family-name:var(--font-display)] text-3xl font-extrabold tabular ${bajo ? "text-warning" : "text-primary"}`}>
          {corto(valor)}
        </span>
      </span>
      <input
        id={id}
        type="range"
        min={0}
        max={max}
        step={paso}
        value={valor}
        onChange={(e) => onCambio(Number(e.target.value))}
        className="h-10 w-full accent-[var(--color-primary)]"
      />
      {bajo && <span className="text-body-sm text-warning">Por debajo del mínimo: con esta nota quedarías fuera.</span>}
    </label>
  );
}

export function CalculadoraCorte({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [datos, setDatos] = useState<DatosCorte>(DATOS_INICIALES);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase]);

  const calculo = calcularCorte(datos)!;

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Calculadora gratis · Guardia Civil"
          titulo="¿Qué nota de corte necesitas?"
          entradilla={`Pon la nota que crees que sacarías en cada prueba y tus puntos de méritos. Te calculamos tu nota final sobre ${ESCALAS.final} y la comparamos con la nota de corte real de las cinco últimas convocatorias.`}
          puntos={[
            { icono: Sigma, texto: `Tu nota final sobre ${ESCALAS.final}, como la calcula el tribunal` },
            { icono: History, texto: "Notas de corte reales de 2022 a 2026 (BOE)" },
            { icono: Target, texto: "Cuántos puntos te sobran o te faltan" },
          ]}
          textoBoton="Calcular mi nota final"
          onEmpezar={() => setFase("opciones")}
        />
      )}

      {fase === "opciones" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <p className="text-eyebrow uppercase text-primary">Tus notas previstas</p>
          <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
            ¿Cuánto sacarías?
          </h1>
          <p className="mt-3 text-muted-foreground">
            Sé realista: usa la nota de tus últimos simulacros. Si no sabes tus méritos, déjalo en 0.
          </p>
          {pruebasCorte.map((p) => (
            <Deslizador
              key={p.clave}
              id={p.clave}
              nombre={p.nombre}
              valor={datos[p.clave]}
              max={p.max}
              minimo={p.minimo}
              paso={p.paso}
              onCambio={(n) => setDatos((d) => ({ ...d, [p.clave]: n }))}
            />
          ))}
          <p className="mt-4 text-body-sm text-muted-foreground">
            La ortografía y la gramática son apto o no apto: no suman, pero hay que pasarlas.
          </p>
          <button type="button" onClick={() => setFase("datos")} className={`${boton} mt-8`}>
            Ver si entraría
            <ArrowRight size={19} aria-hidden />
          </button>
        </div>
      )}

      {fase === "datos" && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={datos}
          etiqueta="Cálculo hecho"
          titulo="Tu nota final está lista"
          texto={`Déjanos tus datos para verla: tu nota sobre ${ESCALAS.final}, si habrías entrado en cada una de las cinco últimas convocatorias y cuántos puntos te sobran o te faltan.`}
          textoBoton="Ver mi nota final"
          anticipo={
            <>
              <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">•••,•• / {ESCALAS.final}</p>
              <div className="mt-4 h-3 bg-primary" style={{ width: "58%" }} />
              <p className="mt-4 text-body-sm">2026 · 2025 · 2024 · 2023 · 2022</p>
            </>
          }
          onVolver={() => setFase("opciones")}
          textoVolver="Cambiar mis notas"
          onListo={(r, nombre) => {
            setResultado({ nombre, comparativa: r.comparativa });
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && resultado && (
        <Resultado
          calculo={calculo}
          nombre={resultado.nombre}
          comparativa={resultado.comparativa}
          registro={registro}
          whatsapp={whatsapp}
          onCambiar={() => setFase("opciones")}
        />
      )}
    </div>
  );
}

function Resultado({
  calculo: c,
  nombre,
  comparativa,
  registro,
  whatsapp,
  onCambiar,
}: {
  calculo: NonNullable<ReturnType<typeof calcularCorte>>;
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onCambiar: () => void;
}) {
  const fuera = c.excluido.length > 0;
  const veredicto = fuera
    ? {
        ok: false,
        titulo: "Hoy te quedarías fuera",
        texto: `No llegas al mínimo en ${c.excluido.map((p) => `${p.nombre.toLowerCase()} (${p.minimo})`).join(" y ")}. Por debajo del mínimo de una prueba no se suma la nota final: quedas excluido.`,
      }
    : c.entraEn === c.comparacion.length
      ? {
          ok: true,
          titulo: "Habrías entrado en las cinco",
          texto: `Con ${fmt(c.total)} superas incluso el corte más alto de estos años (${fmt(c.corteMasAlto)}). Ahora toca que el día del examen salga así.`,
        }
      : c.entraEn > 0
        ? {
            ok: true,
            titulo: `Habrías entrado en ${c.entraEn} de 5 convocatorias`,
            texto: `Para ir sobre seguro te faltan ${fmt(c.corteMasAlto - c.total)} puntos: es lo que te separa del corte más alto de estos años.`,
          }
        : {
            ok: false,
            titulo: "No habrías entrado en ninguna",
            texto: `Al último corte (${fmt(c.ultimo.corte)} en ${c.ultimo.anio}) te faltan ${fmt(-c.ultimo.diferencia)} puntos. Se recuperan sobre todo en conocimientos: cada 10 preguntas netas más son 10 puntos.`,
          };

  const partes = pruebasCorte.map((p) => ({ ...p, valor: c.datos[p.clave] }));

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tu nota final</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, con esas notas sacarías…` : "Con esas notas sacarías…"}</p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        <span className="text-display-xl tabular">{fmt(c.total)}</span>
        <span className="text-h2 text-muted-foreground"> / {ESCALAS.final}</span>
      </h1>

      {/* Barra apilada sobre 195 con el último corte marcado. */}
      <div
        className="mt-6"
        role="img"
        aria-label={`${partes.map((p) => `${p.nombre}: ${corto(p.valor)}`).join(", ")}. Último corte: ${fmt(c.ultimo.corte)}.`}
      >
        <div className="relative flex h-5 gap-0.5 bg-muted">
          {partes.map((p) => (
            <span key={p.clave} className={`h-full ${TONOS[p.clave]}`} style={{ width: `${(p.valor / ESCALAS.final) * 100}%` }} />
          ))}
          <span
            className="absolute -top-1.5 -bottom-1.5 w-0.5 bg-foreground"
            style={{ left: `${(c.ultimo.corte / ESCALAS.final) * 100}%` }}
            aria-hidden
          />
        </div>
        <div className="relative mt-2 h-5 text-[0.7rem] font-bold uppercase text-muted-foreground" aria-hidden>
          <span className="absolute left-0">0</span>
          <span className="absolute -translate-x-1/2 whitespace-nowrap" style={{ left: `${(c.ultimo.corte / ESCALAS.final) * 100}%` }}>
            Corte {c.ultimo.anio}
          </span>
          <span className="absolute right-0">{ESCALAS.final}</span>
        </div>
        <ul className="mt-3 flex flex-wrap gap-x-4 gap-y-1 text-body-sm">
          {partes.map((p) => (
            <li key={p.clave} className="inline-flex items-center gap-1.5">
              <span className={`size-3 ${TONOS[p.clave]}`} aria-hidden />
              {p.nombre} <strong className="tabular">{corto(p.valor)}</strong>
            </li>
          ))}
        </ul>
      </div>

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

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      <section aria-labelledby="anios" className="mt-8 border border-border bg-surface p-5">
        <h2 id="anios" className="text-h3">
          Convocatoria a convocatoria
        </h2>
        <table className="mt-4 w-full text-body-sm">
          <caption className="sr-only">Tu nota frente a la nota de corte del turno libre de cada año</caption>
          <thead>
            <tr className="text-left text-eyebrow uppercase text-muted-foreground">
              <th scope="col" className="pb-2 font-bold">Año</th>
              <th scope="col" className="pb-2 text-right font-bold">Corte</th>
              <th scope="col" className="pb-2 text-right font-bold">Tú</th>
            </tr>
          </thead>
          <tbody>
            {c.comparacion.map((a) => (
              <tr key={a.anio} className="border-t border-border">
                <th scope="row" className="py-2.5 text-left font-semibold tabular">
                  {a.anio}
                </th>
                <td className="py-2.5 text-right tabular">{fmt(a.corte)}</td>
                <td className={`py-2.5 text-right font-bold tabular ${a.entra ? "text-primary" : "text-warning"}`}>
                  <span className="inline-flex items-center gap-1.5">
                    {a.entra ? <CircleCheck size={15} aria-hidden /> : <CircleX size={15} aria-hidden />}
                    {a.diferencia >= 0 ? "+" : "−"}
                    {fmt(Math.abs(a.diferencia))}
                    <span className="sr-only">{a.entra ? "(entrarías)" : "(no entrarías)"}</span>
                  </span>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        <p className="mt-3 text-[0.75rem] text-muted-foreground">
          Nota final del último aspirante con plaza del turno libre, calculada con las resoluciones de propuestos del BOE (
          {c.comparacion.map((a) => a.boe).join(", ")}). Cada año cambian las plazas y la dificultad, así que es una
          referencia, no una garantía.
        </p>
      </section>

      {fuera && (
        <p className="mt-6 flex gap-2 border-l-4 border-warning bg-surface px-4 py-3 text-body-sm">
          <TriangleAlert size={18} className="mt-0.5 shrink-0 text-warning" aria-hidden />
          En la tabla no cuenta como «entrarías» ningún año, porque con un mínimo sin superar no hay nota final.
        </p>
      )}

      <CtaPlataforma
        titulo={veredicto.ok ? "Convierte esa previsión en una nota real" : "Esos puntos se pueden ganar"}
        texto="En ProLince preparas las tres pruebas que suman: temario y más de 20.000 preguntas de conocimientos, inglés y psicotécnicos, con simulacros para saber tu nota real semana a semana."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he calculado mi nota final y me sale un ${fmt(c.total)} sobre ${ESCALAS.final}. Me gustaría información para subirla.`}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Qué nota de corte necesitas?" texto="Calcula tu nota final de Guardia Civil y mira si habrías entrado estos años." />
        <button type="button" onClick={onCambiar} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Cambiar mis notas
        </button>
      </div>
    </div>
  );
}
