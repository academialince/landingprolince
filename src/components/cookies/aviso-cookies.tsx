"use client";

import { useEffect, useRef, useState } from "react";
import Link from "next/link";
import { Cookie, X } from "lucide-react";
import { categorias, hayCookiesOpcionales } from "@/content/cookies";
import { EVENTO_ABRIR_PANEL, guardarConsentimiento, useConsentimiento } from "@/lib/consentimiento";
import { rutas } from "@/lib/links";

const boton =
  "inline-flex h-11 items-center justify-center rounded-md px-5 text-body-sm font-bold transition-colors focus-visible:outline-2 focus-visible:outline-offset-2";
const primario = `${boton} bg-primary text-primary-fg hover:bg-primary-hover`;
const secundario = `${boton} border border-border-strong text-foreground hover:border-primary hover:text-primary`;

/**
 * Aviso de cookies y panel de configuración. «Aceptar», «Rechazar» y «Configurar» tienen el mismo
 * peso visual, como pide la guía de la AEPD, y la elección se puede cambiar desde el pie.
 */
export function AvisoCookies() {
  return hayCookiesOpcionales ? <AvisoYPanel /> : null;
}

function AvisoYPanel() {
  const consentimiento = useConsentimiento();
  const panel = useRef<HTMLDialogElement>(null);
  const [eleccion, setEleccion] = useState({ analitica: false, marketing: false });

  const abrirPanel = () => {
    setEleccion({ analitica: Boolean(consentimiento?.analitica), marketing: Boolean(consentimiento?.marketing) });
    panel.current?.showModal();
  };

  // el enlace «Configurar cookies» del pie abre el panel desde fuera
  const abrirRef = useRef(abrirPanel);
  useEffect(() => {
    abrirRef.current = abrirPanel;
  });
  useEffect(() => {
    const abrir = () => abrirRef.current();
    window.addEventListener(EVENTO_ABRIR_PANEL, abrir);
    return () => window.removeEventListener(EVENTO_ABRIR_PANEL, abrir);
  }, []);

  const decidir = (e: { analitica: boolean; marketing: boolean }) => {
    guardarConsentimiento(e);
    panel.current?.close();
  };

  return (
    <>
      {consentimiento === null && (
        <section
          aria-label="Aviso de cookies"
          className="fixed inset-x-3 bottom-3 z-[60] mx-auto max-w-3xl rounded-xl border border-border-strong bg-surface p-5 text-foreground shadow-[0_24px_60px_-20px_rgba(0,0,0,0.6)] sm:inset-x-6 sm:bottom-6 sm:p-6"
        >
          <div className="flex gap-4">
            <Cookie size={24} aria-hidden className="mt-0.5 hidden shrink-0 text-primary sm:block" />
            <div className="min-w-0">
              <p className="font-bold">Tú decides sobre las cookies</p>
              <p className="mt-1.5 text-body-sm leading-[1.6] text-muted-foreground">
                Usamos las necesarias para que la web funcione. Con tu permiso, usaríamos también cookies de analítica y de
                marketing para mejorar la web y nuestras campañas. Puedes aceptarlas, rechazarlas o elegir cuáles.{" "}
                <Link href={rutas.cookies} className="font-semibold text-primary hover:underline">
                  Política de cookies
                </Link>
              </p>
              <div className="mt-4 grid gap-2 sm:flex sm:flex-wrap">
                <button type="button" className={primario} onClick={() => decidir({ analitica: true, marketing: true })}>
                  Aceptar todas
                </button>
                <button type="button" className={primario} onClick={() => decidir({ analitica: false, marketing: false })}>
                  Rechazar
                </button>
                <button type="button" className={secundario} onClick={abrirPanel}>
                  Configurar
                </button>
              </div>
            </div>
          </div>
        </section>
      )}

      <dialog
        ref={panel}
        aria-labelledby="titulo-cookies"
        onClick={(e) => e.target === panel.current && panel.current?.close()}
        className="m-auto w-[min(40rem,calc(100vw-2rem))] max-h-[calc(100dvh-2rem)] overflow-y-auto rounded-xl border border-border bg-surface p-0 text-foreground backdrop:bg-black/70"
      >
        <div className="flex items-center justify-between gap-4 border-b border-border px-6 py-4">
          <h2 id="titulo-cookies" className="text-h3">
            Configurar cookies
          </h2>
          <button type="button" onClick={() => panel.current?.close()} aria-label="Cerrar" className="grid size-10 place-items-center rounded-md hover:bg-surface-tinted">
            <X size={20} aria-hidden />
          </button>
        </div>

        <div className="grid gap-4 px-6 py-5">
          {categorias.map((c) => {
            const id = `cookies-${c.id}`;
            const activa = c.obligatoria ? true : eleccion[c.id as "analitica" | "marketing"];
            return (
              <div key={c.id} className="rounded-lg border border-border p-4">
                <div className="flex items-start justify-between gap-4">
                  <div className="min-w-0">
                    <label htmlFor={id} className="font-bold">
                      {c.nombre}
                    </label>
                    <p className="mt-1 text-body-sm text-muted-foreground">{c.descripcion}</p>
                    <p className="mt-2 text-body-sm text-muted-foreground">
                      {c.elementos.length
                        ? `Incluye: ${c.elementos.map((e) => e.nombre).join(", ")}.`
                        : "Ahora mismo no usamos ninguna herramienta de este tipo."}
                    </p>
                  </div>
                  <input
                    id={id}
                    type="checkbox"
                    role="switch"
                    checked={activa}
                    disabled={c.obligatoria}
                    onChange={(e) => setEleccion((s) => ({ ...s, [c.id]: e.target.checked }))}
                    className="mt-1 size-5 shrink-0 accent-[var(--color-primary)] disabled:opacity-60"
                    aria-describedby={`${id}-estado`}
                  />
                  <span id={`${id}-estado`} className="sr-only">
                    {c.obligatoria ? "Siempre activas" : activa ? "Activadas" : "Desactivadas"}
                  </span>
                </div>
              </div>
            );
          })}
        </div>

        <div className="grid gap-2 border-t border-border px-6 py-4 sm:flex sm:justify-end">
          <button type="button" className={secundario} onClick={() => decidir({ analitica: false, marketing: false })}>
            Rechazar todas
          </button>
          <button type="button" className={secundario} onClick={() => decidir(eleccion)}>
            Guardar mi elección
          </button>
          <button type="button" className={primario} onClick={() => decidir({ analitica: true, marketing: true })}>
            Aceptar todas
          </button>
        </div>
      </dialog>
    </>
  );
}
