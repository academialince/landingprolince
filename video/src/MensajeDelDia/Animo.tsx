import {
  AbsoluteFill,
  Easing,
  Interactive,
  interpolate,
  useCurrentFrame,
} from "remotion";
import { MensajeDelDiaProps } from "./schema";
import { clamp, colores, fondo, fontFamily } from "./theme";

// Momento (en frames) en que aparece cada frase de ánimo
const ENTRADAS = [15, 75, 150];

export const Animo: React.FC<Pick<MensajeDelDiaProps, "animo">> = ({
  animo,
}) => {
  const frame = useCurrentFrame();

  return (
    <AbsoluteFill
      name="Animo"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        padding: "0 90px",
        gap: 70,
      }}
    >
      <Interactive.Div
        name="Etiqueta"
        style={{
          color: colores.dorado,
          fontSize: 44,
          fontWeight: 800,
          letterSpacing: 6,
          opacity: interpolate(frame, [0, 15], [0, 1], clamp),
        }}
      >
        OPOSITOR, OPOSITORA:
      </Interactive.Div>
      {animo.map((frase, i) => {
        const inicio = ENTRADAS[i];
        const esUltima = i === animo.length - 1;
        return (
          <div
            key={i}
            style={{
              color: esUltima ? colores.verdeClaro : colores.blanco,
              fontSize: esUltima ? 72 : 96,
              fontWeight: esUltima ? 700 : 900,
              lineHeight: 1.12,
              opacity: interpolate(frame, [inicio, inicio + 18], [0, 1], clamp),
              translate: interpolate(
                frame,
                [inicio, inicio + 24],
                ["0px 50px", "0px 0px"],
                { ...clamp, easing: Easing.bezier(0.16, 1, 0.3, 1) },
              ),
            }}
          >
            {frase}
          </div>
        );
      })}
    </AbsoluteFill>
  );
};
