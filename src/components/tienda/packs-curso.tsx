import { ArrowRight, Check, Minus } from "lucide-react";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { formatoPrecio, packsVisibles } from "@/content/tienda";
import { links } from "@/lib/links";

/**
 * Los cinco packs de un curso. Lo usan la tienda (un bloque por curso) y la sección «Packs» de la
 * página de cada curso, así que siempre dicen lo mismo en los dos sitios.
 */
export function PacksCurso({ slug }: { slug: string }) {
  const lista = packsVisibles(slug);
  const columnas = lista.length >= 5 ? "xl:grid-cols-5" : "xl:grid-cols-4";
  return (
    <ul className={`grid gap-5 sm:grid-cols-2 ${columnas}`}>
      {lista.map((p, i) => {
        // «Pack 2 · Simulacros» → etiqueta pequeña «Pack 2» y título «Simulacros»; sin « · », solo título
        const partes = p.nombre.split(" · ");
        const etiqueta = partes.length > 1 ? partes[0] : null;
        const titulo = partes.length > 1 ? partes.slice(1).join(" · ") : p.nombre;
        return (
        <Reveal key={p.id} retardo={(i % 5) * 50} className="h-full">
          <li
            className={`relative flex h-full flex-col rounded-2xl border bg-surface p-6 ${
              p.destacado
                ? "border-2 border-primary shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)]"
                : "border-border"
            }`}
          >
            {p.destacado && (
              <span className="absolute -top-3 left-6 rounded-full bg-primary px-3 py-1 text-eyebrow uppercase text-primary-fg">
                {p.destacado}
              </span>
            )}
            {p.prueba && (
              <span className="absolute -top-3 left-6 rounded-full border border-primary bg-primary-soft px-3 py-1 text-eyebrow uppercase text-primary-soft-fg">
                {p.prueba} días gratis
              </span>
            )}
            {etiqueta && <p className="text-eyebrow uppercase text-primary">{etiqueta}</p>}
            <h3 className={`text-h3 ${etiqueta ? "mt-1.5" : ""}`}>{titulo}</h3>
            <p className="mt-2 text-body-sm text-muted-foreground">{p.resumen}</p>

            <p className="mt-5">
              <span className="block whitespace-nowrap text-h2 tabular">{formatoPrecio(p.precio)} €</span>
              <span className="text-body-sm text-muted-foreground">
                {p.pago === "mensual" ? "al mes" : "pago único"}
                {p.prueba ? `, tras ${p.prueba} días gratis` : ""}
              </span>
            </p>

            <ul className="mt-5 grid gap-2.5 text-body-sm">
              {p.incluye.map((item) => (
                <li key={item} className="flex gap-2.5">
                  <Check size={17} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                  {item}
                </li>
              ))}
              {p.noIncluye && (
                <li className="flex gap-2.5 text-muted-foreground">
                  <Minus size={17} className="mt-0.5 shrink-0" aria-hidden />
                  {p.noIncluye}
                </li>
              )}
            </ul>

            <div className="mt-auto pt-6">
              <Button href={links.compra} variante={p.destacado ? "primario" : "secundario"} className="w-full">
                {p.prueba ? `Probar ${p.prueba} días gratis` : "Lo quiero"}
                <ArrowRight size={18} aria-hidden />
              </Button>
            </div>
          </li>
        </Reveal>
        );
      })}
    </ul>
  );
}
