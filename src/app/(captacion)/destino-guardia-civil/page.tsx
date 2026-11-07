import { DestinoGuardiaCivil } from "@/components/captacion/destino-guardia-civil";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.destino;

/* Landing de captación para los anuncios de Instagram (palabra clave: DESTINO). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Dónde te puede tocar? Del examen al primer destino en la Guardia Civil",
  descripcion:
    "El camino real desde el examen hasta el primer destino en la Guardia Civil, qué decide tu escalafón y las cifras de prácticas de tu comunidad.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function DestinoPagina() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <DestinoGuardiaCivil registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
