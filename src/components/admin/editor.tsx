"use client";

import { useActionState, useEffect, useMemo, useState } from "react";
import { useFormStatus } from "react-dom";
import { Eye, Pencil, Trash2 } from "lucide-react";
import { borrarEntrada, guardarEntrada, previsualizar, type ResultadoAccion } from "@/app/admin/acciones";
import { ESTADOS, tiposEntrada, tipoPorClave } from "@/content/blog-tipos";
import { cursos } from "@/content/cursos";
import type { Entrada } from "@/lib/blog";

const campo =
  "min-h-11 w-full rounded-md border border-input bg-surface px-3 transition-colors focus:border-primary";
const area =
  "w-full rounded-md border border-input bg-surface p-3 font-mono text-body-sm leading-relaxed transition-colors focus:border-primary";

function aSlug(texto: string) {
  return texto
    .normalize("NFD")
    .replace(/[̀-ͯ]/g, "")
    .toLowerCase()
    .replace(/[^a-z0-9\s-]/g, "")
    .trim()
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-")
    .slice(0, 80);
}

function paraInput(iso: string | null) {
  if (!iso) return "";
  const d = new Date(iso);
  const p = (n: number) => String(n).padStart(2, "0");
  return `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())}T${p(d.getHours())}:${p(d.getMinutes())}`;
}

function Guardar() {
  const { pending } = useFormStatus();
  return (
    <button
      type="submit"
      disabled={pending}
      className="min-h-11 rounded-md bg-primary px-5 font-bold text-primary-fg transition-colors hover:bg-primary-hover disabled:opacity-60"
    >
      {pending ? "Guardando…" : "Guardar"}
    </button>
  );
}

export function Editor({ entrada }: { entrada: Entrada | null }) {
  const [estado, accion] = useActionState<ResultadoAccion | null, FormData>(guardarEntrada, null);

  const [titulo, setTitulo] = useState(entrada?.titulo ?? "");
  const [slug, setSlug] = useState(entrada?.slug ?? "");
  const [slugTocado, setSlugTocado] = useState(Boolean(entrada));
  const [tipo, setTipo] = useState(entrada?.tipo ?? tiposEntrada[0].clave);
  const [cuerpo, setCuerpo] = useState(entrada?.cuerpo ?? "");
  const [vista, setVista] = useState<"editar" | "previa">("editar");
  const [html, setHtml] = useState("");
  const [extras, setExtras] = useState<Record<string, string>>(() => {
    const base: Record<string, string> = {};
    for (const [k, v] of Object.entries(entrada?.datos ?? {})) base[k] = v == null ? "" : String(v);
    return base;
  });

  const definicion = useMemo(() => tipoPorClave(tipo), [tipo]);

  useEffect(() => {
    if (vista !== "previa") return;
    let vigente = true;
    previsualizar(cuerpo).then((h) => vigente && setHtml(h));
    return () => {
      vigente = false;
    };
  }, [vista, cuerpo]);

  return (
    <>
      <form action={accion} className="grid gap-8 lg:grid-cols-[1fr_20rem] lg:items-start">
        <input type="hidden" name="id" defaultValue={entrada?.id ?? ""} />
        <input type="hidden" name="datos" value={JSON.stringify(extras)} readOnly />

        <div className="grid gap-5">
          <div className="grid gap-1.5">
            <label htmlFor="titulo" className="text-body-sm font-semibold">
              Título
            </label>
            <input
              id="titulo"
              name="titulo"
              required
              value={titulo}
              onChange={(e) => {
                setTitulo(e.target.value);
                if (!slugTocado) setSlug(aSlug(e.target.value));
              }}
              className={campo}
            />
          </div>

          <div className="grid gap-1.5">
            <label htmlFor="slug" className="text-body-sm font-semibold">
              Slug
            </label>
            <input
              id="slug"
              name="slug"
              required
              value={slug}
              onChange={(e) => {
                setSlugTocado(true);
                setSlug(e.target.value);
              }}
              className={campo}
            />
            <p className="text-body-sm text-muted-foreground">
              /blog/{slug || "…"} — no lo cambies una vez publicada la entrada.
            </p>
          </div>

          <div className="grid gap-1.5">
            <label htmlFor="entradilla" className="text-body-sm font-semibold">
              Entradilla
            </label>
            <textarea
              id="entradilla"
              name="entradilla"
              rows={2}
              maxLength={300}
              defaultValue={entrada?.entradilla ?? ""}
              className={`${area} font-sans`}
            />
            <p className="text-body-sm text-muted-foreground">
              Es la que acaba en la tarjeta del índice y en la descripción para buscadores.
            </p>
          </div>

          <div className="grid gap-1.5">
            <div className="flex items-center justify-between gap-3">
              <label htmlFor="cuerpo" className="text-body-sm font-semibold">
                Cuerpo (markdown)
              </label>
              <div className="flex gap-1 rounded-md border border-border p-0.5">
                {(["editar", "previa"] as const).map((v) => (
                  <button
                    key={v}
                    type="button"
                    onClick={() => setVista(v)}
                    className={`inline-flex items-center gap-1.5 rounded px-2.5 py-1 text-body-sm font-semibold transition-colors ${
                      vista === v ? "bg-primary-soft text-primary-soft-fg" : "text-muted-foreground"
                    }`}
                  >
                    {v === "editar" ? <Pencil size={13} /> : <Eye size={13} />}
                    {v === "editar" ? "Editar" : "Vista previa"}
                  </button>
                ))}
              </div>
            </div>

            {vista === "editar" ? (
              <textarea
                id="cuerpo"
                name="cuerpo"
                rows={22}
                value={cuerpo}
                onChange={(e) => setCuerpo(e.target.value)}
                className={area}
              />
            ) : (
              <>
                <input type="hidden" name="cuerpo" value={cuerpo} readOnly />
                <div
                  className="prosa min-h-[28rem] rounded-md border border-border bg-surface p-6"
                  dangerouslySetInnerHTML={{ __html: html }}
                />
              </>
            )}
          </div>
        </div>

        <aside className="grid gap-5 rounded-xl border border-border bg-surface p-5">
          <div className="grid gap-1.5">
            <label htmlFor="estado" className="text-body-sm font-semibold">
              Estado
            </label>
            <select id="estado" name="estado" defaultValue={entrada?.estado ?? "borrador"} className={campo}>
              {ESTADOS.map((e) => (
                <option key={e} value={e}>
                  {e}
                </option>
              ))}
            </select>
          </div>

          <div className="grid gap-1.5">
            <label htmlFor="publicado_en" className="text-body-sm font-semibold">
              Fecha de publicación
            </label>
            <input
              id="publicado_en"
              name="publicado_en"
              type="datetime-local"
              defaultValue={paraInput(entrada?.publicado_en ?? null)}
              className={campo}
            />
            <p className="text-body-sm text-muted-foreground">
              En blanco y estado «publicado» usa la fecha de ahora.
            </p>
          </div>

          <div className="grid gap-1.5">
            <label htmlFor="tipo" className="text-body-sm font-semibold">
              Tipo
            </label>
            <select
              id="tipo"
              name="tipo"
              value={tipo}
              onChange={(e) => setTipo(e.target.value)}
              className={campo}
            >
              {tiposEntrada.map((t) => (
                <option key={t.clave} value={t.clave}>
                  {t.etiqueta}
                </option>
              ))}
            </select>
          </div>

          {definicion.campos.length > 0 && (
            <fieldset className="grid gap-3 rounded-lg bg-surface-subtle p-4">
              <legend className="px-1 text-body-sm font-semibold">Campos de {definicion.etiqueta}</legend>
              {definicion.campos.map((c) => (
                <div key={c.clave} className="grid gap-1.5">
                  <label htmlFor={`extra-${c.clave}`} className="text-body-sm">
                    {c.etiqueta}
                  </label>
                  <input
                    id={`extra-${c.clave}`}
                    type={c.tipo === "numero" ? "number" : c.tipo === "fecha" ? "date" : c.tipo === "url" ? "url" : "text"}
                    value={extras[c.clave] ?? ""}
                    onChange={(e) => setExtras((p) => ({ ...p, [c.clave]: e.target.value }))}
                    className={campo}
                  />
                </div>
              ))}
            </fieldset>
          )}

          <div className="grid gap-1.5">
            <label htmlFor="curso" className="text-body-sm font-semibold">
              Curso relacionado
            </label>
            <select id="curso" name="curso" defaultValue={entrada?.curso ?? ""} className={campo}>
              <option value="">Ninguno</option>
              {cursos.map((c) => (
                <option key={c.slug} value={c.slug}>
                  {c.nombreCorto}
                </option>
              ))}
            </select>
          </div>

          <div className="grid gap-1.5">
            <label htmlFor="etiquetas" className="text-body-sm font-semibold">
              Etiquetas
            </label>
            <input
              id="etiquetas"
              name="etiquetas"
              defaultValue={entrada?.etiquetas.join(", ") ?? ""}
              placeholder="convocatoria, boe, plazas"
              className={campo}
            />
          </div>

          <div className="grid gap-1.5">
            <label htmlFor="portada_url" className="text-body-sm font-semibold">
              Portada (URL)
            </label>
            <input
              id="portada_url"
              name="portada_url"
              defaultValue={entrada?.portada_url ?? ""}
              className={campo}
            />
            <label htmlFor="portada_alt" className="mt-2 text-body-sm font-semibold">
              Texto alternativo
            </label>
            <input
              id="portada_alt"
              name="portada_alt"
              defaultValue={entrada?.portada_alt ?? ""}
              className={campo}
            />
            <p className="text-body-sm text-muted-foreground">
              Obligatorio si hay portada: sin él no se puede publicar.
            </p>
          </div>

          <details className="rounded-lg bg-surface-subtle p-4">
            <summary className="cursor-pointer text-body-sm font-semibold">SEO</summary>
            <div className="mt-3 grid gap-3">
              <input
                name="seo_title"
                placeholder="Título propio"
                defaultValue={entrada?.seo?.title ?? ""}
                className={campo}
              />
              <input
                name="seo_description"
                placeholder="Descripción propia"
                defaultValue={entrada?.seo?.description ?? ""}
                className={campo}
              />
              <input
                name="seo_canonical"
                placeholder="Canónica"
                defaultValue={entrada?.seo?.canonical ?? ""}
                className={campo}
              />
              <label className="flex items-center gap-2 text-body-sm">
                <input type="checkbox" name="noindex" defaultChecked={entrada?.seo?.noindex} />
                No indexar esta entrada
              </label>
            </div>
          </details>

          {estado?.error && (
            <p role="alert" className="rounded-md bg-danger/10 px-3 py-2 text-body-sm text-danger">
              {estado.error}
            </p>
          )}

          <Guardar />
        </aside>
      </form>

      {entrada && (
        <form action={borrarEntrada} className="mt-8 border-t border-border pt-6">
          <input type="hidden" name="id" value={entrada.id} />
          <input type="hidden" name="slug" value={entrada.slug} />
          <button
            type="submit"
            className="inline-flex min-h-10 items-center gap-2 rounded-md border border-danger/30 px-3 text-body-sm font-semibold text-danger transition-colors hover:bg-danger/8"
          >
            <Trash2 size={15} aria-hidden />
            Borrar esta entrada
          </button>
        </form>
      )}
    </>
  );
}
