"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowRight, Info, MapPin, RotateCcw, ShieldCheck, Wallet } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, boton } from "@/components/captacion/ui";
import {
  calcularSueldo,
  destinos,
  especialidades,
  type DatosSueldo,
  type Destino,
  type Especialidad,
} from "@/content/captacion/sueldo";

const RECURSO = "sueldo";

type Fase = "inicio" | "opciones" | "datos" | "resultado";

// En español, los números de cuatro cifras no llevan punto por defecto; aquí se fuerza («2.590 €»).
const euros = (n: number) => n.toLocaleString("es-ES", { maximumFractionDigits: 0, useGrouping: "always" }) + " €";
const rango = ([a, b]: [number, number]) => (Math.round(a) === Math.round(b) ? euros(a) : `${euros(a)} – ${euros(b)}`);

function Chips<T extends string>({
  etiqueta,
  opciones,
  valor,
  onCambio,
}: {
  etiqueta: string;
  opciones: Record<T, { nombre: string }>;
  valor: T;
  onCambio: (v: T) => void;
}) {
  return (
    <fieldset className="mt-6">
      <legend className="text-body-sm font-semibold">{etiqueta}</legend>
      <div className="mt-2 grid gap-2">
        {(Object.keys(opciones) as T[]).map((k) => (
          <button
            key={k}
            type="button"
            aria-pressed={valor === k}
            onClick={() => onCambio(k)}
            className={`min-h-12 border px-4 text-left font-semibold transition-colors ${
              valor === k ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
            }`}
          >
            {opciones[k].nombre}
          </button>
        ))}
      </div>
    </fieldset>
  );
}

export function CalculadoraSueldo({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [datos, setDatos] = useState<DatosSueldo>({ destino: "peninsula", especialidad: "ninguna", anios: 0 });
  const [nombre, setNombre] = useState("");
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
          etiqueta="Calculadora gratis · Guardia Civil"
          titulo="¿Cuánto cobra un guardia civil?"
          entradilla="Elige destino, especialidad y años de servicio, y mira el sueldo bruto aproximado de un guardia en 2026, desglosado concepto a concepto."
          puntos={[
            { icono: Wallet, texto: "Con las tablas de retribuciones de 2026" },
            { icono: MapPin, texto: "Según destino y especialidad" },
            { icono: ShieldCheck, texto: "Te decimos qué es oficial y qué es aproximado" },
          ]}
          textoBoton="Calcular mi sueldo"
          onEmpezar={() => setFase("opciones")}
        />
      )}

      {fase === "opciones" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <p className="text-eyebrow uppercase text-primary">Tu situación</p>
          <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
            ¿Dónde y cómo?
          </h1>

          <Chips etiqueta="Destino" opciones={destinos} valor={datos.destino} onCambio={(destino: Destino) => setDatos({ ...datos, destino })} />
          <Chips
            etiqueta="Especialidad"
            opciones={especialidades}
            valor={datos.especialidad}
            onCambio={(especialidad: Especialidad) => setDatos({ ...datos, especialidad })}
          />

          <label className="mt-6 grid gap-2 text-body-sm font-semibold" htmlFor="anios">
            <span>
              Años de servicio: <strong className="text-primary tabular">{datos.anios === 0 ? "recién salido de la academia" : datos.anios}</strong>
            </span>
            <input
              id="anios"
              type="range"
              min={0}
              max={30}
              step={1}
              value={datos.anios}
              onChange={(e) => setDatos({ ...datos, anios: Number(e.target.value) })}
              className="h-10 w-full accent-[var(--color-primary)]"
            />
            <span className="font-normal text-muted-foreground">Cada 3 años se cobra un trienio.</span>
          </label>

          <button type="button" onClick={() => setFase("datos")} className={`${boton} mt-8`}>
            Calcular
            <ArrowRight size={19} aria-hidden />
          </button>
        </div>
      )}

      {fase === "datos" && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={datos}
          etiqueta="Cálculo listo"
          titulo="Tu sueldo está calculado"
          texto="Déjanos tus datos para verlo: el bruto mensual y anual, desglosado concepto a concepto."
          textoBoton="Ver el sueldo"
          anticipo={
            <>
              <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">•.••• €</p>
              <p className="mt-2 text-body-sm">brutos al mes · ••.••• € al año</p>
              <div className="mt-4 flex h-4 gap-0.5">
                <span className="w-[45%] bg-primary" />
                <span className="w-[25%] bg-primary/70" />
                <span className="w-[30%] bg-primary/40" />
              </div>
            </>
          }
          onVolver={() => setFase("opciones")}
          textoVolver="Cambiar destino o especialidad"
          onListo={(_, n) => {
            setNombre(n);
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && (
        <Resultado datos={datos} nombre={nombre} registro={registro} whatsapp={whatsapp} onRepetir={() => setFase("opciones")} />
      )}
    </div>
  );
}

function Resultado({
  datos,
  nombre,
  registro,
  whatsapp,
  onRepetir,
}: {
  datos: DatosSueldo;
  nombre: string;
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const s = calcularSueldo(datos)!;
  const total = s.mensual[1];
  const tonos = ["bg-primary", "bg-primary/80", "bg-primary/60", "bg-primary/45", "bg-primary/30", "bg-primary/20"];

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">
        Guardia · {destinos[datos.destino].nombre} · {datos.anios === 0 ? "recién salido" : `${datos.anios} años`}
      </p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, cobrarías alrededor de…` : "Cobrarías alrededor de…"}</p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        <span className="text-display-l tabular">{rango(s.mensual)}</span>
      </h1>
      <p className="mt-1 text-body-lg text-muted-foreground">brutos al mes, en 12 pagas</p>
      <p className="mt-3 text-body-lg">
        <strong className="tabular">{rango(s.anual)}</strong> brutos al año, con las 2 pagas extra de{" "}
        <span className="tabular">{rango(s.extra)}</span>.
      </p>

      {/* Composición del bruto mensual: una barra apilada, con hueco de 2 px entre tramos. */}
      <section aria-labelledby="desglose" className="mt-8 border border-border bg-surface p-5">
        <h2 id="desglose" className="text-eyebrow uppercase text-muted-foreground">
          De qué se compone al mes
        </h2>
        <div className="mt-4 flex h-5 gap-0.5" aria-hidden>
          {s.lineas.map((l, i) => (
            <span key={l.concepto} className={tonos[i % tonos.length]} style={{ width: `${(l.importe[1] / total) * 100}%` }} />
          ))}
        </div>
        <table className="mt-4 w-full text-body-sm">
          <caption className="sr-only">Desglose del sueldo bruto mensual</caption>
          <tbody>
            {s.lineas.map((l, i) => (
              <tr key={l.concepto} className="border-b border-border last:border-0">
                <th scope="row" className="py-2.5 pr-2 text-left font-normal">
                  <span className="flex items-center gap-2">
                    <span className={`size-2.5 shrink-0 ${tonos[i % tonos.length]}`} aria-hidden />
                    {l.concepto}
                  </span>
                  {!l.oficial && <span className="ml-4.5 text-[0.7rem] font-bold uppercase text-warning">aproximado</span>}
                </th>
                <td className="py-2.5 text-right font-semibold tabular whitespace-nowrap">{rango(l.importe)}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </section>

      <section className="mt-6 flex gap-3 border-l-4 border-border-strong bg-surface p-4 text-body-sm text-muted-foreground">
        <Info size={18} className="mt-0.5 shrink-0" aria-hidden />
        <div className="grid gap-2">
          <p>
            Es <strong className="text-foreground">bruto</strong>: el neto depende de tu IRPF y de los descuentos de cada nómina.
          </p>
          <p>
            Sueldo base, destino, trienios y pagas extra salen de las tablas oficiales de retribuciones de 2026. El complemento
            específico y los pluses marcados como aproximados no tienen una cuantía oficial publicada: son estimaciones. Además,
            muchos puestos cobran un complemento propio que no se incluye aquí.
          </p>
          {destinos[datos.destino].nota && <p>{destinos[datos.destino].nota}</p>}
        </div>
      </section>

      <CtaPlataforma
        titulo="El primer paso es la plaza"
        texto="En ProLince preparas el examen de acceso con temario, más de 20.000 preguntas y simulacros con la corrección real. Pruébalo gratis y mira si es para ti."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp="Hola, he visto la calculadora de sueldo de guardia civil y me gustaría información para preparar la oposición."
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Cuánto cobra un guardia civil?" texto="Mira cuánto cobra un guardia civil según destino y especialidad." />
        <button
          type="button"
          onClick={onRepetir}
          className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground"
        >
          <RotateCcw size={16} aria-hidden />
          Probar otro destino
        </button>
      </div>
    </div>
  );
}
