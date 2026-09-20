import { Quote, ShieldCheck } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Foto } from "@/components/ui/foto";
import { testimonios } from "@/content/testimonios";

function iniciales(nombre: string) {
  return nombre
    .replace(/\./g, "")
    .split(/\s+/)
    .slice(0, 2)
    .map((p) => p[0])
    .join("")
    .toUpperCase();
}

function Tira({ copia = false }: { copia?: boolean }) {
  return (
    <ul
      aria-hidden={copia || undefined}
      className={`flex shrink-0 items-stretch ${copia ? "marquesina-copia" : ""}`}
    >
      {testimonios.map((t) => (
        <li key={t.slug} className="w-[20rem] px-3 sm:w-[24rem] sm:px-3.5">
          <article className="flex h-full flex-col rounded-2xl border border-border bg-surface p-7">
            <Quote size={26} className="shrink-0 text-primary/25" aria-hidden />

            <blockquote className="mt-4 grow leading-[1.7]">«{t.texto}»</blockquote>

            <div className="mt-6 flex items-center gap-3.5 border-t border-border pt-5">
              <div className="relative size-12 shrink-0 overflow-hidden rounded-full">
                <Foto
                  src={t.foto}
                  alt={`${t.nombre}, ${t.destino}`}
                  iniciales={iniciales(t.nombre)}
                  sizes="48px"
                  className="h-full w-full [&>span]:text-h3"
                />
              </div>
              <div className="min-w-0">
                <p className="font-bold">{t.nombre}</p>
                <p className="text-body-sm text-muted-foreground">
                  {t.promocion} · {t.destino}
                </p>
              </div>
            </div>

            <p className="mt-4 inline-flex items-center gap-1.5 self-start rounded-full bg-primary-soft px-3 py-1 text-body-sm font-semibold text-primary-soft-fg">
              <ShieldCheck size={14} aria-hidden />
              {t.curso}
            </p>
          </article>
        </li>
      ))}
    </ul>
  );
}

export function Resultados() {
  // Sin testimonios reales no hay sección. Ver content/testimonios.ts.
  if (testimonios.length === 0) return null;

  return (
    <section id="resultados" className="overflow-hidden bg-surface-subtle py-16 sm:py-24">
      <Container>
        <Reveal className="max-w-[46rem]">
          <p className="text-eyebrow uppercase text-primary">Resultados</p>
          <h2 className="text-h2 mt-3">Hoy visten el uniforme</h2>
          <p className="text-body-lg mt-4 text-muted-foreground">
            Alumnos que se prepararon con nosotros y hoy están destinados. Cada uno cuenta lo que
            a él le costó.
          </p>
        </Reveal>
      </Container>

      {/* A sangre: la marquesina necesita todo el ancho para que el fundido de los bordes
          coincida con el borde de la pantalla y no con el del contenedor. */}
      <Reveal className="mt-12">
        <div className="marquesina">
          <div className="marquesina-pista" style={{ ["--marquesina-duracion" as string]: "72s" }}>
            <Tira />
            <Tira copia />
          </div>
        </div>
      </Reveal>
    </section>
  );
}
