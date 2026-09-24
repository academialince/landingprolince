import Image from "next/image";

/**
 * El isotipo es bicolor —círculo verde con el lince y los laureles en blanco, dentro de un aro
 * blanco con filete verde—, así que se pinta como imagen y no como máscara CSS. La máscara solo
 * valdría para una marca de una tinta, y aquí aplanaría el emblema entero a un color.
 *
 * El aro blanco exterior separa el emblema de cualquier fondo, así que la misma imagen sirve en
 * claro y en oscuro.
 */
const FUENTE = "/brand/prolince-logo.svg";
const RATIO = 1;

/** Logotipo completo (isotipo + «PROLINCE ACADEMIA»). El texto es verde: solo sobre fondo claro. */
const FUENTE_COMPLETO = "/brand/prolince-logo-horizontal.svg";
const RATIO_COMPLETO = 4347 / 1252;

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

/**
 * Marca para fondos claros: el logotipo completo y, en pantallas muy estrechas, solo el isotipo
 * para no empujar los botones de la cabecera.
 */
export function MarcaCompleta({ alto = 38, className }: { alto?: number; className?: string }) {
  return (
    <span className={`inline-flex items-center ${className ?? ""}`}>
      <span className="xs:hidden">
        <Logo alto={Math.round(alto * 0.85)} />
      </span>
      <Image
        src={FUENTE_COMPLETO}
        alt="ProLince Academia"
        width={Math.round(alto * RATIO_COMPLETO)}
        height={alto}
        priority
        className="hidden shrink-0 xs:block"
        style={{ height: alto, width: "auto" }}
      />
    </span>
  );
}
