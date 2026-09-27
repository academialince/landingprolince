import type { ReactNode } from "react";
import { Container } from "./container";

export function PageHero({
  eyebrow,
  titulo,
  entradilla,
  compacto = false,
  children,
}: {
  eyebrow: string;
  titulo: string;
  entradilla?: string;
  /** Menos altura y un titular más pequeño, para páginas donde lo importante va justo debajo. */
  compacto?: boolean;
  children?: ReactNode;
}) {
  return (
    <section className="relative overflow-hidden border-b border-border">
      <div
        aria-hidden
        className="absolute inset-0 -z-10"
        style={{
          background:
            "radial-gradient(90% 100% at 20% -20%, var(--color-primary-soft) 0%, transparent 62%)",
        }}
      />
      <Container>
        <div className={`max-w-[46rem] ${compacto ? "py-8 sm:py-12" : "py-16 sm:py-24"}`}>
          <p className="text-eyebrow uppercase text-primary">{eyebrow}</p>
          <h1 className={`${compacto ? "text-display-l mt-2" : "text-display-xl mt-4"}`}>{titulo}</h1>
          {entradilla && (
            <p className={compacto ? "text-muted-foreground mt-3" : "text-body-lg text-muted-foreground mt-6"}>
              {entradilla}
            </p>
          )}
          {children && <div className="mt-9">{children}</div>}
        </div>
      </Container>
    </section>
  );
}
