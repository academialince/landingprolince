import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { oposicionesProximas } from "@/content/oposiciones";

export function Proximamente() {
  if (oposicionesProximas.length === 0) return null;

  return (
    <Section
      id="proximamente"
      eyebrow="Hoja de ruta"
      titulo="Las especialidades llegan después"
      entradilla="Primero el acceso al Cuerpo. Estas son las que estamos preparando, y todavía no están disponibles."
      fondo="suave"
    >
      <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        {oposicionesProximas.map((o, i) => (
          <Reveal key={o.slug} retardo={(i % 3) * 50}>
            <li className="h-full rounded-xl border border-dashed border-border-strong p-5">
              <div className="flex items-center justify-between gap-3">
                <h3 className="text-h3">{o.nombre}</h3>
                <span className="shrink-0 rounded-full bg-muted text-muted-foreground text-eyebrow uppercase px-2.5 py-1">
                  Próximamente
                </span>
              </div>
              <p className="text-body-sm text-muted-foreground mt-2">{o.resumen}</p>
            </li>
          </Reveal>
        ))}
      </ul>
    </Section>
  );
}
