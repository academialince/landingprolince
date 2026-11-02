import {
  AbsoluteFill,
  Easing,
  Img,
  Interactive,
  interpolate,
  staticFile,
  useCurrentFrame,
} from "remotion";
import { clamp, colores, fondo, fontFamily } from "../MensajeDelDia/theme";
import { CuriosidadProps } from "./schema";

const LLAMADAS = ["GUÁRDALO", "COMPÁRTELO", "SÍGUENOS"];

export const Cierre: React.FC<Pick<CuriosidadProps, "usuario">> = ({
  usuario,
}) => {
  const frame = useCurrentFrame();

  return (
    <AbsoluteFill
      name="Cierre"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        alignItems: "center",
        padding: "0 80px",
        gap: 60,
        textAlign: "center",
      }}
    >
      <div style={{ display: "flex", flexDirection: "column", gap: 12 }}>
        {LLAMADAS.map((texto, i) => {
          const inicio = i * 12;
          return (
            <div
              key={texto}
              style={{
                color: i === 1 ? colores.dorado : colores.blanco,
                fontSize: 110,
                fontWeight: 900,
                lineHeight: 1.05,
                scale: interpolate(frame, [inicio, inicio + 22], [0.6, 1], {
                  ...clamp,
                  easing: Easing.spring({ damping: 12 }),
                  output: "perceptual-scale",
                }),
                opacity: interpolate(
                  frame,
                  [inicio, inicio + 10],
                  [0, 1],
                  clamp,
                ),
              }}
            >
              {texto}
            </div>
          );
        })}
      </div>
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          width: 240,
          height: 240,
          opacity: interpolate(frame, [40, 60], [0, 1], clamp),
        }}
      />
      <div style={{ display: "flex", flexDirection: "column", gap: 10 }}>
        <Interactive.Div
          name="Marca"
          style={{
            color: colores.blanco,
            fontSize: 48,
            fontWeight: 800,
            letterSpacing: 4,
            opacity: interpolate(frame, [50, 65], [0, 1], clamp),
          }}
        >
          ACADEMIA PROLINCE
        </Interactive.Div>
        <Interactive.Div
          name="Usuario"
          style={{
            color: colores.verdeClaro,
            fontSize: 48,
            fontWeight: 700,
            opacity: interpolate(frame, [58, 72], [0, 1], clamp),
          }}
        >
          {usuario}
        </Interactive.Div>
      </div>
    </AbsoluteFill>
  );
};
