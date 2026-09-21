"use client";

import { useEffect, useState } from "react";
import { Container } from "./container";
import type { Seccion } from "@/content/cursos";

/**
 * Submenú de anclas de la landing de curso. Verde, pegado bajo la cabecera y solo en escritorio:
 * en móvil ocuparía media pantalla y compite con el menú principal, así que allí se navega con
 * el scroll.
 *
 * La sección activa se resuelve con IntersectionObserver. Si no hay JavaScript, el submenú
 * sigue siendo una lista de enlaces que funcionan.
 */
export function SubmenuCurso({ secciones }: { secciones: Seccion[] }) {
  const [activa, setActiva] = useState<string | null>(null);

  useEffect(() => {
    const nodos = secciones
      .map((s) => document.getElementById(s.id))
      .filter((n): n is HTMLElement => Boolean(n));
    if (nodos.length === 0) return;

    const observador = new IntersectionObserver(
      (entradas) => {
        const visible = entradas
          .filter((e) => e.isIntersecting)
          .sort((a, b) => a.boundingClientRect.top - b.boundingClientRect.top)[0];
        if (visible) setActiva(visible.target.id);
      },
      { rootMargin: "-30% 0px -60% 0px" },
    );
    nodos.forEach((n) => observador.observe(n));
    return () => observador.disconnect();
  }, [secciones]);

  return (
    <div className="sticky top-[4.5rem] z-30 hidden border-b border-white/10 bg-primary lg:block">
      <Container>
        <nav aria-label="Secciones del curso">
          <ul className="flex items-center gap-1 overflow-x-auto">
            {secciones.map((s) => {
              const esActiva = activa === s.id;
              return (
                <li key={s.id}>
                  <a
                    href={`#${s.id}`}
                    aria-current={esActiva ? "true" : undefined}
                    className={`inline-flex h-12 items-center whitespace-nowrap border-b-2 px-4 text-body-sm font-semibold transition-colors hover:bg-white/10 focus-visible:bg-white/10 ${
                      esActiva
                        ? "border-white text-white"
                        : "border-transparent text-white/70 hover:text-white"
                    }`}
                  >
                    {s.etiqueta}
                  </a>
                </li>
              );
            })}
          </ul>
        </nav>
      </Container>
    </div>
  );
}
