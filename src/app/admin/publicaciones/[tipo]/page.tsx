import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ChevronLeft, Folder, FolderOpen } from "lucide-react";
import { tipoPublicacion, fechaCarpeta } from "@/content/publicaciones";
import { listarPublicaciones } from "@/lib/publicaciones";

export const metadata: Metadata = { title: "Publicaciones" };

export default async function CarpetasTipo(props: PageProps<"/admin/publicaciones/[tipo]">) {
  const { tipo } = await props.params;
  const t = tipoPublicacion(tipo);
  if (!t) notFound();
  const { filas, error } = await listarPublicaciones(t.clave);

  return (
    <>
      <Link
        href="/admin/publicaciones"
        className="inline-flex items-center gap-1 text-body-sm font-semibold text-muted-foreground hover:text-foreground"
      >
        <ChevronLeft size={16} aria-hidden />
        Publicaciones
      </Link>
      <h1 className="text-h2 mt-3">{t.etiqueta}</h1>
      <p className="mt-1 text-muted-foreground">
        Al generar una nueva se borran las de días anteriores, así que aquí solo queda la vigente.
      </p>

      {error && (
        <p role="alert" className="mt-6 rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger">
          No se han podido leer las publicaciones: {error}
        </p>
      )}

      {filas.length === 0 ? (
        <div className="mt-8 rounded-2xl border border-dashed border-border-strong bg-surface p-12 text-center">
          <span className="mx-auto inline-flex size-12 items-center justify-center rounded-full bg-primary-soft text-primary-soft-fg">
            <FolderOpen size={22} aria-hidden />
          </span>
          <h2 className="text-h3 mt-5">Carpeta vacía</h2>
          <p className="mt-2 text-muted-foreground">La próxima {t.etiqueta.toLowerCase()} aparecerá aquí.</p>
        </div>
      ) : (
        <ul className="mt-8 grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {filas.map((f) => (
            <li key={f.id}>
              <Link
                href={`/admin/publicaciones/${t.clave}/${f.fecha}`}
                className="flex items-center gap-4 rounded-xl border border-border bg-surface p-5 transition-colors hover:border-primary hover:bg-surface-subtle"
              >
                <Folder size={36} className="shrink-0 fill-primary-soft text-primary" aria-hidden />
                <span className="min-w-0">
                  <span className="block font-extrabold tabular">{fechaCarpeta(f.fecha)}</span>
                  <span className="block truncate text-body-sm text-muted-foreground">{f.titulo}</span>
                </span>
              </Link>
            </li>
          ))}
        </ul>
      )}
    </>
  );
}
