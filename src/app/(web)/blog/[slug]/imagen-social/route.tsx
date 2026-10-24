import { entradaPorSlug } from "@/lib/blog";
import { imagenMarca } from "@/lib/imagen-marca";

export const revalidate = 300;

/** Imagen para compartir una entrada sin portada: el título sobre el fondo de marca. */
export async function GET(_: Request, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const entrada = await entradaPorSlug(slug);
  if (!entrada) return new Response("No encontrada", { status: 404 });
  return imagenMarca({ antetitulo: "Blog · Academia ProLince", titulo: entrada.titulo });
}
