"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowLeft, ArrowRight, CircleAlert, CircleCheck, CircleX, ClipboardCheck, Clock, Ruler } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, Progreso, boton, campo } from "@/components/captacion/ui";
import { ANIO_OBJETIVO, evaluarRequisitos, requisitos, type Estado } from "@/content/captacion/requisitos";
import { CONVOCATORIA } from "@/content/captacion/datos-oficiales";

const RECURSO = "requisitos";
const PASOS = requisitos.length + 1; // año de nacimiento + el resto

type Fase = "inicio" | "preguntas" | "datos" | "resultado";

const ICONO: Record<Estado, typeof CircleCheck> = { ok: CircleCheck, condicion: CircleAlert, no: CircleX };
const COLOR: Record<Estado, string> = { ok: "text-primary", condicion: "text-warning", no: "text-[oklch(0.68_0.2_27)]" };
const BORDE: Record<Estado, string> = { ok: "border-primary", condicion: "border-warning", no: "border-[oklch(0.68_0.2_27)]" };

export function ComprobadorRequisitos({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [paso, setPaso] = useState(0);
  const [nacimiento, setNacimiento] = useState("");
  const [respuestas, setRespuestas] = useState<Record<string, string>>({});
  const [nombre, setNombre] = useState("");
  const [error, setError] = useState<string | null>(null);
  const raiz = useRef<HTMLDivElement>(null);
  const avanzando = useRef(false);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, paso]);

  const siguiente = () => (paso + 1 < PASOS ? setPaso(paso + 1) : setFase("datos"));
  const datos = { nacimiento: Number(nacimiento), ...respuestas };

  const elegir = (id: string, valor: string) => {
    if (avanzando.current) return;
    avanzando.current = true;
    setRespuestas((r) => ({ ...r, [id]: valor }));
    window.setTimeout(() => {
      avanzando.current = false;
      siguiente();
    }, 220);
  };

  const r = paso > 0 ? requisitos[paso - 1] : null;

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Comprobador gratis · Guardia Civil"
          titulo="¿Puedes presentarte?"
          entradilla="Edad, estudios, carné, nacionalidad, antecedentes y tatuajes: comprueba en un minuto si cumples los requisitos para opositar a la Guardia Civil."
          puntos={[
            { icono: Clock, texto: "7 preguntas, menos de un minuto" },
            { icono: ClipboardCheck, texto: `Requisitos de la convocatoria ${CONVOCATORIA.anio}` },
            { icono: Ruler, texto: "Spoiler: ya no se exige estatura mínima" },
          ]}
          textoBoton="Comprobar si puedo"
          onEmpezar={() => {
            setPaso(0);
            setFase("preguntas");
          }}
        />
      )}

      {fase === "preguntas" && (
        <div className="pt-6 pb-12 sm:pt-10" key={paso}>
          <div className="flex items-center justify-between text-body-sm">
            <button
              type="button"
              onClick={() => (paso === 0 ? setFase("inicio") : setPaso(paso - 1))}
              className="-ml-2 inline-flex min-h-10 items-center gap-1.5 px-2 font-semibold text-muted-foreground hover:text-foreground"
            >
              <ArrowLeft size={16} aria-hidden />
              Atrás
            </button>
            <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-primary tabular">
              {String(paso + 1).padStart(2, "0")} / {String(PASOS).padStart(2, "0")}
            </span>
          </div>
          <div className="mt-3">
            <Progreso total={PASOS} hechas={paso} />
          </div>

          {paso === 0 ? (
            <>
              <h1 data-foco tabIndex={-1} className="mt-8 text-[1.45rem] leading-snug font-bold outline-none sm:text-[1.7rem]">
                ¿En qué año naciste?
              </h1>
              <p className="mt-2 text-body-sm text-muted-foreground">
                Hay que cumplir 18 años y no cumplir 41 durante el año de la convocatoria.
              </p>
              <input
                aria-label="Año de nacimiento"
                inputMode="numeric"
                placeholder="2000"
                value={nacimiento}
                onChange={(e) => setNacimiento(e.target.value.replace(/\D/g, "").slice(0, 4))}
                className={`${campo} mt-6 text-2xl font-bold tabular`}
              />
              {error && (
                <p role="alert" className="mt-2 text-body-sm text-danger">
                  {error}
                </p>
              )}
              <button
                type="button"
                className={`${boton} mt-6`}
                onClick={() => {
                  const n = Number(nacimiento);
                  if (!Number.isInteger(n) || n < 1940 || n > ANIO_OBJETIVO) return setError("Escribe tu año de nacimiento con cuatro cifras.");
                  setError(null);
                  siguiente();
                }}
              >
                Siguiente
                <ArrowRight size={19} aria-hidden />
              </button>
            </>
          ) : (
            r && (
              <>
                <h1 data-foco tabIndex={-1} className="mt-8 text-[1.45rem] leading-snug font-bold outline-none sm:text-[1.7rem]">
                  {r.pregunta}
                </h1>
                {r.ayuda && <p className="mt-2 text-body-sm text-muted-foreground">{r.ayuda}</p>}
                <div className="mt-6 grid gap-3" role="radiogroup" aria-label={r.pregunta}>
                  {r.opciones.map((o) => (
                    <button
                      key={o.valor}
                      type="button"
                      role="radio"
                      aria-checked={respuestas[r.id] === o.valor}
                      onClick={() => elegir(r.id, o.valor)}
                      className={`min-h-14 border px-4 py-3 text-left font-semibold transition-colors ${
                        respuestas[r.id] === o.valor ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
                      }`}
                    >
                      {o.texto}
                    </button>
                  ))}
                </div>
              </>
            )
          )}
        </div>
      )}

      {fase === "datos" && (
        <>
          <div className="pt-6 sm:pt-10">
            <Progreso total={PASOS} hechas={PASOS} />
          </div>
          <FormularioLead
            recurso={RECURSO}
            respuestas={datos}
            etiqueta="Comprobación hecha"
            titulo="¿Puedes presentarte?"
            texto="Déjanos tus datos para ver el resultado requisito a requisito, con lo que tendrías que resolver antes de que se abra el plazo."
            textoBoton="Ver si puedo presentarme"
            anticipo={
              <div className="grid gap-2">
                {["Edad", "Nacionalidad", "Estudios", "Carné B", "Antecedentes", "Tatuajes"].map((t) => (
                  <div key={t} className="flex items-center justify-between border border-border px-3 py-2">
                    <span>{t}</span>
                    <span className="font-bold">•••</span>
                  </div>
                ))}
              </div>
            }
            onVolver={() => {
              setPaso(PASOS - 1);
              setFase("preguntas");
            }}
            onListo={(_, n) => {
              setNombre(n);
              setFase("resultado");
            }}
          />
        </>
      )}

      {fase === "resultado" && (
        <Resultado
          datos={datos}
          nombre={nombre}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={() => {
            setPaso(0);
            setFase("preguntas");
          }}
        />
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
  datos: object;
  nombre: string;
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const r = evaluarRequisitos(datos)!;
  const titulo = { ok: "Puedes presentarte", condicion: "Puedes, con condiciones", no: "Hoy no podrías presentarte" }[r.estado];
  const texto = {
    ok: "Cumples todos los requisitos que nos has indicado. Lo siguiente es lo difícil: preparar el examen.",
    condicion: "Cumples, pero hay algo que tienes que tener resuelto el día en que acaba el plazo de solicitudes. Te lo marcamos abajo.",
    no: "Hay al menos un requisito que hoy no cumples. Mira abajo cuál es y si tiene solución.",
  }[r.estado];
  const Icono = ICONO[r.estado];

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Resultado · convocatoria {ANIO_OBJETIVO}</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}…` : ""}</p>
      <h1 data-foco tabIndex={-1} className={`text-display-l mt-1 flex items-center gap-3 outline-none ${COLOR[r.estado]}`}>
        <Icono className="size-11 shrink-0" aria-hidden />
        {titulo}
      </h1>
      <p className="mt-3 text-body-lg text-muted-foreground">{texto}</p>

      <ul className="mt-6 grid gap-3">
        {r.lineas.map((l) => {
          const I = ICONO[l.estado];
          return (
            <li key={l.id} className={`flex gap-3 border-l-4 bg-surface p-4 ${BORDE[l.estado]}`}>
              <I size={20} className={`mt-0.5 shrink-0 ${COLOR[l.estado]}`} aria-label={{ ok: "Cumple", condicion: "Con condición", no: "No cumple" }[l.estado]} />
              <div>
                <p className="font-bold">{l.titulo}</p>
                <p className="mt-1 text-body-sm text-muted-foreground">{l.detalle}</p>
              </div>
            </li>
          );
        })}
        <li className="flex gap-3 border-l-4 border-primary bg-surface p-4">
          <CircleCheck size={20} className="mt-0.5 shrink-0 text-primary" aria-label="Cumple" />
          <div>
            <p className="font-bold">Estatura</p>
            <p className="mt-1 text-body-sm text-muted-foreground">La convocatoria no exige una estatura mínima.</p>
          </div>
        </li>
      </ul>

      <p className="mt-4 text-[0.75rem] text-muted-foreground">
        Requisitos de la base 2.1 de la convocatoria {CONVOCATORIA.anio} ({CONVOCATORIA.boe}). La de {ANIO_OBJETIVO} aún no se ha
        publicado: la edad se calcula con la misma regla aplicada a {ANIO_OBJETIVO}. Además, hay que superar el reconocimiento médico y
        comprometerse a portar armas.
      </p>

      <CtaPlataforma
        titulo={r.estado === "no" ? "Cuando lo resuelvas, empieza con ventaja" : "Ahora toca prepararlo"}
        texto="En ProLince tienes el temario, más de 20.000 preguntas, simulacros con la corrección real y un plan de estudio por semanas. Pruébalo gratis."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp="Hola, he comprobado los requisitos para la Guardia Civil y me gustaría información para preparar la oposición."
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Puedes presentarte a Guardia Civil?" texto="Comprueba en un minuto si cumples los requisitos para opositar a la Guardia Civil." />
        <button type="button" onClick={onRepetir} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          Cambiar mis respuestas
        </button>
      </div>
    </div>
  );
}
