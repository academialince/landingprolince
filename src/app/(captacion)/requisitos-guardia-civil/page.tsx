import { ComprobadorRequisitos } from "@/components/captacion/comprobador-requisitos";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.requisitos;

/* Landing de captación para los anuncios de Instagram (palabra clave: REQUISITOS). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Puedes presentarte a Guardia Civil? Comprueba los requisitos",
  descripcion:
    "Edad, estudios, carné, nacionalidad, antecedentes y tatuajes: comprueba en un minuto si cumples los requisitos para opositar a la Guardia Civil.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function RequisitosGuardiaCivil() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <ComprobadorRequisitos registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
