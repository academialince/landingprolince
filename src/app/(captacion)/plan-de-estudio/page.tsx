import { PlanEstudio } from "@/components/captacion/plan-estudio";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.plan;

/* Landing de captación para los anuncios de Instagram (palabra clave: PLAN). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "Tu plan de estudio personalizado para la Guardia Civil",
  descripcion:
    "Indica tus horas a la semana y los meses que faltan para el examen y recibe un calendario con los 23 temas repartidos semana a semana.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function PlanDeEstudio() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <PlanEstudio registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
