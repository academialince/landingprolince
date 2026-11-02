import {
  AbsoluteFill,
  Easing,
  Img,
  Interactive,
  interpolate,
  staticFile,
  useCurrentFrame,
} from "remotion";
import { clamp, colores, fondo, fontFamily } from "./theme";

export const Outro: React.FC = () => {
  const frame = useCurrentFrame();

  return (
    <AbsoluteFill
      name="Outro"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        alignItems: "center",
        padding: "0 80px",
        gap: 56,
        textAlign: "center",
      }}
    >
      <Interactive.Div
        name="Lema"
        style={{
          color: colores.blanco,
          fontSize: 104,
          fontWeight: 900,
          lineHeight: 1.05,
          scale: interpolate(frame, [0, 25], [0.7, 1], {
            ...clamp,
            easing: Easing.spring({ damping: 12 }),
            output: "perceptual-scale",
          }),
          opacity: interpolate(frame, [0, 12], [0, 1], clamp),
        }}
      >
        ¡A POR
        <br />
        <span style={{ color: colores.dorado }}>LA PLAZA!</span>
      </Interactive.Div>
      <Interactive.Div
        name="Llamada"
        style={{
          color: colores.menta,
          fontSize: 48,
          fontWeight: 700,
          lineHeight: 1.25,
          opacity: interpolate(frame, [20, 38], [0, 1], clamp),
        }}
      >
        ¿Acertaste? Déjalo en comentarios
        <br />y vuelve mañana a por otra.
      </Interactive.Div>
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          width: 240,
          height: 240,
          opacity: interpolate(frame, [35, 55], [0, 1], clamp),
        }}
      />
      <Interactive.Div
        name="Marca"
        style={{
          color: colores.blanco,
          fontSize: 44,
          fontWeight: 800,
          letterSpacing: 4,
          opacity: interpolate(frame, [45, 60], [0, 1], clamp),
        }}
      >
        ACADEMIA PROLINCE
      </Interactive.Div>
    </AbsoluteFill>
  );
};
