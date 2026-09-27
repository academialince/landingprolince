import type { Metadata } from "next";
import Link from "next/link";
import { ChevronRight, Clapperboard } from "lucide-react";
import { tiposPublicacion, fechaCarpeta } from "@/content/publicaciones";
import { listarPublicaciones } from "@/lib/publicaciones";

export const metadata: Metadata = { title: "Publicaciones" };

export default async function PanelPublicaciones() {
  const { filas, error } = await listarPublicaciones();

  return (
    <>
      <div>
        <h1 className="text-h2">Publicaciones</h1>
        <p className="mt-1 text-muted-foreground">Material listo para subir a redes, ordenado por tipo.</p>
      </div>

      {error && (
        <p role="alert" className="mt-6 rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger">
          No se han podido leer las publicaciones: {error}
        </p>
      )}

      <ul className="mt-8 grid gap-4 sm:grid-cols-2">
        {tiposPublicacion.map((t) => {
          const delTipo = filas.filter((f) => f.tipo === t.clave);
          const ultima = delTipo[0];
          return (
            <li key={t.clave}>
              <Link
                href={`/admin/publicaciones/${t.clave}`}
                className="flex h-full items-start gap-4 rounded-xl border border-border bg-surface p-5 transition-colors hover:border-primary hover:bg-surface-subtle"
              >
                <span className="inline-flex size-11 shrink-0 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                  <Clapperboard size={20} aria-hidden />
                </span>
                <span className="min-w-0 flex-1">
                  <span className="block text-h3">{t.etiqueta}</span>
                  <span className="mt-1 block text-body-sm text-muted-foreground">{t.descripcion}</span>
                  <span className="mt-3 block text-body-sm font-semibold text-primary">
                    {ultima ? `Última: ${fechaCarpeta(ultima.fecha)}` : "Sin publicaciones todavía"}
                  </span>
                </span>
                <ChevronRight size={18} className="mt-1 text-muted-foreground" aria-hidden />
              </Link>
            </li>
          );
        })}
      </ul>
    </>
  );
}
