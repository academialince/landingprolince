import { Clock, MessageSquare, Sparkles } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { FormularioWaitlist } from "@/components/waitlist/formulario-waitlist";
import { rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Lista de espera para probar la plataforma",
  descripcion:
    "Apúntate a la lista de espera de ProLince y sé de los primeros en probar la plataforma para preparar la Guardia Civil.",
  ruta: rutas.waitlist,
});

const ventajas = [
  { icono: Sparkles, texto: "Acceso anticipado a temario, tests y simulacros." },
  { icono: MessageSquare, texto: "Tu opinión decide qué mejoramos." },
  { icono: Clock, texto: "Sin compromiso." },
];

export default function Waitlist() {
  return (
    <>
      <PageHero
        eyebrow="Lista de espera"
        titulo="Prueba la plataforma antes que nadie"
        entradilla="Abrimos el acceso por tandas. Déjanos tus datos y te avisamos."
        compacto
      />

      <section className="py-8 sm:py-12">
        <Container>
          <div className="grid items-start gap-6 lg:grid-cols-[1fr_1.6fr] lg:gap-16">
            <Reveal>
              <h2 className="text-h3">Qué te llevas</h2>
              <ul className="mt-3 grid gap-2">
                {ventajas.map(({ icono: Icono, texto }) => (
                  <li key={texto} className="flex items-center gap-3 text-body-sm">
                    <span className="inline-flex size-8 shrink-0 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                      <Icono size={16} aria-hidden />
                    </span>
                    {texto}
                  </li>
                ))}
              </ul>
              <p className="mt-4 text-body-sm text-muted-foreground">
                Tus datos solo sirven para gestionar el acceso. No los cedemos.
              </p>
            </Reveal>

            <Reveal retardo={80}>
              <FormularioWaitlist />
            </Reveal>
          </div>
        </Container>
      </section>

      <JsonLd
        data={migasJsonLd([
          { nombre: "Inicio", ruta: "/" },
          { nombre: "Lista de espera", ruta: rutas.waitlist },
        ])}
      />
    </>
  );
}
