import { Check, Minus } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { Icono } from "@/components/ui/icon";
import { CtaFinal } from "@/components/sections/cta-final";
import { comparativa, complementos, condiciones, suscripciones } from "@/content/tienda";
import { cursos } from "@/content/cursos";
import { absoluteUrl, links, rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Precios y suscripciones para preparar Guardia Civil",
  descripcion:
    "Suscripciones y complementos para preparar el acceso a la Guardia Civil y al Colegio de Guardias Jóvenes. Sin permanencia.",
  ruta: rutas.tienda,
});

function Celda({ valor }: { valor: boolean | string }) {
  if (valor === true) return <Check size={18} className="mx-auto text-primary" aria-label="Incluido" />;
  if (valor === false)
    return <Minus size={18} className="mx-auto text-border-strong" aria-label="No incluido" />;
  return <span className="text-body-sm font-semibold">{valor}</span>;
}

export default function Tienda() {
  return (
    <>
      <PageHero
        eyebrow="Tienda"
        titulo="Suscripciones y complementos"
        entradilla="Elige cuánto tiempo quieres preparar y con qué intensidad. Sin permanencia: puedes darte de baja desde tu cuenta cuando quieras."
      />

      <Section>
        <ul className="grid items-start gap-6 lg:grid-cols-3">
          {suscripciones.map((plan, i) => (
            <Reveal key={plan.slug} retardo={i * 70}>
              <li
                className={`flex h-full flex-col rounded-2xl p-7 ${
                  plan.destacado
                    ? "border-2 border-primary bg-surface shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)]"
                    : "border border-border bg-surface"
                }`}
              >
                <div className="flex items-center justify-between gap-3">
                  <h2 className="text-h3">{plan.nombre}</h2>
                  {plan.destacado && (
                    <span className="rounded-full bg-primary-soft px-3 py-1 text-eyebrow uppercase text-primary-soft-fg">
                      El más elegido
                    </span>
                  )}
                </div>
                <p className="mt-2 text-muted-foreground">{plan.resumen}</p>

                <p className="mt-6 flex items-baseline gap-1.5">
                  <span className="text-display-l tabular">{plan.precio} €</span>
                  <span className="text-body-sm text-muted-foreground">{plan.periodo}</span>
                </p>
                <p className="mt-1 flex h-5 items-center gap-2 text-body-sm">
                  {plan.equivalencia && (
                    <span className="text-muted-foreground">{plan.equivalencia}</span>
                  )}
                  {plan.ahorro && (
                    <span className="font-semibold text-success">{plan.ahorro}</span>
                  )}
                </p>

                <ul className="mt-6 grid grow gap-3">
                  {plan.incluye.map((item) => (
                    <li key={item} className="flex gap-3 text-body-sm">
                      <Check size={18} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                      {item}
                    </li>
                  ))}
                </ul>

                <Button
                  href={links.registro}
                  variante={plan.destacado ? "primario" : "secundario"}
                  tamano="lg"
                  className="mt-7 w-full"
                >
                  Suscribirme
                </Button>
              </li>
            </Reveal>
          ))}
        </ul>

        <Reveal className="mt-8">
          <p className="text-body-sm text-muted-foreground">
            Aplicable a{" "}
            {cursos.map((c, i) => (
              <span key={c.slug}>
                {i > 0 && " y "}
                <a href={rutas.curso(c.slug)} className="font-semibold text-primary hover:underline">
                  {c.nombre}
                </a>
              </span>
            ))}
            . El pago y la gestión de la suscripción ocurren en la plataforma.
          </p>
        </Reveal>
      </Section>

      <Section
        eyebrow="Comparativa"
        titulo="Qué entra en cada plan"
        entradilla="La diferencia está en los simulacros, el ranking y la corrección personal, que es lo que más mueve la nota."
        fondo="suave"
      >
        <Reveal>
          <div className="overflow-x-auto rounded-xl border border-border bg-surface">
            <table className="w-full min-w-[34rem] border-collapse text-left">
              <caption className="sr-only">Comparativa de suscripciones</caption>
              <thead>
                <tr className="border-b border-border">
                  <th scope="col" className="px-5 py-4 font-bold">
                    Característica
                  </th>
                  {suscripciones.map((p) => (
                    <th key={p.slug} scope="col" className="px-5 py-4 text-center font-bold">
                      {p.nombre}
                    </th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {comparativa.filas.map((fila) => (
                  <tr key={fila.caracteristica} className="border-b border-border last:border-0">
                    <th scope="row" className="px-5 py-3.5 font-medium">
                      {fila.caracteristica}
                    </th>
                    <td className="px-5 py-3.5 text-center">
                      <Celda valor={fila.mensual} />
                    </td>
                    <td className="px-5 py-3.5 text-center">
                      <Celda valor={fila.trimestral} />
                    </td>
                    <td className="px-5 py-3.5 text-center">
                      <Celda valor={fila.anual} />
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </Reveal>
      </Section>

      <Section
        eyebrow="Complementos"
        titulo="Refuerzos de pago único"
        entradilla="No hacen falta para preparar la oposición. Están para las semanas en las que se necesita apretar en algo concreto."
      >
        <ul className="grid gap-5 md:grid-cols-3">
          {complementos.map((c, i) => (
            <Reveal key={c.slug} retardo={i * 70}>
              <li className="flex h-full flex-col rounded-xl border border-border bg-surface p-6">
                <span className="inline-flex size-11 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                  <Icono nombre={c.icono} size={21} />
                </span>
                <h3 className="text-h3 mt-5">{c.nombre}</h3>
                <p className="mt-2 grow text-muted-foreground">{c.detalle}</p>
                <p className="mt-5 flex items-baseline gap-1.5">
                  <span className="text-h2 tabular">{c.precio} €</span>
                  <span className="text-body-sm text-muted-foreground">{c.formato}</span>
                </p>
                <Button href={links.registro} variante="secundario" className="mt-5 w-full">
                  Comprar
                </Button>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      <section className="pb-16 sm:pb-24">
        <Container ancho="estrecho">
          <Reveal>
            <ul className="grid gap-2.5 rounded-xl border border-border bg-surface-subtle p-7 text-body-sm text-muted-foreground">
              {condiciones.map((c) => (
                <li key={c} className="flex gap-3">
                  <span aria-hidden className="mt-2 size-1 shrink-0 rounded-full bg-border-strong" />
                  {c}
                </li>
              ))}
            </ul>
          </Reveal>
        </Container>
      </section>

      <CtaFinal />
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Precios y suscripciones", ruta: rutas.tienda }])} />

      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "ItemList",
          name: "Suscripciones de ProLince",
          itemListElement: suscripciones.map((p, i) => ({
            "@type": "ListItem",
            position: i + 1,
            item: {
              "@type": "Product",
              name: `Suscripción ${p.nombre}`,
              description: p.resumen,
              url: absoluteUrl(rutas.tienda),
              offers: {
                "@type": "Offer",
                price: p.precio,
                priceCurrency: "EUR",
                availability: "https://schema.org/InStock",
              },
            },
          })),
        }}
      />
    </>
  );
}
