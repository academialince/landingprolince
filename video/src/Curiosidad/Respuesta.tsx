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

const INICIO_FRASES = 70;
const SEPARACION_FRASES = 75;

export const Respuesta: React.FC<
  Pick<CuriosidadProps, "fecha" | "anio" | "respuesta">
> = ({ fecha, anio, respuesta }) => {
  const frame = useCurrentFrame();
  const frases = respuesta.match(/[^.!?]+[.!?]+/g) ?? [respuesta];
  const anioAnimado = Math.round(
    interpolate(frame, [10, 50], [anio - 60, anio], {
      ...clamp,
      easing: Easing.bezier(0.16, 1, 0.3, 1),
    }),
  );

  return (
    <AbsoluteFill
      name="Respuesta"
      style={{
        background: fondo,
        fontFamily,
        justifyContent: "center",
        padding: "0 90px",
        gap: 40,
      }}
    >
      <Etiqueta texto="LA RESPUESTA" />
      <div style={{ display: "flex", flexDirection: "column" }}>
        <Interactive.Div
          name="Fecha"
          style={{
            color: colores.menta,
            fontSize: 60,
            fontWeight: 700,
            opacity: interpolate(frame, [8, 22], [0, 1], clamp),
          }}
        >
          {fecha}
        </Interactive.Div>
        <Interactive.Div
          name="Anio"
          style={{
            color: colores.dorado,
            fontSize: 220,
            fontWeight: 900,
            lineHeight: 1,
            fontVariantNumeric: "tabular-nums",
            opacity: interpolate(frame, [10, 20], [0, 1], clamp),
          }}
        >
          {anioAnimado}
        </Interactive.Div>
      </div>
      <div style={{ display: "flex", flexDirection: "column", gap: 28 }}>
        {frases.map((frase, i) => {
          const inicio = INICIO_FRASES + i * SEPARACION_FRASES;
          return (
            <div
              key={i}
              style={{
                color: colores.blanco,
                fontSize: 56,
                fontWeight: 700,
                lineHeight: 1.22,
                opacity: interpolate(
                  frame,
                  [inicio, inicio + 18],
                  [0, 1],
                  clamp,
                ),
                translate: interpolate(
                  frame,
                  [inicio, inicio + 24],
                  ["0px 40px", "0px 0px"],
                  { ...clamp, easing: Easing.bezier(0.16, 1, 0.3, 1) },
                ),
              }}
            >
              {frase.trim()}
            </div>
          );
        })}
      </div>
    </AbsoluteFill>
  );
};
