import { Check } from "lucide-react";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { planes } from "@/content/planes";
import { links } from "@/lib/links";

export function Planes() {
  return (
    <Section
      id="planes"
      eyebrow="Precios"
      titulo="Elige cómo prepararte"
      entradilla="Sin permanencia y sin letra pequeña. Puedes cambiar de plan cuando quieras."
    >
      <ul className="grid gap-6 lg:grid-cols-3 items-start">
        {planes.map((plan, i) => (
          <Reveal key={plan.slug} retardo={i * 70}>
            <li
              className={`h-full rounded-2xl p-7 flex flex-col ${
                plan.destacado
                  ? "border-2 border-primary bg-surface shadow-[0_12px_32px_color-mix(in_oklch,var(--color-primary)_12%,transparent)]"
                  : "border border-border bg-surface"
              }`}
            >
              {plan.destacado && (
                <span className="self-start mb-4 rounded-full bg-primary-soft text-primary-soft-fg text-eyebrow uppercase px-3 py-1">
                  El más elegido
                </span>
              )}
              <h3 className="text-h3">{plan.nombre}</h3>
              <p className="text-muted-foreground mt-2">{plan.resumen}</p>

              {plan.precio !== null && (
                <p className="mt-6 flex items-baseline gap-2">
                  <span className="text-display-l tabular">{plan.precio} €</span>
                  <span className="text-body-sm text-muted-foreground">{plan.periodo}</span>
                </p>
              )}

              <ul className="mt-6 grid gap-3 grow">
                {plan.incluye.map((item) => (
                  <li key={item} className="flex gap-3 text-body-sm">
                    <Check size={18} className="shrink-0 text-primary mt-0.5" aria-hidden />
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
    </Section>
  );
}
