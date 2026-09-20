import type { ReactNode } from "react";
import { AlertTriangle } from "lucide-react";
import { Container } from "@/components/layout/container";
import { site } from "@/content/site";

export default function LegalLayout({ children }: { children: ReactNode }) {
  const incompleto = !site.legal.razonSocial || !site.legal.nif || !site.legal.domicilio;

  return (
    <Container ancho="estrecho">
      <div className="py-16 sm:py-24">
        {incompleto && (
          <div
            role="status"
            className="mb-10 rounded-xl border border-warning/40 bg-warning/8 p-5 flex gap-3"
          >
            <AlertTriangle size={20} className="shrink-0 text-warning mt-0.5" aria-hidden />
            <p className="text-body-sm">
              <strong>Texto incompleto.</strong> Faltan la razón social, el NIF y el domicilio en{" "}
              <code>src/content/site.ts</code>. Esta página no puede publicarse hasta que estén.
            </p>
          </div>
        )}
        <article className="[&_h2]:text-h3 [&_h2]:mt-10 [&_h2]:mb-3 [&_p]:text-muted-foreground [&_p]:mt-3 [&_p]:leading-[1.7] [&_ul]:mt-3 [&_ul]:grid [&_ul]:gap-2 [&_ul]:list-disc [&_ul]:pl-5 [&_li]:text-muted-foreground">
          {children}
        </article>
      </div>
    </Container>
  );
}
