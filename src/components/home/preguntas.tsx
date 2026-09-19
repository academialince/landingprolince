import { ChevronDown } from "lucide-react";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { EnlaceSeccion } from "@/components/ui/enlace-seccion";
import { faq } from "@/content/faq";
import { rutas } from "@/lib/links";

export function PreguntasHome() {
  return (
    <Section
      eyebrow="Preguntas"
      titulo="Lo que nos preguntáis antes de empezar"
      ancho="estrecho"
      fondo="suave"
    >
      <div className="grid gap-3">
        {faq.slice(0, 4).map((item, i) => (
          <Reveal key={item.pregunta} retardo={i * 40}>
            <details className="group rounded-xl border border-border bg-surface open:border-border-strong">
              <summary className="flex cursor-pointer list-none items-center justify-between gap-4 p-5 text-h3 [&::-webkit-details-marker]:hidden">
                {item.pregunta}
                <ChevronDown
                  size={20}
                  aria-hidden
                  className="shrink-0 text-muted-foreground transition-transform duration-200 ease-[var(--ease-product)] group-open:rotate-180"
                />
              </summary>
              <p className="-mt-1 px-5 pb-5 leading-[1.7] text-muted-foreground">
                {item.respuesta}
              </p>
            </details>
          </Reveal>
        ))}
      </div>
      <Reveal className="mt-8">
        <EnlaceSeccion href={rutas.preguntas}>Ver todas las preguntas</EnlaceSeccion>
      </Reveal>
    </Section>
  );
}
