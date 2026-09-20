import type { Metadata } from "next";
import { notFound } from "next/navigation";
import { Editor } from "@/components/admin/editor";
import { entradaPorId } from "@/lib/blog";

export const metadata: Metadata = { title: "Editar entrada" };

export default async function EditarEntrada(props: PageProps<"/admin/entradas/[id]">) {
  const { id } = await props.params;
  const entrada = await entradaPorId(id);
  if (!entrada) notFound();

  return (
    <>
      <h1 className="text-h2 mb-8">{entrada.titulo}</h1>
      <Editor entrada={entrada} />
    </>
  );
}
