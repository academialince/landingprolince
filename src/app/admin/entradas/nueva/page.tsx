import type { Metadata } from "next";
import { Editor } from "@/components/admin/editor";

export const metadata: Metadata = { title: "Nueva entrada" };

export default function NuevaEntrada() {
  return (
    <>
      <h1 className="text-h2 mb-8">Nueva entrada</h1>
      <Editor entrada={null} />
    </>
  );
}
