import { ChevronDown } from "lucide-react";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { faq } from "@/content/faq";

/*
 * Acordeón con `details`/`summary` nativos: la semántica de expandido, el teclado y el buscador
 * del navegador vienen de serie, y no cuesta un solo byte de JavaScript.
 */
export function Faq() {
  return (
    <Section
      id="preguntas"
      eyebrow="Preguntas"
      titulo="Lo que nos preguntáis antes de empezar"
      ancho="estrecho"
    >
      <div className="grid gap-3">
        {faq.map((item, i) => (
          <Reveal key={item.pregunta} retardo={Math.min(i, 4) * 40}>
            <details className="group rounded-xl border border-border bg-surface open:border-border-strong">
              <summary className="flex items-center justify-between gap-4 cursor-pointer list-none p-5 text-h3 [&::-webkit-details-marker]:hidden">
                {item.pregunta}
                <ChevronDown
                  size={20}
                  aria-hidden
                  className="shrink-0 text-muted-foreground transition-transform duration-200 ease-[var(--ease-product)] group-open:rotate-180"
                />
              </summary>
              <p className="px-5 pb-5 -mt-1 text-muted-foreground leading-[1.7]">{item.respuesta}</p>
            </details>
          </Reveal>
        ))}
      </div>
    </Section>
  );
}
