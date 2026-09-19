import { Check } from "lucide-react";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { EnlaceSeccion } from "@/components/ui/enlace-seccion";
import { planes } from "@/content/planes";
import { links, rutas } from "@/lib/links";

export function PreciosHome() {
  return (
    <Section
      eyebrow="Precios"
      titulo="Elige cómo prepararte"
      entradilla="Sin permanencia y sin letra pequeña. Puedes cambiar de plan cuando quieras."
    >
      <ul className="grid items-start gap-6 lg:grid-cols-3">
        {planes.map((plan, i) => (
          <Reveal key={plan.slug} retardo={i * 70}>
            <li
              className={`flex h-full flex-col rounded-2xl p-7 ${
                plan.destacado
                  ? "border-2 border-primary bg-surface shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)]"
                  : "border border-border bg-surface"
              }`}
            >
              {plan.destacado && (
                <span className="mb-4 self-start rounded-full bg-primary-soft px-3 py-1 text-eyebrow uppercase text-primary-soft-fg">
                  El más elegido
                </span>
              )}
              <h3 className="text-h3">{plan.nombre}</h3>
              <p className="mt-2 text-muted-foreground">{plan.resumen}</p>

              {plan.precio !== null && (
                <p className="mt-6 flex items-baseline gap-2">
                  <span className="text-display-l tabular">{plan.precio} €</span>
                  <span className="text-body-sm text-muted-foreground">{plan.periodo}</span>
                </p>
              )}

              <ul className="mt-6 grid grow gap-3">
                {plan.incluye.map((item) => (
                  <li key={item} className="flex gap-3 text-body-sm">
                    <Check size={18} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                    {item}
                  </li>
                ))}
              </ul>

              <Button
                href={links.registro}
                variante={plan.destacado ? "primario" : "secundario"}
                tamano="lg"
                className="mt-7 w-full"
              >
                {plan.precio === null ? "Ver precio y matricularme" : "Matricularme"}
              </Button>
            </li>
          </Reveal>
        ))}
      </ul>
      <Reveal className="mt-10">
        <EnlaceSeccion href={rutas.precios}>Comparar los planes al detalle</EnlaceSeccion>
      </Reveal>
    </Section>
  );
}
