import "@fontsource-variable/big-shoulders-display";
import "@fontsource-variable/manrope";
import { Bell } from "lucide-react";
import {
  AbsoluteFill,
  Easing,
  Img,
  interpolate,
  spring,
  staticFile,
  useCurrentFrame,
  useVideoConfig,
} from "remotion";
import { z } from "zod";

// Paleta de la pieza «OBJ-00 · Apertura» de redes (verde bosque, dorado y crema).
const A = {
  verdeArriba: "#0f4c38",
  verdeAbajo: "#06281e",
  dorado: "#c9a24e",
  doradoClaro: "#e3c06c",
  crema: "#f5f0e6",
  texto: "#e4ded2",
  cobre: "#c2552b",
};

const display = "'Big Shoulders Display Variable', 'Big Shoulders Display', sans-serif";
const texto = "'Manrope Variable', Manrope, sans-serif";

export const aperturaSchema = z.object({
  etiqueta: z.string(),
  linea1: z.string(),
  linea2: z.string(),
  descripcion: z.string(),
  llamada: z.string(),
  usuario: z.string(),
});

export const DURACION_APERTURA = 9;

// Franjas que tapa Instagram en Stories.
const SEGURO_ARRIBA = 250;
const SEGURO_ABAJO = 340;

const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;
const salida = Easing.bezier(0.16, 1, 0.3, 1);

/** Titular letra a letra: cada una sube desde detrás de una máscara. */
const LineaTitular: React.FC<{ texto: string; desde: number; color: string; tam: number }> = ({
  texto: linea,
  desde,
  color,
  tam,
}) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  return (
    <div style={{ display: "flex", overflow: "hidden", paddingTop: tam * 0.18, marginTop: -tam * 0.18 }}>
      {[...linea].map((letra, i) => {
        const p = spring({ frame: frame - desde - i * 2, fps, config: { damping: 15, stiffness: 140 } });
        // El punto final cae el último y rebota.
        const esPunto = letra === "." && i === linea.length - 1;
        const pPunto = spring({ frame: frame - desde - linea.length * 2 - 6, fps, config: { damping: 8 } });
        return (
          <span
            key={i}
            style={{
              display: "inline-block",
              color,
              fontFamily: display,
              fontSize: tam,
              fontWeight: 900,
              lineHeight: 0.86,
              letterSpacing: "-0.01em",
              translate: esPunto ? `0 ${(1 - pPunto) * -tam}px` : `0 ${(1 - p) * 105}%`,
              scale: esPunto ? `${0.4 + pPunto * 0.6}` : undefined,
              opacity: esPunto ? Math.min(1, pPunto * 2) : 1,
            }}
          >
            {letra}
          </span>
        );
      })}
    </div>
  );
};

export const Apertura: React.FC<z.infer<typeof aperturaSchema>> = ({
  etiqueta,
  linea1,
  linea2,
  descripcion,
  llamada,
  usuario,
}) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  const entrada = (desde: number, damping = 200) => spring({ frame: frame - f(desde), fps, config: { damping } });

  const pEtiqueta = entrada(0.3, 14);
  const pDescripcion = entrada(2.3);
  const pLlamada = entrada(3.4, 14);
  const pPie = entrada(0.6);
  // La campana suena dos veces y vuelve a sonar al final.
  const campana = (inicio: number) =>
    interpolate(frame, [f(inicio), f(inicio + 1)], [1, 0], clamp) * Math.sin((frame - f(inicio)) / 2.2) * 22;
  const giroCampana = frame >= f(3.7) ? campana(3.7) + (frame >= f(6.5) ? campana(6.5) : 0) : 0;
  // Brillo que cruza «ABRIMOS.» una vez colocado.
  const brillo = interpolate(frame, [f(4.6), f(5.8)], [-30, 130], { ...clamp, easing: Easing.inOut(Easing.quad) });

  return (
    <AbsoluteFill
      style={{
        background: `linear-gradient(180deg, ${A.verdeArriba}, ${A.verdeAbajo})`,
        fontFamily: texto,
        color: A.crema,
      }}
    >
      {/* Rayado diagonal fino que se desliza despacio */}
      <AbsoluteFill
        style={{
          inset: -200,
          backgroundImage: "repeating-linear-gradient(135deg, #ffffff0d 0 2px, transparent 2px 34px)",
          translate: `${(frame * 0.6) % 48}px 0px`,
          opacity: interpolate(frame, [0, f(0.8)], [0, 1], clamp),
        }}
      />
      {/* Luz suave arriba a la izquierda */}
      <AbsoluteFill
        style={{ background: "radial-gradient(circle at 15% 20%, #ffffff12, transparent 55%)" }}
      />

      <div
        style={{
          position: "absolute",
          top: SEGURO_ARRIBA + 30,
          bottom: SEGURO_ABAJO,
          left: 84,
          right: 84,
          display: "flex",
          flexDirection: "column",
        }}
      >
        {/* Etiqueta */}
        <div
          style={{
            alignSelf: "flex-start",
            border: `3px solid ${A.dorado}`,
            borderRadius: 999,
            padding: "14px 30px",
            color: A.doradoClaro,
            fontSize: 36,
            fontWeight: 700,
            letterSpacing: "0.02em",
            opacity: pEtiqueta,
            scale: `${0.8 + pEtiqueta * 0.2}`,
            transformOrigin: "left center",
          }}
        >
          {etiqueta}
        </div>

        {/* Titular */}
        <div style={{ marginTop: 100, position: "relative" }}>
          <LineaTitular texto={linea1} desde={f(0.7)} color={A.crema} tam={248} />
          <div style={{ position: "relative", marginTop: 6 }}>
            <LineaTitular texto={linea2} desde={f(1.2)} color={A.dorado} tam={248} />
            <div
              style={{
                position: "absolute",
                inset: 0,
                background: `linear-gradient(105deg, transparent ${brillo - 12}%, #fff6dc99 ${brillo}%, transparent ${brillo + 12}%)`,
                mixBlendMode: "overlay",
                pointerEvents: "none",
              }}
            />
          </div>
        </div>

        {/* Descripción */}
        <div
          style={{
            marginTop: 56,
            fontSize: 46,
            lineHeight: 1.36,
            fontWeight: 500,
            color: A.texto,
            opacity: pDescripcion,
            translate: `0 ${(1 - pDescripcion) * 40}px`,
          }}
        >
          {descripcion}
        </div>

        {/* Llamada a la acción */}
        <div
          style={{
            marginTop: 48,
            display: "flex",
            alignItems: "center",
            gap: 22,
            color: A.doradoClaro,
            fontSize: 46,
            fontWeight: 800,
            lineHeight: 1.2,
            opacity: pLlamada,
            translate: `${(1 - pLlamada) * -60}px 0`,
          }}
        >
          <Bell size={58} strokeWidth={2.6} style={{ flexShrink: 0, rotate: `${giroCampana}deg`, transformOrigin: "50% 8%" }} />
          {llamada}
        </div>

        {/* Pie: logo, marca y usuario */}
        <div
          style={{
            marginTop: "auto",
            display: "flex",
            alignItems: "center",
            justifyContent: "space-between",
            opacity: pPie,
            translate: `0 ${(1 - pPie) * 40}px`,
          }}
        >
          <div style={{ display: "flex", alignItems: "center", gap: 24 }}>
            <Img
              src={staticFile("prolince-logo.svg")}
              style={{ width: 112, height: 112, rotate: `${interpolate(pPie, [0, 1], [-90, 0])}deg` }}
            />
            <div style={{ display: "flex", flexDirection: "column" }}>
              <span style={{ fontFamily: display, fontWeight: 900, fontSize: 64, lineHeight: 0.9, color: A.crema }}>
                PROLINCE
              </span>
              <span style={{ fontSize: 24, fontWeight: 700, letterSpacing: "0.32em", color: A.dorado, marginTop: 4 }}>
                ACADEMIA
              </span>
            </div>
          </div>
          <span style={{ fontSize: 38, fontWeight: 800, color: A.doradoClaro }}>{usuario}</span>
        </div>
      </div>

      {/* Franja cobriza inferior que se dibuja de izquierda a derecha */}
      <div
        style={{
          position: "absolute",
          left: 0,
          bottom: 0,
          height: 18,
          width: `${interpolate(frame, [f(0.2), f(1.2)], [0, 100], { ...clamp, easing: salida })}%`,
          background: A.cobre,
          borderTop: `4px solid ${A.dorado}`,
        }}
      />
    </AbsoluteFill>
  );
};
