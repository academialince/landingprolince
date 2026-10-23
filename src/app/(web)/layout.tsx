import type { ReactNode } from "react";
import { Header } from "@/components/layout/header";
import { Footer } from "@/components/layout/footer";
import { BotonWhatsapp } from "@/components/layout/whatsapp";
import { scriptTema } from "@/components/layout/boton-tema";

/** Armazón de la web pública. El panel vive fuera de este grupo y no hereda nada de aquí. */
export default function WebLayout({ children }: { children: ReactNode }) {
  return (
    // Modo oscuro por defecto; el script aplica el guardado antes de pintar (sin destello).
    <div className="tactico" data-tema="oscuro" suppressHydrationWarning>
      <script dangerouslySetInnerHTML={{ __html: scriptTema }} />
      <a className="skip-link" href="#contenido">
        Saltar al contenido
      </a>
      <Header />
      <main id="contenido">{children}</main>
      <Footer />
      <BotonWhatsapp />
    </div>
  );
}
