"use client";

import { useEffect, useId, useRef, useState } from "react";
import { ArrowRight, CircleCheck, CircleX, Dumbbell, RotateCcw, Ruler, Timer } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, boton, campo } from "@/components/captacion/ui";
import {
  evaluarFisicas,
  pruebaPorId,
  pruebas,
  tramoDeEdad,
  tramos,
  type IdPrueba,
  type MarcasFisicas,
  type Sexo,
} from "@/content/captacion/fisicas";
import { CONVOCATORIA } from "@/content/captacion/datos-oficiales";

const RECURSO = "fisicas";

type Fase = "inicio" | "marcas" | "datos" | "resultado";

/** 565 → «9:25»; 14.4 → «14,40 s»; 16 → «16». */
function formato(id: IdPrueba, v: number) {
  const p = pruebaPorId(id);
  if (p.tipo === "repeticiones") return `${v}`;
  if (id === "circuito") return `${v.toLocaleString("es-ES", { minimumFractionDigits: 2, maximumFractionDigits: 2 })} s`;
  const m = Math.floor(v / 60);
  const s = Math.round((v - m * 60) * 100) / 100;
  return `${m}:${s.toLocaleString("es-ES", { minimumIntegerDigits: 2, maximumFractionDigits: 2 })}`;
}

function margenTexto(id: IdPrueba, margen: number) {
  const p = pruebaPorId(id);
  const abs = Math.abs(margen);
  const cantidad =
    p.tipo === "repeticiones"
      ? `${abs} ${abs === 1 ? "repetición" : "repeticiones"}`
      : `${abs.toLocaleString("es-ES", { maximumFractionDigits: 2 })} s`;
  if (margen === 0) return "Justo en la marca";
  return margen > 0 ? `Te sobran ${cantidad}` : `Te faltan ${cantidad}`;
}

const numero = (v: string) => {
  const n = Number(v.replace(",", "."));
  return v.trim() === "" || !Number.isFinite(n) ? undefined : n;
};

export function CalculadoraFisicas({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [datos, setDatos] = useState<MarcasFisicas | null>(null);
  // Lo escrito en los campos vive aquí: al volver a «Cambiar mis marcas» sigue ahí.
  const [valores, setValores] = useState<Record<string, string>>({});
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
          titulo="¿Pasarías las pruebas físicas?"
          entradilla="Mete tus marcas de carrera, circuito, flexiones y natación, y mira si serías apto en cada prueba con los mínimos oficiales de tu edad y cuánto te sobra o te falta."
          puntos={[
            { icono: Ruler, texto: `Marcas oficiales de la convocatoria ${CONVOCATORIA.anio}` },
            { icono: Timer, texto: "Por sexo y tramo de edad" },
            { icono: Dumbbell, texto: "Si no sabes una marca, sáltala" },
          ]}
          textoBoton="Meter mis marcas"
          onEmpezar={() => setFase("marcas")}
        >
          <p className="mt-6 border-l-4 border-warning bg-surface px-4 py-3 text-body-sm text-muted-foreground">
            Son eliminatorias: no superar una sola prueba te deja fuera, aunque bordes el examen.
          </p>
        </Portada>
      )}

      {fase === "marcas" && (
        <FormularioMarcas
          inicial={datos}
          valores={valores}
          setValores={setValores}
          onListo={(d) => {
            setDatos(d);
            setFase("datos");
          }}
        />
      )}

      {fase === "datos" && datos && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={datos}
          etiqueta="Marcas comprobadas"
          titulo="¿Apto o no apto?"
          texto="Déjanos tus datos para ver tu resultado en cada prueba y cuánto te sobra o te falta para el mínimo de tu edad."
          textoBoton="Ver mi resultado"
          anticipo={
            <div className="grid gap-2">
              {pruebas.map((p) => (
                <div key={p.id} className="flex items-center justify-between border border-border px-3 py-2">
                  <span>{p.nombre}</span>
                  <span className="font-bold">•••••</span>
                </div>
              ))}
            </div>
          }
          onVolver={() => setFase("marcas")}
          textoVolver="Cambiar mis marcas"
          onListo={(_, n) => {
            setNombre(n);
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && datos && (
        <Resultado
          datos={datos}
          nombre={nombre}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={() => setFase("marcas")}
        />
      )}
    </div>
  );
}

/* ------------------------------------------------------------------ marcas */

function CampoMarca({
  id,
  valores,
  onCambio,
}: {
  id: IdPrueba;
  valores: Record<string, string>;
  onCambio: (clave: string, v: string) => void;
}) {
  const base = useId();
  const p = pruebaPorId(id);
  const conMinutos = id === "carrera" || id === "natacion";
  return (
    <fieldset className="border border-border bg-surface p-4">
      <legend className="sr-only">{p.nombre}</legend>
      <p className="font-bold" aria-hidden>
        {p.nombre}
      </p>
      <p className="mt-0.5 text-body-sm text-muted-foreground">{p.detalle}</p>
      <div className="mt-3 flex items-end gap-2">
        {conMinutos ? (
          <>
            <label className="grid flex-1 gap-1 text-body-sm font-semibold" htmlFor={`${base}-m`}>
              Minutos
              <input
                id={`${base}-m`}
                inputMode="numeric"
                placeholder={id === "carrera" ? "9" : "1"}
                value={valores[`${id}-m`] ?? ""}
                onChange={(e) => onCambio(`${id}-m`, e.target.value.replace(/\D/g, "").slice(0, 2))}
                className={campo}
              />
            </label>
            <span className="pb-3 text-xl font-bold">:</span>
            <label className="grid flex-1 gap-1 text-body-sm font-semibold" htmlFor={`${base}-s`}>
              Segundos
              <input
                id={`${base}-s`}
                inputMode="decimal"
                placeholder={id === "carrera" ? "40" : "10"}
                value={valores[`${id}-s`] ?? ""}
                onChange={(e) => onCambio(`${id}-s`, e.target.value.replace(/[^\d,.]/g, "").slice(0, 5))}
                className={campo}
              />
            </label>
          </>
        ) : (
          <label className="grid flex-1 gap-1 text-body-sm font-semibold" htmlFor={base}>
            {id === "circuito" ? "Segundos" : "Repeticiones seguidas"}
            <input
              id={base}
              inputMode={id === "circuito" ? "decimal" : "numeric"}
              placeholder={id === "circuito" ? "14,5" : "15"}
              value={valores[id] ?? ""}
              onChange={(e) =>
                onCambio(id, id === "circuito" ? e.target.value.replace(/[^\d,.]/g, "").slice(0, 5) : e.target.value.replace(/\D/g, "").slice(0, 3))
              }
              className={campo}
            />
          </label>
        )}
      </div>
    </fieldset>
  );
}

function FormularioMarcas({
  inicial,
  valores,
  setValores,
  onListo,
}: {
  inicial: MarcasFisicas | null;
  valores: Record<string, string>;
  setValores: (f: (v: Record<string, string>) => Record<string, string>) => void;
  onListo: (d: MarcasFisicas) => void;
}) {
  const [sexo, setSexo] = useState<Sexo | null>(inicial?.sexo ?? null);
  const [edad, setEdad] = useState(inicial ? String(inicial.edad) : "");
  const [error, setError] = useState<string | null>(null);

  const cambiar = (k: string, v: string) => setValores((vs) => ({ ...vs, [k]: v }));

  const enviar = () => {
    const e = Number(edad);
    if (!sexo) return setError("Elige hombre o mujer: las marcas mínimas son distintas.");
    if (!Number.isInteger(e) || e < 16 || e > 70) return setError("Escribe tu edad en años.");
    const marcas: MarcasFisicas["marcas"] = {};
    for (const id of ["carrera", "natacion"] as const) {
      const m = numero(valores[`${id}-m`] ?? "");
      const s = numero(valores[`${id}-s`] ?? "");
      if (m !== undefined || s !== undefined) {
        if ((s ?? 0) >= 60) return setError(`Revisa los segundos de ${pruebaPorId(id).nombre.toLowerCase()}: tienen que ser menos de 60.`);
        marcas[id] = (m ?? 0) * 60 + (s ?? 0);
      }
    }
    const circuito = numero(valores.circuito ?? "");
    if (circuito !== undefined) marcas.circuito = circuito;
    const ext = numero(valores.extensiones ?? "");
    if (ext !== undefined) marcas.extensiones = ext;
    if (Object.keys(marcas).length === 0) return setError("Mete al menos una marca.");
    const datos = { sexo, edad: e, marcas };
    if (!evaluarFisicas(datos)) return setError("Alguna marca no parece válida. Revísalas.");
    setError(null);
    onListo(datos);
  };

  const edadNum = Number(edad);

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tus marcas</p>
      <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
        ¿Cuánto haces ahora?
      </h1>
      <p className="mt-3 text-muted-foreground">Si no sabes alguna marca, déjala en blanco: calculamos con las que tengas.</p>

      <fieldset className="mt-6">
        <legend className="text-body-sm font-semibold">Sexo</legend>
        <div className="mt-2 grid grid-cols-2 gap-2">
          {(["hombre", "mujer"] as const).map((s) => (
            <button
              key={s}
              type="button"
              aria-pressed={sexo === s}
              onClick={() => setSexo(s)}
              className={`min-h-13 border font-semibold capitalize transition-colors ${
                sexo === s ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
              }`}
            >
              {s}
            </button>
          ))}
        </div>
      </fieldset>

      <label className="mt-4 grid gap-1.5 text-body-sm font-semibold" htmlFor="edad-fisicas">
        Edad
        <input
          id="edad-fisicas"
          inputMode="numeric"
          placeholder="25"
          value={edad}
          onChange={(e) => setEdad(e.target.value.replace(/\D/g, "").slice(0, 2))}
          className={campo}
        />
        {Number.isInteger(edadNum) && edadNum >= 16 && edadNum <= 70 && (
          <span className="font-normal text-muted-foreground">Tramo: {tramos[tramoDeEdad(edadNum)].toLowerCase()}</span>
        )}
      </label>

      <div className="mt-6 grid gap-3">
        {pruebas.map((p) => (
          <CampoMarca key={p.id} id={p.id} valores={valores} onCambio={cambiar} />
        ))}
      </div>

      {error && (
        <p role="alert" className="mt-4 bg-danger/10 px-3 py-2 text-body-sm text-danger">
          {error}
        </p>
      )}

      <button type="button" onClick={enviar} className={`${boton} mt-6`}>
        Comprobar mis marcas
        <ArrowRight size={19} aria-hidden />
      </button>
    </div>
  );
}

/* ------------------------------------------------------------------ resultado */

function Resultado({
  datos,
  nombre,
  registro,
  whatsapp,
  onRepetir,
}: {
  datos: MarcasFisicas;
  nombre: string;
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const r = evaluarFisicas(datos)!;
  const todas = r.aptas === r.total;
  const faltan = pruebas.length - r.total;

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">
        Resultado · {datos.sexo} · {tramos[r.tramo].toLowerCase()}
      </p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, en las pruebas serías…` : "En las pruebas serías…"}</p>
      <h1
        data-foco
        tabIndex={-1}
        className={`text-display-xl mt-1 flex items-center gap-3 outline-none ${todas ? "text-primary" : "text-warning"}`}
      >
        {todas ? <CircleCheck className="size-12 shrink-0" aria-hidden /> : <CircleX className="size-12 shrink-0" aria-hidden />}
        {todas ? "Apto" : "No apto"}
      </h1>
      <p className="mt-2 text-body-lg">
        Superas <strong>{r.aptas}</strong> de {r.total} {r.total === 1 ? "prueba" : "pruebas"}
        {faltan > 0 && <span className="text-muted-foreground"> ({faltan} sin marca)</span>}.
      </p>

      <ul className="mt-6 grid gap-3">
        {r.resultados.map((x) => {
          const p = pruebaPorId(x.id);
          return (
            <li key={x.id} className={`border-l-4 bg-surface p-4 ${x.apto ? "border-primary" : "border-warning"}`}>
              <div className="flex items-start justify-between gap-3">
                <p className="font-bold">{p.nombre}</p>
                <span
                  className={`shrink-0 px-2 py-0.5 font-[family-name:var(--font-hud)] text-xs font-bold uppercase ${
                    x.apto ? "bg-primary text-primary-fg" : "bg-warning text-black"
                  }`}
                >
                  {x.apto ? "Apto" : "No apto"}
                </span>
              </div>
              <dl className="mt-3 grid grid-cols-2 gap-2 text-body-sm">
                <div>
                  <dt className="text-muted-foreground">Tu marca</dt>
                  <dd className="font-[family-name:var(--font-display)] text-2xl font-extrabold tabular">{formato(x.id, x.marca)}</dd>
                </div>
                <div>
                  <dt className="text-muted-foreground">Mínimo</dt>
                  <dd className="font-[family-name:var(--font-display)] text-2xl font-extrabold tabular text-muted-foreground">
                    {formato(x.id, x.minimo)}
                  </dd>
                </div>
              </dl>
              <p className={`mt-2 text-body-sm font-bold ${x.apto ? "text-primary" : "text-warning"}`}>{margenTexto(x.id, x.margen)}</p>
              {p.intentos > 1 && (
                <p className="mt-1 text-[0.75rem] text-muted-foreground">En el examen hay {p.intentos} intentos.</p>
              )}
            </li>
          );
        })}
      </ul>

      <p className="mt-4 text-[0.75rem] text-muted-foreground">
        Marcas mínimas de la convocatoria {CONVOCATORIA.anio} ({CONVOCATORIA.boe}). El tramo se calcula con la edad que has indicado.
      </p>

      <CtaPlataforma
        titulo={todas ? "Llega al día de las pruebas con margen" : "Las físicas se entrenan con plan"}
        texto="En ProLince tienes la guía de pruebas físicas con un plan de entrenamiento por semanas para carrera, circuito, extensiones y natación, desde el primer mes y no al final."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he usado la calculadora de pruebas físicas y supero ${r.aptas} de ${r.total}. Me gustaría información para prepararlas.`}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Pasarías las pruebas físicas?" texto="Mira si pasarías las pruebas físicas de la Guardia Civil con tus marcas." />
        <button
          type="button"
          onClick={onRepetir}
          className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground"
        >
          <RotateCcw size={16} aria-hidden />
          Probar con otras marcas
        </button>
      </div>
    </div>
  );
}
