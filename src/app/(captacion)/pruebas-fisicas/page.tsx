import { CalculadoraFisicas } from "@/components/captacion/calculadora-fisicas";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.fisicas;

/* Landing de captación para los anuncios de Instagram (palabra clave: FISICAS). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Pasarías las pruebas físicas de la Guardia Civil? Calculadora gratis",
  descripcion:
    "Mete tus marcas de carrera, circuito, extensiones y natación y mira si serías apto con los mínimos oficiales de tu edad, y cuánto te sobra o te falta.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function PruebasFisicas() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <CalculadoraFisicas registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
