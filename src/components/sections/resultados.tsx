import { Quote, ShieldCheck } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { CarruselOpiniones } from "@/components/sections/carrusel-opiniones";
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

/**
 * «Lo que dicen de nosotros». Sin `curso`, en la portada: todos los testimonios. Con `curso`, en la
 * página del curso: solo los de ese curso. En los dos casos, en un carrusel de 15 s por opinión. Si no hay ninguno que
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

        <div className="mt-12">
          <CarruselOpiniones
            tarjetas={lista.map((t) => <Tarjeta key={t.slug} t={t} conCurso={!curso} />)}
            etiquetas={lista.map((t) => t.nombre)}
          />
        </div>
      </Container>
    </section>
  );
}
