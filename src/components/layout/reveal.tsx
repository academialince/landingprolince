"use client";

import { useEffect, useRef, type ReactNode } from "react";

const RESPALDO_MS = 2500;

/**
 * Aparición al entrar en pantalla.
 *
 * El elemento se oculta desde JavaScript y solo si está fuera de la pantalla al montar: lo que
 * ya se ve no se toca, así que la primera pantalla no depende de la hidratación ni penaliza el
 * LCP. Si no hay JavaScript, no se oculta nada.
 *
 * La animación falla abriendo, por tres motivos que no son hipotéticos: un rastreador que
 * renderiza sin desplazarse, una captura de página completa y una impresión se quedarían con
 * el contenido a opacidad cero. De ahí el respaldo por tiempo y el `beforeprint`.
 */
export function Reveal({
  children,
  className,
  retardo = 0,
}: {
  children: ReactNode;
  className?: string;
  retardo?: number;
}) {
  const ref = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    if (el.getBoundingClientRect().top <= window.innerHeight * 0.9) return;

    el.dataset.reveal = "hidden";
    const mostrar = () => {
      el.dataset.reveal = "shown";
    };

    const observador = new IntersectionObserver(
      (entradas) => {
        if (entradas.some((e) => e.isIntersecting)) {
          mostrar();
          observador.disconnect();
        }
      },
      { rootMargin: "0px 0px 15% 0px" },
    );
    observador.observe(el);

    const temporizador = window.setTimeout(mostrar, RESPALDO_MS);
    window.addEventListener("beforeprint", mostrar);

    return () => {
      observador.disconnect();
      window.clearTimeout(temporizador);
      window.removeEventListener("beforeprint", mostrar);
    };
  }, []);

  return (
    <div
      ref={ref}
      className={className}
      style={retardo ? { transitionDelay: `${retardo}ms` } : undefined}
    >
      {children}
    </div>
  );
}
