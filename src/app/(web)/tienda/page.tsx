import { Check } from "lucide-react";
import { notFound } from "next/navigation";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { CtaFinal } from "@/components/sections/cta-final";
import { MaterialesTienda } from "@/components/tienda/materiales";
import { PacksCurso } from "@/components/tienda/packs-curso";
import { condiciones, formatoPrecio, materialesVisibles, packs, packsVisibles, planGratis, rangoPrecios } from "@/content/tienda";
import { cursos } from "@/content/cursos";
import { absoluteUrl, links, rutas, tiendaVisible } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

const gc = rangoPrecios("acceso-guardia-civil");

export const metadata = metadataPagina({
  titulo: "Packs y precios de los cursos",
  descripcion: `Packs para preparar la Guardia Civil y el Colegio de Guardias Jóvenes: tests desde ${formatoPrecio(gc.min)} €/mes, simulacros, temario descargable o todo junto. Prueba gratis 7 días la suscripción de tests.`,
  ruta: rutas.tienda,
});

export default function Tienda() {
  if (!tiendaVisible) notFound();
  return (
    <>
      <PageHero
        eyebrow="Tienda"
        titulo="Packs y precios"
        entradilla="Elige lo que necesitas en cada momento: tests para entrenar a diario, simulacros para el examen, el temario descargable o todo junto. Los packs son por curso."
      />

      {/* primero Guardia Civil y debajo Guardias Jóvenes (el orden de `cursos`) */}
      {cursos.map((c, i) =>
        packs[c.slug] ? (
          <Section
            key={c.slug}
            id={`packs-${c.slug}`}
            eyebrow={c.eyebrow}
            titulo={c.nombre}
            fondo={i % 2 === 0 ? "base" : "suave"}
          >
            <PacksCurso slug={c.slug} />
            <p className="mt-6 text-body-sm text-muted-foreground">
              ¿Quieres saber qué estudia y cómo es el examen?{" "}
              <a href={rutas.curso(c.slug)} className="font-semibold text-primary hover:underline">
                Ver el curso
              </a>
            </p>
          </Section>
        ) : null,
      )}

      <Section>
        <Reveal>
          <div className="mx-auto max-w-xl rounded-2xl border border-border bg-surface-subtle p-7">
            <h2 className="text-h3">{planGratis.nombre}</h2>
            <p className="mt-2 text-muted-foreground">{planGratis.resumen}</p>
            <ul className="mt-5 grid gap-2 sm:grid-cols-2">
              {planGratis.incluye.map((item) => (
                <li key={item} className="flex gap-3 text-body-sm">
                  <Check size={18} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                  {item}
                </li>
              ))}
            </ul>
            <Button href={links.registro} variante="secundario" className="mt-6 w-full">
              Empezar la prueba gratis
            </Button>
          </div>
        </Reveal>
      </Section>

      {materialesVisibles && (
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
      )}

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
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Tienda", ruta: rutas.tienda }])} />
      {cursos.map((c) => {
        const lista = packsVisibles(c.slug);
        if (!lista) return null;
        const r = rangoPrecios(c.slug);
        return (
          <JsonLd
            key={c.slug}
            data={{
              "@context": "https://schema.org",
              "@type": "Product",
              name: `Packs · ${c.nombre}`,
              url: absoluteUrl(`${rutas.tienda}#packs-${c.slug}`),
              offers: {
                "@type": "AggregateOffer",
                priceCurrency: "EUR",
                lowPrice: r.min,
                highPrice: r.max,
                offerCount: r.n,
                offers: lista.map((p) => ({ "@type": "Offer", name: p.nombre, price: p.precio, priceCurrency: "EUR", availability: "https://schema.org/InStock" })),
              },
            }}
          />
        );
      })}
    </>
  );
}
