import type { Metadata } from "next";
import { Check, X } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Icono } from "@/components/ui/icon";
import { Foto } from "@/components/ui/foto";
import { CtaFinal } from "@/components/sections/cta-final";
import { compromisos, equipo, historia, principios } from "@/content/equipo";
import { rutas } from "@/lib/links";

export const metadata: Metadata = {
  title: "Nosotros",
  description:
    "Quiénes somos, por qué existe ProLince y a qué nos comprometemos con quien prepara una oposición con nosotros.",
  alternates: { canonical: rutas.nosotros },
};

function iniciales(nombre: string) {
  return nombre
    .split(/[\s-]/)
    .slice(0, 2)
    .map((p) => p[0])
    .join("")
    .toUpperCase();
}

export default function Nosotros() {
  return (
    <>
      <PageHero eyebrow="Nosotros" titulo={historia.titulo} entradilla={historia.entradilla} />

      <Section ancho="estrecho">
        <div className="grid gap-5">
          {historia.parrafos.map((p, i) => (
            <Reveal key={p} retardo={i * 60}>
              <p className="text-body-lg leading-[1.7] text-muted-foreground">{p}</p>
            </Reveal>
          ))}
        </div>
      </Section>

      <Section
        eyebrow="Principios"
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
      </Section>

      <Section
        eyebrow="El equipo"
        titulo="Quién está detrás"
        entradilla="Somos cuatro y cada uno se ocupa de una parte concreta de tu preparación. Nos vas a leer en el tablón del curso."
      >
        <ul className="grid gap-8 sm:grid-cols-2">
          {equipo.map((m, i) => (
            <Reveal key={m.slug} retardo={(i % 2) * 80}>
              <li className="h-full overflow-hidden rounded-2xl border border-border bg-surface">
                <div className="relative aspect-[4/3] w-full">
                  <Foto
                    src={m.foto}
                    alt={`${m.nombre}, ${m.cargo}`}
                    iniciales={iniciales(m.nombre)}
                    sizes="(max-width: 640px) 100vw, 480px"
                    className="h-full w-full"
                  />
                </div>
                <div className="p-7">
                  <h3 className="text-h2">{m.nombre}</h3>
                  <p className="mt-1 font-semibold text-primary">{m.cargo}</p>
                  <div className="mt-4 grid gap-3">
                    {m.bio.map((b) => (
                      <p key={b} className="text-muted-foreground leading-[1.7]">
                        {b}
                      </p>
                    ))}
                  </div>
                  <ul className="mt-5 flex flex-wrap gap-2">
                    {m.foco.map((f) => (
                      <li
                        key={f}
                        className="rounded-full bg-primary-soft px-3 py-1 text-body-sm font-semibold text-primary-soft-fg"
                      >
                        {f}
                      </li>
                    ))}
                  </ul>
                </div>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      <Section
        eyebrow="Compromisos"
        titulo="Lo que hacemos y lo que no"
        entradilla="Preferimos decirlo por escrito y que nos lo puedas reclamar."
        fondo="suave"
      >
        <div className="grid gap-6 md:grid-cols-2">
          <Reveal>
            <div className="h-full rounded-xl border border-border bg-surface p-7">
              <h3 className="text-h3 flex items-center gap-2.5">
                <span className="inline-flex size-8 items-center justify-center rounded-full bg-success/12 text-success">
                  <Check size={17} aria-hidden />
                </span>
                Lo que hacemos
              </h3>
              <ul className="mt-5 grid gap-3">
                {compromisos.hacemos.map((c) => (
                  <li key={c} className="flex gap-3 text-muted-foreground">
                    <Check size={17} className="mt-0.5 shrink-0 text-success" aria-hidden />
                    {c}
                  </li>
                ))}
              </ul>
            </div>
          </Reveal>
          <Reveal retardo={70}>
            <div className="h-full rounded-xl border border-border bg-surface p-7">
              <h3 className="text-h3 flex items-center gap-2.5">
                <span className="inline-flex size-8 items-center justify-center rounded-full bg-danger/10 text-danger">
                  <X size={17} aria-hidden />
                </span>
                Lo que no vas a ver
              </h3>
              <ul className="mt-5 grid gap-3">
                {compromisos.noHacemos.map((c) => (
                  <li key={c} className="flex gap-3 text-muted-foreground">
                    <X size={17} className="mt-0.5 shrink-0 text-danger" aria-hidden />
                    {c}
                  </li>
                ))}
              </ul>
            </div>
          </Reveal>
        </div>
      </Section>

      <CtaFinal />
    </>
  );
}
