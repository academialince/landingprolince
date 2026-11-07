import { CalculadoraMeritos } from "@/components/captacion/calculadora-meritos";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.meritos;

/* Landing de captación para los anuncios de Instagram (palabra clave: MERITOS). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "Calculadora de méritos de la Guardia Civil",
  descripcion:
    "Calcula tus puntos del concurso de méritos (hasta 45) con el baremo oficial: titulación, idiomas, permisos, servicio y deporte. Y descubre cuáles te faltan.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function MeritosGuardiaCivil() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <CalculadoraMeritos registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
