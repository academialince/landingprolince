import { Quote, ShieldCheck } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Foto } from "@/components/ui/foto";
import { cursoPorSlug } from "@/content/cursos";
import { testimoniosVisibles, type Testimonio } from "@/content/testimonios";

function iniciales(nombre: string) {
  return nombre
    .replace(/\./g, "")
    .split(/\s+/)
    .slice(0, 2)
    .map((p) => p[0])
    .join("")
    .toUpperCase();
}

function Tarjeta({ t, conCurso }: { t: Testimonio; conCurso: boolean }) {
  return (
    <article className="relative flex h-full flex-col rounded-2xl border border-border bg-surface p-7">
      {t.borrador && (
        <span className="absolute right-4 top-4 rounded-sm bg-warning/15 px-2 py-0.5 text-[0.65rem] font-bold uppercase tracking-wider text-warning">
          Borrador
        </span>
      )}
      <Quote size={26} className="shrink-0 text-primary" aria-hidden />

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

      {conCurso && (
        <p className="mt-4 inline-flex items-center gap-1.5 self-start rounded-full bg-primary-soft px-3 py-1 text-body-sm font-semibold text-primary-soft-fg">
          <ShieldCheck size={14} aria-hidden />
          {cursoPorSlug(t.curso)?.nombre ?? t.curso}
        </p>
      )}
    </article>
  );
}

function Tira({ lista, copia = false }: { lista: Testimonio[]; copia?: boolean }) {
  return (
    <ul aria-hidden={copia || undefined} className={`flex shrink-0 items-stretch ${copia ? "marquesina-copia" : ""}`}>
      {lista.map((t) => (
        <li key={t.slug} className="w-[20rem] px-3 sm:w-[24rem] sm:px-3.5">
          <Tarjeta t={t} conCurso />
        </li>
      ))}
    </ul>
  );
}

/**
 * «Lo que dicen de nosotros». Sin `curso`, en la portada: todos los testimonios en una marquesina.
 * Con `curso`, en la página del curso: solo los de ese curso, en rejilla. Si no hay ninguno que
 * se pueda enseñar (en producción, solo los reales; ver content/testimonios.ts), no se pinta.
 */
export function Resultados({ curso }: { curso?: string }) {
  const lista = testimoniosVisibles(curso);
  if (lista.length === 0) return null;
  const nombreCurso = curso ? cursoPorSlug(curso)?.nombre : undefined;

  return (
    <section id="opiniones" className="overflow-hidden bg-surface-subtle py-16 sm:py-24">
      <Container>
        <Reveal className="max-w-[46rem]">
          <p className="text-eyebrow uppercase text-primary">Opiniones</p>
          <h2 className="text-h2 mt-3">{curso ? "Lo que dicen del curso" : "Lo que dicen de nosotros"}</h2>
          <p className="text-body-lg mt-4 text-muted-foreground">
            {nombreCurso
              ? `Opiniones de alumnos del curso ${nombreCurso}, con sus propias palabras.`
              : "Alumnos que se han preparado con ProLince. Cada uno cuenta lo que a él le costó y lo que le sirvió."}
          </p>
        </Reveal>

        {curso && (
          <ul className="mt-12 grid gap-5 md:grid-cols-2 lg:grid-cols-3">
            {lista.map((t, i) => (
              <li key={t.slug} className="h-full">
                <Reveal retardo={(i % 3) * 60} className="h-full">
                  <Tarjeta t={t} conCurso={false} />
                </Reveal>
              </li>
            ))}
          </ul>
        )}
      </Container>

      {/* A sangre: la marquesina necesita todo el ancho para que el fundido de los bordes
          coincida con el borde de la pantalla y no con el del contenedor. */}
      {!curso && (
        <Reveal className="mt-12">
          <div className="marquesina">
            <div className="marquesina-pista" style={{ ["--marquesina-duracion" as string]: "72s" }}>
              <Tira lista={lista} />
              <Tira lista={lista} copia />
            </div>
          </div>
        </Reveal>
      )}
    </section>
  );
}
