import { TestRapido } from "@/components/captacion/test-rapido";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.constitucion;

/* Landing de captación para los anuncios de Instagram (palabra clave: CONSTITUCION). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Cuánto sabes de la Constitución? Test Guardia Civil",
  descripcion: "10 preguntas sobre la Constitución con la corrección del examen de Guardia Civil y la explicación de cada respuesta.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function TestConstitucion() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestRapido banco="constitucion" registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
