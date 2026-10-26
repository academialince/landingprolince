import { site } from "@/content/site";
import { metadataPagina } from "@/lib/seo";
import { rutas } from "@/lib/links";

export const metadata = metadataPagina({
  titulo: "Política de privacidad",
  descripcion: `Cómo trata los datos personales ${site.nombreLargo}.`,
  ruta: rutas.privacidad,
  noindex: true,
});

export default function Privacidad() {
  return (
    <>
      <h1 className="text-display-l">Política de privacidad</h1>

      <h2>Responsable</h2>
      <ul>
        <li>{site.legal.razonSocial ?? site.nombreLargo}</li>
        {site.legal.nif && <li>NIF: {site.legal.nif}</li>}
        {site.legal.domicilio && <li>Domicilio: {site.legal.domicilio}</li>}
        <li>Contacto: {site.contacto.email ?? "pendiente"}</li>
      </ul>

      <h2>Qué datos se recogen en este sitio</h2>
      <p>
        Esta web no pide registro para navegar ni utiliza herramientas de analítica o de
        publicidad que elaboren un perfil de navegación. Solo recoge datos personales si te
        apuntas voluntariamente a la lista de espera.
      </p>
      <p>
        Los datos de tu cuenta de alumno se tratan cuando te das de alta en la plataforma, en un
        dominio distinto y bajo la política de privacidad que allí se detalla.
      </p>

      <h2>Lista de espera</h2>
      <p>
        Si te apuntas a la lista de espera para probar la plataforma, guardamos tu nombre, correo
        electrónico, teléfono, edad, el tiempo que llevas opositando y las veces que te has
        presentado al examen. Los usamos para avisarte cuando haya acceso de prueba disponible y
        para organizar las tandas de acceso según el momento de preparación de cada persona.
      </p>
      <p>
        La base legal es tu consentimiento, que puedes retirar en cualquier momento escribiendo a
        la dirección de contacto. Conservamos los datos mientras la lista de espera esté activa y,
        como máximo, doce meses desde que te apuntas; después se eliminan.
      </p>

      <h2>Datos de conexión</h2>
      <p>
        El proveedor de alojamiento registra los datos técnicos imprescindibles para servir las
        páginas y mantener la seguridad del servicio, como la dirección IP y el tipo de navegador.
        Se conservan durante el plazo necesario para esas finalidades y su base legal es el
        interés legítimo en la seguridad del sitio.
      </p>

      <h2>Prueba gratuita</h2>
      <p>
        La prueba gratuita de la plataforma se ofrece una sola vez por persona. Para evitar su uso
        abusivo, al empezarla guardamos una huella cifrada de la dirección IP de la conexión y del
        email con el que te registras: no se guarda la IP en sí y la huella no permite recuperarla.
        Solo sirve para comprobar si desde esa conexión o con ese email ya se ha usado una prueba.
        La base legal es nuestro interés legítimo en prevenir el uso abusivo de la oferta. Se
        conserva mientras la prueba gratuita siga ofreciéndose; puedes oponerte o pedir su
        supresión escribiendo a la dirección de contacto.
      </p>

      <h2>Destinatarios</h2>
      <p>
        No se ceden datos a terceros. El sitio y su base de datos están alojados en proveedores de
        servicios de infraestructura que actúan como encargados del tratamiento.
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
