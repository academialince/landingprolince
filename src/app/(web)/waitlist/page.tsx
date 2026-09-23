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
  { icono: MessageSquare, texto: "Tu opinión decide qué mejoramos primero." },
  { icono: Clock, texto: "Te escribimos en cuanto haya plaza, sin compromiso." },
];

export default function Waitlist() {
  return (
    <>
      <PageHero
        eyebrow="Lista de espera"
        titulo="Prueba la plataforma antes que nadie"
        entradilla="Estamos abriendo el acceso por tandas. Déjanos tus datos y te avisamos cuando te toque: así sabremos también en qué punto de la preparación estás."
      />

      <section className="py-16 sm:py-24">
        <Container>
          <div className="grid items-start gap-10 lg:grid-cols-[1fr_1.6fr] lg:gap-16">
            <Reveal>
              <h2 className="text-h2">Qué te llevas</h2>
              <ul className="mt-6 grid gap-4">
                {ventajas.map(({ icono: Icono, texto }) => (
                  <li key={texto} className="flex gap-4">
                    <span className="inline-flex size-10 shrink-0 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                      <Icono size={19} aria-hidden />
                    </span>
                    <span className="pt-2">{texto}</span>
                  </li>
                ))}
              </ul>
              <p className="mt-8 text-body-sm text-muted-foreground">
                Solo usamos tus datos para gestionar el acceso de prueba. No los cedemos a nadie y
                puedes pedir que los borremos cuando quieras.
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
