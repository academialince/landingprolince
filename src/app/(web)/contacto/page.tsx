import { MessageCircle } from "lucide-react";
import { PageHero } from "@/components/layout/page-hero";
import { Section } from "@/components/layout/section";
import { FormularioContacto } from "@/components/contacto/formulario-contacto";
import { site } from "@/content/site";
import { rutas } from "@/lib/links";
import { JsonLd, metadataPagina, migasJsonLd } from "@/lib/seo";

export const metadata = metadataPagina({
  titulo: "Contacto",
  descripcion: "Escríbenos con tus dudas sobre los cursos de Guardia Civil y del Colegio de Guardias Jóvenes, los temarios o los packs. Te contestamos por email.",
  ruta: rutas.contacto,
});

export default function Contacto() {
  const { whatsapp, mensajeWhatsapp } = site.contacto;
  return (
    <>
      <PageHero
        eyebrow="Contacto"
        titulo="Escríbenos"
        entradilla="¿Dudas sobre qué curso te corresponde, los temarios o los packs? Déjanos tu mensaje y te contestamos por email."
        compacto
      />
      <Section ancho="estrecho">
        <FormularioContacto privacidad={rutas.privacidad} whatsapp={whatsapp} />
        {whatsapp && (
          <p className="mt-8 flex flex-wrap items-center gap-2 text-body-sm text-muted-foreground">
            <MessageCircle size={17} aria-hidden className="text-primary" />
            ¿Prefieres algo más rápido?
            <a href={`https://wa.me/${whatsapp}?text=${encodeURIComponent(mensajeWhatsapp)}`} className="font-semibold text-primary hover:underline">
              Escríbenos por WhatsApp
            </a>
          </p>
        )}
      </Section>
      <JsonLd data={migasJsonLd([{ nombre: "Inicio", ruta: "/" }, { nombre: "Contacto", ruta: rutas.contacto }])} />
    </>
  );
}
