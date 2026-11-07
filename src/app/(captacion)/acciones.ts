"use server";

import { z } from "zod";
import { supabasePublico } from "@/lib/supabase/publico";
import { CAMPOS_UTM, recursoPorId } from "@/content/captacion/recursos";

const esquema = z.object({
  nombre: z.string().trim().min(2, "Escribe tu nombre").max(120, "El nombre es demasiado largo"),
  email: z.string().trim().toLowerCase().email("Ese correo no parece válido").max(254),
  // Opcional. Se aceptan espacios, guiones y paréntesis al escribir; se guarda solo el número.
  telefono: z
    .string()
    .optional()
    .transform((t) => (t ?? "").replace(/[\s\-().]/g, ""))
    .pipe(z.string().regex(/^(\+?[0-9]{9,15})?$/, "Ese teléfono no parece válido")),
  acepta_privacidad: z.literal("on", { message: "Necesitamos tu consentimiento para enseñarte el resultado" }),
});

export type CampoLead = keyof z.infer<typeof esquema>;

export type ResultadoLead = {
  ok: boolean;
  /** El resultado calculado en el servidor (p. ej. la clave del perfil). */
  resultado?: string;
  error?: string;
  errores?: Partial<Record<CampoLead, string>>;
  valores?: Record<string, string>;
};

/**
 * Guarda un lead de cualquier landing de captación. El formulario manda, además de los datos de
 * contacto, el `recurso`, las `respuestas` en JSON y los parámetros UTM del anuncio.
 */
export async function guardarLead(_previo: ResultadoLead | null, datos: FormData): Promise<ResultadoLead> {
  const bruto = Object.fromEntries(datos) as Record<string, string>;
  // Lo que se devuelve para rellenar de nuevo el formulario: sin las respuestas del test.
  const valores = Object.fromEntries(Object.entries(bruto).filter(([k]) => k !== "respuestas"));

  const recurso = recursoPorId(bruto.recurso ?? "");
  let respuestas: unknown = null;
  try {
    respuestas = JSON.parse(bruto.respuestas ?? "null");
  } catch {
    /* se trata abajo como respuestas no válidas */
  }
  const resultado = recurso?.resolver(respuestas) ?? null;

  // Trampa para bots: el campo está oculto y una persona nunca lo rellena. Se responde como si
  // hubiera ido bien (con el resultado, para no darles pista) y no se guarda nada.
  if (bruto.web) return { ok: Boolean(resultado), resultado: resultado ?? undefined };

  if (!recurso || !resultado) {
    return { ok: false, error: "Faltan respuestas del test. Vuelve a empezarlo, por favor.", valores };
  }

  const validado = esquema.safeParse(bruto);
  if (!validado.success) {
    const errores: Partial<Record<CampoLead, string>> = {};
    for (const issue of validado.error.issues) {
      const campo = issue.path[0] as CampoLead;
      errores[campo] ??= issue.message;
    }
    return { ok: false, errores, valores };
  }

  const sb = supabasePublico();
  if (!sb) {
    return { ok: false, error: "No podemos guardar tus datos ahora mismo. Inténtalo más tarde.", valores };
  }

  const utm = Object.fromEntries(
    CAMPOS_UTM.flatMap((c) => (bruto[c] ? [[c, String(bruto[c]).slice(0, 200)]] : [])),
  );

  const v = validado.data;
  const { error } = await sb.from("leads").insert({
    recurso: recurso.id,
    nombre: v.nombre,
    email: v.email,
    telefono: v.telefono || null,
    resultado,
    respuestas: { respuestas },
    utm,
    acepta_privacidad: true,
  });

  if (error) {
    console.error("leads:", error.message);
    return { ok: false, error: "No hemos podido guardar tus datos. Inténtalo de nuevo en un momento.", valores };
  }

  return { ok: true, resultado };
}
