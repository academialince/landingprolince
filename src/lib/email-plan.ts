import "server-only";
import { generarPlan, temas, type DatosPlan } from "@/content/captacion/plan";
import { destinoEmpezar } from "@/lib/links";

/**
 * Envía por email el plan de estudio de la landing PLAN, con Resend y el mismo remitente que el
 * formulario de contacto (RESEND_API_KEY y CONTACTO_REMITENTE). Si faltan, no se envía y la
 * landing lo dice: el plan se ve igualmente en pantalla.
 */

const escapar = (s: string) => s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
const titulo = (n: number) => temas.find((t) => t.n === n)?.titulo ?? `Tema ${n}`;

export async function enviarPlanPorEmail({ email, nombre, datos }: { email: string; nombre: string; datos: DatosPlan }) {
  const clave = process.env.RESEND_API_KEY;
  const remitente = process.env.CONTACTO_REMITENTE;
  if (!clave || !remitente) return false;

  const plan = generarPlan(datos, new Date());
  const verde = "#03512D";
  const filas = plan.semanas
    .map(
      (s) => `<tr>
  <td style="padding:8px;border-bottom:1px solid #e3e9e5;white-space:nowrap;vertical-align:top"><strong>Semana ${s.n}</strong><br><span style="color:#667">${s.inicio}</span></td>
  <td style="padding:8px;border-bottom:1px solid #e3e9e5;vertical-align:top"><span style="color:${verde};font-size:12px;font-weight:bold;text-transform:uppercase">${escapar(s.fase)}</span><br>${
    s.temas.length ? s.temas.map((t) => `Tema ${t}. ${escapar(titulo(t))}`).join("<br>") : escapar(s.foco)
  }</td>
</tr>`,
    )
    .join("");

  const html = `<div style="font-family:Arial,Helvetica,sans-serif;color:#1a2420;max-width:620px;margin:0 auto">
<h1 style="color:${verde};font-size:24px">Tu plan de estudio, ${escapar(nombre || "opositor")}</h1>
<p>${datos.horas} horas a la semana durante ${datos.meses} meses: <strong>${plan.total} semanas</strong> y unas ${plan.horasTotales} horas de estudio. Empieza el lunes ${plan.empieza}.</p>
${plan.aviso ? `<p style="background:#fff6e0;padding:12px;border-left:4px solid #e0a100">${escapar(plan.aviso)}</p>` : ""}
<h2 style="font-size:18px">Las tres fases</h2>
<ul>${plan.fases.map((f) => `<li><strong>${escapar(f.nombre)}</strong> (semanas ${f.desde}–${f.hasta}): ${escapar(f.descripcion)}</li>`).join("")}</ul>
<h2 style="font-size:18px">Una semana tipo</h2>
<ul>${plan.semanaTipo.map((t) => `<li>${escapar(t.tarea)}: ${t.horas.toLocaleString("es-ES")} h</li>`).join("")}
<li>Pruebas físicas: entrenamiento aparte, desde el primer mes.</li></ul>
<h2 style="font-size:18px">Semana a semana</h2>
<table style="border-collapse:collapse;width:100%;font-size:14px">${filas}</table>
<p style="margin-top:24px">¿Quieres seguirlo con el temario, los tests y los simulacros ya preparados? <a href="${destinoEmpezar}" style="color:${verde};font-weight:bold">Prueba ProLince 7 días gratis</a>.</p>
<p style="color:#667;font-size:12px">Recibes este correo porque has pedido tu plan en prolinceacademia.com. Si no quieres recibir más correos nuestros, responde a este mensaje y te daremos de baja.</p>
</div>`;

  const texto = [
    `Tu plan de estudio: ${datos.horas} h/semana, ${datos.meses} meses (${plan.total} semanas). Empieza el lunes ${plan.empieza}.`,
    "",
    ...plan.semanas.map((s) => `Semana ${s.n} (${s.inicio}) · ${s.fase}: ${s.temas.length ? s.temas.map((t) => `T${t}`).join(", ") : s.foco}`),
    "",
    `Prueba ProLince 7 días gratis: ${destinoEmpezar}`,
  ].join("\n");

  try {
    const r = await fetch("https://api.resend.com/emails", {
      method: "POST",
      headers: { Authorization: `Bearer ${clave}`, "Content-Type": "application/json" },
      body: JSON.stringify({ from: remitente, to: [email], subject: "Tu plan de estudio para la Guardia Civil", html, text: texto }),
    });
    if (!r.ok) console.error("plan por email:", r.status, await r.text().catch(() => ""));
    return r.ok;
  } catch (e) {
    console.error("plan por email:", e);
    return false;
  }
}
