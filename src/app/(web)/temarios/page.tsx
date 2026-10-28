import Link from "next/link";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { CtaFinal } from "@/components/sections/cta-final";
import { AvisoActualizaciones } from "@/components/temarios/aviso-actualizaciones";
import { TarjetaTemario } from "@/components/temarios/tarjeta-temario";
import { cursoPorSlug } from "@/content/cursos";
import { site } from "@/content/site";
import { temarios } from "@/content/temarios";
import { absoluteUrl, rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Temario Guardia Civil 2027 en papel: libros con envío en 48 h",
  descripcion:
    "Compra el temario de Guardia Civil y del Colegio de Guardias Jóvenes en papel, actualizado a 2027: pack completo con inglés y ortografía o libro resumen. Lo recibes en 48 horas.",
  ruta: "/temarios",
});

export default function Temarios() {
  return (
    <>
      <PageHero
        eyebrow="Temarios"
        titulo="El temario en papel, actualizado a 2027"
        entradilla="Para estudiar con el libro en la mano. Elige el pack completo, con los libros de inglés y de ortografía y gramática, o el libro resumen para repasar. Lo recibes en casa en 48 horas."
      >
        <AvisoActualizaciones />
      </PageHero>

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
                    <TarjetaTemario m={m} curso={curso.nombreCorto} />
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
