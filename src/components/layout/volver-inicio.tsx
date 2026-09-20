import Link from "next/link";
import { ArrowLeft } from "lucide-react";
import { Container } from "./container";

/**
 * Faldón de vuelta para móvil. En escritorio su sitio lo ocupa el submenú de anclas del curso,
 * que ahí sí cabe; en móvil ese submenú se esconde y sin esto no hay una salida evidente de la
 * ficha de curso más que el menú.
 */
export function VolverInicio() {
  return (
    <div className="sticky top-[4.5rem] z-30 bg-primary text-white lg:hidden">
      <Container>
        <Link
          href="/"
          className="-mx-2 inline-flex min-h-12 items-center gap-2 px-2 font-semibold"
        >
          <ArrowLeft size={18} aria-hidden />
          Volver al inicio
        </Link>
      </Container>
    </div>
  );
}
