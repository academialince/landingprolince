import { CalculadoraSueldo } from "@/components/captacion/calculadora-sueldo";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.sueldo;

/* Landing de captación para los anuncios de Instagram (palabra clave: SUELDO). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Cuánto cobra un guardia civil en 2026? Calculadora de sueldo",
  descripcion:
    "Calcula el sueldo bruto aproximado de un guardia civil en 2026 según destino, especialidad y años de servicio, desglosado concepto a concepto.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function SueldoGuardiaCivil() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <CalculadoraSueldo registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
