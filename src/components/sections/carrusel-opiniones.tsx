"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";
import { ChevronLeft, ChevronRight } from "lucide-react";

const INTERVALO_MS = 15_000;

/**
 * Carrusel de opiniones: una cada vez, cambia sola cada 15 segundos. Se para al pasar el ratón,
 * al enfocar con el teclado o si no se ve en pantalla; con «reducir
 * movimiento» no avanza solo. Las tarjetas llegan ya pintadas desde el servidor.
 */
export function CarruselOpiniones({ tarjetas, etiquetas }: { tarjetas: ReactNode[]; etiquetas: string[] }) {
  const [actual, setActual] = useState(0);
  const [encima, setEncima] = useState(false);
  const [visible, setVisible] = useState(false);
  const [quieto, setQuieto] = useState(false);
  const caja = useRef<HTMLDivElement>(null);
  const total = tarjetas.length;

  useEffect(() => {
    const el = caja.current;
    if (!el) return;
    const reducir = window.matchMedia("(prefers-reduced-motion: reduce)");
    const alCambiar = () => setQuieto(reducir.matches);
    reducir.addEventListener("change", alCambiar);
    const observador = new IntersectionObserver(([e]) => setVisible(e.isIntersecting));
    observador.observe(el);
    // estado inicial: se lee en el siguiente fotograma para no fijar estado durante el efecto
    const id = requestAnimationFrame(alCambiar);
    return () => {
      cancelAnimationFrame(id);
      reducir.removeEventListener("change", alCambiar);
      observador.disconnect();
    };
  }, []);

  const corriendo = total > 1 && visible && !encima && !quieto;
  useEffect(() => {
    if (!corriendo) return;
    const id = window.setTimeout(() => setActual((a) => (a + 1) % total), INTERVALO_MS);
    return () => window.clearTimeout(id);
  }, [corriendo, actual, total]);

  const ir = (i: number) => setActual(((i % total) + total) % total);

  return (
    <div
      ref={caja}
      role="region"
      aria-roledescription="carrusel"
      aria-label="Opiniones de alumnos"
      onMouseEnter={() => setEncima(true)}
      onMouseLeave={() => setEncima(false)}
      onFocus={() => setEncima(true)}
      onBlur={() => setEncima(false)}
      className="mx-auto max-w-3xl"
    >
      <div className="grid">
        {tarjetas.map((t, i) => (
          <div
            key={etiquetas[i]}
            role="group"
            aria-roledescription="opinión"
            aria-label={`${i + 1} de ${total}: ${etiquetas[i]}`}
            aria-hidden={i !== actual}
            inert={i !== actual}
            className={`col-start-1 row-start-1 transition-[opacity,transform] duration-500 ease-out ${
              i === actual ? "opacity-100" : "pointer-events-none translate-y-2 opacity-0"
            }`}
          >
            {t}
          </div>
        ))}
      </div>

      {total > 1 && (
        <div className="mt-6 flex items-center justify-center gap-4">
          <button type="button" onClick={() => ir(actual - 1)} aria-label="Opinión anterior" className="grid size-10 place-items-center rounded-md border border-border-strong hover:border-primary hover:text-primary">
            <ChevronLeft size={20} aria-hidden />
          </button>
          <div className="flex items-center gap-2">
            {tarjetas.map((_, i) => (
              <button
                key={etiquetas[i]}
                type="button"
                onClick={() => ir(i)}
                aria-label={`Ver la opinión ${i + 1}`}
                aria-current={i === actual}
                className="relative h-2 overflow-hidden rounded-full bg-border-strong transition-all"
                style={{ width: i === actual ? 40 : 8 }}
              >
                {/* barra de tiempo: se llena en los 15 s que dura cada opinión */}
                {i === actual && (
                  <span
                    key={`${actual}-${corriendo}`}
                    className="absolute inset-0 origin-left bg-primary"
                    style={{ animation: corriendo ? `carrusel-progreso ${INTERVALO_MS}ms linear forwards` : "none" }}
                  />
                )}
              </button>
            ))}
          </div>
          <button type="button" onClick={() => ir(actual + 1)} aria-label="Opinión siguiente" className="grid size-10 place-items-center rounded-md border border-border-strong hover:border-primary hover:text-primary">
            <ChevronRight size={20} aria-hidden />
          </button>
        </div>
      )}
    </div>
  );
}
