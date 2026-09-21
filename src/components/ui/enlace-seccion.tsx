import Link from "next/link";
import { ArrowRight } from "lucide-react";

export function EnlaceSeccion({
  href,
  children,
  tono = "marca",
}: {
  href: string;
  children: React.ReactNode;
  tono?: "marca" | "claro";
}) {
  return (
    <Link
      href={href}
      className={`group inline-flex min-h-11 items-center gap-2 rounded-md border bg-transparent px-4 font-bold transition-[background-color,border-color,transform] duration-150 ease-[var(--ease-product)] hover:-translate-y-px active:translate-y-0 ${
        tono === "claro"
          ? "border-white text-white hover:bg-white/10"
          : "border-primary text-primary hover:bg-primary hover:text-primary-fg focus-visible:bg-primary focus-visible:text-primary-fg"
      }`}
    >
      <span>{children}</span>
      <ArrowRight
        size={17}
        aria-hidden
        className="transition-transform duration-200 ease-[var(--ease-product)] group-hover:translate-x-1"
      />
    </Link>
  );
}
