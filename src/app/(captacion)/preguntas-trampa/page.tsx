import { TestRapido } from "@/components/captacion/test-rapido";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.trampas;

/* Landing de captación para los anuncios de Instagram (palabra clave: TRAMPAS). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "10 preguntas trampa del examen de Guardia Civil",
  descripcion: "Test de 10 preguntas con las confusiones más típicas del temario de Guardia Civil y la explicación de cada trampa.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function PreguntasTrampa() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestRapido banco="trampas" registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
