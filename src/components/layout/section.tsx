import type { ReactNode } from "react";
import { Container } from "./container";
import { Reveal } from "./reveal";

type Props = {
  id?: string;
  eyebrow?: string;
  titulo?: string;
  entradilla?: string;
  children: ReactNode;
  fondo?: "base" | "suave" | "marca";
  ancho?: "normal" | "estrecho";
  centrado?: boolean;
  className?: string;
};

const fondos = {
  base: "",
  suave: "bg-surface-subtle",
  marca: "bg-primary-deep text-white",
} as const;

export function Section({
  id,
  eyebrow,
  titulo,
  entradilla,
  children,
  fondo = "base",
  ancho = "normal",
  centrado = false,
  className,
}: Props) {
  const esMarca = fondo === "marca";
  return (
    <section id={id} className={`py-16 sm:py-24 ${fondos[fondo]} ${className ?? ""}`}>
      <Container ancho={ancho}>
        {(eyebrow || titulo || entradilla) && (
          <Reveal className={`max-w-[46rem] ${centrado ? "mx-auto text-center" : ""}`}>
            {eyebrow && (
              <p
                className={`text-eyebrow uppercase mb-3 ${
                  esMarca ? "text-primary-soft" : "text-primary"
                }`}
              >
                {eyebrow}
              </p>
            )}
            {titulo && <h2 className="text-h2">{titulo}</h2>}
            {entradilla && (
              <p
                className={`text-body-lg mt-4 ${
                  esMarca ? "text-white/80" : "text-muted-foreground"
                }`}
              >
                {entradilla}
              </p>
            )}
          </Reveal>
        )}
        <div className={eyebrow || titulo || entradilla ? "mt-12" : ""}>{children}</div>
      </Container>
    </section>
  );
}
