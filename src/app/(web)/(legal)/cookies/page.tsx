import type { Metadata } from "next";
import { site } from "@/content/site";

export const metadata: Metadata = {
  title: "Política de cookies",
  description: `Uso de cookies en el sitio web de ${site.nombreLargo}.`,
  robots: { index: false },
};

export default function Cookies() {
  return (
    <>
      <h1 className="text-display-l">Política de cookies</h1>

      <h2>Este sitio no usa cookies</h2>
      <p>
        No se instalan cookies propias ni de terceros al navegar por esta web. No hay analítica,
        no hay publicidad y no hay seguimiento entre sitios, así que no aparece ningún banner de
        consentimiento: no hay nada que consentir.
      </p>

      <h2>Qué pasa al entrar en la plataforma</h2>
      <p>
        La plataforma donde se accede a los cursos sí utiliza cookies técnicas, necesarias para
        mantener tu sesión iniciada. Son imprescindibles para que el servicio funcione y se
        describen en su propia política.
      </p>

      <h2>Si esto cambia</h2>
      <p>
        Si en el futuro se incorpora alguna herramienta de medición, esta página se actualizará y
        se solicitará tu consentimiento antes de instalar ninguna cookie no necesaria.
      </p>

      <h2>Contacto</h2>
      <p>
        Para cualquier duda sobre esta política puedes escribir a{" "}
        {site.contacto.email ?? "la dirección de contacto pendiente de publicar"}.
      </p>
    </>
  );
}
