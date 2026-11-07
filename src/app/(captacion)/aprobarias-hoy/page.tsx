import { Simulacro } from "@/components/captacion/simulacro";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.simulacro;

/* Landing de captación para los anuncios de Instagram (palabra clave: SIMULACRO). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Aprobarías hoy? Simulacro gratis de Guardia Civil",
  descripcion:
    "Mini simulacro de conocimientos de la Guardia Civil con cronómetro y la corrección del examen real. Descubre tu nota sobre 100 y si hoy aprobarías.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function AprobariasHoy() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <Simulacro registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
