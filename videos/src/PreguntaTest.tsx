import "@fontsource-variable/manrope";
import {
  AbsoluteFill,
  Img,
  interpolate,
  spring,
  staticFile,
  useCurrentFrame,
  useVideoConfig,
} from "remotion";
import { z } from "zod";

const fontFamily = "'Manrope Variable', sans-serif";

const C = {
  verde: "#005238",
  verdeProfundo: "#003323",
  verdeSuave: "#E6F1EB",
  dorado: "#C9A227",
  blanco: "#FFFFFF",
  texto: "#14231C",
  gris: "#5B6B63",
  rojo: "#B42318",
};

export const preguntaSchema = z.object({
  id: z.string(),
  tema: z.string(),
  enunciado: z.string(),
  opciones: z.array(z.string()).length(4),
  correcta: z.number().int().min(0).max(3),
  explicacion: z.string(),
  segundosCuenta: z.number().int().min(3).max(15),
});

type Props = z.infer<typeof preguntaSchema>;

// Tramos en segundos: cabecera+enunciado, opciones, cuenta atrás, solución, explicación, cierre.
const T_ENUNCIADO = 0.4;
const T_OPCIONES = 2.2;
const T_EXPLICACION = 1.2;
const T_LECTURA = 5;
const T_CIERRE = 2.5;

const tiempos = (segundosCuenta: number) => {
  const cuenta = T_OPCIONES + 1.6;
  const solucion = cuenta + segundosCuenta;
  const explicacion = solucion + T_EXPLICACION;
  const cierre = explicacion + T_LECTURA;
  return { cuenta, solucion, explicacion, cierre, fin: cierre + T_CIERRE };
};

export const duracionPregunta = (segundosCuenta: number, fps: number) =>
  Math.round(tiempos(segundosCuenta).fin * fps);

const LETRAS = ["A", "B", "C", "D"];

export const PreguntaTest: React.FC<Props> = ({
  tema,
  enunciado,
  opciones,
  correcta,
  explicacion,
  segundosCuenta,
}) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const t = tiempos(segundosCuenta);
  const f = (s: number) => Math.round(s * fps);

  const entrada = (desde: number) => spring({ frame: frame - desde, fps, config: { damping: 200 } });
  const resuelta = frame >= f(t.solucion);
  const enCierre = frame >= f(t.cierre);

  const cabecera = entrada(0);
  const pEnunciado = entrada(f(T_ENUNCIADO));
  const pExplicacion = entrada(f(t.explicacion));
  const pCierre = entrada(f(t.cierre));

  const restante = Math.max(0, segundosCuenta - Math.floor((frame - f(t.cuenta)) / fps));
  const progresoCuenta = interpolate(frame, [f(t.cuenta), f(t.solucion)], [1, 0], {
    extrapolateLeft: "clamp",
    extrapolateRight: "clamp",
  });
  const verCuenta = frame >= f(t.cuenta) && !resuelta;

  return (
    <AbsoluteFill style={{ backgroundColor: C.verdeProfundo, fontFamily, color: C.texto }}>
      <AbsoluteFill
        style={{
          background: `radial-gradient(circle at 20% 0%, ${C.verde} 0%, ${C.verdeProfundo} 60%)`,
        }}
      />

      {/* Cabecera */}
      <div
        style={{
          position: "absolute",
          top: 110,
          left: 80,
          right: 80,
          display: "flex",
          alignItems: "center",
          gap: 28,
          opacity: cabecera,
          transform: `translateY(${(1 - cabecera) * -40}px)`,
        }}
      >
        <Img src={staticFile("prolince-logo.svg")} style={{ width: 120, height: 120 }} />
        <div>
          <div style={{ color: C.dorado, fontSize: 30, fontWeight: 800, letterSpacing: "0.12em" }}>
            TEST GUARDIA CIVIL
          </div>
          <div style={{ color: C.blanco, fontSize: 38, fontWeight: 700, marginTop: 6 }}>{tema}</div>
        </div>
      </div>

      {/* Tarjeta de la pregunta */}
      <div
        style={{
          position: "absolute",
          top: 330,
          left: 60,
          right: 60,
          backgroundColor: C.blanco,
          borderRadius: 40,
          padding: "56px 52px",
          opacity: pEnunciado * (1 - pCierre),
          transform: `translateY(${(1 - pEnunciado) * 60}px) scale(${1 - pCierre * 0.05})`,
          boxShadow: "0 30px 80px rgba(0,0,0,0.35)",
        }}
      >
        <div style={{ fontSize: 50, fontWeight: 700, lineHeight: 1.3 }}>{enunciado}</div>

        <div style={{ display: "flex", flexDirection: "column", gap: 24, marginTop: 48 }}>
          {opciones.map((opcion, i) => {
            const p = entrada(f(T_OPCIONES) + i * 6);
            const esCorrecta = i === correcta;
            const fondo = resuelta ? (esCorrecta ? C.verde : "#F3F4F3") : C.verdeSuave;
            const color = resuelta && esCorrecta ? C.blanco : C.texto;
            const pulso = resuelta && esCorrecta ? entrada(f(t.solucion)) : 0;
            return (
              <div
                key={i}
                style={{
                  display: "flex",
                  alignItems: "center",
                  gap: 26,
                  padding: "28px 30px",
                  borderRadius: 24,
                  backgroundColor: fondo,
                  color,
                  opacity: p * (resuelta && !esCorrecta ? 0.45 : 1),
                  transform: `translateX(${(1 - p) * 80}px) scale(${1 + pulso * 0.03})`,
                  border: `3px solid ${resuelta && esCorrecta ? C.dorado : "transparent"}`,
                }}
              >
                <div
                  style={{
                    flexShrink: 0,
                    width: 72,
                    height: 72,
                    borderRadius: 36,
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    fontSize: 36,
                    fontWeight: 800,
                    backgroundColor: resuelta && esCorrecta ? C.dorado : C.verde,
                    color: C.blanco,
                  }}
                >
                  {resuelta && esCorrecta ? "✓" : LETRAS[i]}
                </div>
                <div style={{ fontSize: 42, fontWeight: 600, lineHeight: 1.25 }}>{opcion}</div>
              </div>
            );
          })}
        </div>
      </div>

      {/* Cuenta atrás */}
      {verCuenta && (
        <div
          style={{
            position: "absolute",
            bottom: 200,
            left: 0,
            right: 0,
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
            gap: 24,
            opacity: entrada(f(t.cuenta)),
          }}
        >
          <div style={{ color: C.blanco, fontSize: 40, fontWeight: 700 }}>¿Cuál es la correcta?</div>
          <div style={{ position: "relative", width: 200, height: 200 }}>
            <svg width={200} height={200} style={{ transform: "rotate(-90deg)" }}>
              <circle cx={100} cy={100} r={88} stroke="rgba(255,255,255,0.15)" strokeWidth={14} fill="none" />
              <circle
                cx={100}
                cy={100}
                r={88}
                stroke={C.dorado}
                strokeWidth={14}
                fill="none"
                strokeLinecap="round"
                strokeDasharray={2 * Math.PI * 88}
                strokeDashoffset={2 * Math.PI * 88 * (1 - progresoCuenta)}
              />
            </svg>
            <div
              style={{
                position: "absolute",
                inset: 0,
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                color: C.blanco,
                fontSize: 96,
                fontWeight: 800,
              }}
            >
              {restante}
            </div>
          </div>
        </div>
      )}

      {/* Explicación */}
      {frame >= f(t.explicacion) && !enCierre && (
        <div
          style={{
            position: "absolute",
            bottom: 140,
            left: 60,
            right: 60,
            backgroundColor: "rgba(255,255,255,0.08)",
            borderLeft: `10px solid ${C.dorado}`,
            borderRadius: 24,
            padding: "36px 40px",
            color: C.blanco,
            opacity: pExplicacion,
            transform: `translateY(${(1 - pExplicacion) * 50}px)`,
          }}
        >
          <div style={{ color: C.dorado, fontSize: 30, fontWeight: 800, letterSpacing: "0.1em" }}>
            EXPLICACIÓN
          </div>
          <div style={{ fontSize: 38, fontWeight: 500, lineHeight: 1.4, marginTop: 12 }}>{explicacion}</div>
        </div>
      )}

      {/* Cierre */}
      {enCierre && (
        <AbsoluteFill
          style={{
            alignItems: "center",
            justifyContent: "center",
            flexDirection: "column",
            gap: 40,
            opacity: pCierre,
            transform: `scale(${0.9 + pCierre * 0.1})`,
          }}
        >
          <Img src={staticFile("prolince-logo.svg")} style={{ width: 300, height: 300 }} />
          <div style={{ color: C.blanco, fontSize: 64, fontWeight: 800, textAlign: "center", lineHeight: 1.2 }}>
            ¿La has acertado?
          </div>
          <div style={{ color: C.dorado, fontSize: 44, fontWeight: 700, textAlign: "center" }}>
            Síguenos para más preguntas
          </div>
          <div style={{ color: C.blanco, fontSize: 40, fontWeight: 600, opacity: 0.85 }}>Academia ProLince</div>
        </AbsoluteFill>
      )}
    </AbsoluteFill>
  );
};
