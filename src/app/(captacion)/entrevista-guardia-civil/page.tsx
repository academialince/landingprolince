import { TestEntrevista } from "@/components/captacion/test-entrevista";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.entrevista;

/* Landing de captación para los anuncios de Instagram (palabra clave: ENTREVISTA). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Encajas en el perfil de la entrevista? Guardia Civil",
  descripcion:
    "Test orientativo sobre las seis competencias que valora la entrevista personal de la Guardia Civil, con consejos para prepararla.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function EntrevistaGuardiaCivil() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestEntrevista registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
