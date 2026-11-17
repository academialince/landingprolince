import { TestTipoOpositor } from "@/components/captacion/test-tipo-opositor";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos["tipo-opositor"];

/*
 * Landing de captación para los anuncios de Instagram (palabra clave: PERFIL). Fuera del sitemap
 * y sin indexar: es un destino de campaña, no una página para Google.
 */
export const metadata = metadataPagina({
  titulo: "¿Qué tipo de opositor eres? Test gratis",
  descripcion:
    "8 preguntas sobre cómo estudias. Descubre tu perfil de opositor a la Guardia Civil, tu punto débil y un plan de 3 pasos para tu forma de estudiar.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function QueOpositorEres() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <TestTipoOpositor registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
