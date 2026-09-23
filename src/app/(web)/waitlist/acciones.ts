"use server";

import { z } from "zod";
import { supabasePublico } from "@/lib/supabase/publico";
import { valoresTiempo, valoresVeces } from "@/content/waitlist";

const esquema = z.object({
  nombre: z.string().trim().min(2, "Escribe tu nombre").max(120, "El nombre es demasiado largo"),
  tiempo_opositando: z.enum(valoresTiempo, { message: "Indica cuánto tiempo llevas opositando" }),
  veces_presentado: z.enum(valoresVeces, { message: "Indica cuántas veces te has presentado" }),
  edad: z.coerce
    .number({ message: "Escribe tu edad" })
    .int("Escribe tu edad en años")
    .min(14, "Revisa la edad")
    .max(99, "Revisa la edad"),
  email: z.string().trim().toLowerCase().email("Ese correo no parece válido").max(254),
  // Se aceptan espacios, guiones y paréntesis al escribir; se guarda solo el número.
  telefono: z
    .string()
    .transform((t) => t.replace(/[\s\-().]/g, ""))
    .pipe(z.string().regex(/^\+?[0-9]{9,15}$/, "Ese teléfono no parece válido")),
  acepta_privacidad: z.literal("on", { message: "Necesitamos tu consentimiento para guardar los datos" }),
});

export type Campo = keyof z.infer<typeof esquema>;

export type ResultadoWaitlist = {
  ok: boolean;
  error?: string;
  errores?: Partial<Record<Campo, string>>;
  valores?: Record<string, string>;
};

export async function apuntarseWaitlist(
  _previo: ResultadoWaitlist | null,
  datosFormulario: FormData,
): Promise<ResultadoWaitlist> {
  const bruto = Object.fromEntries(datosFormulario) as Record<string, string>;

  // Trampa para bots: el campo está oculto y una persona nunca lo rellena. Se responde como si
  // hubiera ido bien para no darles pista.
  if (bruto.web) return { ok: true };

  const validado = esquema.safeParse(bruto);
  if (!validado.success) {
    const errores: Partial<Record<Campo, string>> = {};
    for (const issue of validado.error.issues) {
      const campo = issue.path[0] as Campo;
      errores[campo] ??= issue.message;
    }
    return { ok: false, errores, valores: bruto };
  }

  const sb = supabasePublico();
  if (!sb) {
    return {
      ok: false,
      error: "La lista de espera no está disponible ahora mismo. Inténtalo más tarde.",
      valores: bruto,
    };
  }

  const v = validado.data;
  const { error } = await sb.from("waitlist").insert({ ...v, acepta_privacidad: true });

  // Un correo repetido se da por bueno: decir «ya estás apuntado» serviría para averiguar quién
  // está en la lista.
  if (error && error.code !== "23505") {
    console.error("waitlist:", error.message);
    return {
      ok: false,
      error: "No hemos podido guardar tus datos. Inténtalo de nuevo en unos minutos.",
      valores: bruto,
    };
  }

  return { ok: true };
}
