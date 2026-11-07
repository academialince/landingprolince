import type { Metadata } from "next";
import Link from "next/link";
import { Download, Magnet } from "lucide-react";
import { supabaseServidor } from "@/lib/supabase/server";
import { recursoPorId, recursos } from "@/content/captacion/recursos";
import { fechaLarga } from "@/lib/blog";

export const metadata: Metadata = { title: "Leads" };

type FilaLead = {
  id: string;
  recurso: string;
  nombre: string;
  email: string;
  telefono: string | null;
  resultado: string | null;
  utm: Record<string, string>;
  creado_en: string;
};

const filtro =
  "inline-flex h-9 items-center rounded-full border px-3.5 text-body-sm font-semibold transition-colors";

export default async function PanelLeads({ searchParams }: { searchParams: Promise<{ recurso?: string }> }) {
  const { recurso } = await searchParams;
  const activo = recurso && recursoPorId(recurso) ? recurso : undefined;

  const sb = await supabaseServidor();
  // RLS solo deja leer al editor: con otra cuenta la consulta vuelve vacía, no con error.
  let consulta = sb?.from("leads").select("id, recurso, nombre, email, telefono, resultado, utm, creado_en");
  if (consulta && activo) consulta = consulta.eq("recurso", activo);
  const { data, error } = consulta
    ? await consulta.order("creado_en", { ascending: false }).limit(1000)
    : { data: null, error: null };
  const filas = (data ?? []) as FilaLead[];

  return (
    <>
      <div className="flex flex-wrap items-end justify-between gap-4">
        <div>
          <h1 className="text-h2">Leads</h1>
          <p className="mt-1 text-muted-foreground">
            {filas.length === 0
              ? "Todavía no ha entrado ninguno."
              : `${filas.length} ${filas.length === 1 ? "lead" : "leads"}${filas.length === 1000 ? " (los 1.000 más recientes)" : ""}.`}
          </p>
        </div>
        {filas.length > 0 && (
          <a
            href={`/admin/leads/csv${activo ? `?recurso=${activo}` : ""}`}
            className="inline-flex h-10 items-center gap-2 rounded-md border border-border-strong bg-surface px-4 text-body-sm font-bold hover:border-primary hover:text-primary"
          >
            <Download size={16} aria-hidden />
            Descargar CSV
          </a>
        )}
      </div>

      <nav aria-label="Filtrar por landing" className="mt-6 flex flex-wrap gap-2">
        <Link
          href="/admin/leads"
          className={`${filtro} ${!activo ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface"}`}
        >
          Todas
        </Link>
        {Object.values(recursos).map((r) => (
          <Link
            key={r.id}
            href={`/admin/leads?recurso=${r.id}`}
            className={`${filtro} ${activo === r.id ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface"}`}
          >
            {r.nombre}
          </Link>
        ))}
      </nav>

      {error && (
        <p role="alert" className="mt-6 rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger">
          No se han podido leer los leads: {error.message}
        </p>
      )}

      {filas.length === 0 ? (
        <div className="mt-8 rounded-2xl border border-dashed border-border-strong bg-surface p-12 text-center">
          <span className="mx-auto inline-flex size-12 items-center justify-center rounded-full bg-primary-soft text-primary-soft-fg">
            <Magnet size={22} aria-hidden />
          </span>
          <h2 className="text-h3 mt-5">Sin leads</h2>
          <p className="mt-2 text-muted-foreground">
            Las personas que dejen sus datos en las landing de captación aparecerán aquí.
          </p>
        </div>
      ) : (
        <div className="mt-6 overflow-x-auto rounded-xl border border-border bg-surface">
          <table className="w-full min-w-[60rem] border-collapse text-left text-body-sm">
            <caption className="sr-only">Leads de las landing de captación</caption>
            <thead>
              <tr className="border-b border-border">
                <th scope="col" className="px-5 py-3.5 font-bold">Nombre</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Contacto</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Landing</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Resultado</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Origen</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Fecha</th>
              </tr>
            </thead>
            <tbody>
              {filas.map((f) => {
                const r = recursoPorId(f.recurso);
                const origen = [f.utm?.utm_source, f.utm?.utm_campaign].filter(Boolean).join(" · ");
                return (
                  <tr key={f.id} className="border-b border-border last:border-0 hover:bg-surface-subtle">
                    <th scope="row" className="px-5 py-3.5 font-bold">{f.nombre}</th>
                    <td className="px-5 py-3.5">
                      <a href={`mailto:${f.email}`} className="block hover:underline">{f.email}</a>
                      {f.telefono && (
                        <a href={`https://wa.me/${f.telefono.replace(/^\+/, "").replace(/^(?=[6-9]\d{8}$)/, "34")}`} target="_blank" rel="noopener noreferrer" className="block text-muted-foreground hover:underline">
                          {f.telefono}
                        </a>
                      )}
                    </td>
                    <td className="px-5 py-3.5">{r?.nombre ?? f.recurso}</td>
                    <td className="px-5 py-3.5 font-semibold">
                      {f.resultado ? (r?.etiquetaResultado(f.resultado) ?? f.resultado) : "—"}
                    </td>
                    <td className="px-5 py-3.5 text-muted-foreground">{origen || "Directo"}</td>
                    <td className="px-5 py-3.5 text-muted-foreground">{fechaLarga(f.creado_en)}</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      )}
    </>
  );
}
