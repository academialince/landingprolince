"use client";

import { useRef, useState } from "react";
import Image from "next/image";
import { ChevronLeft, ChevronRight, Eye, X } from "lucide-react";
import type { Ejemplo } from "@/content/temarios";

const PAGINAS = 5;

/** Elige `n` páginas al azar y las devuelve en su orden del libro. */
function alAzar(lista: string[], n: number) {
  const copia = [...lista];
  for (let i = copia.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copia[i], copia[j]] = [copia[j], copia[i]];
  }
  return copia.slice(0, n).sort();
}

/**
 * «Ver ejemplo»: abre un `<dialog>` nativo (foco, Esc y fondo inerte de serie) con la portada del
 * libro y cinco páginas al azar del tema 5. Cada vez que se abre salen páginas distintas.
 */
export function VisorEjemplo({ ejemplo, nombre }: { ejemplo: Ejemplo | null; nombre: string }) {
  const dialogo = useRef<HTMLDialogElement>(null);
  const [paginas, setPaginas] = useState<string[]>([]);
  const [actual, setActual] = useState(0);

  if (!ejemplo) {
    return (
      <button
        type="button"
        disabled
        className="inline-flex h-11 w-full items-center justify-center gap-2 rounded-md border border-dashed border-border-strong text-body-sm font-semibold text-muted-foreground"
      >
        <Eye size={17} aria-hidden />
        Ejemplo próximamente
      </button>
    );
  }

  const abrir = () => {
    setPaginas([ejemplo.portada, ...alAzar(ejemplo.paginas, PAGINAS)]);
    setActual(0);
    dialogo.current?.showModal();
  };
  const cerrar = () => dialogo.current?.close();
  const mover = (d: number) => setActual((a) => Math.min(paginas.length - 1, Math.max(0, a + d)));

  return (
    <>
      <button
        type="button"
        onClick={abrir}
        className="inline-flex h-11 w-full items-center justify-center gap-2 rounded-md border border-border-strong text-body-sm font-semibold text-foreground transition-colors hover:border-primary hover:text-primary"
      >
        <Eye size={17} aria-hidden />
        Ver ejemplo
      </button>

      <dialog
        ref={dialogo}
        aria-label={`Ejemplo: ${nombre}`}
        onClick={(e) => e.target === dialogo.current && cerrar()}
        onKeyDown={(e) => {
          if (e.key === "ArrowRight") mover(1);
          if (e.key === "ArrowLeft") mover(-1);
        }}
        className="m-auto w-[min(56rem,calc(100vw-2rem))] max-h-[calc(100dvh-2rem)] overflow-hidden rounded-xl border border-border bg-surface p-0 text-foreground backdrop:bg-black/75"
      >
        <div className="flex items-center justify-between gap-4 border-b border-border px-5 py-3">
          <div className="min-w-0">
            <p className="truncate font-bold">{nombre}</p>
            <p className="truncate text-body-sm text-muted-foreground">
              {actual === 0 ? "Portada" : `${ejemplo.titulo} · página de muestra ${actual} de ${paginas.length - 1}`}
            </p>
          </div>
          <button type="button" onClick={cerrar} aria-label="Cerrar" className="grid size-10 shrink-0 place-items-center rounded-md hover:bg-surface-tinted">
            <X size={20} aria-hidden />
          </button>
        </div>

        <div className="relative bg-[oklch(0.3_0.01_150)]">
          {paginas[actual] && (
            <div className="relative mx-auto aspect-[1191/1684] h-[min(70dvh,52rem)] max-w-full">
              <Image
                key={paginas[actual]}
                src={paginas[actual]}
                alt={actual === 0 ? `Portada: ${nombre}` : `Página de muestra ${actual} del tema 5`}
                fill
                unoptimized
                className="object-contain"
              />
            </div>
          )}
          <button
            type="button"
            onClick={() => mover(-1)}
            disabled={actual === 0}
            aria-label="Página anterior"
            className="absolute left-3 top-1/2 grid size-11 -translate-y-1/2 place-items-center rounded-full bg-black/60 text-white disabled:opacity-30"
          >
            <ChevronLeft size={22} aria-hidden />
          </button>
          <button
            type="button"
            onClick={() => mover(1)}
            disabled={actual === paginas.length - 1}
            aria-label="Página siguiente"
            className="absolute right-3 top-1/2 grid size-11 -translate-y-1/2 place-items-center rounded-full bg-black/60 text-white disabled:opacity-30"
          >
            <ChevronRight size={22} aria-hidden />
          </button>
        </div>

        <div className="flex justify-center gap-2 py-3">
          {paginas.map((p, i) => (
            <button
              key={p}
              type="button"
              onClick={() => setActual(i)}
              aria-label={i === 0 ? "Portada" : `Página ${i}`}
              aria-current={i === actual}
              className={`h-2 rounded-full transition-all ${i === actual ? "w-6 bg-primary" : "w-2 bg-border-strong"}`}
            />
          ))}
        </div>
      </dialog>
    </>
  );
}
