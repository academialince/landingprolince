import {
  AbsoluteFill,
  Easing,
  Interactive,
  interpolate,
  useCurrentFrame,
} from "remotion";
import { clamp, colores, fondo, fontFamily } from "../MensajeDelDia/theme";
import { Etiqueta } from "./Etiqueta";
import { CuriosidadProps } from "./schema";

export const Ademas: React.FC<Pick<CuriosidadProps, "ademas">> = ({
  ademas,
}) => {
  const frame = useCurrentFrame();

  return (
    <AbsoluteFill
      name="Ademas"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        padding: "0 90px",
        gap: 56,
      }}
    >
      <Etiqueta texto="Y ADEMÁS…" />
      <Interactive.Div
        name="Dato"
        style={{
          color: colores.blanco,
          fontSize: 88,
          fontWeight: 900,
          lineHeight: 1.12,
          opacity: interpolate(frame, [15, 33], [0, 1], clamp),
          translate: interpolate(frame, [15, 40], ["0px 60px", "0px 0px"], {
            ...clamp,
            easing: Easing.bezier(0.16, 1, 0.3, 1),
          }),
        }}
      >
        {ademas}
      </Interactive.Div>
    </AbsoluteFill>
  );
};
