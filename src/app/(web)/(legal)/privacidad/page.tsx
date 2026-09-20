import type { Metadata } from "next";
import { site } from "@/content/site";

export const metadata: Metadata = {
  title: "Política de privacidad",
  description: `Cómo trata los datos personales ${site.nombreLargo}.`,
  robots: { index: false },
};

export default function Privacidad() {
  return (
    <>
      <h1 className="text-display-l">Política de privacidad</h1>

      <h2>Responsable</h2>
      <ul>
        <li>{site.legal.razonSocial ?? "pendiente"}</li>
        <li>NIF: {site.legal.nif ?? "pendiente"}</li>
        <li>Domicilio: {site.legal.domicilio ?? "pendiente"}</li>
        <li>Contacto: {site.contacto.email ?? "pendiente"}</li>
      </ul>

      <h2>Qué datos se recogen en este sitio</h2>
      <p>
        Ninguno. Esta web no tiene formularios, no pide registro y no recoge datos personales de
        quien la visita. Tampoco utiliza herramientas de analítica ni de publicidad que elaboren
        un perfil de navegación.
      </p>
      <p>
        Los datos personales se tratan únicamente cuando te das de alta en la plataforma, en un
        dominio distinto y bajo la política de privacidad que allí se detalla.
      </p>

      <h2>Datos de conexión</h2>
      <p>
        El proveedor de alojamiento registra los datos técnicos imprescindibles para servir las
        páginas y mantener la seguridad del servicio, como la dirección IP y el tipo de navegador.
        Se conservan durante el plazo necesario para esas finalidades y su base legal es el
        interés legítimo en la seguridad del sitio.
      </p>

      <h2>Destinatarios</h2>
      <p>
        No se ceden datos a terceros. El sitio está alojado en un proveedor de servicios de
        infraestructura que actúa como encargado del tratamiento.
      </p>

      <h2>Tus derechos</h2>
      <p>
        Puedes solicitar el acceso, la rectificación o la supresión de tus datos, así como la
        limitación u oposición a su tratamiento, escribiendo a la dirección de contacto. También
        puedes presentar una reclamación ante la Agencia Española de Protección de Datos.
      </p>
    </>
  );
}
