import type { ReactNode } from "react";
import { Header } from "@/components/layout/header";
import { Footer } from "@/components/layout/footer";
import { BotonWhatsapp } from "@/components/layout/whatsapp";

/** Armazón de la web pública. El panel vive fuera de este grupo y no hereda nada de aquí. */
export default function WebLayout({ children }: { children: ReactNode }) {
  return (
    <>
      <a className="skip-link" href="#contenido">
        Saltar al contenido
      </a>
      <Header />
      <main id="contenido">{children}</main>
      <Footer />
      <BotonWhatsapp />
    </>
  );
}
