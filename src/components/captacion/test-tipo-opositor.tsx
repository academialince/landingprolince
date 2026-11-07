"use client";

import Link from "next/link";
import { useEffect, useRef, useState, useTransition, type FormEvent, type ReactNode } from "react";
import {
  ArrowLeft,
  ArrowRight,
  CalendarCheck,
  Check,
  Clock,
  Compass,
  Lock,
  MessageCircle,
  RotateCcw,
  Share2,
  Target,
  TriangleAlert,
  Zap,
} from "lucide-react";
import { guardarLead, type CampoLead, type ResultadoLead } from "@/app/(captacion)/acciones";
import { CAMPOS_UTM } from "@/content/captacion/recursos";
import { GraficoArana } from "@/components/captacion/grafico-arana";
import {
  calcularPerfil,
  calcularRasgos,
  ordenPerfiles,
  perfiles,
  preguntas,
  type ClavePerfil,
} from "@/content/captacion/tipo-opositor";
import { rutas } from "@/lib/links";

const RECURSO = "tipo-opositor";
const LETRAS = ["A", "B", "C", "D"];
const ICONOS: Record<ClavePerfil, typeof Zap> = {
  metodico: CalendarCheck,
  sprinter: Zap,
  explorador: Compass,
  perfeccionista: Target,
};

type Fase = "inicio" | "preguntas" | "datos" | "resultado";

const boton =
  "cta-button inline-flex min-h-14 w-full items-center justify-center gap-2 bg-primary px-6 font-bold text-primary-fg shadow-[0_8px_22px_color-mix(in_oklch,var(--color-primary)_22%,transparent)] transition-colors hover:bg-primary-hover active:bg-primary-active disabled:opacity-60 sm:w-auto";

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

function Progreso({ hechas }: { hechas: number }) {
  return (
    <div className="flex gap-1.5" aria-hidden>
      {preguntas.map((_, i) => (
        <span
          key={i}
          className={`h-1.5 flex-1 transition-colors duration-300 ${i < hechas ? "bg-primary" : "bg-muted"}`}
        />
      ))}
    </div>
  );
}

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
        <Progreso hechas={indice} />
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

const campo =
  "min-h-13 w-full border border-border-strong bg-surface px-3.5 text-base transition-colors focus:border-primary aria-invalid:border-danger";

function Grupo({
  id,
  etiqueta,
  error,
  ayuda,
  children,
}: {
  id: CampoLead;
  etiqueta: ReactNode;
  error?: string;
  ayuda?: string;
  children: ReactNode;
}) {
  return (
    <div className="grid content-start gap-1.5">
      <label htmlFor={id} className="text-body-sm font-semibold">
        {etiqueta}
      </label>
      {children}
      {error ? (
        <p id={`${id}-error`} className="text-body-sm text-danger">
          {error}
        </p>
      ) : (
        ayuda && <p className="text-body-sm text-muted-foreground">{ayuda}</p>
      )}
    </div>
  );
}

function PantallaDatos({
  respuestas,
  onVolver,
  onListo,
}: {
  respuestas: number[];
  onVolver: () => void;
  onListo: (perfil: ClavePerfil, nombre: string) => void;
}) {
  const [estado, setEstado] = useState<ResultadoLead | null>(null);
  const [enviando, iniciar] = useTransition();
  // Sin la casilla marcada no se puede ver el resultado: el botón queda bloqueado. El servidor
  // lo vuelve a exigir, y la tabla también, por si alguien se salta el formulario.
  const [acepta, setAcepta] = useState(false);

  const enviar = (evento: FormEvent<HTMLFormElement>) => {
    evento.preventDefault();
    const fd = new FormData(evento.currentTarget);
    // Los UTM del anuncio se leen de la URL al enviar: así no hace falta tocar el render.
    const params = new URLSearchParams(window.location.search);
    for (const c of CAMPOS_UTM) {
      const valor = params.get(c);
      if (valor) fd.set(c, valor);
    }
    const nombre = String(fd.get("nombre") ?? "").trim().split(/\s+/)[0] ?? "";
    iniciar(async () => {
      try {
        const r = await guardarLead(null, fd);
        if (r.ok && r.resultado && r.resultado in perfiles) onListo(r.resultado as ClavePerfil, nombre);
        else setEstado(r);
      } catch {
        setEstado({ ok: false, error: "No hay conexión. Revisa tu internet e inténtalo de nuevo." });
      }
    });
  };

  const e = estado?.errores ?? {};
  const v = estado?.valores ?? {};
  const props = (id: CampoLead) => ({
    id,
    name: id,
    "aria-invalid": e[id] ? true : undefined,
    "aria-describedby": e[id] ? `${id}-error` : undefined,
  });

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <Progreso hechas={preguntas.length} />

      <p className="mt-8 text-eyebrow uppercase text-primary">Análisis completado</p>
      <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
        Tu perfil está listo
      </h1>
      <p className="mt-3 text-muted-foreground">
        Déjanos tus datos para verlo: tu perfil de opositor, tu punto débil y un plan de 3 pasos
        para tu forma de estudiar.
      </p>

      {/* Anticipo bloqueado: se ve que el resultado existe, no cuál es. */}
      <div aria-hidden className="relative mt-6 overflow-hidden border border-border bg-surface p-5">
        <div className="select-none blur-[6px]">
          <p className="font-[family-name:var(--font-display)] text-3xl font-extrabold uppercase">El ••••••••</p>
          <div className="mt-4 grid gap-2">
            {[72, 38, 25, 12].map((w) => (
              <div key={w} className="h-2.5 bg-primary" style={{ width: `${w}%` }} />
            ))}
          </div>
          <p className="mt-4 text-body-sm">Tus fortalezas, tu punto débil y tu plan de 3 pasos.</p>
        </div>
        <div className="absolute inset-0 grid place-items-center bg-background/30">
          <span className="inline-flex items-center gap-2 border border-border-strong bg-surface px-3 py-2 text-body-sm font-bold">
            <Lock size={15} className="text-primary" />
            Resultado bloqueado
          </span>
        </div>
      </div>

      <form onSubmit={enviar} noValidate className="mt-6 grid gap-4">
        <input type="hidden" name="recurso" value={RECURSO} />
        <input type="hidden" name="respuestas" value={JSON.stringify(respuestas)} />

        <Grupo id="nombre" etiqueta="Nombre" error={e.nombre}>
          <input {...props("nombre")} type="text" required autoComplete="given-name" defaultValue={v.nombre} className={campo} />
        </Grupo>

        <Grupo id="email" etiqueta="Correo electrónico" error={e.email}>
          <input
            {...props("email")}
            type="email"
            required
            autoComplete="email"
            inputMode="email"
            defaultValue={v.email}
            className={campo}
          />
        </Grupo>

        <Grupo
          id="telefono"
          etiqueta={
            <>
              Teléfono <span className="font-normal text-muted-foreground">(opcional)</span>
            </>
          }
          error={e.telefono}
          ayuda="Si quieres que te escribamos por WhatsApp para ayudarte con tu plan."
        >
          <input
            {...props("telefono")}
            type="tel"
            autoComplete="tel"
            inputMode="tel"
            placeholder="600 000 000"
            defaultValue={v.telefono}
            className={campo}
          />
        </Grupo>

        {/* Trampa para bots: fuera de la vista y del orden de tabulación. */}
        <div aria-hidden className="absolute -left-[9999px] h-px w-px overflow-hidden">
          <label htmlFor="web">No rellenes este campo</label>
          <input id="web" name="web" type="text" tabIndex={-1} autoComplete="off" />
        </div>

        <div>
          <label className="flex gap-3 text-body-sm">
            <input
              name="acepta_privacidad"
              type="checkbox"
              required
              checked={acepta}
              onChange={(ev) => setAcepta(ev.target.checked)}
              aria-invalid={e.acepta_privacidad ? true : undefined}
              aria-describedby={e.acepta_privacidad ? "acepta_privacidad-error" : undefined}
              className="mt-0.5 size-5 shrink-0 accent-[var(--color-primary)]"
            />
            <span className="text-muted-foreground">
              Acepto que ProLince guarde estos datos para enseñarme mi resultado y contactarme sobre
              la preparación de la oposición, según la{" "}
              <Link href={rutas.privacidad} target="_blank" className="font-semibold text-primary hover:underline">
                política de privacidad
              </Link>
              .
            </span>
          </label>
          {e.acepta_privacidad && (
            <p id="acepta_privacidad-error" className="mt-1.5 text-body-sm text-danger">
              {e.acepta_privacidad}
            </p>
          )}
        </div>

        {estado?.error && (
          <p role="alert" className="bg-danger/10 px-3 py-2 text-body-sm text-danger">
            {estado.error}
          </p>
        )}
        {Object.keys(e).length > 0 && (
          <p role="alert" className="sr-only">
            Revisa los campos marcados.
          </p>
        )}

        {!acepta && (
          <p className="text-center text-body-sm text-muted-foreground">
            Marca la casilla de privacidad para ver tu resultado.
          </p>
        )}
        <button
          type="submit"
          disabled={enviando || !acepta}
          className={`${boton} mt-2 disabled:cursor-not-allowed disabled:opacity-40 disabled:shadow-none`}
        >
          {enviando ? "Calculando…" : "Ver mi resultado"}
          {!enviando && <ArrowRight size={19} aria-hidden />}
        </button>
        <button
          type="button"
          onClick={onVolver}
          className="justify-self-center text-body-sm font-semibold text-muted-foreground hover:text-foreground"
        >
          Revisar mis respuestas
        </button>
      </form>
    </div>
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
  const [copiado, setCopiado] = useState(false);

  const compartir = async () => {
    const url = window.location.origin + window.location.pathname;
    const texto = `Me ha salido «${p.nombre}». ¿Qué tipo de opositor eres tú?`;
    try {
      if (navigator.share) {
        await navigator.share({ title: "¿Qué tipo de opositor eres?", text: texto, url });
        return;
      }
      await navigator.clipboard.writeText(`${texto} ${url}`);
      setCopiado(true);
      window.setTimeout(() => setCopiado(false), 2500);
    } catch {
      /* el usuario canceló o el navegador no deja: no hay nada que hacer */
    }
  };

  const mensajeWhatsapp = `Hola, he hecho el test y me ha salido «${p.nombre}». Me gustaría que me ayudarais con mi plan.`;

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

      <section aria-labelledby="siguiente" className="hud-marco mt-10 border border-primary bg-primary-soft p-6">
        <h2 id="siguiente" className="text-h3 text-primary-soft-fg">Pon tu plan en marcha</h2>
        <p className="mt-3 text-primary-soft-fg">{p.enProlince}</p>
        <div className="mt-5 grid gap-3 sm:flex sm:flex-wrap">
          <a href={registro} className={boton}>
            Probar ProLince 7 días gratis
            <ArrowRight size={19} aria-hidden />
          </a>
          {whatsapp && (
            <a
              href={`https://wa.me/${whatsapp}?text=${encodeURIComponent(mensajeWhatsapp)}`}
              target="_blank"
              rel="noopener noreferrer"
              className="cta-button inline-flex min-h-14 items-center justify-center gap-2 border border-primary px-6 font-bold text-primary transition-colors hover:bg-primary hover:text-primary-fg"
            >
              <MessageCircle size={19} aria-hidden />
              Escríbenos por WhatsApp
            </a>
          )}
        </div>
      </section>

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <button type="button" onClick={compartir} className="inline-flex min-h-11 items-center gap-2 text-primary hover:underline">
          <Share2 size={16} aria-hidden />
          {copiado ? "Enlace copiado" : "Compártelo con tu compañero de estudio"}
        </button>
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
