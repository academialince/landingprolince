import { ArrowRight, Check } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { CtaFinal } from "@/components/sections/cta-final";
import { MaterialesTienda } from "@/components/tienda/materiales";
import { condiciones, formatoPrecio, suscripcion } from "@/content/tienda";
import { cursos } from "@/content/cursos";
import { absoluteUrl, links, rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Precio de la suscripción para preparar Guardia Civil",
  descripcion: `Un único plan por ${formatoPrecio(suscripcion.precio)} € al mes para preparar el acceso a la Guardia Civil y al Colegio de Guardias Jóvenes. Sin permanencia.`,
  ruta: rutas.tienda,
});

export default function Tienda() {
  return (
    <>
      <PageHero
        eyebrow="Precio"
        titulo="Un solo plan, todo incluido"
        entradilla="Sin niveles ni extras de pago. Sin permanencia: puedes darte de baja cuando quieras."
      />

      <Section>
        <Reveal>
          <div className="mx-auto flex max-w-xl flex-col rounded-2xl border-2 border-primary bg-surface p-7 shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)] sm:p-9">
            <h2 className="text-h3">{suscripcion.nombre}</h2>
            <p className="mt-2 text-muted-foreground">{suscripcion.resumen}</p>

            <p className="mt-6 flex items-baseline gap-1.5">
              <span className="text-display-l tabular">{formatoPrecio(suscripcion.precio)} €</span>
              <span className="text-body-sm text-muted-foreground">{suscripcion.periodo}</span>
            </p>

            <ul className="mt-7 grid gap-3">
              {suscripcion.incluye.map((item) => (
                <li key={item} className="flex gap-3 text-body-sm">
                  <Check size={18} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                  {item}
                </li>
              ))}
            </ul>

            <Button href={links.compra} tamano="lg" className="mt-8 w-full">
              Comprar
              <ArrowRight size={18} aria-hidden />
            </Button>
          </div>
        </Reveal>

        <Reveal className="mt-8">
          <p className="mx-auto max-w-xl text-center text-body-sm text-muted-foreground">
            Aplicable a{" "}
            {cursos.map((c, i) => (
              <span key={c.slug}>
                {i > 0 && " y "}
                <a href={rutas.curso(c.slug)} className="font-semibold text-primary hover:underline">
                  {c.nombre}
                </a>
              </span>
            ))}
            .
          </p>
        </Reveal>
      </Section>

      <Section
        eyebrow="Compra por separado"
        titulo="Temario y simulacros a tu medida"
        entradilla="También puedes comprar el material sin suscripción y elegir si lo quieres en formato digital o físico."
        fondo="suave"
      >
        <Reveal>
          <MaterialesTienda />
        </Reveal>
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
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Precio", ruta: rutas.tienda }])} />

      <JsonLd
        data={{
          "@context": "https://schema.org",
          "@type": "Product",
          name: suscripcion.nombre,
          description: suscripcion.resumen,
          url: absoluteUrl(rutas.tienda),
          offers: {
            "@type": "Offer",
            price: suscripcion.precio,
            priceCurrency: "EUR",
            availability: "https://schema.org/InStock",
          },
        }}
      />
    </>
  );
}
