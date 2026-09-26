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
import { Etiqueta } from "./Etiqueta";
import { CuriosidadProps } from "./schema";

export const Gancho: React.FC<
  Pick<CuriosidadProps, "gancho" | "destacado">
> = ({ gancho, destacado }) => {
  const frame = useCurrentFrame();

  return (
    <AbsoluteFill
      name="Gancho"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        padding: "0 90px",
        gap: 56,
      }}
    >
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          position: "absolute",
          top: 150,
          left: 90,
          width: 150,
          height: 150,
          opacity: interpolate(frame, [0, 15], [0, 1], clamp),
        }}
      />
      <Etiqueta texto="CURIOSIDAD GC" desde={5} />
      <Interactive.Div
        name="Pregunta"
        style={{
          color: colores.blanco,
          fontSize: 104,
          fontWeight: 900,
          lineHeight: 1.05,
          opacity: interpolate(frame, [15, 33], [0, 1], clamp),
          translate: interpolate(frame, [15, 40], ["0px 60px", "0px 0px"], {
            ...clamp,
            easing: Easing.bezier(0.16, 1, 0.3, 1),
          }),
        }}
      >
        {gancho}
      </Interactive.Div>
      <Interactive.Div
        name="Destacado"
        style={{
          alignSelf: "flex-start",
          transformOrigin: "left center",
          color: colores.dorado,
          fontSize: 136,
          fontWeight: 900,
          lineHeight: 1,
          textTransform: "uppercase",
          scale: interpolate(frame, [40, 62], [0.5, 1], {
            ...clamp,
            easing: Easing.spring({ damping: 10 }),
            output: "perceptual-scale",
          }),
          opacity: interpolate(frame, [40, 50], [0, 1], clamp),
        }}
      >
        {destacado}
      </Interactive.Div>
    </AbsoluteFill>
  );
};
