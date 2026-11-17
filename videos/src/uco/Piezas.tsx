import type { LucideIcon } from "lucide-react";
import {
  AbsoluteFill,
  Easing,
  Img,
  interpolate,
  spring,
  staticFile,
  useCurrentFrame,
  useVideoConfig,
} from "remotion";
import { PALABRAS, type Palabra } from "./palabras";
import { C, EASE, F, FPS, T, clamp } from "./tokens";

const ease = Easing.bezier(...EASE);

/** Progreso 0→1 de una entrada que empieza en el segundo absoluto `en` (la escena empezó en `inicio`). */
export const useEntrada = (inicio: number, en: number, duracion = 0.5) => {
  const frame = useCurrentFrame();
  const desde = (en - inicio) * FPS;
  return interpolate(frame, [desde, desde + duracion * FPS], [0, 1], { ...clamp, easing: ease });
};

/** Muelle para «pops» (cifras, insignias). */
export const usePop = (inicio: number, en: number) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  return spring({ frame: frame - (en - inicio) * fps, fps, config: { damping: 11, stiffness: 160, mass: 0.7 } });
};

/** Sube y aparece, como los <Reveal> de la web pero más rápido. */
export const Sube: React.FC<{ p: number; children: React.ReactNode; d?: number; style?: React.CSSProperties }> = ({
  p,
  children,
  d = 60,
  style,
}) => (
  <div style={{ opacity: p, transform: `translateY(${(1 - p) * d}px)`, ...style }}>{children}</div>
);

/** Fondo de la web: blanco con el degradado radial menta de la cabecera del curso. */
export const FondoWeb: React.FC<{ tintado?: boolean }> = ({ tintado }) => {
  const s = useCurrentFrame() / FPS;
  return (
    <AbsoluteFill style={{ background: tintado ? C.sutil : C.fondo }}>
      <AbsoluteFill
        style={{
          background: `radial-gradient(90% 60% at ${20 + 6 * Math.sin(s * 0.6)}% -8%, ${C.suave} 0%, transparent 62%)`,
        }}
      />
    </AbsoluteFill>
  );
};

/** Fondo verde profundo de la banda de cierre de la web. */
export const FondoProfundo: React.FC = () => {
  const s = useCurrentFrame() / FPS;
  return (
    <AbsoluteFill style={{ background: C.profundo }}>
      <AbsoluteFill
        style={{
          background: `radial-gradient(70% 45% at 50% ${38 + 4 * Math.sin(s * 0.8)}%, ${C.primario} 0%, transparent 70%)`,
          opacity: 0.9,
        }}
      />
    </AbsoluteFill>
  );
};

/** Foto a pantalla completa con zoom lento (Ken Burns) y velo verde profundo abajo. */
export const FotoFondo: React.FC<{ src: string; desde?: number; hasta?: number; velo?: number; origen?: string }> = ({
  src,
  desde = 1.04,
  hasta = 1.16,
  velo = 0.75,
  origen = "50% 40%",
}) => {
  const frame = useCurrentFrame();
  const { durationInFrames } = useVideoConfig();
  return (
    <AbsoluteFill style={{ overflow: "hidden", background: C.profundo }}>
      <Img
        src={staticFile(src)}
        style={{
          width: "100%",
          height: "100%",
          objectFit: "cover",
          transformOrigin: origen,
          scale: String(interpolate(frame, [0, durationInFrames], [desde, hasta])),
        }}
      />
      <AbsoluteFill
        style={{
          background: `linear-gradient(180deg, ${C.profundo}66 0%, transparent 28%, transparent 45%, ${C.profundo}${Math.round(
            velo * 255,
          )
            .toString(16)
            .padStart(2, "0")} 78%, ${C.profundo} 100%)`,
        }}
      />
    </AbsoluteFill>
  );
};

/** Foto en el marco de la web: esquinas de 2xl, borde fino, sombra verde y el reflejo que cruza. */
export const FotoMarco: React.FC<{ src: string; ancho: number; alto: number; origen?: string; style?: React.CSSProperties }> = ({
  src,
  ancho,
  alto,
  origen = "50% 38%",
  style,
}) => {
  const frame = useCurrentFrame();
  const { durationInFrames } = useVideoConfig();
  const brillo = interpolate(frame % 75, [10, 45], [-130, 130], clamp);
  return (
    <div
      style={{
        position: "relative",
        width: ancho,
        height: alto,
        overflow: "hidden",
        borderRadius: 40,
        border: `2px solid ${C.borde}`,
        boxShadow: "0 56px 120px -48px rgba(2,67,52,0.45)",
        ...style,
      }}
    >
      <Img
        src={staticFile(src)}
        style={{
          width: "100%",
          height: "100%",
          objectFit: "cover",
          objectPosition: origen,
          scale: String(interpolate(frame, [0, durationInFrames], [1.02, 1.12])),
        }}
      />
      <div
        style={{
          position: "absolute",
          inset: 0,
          background: "linear-gradient(115deg, transparent 38%, rgb(255 255 255 / 0.16) 50%, transparent 62%)",
          transform: `translateX(${brillo}%)`,
        }}
      />
    </div>
  );
};

/** Etiqueta de mira en JetBrains Mono («OBJ · UCO»), con esquinas de visor. */
export const Hud: React.FC<{ texto: string; oscuro?: boolean; p?: number }> = ({ texto, oscuro, p = 1 }) => {
  const color = oscuro ? "#ffffff" : C.primario;
  const esquina = (pos: React.CSSProperties): React.CSSProperties => ({
    position: "absolute",
    width: 18,
    height: 18,
    borderColor: oscuro ? C.menta : C.primario,
    borderStyle: "solid",
    borderWidth: 0,
    ...pos,
  });
  return (
    <div
      style={{
        position: "relative",
        display: "inline-block",
        padding: "14px 26px",
        fontFamily: F.hud,
        fontWeight: 700,
        fontSize: 30,
        letterSpacing: "0.12em",
        color,
        background: oscuro ? "rgba(0,42,21,0.55)" : "rgba(255,255,255,0.85)",
        opacity: p,
        clipPath: `inset(0 ${(1 - p) * 100}% 0 0)`,
      }}
    >
      <span style={esquina({ top: 0, left: 0, borderTopWidth: 4, borderLeftWidth: 4 })} />
      <span style={esquina({ top: 0, right: 0, borderTopWidth: 4, borderRightWidth: 4 })} />
      <span style={esquina({ bottom: 0, left: 0, borderBottomWidth: 4, borderLeftWidth: 4 })} />
      <span style={esquina({ bottom: 0, right: 0, borderBottomWidth: 4, borderRightWidth: 4 })} />
      {texto}
    </div>
  );
};

/** Eyebrow verde en mayúsculas de la web. */
export const Eyebrow: React.FC<{ children: React.ReactNode; color?: string }> = ({ children, color = C.primario }) => (
  <p style={{ ...T.eyebrow, margin: 0, color, fontFamily: F.texto }}>{children}</p>
);

/** Píldora menta (rounded-full bg-primary-soft). */
export const Pildora: React.FC<{ children: React.ReactNode; fuerte?: boolean }> = ({ children, fuerte }) => (
  <span
    style={{
      ...T.eyebrow,
      display: "inline-block",
      fontFamily: F.texto,
      padding: "12px 26px",
      borderRadius: 999,
      background: fuerte ? C.primario : C.suave,
      color: fuerte ? "#ffffff" : C.suaveTexto,
    }}
  >
    {children}
  </span>
);

/** Tarjeta de ventaja de la web: borde, fondo blanco, icono en cuadrado menta, h3 y texto. */
export const Tarjeta: React.FC<{ Icono: LucideIcon; titulo: string; detalle?: string; style?: React.CSSProperties }> = ({
  Icono,
  titulo,
  detalle,
  style,
}) => (
  <div
    style={{
      borderRadius: 28,
      border: `2px solid ${C.borde}`,
      background: "#ffffff",
      padding: "40px 44px",
      boxShadow: "0 24px 60px -36px rgba(2,67,52,0.35)",
      fontFamily: F.texto,
      ...style,
    }}
  >
    <span
      style={{
        display: "inline-flex",
        width: 88,
        height: 88,
        borderRadius: 20,
        alignItems: "center",
        justifyContent: "center",
        background: C.suave,
        color: C.suaveTexto,
      }}
    >
      <Icono size={44} strokeWidth={2} />
    </span>
    <h3 style={{ ...T.h3, margin: "28px 0 0", color: C.texto }}>{titulo}</h3>
    {detalle ? <p style={{ ...T.cuerpo, fontSize: 34, margin: "10px 0 0", color: C.apagado }}>{detalle}</p> : null}
  </div>
);

/** Logo oficial de public/brand (compuesto tal cual, sin redibujar). */
export const Logo: React.FC<{ negativo?: boolean; ancho: number; style?: React.CSSProperties }> = ({
  negativo,
  ancho,
  style,
}) => (
  <Img
    src={staticFile(negativo ? "uco/prolince-logo-horizontal-negativo.svg" : "uco/prolince-logo-horizontal.svg")}
    style={{ width: ancho, height: (ancho * 1252) / 4347, ...style }}
  />
);

/** Entrada de cada escena: empuje rápido con desenfoque, como un corte de cámara. */
export const Entrada: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  const frame = useCurrentFrame();
  const { durationInFrames } = useVideoConfig();
  // Empuje de entrada y, después, un acercamiento lento y continuo para que ningún plano quede quieto.
  const empuje = interpolate(frame, [0, 9], [1.1, 1], { ...clamp, easing: Easing.out(Easing.cubic) });
  const deriva = interpolate(frame, [0, durationInFrames], [1, 1.035], clamp);
  return (
    <AbsoluteFill
      style={{
        scale: String(empuje * deriva),
        filter: `blur(${interpolate(frame, [0, 6], [16, 0], clamp)}px)`,
        opacity: interpolate(frame, [0, 3], [0, 1], clamp),
      }}
    >
      {children}
    </AbsoluteFill>
  );
};

/** Barrido verde que tapa el corte (wipe diagonal de la marca). */
export const Barrido: React.FC = () => {
  const frame = useCurrentFrame();
  const x = interpolate(frame, [0, 10], [-120, 120], { ...clamp, easing: Easing.inOut(Easing.cubic) });
  return (
    <AbsoluteFill style={{ pointerEvents: "none", overflow: "hidden" }}>
      <div
        style={{
          position: "absolute",
          top: "-20%",
          bottom: "-20%",
          left: `${x}%`,
          width: "70%",
          transform: "skewX(-14deg)",
          background: `linear-gradient(90deg, transparent, ${C.acento} 30%, ${C.primario} 50%, ${C.acento} 70%, transparent)`,
          opacity: 0.95,
        }}
      />
    </AbsoluteFill>
  );
};

// ---------- Subtítulos tipo karaoke ----------

type Linea = { palabras: Palabra[]; inicio: number; fin: number };

/** Agrupa la locución en líneas cortas: corta tras puntuación o al pasar de ~18 caracteres. */
const LINEAS: Linea[] = (() => {
  const out: Linea[] = [];
  let actual: Palabra[] = [];
  const cerrar = () => {
    if (!actual.length) return;
    out.push({ palabras: actual, inicio: actual[0].inicio, fin: actual[actual.length - 1].fin });
    actual = [];
  };
  for (const p of PALABRAS) {
    actual.push(p);
    const largo = actual.map((w) => w.texto).join(" ").length;
    if (/[.,:…]$/.test(p.texto) || largo > 18) cerrar();
  }
  cerrar();
  return out;
})();

const DESTACADAS = new Set([
  "uco", "examen", "policía", "judicial", "dos", "mil", "activo", "ilimitados", "simulacros", "repaso", "errores",
  "ranking", "móvil", "turnos", "ochenta", "nueve", "euros", "cuotas", "renovaciones",
]);
const limpia = (t: string) => t.toLowerCase().replace(/[^\p{L}\p{N}]/gu, "");

export const Subtitulos: React.FC<{ ocultar: [number, number][]; abajo?: number }> = ({ ocultar, abajo = 300 }) => {
  const frame = useCurrentFrame();
  const t = frame / FPS;
  if (ocultar.some(([a, b]) => t >= a && t < b)) return null;
  const linea = LINEAS.find((l, i) => t >= l.inicio - 0.05 && t < (LINEAS[i + 1]?.inicio ?? l.fin + 0.4) - 0.05);
  if (!linea || t > linea.fin + 0.4) return null;
  const pop = interpolate(t, [linea.inicio - 0.05, linea.inicio + 0.1], [0.85, 1], clamp);
  return (
    <AbsoluteFill style={{ justifyContent: "flex-end", alignItems: "center", paddingBottom: abajo, pointerEvents: "none" }}>
      <div
        style={{
          scale: String(pop),
          maxWidth: 900,
          padding: "18px 34px",
          borderRadius: 22,
          background: C.profundo,
          boxShadow: "0 20px 50px -20px rgba(0,0,0,0.5)",
          fontFamily: F.texto,
          fontWeight: 800,
          fontSize: 58,
          letterSpacing: "-0.02em",
          lineHeight: 1.15,
          textAlign: "center",
          color: "#ffffff",
        }}
      >
        {linea.palabras.map((w, i) => {
          const activa = t >= w.inicio - 0.03;
          const color = activa && DESTACADAS.has(limpia(w.texto)) ? C.menta : activa ? "#ffffff" : "rgba(255,255,255,0.45)";
          return (
            <span key={i} style={{ color }}>
              {w.texto}
              {i < linea.palabras.length - 1 ? " " : ""}
            </span>
          );
        })}
      </div>
    </AbsoluteFill>
  );
};
