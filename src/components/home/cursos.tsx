import Image from "next/image";
import Link from "next/link";
import { ArrowRight } from "lucide-react";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { cursos } from "@/content/cursos";
import { rutas } from "@/lib/links";

export function CursosHome() {
  return (
    <Section
      id="cursos"
      eyebrow="Cursos"
      titulo="Dos formas de entrar en la Guardia Civil"
      entradilla="Elige la que te corresponde por edad y titulación. Cada una tiene su propio temario, sus pruebas y su calendario."
    >
      <ul className="grid gap-6 lg:grid-cols-2">
        {cursos.map((curso, i) => (
          <Reveal key={curso.slug} retardo={i * 80}>
            <li className="h-full">
              <Link
                href={rutas.curso(curso.slug)}
                className="group flex h-full flex-col overflow-hidden rounded-2xl border border-border bg-surface transition-[border-color,box-shadow,transform] duration-200 ease-[var(--ease-product)] hover:-translate-y-0.5 hover:border-border-strong hover:shadow-[0_18px_40px_-16px_rgba(2,67,52,0.28)]"
              >
                <div className="relative aspect-[16/9] overflow-hidden">
                  <Image
                    src={curso.imagen}
                    alt={curso.imagenAlt}
                    fill
                    sizes="(max-width: 1024px) 100vw, 560px"
                    className="object-cover transition-transform duration-500 ease-[var(--ease-product)] group-hover:scale-[1.03]"
                  />
                  <span className="absolute left-4 top-4 rounded-full bg-background/92 px-3 py-1 text-eyebrow uppercase text-primary backdrop-blur-sm">
                    {curso.eyebrow}
                  </span>
                </div>

                <div className="flex grow flex-col p-7">
                  <h3 className="text-h2">{curso.nombre}</h3>
                  <p className="mt-3 grow text-muted-foreground">{curso.entradilla}</p>

                  <dl className="mt-6 flex flex-wrap gap-x-8 gap-y-3 border-t border-border pt-5">
                    {curso.destacados.map((d) => (
                      <div key={d.etiqueta}>
                        <dt className="sr-only">{d.etiqueta}</dt>
                        <dd className="text-h3 tabular text-primary">{d.valor}</dd>
                        <dd className="text-body-sm text-muted-foreground">{d.etiqueta}</dd>
                      </div>
                    ))}
                  </dl>

                  <span className="mt-6 inline-flex min-h-11 w-fit items-center gap-2 rounded-md border border-primary bg-transparent px-4 font-bold text-primary transition-colors duration-200 group-hover:bg-primary group-hover:text-primary-fg group-focus-visible:bg-primary group-focus-visible:text-primary-fg">
                    Ver el curso
                    <ArrowRight
                      size={17}
                      aria-hidden
                      className="transition-transform duration-200 ease-[var(--ease-product)] group-hover:translate-x-1"
                    />
                  </span>
                </div>
              </Link>
            </li>
          </Reveal>
        ))}
      </ul>
    </Section>
  );
}
