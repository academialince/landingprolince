import { AbsoluteFill, Easing, interpolate, useCurrentFrame, useVideoConfig } from "remotion";
import { PAGINAS } from "./locucion";
import { C, F, clamp } from "./tokens";

/** Fondo del juego: casi negro con matiz verde, rejilla de 64 px y un halo menta que se mueve. */
export const Fondo: React.FC = () => {
  const frame = useCurrentFrame();
  const s = frame / 30;
  return (
    <AbsoluteFill style={{ background: C.fondo, overflow: "hidden" }}>
      <AbsoluteFill
        style={{
          backgroundImage: `linear-gradient(${C.acento}14 2px, transparent 2px), linear-gradient(90deg, ${C.acento}14 2px, transparent 2px)`,
          backgroundSize: "96px 96px",
          backgroundPosition: `0 ${(s * 18) % 96}px`,
        }}
      />
      <div
        style={{
          position: "absolute",
          width: 1400,
          height: 1400,
          left: -160 + 120 * Math.sin(s * 0.5),
          top: 260 + 140 * Math.cos(s * 0.4),
          borderRadius: "50%",
          background: `radial-gradient(circle, ${C.acento}40 0%, transparent 62%)`,
        }}
      />
      <AbsoluteFill style={{ background: `linear-gradient(180deg, ${C.fondo}00 55%, ${C.profundo}cc 100%)` }} />
    </AbsoluteFill>
  );
};

/** Entrada de cada escena: empuje de cámara rápido (de 1,12 a 1) con un leve desenfoque. */
export const Entrada: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  const frame = useCurrentFrame();
  return (
    <AbsoluteFill
      style={{
        scale: String(interpolate(frame, [0, 8], [1.12, 1], { ...clamp, easing: Easing.out(Easing.cubic) })),
        filter: `blur(${interpolate(frame, [0, 6], [14, 0], clamp)}px)`,
        opacity: interpolate(frame, [0, 4], [0, 1], clamp),
      }}
    >
      {children}
    </AbsoluteFill>
  );
};

/** Destello menta que tapa el corte entre escenas. */
export const Destello: React.FC = () => {
  const frame = useCurrentFrame();
  return (
    <AbsoluteFill
      style={{
        background: `radial-gradient(circle at 50% 45%, ${C.menta}, ${C.acento} 70%)`,
        opacity: interpolate(frame, [0, 2, 7], [0, 0.55, 0], clamp),
        mixBlendMode: "screen",
        pointerEvents: "none",
      }}
    />
  );
};

/** Chip verde de la parte de arriba («1 · ENTRA»), como .mpd-chip-acento del producto. */
export const Etiqueta: React.FC<{ texto: string; icono?: React.ReactNode; color?: string }> = ({
  texto,
  icono,
  color = C.acento,
}) => {
  const frame = useCurrentFrame();
  return (
    <div
      style={{
        display: "inline-flex",
        alignItems: "center",
        gap: 14,
        padding: "14px 30px",
        borderRadius: 999,
        background: color,
        color: C.profundo,
        fontFamily: F.titular,
        fontWeight: 800,
        fontSize: 50,
        letterSpacing: 1,
        textTransform: "uppercase",
        scale: String(interpolate(frame, [2, 12], [0.4, 1], { ...clamp, easing: Easing.out(Easing.back(2.2)) })),
        opacity: interpolate(frame, [2, 6], [0, 1], clamp),
      }}
    >
      {icono}
      {texto}
    </div>
  );
};

/** Titular en Barlow Condensed; las palabras entre *asteriscos* van en menta. */
export const Titular: React.FC<{ texto: string; tamano?: number; desde?: number }> = ({
  texto,
  tamano = 112,
  desde = 0,
}) => {
  const frame = useCurrentFrame();
  const palabras = texto.split(" ");
  return (
    <div
      style={{
        fontFamily: F.titular,
        fontWeight: 800,
        fontSize: tamano,
        lineHeight: 0.98,
        textTransform: "uppercase",
        textAlign: "center",
        color: C.texto,
        textShadow: "0 8px 30px rgba(0,0,0,0.6)",
      }}
    >
      {palabras.map((p, i) => {
        const d = desde + i * 2;
        const destaca = p.startsWith("*");
        return (
          <span
            key={i}
            style={{
              display: "inline-block",
              marginRight: "0.22em",
              color: destaca ? C.menta : C.texto,
              opacity: interpolate(frame, [d, d + 4], [0, 1], clamp),
              translate: `0 ${interpolate(frame, [d, d + 8], [40, 0], { ...clamp, easing: Easing.out(Easing.back(1.8)) })}px`,
            }}
          >
            {p.replace(/\*/g, "")}
          </span>
        );
      })}
    </div>
  );
};

/** Subtítulos palabra a palabra al estilo TikTok, sincronizados con la locución. */
export const Subtitulos: React.FC<{ ocultar: [number, number][] }> = ({ ocultar }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const s = frame / fps;
  if (ocultar.some(([a, b]) => s >= a && s < b)) return null;
  const i = PAGINAS.findIndex((p, n) => s >= p[0].inicio && s < (PAGINAS[n + 1]?.[0].inicio ?? Infinity));
  const pagina = PAGINAS[i];
  if (!pagina || s > pagina[pagina.length - 1].fin + 0.35) return null;
  const desdeInicio = s - pagina[0].inicio;
  return (
    <AbsoluteFill style={{ top: 1390, height: 260, alignItems: "center", justifyContent: "center", padding: "0 80px" }}>
      <div
        style={{
          textAlign: "center",
          fontFamily: F.titular,
          fontWeight: 800,
          fontSize: 104,
          lineHeight: 1,
          textTransform: "uppercase",
          scale: String(interpolate(desdeInicio, [0, 0.12], [0.85, 1], { ...clamp, easing: Easing.out(Easing.back(2)) })),
        }}
      >
        {pagina.map((p) => {
          const activa = s >= p.inicio && s < p.fin + 0.05;
          return (
            <span
              key={p.inicio}
              style={{
                display: "inline-block",
                margin: "0 0.12em",
                color: activa ? C.menta : C.texto,
                scale: activa ? "1.08" : "1",
                WebkitTextStroke: `10px ${C.profundo}`,
                paintOrder: "stroke fill",
                textShadow: `0 10px 28px rgba(0,0,0,0.75)`,
              }}
            >
              {p.texto}
            </span>
          );
        })}
      </div>
    </AbsoluteFill>
  );
};
