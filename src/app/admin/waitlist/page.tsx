import type { Metadata } from "next";
import { Users } from "lucide-react";
import { supabaseServidor } from "@/lib/supabase/server";
import { etiquetaDe, tiemposOpositando, vecesPresentado } from "@/content/waitlist";
import { fechaLarga } from "@/lib/blog";

export const metadata: Metadata = { title: "Lista de espera" };

type Fila = {
  id: string;
  nombre: string;
  tiempo_opositando: string;
  veces_presentado: string;
  edad: number;
  email: string;
  telefono: string;
  creado_en: string;
};

export default async function PanelWaitlist() {
  const sb = await supabaseServidor();
  // RLS solo deja leer al editor: con otra cuenta la consulta vuelve vacía, no con error.
  const { data, error } = sb
    ? await sb.from("waitlist").select("*").order("creado_en", { ascending: false })
    : { data: null, error: null };
  const filas = (data ?? []) as Fila[];

  return (
    <>
      <div>
        <h1 className="text-h2">Lista de espera</h1>
        <p className="mt-1 text-muted-foreground">
          {filas.length === 0
            ? "Todavía no se ha apuntado nadie."
            : `${filas.length} ${filas.length === 1 ? "persona apuntada" : "personas apuntadas"}.`}
        </p>
      </div>

      {error && (
        <p role="alert" className="mt-6 rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger">
          No se ha podido leer la lista: {error.message}
        </p>
      )}

      {filas.length === 0 ? (
        <div className="mt-8 rounded-2xl border border-dashed border-border-strong bg-surface p-12 text-center">
          <span className="mx-auto inline-flex size-12 items-center justify-center rounded-full bg-primary-soft text-primary-soft-fg">
            <Users size={22} aria-hidden />
          </span>
          <h2 className="text-h3 mt-5">Sin inscripciones</h2>
          <p className="mt-2 text-muted-foreground">
            Las personas que se apunten en /waitlist aparecerán aquí.
          </p>
        </div>
      ) : (
        <div className="mt-8 overflow-x-auto rounded-xl border border-border bg-surface">
          <table className="w-full min-w-[56rem] border-collapse text-left text-body-sm">
            <caption className="sr-only">Personas en la lista de espera</caption>
            <thead>
              <tr className="border-b border-border">
                <th scope="col" className="px-5 py-3.5 font-bold">Nombre</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Contacto</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Edad</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Opositando</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Presentado</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Fecha</th>
              </tr>
            </thead>
            <tbody>
              {filas.map((f) => (
                <tr key={f.id} className="border-b border-border last:border-0 hover:bg-surface-subtle">
                  <th scope="row" className="px-5 py-3.5 font-bold">{f.nombre}</th>
                  <td className="px-5 py-3.5">
                    <a href={`mailto:${f.email}`} className="block hover:underline">{f.email}</a>
                    <a href={`tel:${f.telefono}`} className="block text-muted-foreground hover:underline">
                      {f.telefono}
                    </a>
                  </td>
                  <td className="px-5 py-3.5 tabular">{f.edad}</td>
                  <td className="px-5 py-3.5">{etiquetaDe(tiemposOpositando, f.tiempo_opositando)}</td>
                  <td className="px-5 py-3.5">{etiquetaDe(vecesPresentado, f.veces_presentado)}</td>
                  <td className="px-5 py-3.5 text-muted-foreground">{fechaLarga(f.creado_en)}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </>
  );
}
