import { TestPsicotecnico } from "@/components/captacion/test-psicotecnico";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.psicotecnico;

/* Landing de captación para los anuncios de Instagram (palabra clave: PSICO). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "Psicotécnico exprés de Guardia Civil: test gratis en 5 minutos",
  descripcion:
    "12 ejercicios de aptitudes en 5 minutos con la corrección del examen. Descubre tu nota sobre 30, si pasarías el mínimo y tu punto débil.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function PsicotecnicoExpress() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestPsicotecnico registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
