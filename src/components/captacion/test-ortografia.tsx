"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowLeft, ArrowRight, CircleCheck, CircleX, MousePointerClick, RotateCcw, SpellCheck, TriangleAlert } from "lucide-react";
import { BotonCompartir, Comparativa, CtaPlataforma, FormularioLead, Portada, Progreso, boton } from "@/components/captacion/ui";
import {
  MAX_ERRORES,
  NUM_FRASES,
  NUM_PALABRAS,
  corregirOrtografia,
  elegirFrases,
  frases,
  subrayadas,
  tieneFalta,
  type Frase,
} from "@/content/captacion/ortografia";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

const RECURSO = "ortografia";

type Fase = "inicio" | "test" | "datos" | "resultado";

export function TestOrtografia({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [elegidas, setElegidas] = useState<number[]>([]);
  const [marcas, setMarcas] = useState<boolean[][]>([]);
  const [indice, setIndice] = useState(0);
  const [resultado, setResultado] = useState<{ nombre: string; comparativa?: ResultadoLead["comparativa"] } | null>(null);
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, indice]);

  const empezar = () => {
    const idx = elegirFrases();
    setElegidas(idx);
    setMarcas(idx.map((f) => subrayadas(frases[f]).map(() => false)));
    setIndice(0);
    setResultado(null);
    setFase("test");
  };

  const respuestas = elegidas.map((f, i) => ({ f, m: marcas[i] }));

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Test gratis · Guardia Civil"
          titulo="¿Pasarías la prueba de ortografía?"
          entradilla={`Es eliminatoria: con ${MAX_ERRORES + 1} errores te quedas fuera, aunque bordes el resto del examen. Haz la prueba con el mismo formato del examen: ${NUM_FRASES} frases y ${NUM_PALABRAS} palabras subrayadas.`}
          puntos={[
            { icono: MousePointerClick, texto: "Toca las palabras que tengan falta" },
            { icono: TriangleAlert, texto: "Marcar una palabra correcta también es error" },
            { icono: SpellCheck, texto: "Apto o no apto, con la regla de cada fallo" },
          ]}
          textoBoton="Empezar el test"
          onEmpezar={empezar}
        />
      )}

      {fase === "test" && (
        <PantallaFrase
          key={indice}
          frase={frases[elegidas[indice]]}
          indice={indice}
          marcas={marcas[indice]}
          onMarcar={(i) =>
            setMarcas((ms) => ms.map((fila, k) => (k === indice ? fila.map((v, j) => (j === i ? !v : v)) : fila)))
          }
          onAtras={() => (indice === 0 ? setFase("inicio") : setIndice(indice - 1))}
          onSiguiente={() => (indice + 1 < NUM_FRASES ? setIndice(indice + 1) : setFase("datos"))}
        />
      )}

      {fase === "datos" && (
        <>
          <div className="pt-6 sm:pt-10">
            <Progreso total={NUM_FRASES} hechas={NUM_FRASES} />
          </div>
          <FormularioLead
            recurso={RECURSO}
            respuestas={respuestas}
            etiqueta="Test terminado"
            titulo="¿Apto o no apto?"
            texto="Déjanos tus datos para ver tu resultado: tus errores, si pasarías la prueba y la regla de cada palabra que has fallado."
            textoBoton="Ver si soy apto"
            anticipo={
              <>
                <p className="font-[family-name:var(--font-display)] text-5xl font-extrabold uppercase">•• apto</p>
                <p className="mt-3 text-body-sm">• errores de {NUM_PALABRAS} palabras</p>
                <p className="mt-3 text-body-sm">La regla de cada palabra que has fallado.</p>
              </>
            }
            onVolver={() => {
              setIndice(NUM_FRASES - 1);
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
          elegidas={elegidas}
          marcas={marcas}
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

/* ------------------------------------------------------------------ frase */

function PantallaFrase({
  frase,
  indice,
  marcas,
  onMarcar,
  onAtras,
  onSiguiente,
}: {
  frase: Frase;
  indice: number;
  marcas: boolean[];
  onMarcar: (i: number) => void;
  onAtras: () => void;
  onSiguiente: () => void;
}) {
  let n = -1;
  const marcadas = marcas.filter(Boolean).length;
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
          FRASE {indice + 1} / {NUM_FRASES}
        </span>
      </div>
      <div className="mt-3">
        <Progreso total={NUM_FRASES} hechas={indice} />
      </div>

      <h1 data-foco tabIndex={-1} className="text-eyebrow mt-8 uppercase text-muted-foreground outline-none">
        Toca las palabras subrayadas que tengan falta
      </h1>

      <p className="mt-5 border border-border bg-surface p-5 text-[1.35rem] leading-[2.4] sm:text-[1.5rem]">
        {frase.map((t, i) => {
          if (typeof t === "string") return <span key={i}>{t}</span>;
          n++;
          const k = n;
          const marcada = marcas[k];
          return (
            <button
              key={i}
              type="button"
              aria-pressed={marcada}
              aria-label={`${t.escrita}${marcada ? ", marcada con falta" : ""}`}
              onClick={() => onMarcar(k)}
              className={`mx-0.5 inline px-1.5 py-0.5 font-semibold decoration-2 transition-colors ${
                marcada
                  ? "bg-warning/20 text-warning line-through decoration-warning"
                  : "underline decoration-primary underline-offset-[6px] hover:bg-primary-soft"
              }`}
            >
              {t.escrita}
            </button>
          );
        })}
      </p>

      <p className="mt-4 text-body-sm text-muted-foreground" aria-live="polite">
        {marcadas === 0
          ? "No has marcado ninguna: si crees que todas están bien, sigue."
          : `${marcadas} ${marcadas === 1 ? "palabra marcada" : "palabras marcadas"} con falta. Vuelve a tocarla para desmarcarla.`}
      </p>

      <button type="button" onClick={onSiguiente} className={`${boton} mt-6`}>
        {indice + 1 < NUM_FRASES ? "Siguiente frase" : "Terminar"}
        <ArrowRight size={19} aria-hidden />
      </button>
    </div>
  );
}

/* ------------------------------------------------------------------ resultado */

function Resultado({
  elegidas,
  marcas,
  nombre,
  comparativa,
  registro,
  whatsapp,
  onRepetir,
}: {
  elegidas: number[];
  marcas: boolean[][];
  nombre: string;
  comparativa?: ResultadoLead["comparativa"];
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const c = corregirOrtografia(elegidas.map((f, i) => ({ f, m: marcas[i] })))!;
  const fallos = elegidas.flatMap((f, i) =>
    subrayadas(frases[f])
      .map((p, j) => ({ p, marcada: marcas[i][j] }))
      .filter(({ p, marcada }) => marcada !== tieneFalta(p)),
  );

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Resultado de ortografía</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, en el examen serías…` : "En el examen serías…"}</p>
      <h1
        data-foco
        tabIndex={-1}
        className={`text-display-xl mt-1 flex items-center gap-3 outline-none ${c.apto ? "text-primary" : "text-warning"}`}
      >
        {c.apto ? <CircleCheck className="size-12 shrink-0" aria-hidden /> : <CircleX className="size-12 shrink-0" aria-hidden />}
        {c.apto ? "Apto" : "No apto"}
      </h1>

      {/* Los 20 casilleros: cada palabra, acertada o fallada, y la línea de exclusión. */}
      <div className="mt-6" role="img" aria-label={`${c.errores} errores de ${NUM_PALABRAS}. Con ${MAX_ERRORES + 1} o más, no apto.`}>
        <div className="flex gap-1">
          {Array.from({ length: NUM_PALABRAS }, (_, i) => (
            <span key={i} className={`h-7 flex-1 ${i < c.errores ? "bg-warning" : "bg-primary"} ${i === MAX_ERRORES ? "ml-1.5" : ""}`} />
          ))}
        </div>
        <div className="mt-2 flex justify-between text-[0.7rem] font-bold uppercase text-muted-foreground">
          <span>{c.errores} {c.errores === 1 ? "error" : "errores"}</span>
          <span>Desde {MAX_ERRORES + 1} errores: fuera</span>
        </div>
      </div>

      <section aria-labelledby="veredicto" className={`mt-8 border-l-4 bg-surface p-5 ${c.apto ? "border-primary" : "border-warning"}`}>
        <h2 id="veredicto" className="text-h3">
          {c.errores === 0 ? "Sin un solo error" : c.apto ? `Apto, con ${c.errores} de ${MAX_ERRORES} errores posibles` : `${c.errores} errores: te quedarías fuera`}
        </h2>
        <p className="mt-3 text-muted-foreground">
          {c.apto
            ? c.errores >= 3
              ? "Pasarías, pero sin margen: en el examen hay además una prueba de gramática con el mismo límite, y los nervios suman errores."
              : "Buen nivel. En el examen hay además una prueba de gramática con el mismo límite de errores: no la descuides."
            : `En el examen, ${MAX_ERRORES + 1} errores te dejan fuera aunque saques una gran nota en conocimientos. La buena noticia: la ortografía se entrena, y rápido.`}
        </p>
      </section>

      {comparativa && <Comparativa total={comparativa.total} porDebajo={comparativa.porDebajo} />}

      {fallos.length > 0 && (
        <section aria-labelledby="reglas" className="mt-8">
          <h2 id="reglas" className="text-h3">
            Tus fallos y su regla
          </h2>
          <ul className="mt-4 grid gap-3">
            {fallos.map(({ p, marcada }, i) => (
              <li key={i} className="border border-border bg-surface p-4">
                <p className="font-semibold">
                  {tieneFalta(p) ? (
                    <>
                      <span className="text-warning line-through">{p.escrita}</span> → <span className="text-primary">{p.correcta}</span>
                      <span className="ml-2 text-body-sm font-normal text-muted-foreground">(no la marcaste)</span>
                    </>
                  ) : (
                    <>
                      <span className="text-primary">{p.escrita}</span>
                      <span className="ml-2 text-body-sm font-normal text-muted-foreground">
                        {marcada ? "(estaba bien escrita y la marcaste)" : ""}
                      </span>
                    </>
                  )}
                </p>
                {p.nota && <p className="mt-1.5 text-body-sm text-muted-foreground">{p.nota}</p>}
              </li>
            ))}
          </ul>
        </section>
      )}

      <CtaPlataforma
        titulo={c.apto ? "Que no se te escape en el examen" : "La ortografía se entrena"}
        texto="En ProLince tienes tests de ortografía y gramática con el formato del examen, para llegar con margen a una prueba que no perdona."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, he hecho el test de ortografía y he tenido ${c.errores} errores (${c.apto ? "apto" : "no apto"}). Me gustaría información para prepararla.`}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir
          titulo="¿Pasarías la prueba de ortografía?"
          texto={`He tenido ${c.errores} errores en el test de ortografía de Guardia Civil. ¿Cuántos tienes tú?`}
        />
        <button
          type="button"
          onClick={onRepetir}
          className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground"
        >
          <RotateCcw size={16} aria-hidden />
          Repetir con otras frases
        </button>
      </div>
    </div>
  );
}
