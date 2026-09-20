"use client";

import { useRouter, useSearchParams } from "next/navigation";
import { useState } from "react";
import { supabaseNavegador } from "@/lib/supabase/client";

const campo =
  "min-h-11 w-full rounded-md border border-input bg-surface px-3 transition-colors focus:border-primary";

export function FormularioEntrar({ correoSugerido }: { correoSugerido: string }) {
  const router = useRouter();
  const params = useSearchParams();
  const [error, setError] = useState<string | null>(null);
  const [enviando, setEnviando] = useState(false);

  async function enviar(datos: FormData) {
    setEnviando(true);
    setError(null);

    const { error: fallo } = await supabaseNavegador().auth.signInWithPassword({
      email: String(datos.get("email") ?? "").trim(),
      password: String(datos.get("password") ?? ""),
    });

    if (fallo) {
      // Mensaje genérico a propósito: distinguir «usuario no existe» de «contraseña incorrecta»
      // es un oráculo para enumerar cuentas.
      setError("No hemos podido entrar con esos datos.");
      setEnviando(false);
      return;
    }

    router.replace(params.get("desde") ?? "/admin");
    router.refresh();
  }

  return (
    <form action={enviar} className="mt-8 grid gap-4">
      <div className="grid gap-1.5">
        <label htmlFor="email" className="text-body-sm font-semibold">
          Correo
        </label>
        <input
          id="email"
          name="email"
          type="email"
          required
          autoComplete="username"
          defaultValue={correoSugerido}
          className={campo}
        />
      </div>

      <div className="grid gap-1.5">
        <label htmlFor="password" className="text-body-sm font-semibold">
          Contraseña
        </label>
        <input
          id="password"
          name="password"
          type="password"
          required
          autoComplete="current-password"
          className={campo}
        />
      </div>

      {error && (
        <p role="alert" className="rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger">
          {error}
        </p>
      )}

      <button
        type="submit"
        disabled={enviando}
        className="min-h-11 rounded-md bg-primary px-4 font-bold text-primary-fg transition-colors hover:bg-primary-hover disabled:opacity-60"
      >
        {enviando ? "Entrando…" : "Entrar"}
      </button>
    </form>
  );
}
