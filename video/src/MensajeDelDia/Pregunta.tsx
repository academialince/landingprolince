import {
  AbsoluteFill,
  Easing,
  Interactive,
  interpolate,
  interpolateColors,
  useCurrentFrame,
  useVideoConfig,
} from "remotion";
import { MensajeDelDiaProps } from "./schema";
import { clamp, colores, fondo, fontFamily } from "./theme";

const LETRAS = ["A", "B", "C", "D"] as const;
const ENTRADA_OPCIONES = 50;
const INICIO_CUENTA = 90;
const SEGUNDOS_PARA_PENSAR = 8;

export const Pregunta: React.FC<
  Pick<MensajeDelDiaProps, "pregunta" | "opciones" | "correcta" | "explicacion">
> = ({ pregunta, opciones, correcta, explicacion }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const revelado = INICIO_CUENTA + SEGUNDOS_PARA_PENSAR * fps;
  const restante = Math.max(0, Math.ceil((revelado - frame) / fps));
  const progreso = interpolate(frame, [INICIO_CUENTA, revelado], [1, 0], clamp);

  return (
    <AbsoluteFill
      name="Pregunta"
      style={{
        background: fondo,
        fontFamily,
        padding: "150px 80px 120px",
        gap: 44,
      }}
    >
      <Interactive.Div
        name="Cabecera"
        style={{
          alignSelf: "flex-start",
          backgroundColor: colores.dorado,
          color: colores.verdeProfundo,
          fontSize: 48,
          fontWeight: 900,
          letterSpacing: 3,
          padding: "14px 32px",
          borderRadius: 18,
          scale: interpolate(frame, [0, 20], [0.6, 1], {
            ...clamp,
            easing: Easing.spring({ damping: 12 }),
            output: "perceptual-scale",
          }),
          opacity: interpolate(frame, [0, 10], [0, 1], clamp),
        }}
      >
        PREGUNTA DEL DÍA
      </Interactive.Div>

      <Interactive.Div
        name="Enunciado"
        style={{
          color: colores.blanco,
          fontSize: 58,
          fontWeight: 800,
          lineHeight: 1.2,
          opacity: interpolate(frame, [15, 35], [0, 1], clamp),
          translate: interpolate(frame, [15, 40], ["0px 40px", "0px 0px"], {
            ...clamp,
            easing: Easing.bezier(0.16, 1, 0.3, 1),
          }),
        }}
      >
        {pregunta}
      </Interactive.Div>

      <div style={{ display: "flex", flexDirection: "column", gap: 24 }}>
        {opciones.map((opcion, i) => {
          const letra = LETRAS[i];
          const esCorrecta = letra === correcta;
          const inicio = ENTRADA_OPCIONES + i * 10;
          const fondoOpcion = interpolateColors(
            frame,
            [revelado, revelado + 12],
            [
              "rgba(255,255,255,0.10)",
              esCorrecta ? colores.verde : "rgba(255,255,255,0.04)",
            ],
          );
          return (
            <div
              key={letra}
              style={{
                display: "flex",
                alignItems: "center",
                gap: 28,
                padding: "26px 30px",
                borderRadius: 24,
                border: `3px solid ${esCorrecta && frame >= revelado ? colores.verdeClaro : "rgba(255,255,255,0.18)"}`,
                backgroundColor: fondoOpcion,
                opacity:
                  interpolate(frame, [inicio, inicio + 15], [0, 1], clamp) *
                  (esCorrecta
                    ? 1
                    : interpolate(
                        frame,
                        [revelado, revelado + 12],
                        [1, 0.4],
                        clamp,
                      )),
                translate: interpolate(
                  frame,
                  [inicio, inicio + 20],
                  ["80px 0px", "0px 0px"],
                  { ...clamp, easing: Easing.bezier(0.16, 1, 0.3, 1) },
                ),
                scale: esCorrecta
                  ? interpolate(
                      frame,
                      [revelado, revelado + 10, revelado + 20],
                      [1, 1.05, 1],
                      clamp,
                    )
                  : 1,
              }}
            >
              <div
                style={{
                  flexShrink: 0,
                  width: 76,
                  height: 76,
                  borderRadius: 38,
                  backgroundColor: colores.blanco,
                  color: colores.verdeOscuro,
                  fontSize: 44,
                  fontWeight: 900,
                  display: "flex",
                  justifyContent: "center",
                  alignItems: "center",
                }}
              >
                {letra}
              </div>
              <div
                style={{
                  color: colores.blanco,
                  fontSize: 46,
                  fontWeight: 700,
                  lineHeight: 1.15,
                }}
              >
                {opcion}
              </div>
            </div>
          );
        })}
      </div>

      <div style={{ position: "relative", flex: 1 }}>
        <Interactive.Div
          name="CuentaAtras"
          style={{
            position: "absolute",
            inset: 0,
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            gap: 36,
            opacity:
              interpolate(
                frame,
                [INICIO_CUENTA - 10, INICIO_CUENTA],
                [0, 1],
                clamp,
              ) * interpolate(frame, [revelado, revelado + 8], [1, 0], clamp),
          }}
        >
          <svg width={170} height={170} viewBox="0 0 170 170">
            <circle
              cx={85}
              cy={85}
              r={74}
              fill="none"
              stroke="rgba(255,255,255,0.18)"
              strokeWidth={12}
            />
            <circle
              cx={85}
              cy={85}
              r={74}
              fill="none"
              stroke={colores.dorado}
              strokeWidth={12}
              strokeLinecap="round"
              strokeDasharray={2 * Math.PI * 74}
              strokeDashoffset={2 * Math.PI * 74 * (1 - progreso)}
              transform="rotate(-90 85 85)"
            />
            <text
              x={85}
              y={85}
              textAnchor="middle"
              dominantBaseline="central"
              fill={colores.blanco}
              fontSize={72}
              fontWeight={900}
              fontFamily={fontFamily}
            >
              {restante}
            </text>
          </svg>
          <div style={{ color: colores.menta, fontSize: 48, fontWeight: 700 }}>
            ¿Cuál es
            <br />
            la correcta?
          </div>
        </Interactive.Div>

        <Interactive.Div
          name="Explicacion"
          style={{
            position: "absolute",
            inset: 0,
            display: "flex",
            flexDirection: "column",
            justifyContent: "center",
            gap: 18,
            opacity: interpolate(
              frame,
              [revelado + 15, revelado + 35],
              [0, 1],
              clamp,
            ),
            translate: interpolate(
              frame,
              [revelado + 15, revelado + 40],
              ["0px 40px", "0px 0px"],
              { ...clamp, easing: Easing.bezier(0.16, 1, 0.3, 1) },
            ),
          }}
        >
          <div
            style={{ color: colores.verdeClaro, fontSize: 52, fontWeight: 900 }}
          >
            Correcta: {correcta}
          </div>
          <div
            style={{
              color: colores.menta,
              fontSize: 40,
              fontWeight: 500,
              lineHeight: 1.3,
            }}
          >
            {explicacion}
          </div>
        </Interactive.Div>
      </div>
    </AbsoluteFill>
  );
};
