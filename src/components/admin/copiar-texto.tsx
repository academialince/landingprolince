"use client";

import { useState } from "react";
import { Check, Copy } from "lucide-react";

export function CopiarTexto({ texto }: { texto: string }) {
  const [copiado, setCopiado] = useState(false);

  async function copiar() {
    await navigator.clipboard.writeText(texto);
    setCopiado(true);
    setTimeout(() => setCopiado(false), 2000);
  }

  return (
    <button
      type="button"
      onClick={copiar}
      className="inline-flex min-h-10 items-center gap-2 rounded-md border border-border-strong bg-surface px-3.5 text-body-sm font-bold transition-colors hover:bg-primary-soft"
    >
      {copiado ? <Check size={16} aria-hidden /> : <Copy size={16} aria-hidden />}
      {copiado ? "Copiado" : "Copiar texto"}
    </button>
  );
}
