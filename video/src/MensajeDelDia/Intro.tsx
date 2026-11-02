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

export const Intro: React.FC = () => {
  const frame = useCurrentFrame();

  return (
    <AbsoluteFill
      name="Intro"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        alignItems: "center",
        gap: 60,
      }}
    >
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          width: 420,
          height: 420,
          scale: interpolate(frame, [0, 30], [0.4, 1], {
            ...clamp,
            easing: Easing.spring({ damping: 12 }),
            output: "perceptual-scale",
          }),
          opacity: interpolate(frame, [0, 12], [0, 1], clamp),
        }}
      />
      <Interactive.Div
        name="Titulo"
        style={{
          color: colores.blanco,
          fontSize: 96,
          fontWeight: 900,
          textAlign: "center",
          lineHeight: 1.05,
          padding: "0 80px",
          opacity: interpolate(frame, [18, 36], [0, 1], clamp),
          translate: interpolate(frame, [18, 36], ["0px 60px", "0px 0px"], {
            ...clamp,
            easing: Easing.bezier(0.16, 1, 0.3, 1),
          }),
        }}
      >
        TU DOSIS
        <br />
        <span style={{ color: colores.dorado }}>DIARIA</span>
      </Interactive.Div>
      <Interactive.Div
        name="Subtitulo"
        style={{
          color: colores.menta,
          fontSize: 48,
          fontWeight: 600,
          letterSpacing: 4,
          opacity: interpolate(frame, [32, 50], [0, 1], clamp),
        }}
      >
        ACADEMIA PROLINCE
      </Interactive.Div>
    </AbsoluteFill>
  );
};
