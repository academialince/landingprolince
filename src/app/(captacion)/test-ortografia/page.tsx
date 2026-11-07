import { TestOrtografia } from "@/components/captacion/test-ortografia";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.ortografia;

/* Landing de captación para los anuncios de Instagram (palabra clave: ORTOGRAFIA). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Pasarías la prueba de ortografía? Test gratis de Guardia Civil",
  descripcion:
    "Test de ortografía con el formato del examen de Guardia Civil: 5 frases y 20 palabras subrayadas. Descubre si serías apto o no apto y la regla de cada fallo.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function TestOrtografiaPagina() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestOrtografia registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
