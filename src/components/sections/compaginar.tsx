import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Icono } from "@/components/ui/icon";
import { compaginar } from "@/content/propuesta";

export function Compaginar() {
  return (
    <Section
      id="compaginar"
      eyebrow="Compaginar"
      titulo={compaginar.titulo}
      entradilla={compaginar.entradilla}
      fondo="suave"
    >
      <ul className="grid gap-x-10 gap-y-8 sm:grid-cols-2">
        {compaginar.puntos.map((p, i) => (
          <Reveal key={p.titulo} retardo={(i % 2) * 70}>
            <li className="flex gap-4">
              <span className="inline-flex items-center justify-center size-11 shrink-0 rounded-lg bg-surface border border-border text-primary">
                <Icono nombre={p.icono} size={21} />
              </span>
              <div className="min-w-0">
                <h3 className="text-h3">{p.titulo}</h3>
                <p className="text-muted-foreground mt-2">{p.detalle}</p>
              </div>
            </li>
          </Reveal>
        ))}
      </ul>
    </Section>
  );
}
