import { Reveal } from "@/components/layout/reveal";
import { kpis } from "@/content/kpis";

function Tira({ copia = false }: { copia?: boolean }) {
  return (
    <ul
      aria-hidden={copia || undefined}
      className={`flex shrink-0 items-start ${copia ? "marquesina-copia" : ""}`}
    >
      {kpis.map((k) => (
        <li key={k.etiqueta} className="flex w-[17rem] flex-col px-7 sm:w-[22rem] sm:px-8">
          <span className="text-display-l leading-none tabular">{k.valor}</span>
          <span className="mt-2 text-h3 text-primary-soft">{k.etiqueta}</span>
          <span className="mt-1.5 text-body-sm text-white/65">{k.detalle}</span>
        </li>
      ))}
    </ul>
  );
}

export function Kpis() {
  return (
    <section className="bg-primary-deep py-12 text-white lg:py-14" aria-label="Datos de la academia">
      <Reveal>
        <div className="marquesina">
          <div className="marquesina-pista" style={{ ["--marquesina-duracion" as string]: "34s" }}>
            <Tira />
            <Tira copia />
          </div>
        </div>
      </Reveal>
    </section>
  );
}
