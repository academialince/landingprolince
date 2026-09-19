import type { ReactNode } from "react";
import { Container } from "./container";

export function PageHero({
  eyebrow,
  titulo,
  entradilla,
  children,
}: {
  eyebrow: string;
  titulo: string;
  entradilla?: string;
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
        <div className="max-w-[46rem] py-16 sm:py-24">
          <p className="text-eyebrow uppercase text-primary">{eyebrow}</p>
          <h1 className="text-display-xl mt-4">{titulo}</h1>
          {entradilla && (
            <p className="text-body-lg text-muted-foreground mt-6">{entradilla}</p>
          )}
          {children && <div className="mt-9">{children}</div>}
        </div>
      </Container>
    </section>
  );
}
