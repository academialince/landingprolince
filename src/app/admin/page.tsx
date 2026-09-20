import Link from "next/link";
import { FileText, Plus } from "lucide-react";
import { listarTodas, fechaLarga } from "@/lib/blog";
import { tipoPorClave } from "@/content/blog-tipos";

const colorEstado: Record<string, string> = {
  publicado: "bg-success/12 text-success",
  borrador: "bg-muted text-muted-foreground",
  programado: "bg-info/12 text-info",
  retirado: "bg-danger/10 text-danger",
};

export default async function PanelEntradas() {
  const entradas = await listarTodas();

  return (
    <>
      <div className="flex flex-wrap items-center justify-between gap-4">
        <div>
          <h1 className="text-h2">Entradas del blog</h1>
          <p className="mt-1 text-muted-foreground">
            {entradas.length === 0
              ? "Todavía no hay ninguna."
              : `${entradas.length} ${entradas.length === 1 ? "entrada" : "entradas"} en total.`}
          </p>
        </div>
        <Link
          href="/admin/entradas/nueva"
          className="inline-flex min-h-11 items-center gap-2 rounded-md bg-primary px-4 font-bold text-primary-fg transition-colors hover:bg-primary-hover"
        >
          <Plus size={17} aria-hidden />
          Nueva entrada
        </Link>
      </div>

      {entradas.length === 0 ? (
        <div className="mt-8 rounded-2xl border border-dashed border-border-strong bg-surface p-12 text-center">
          <span className="mx-auto inline-flex size-12 items-center justify-center rounded-full bg-primary-soft text-primary-soft-fg">
            <FileText size={22} aria-hidden />
          </span>
          <h2 className="text-h3 mt-5">Empieza por la primera</h2>
          <p className="mt-2 text-muted-foreground">
            Una convocatoria reciente o una guía de temario suelen ser el mejor arranque.
          </p>
        </div>
      ) : (
        <div className="mt-8 overflow-x-auto rounded-xl border border-border bg-surface">
          <table className="w-full min-w-[44rem] border-collapse text-left">
            <caption className="sr-only">Entradas del blog</caption>
            <thead>
              <tr className="border-b border-border text-body-sm">
                <th scope="col" className="px-5 py-3.5 font-bold">Título</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Tipo</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Estado</th>
                <th scope="col" className="px-5 py-3.5 font-bold">Actualizada</th>
              </tr>
            </thead>
            <tbody>
              {entradas.map((e) => (
                <tr key={e.id} className="border-b border-border last:border-0 hover:bg-surface-subtle">
                  <th scope="row" className="px-5 py-3.5 font-medium">
                    <Link href={`/admin/entradas/${e.id}`} className="font-bold hover:underline">
                      {e.titulo}
                    </Link>
                    <span className="block text-body-sm font-normal text-muted-foreground">
                      /{e.slug}
                    </span>
                  </th>
                  <td className="px-5 py-3.5 text-body-sm">{tipoPorClave(e.tipo).etiqueta}</td>
                  <td className="px-5 py-3.5">
                    <span
                      className={`inline-block rounded-full px-2.5 py-0.5 text-body-sm font-semibold ${
                        colorEstado[e.estado] ?? colorEstado.borrador
                      }`}
                    >
                      {e.estado}
                    </span>
                  </td>
                  <td className="px-5 py-3.5 text-body-sm text-muted-foreground">
                    {fechaLarga(e.actualizado_en)}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </>
  );
}
