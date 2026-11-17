import { CalculadoraCorte } from "@/components/captacion/calculadora-corte";
import { recursos } from "@/content/captacion/recursos";
import { site } from "@/content/site";
import { destinoEmpezar } from "@/lib/links";
import { metadataPagina } from "@/lib/seo";

const recurso = recursos.corte;

/* Landing de captación para los anuncios de Instagram (palabra clave: CORTE). Sin indexar. */
export const metadata = metadataPagina({
  titulo: "¿Qué nota de corte necesitas? Calculadora Guardia Civil",
  descripcion:
    "Calcula tu nota final sobre 195 con tus notas previstas y tus méritos, y compárala con las notas de corte reales de 2022 a 2026.",
  ruta: recurso.ruta,
  noindex: true,
});

export default function NotaDeCorte() {
  return (
    <div className="mx-auto w-[min(100%-2rem,40rem)]">
      <CalculadoraCorte registro={destinoEmpezar} whatsapp={site.contacto.whatsapp} />
    </div>
  );
}
