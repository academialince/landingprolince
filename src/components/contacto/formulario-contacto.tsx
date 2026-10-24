"use client";

import { useEffect, useId, useRef, useState, type FormEvent } from "react";
import Link from "next/link";
import { CircleCheck, Send } from "lucide-react";
import { Button } from "@/components/ui/button";

const ASUNTOS = [
  "Curso de acceso a la Guardia Civil",
  "Curso del Colegio de Guardias Jóvenes",
  "Temarios en papel",
  "Packs y pagos",
  "Otra consulta",
];

const campo =
  "h-12 w-full rounded-md border border-border-strong bg-surface px-3 text-foreground placeholder:text-muted-foreground focus:border-primary focus:outline-none";

/** Formulario de contacto: lo envía /api/contacto, que lo reenvía por email a la academia. */
export function FormularioContacto({ privacidad, whatsapp }: { privacidad: string; whatsapp?: string | null }) {
  const id = useId();
  const abierto = useRef(0);
  useEffect(() => {
    abierto.current = Date.now();
  }, []);
  const [estado, setEstado] = useState<"listo" | "enviando" | "enviado">("listo");
  const [error, setError] = useState<string | null>(null);

  async function enviar(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const f = new FormData(e.currentTarget);
    setEstado("enviando");
    setError(null);
    const respuesta = await fetch("/api/contacto", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        nombre: f.get("nombre"),
        email: f.get("email"),
        telefono: f.get("telefono") || "",
        asunto: f.get("asunto"),
        mensaje: f.get("mensaje"),
        privacidad: f.get("privacidad") === "on",
        web: f.get("web") || "",
        t: Math.round((Date.now() - abierto.current) / 1000),
      }),
    }).catch(() => null);
    const datos = respuesta ? await respuesta.json().catch(() => ({})) : {};
    if (respuesta?.ok) {
      setEstado("enviado");
    } else {
      setEstado("listo");
      setError(datos.error ?? "No se ha podido enviar el mensaje. Inténtalo de nuevo.");
    }
  }

  if (estado === "enviado") {
    return (
      <div role="status" className="rounded-2xl border-2 border-primary bg-surface p-8">
        <CircleCheck size={32} aria-hidden className="text-primary" />
        <h2 className="text-h2 mt-4">Mensaje enviado</h2>
        <p className="mt-3 text-muted-foreground">Gracias por escribirnos. Te contestamos por email lo antes posible, normalmente en menos de 24 horas laborables.</p>
      </div>
    );
  }

  return (
    <form onSubmit={enviar} className="grid gap-5 rounded-2xl border border-border bg-surface p-6 sm:p-8" noValidate={false}>
      <div className="grid gap-5 sm:grid-cols-2">
        <label htmlFor={`${id}-nombre`} className="grid gap-1.5">
          <span className="text-body-sm font-semibold">Nombre</span>
          <input id={`${id}-nombre`} name="nombre" required minLength={2} maxLength={100} autoComplete="name" className={campo} />
        </label>
        <label htmlFor={`${id}-email`} className="grid gap-1.5">
          <span className="text-body-sm font-semibold">Email</span>
          <input id={`${id}-email`} name="email" type="email" required autoComplete="email" className={campo} />
        </label>
        <label htmlFor={`${id}-telefono`} className="grid gap-1.5">
          <span className="text-body-sm font-semibold">
            Teléfono <span className="font-normal text-muted-foreground">(opcional)</span>
          </span>
          <input id={`${id}-telefono`} name="telefono" type="tel" maxLength={30} autoComplete="tel" className={campo} />
        </label>
        <label htmlFor={`${id}-asunto`} className="grid gap-1.5">
          <span className="text-body-sm font-semibold">Sobre qué nos escribes</span>
          <select id={`${id}-asunto`} name="asunto" required defaultValue={ASUNTOS[0]} className={campo}>
            {ASUNTOS.map((a) => (
              <option key={a}>{a}</option>
            ))}
          </select>
        </label>
      </div>
      <label htmlFor={`${id}-mensaje`} className="grid gap-1.5">
        <span className="text-body-sm font-semibold">Mensaje</span>
        <textarea
          id={`${id}-mensaje`}
          name="mensaje"
          required
          minLength={10}
          maxLength={4000}
          rows={6}
          className="w-full rounded-md border border-border-strong bg-surface px-3 py-3 text-foreground focus:border-primary focus:outline-none"
        />
      </label>

      {/* trampa para bots: oculto para personas y lectores de pantalla */}
      <div aria-hidden className="absolute -left-[9999px]">
        <label>
          No rellenes este campo
          <input name="web" tabIndex={-1} autoComplete="off" />
        </label>
      </div>

      <label className="flex items-start gap-3 text-body-sm">
        <input type="checkbox" name="privacidad" required className="mt-1 size-4 shrink-0 accent-[var(--color-primary)]" />
        <span className="text-muted-foreground">
          He leído y acepto la{" "}
          <Link href={privacidad} className="font-semibold text-primary hover:underline">
            política de privacidad
          </Link>
          . Usaremos tus datos solo para responder a tu mensaje.
        </span>
      </label>

      {error && (
        <p role="alert" className="rounded-md border border-[oklch(0.62_0.2_27)] px-4 py-3 text-body-sm">
          {error}
          {whatsapp && (
            <>
              {" "}
              <a href={`https://wa.me/${whatsapp}`} className="font-semibold text-primary hover:underline">
                Escribir por WhatsApp
              </a>
            </>
          )}
        </p>
      )}

      <div>
        <Button type="submit" tamano="lg" disabled={estado === "enviando"}>
          {estado === "enviando" ? "Enviando…" : "Enviar mensaje"}
          <Send size={18} aria-hidden />
        </Button>
      </div>
    </form>
  );
}
