import { cursos } from "@/content/cursos";
import { formatoPrecio, packs } from "@/content/tienda";
import { imagenMarca } from "@/lib/imagen-marca";

/**
 * Imagen PROVISIONAL de cada pack, generada con la marca hasta que haya fotos propias. La usan
 * la tarjeta de la tienda y los datos estructurados de la oferta.
 */
export async function GET(_: Request, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  for (const [slug, lista] of Object.entries(packs)) {
    const pack = lista.find((p) => p.id === id);
    if (!pack) continue;
    const curso = cursos.find((c) => c.slug === slug);
    const precio = `${formatoPrecio(pack.precio)} € ${pack.pago === "mensual" ? "al mes" : "pago único"}`;
    return imagenMarca({ antetitulo: curso?.nombreCorto ?? "Academia ProLince", titulo: pack.nombre, pie: precio, alto: 750 });
  }
  return new Response("No encontrado", { status: 404 });
}

export function generateStaticParams() {
  return Object.values(packs).flat().map((p) => ({ id: p.id }));
}
