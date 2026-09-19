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
      className={`group inline-flex items-center gap-2 font-bold ${
        tono === "claro" ? "text-white" : "text-primary"
      }`}
    >
      <span className="underline-offset-4 group-hover:underline">{children}</span>
      <ArrowRight
        size={17}
        aria-hidden
        className="transition-transform duration-200 ease-[var(--ease-product)] group-hover:translate-x-1"
      />
    </Link>
  );
}
