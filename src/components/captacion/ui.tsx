"use client";

import Link from "next/link";
import { useEffect, useRef, useState, useTransition, type FormEvent, type ReactNode } from "react";
import { ArrowRight, Clock, Lock, MessageCircle, Share2 } from "lucide-react";
import { HistoriaResultado } from "./historia-resultado";
import { guardarLead, type CampoLead, type ResultadoLead } from "@/app/(captacion)/acciones";
import { CAMPOS_UTM } from "@/content/captacion/recursos";
import { rutas } from "@/lib/links";

/** Piezas comunes de las landing de captación. Cada landing pone su contenido; esto, la forma. */

export const boton =
  "cta-button inline-flex min-h-14 w-full items-center justify-center gap-2 bg-primary px-6 font-bold text-primary-fg shadow-[0_8px_22px_color-mix(in_oklch,var(--color-primary)_22%,transparent)] transition-colors hover:bg-primary-hover active:bg-primary-active disabled:cursor-not-allowed disabled:opacity-40 disabled:shadow-none sm:w-auto";

export const botonSecundario =
  "cta-button inline-flex min-h-14 items-center justify-center gap-2 border border-primary px-6 font-bold text-primary transition-colors hover:bg-primary hover:text-primary-fg";

export const campo =
  "min-h-13 w-full border border-border-strong bg-surface px-3.5 text-base transition-colors focus:border-primary aria-invalid:border-danger";

/** Barra de progreso en segmentos, uno por paso. */
export function Progreso({ total, hechas }: { total: number; hechas: number }) {
  return (
    <div className="flex gap-1" aria-hidden>
      {Array.from({ length: total }, (_, i) => (
        <span key={i} className={`h-1.5 flex-1 transition-colors duration-300 ${i < hechas ? "bg-primary" : "bg-muted"}`} />
      ))}
    </div>
  );
}

/** Portada estándar: etiqueta, titular, entradilla, ventajas y botón de empezar. */
export function Portada({
  etiqueta,
  titulo,
  entradilla,
  puntos,
  textoBoton,
  onEmpezar,
  children,
}: {
  etiqueta: string;
  titulo: string;
  entradilla: ReactNode;
  puntos: { icono: typeof ArrowRight; texto: string }[];
  textoBoton: string;
  onEmpezar: () => void;
  children?: ReactNode;
}) {
  return (
    <div className="pt-8 pb-12 sm:pt-14">
      <p className="text-eyebrow uppercase text-primary">{etiqueta}</p>
      <h1 className="text-display-l mt-4">{titulo}</h1>
      <p className="text-body-lg mt-5 text-muted-foreground">{entradilla}</p>
      <ul className="mt-6 grid gap-2 text-body-sm">
        {puntos.map(({ icono: Icono, texto }) => (
          <li key={texto} className="flex items-center gap-3">
            <span className="inline-grid size-7 shrink-0 place-items-center bg-primary-soft text-primary-soft-fg">
              <Icono size={15} aria-hidden />
            </span>
            {texto}
          </li>
        ))}
      </ul>
      {children}
      <button type="button" onClick={onEmpezar} className={`${boton} mt-8`}>
        {textoBoton}
        <ArrowRight size={19} aria-hidden />
      </button>
    </div>
  );
}

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

/** Anticipo difuminado del resultado: se ve que existe, no cuál es. */
export function AnticipoBloqueado({ children }: { children: ReactNode }) {
  return (
    <div aria-hidden className="relative mt-6 overflow-hidden border border-border bg-surface p-5">
      <div className="select-none blur-[6px]">{children}</div>
      <div className="absolute inset-0 grid place-items-center bg-background/30">
        <span className="inline-flex items-center gap-2 border border-border-strong bg-surface px-3 py-2 text-body-sm font-bold">
          <Lock size={15} className="text-primary" />
          Resultado bloqueado
        </span>
      </div>
    </div>
  );
}

/**
 * Formulario que pide los datos antes de enseñar el resultado. Envía el `recurso` y las
 * `respuestas`; el servidor calcula el resultado, guarda el lead y lo devuelve.
 */
export function FormularioLead({
  recurso,
  respuestas,
  etiqueta = "Análisis completado",
  titulo,
  texto,
  anticipo,
  textoBoton = "Ver mi resultado",
  ayudaTelefono = "Si quieres que te escribamos por WhatsApp para ayudarte con tu preparación.",
  finalidad = "enseñarme mi resultado y contactarme sobre la preparación de la oposición",
  extra,
  onVolver,
  textoVolver = "Revisar mis respuestas",
  onListo,
}: {
  recurso: string;
  respuestas: unknown;
  etiqueta?: string;
  titulo: string;
  texto: ReactNode;
  anticipo?: ReactNode;
  textoBoton?: string;
  ayudaTelefono?: string;
  finalidad?: string;
  /** Campos propios de la landing que van en el mismo formulario (p. ej. la fecha del examen). */
  extra?: ReactNode;
  onVolver?: () => void;
  textoVolver?: string;
  onListo: (r: ResultadoLead & { resultado: string }, nombre: string) => void;
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
        if (r.ok && r.resultado) onListo(r as ResultadoLead & { resultado: string }, nombre);
        else setEstado(r);
      } catch {
        setEstado({ ok: false, error: "No hay conexión. Revisa tu internet e inténtalo de nuevo." });
      }
    });
  };

  const e = estado?.errores ?? {};
  const props = (id: CampoLead) => ({
    id,
    name: id,
    "aria-invalid": e[id] ? true : undefined,
    "aria-describedby": e[id] ? `${id}-error` : undefined,
  });

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">{etiqueta}</p>
      <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
        {titulo}
      </h1>
      <p className="mt-3 text-muted-foreground">{texto}</p>

      {anticipo && <AnticipoBloqueado>{anticipo}</AnticipoBloqueado>}

      <form onSubmit={enviar} noValidate className="mt-6 grid gap-4">
        <input type="hidden" name="recurso" value={recurso} />
        <input type="hidden" name="respuestas" value={JSON.stringify(respuestas)} />

        {extra}

        <Grupo id="nombre" etiqueta="Nombre" error={e.nombre}>
          <input {...props("nombre")} type="text" required autoComplete="given-name" className={campo} />
        </Grupo>

        <Grupo id="email" etiqueta="Correo electrónico" error={e.email}>
          <input {...props("email")} type="email" required autoComplete="email" inputMode="email" className={campo} />
        </Grupo>

        <Grupo
          id="telefono"
          etiqueta={
            <>
              Teléfono <span className="font-normal text-muted-foreground">(opcional)</span>
            </>
          }
          error={e.telefono}
          ayuda={ayudaTelefono}
        >
          <input {...props("telefono")} type="tel" autoComplete="tel" inputMode="tel" placeholder="600 000 000" className={campo} />
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
              Acepto que ProLince guarde estos datos para {finalidad}, según la{" "}
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
        <button type="submit" disabled={enviando || !acepta} className={`${boton} mt-2`}>
          {enviando ? "Calculando…" : textoBoton}
          {!enviando && <ArrowRight size={19} aria-hidden />}
        </button>
        {onVolver && (
          <button
            type="button"
            onClick={onVolver}
            className="justify-self-center text-body-sm font-semibold text-muted-foreground hover:text-foreground"
          >
            {textoVolver}
          </button>
        )}
      </form>
    </div>
  );
}

/** Bloque final: probar la plataforma o escribir por WhatsApp. */
export function CtaPlataforma({
  titulo = "Pon tu plan en marcha",
  texto,
  registro,
  whatsapp,
  mensajeWhatsapp,
}: {
  titulo?: string;
  texto: ReactNode;
  registro: string;
  whatsapp: string | null;
  mensajeWhatsapp: string;
}) {
  return (
    <section aria-labelledby="siguiente" className="hud-marco mt-10 border border-primary bg-primary-soft p-6">
      <h2 id="siguiente" className="text-h3 text-primary-soft-fg">
        {titulo}
      </h2>
      <p className="mt-3 text-primary-soft-fg">{texto}</p>
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
            className={botonSecundario}
          >
            <MessageCircle size={19} aria-hidden />
            Escríbenos por WhatsApp
          </a>
        )}
      </div>
    </section>
  );
}

/** Comparte la landing (no el resultado ajeno): menú nativo del móvil o copia del enlace. */
export function BotonCompartir({ titulo, texto }: { titulo: string; texto: string }) {
  const [copiado, setCopiado] = useState(false);
  const compartir = async () => {
    const url = window.location.origin + window.location.pathname;
    try {
      if (navigator.share) {
        await navigator.share({ title: titulo, text: texto, url });
        return;
      }
      await navigator.clipboard.writeText(`${texto} ${url}`);
      setCopiado(true);
      window.setTimeout(() => setCopiado(false), 2500);
    } catch {
      /* el usuario canceló o el navegador no deja */
    }
  };
  return <div>
    <HistoriaResultado datos={{ titulo, texto }} />
    <button type="button" onClick={compartir} className="mt-3 inline-flex min-h-11 items-center gap-2 text-primary hover:underline">
      <Share2 size={16} aria-hidden />{copiado ? "Enlace copiado" : "Compartir enlace"}
    </button>
  </div>;
}


/** «Superas al X % de quienes lo han hecho», con datos reales y solo si hay muestra suficiente. */
export function Comparativa({ total, porDebajo, minimo = 20 }: { total: number; porDebajo: number; minimo?: number }) {
  if (total < minimo) return null;
  const pct = Math.round((porDebajo / total) * 100);
  return (
    <p className="mt-4 border-l-4 border-primary bg-surface px-4 py-3">
      Has superado al <strong className="tabular">{pct} %</strong> de las {total.toLocaleString("es-ES")} personas que lo
      han hecho.
    </p>
  );
}

/** mm:ss */
export const reloj = (s: number) => `${String(Math.floor(s / 60)).padStart(2, "0")}:${String(s % 60).padStart(2, "0")}`;

/** Cuenta atrás hasta `limite` (marca de tiempo). Avisa al llegar a cero; en el último minuto, en ámbar. */
export function Cronometro({ limite, onFin }: { limite: number; onFin: () => void }) {
  const [restante, setRestante] = useState(() => Math.max(0, Math.round((limite - Date.now()) / 1000)));
  const fin = useRef(onFin);
  useEffect(() => {
    fin.current = onFin;
  });
  useEffect(() => {
    const t = window.setInterval(() => {
      const s = Math.max(0, Math.round((limite - Date.now()) / 1000));
      setRestante(s);
      if (s === 0) {
        window.clearInterval(t);
        fin.current();
      }
    }, 250);
    return () => window.clearInterval(t);
  }, [limite]);
  const apurado = restante <= 60;
  return (
    <span
      className={`inline-flex items-center gap-1.5 font-[family-name:var(--font-hud)] text-sm font-bold tabular ${apurado ? "text-warning" : "text-primary"}`}
      aria-label={`Tiempo restante: ${Math.floor(restante / 60)} minutos y ${restante % 60} segundos`}
      role="timer"
    >
      <Clock size={15} aria-hidden className={apurado ? "hud-rec" : undefined} />
      {reloj(restante)}
    </span>
  );
}

