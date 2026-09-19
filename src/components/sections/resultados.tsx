import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { testimonios } from "@/content/testimonios";

function iniciales(nombre: string) {
  return nombre
    .split(" ")
    .slice(0, 2)
    .map((p) => p[0])
    .join("")
    .toUpperCase();
}

export function Resultados() {
  // Sin testimonios reales no hay sección. Ver content/testimonios.ts.
  if (testimonios.length === 0) return null;

  return (
    <Section
      id="resultados"
      eyebrow="Resultados"
      titulo="Lo cuentan quienes ya están dentro"
      entradilla="Personas que se prepararon con nosotros y hoy visten el uniforme."
    >
      <ul className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {testimonios.map((t, i) => (
          <Reveal key={t.nombre} retardo={(i % 3) * 70}>
            <li className="h-full rounded-xl border border-border bg-surface p-6 flex flex-col">
              <blockquote className="grow text-body-lg">«{t.texto}»</blockquote>
              <div className="mt-6 flex items-center gap-3">
                <span
                  aria-hidden
                  className="inline-flex items-center justify-center size-11 rounded-full bg-primary-soft text-primary-soft-fg font-bold"
                >
                  {iniciales(t.nombre)}
                </span>
                <div className="min-w-0">
                  <p className="font-bold">{t.nombre}</p>
                  <p className="text-body-sm text-muted-foreground">
                    {t.promocion} · {t.destino}
                  </p>
                </div>
              </div>
            </li>
          </Reveal>
        ))}
      </ul>
    </Section>
  );
}
