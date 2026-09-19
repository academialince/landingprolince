import type { ReactNode } from "react";

export function Container({
  children,
  className,
  ancho = "normal",
}: {
  children: ReactNode;
  className?: string;
  ancho?: "normal" | "estrecho";
}) {
  const max = ancho === "estrecho" ? "46rem" : "75rem";
  return (
    <div
      className={className}
      style={{ width: `min(100% - 2rem, ${max})`, marginInline: "auto" }}
    >
      {children}
    </div>
  );
}
