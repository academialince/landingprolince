"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";
import { ArrowRight, Award, Info, Lightbulb, ListChecks, RotateCcw, Sparkles } from "lucide-react";
import { BotonCompartir, Comparativa, CtaPlataforma, FormularioLead, Portada, boton } from "@/components/captacion/ui";
import {
  DATOS_INICIALES,
  IDIOMAS,
  TOPES,
  calcularMeritos,
  deportes,
  empleos,
  nivelesIdioma,
  pesados,
  vias,
  type DatosMeritos,
} from "@/content/captacion/meritos";
import { CONVOCATORIA } from "@/content/captacion/datos-oficiales";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const RECURSO = "meritos";

type Fase = "inicio" | "opciones" | "datos" | "resultado";

const pts = (n: number) => n.toLocaleString("es-ES", { maximumFractionDigits: 2 });

function Chips<T extends string>({
  etiqueta,
  opciones,
  valor,
  onCambio,
  columnas = false,
}: {
  etiqueta: ReactNode;
  opciones: Record<T, string>;
  valor: T;
  onCambio: (v: T) => void;
  columnas?: boolean;
}) {
  return (
    <fieldset className="mt-5">
      <legend className="text-body-sm font-semibold">{etiqueta}</legend>
      <div className={`mt-2 grid gap-2 ${columnas ? "grid-cols-4" : ""}`}>
        {(Object.keys(opciones) as T[]).map((k) => (
          <button
            key={k}
            type="button"
            aria-pressed={valor === k}
            onClick={() => onCambio(k)}
            className={`min-h-12 border px-3 font-semibold transition-colors ${columnas ? "text-center" : "text-left"} ${
              valor === k ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
            }`}
          >
            {opciones[k]}
          </button>
        ))}
      </div>
    </fieldset>
  );
}

function Numero({ id, etiqueta, valor, max, onCambio }: { id: string; etiqueta: string; valor: number; max: number; onCambio: (n: number) => void }) {
  return (
    <label htmlFor={id} className="mt-5 grid gap-1.5">
      <span className="flex items-baseline justify-between text-body-sm font-semibold">
        {etiqueta}
        <span className="font-[family-name:var(--font-display)] text-3xl font-extrabold text-primary tabular">{valor}</span>
      </span>
      <input
        id={id}
        type="range"
        min={0}
        max={max}
        value={valor}
        onChange={(e) => onCambio(Number(e.target.value))}
        className="h-10 w-full accent-[var(--color-primary)]"
      />
    </label>
  );
}

const SiNo = { no: "No", si: "Sí" } as const;

function Bloque({ titulo, tope, children }: { titulo: string; tope: number; children: ReactNode }) {
  return (
    <section className="mt-8 border-t border-border pt-6">
      <h2 className="text-h3">
        {titulo} <span className="text-body-sm font-normal normal-case text-muted-foreground">· hasta {pts(tope)} puntos</span>
      </h2>
      {children}
    </section>
  );
}

export function CalculadoraMeritos({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [d, setD] = useState<DatosMeritos>(DATOS_INICIALES);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);
  const cambia = <K extends keyof DatosMeritos>(k: K, v: DatosMeritos[K]) => setD((x) => ({ ...x, [k]: v }));

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
          titulo="¿Cuántos puntos de méritos tienes?"
          entradilla={`El concurso de méritos suma hasta ${TOPES.total} puntos a tu nota final, y mucha gente deja puntos sin reclamar. Marca lo que tienes y te decimos cuántos puntos te da y cuáles son los más fáciles de conseguir antes de las instancias.`}
          puntos={[
            { icono: ListChecks, texto: `Con el baremo oficial de la convocatoria ${CONVOCATORIA.anio}` },
            { icono: Award, texto: "Titulación, idiomas, permisos, servicio y deporte" },
            { icono: Sparkles, texto: "Los puntos más baratos que te faltan" },
          ]}
          textoBoton="Calcular mis méritos"
          onEmpezar={() => setFase("opciones")}
        />
      )}

      {fase === "opciones" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <p className="text-eyebrow uppercase text-primary">Tus méritos</p>
          <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
            ¿Qué tienes?
          </h1>
          <p className="mt-3 text-muted-foreground">Marca solo lo que tendrás acreditado al terminar el plazo de instancias.</p>

          <Bloque titulo="Profesionales" tope={TOPES.profesionales}>
            <Chips etiqueta="¿Por qué vía te presentas?" opciones={vias} valor={d.via} onCambio={(v) => cambia("via", v)} />
            {d.via === "tropa" ? (
              <>
                <Numero id="anios" etiqueta="Años completos de servicio como militar" valor={d.anios} max={20} onCambio={(n) => cambia("anios", n)} />
                <Chips
                  etiqueta="Empleo máximo alcanzado"
                  opciones={{ ninguno: empleos.ninguno.nombre, cabo: empleos.cabo.nombre, cabo1: empleos.cabo1.nombre }}
                  valor={d.empleo}
                  onCambio={(v) => cambia("empleo", v)}
                />
              </>
            ) : (
              <>
                <Numero
                  id="anios"
                  etiqueta="Años completos en la Administración General del Estado (también como militar)"
                  valor={d.anios}
                  max={20}
                  onCambio={(n) => cambia("anios", n)}
                />
                <Numero
                  id="reservista"
                  etiqueta="Meses como reservista voluntario"
                  valor={d.mesesReservista}
                  max={120}
                  onCambio={(n) => cambia("mesesReservista", n)}
                />
              </>
            )}
          </Bloque>

          <Bloque titulo="Académicos" tope={TOPES.academicos}>
            <Chips
              etiqueta="¿Tienes el Bachillerato o un título superior (Técnico Superior, Grado, Máster…)?"
              opciones={SiNo}
              valor={d.titulacion ? "si" : "no"}
              onCambio={(v) => cambia("titulacion", v === "si")}
              columnas
            />
            <p className="mt-5 text-body-sm font-semibold">Idiomas con certificado oficial (EOI, Cambridge, Trinity, IELTS, DELF, Goethe…)</p>
            <div className="mt-2 grid gap-2">
              {IDIOMAS.map((idioma) => {
                const nivel = d.idiomas[idioma] ?? "no";
                return (
                  <div key={idioma} className="grid grid-cols-[6rem_1fr] items-center gap-2">
                    <span className="text-body-sm font-semibold capitalize">{idioma}</span>
                    <div className="grid grid-cols-4 gap-1.5" role="group" aria-label={`Nivel de ${idioma}`}>
                      {(Object.keys(nivelesIdioma) as (keyof typeof nivelesIdioma)[]).map((k) => (
                        <button
                          key={k}
                          type="button"
                          aria-pressed={nivel === k}
                          onClick={() => cambia("idiomas", { ...d.idiomas, [idioma]: k })}
                          className={`min-h-11 border text-body-sm font-semibold transition-colors ${
                            nivel === k ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
                          }`}
                        >
                          {nivelesIdioma[k].nombre}
                        </button>
                      ))}
                    </div>
                  </div>
                );
              })}
            </div>
          </Bloque>

          <Bloque titulo="Otros" tope={TOPES.otros}>
            <Chips etiqueta="¿Tienes el permiso A o A2 (moto)?" opciones={SiNo} valor={d.permisoA ? "si" : "no"} onCambio={(v) => cambia("permisoA", v === "si")} columnas />
            <Chips
              etiqueta="Permiso de camión o autobús"
              opciones={{ no: pesados.no.nombre, c: pesados.c.nombre, ce: pesados.ce.nombre }}
              valor={d.pesado}
              onCambio={(v) => cambia("pesado", v)}
            />
            <Chips
              etiqueta="Deportista de alto nivel (en los últimos cinco años)"
              opciones={{ no: deportes.no.nombre, a: deportes.a.nombre, b: deportes.b.nombre, c: deportes.c.nombre }}
              valor={d.deporte}
              onCambio={(v) => cambia("deporte", v)}
              columnas
            />
            {d.deporte !== "no" && (
              <Numero id="anios-deporte" etiqueta="Años completos con esa condición" valor={d.aniosDeporte} max={5} onCambio={(n) => cambia("aniosDeporte", n)} />
            )}
          </Bloque>

          <p className="mt-6 flex gap-2 text-body-sm text-muted-foreground">
            <Info size={16} className="mt-0.5 shrink-0" aria-hidden />
            Socorrismo, buceo, informática o cursos no puntúan: el baremo solo cuenta lo que aparece aquí.
          </p>
          <button type="button" onClick={() => setFase("datos")} className={`${boton} mt-8`}>
            Calcular mis puntos
            <ArrowRight size={19} aria-hidden />
          </button>
        </div>
      )}

      {fase === "datos" && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={d}
          etiqueta="Cálculo hecho"
          titulo="Tus puntos están calculados"
          texto={`Déjanos tus datos para verlos: tus puntos de méritos sobre ${TOPES.total}, el desglose por bloques y los puntos que aún puedes sumar antes de las instancias.`}
          textoBoton="Ver mis puntos"
          anticipo={
            <>
              <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold">••,•• / {TOPES.total}</p>
              <p className="mt-4 text-body-sm">Profesionales · Académicos · Otros · Lo que te falta</p>
            </>
          }
          onVolver={() => setFase("opciones")}
          textoVolver="Cambiar mis méritos"
          onListo={(r, nombre) => {
            setResultado({ nombre, comparativa: r.comparativa });
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && resultado && (
        <Resultado
          datos={d}
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
  datos,
  nombre,
  comparativa,
  registro,
  whatsapp,
  onCambiar,
}: {
  datos: DatosMeritos;
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onCambiar: () => void;
}) {
  const c = calcularMeritos(datos)!;
  const extra = c.mejoras.reduce((s, m) => s + m.puntos, 0);

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tus méritos</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, tienes…` : "Tienes…"}</p>
      <h1 data-foco tabIndex={-1} className="mt-1 outline-none">
        <span className="text-display-xl tabular">{pts(c.total)}</span>
        <span className="text-h2 text-muted-foreground"> / {TOPES.total} puntos</span>
      </h1>
      <p className="mt-2 text-muted-foreground">Se suman tal cual a tu nota final sobre 195.</p>

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      <section aria-labelledby="bloques" className="mt-8 grid gap-4">
        <h2 id="bloques" className="sr-only">
          Desglose por bloques
        </h2>
        {c.bloques.map((b) => (
          <div key={b.clave} className="border border-border bg-surface p-4">
            <div className="flex items-baseline justify-between gap-3">
              <h3 className="font-bold">{b.nombre}</h3>
              <p className="tabular">
                <strong className="text-lg">{pts(b.puntos)}</strong> <span className="text-muted-foreground">/ {pts(b.tope)}</span>
              </p>
            </div>
            <div className="mt-2 h-2.5 bg-muted" role="img" aria-label={`${pts(b.puntos)} de ${pts(b.tope)}`}>
              <div className="h-full bg-primary" style={{ width: `${(b.puntos / b.tope) * 100}%` }} />
            </div>
            {b.lineas.length > 0 ? (
              <ul className="mt-3 grid gap-1 text-body-sm text-muted-foreground">
                {b.lineas.map((l) => (
                  <li key={l.concepto} className="flex justify-between gap-3">
                    <span>{l.concepto}</span>
                    <span className="tabular">+{pts(l.puntos)}</span>
                  </li>
                ))}
              </ul>
            ) : (
              <p className="mt-3 text-body-sm text-muted-foreground">Nada en este bloque.</p>
            )}
            {b.recortado && <p className="mt-2 text-body-sm text-warning">Sumas {pts(b.bruto)}, pero el bloque tiene tope de {pts(b.tope)}.</p>}
          </div>
        ))}
      </section>

      {c.mejoras.length > 0 && (
        <section aria-labelledby="mejoras" className="hud-marco mt-8 border border-primary bg-surface p-5">
          <h2 id="mejoras" className="text-h3 flex items-center gap-2">
            <Lightbulb size={20} className="text-primary" aria-hidden />
            Puntos que aún puedes sumar
          </h2>
          <p className="mt-2 text-body-sm text-muted-foreground">
            De lo más asequible a lo que más cuesta. Con todo esto, hasta {pts(Math.min(TOPES.total, c.total + extra))} puntos.
          </p>
          <ol className="mt-4 grid gap-3">
            {c.mejoras.map((m) => (
              <li key={m.concepto} className="grid grid-cols-[auto_1fr] gap-3">
                <span className="grid h-9 min-w-14 place-items-center bg-primary px-2 font-[family-name:var(--font-display)] text-lg font-extrabold text-primary-fg tabular">
                  +{pts(m.puntos)}
                </span>
                <span>
                  <strong>{m.concepto}</strong>
                  <span className="block text-body-sm text-muted-foreground">{m.nota}</span>
                </span>
              </li>
            ))}
          </ol>
          <p className="mt-4 text-body-sm text-muted-foreground">
            Ojo: solo cuenta lo que tengas al acabar el plazo de instancias (15 días hábiles desde que se publica la convocatoria).
          </p>
        </section>
      )}

      <p className="mt-6 text-body-sm">
        ¿Quieres ver si con estos puntos entrarías?{" "}
        <a href="/nota-de-corte" className="font-semibold text-primary hover:underline">
          Calcula tu nota final
        </a>
        .
      </p>

      <CtaPlataforma
        titulo="Los méritos ayudan; el examen decide"
        texto="Los méritos dan como mucho 45 puntos; el examen, 150. En ProLince preparas conocimientos, inglés y psicotécnicos con temario, más de 20.000 preguntas y simulacros."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he calculado mis méritos y tengo ${pts(c.total)} puntos. Me gustaría información para preparar la oposición.`}
      />

      <p className="mt-6 text-[0.75rem] text-muted-foreground">
        Baremo del Apéndice I de la convocatoria {CONVOCATORIA.anio} ({CONVOCATORIA.boe}), según el art. 9 de la Orden PCI/155/2019. Si la
        convocatoria de 2027 lo cambia, actualizaremos la calculadora. La titulación de Filología o Traducción en un idioma de interés
        puntúa como idioma (9 puntos) y no como titulación.
      </p>

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="Calculadora de méritos" texto="Calcula tus puntos de méritos para la Guardia Civil: hay cosas que puntúan y no lo sabías." />
        <button type="button" onClick={onCambiar} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Cambiar mis méritos
        </button>
      </div>
    </div>
  );
}
