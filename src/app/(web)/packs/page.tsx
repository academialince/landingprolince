import { notFound } from "next/navigation";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { CtaFinal } from "@/components/sections/cta-final";
import { MaterialesTienda } from "@/components/tienda/materiales";
import { PacksCurso } from "@/components/tienda/packs-curso";
import { condiciones, formatoPrecio, imagenPack, materialesVisibles, packs, packsVisibles, rangoPrecios } from "@/content/tienda";
import { cursos } from "@/content/cursos";
import { absoluteUrl, rutas, tiendaVisible } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

const gc = rangoPrecios("acceso-guardia-civil");

export const metadata = metadataPagina({
  titulo: "Packs y precios: tests, simulacros y pack anual",
  descripcion: `Packs para preparar la Guardia Civil y el Colegio de Guardias Jóvenes: tests desde ${formatoPrecio(gc.min)} €/mes, simulacros oficiales y propios o el pack anual completo. Prueba 7 días gratis.`,
  ruta: rutas.tienda,
});

export default function Packs() {
  if (!tiendaVisible) notFound();
  return (
    <>
      <PageHero
        eyebrow="Packs"
        titulo="Packs y precios"
        entradilla="Elige cómo prepararte: tests para entrenar a diario, simulacros para el examen o el pack anual con todo. Los packs son por curso."
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
          </Section>
        ) : null,
      )}

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
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Packs", ruta: rutas.tienda }])} />
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
              image: absoluteUrl(imagenPack(lista[0].id)),
              url: absoluteUrl(`${rutas.tienda}#packs-${c.slug}`),
              offers: {
                "@type": "AggregateOffer",
                priceCurrency: "EUR",
                lowPrice: r.min,
                highPrice: r.max,
                offerCount: r.n,
                offers: lista.map((p) => ({ "@type": "Offer", name: p.nombre, image: absoluteUrl(imagenPack(p.id)), price: p.precio, priceCurrency: "EUR", availability: "https://schema.org/InStock" })),
              },
            }}
          />
        );
      })}
    </>
  );
}
