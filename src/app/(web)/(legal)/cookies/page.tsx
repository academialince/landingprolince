import { site } from "@/content/site";
import { categorias, DIAS_CONSENTIMIENTO } from "@/content/cookies";
import { BotonConfigurarCookies } from "@/components/cookies/boton-configurar-cookies";
import { metadataPagina } from "@/lib/seo";
import { rutas } from "@/lib/links";

export const metadata = metadataPagina({
  titulo: "Política de cookies",
  descripcion: `Qué cookies usa el sitio web de ${site.nombreLargo}, para qué y cómo configurarlas.`,
  ruta: rutas.cookies,
  noindex: true,
});

/**
 * Generada a partir de content/cookies.ts, la misma fuente que el aviso y el panel: si se añade
 * una herramienta allí, aparece aquí sola.
 */
export default function Cookies() {
  const activas = categorias.filter((c) => c.elementos.length > 0);
  const vacias = categorias.filter((c) => c.elementos.length === 0);

  return (
    <>
      <h1 className="text-display-l">Política de cookies</h1>

      <h2>Qué son las cookies</h2>
      <p>
        Las cookies son pequeños archivos que una web guarda en tu navegador para recordar información entre una visita y
        otra. Algo parecido hace el almacenamiento local del navegador, que también se describe aquí.
      </p>

      <h2>Qué usamos en esta web</h2>
      <p>
        Solo usamos cookies y almacenamiento <strong>necesarios</strong>: para que la web funcione y para recordar lo que tú
        eliges. Están exentos de consentimiento según el artículo 22.2 de la Ley 34/2002 (LSSI).
      </p>
      {activas.map((c) => (
        <div key={c.id} className="mt-4 overflow-x-auto">
          <table className="w-full text-left text-body-sm">
            <caption className="mb-2 text-left font-bold text-foreground">{c.nombre}</caption>
            <thead className="border-b border-border text-muted-foreground">
              <tr>
                <th scope="col" className="py-2 pr-4 font-semibold">Nombre</th>
                <th scope="col" className="py-2 pr-4 font-semibold">Titular</th>
                <th scope="col" className="py-2 pr-4 font-semibold">Tipo</th>
                <th scope="col" className="py-2 pr-4 font-semibold">Finalidad</th>
                <th scope="col" className="py-2 font-semibold">Duración</th>
              </tr>
            </thead>
            <tbody>
              {c.elementos.map((e) => (
                <tr key={e.nombre} className="border-b border-border align-top text-muted-foreground">
                  <td className="py-2 pr-4 font-mono text-foreground">{e.nombre}</td>
                  <td className="py-2 pr-4">{e.titular}</td>
                  <td className="py-2 pr-4">{e.tipo}</td>
                  <td className="py-2 pr-4">{e.finalidad}</td>
                  <td className="py-2">{e.duracion}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ))}

      {vacias.length > 0 && (
        <>
          <h2>Lo que no usamos</h2>
          <p>
            Ahora mismo no usamos cookies de {vacias.map((c) => c.nombre.toLowerCase()).join(" ni de ")}. Si en el futuro
            incorporamos alguna herramienta de este tipo, la añadiremos a esta página y solo se activará si la aceptas en el
            aviso de cookies.
          </p>
        </>
      )}

      <h2>Cómo cambiar tu elección</h2>
      <p>
        Puedes aceptar, rechazar o configurar las cookies no necesarias cuando quieras, desde el enlace «Configurar cookies»
        del pie de la web o aquí mismo:{" "}
        <BotonConfigurarCookies className="font-semibold text-primary hover:underline" />. Guardamos tu elección durante{" "}
        {DIAS_CONSENTIMIENTO / 30} meses; pasado ese plazo, o si cambian las herramientas, te volveremos a preguntar.
      </p>
      <p>
        También puedes borrar o bloquear las cookies desde la configuración de tu navegador (Chrome, Safari, Firefox o Edge).
        Si bloqueas las necesarias, puede que alguna función de la web deje de ir bien.
      </p>

      <h2>La plataforma de los cursos</h2>
      <p>
        La plataforma donde se accede a los cursos usa sus propias cookies técnicas para mantener tu sesión iniciada. Se
        describen en su propia política.
      </p>

      <h2>Contacto</h2>
      <p>
        Para cualquier duda sobre esta política puedes escribirnos desde el{" "}
        <a href={rutas.contacto} className="text-primary hover:underline">
          formulario de contacto
        </a>
        {site.contacto.email ? ` o a ${site.contacto.email}` : ""}.
      </p>
    </>
  );
}
