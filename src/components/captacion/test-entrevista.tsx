"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowLeft, ClipboardList, Info, MessagesSquare, RotateCcw, ShieldCheck, Target, UserCheck } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, Progreso } from "@/components/captacion/ui";
import { GraficoArana } from "@/components/captacion/grafico-arana";
import { competencias, evaluarEntrevista, nivelesEntrevista, situaciones } from "@/content/captacion/entrevista";
import { CONVOCATORIA } from "@/content/captacion/datos-oficiales";

const RECURSO = "entrevista";

type Fase = "inicio" | "test" | "datos" | "resultado";

export function TestEntrevista({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [respuestas, setRespuestas] = useState<number[]>([]);
  const [nombre, setNombre] = useState("");
  const avanzando = useRef(false);
  const raiz = useRef<HTMLDivElement>(null);
  const indice = respuestas.length;

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase, indice]);

  const elegir = (i: number) => {
    // Evita el doble toque: una respuesta por pantalla.
    if (avanzando.current) return;
    avanzando.current = true;
    const nuevas = [...respuestas, i];
    window.setTimeout(() => {
      setRespuestas(nuevas);
      if (nuevas.length === situaciones.length) setFase("datos");
      avanzando.current = false;
    }, 180);
  };

  const s = situaciones[Math.min(indice, situaciones.length - 1)];

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Test gratis · Guardia Civil"
          titulo="¿Encajas en el perfil de la entrevista?"
          entradilla="La entrevista personal es eliminatoria y mucha gente llega sin saber qué miden. Responde a 12 situaciones del día a día y descubre cómo encajas en las seis competencias que valora el tribunal."
          puntos={[
            { icono: Target, texto: "Las 6 competencias oficiales de la convocatoria" },
            { icono: ClipboardList, texto: "12 situaciones, unos 3 minutos" },
            { icono: UserCheck, texto: "Consejos para preparar la tuya" },
          ]}
          textoBoton="Empezar el test"
          onEmpezar={() => {
            setRespuestas([]);
            setFase("test");
          }}
        >
          <p className="mt-6 border-l-4 border-primary bg-surface px-4 py-3 text-body-sm text-muted-foreground">
            Contesta lo que harías de verdad, no lo que crees que queda bien: es para conocerte, no para aprobar nada.
          </p>
        </Portada>
      )}

      {fase === "test" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <span className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.14em] text-muted-foreground tabular">
            {String(indice + 1).padStart(2, "0")} / {situaciones.length}
          </span>
          <div className="mt-3">
            <Progreso total={situaciones.length} hechas={indice} />
          </div>
          <p className="mt-6 text-eyebrow uppercase text-muted-foreground">¿Qué harías?</p>
          <h1
            key={s.id}
            data-foco
            tabIndex={-1}
            style={{ fontFamily: "var(--font-sans)", textTransform: "none", letterSpacing: "normal", fontWeight: 700 }}
            className="mt-3 text-[1.2rem] leading-snug outline-none sm:text-[1.35rem]"
          >
            {s.texto}
          </h1>
          <div className="mt-5 grid gap-2.5">
            {s.opciones.map((o, i) => (
              <button
                key={`${s.id}-${i}`}
                type="button"
                onClick={() => elegir(i)}
                className="min-h-14 border border-border-strong bg-surface px-4 py-3 text-left transition-colors hover:border-primary active:bg-primary-soft"
              >
                {o.texto}
              </button>
            ))}
          </div>
          {indice > 0 && (
            <button
              type="button"
              onClick={() => setRespuestas((r) => r.slice(0, -1))}
              className="mt-6 inline-flex min-h-11 items-center gap-1.5 text-body-sm font-semibold text-muted-foreground hover:text-foreground"
            >
              <ArrowLeft size={16} aria-hidden />
              Anterior
            </button>
          )}
        </div>
      )}

      {fase === "datos" && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={respuestas}
          etiqueta="Test completado"
          titulo="Tu perfil está listo"
          texto="Déjanos tus datos para verlo: cómo encajas en cada una de las seis competencias, cuál conviene trabajar y cómo preparar la entrevista."
          textoBoton="Ver mi perfil"
          anticipo={
            <>
              <p className="font-[family-name:var(--font-display)] text-3xl font-extrabold">Perfil de entrevista</p>
              <p className="mt-4 text-body-sm">Normas · Responsabilidad · Sacrificio · Autocontrol · Comunicación · Adaptación</p>
            </>
          }
          onVolver={() => {
            setRespuestas((r) => r.slice(0, -1));
            setFase("test");
          }}
          textoVolver="Cambiar mi última respuesta"
          onListo={(_, n) => {
            setNombre(n);
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && (
        <Resultado
          respuestas={respuestas}
          nombre={nombre}
          registro={registro}
          whatsapp={whatsapp}
          onRepetir={() => {
            setRespuestas([]);
            setFase("test");
          }}
        />
      )}
    </div>
  );
}

function Resultado({
  respuestas,
  nombre,
  registro,
  whatsapp,
  onRepetir,
}: {
  respuestas: number[];
  nombre: string;
  registro: string;
  whatsapp: string | null;
  onRepetir: () => void;
}) {
  const r = evaluarEntrevista(respuestas)!;
  const nivel = nivelesEntrevista[r.nivel];

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tu perfil de entrevista</p>
      <p className="mt-4 text-muted-foreground">{nombre ? `${nombre}, este es tu resultado` : "Este es tu resultado"}</p>
      <h1 data-foco tabIndex={-1} className="text-h2 mt-1 outline-none">
        {nivel.nombre}
      </h1>
      <p className="mt-3 text-muted-foreground">{nivel.texto}</p>

      <div className="mt-6 border border-border bg-surface p-3">
        <GraficoArana rasgos={r.porCompetencia.map((c) => ({ nombre: competencias[c.clave].corto, valor: c.valor }))} />
      </div>

      {r.aMejorar.length > 0 ? (
        <section aria-labelledby="mejorar" className="mt-8 grid gap-3">
          <h2 id="mejorar" className="text-h3">
            Qué trabajar antes de la entrevista
          </h2>
          {r.aMejorar.map((c) => (
            <div key={c} className="border-l-4 border-warning bg-surface p-4">
              <h3 className="font-bold">{competencias[c].nombre}</h3>
              <p className="mt-2 text-body-sm text-muted-foreground">{competencias[c].consejo}</p>
            </div>
          ))}
        </section>
      ) : (
        <p className="mt-8 border-l-4 border-primary bg-surface p-4 text-muted-foreground">
          Has respondido en la línea de las seis competencias. Ojo: en la entrevista real se busca coherencia, y las respuestas
          «perfectas» sin ejemplos detrás no convencen.
        </p>
      )}

      <section aria-labelledby="como-es" className="mt-8 border border-border bg-surface p-5">
        <h2 id="como-es" className="text-h3 flex items-center gap-2">
          <MessagesSquare size={20} className="text-primary" aria-hidden />
          Así es la entrevista
        </h2>
        <ul className="mt-4 grid gap-3 text-body-sm">
          <li className="flex gap-2">
            <ShieldCheck size={16} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            <span>
              <strong>Es eliminatoria:</strong> se califica «apto» o «no apto». Va al final, con las pruebas físicas y el reconocimiento
              médico.
            </span>
          </li>
          <li className="flex gap-2">
            <ShieldCheck size={16} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            <span>
              <strong>Mide seis competencias:</strong> {Object.values(competencias).map((c) => c.nombre.toLowerCase()).join(", ")}.
            </span>
          </li>
          <li className="flex gap-2">
            <ShieldCheck size={16} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            <span>
              <strong>Antes rellenas el BIODATA,</strong> un cuestionario sobre tu trayectoria que no puntúa pero sirve de base a la
              entrevista. Lo que digas en ella tiene que cuadrar con lo que pusiste.
            </span>
          </li>
          <li className="flex gap-2">
            <ShieldCheck size={16} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            <span>
              <strong>Es semiestructurada</strong> y siempre hay al menos un psicólogo. Pueden apoyarse en los tests de personalidad de la
              prueba psicotécnica.
            </span>
          </li>
          <li className="flex gap-2">
            <ShieldCheck size={16} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            <span>
              <strong>Lleva tu informe de vida laboral</strong> (y la hoja de servicios si eres militar).
            </span>
          </li>
        </ul>
        <p className="mt-4 text-[0.75rem] text-muted-foreground">
          Fuente: bases 6.1.2, 6.1.3 y 8.2 de la convocatoria {CONVOCATORIA.anio} ({CONVOCATORIA.boe}).
        </p>
      </section>

      <p className="mt-6 flex gap-2 text-body-sm text-muted-foreground">
        <Info size={16} className="mt-0.5 shrink-0" aria-hidden />
        Este test es orientativo y está hecho por ProLince para ayudarte a reflexionar. No reproduce la prueba oficial ni predice su
        resultado.
      </p>

      <CtaPlataforma
        titulo="Llega a la entrevista con la oposición aprobada"
        texto="Antes de la entrevista hay que pasar el examen. En ProLince tienes el temario, más de 20.000 preguntas, psicotécnicos y simulacros para llegar a la fase final."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp="Hola, he hecho el test de la entrevista personal. Me gustaría información para preparar la oposición."
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Encajas en el perfil de la entrevista?" texto="Test sobre las 6 competencias que mide la entrevista de Guardia Civil." />
        <button type="button" onClick={onRepetir} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Repetir el test
        </button>
      </div>
    </div>
  );
}
