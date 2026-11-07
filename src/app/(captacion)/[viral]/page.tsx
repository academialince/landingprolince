import { notFound } from "next/navigation";
import { ExperienciaViral } from "@/components/captacion/experiencia-viral";
import { virales, type ViralId } from "@/content/captacion/virales";
import { metadataPagina } from "@/lib/seo";

const rutas: Record<string, ViralId> = {
  especialidad: "especialidad",
  duelo: "duelo",
  articulo: "articulo",
  reflejos: "reflejos",
  provincia: "provincia",
  "aprobarias-en-1995": "1995",
  "el-80-falla-esta": "falla",
  bingo: "bingo",
  horas: "horas",
  pasaporte: "pasaporte",
};

type Props = { params: Promise<{ viral: string }> };

export const dynamicParams = false;

export function generateStaticParams() {
  return Object.keys(rutas).map((viral) => ({ viral }));
}

export async function generateMetadata({ params }: Props) {
  const { viral } = await params;
  const id = rutas[viral];
  if (!id) return {};
  const v = virales[id];
  return metadataPagina({ titulo: v.titulo, descripcion: v.descripcion, ruta: `/${viral}`, noindex: true });
}

export default async function ViralPage({ params }: Props) {
  const { viral } = await params;
  const id = rutas[viral];
  if (!id) notFound();
  return <ExperienciaViral id={id} />;
}
