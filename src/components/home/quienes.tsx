import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Icono } from "@/components/ui/icon";
import { EnlaceSeccion } from "@/components/ui/enlace-seccion";
import { principios } from "@/content/quienes-somos";
import { rutas } from "@/lib/links";

export function QuienesHome() {
  return (
    <Section
      eyebrow="Quiénes somos"
      titulo="Cómo trabajamos"
      entradilla="Cuatro cosas que marcan la diferencia entre una academia que te acompaña y una que te vende un PDF."
      fondo="suave"
    >
      <ul className="grid gap-5 sm:grid-cols-2">
        {principios.map((p, i) => (
          <Reveal key={p.titulo} retardo={(i % 2) * 70}>
            <li className="h-full rounded-xl border border-border bg-surface p-6">
              <span className="inline-flex size-11 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                <Icono nombre={p.icono} size={21} />
              </span>
              <h3 className="text-h3 mt-5">{p.titulo}</h3>
              <p className="mt-2 text-muted-foreground">{p.detalle}</p>
            </li>
          </Reveal>
        ))}
      </ul>
      <Reveal className="mt-10">
        <EnlaceSeccion href={rutas.quienesSomos}>Conocer la academia</EnlaceSeccion>
      </Reveal>
    </Section>
  );
}
