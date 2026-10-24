"use client";

import { abrirPanelCookies } from "@/lib/consentimiento";

/** Enlace del pie para volver a abrir el panel de cookies y cambiar la elección. */
export function BotonConfigurarCookies({ className = "" }: { className?: string }) {
  return (
    <button type="button" onClick={abrirPanelCookies} className={className}>
      Configurar cookies
    </button>
  );
}
