import Link from "next/link";
import type { ComponentProps, ReactNode } from "react";

type Variante = "primario" | "secundario" | "fantasma" | "claro";
type Tamano = "md" | "lg";

const base =
  "inline-flex items-center justify-center gap-2 rounded-md font-bold transition-[background-color,border-color,transform,box-shadow] duration-150 ease-[var(--ease-product)] hover:-translate-y-px active:translate-y-0 whitespace-nowrap";

const variantes: Record<Variante, string> = {
  primario:
    "bg-primary text-primary-fg shadow-[0_8px_22px_color-mix(in_oklch,var(--color-primary)_18%,transparent)] hover:bg-primary-hover active:bg-primary-active",
  secundario:
    "bg-surface text-foreground border border-border hover:bg-surface-tinted hover:border-border-strong",
  fantasma: "text-foreground hover:bg-surface-tinted",
  claro: "bg-white text-primary-deep hover:bg-primary-soft",
};

const tamanos: Record<Tamano, string> = {
  md: "min-h-11 px-4 text-body-sm",
  lg: "min-h-13 px-6 text-base",
};

function clases(variante: Variante, tamano: Tamano, extra?: string) {
  return [base, variantes[variante], tamanos[tamano], extra].filter(Boolean).join(" ");
}

type Props = {
  children: ReactNode;
  href?: string;
  variante?: Variante;
  tamano?: Tamano;
  className?: string;
} & Omit<ComponentProps<"button">, "className" | "children">;

export function Button({
  children,
  href,
  variante = "primario",
  tamano = "md",
  className,
  ...rest
}: Props) {
  const cls = clases(variante, tamano, className);

  if (href) {
    // Los enlaces a la plataforma y las anclas de la propia página no pasan por el router.
    const externo = href.startsWith("http") || href.startsWith("#");
    if (externo) {
      return (
        <a href={href} className={cls}>
          {children}
        </a>
      );
    }
    return (
      <Link href={href} className={cls}>
        {children}
      </Link>
    );
  }

  return (
    <button className={cls} {...rest}>
      {children}
    </button>
  );
}
