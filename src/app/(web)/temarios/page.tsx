import Image from "next/image";
import Link from "next/link";
import { ArrowRight, Check, Truck } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { Button } from "@/components/ui/button";
import { CtaFinal } from "@/components/sections/cta-final";
import { VisorEjemplo } from "@/components/temarios/visor-ejemplo";
import { cursoPorSlug } from "@/content/cursos";
import { site } from "@/content/site";
import { formatoPrecio } from "@/content/tienda";
import { ENTREGA, temarios, type ModalidadTemario } from "@/content/temarios";
import { absoluteUrl, rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Temario Guardia Civil 2027 en papel: libros con envío en 48 h",
  descripcion:
    "Compra el temario de Guardia Civil y del Colegio de Guardias Jóvenes en papel, actualizado a 2027: pack completo con inglés y ortografía o libro resumen. Lo recibes en 48 horas.",
  ruta: "/temarios",
});

/** Sin pasarela todavía: el pedido sale por WhatsApp con el producto ya escrito. */
function enlaceCompra(m: ModalidadTemario, curso: string) {
  if (m.compra) return m.compra;
  if (!site.contacto.whatsapp) return rutas.tienda;
  const texto = `Hola, quiero el ${m.nombre} del temario de ${curso} (actualizado 2027).`;
  return `https://wa.me/${site.contacto.whatsapp}?text=${encodeURIComponent(texto)}`;
}

function Tarjeta({ m, curso }: { m: ModalidadTemario; curso: string }) {
  return (
    <article
      className={`relative flex h-full flex-col rounded-2xl border bg-surface p-6 ${
        m.destacado ? "border-2 border-primary shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)]" : "border-border"
      }`}
    >
      {m.destacado && (
        <span className="absolute -top-3 left-6 z-10 rounded-full bg-primary px-3 py-1 text-eyebrow uppercase text-primary-fg">{m.destacado}</span>
      )}
      <div className="flex gap-5">
        <div className="reflejo relative aspect-square w-36 shrink-0 overflow-hidden rounded-md border border-border bg-primary-deep shadow-[0_10px_24px_-12px_rgba(0,0,0,0.6)]">
          <Image src={m.miniatura} alt="" fill unoptimized sizes="144px" className="object-contain" />
        </div>
        <div className="min-w-0">
          <h3 className="text-h3">{m.nombre}</h3>
          <p className="mt-2 text-body-sm text-muted-foreground">{m.resumen}</p>
          <p className="mt-3 inline-flex items-center gap-1.5 rounded-full bg-primary-soft px-3 py-1 text-body-sm font-semibold text-primary-soft-fg">
            <Truck size={15} aria-hidden />
            {ENTREGA}
          </p>
        </div>
      </div>

      <ul className="mt-6 grid gap-2.5 text-body-sm">
        {m.incluye.map((item) => (
          <li key={item} className="flex gap-2.5">
            <Check size={17} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            {item}
          </li>
        ))}
      </ul>

      <p className="mt-6">
        {m.precio !== null ? (
          <>
            <span className="text-h2 tabular">{formatoPrecio(m.precio)} €</span>
          </>
        ) : (
          <span className="text-h3 text-muted-foreground">Precio próximamente</span>
        )}
      </p>

      <div className="mt-auto grid gap-3 pt-6 sm:grid-cols-2">
        <VisorEjemplo ejemplo={m.ejemplo} nombre={`${m.nombre} · ${curso}`} />
        <Button href={enlaceCompra(m, curso)} variante={m.destacado ? "primario" : "secundario"} className="w-full">
          Lo quiero
          <ArrowRight size={18} aria-hidden />
        </Button>
      </div>
    </article>
  );
}

export default function Temarios() {
  return (
    <>
      <PageHero
        eyebrow="Temarios"
        titulo="El temario en papel, actualizado a 2027"
        entradilla="Para estudiar con el libro en la mano. Elige el pack completo, con los libros de inglés y de ortografía y gramática, o el libro resumen para repasar. Lo recibes en casa en 48 horas."
      />

      {temarios.map((t, i) => {
        const curso = cursoPorSlug(t.slug);
        if (!curso) return null;
        const programa = rutas.temario(t.slug);
        return (
          <Section key={t.slug} id={t.ancla} eyebrow={curso.eyebrow} titulo={curso.nombre} fondo={i % 2 === 0 ? "base" : "suave"}>
            <ul className="grid gap-6 lg:grid-cols-2">
              {t.modalidades.map((m, j) => (
                <li key={m.id}>
                  <Reveal retardo={j * 60} className="h-full">
                    <Tarjeta m={m} curso={curso.nombreCorto} />
                  </Reveal>
                </li>
              ))}
            </ul>
            {programa && (
              <p className="mt-6 text-body-sm text-muted-foreground">
                ¿Qué temas entran?{" "}
                <Link href={programa} className="font-semibold text-primary hover:underline">
                  Ver el programa, tema a tema
                </Link>
              </p>
            )}
          </Section>
        );
      })}

      <CtaFinal />

      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Temarios", ruta: "/temarios" }])} />
      {temarios.flatMap((t) =>
        t.modalidades
          .filter((m) => m.precio !== null)
          .map((m) => (
            <JsonLd
              key={m.id}
              data={{
                "@context": "https://schema.org",
                "@type": "Product",
                name: `${m.nombre} · Temario ${cursoPorSlug(t.slug)?.nombreCorto} 2027`,
                description: m.resumen,
                image: absoluteUrl(m.miniatura),
                brand: { "@type": "Brand", name: site.nombreLargo },
                offers: { "@type": "Offer", price: m.precio, priceCurrency: "EUR", availability: "https://schema.org/InStock", url: absoluteUrl(`/temarios#${t.ancla}`) },
              }}
            />
          )),
      )}
    </>
  );
}
