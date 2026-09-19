import type { Metadata } from "next";
import { site } from "@/content/site";

export const metadata: Metadata = {
  title: "Aviso legal",
  description: `Condiciones de uso del sitio web de ${site.nombreLargo}.`,
  robots: { index: false },
};

export default function AvisoLegal() {
  const { razonSocial, nif, domicilio } = site.legal;

  return (
    <>
      <h1 className="text-display-l">Aviso legal</h1>

      <h2>Titular del sitio</h2>
      <ul>
        <li>Denominación social: {razonSocial ?? "pendiente"}</li>
        <li>NIF: {nif ?? "pendiente"}</li>
        <li>Domicilio: {domicilio ?? "pendiente"}</li>
        <li>Correo de contacto: {site.contacto.email ?? "pendiente"}</li>
      </ul>

      <h2>Objeto</h2>
      <p>
        Este sitio web presenta los servicios de formación de {site.nombreLargo} y da acceso a la
        plataforma donde se prestan. La contratación, el acceso a los cursos y el tratamiento de
        los datos de alumno se realizan en dicha plataforma y se rigen por sus propias
        condiciones.
      </p>

      <h2>Condiciones de uso</h2>
      <p>
        El acceso a este sitio es gratuito y no requiere registro. Quien acceda se compromete a
        utilizarlo conforme a la ley y a no realizar actuaciones que puedan dañarlo o impedir su
        normal funcionamiento.
      </p>

      <h2>Propiedad intelectual</h2>
      <p>
        Los contenidos, la marca, el logotipo y el diseño de este sitio pertenecen a su titular o
        se utilizan con autorización. No se permite su reproducción o distribución sin
        consentimiento previo por escrito.
      </p>

      <h2>Responsabilidad</h2>
      <p>
        La información sobre convocatorias, plazas y requisitos se publica a título informativo.
        La fuente válida es siempre el texto oficial publicado en el boletín correspondiente, que
        prevalece sobre cualquier contenido de este sitio.
      </p>

      <h2>Legislación aplicable</h2>
      <p>
        Esta relación se rige por la legislación española. Para cualquier controversia, las partes
        se someten a los juzgados y tribunales del domicilio del titular, salvo que la normativa
        de consumo disponga otro fuero.
      </p>
    </>
  );
}
