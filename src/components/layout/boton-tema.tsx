"use client";

import { useSyncExternalStore } from "react";
import { Moon, Sun } from "lucide-react";

export type Tema = "oscuro" | "claro";
const CLAVE = "prolince-tema";

/**
 * Script que se ejecuta antes de pintar la página: aplica el tema guardado al contenedor
 * `.tactico` para que no haya un destello del tema contrario al cargar. Por defecto, oscuro.
 */
export const scriptTema = `(function(){try{var t=localStorage.getItem("${CLAVE}");var e=document.currentScript&&document.currentScript.parentElement;if(e&&(t==="claro"||t==="oscuro"))e.setAttribute("data-tema",t);}catch(_){}})();`;

const raiz = () => document.querySelector<HTMLElement>(".tactico");

/** El tema vive en el atributo `data-tema` del contenedor: se lee y se observa de ahí. */
function suscribir(aviso: () => void) {
  const el = raiz();
  if (!el) return () => {};
  const observador = new MutationObserver(aviso);
  observador.observe(el, { attributes: true, attributeFilter: ["data-tema"] });
  return () => observador.disconnect();
}
const leer = (): Tema => (raiz()?.dataset.tema === "claro" ? "claro" : "oscuro");

/** Sol o luna: cambia entre el tema oscuro (por defecto) y el claro, y lo recuerda. */
export function BotonTema({ className = "" }: { className?: string }) {
  const tema = useSyncExternalStore(suscribir, leer, () => "oscuro" as Tema);

  const cambiar = () => {
    const siguiente: Tema = tema === "oscuro" ? "claro" : "oscuro";
    raiz()?.setAttribute("data-tema", siguiente);
    try {
      localStorage.setItem(CLAVE, siguiente);
    } catch {
      // sin almacenamiento (modo privado): el cambio vale para esta visita
    }
  };

  const aClaro = tema === "oscuro";
  return (
    <button
      type="button"
      onClick={cambiar}
      aria-label={aClaro ? "Cambiar a modo claro" : "Cambiar a modo oscuro"}
      title={aClaro ? "Modo claro" : "Modo oscuro"}
      className={`nav-link inline-grid size-10 place-items-center rounded-md text-foreground ${className}`}
    >
      {aClaro ? <Sun size={19} aria-hidden /> : <Moon size={19} aria-hidden />}
    </button>
  );
}
