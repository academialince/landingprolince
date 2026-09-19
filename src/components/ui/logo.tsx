/**
 * El isotipo se pinta como máscara CSS sobre un color del sistema, no como imagen coloreada.
 * Así la marca de la cabecera y el verde de los CTA salen literalmente del mismo token, el
 * fichero se cachea aparte en lugar de inflar el HTML, y la variante sobre fondo oscuro no
 * necesita un segundo SVG.
 */
const RATIO = 945.1 / 1010.9;
const MASK = "url(/brand/prolince-isotipo-mono.svg)";

type Props = {
  alto?: number;
  tono?: "marca" | "actual";
  decorativo?: boolean;
  className?: string;
};

export function Logo({ alto = 32, tono = "marca", decorativo = false, className }: Props) {
  return (
    <span
      className={className}
      role={decorativo ? undefined : "img"}
      aria-label={decorativo ? undefined : "ProLince"}
      aria-hidden={decorativo || undefined}
      style={{
        display: "inline-block",
        flex: "0 0 auto",
        height: alto,
        width: Math.round(alto * RATIO * 100) / 100,
        backgroundColor: tono === "actual" ? "currentColor" : "var(--color-primary)",
        WebkitMaskImage: MASK,
        maskImage: MASK,
        WebkitMaskRepeat: "no-repeat",
        maskRepeat: "no-repeat",
        WebkitMaskSize: "contain",
        maskSize: "contain",
        WebkitMaskPosition: "center",
        maskPosition: "center",
      }}
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
      {/* El nombre va como texto al lado, así que el isotipo es decorativo y no se lee dos veces. */}
      <Logo alto={alto} tono={tono} decorativo />
      <span
        className="hidden font-extrabold tracking-[-0.03em] xs:inline"
        style={{ fontSize: Math.round(alto * 0.62), fontWeight: 780 }}
      >
        ProLince
      </span>
    </span>
  );
}
