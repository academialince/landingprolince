import { CuentaAtras } from "@/components/captacion/cuenta-atras";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos["cuenta-atras"];

/* Landing de captación para los anuncios de Instagram (palabra clave: CUENTAATRAS). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Te da tiempo? Calcula tu ritmo de estudio para la Guardia Civil",
  descripcion:
    "Con la fecha del examen y los temas que llevas, calcula cuántos temas por semana necesitas para ver el temario y llegar con tiempo de repasar.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function TeDaTiempo() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <CuentaAtras registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
