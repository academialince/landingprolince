import { z } from "zod";
import { site } from "@/content/site";

/**
 * Formulario de contacto: valida y reenvía el mensaje por email (Resend) al buzón de la academia,
 * con «Responder a» apuntando a quien escribe. Necesita dos variables de entorno:
 * - RESEND_API_KEY: la clave de Resend (la misma cuenta que usa la plataforma vale).
 * - CONTACTO_REMITENTE: remitente verificado en Resend, p. ej. «ProLince <web@prolinceacademia.com>».
 * Opcional: CONTACTO_DESTINO para cambiar el buzón (por defecto, el email de contacto de la web).
 */
const esquema = z.object({
  nombre: z.string().trim().min(2, "Escribe tu nombre.").max(100),
  email: z.email("Escribe un email válido."),
  telefono: z.string().trim().max(30).optional().default(""),
  asunto: z.string().trim().min(2).max(80),
  mensaje: z.string().trim().min(10, "Cuéntanos un poco más (mínimo 10 caracteres).").max(4000),
  privacidad: z.literal(true, "Tienes que aceptar la política de privacidad."),
  // trampa para bots: un campo oculto que una persona nunca rellena
  web: z.string().max(0).optional().default(""),
  // segundos desde que se abrió el formulario: los bots lo envían al instante
  t: z.number().optional(),
});

const escapar = (s: string) => s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");

export async function POST(request: Request) {
  const datos = esquema.safeParse(await request.json().catch(() => null));
  if (!datos.success) {
    return Response.json({ error: datos.error.issues[0]?.message ?? "Revisa los datos del formulario." }, { status: 400 });
  }
  const d = datos.data;
  // un bot: se le contesta que todo bien y no se envía nada
  if (d.web || (d.t !== undefined && d.t < 3)) return Response.json({ ok: true });

  const clave = process.env.RESEND_API_KEY;
  const remitente = process.env.CONTACTO_REMITENTE;
  const destino = process.env.CONTACTO_DESTINO || site.contacto.email;
  if (!clave || !remitente || !destino) {
    return Response.json({ error: "El formulario aún no está activo. Escríbenos por WhatsApp mientras tanto." }, { status: 503 });
  }

  const filas = [
    ["Nombre", d.nombre],
    ["Email", d.email],
    ["Teléfono", d.telefono || "—"],
    ["Asunto", d.asunto],
  ];
  const html = `<h2>Nuevo mensaje desde la web</h2>
<table cellpadding="6">${filas.map(([k, v]) => `<tr><td><strong>${k}</strong></td><td>${escapar(v)}</td></tr>`).join("")}</table>
<p style="white-space:pre-wrap">${escapar(d.mensaje)}</p>`;

  const respuesta = await fetch("https://api.resend.com/emails", {
    method: "POST",
    headers: { Authorization: `Bearer ${clave}`, "Content-Type": "application/json" },
    body: JSON.stringify({
      from: remitente,
      to: [destino],
      reply_to: d.email,
      subject: `[Web] ${d.asunto} · ${d.nombre}`,
      html,
      text: `${filas.map(([k, v]) => `${k}: ${v}`).join("\n")}\n\n${d.mensaje}`,
    }),
  });
  if (!respuesta.ok) {
    return Response.json({ error: "No se ha podido enviar el mensaje. Inténtalo de nuevo o escríbenos por WhatsApp." }, { status: 502 });
  }
  return Response.json({ ok: true });
}
