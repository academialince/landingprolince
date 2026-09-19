import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Icono } from "@/components/ui/icon";
import { incluye } from "@/content/propuesta";

export function Incluye() {
  return (
    <Section id="incluye" eyebrow="Qué incluye" titulo={incluye.titulo} entradilla={incluye.entradilla}>
      <ul className="grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
        {incluye.caracteristicas.map((c, i) => (
          <Reveal key={c.titulo} retardo={(i % 3) * 70}>
            <li className="h-full rounded-xl border border-border bg-surface p-6 transition-[border-color,box-shadow] duration-200 ease-[var(--ease-product)] hover:border-border-strong hover:shadow-[0_6px_18px_color-mix(in_oklch,var(--color-foreground)_6%,transparent)]">
              <span className="inline-flex items-center justify-center size-11 rounded-lg bg-primary-soft text-primary-soft-fg">
                <Icono nombre={c.icono} size={21} />
              </span>
              <h3 className="text-h3 mt-5">{c.titulo}</h3>
              <p className="text-muted-foreground mt-2">{c.detalle}</p>
            </li>
          </Reveal>
        ))}
      </ul>
    </Section>
  );
}
