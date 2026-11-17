import { TestIngles } from "@/components/captacion/test-ingles";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.ingles;

/* Landing de captación para los anuncios de Instagram (palabra clave: INGLES). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Qué nivel de inglés tienes para el examen de Guardia Civil?",
  descripcion:
    "Test de inglés gratis con la corrección del examen de Guardia Civil: tu nota sobre 20, si pasarías el mínimo de 8 y la explicación de cada fallo.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function NivelIngles() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestIngles registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
