import type { Metadata } from "next";
import { FileText } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { Proximamente } from "@/components/sections/proximamente";
import { CtaFinal } from "@/components/sections/cta-final";
import { oposicionPrincipal } from "@/content/oposiciones";
import { JsonLd, cursoJsonLd } from "@/lib/seo";
import { links } from "@/lib/links";

export const metadata: Metadata = {
  title: "Acceso a la Guardia Civil",
  description:
    "Requisitos, fases del proceso selectivo y convocatoria de acceso a la Guardia Civil, explicados sin rodeos.",
  alternates: { canonical: "/la-oposicion" },
};

const requisitos = [
  "Tener la nacionalidad española",
  "Tener cumplidos 18 años",
  "Estar en posesión del título de Bachiller o equivalente",
  "Carecer de antecedentes penales",
  "No estar privado de los derechos civiles",
  "Cumplir el cuadro médico de exclusiones vigente",
];

export default function LaOposicion() {
  const { nombre, resumen, fases, convocatoria } = oposicionPrincipal;

  return (
    <>
      <PageHero eyebrow="La oposición" titulo={nombre} entradilla={resumen}>
        <div className="flex flex-wrap gap-3">
          <Button href={links.registro} tamano="lg">
            Empezar a prepararla
          </Button>
          {convocatoria && (
            <Button href={convocatoria.urlBoe} variante="secundario" tamano="lg">
              <FileText size={17} aria-hidden />
              Texto en el BOE
            </Button>
          )}
        </div>
      </PageHero>

      {convocatoria && (
        <Section eyebrow="Convocatoria" titulo={`Convocatoria ${convocatoria.anio}`}>
          <Reveal>
            <div className="flex flex-wrap gap-10 rounded-xl border border-border bg-surface-tinted p-8">
              <div>
                <p className="text-eyebrow uppercase text-muted-foreground">Plazas</p>
                <p className="text-display-l mt-1 tabular">
                  {convocatoria.plazas.toLocaleString("es-ES")}
                </p>
              </div>
              <div>
                <p className="text-eyebrow uppercase text-muted-foreground">Publicación</p>
                <p className="text-display-l mt-1">{convocatoria.publicacionBoe}</p>
              </div>
            </div>
          </Reveal>
        </Section>
      )}

      <Section
        eyebrow="Requisitos"
        titulo="Qué te piden para presentarte"
        entradilla="Son los requisitos generales. La convocatoria vigente es la que manda: compruébalos siempre en el texto oficial antes de matricularte."
      >
        <ul className="grid gap-3 sm:grid-cols-2">
          {requisitos.map((r, i) => (
            <Reveal key={r} retardo={(i % 2) * 50}>
              <li className="flex items-start gap-3 rounded-xl border border-border bg-surface p-5">
                <span
                  aria-hidden
                  className="mt-2 size-1.5 shrink-0 rounded-full bg-primary"
                />
                <span className="font-medium">{r}</span>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      {fases && (
        <Section
          eyebrow="Proceso selectivo"
          titulo="Las fases, por orden"
          entradilla="Cada fase elimina. No sirve de nada ir sobrado en el test si las marcas físicas te dejan fuera."
          fondo="suave"
        >
          <ol className="grid gap-4">
            {fases.map((fase, i) => (
              <Reveal key={fase.nombre} retardo={i * 60}>
                <li className="flex gap-5 rounded-xl border border-border bg-surface p-6">
                  <span
                    aria-hidden
                    className="inline-flex size-10 shrink-0 items-center justify-center rounded-full bg-primary text-body-sm font-bold text-primary-fg tabular"
                  >
                    {i + 1}
                  </span>
                  <div className="min-w-0">
                    <h3 className="text-h3">{fase.nombre}</h3>
                    <p className="mt-2 text-muted-foreground">{fase.detalle}</p>
                  </div>
                </li>
              </Reveal>
            ))}
          </ol>
        </Section>
      )}

      <Proximamente />
      <CtaFinal />
      <JsonLd data={cursoJsonLd()} />
    </>
  );
}
