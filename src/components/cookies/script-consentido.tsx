"use client";

import Script, { type ScriptProps } from "next/script";
import type { Categoria } from "@/content/cookies";
import { permitido, useConsentimiento } from "@/lib/consentimiento";

/**
 * Carga un script de terceros solo si la persona ha aceptado su categoría. Para Google Analytics,
 * el píxel de Meta, etc.: nunca con <Script> directo. Ejemplo:
 *
 *   <ScriptConsentido categoria="analitica" src="https://www.googletagmanager.com/gtag/js?id=G-XXXX" />
 *
 * Recuerda apuntar la herramienta y sus cookies en content/cookies.ts y subir la versión.
 */
export function ScriptConsentido({ categoria, ...props }: ScriptProps & { categoria: Categoria }) {
  const consentimiento = useConsentimiento();
  if (!permitido(consentimiento, categoria)) return null;
  return <Script strategy="afterInteractive" {...props} />;
}
