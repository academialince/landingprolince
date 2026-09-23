"use client";

import Link from "next/link";
import { useActionState, type ReactNode } from "react";
import { ArrowRight, CircleCheck } from "lucide-react";
import { apuntarseWaitlist, type Campo, type ResultadoWaitlist } from "@/app/(web)/waitlist/acciones";
import { tiemposOpositando, vecesPresentado } from "@/content/waitlist";
import { rutas } from "@/lib/links";

const campo =
  "min-h-12 w-full rounded-md border border-border-strong bg-surface px-3.5 transition-colors focus:border-primary aria-invalid:border-danger";

function Grupo({
  id,
  etiqueta,
  error,
  ayuda,
  children,
}: {
  id: Campo;
  etiqueta: string;
  error?: string;
  ayuda?: string;
  children: ReactNode;
}) {
  return (
    <div className="grid content-start gap-1.5">
      <label htmlFor={id} className="text-body-sm font-semibold">
        {etiqueta}
      </label>
      {children}
      {error ? (
        <p id={`${id}-error`} className="text-body-sm text-danger">
          {error}
        </p>
      ) : (
        ayuda && <p className="text-body-sm text-muted-foreground">{ayuda}</p>
      )}
    </div>
  );
}

export function FormularioWaitlist() {
  const [estado, accion, enviando] = useActionState<ResultadoWaitlist | null, FormData>(
    apuntarseWaitlist,
    null,
  );

  if (estado?.ok) {
    return (
      <div role="status" className="rounded-2xl border border-border bg-surface p-8 text-center sm:p-12">
        <span className="mx-auto inline-flex size-14 items-center justify-center rounded-full bg-primary-soft text-primary-soft-fg">
          <CircleCheck size={28} aria-hidden />
        </span>
        <h2 className="text-h2 mt-6">Ya estás en la lista</h2>
        <p className="mx-auto mt-3 max-w-[30rem] text-muted-foreground">
          Te escribiremos al correo que nos has dejado en cuanto abramos tu acceso para probar la
          plataforma.
        </p>
      </div>
    );
  }

  const e = estado?.errores ?? {};
  const v = estado?.valores ?? {};
  const props = (id: Campo) => ({
    id,
    name: id,
    "aria-invalid": e[id] ? true : undefined,
    "aria-describedby": e[id] ? `${id}-error` : undefined,
  });

  return (
    // La `key` rehace el formulario tras cada envío para que recoja los valores devueltos: React
    // vacía los campos no controlados al terminar una acción.
    <form
      key={JSON.stringify(v)}
      action={accion}
      noValidate
      className="grid gap-5 rounded-2xl border border-border bg-surface p-6 sm:grid-cols-2 sm:p-9"
    >
      <div className="sm:col-span-2">
        <Grupo id="nombre" etiqueta="Nombre y apellidos" error={e.nombre}>
          <input {...props("nombre")} type="text" required autoComplete="name" defaultValue={v.nombre} className={campo} />
        </Grupo>
      </div>

      <Grupo id="email" etiqueta="Correo electrónico" error={e.email}>
        <input
          {...props("email")}
          type="email"
          required
          autoComplete="email"
          inputMode="email"
          defaultValue={v.email}
          className={campo}
        />
      </Grupo>

      <Grupo id="telefono" etiqueta="Teléfono" error={e.telefono}>
        <input
          {...props("telefono")}
          type="tel"
          required
          autoComplete="tel"
          inputMode="tel"
          placeholder="600 000 000"
          defaultValue={v.telefono}
          className={campo}
        />
      </Grupo>

      <Grupo id="edad" etiqueta="Edad" error={e.edad}>
        <input
          {...props("edad")}
          type="number"
          required
          min={14}
          max={99}
          inputMode="numeric"
          defaultValue={v.edad}
          className={campo}
        />
      </Grupo>

      <Grupo id="tiempo_opositando" etiqueta="Tiempo opositando" error={e.tiempo_opositando}>
        <select {...props("tiempo_opositando")} required defaultValue={v.tiempo_opositando ?? ""} className={campo}>
          <option value="" disabled>
            Elige una opción
          </option>
          {tiemposOpositando.map((o) => (
            <option key={o.valor} value={o.valor}>
              {o.etiqueta}
            </option>
          ))}
        </select>
      </Grupo>

      <div className="sm:col-span-2">
        <fieldset aria-describedby={e.veces_presentado ? "veces_presentado-error" : undefined}>
          <legend className="text-body-sm font-semibold">Veces que te has presentado al examen</legend>
          <div className="mt-2 grid grid-cols-2 gap-2 sm:grid-cols-4">
            {vecesPresentado.map((o) => (
              <label
                key={o.valor}
                className="flex min-h-12 cursor-pointer items-center justify-center rounded-md border border-border-strong px-3 text-body-sm font-semibold transition-colors hover:border-primary has-checked:border-primary has-checked:bg-primary-soft has-checked:text-primary-soft-fg has-focus-visible:outline-2 has-focus-visible:outline-primary"
              >
                <input
                  type="radio"
                  name="veces_presentado"
                  value={o.valor}
                  defaultChecked={v.veces_presentado === o.valor}
                  className="sr-only"
                />
                {o.etiqueta}
              </label>
            ))}
          </div>
          {e.veces_presentado && (
            <p id="veces_presentado-error" className="mt-1.5 text-body-sm text-danger">
              {e.veces_presentado}
            </p>
          )}
        </fieldset>
      </div>

      {/* Trampa para bots: fuera de la vista y del orden de tabulación. */}
      <div aria-hidden className="absolute -left-[9999px] h-px w-px overflow-hidden">
        <label htmlFor="web">No rellenes este campo</label>
        <input id="web" name="web" type="text" tabIndex={-1} autoComplete="off" />
      </div>

      <div className="sm:col-span-2">
        <label className="flex gap-3 text-body-sm">
          <input
            name="acepta_privacidad"
            type="checkbox"
            required
            defaultChecked={v.acepta_privacidad === "on"}
            aria-invalid={e.acepta_privacidad ? true : undefined}
            aria-describedby={e.acepta_privacidad ? "acepta_privacidad-error" : undefined}
            className="mt-0.5 size-5 shrink-0 accent-[var(--color-primary)]"
          />
          <span className="text-muted-foreground">
            Acepto que ProLince guarde estos datos para contactarme sobre el acceso de prueba a la
            plataforma, según la{" "}
            <Link href={rutas.privacidad} className="font-semibold text-primary hover:underline">
              política de privacidad
            </Link>
            .
          </span>
        </label>
        {e.acepta_privacidad && (
          <p id="acepta_privacidad-error" className="mt-1.5 text-body-sm text-danger">
            {e.acepta_privacidad}
          </p>
        )}
      </div>

      {estado?.error && (
        <p role="alert" className="rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger sm:col-span-2">
          {estado.error}
        </p>
      )}
      {Object.keys(e).length > 0 && (
        <p role="alert" className="sr-only">
          Revisa los campos marcados.
        </p>
      )}

      <button
        type="submit"
        disabled={enviando}
        className="cta-button inline-flex min-h-13 items-center justify-center gap-2 rounded-md bg-primary px-6 font-bold text-primary-fg shadow-[0_8px_22px_color-mix(in_oklch,var(--color-primary)_18%,transparent)] transition-colors hover:bg-primary-hover disabled:opacity-60 sm:col-span-2"
      >
        {enviando ? "Enviando…" : "Apuntarme a la lista"}
        {!enviando && <ArrowRight size={18} aria-hidden />}
      </button>
    </form>
  );
}
