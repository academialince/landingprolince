import Image from "next/image";

/**
 * El isotipo es bicolor —círculo verde con el león, la espada y los laureles en blanco—, así
 * que se pinta como imagen y no como máscara CSS. La máscara solo valdría para una marca de una
 * tinta, y aquí aplanaría el emblema entero a un color.
 *
 * Sobre el verde oscuro del pie el círculo casi no separa (1,65:1), pero el aro y el león
 * blancos llevan el contraste, así que la misma imagen sirve en claro y en oscuro.
 */
const FUENTE = "/brand/prolince-logo.svg";
const RATIO = 1143 / 1136;

type Props = {
  alto?: number;
  decorativo?: boolean;
  className?: string;
};

export function Logo({ alto = 32, decorativo = false, className }: Props) {
  return (
    <Image
      src={FUENTE}
      alt={decorativo ? "" : "ProLince"}
      aria-hidden={decorativo || undefined}
      width={Math.round(alto * RATIO)}
      height={alto}
      priority
      className={`shrink-0 ${className ?? ""}`}
      style={{ height: alto, width: "auto" }}
    />
  );
}

export function Marca({
  alto = 30,
  tono = "marca",
  className,
}: {
  alto?: number;
  tono?: "marca" | "actual";
  className?: string;
}) {
  return (
    <span className={`inline-flex items-center gap-2.5 ${className ?? ""}`}>
      {/* El nombre va como texto al lado, así que el isotipo es decorativo. */}
      <Logo alto={alto} decorativo />
      <span
        className="hidden font-extrabold tracking-[-0.03em] xs:inline"
        style={{
          fontSize: Math.round(alto * 0.62),
          fontWeight: 780,
          color: tono === "actual" ? "currentColor" : undefined,
        }}
      >
        ProLince
      </span>
    </span>
  );
}
