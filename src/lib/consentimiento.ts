"use client";

import { useSyncExternalStore } from "react";
import { COOKIE_CONSENTIMIENTO, DIAS_CONSENTIMIENTO, VERSION_CONSENTIMIENTO, type Categoria } from "@/content/cookies";

/**
 * Estado del consentimiento de cookies. Se guarda en una cookie propia (necesaria) y se observa
 * con un evento, así el aviso, el panel y los scripts condicionados se enteran a la vez.
 */
export type Consentimiento = { v: number; fecha: string; analitica: boolean; marketing: boolean };

const EVENTO = "prolince:consentimiento";
export const EVENTO_ABRIR_PANEL = "prolince:configurar-cookies";

function leer(): Consentimiento | null {
  const fila = document.cookie.split("; ").find((c) => c.startsWith(`${COOKIE_CONSENTIMIENTO}=`));
  if (!fila) return null;
  try {
    const valor = JSON.parse(decodeURIComponent(fila.slice(COOKIE_CONSENTIMIENTO.length + 1))) as Consentimiento;
    return valor.v === VERSION_CONSENTIMIENTO ? valor : null;
  } catch {
    return null;
  }
}

// useSyncExternalStore necesita la misma referencia mientras no cambie: se cachea por texto.
let cacheTexto: string | undefined;
let cacheValor: Consentimiento | null = null;
function instantanea(): Consentimiento | null {
  const texto = document.cookie;
  if (texto !== cacheTexto) {
    cacheTexto = texto;
    cacheValor = leer();
  }
  return cacheValor;
}

export function guardarConsentimiento(eleccion: { analitica: boolean; marketing: boolean }) {
  const valor: Consentimiento = { v: VERSION_CONSENTIMIENTO, fecha: new Date().toISOString(), ...eleccion };
  const seguro = location.protocol === "https:" ? "; Secure" : "";
  document.cookie = `${COOKIE_CONSENTIMIENTO}=${encodeURIComponent(JSON.stringify(valor))}; Max-Age=${DIAS_CONSENTIMIENTO * 86400}; Path=/; SameSite=Lax${seguro}`;
  window.dispatchEvent(new Event(EVENTO));
}

function suscribir(aviso: () => void) {
  window.addEventListener(EVENTO, aviso);
  return () => window.removeEventListener(EVENTO, aviso);
}

/**
 * `undefined` en el servidor y durante la hidratación (aún no se sabe), `null` si no ha elegido,
 * o su elección.
 */
export function useConsentimiento(): Consentimiento | null | undefined {
  return useSyncExternalStore(suscribir, instantanea, () => undefined);
}

export function permitido(c: Consentimiento | null | undefined, categoria: Categoria) {
  if (categoria === "necesarias") return true;
  return Boolean(c?.[categoria]);
}

export function abrirPanelCookies() {
  window.dispatchEvent(new Event(EVENTO_ABRIR_PANEL));
}
