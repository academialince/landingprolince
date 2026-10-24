import { PaginaTemarioCurso } from "@/components/temario/pagina-temario";
import { paginasTemario } from "@/content/paginas-temario";
import { metadataPagina } from "@/lib/seo";

const pagina = paginasTemario["acceso-guardia-civil"];

/** Mismo ritmo que el blog: los enlaces a artículos aparecen cuando estos se publican. */
export const revalidate = 300;

export const metadata = metadataPagina({ titulo: pagina.meta.titulo, descripcion: pagina.meta.descripcion, ruta: pagina.ruta });

export default function Temario() {
  return <PaginaTemarioCurso pagina={pagina} />;
}
