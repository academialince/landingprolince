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
}) => <div style={{ opacity: p, transform: `translateY(${(1 - p) * d}px)`, ...style }}>{children}</div>;

// ---------- Fondos ----------

/** Fondo `.tactico` de la web: casi negro con matiz verde y rejilla de mapa muy tenue que se desplaza. */
export const FondoTactico: React.FC<{ profundo?: boolean }> = ({ profundo }) => {
  const s = useCurrentFrame() / FPS;
  const paso = 120;
  return (
    <AbsoluteFill style={{ background: profundo ? C.profundo : C.fondo, overflow: "hidden" }}>
      <AbsoluteFill
        style={{
          backgroundImage: `linear-gradient(${C.primario}${profundo ? "10" : "0d"} 2px, transparent 2px), linear-gradient(90deg, ${C.primario}${profundo ? "10" : "0d"} 2px, transparent 2px)`,
          backgroundSize: `${paso}px ${paso}px`,
          backgroundPosition: `0 ${(s * 14) % paso}px`,
        }}
      />
      <div
        style={{
          position: "absolute",
          width: 1500,
          height: 1100,
          left: -260 + 90 * Math.sin(s * 0.5),
          top: -420 + 60 * Math.cos(s * 0.4),
          borderRadius: "50%",
          background: `radial-gradient(circle, ${C.primario}${profundo ? "30" : "1c"} 0%, transparent 62%)`,
        }}
      />
    </AbsoluteFill>
  );
};

/** Etiqueta superior de visor (mono, mayúsculas) con el punto «en directo» que parpadea. */
const EnDirecto: React.FC<{ texto?: string }> = ({ texto = "En directo" }) => {
  const frame = useCurrentFrame();
  // hud-parpadeo: 1,6 s, apagado el 40 % final.
  const encendido = (frame / FPS) % 1.6 < 0.96;
  return (
    <span
      style={{
        display: "inline-flex",
        alignItems: "center",
        gap: 12,
        padding: "8px 16px",
        borderRadius: 6,
        background: "rgba(0,0,0,0.85)",
        color: C.primario,
        fontFamily: F.hud,
        fontWeight: 700,
        fontSize: 26,
        letterSpacing: "0.14em",
        textTransform: "uppercase",
        whiteSpace: "nowrap",
      }}
    >
      <span style={{ width: 18, height: 18, borderRadius: 9, background: C.rec, opacity: encendido ? 1 : 0.2 }} />
      {texto}
    </span>
  );
};

/** Barra de rayas de precaución (.hud-rayas). */
export const Rayas: React.FC<{ ancho?: number; alto?: number }> = ({ ancho = 230, alto = 16 }) => (
  <div
    style={{
      width: ancho,
      height: alto,
      opacity: 0.85,
      background: `repeating-linear-gradient(-45deg, ${C.primario} 0 24px, transparent 24px 48px)`,
    }}
  />
);

/** Etiqueta del visor sobre una foto (arriba: objetivo + «en directo»). */
const CabeceraVisor: React.FC<{ etiqueta: string }> = ({ etiqueta }) => (
  <div
    style={{
      position: "absolute",
      left: 0,
      right: 0,
      top: 0,
      display: "flex",
      justifyContent: "space-between",
      alignItems: "center",
      gap: 20,
      padding: "34px 40px 90px",
      background: "linear-gradient(180deg, rgba(0,0,0,0.85), rgba(0,0,0,0.5) 50%, transparent)",
      color: "rgba(255,255,255,0.9)",
      ...T.eyebrow,
      fontSize: 22,
      letterSpacing: "0.14em",
    }}
  >
    <span>{etiqueta}</span>
    <EnDirecto />
  </div>
);

/** Foto a pantalla completa con zoom lento, el degradado `.hud-foto` y la cabecera de visor. */
export const FotoFondo: React.FC<{
  src: string;
  etiqueta: string;
  desde?: number;
  hasta?: number;
  origen?: string;
}> = ({ src, etiqueta, desde = 1.04, hasta = 1.16, origen = "50% 40%" }) => {
  const frame = useCurrentFrame();
  const { durationInFrames } = useVideoConfig();
  return (
    <AbsoluteFill style={{ overflow: "hidden", background: C.fotoFondo }}>
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
          background: `linear-gradient(180deg, transparent 38%, rgba(5,10,7,0.72) 60%, rgba(5,10,7,0.95) 82%, ${C.fotoFondo} 100%)`,
        }}
      />
      <CabeceraVisor etiqueta={etiqueta} />
    </AbsoluteFill>
  );
};

/**
 * Marco táctico (MarcoTactico de la web): foto con borde, esquinas en escuadra por fuera, etiqueta de objetivo,
 * «en directo», rayas de precaución y el pie con el dato destacado.
 */
export const FotoMarco: React.FC<{
  src: string;
  ancho: number;
  alto: number;
  etiqueta: string;
  pie: string;
  dato?: string;
  origen?: string;
  style?: React.CSSProperties;
}> = ({ src, ancho, alto, etiqueta, pie, dato, origen = "50% 35%", style }) => {
  const frame = useCurrentFrame();
  const { durationInFrames } = useVideoConfig();
  const brillo = interpolate(frame % 75, [10, 45], [-130, 130], clamp);
  const L = 70;
  const G = 4;
  const c = C.primario;
  const esquinas = `${[
    ["top left"],
    ["top left"],
    ["top right"],
    ["top right"],
    ["bottom left"],
    ["bottom left"],
    ["bottom right"],
    ["bottom right"],
  ]
    .map(([pos], i) => `linear-gradient(${c}, ${c}) ${pos} / ${i % 2 === 0 ? `${L}px ${G}px` : `${G}px ${L}px`}`)
    .join(", ")}`;
  return (
    <div style={{ position: "relative", width: ancho, height: alto, ...style }}>
      <div
        style={{
          position: "absolute",
          inset: -24,
          zIndex: 2,
          pointerEvents: "none",
          background: esquinas,
          backgroundRepeat: "no-repeat",
        }}
      />
      <div
        style={{
          position: "relative",
          width: "100%",
          height: "100%",
          overflow: "hidden",
          border: `2px solid ${C.bordeFuerte}`,
          background: C.fotoFondo,
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
        <AbsoluteFill
          style={{ background: "linear-gradient(180deg, transparent 50%, rgba(5,10,7,0.6) 72%, rgba(5,10,7,0.92) 100%)" }}
        />
        <div
          style={{
            position: "absolute",
            inset: 0,
            background: "linear-gradient(115deg, transparent 38%, rgb(255 255 255 / 0.1) 50%, transparent 62%)",
            transform: `translateX(${brillo}%)`,
          }}
        />
        <CabeceraVisor etiqueta={etiqueta} />
        <div style={{ position: "absolute", left: 0, right: 0, bottom: 0, padding: "0 40px 36px" }}>
          <Rayas />
          <div style={{ display: "flex", justifyContent: "space-between", alignItems: "flex-end", gap: 20, marginTop: 24 }}>
            <span style={{ ...T.displayL, fontSize: 96, lineHeight: 1, color: "#fff" }}>{pie}</span>
            {dato ? (
              <span
                style={{
                  padding: "8px 16px",
                  borderRadius: 6,
                  background: "rgba(0,0,0,0.85)",
                  color: C.primario,
                  ...T.eyebrow,
                  fontSize: 28,
                  letterSpacing: "0.14em",
                }}
              >
                {dato}
              </span>
            ) : null}
          </div>
        </div>
      </div>
    </div>
  );
};

/** Etiqueta de visor suelta («// CÓMO ENTRENAS»): mono, verde, con el prefijo `// ` atenuado. */
export const Eyebrow: React.FC<{ children: React.ReactNode; color?: string }> = ({ children, color = C.primario }) => (
  <p style={{ ...T.eyebrow, margin: 0, color }}>
    <span style={{ opacity: 0.6 }}>{"// "}</span>
    {children}
  </p>
);

/** Chip de la web: píldora con el fondo suave de marca (o el verde sólido). */
export const Pildora: React.FC<{ children: React.ReactNode; fuerte?: boolean }> = ({ children, fuerte }) => (
  <span
    style={{
      ...T.eyebrow,
      display: "inline-block",
      padding: "12px 28px",
      borderRadius: 999,
      background: fuerte ? C.primario : C.suave,
      color: fuerte ? C.primarioFg : C.suaveTexto,
    }}
  >
    {children}
  </span>
);

/** Botón en ángulo (.cta-button del tema táctico): esquinas cortadas, Barlow en mayúsculas. */
export const Boton: React.FC<{ children: React.ReactNode; claro?: boolean; style?: React.CSSProperties }> = ({
  children,
  claro,
  style,
}) => (
  <span
    style={{
      display: "inline-flex",
      alignItems: "center",
      gap: 20,
      padding: "34px 62px",
      background: claro ? "#ffffff" : C.primario,
      color: claro ? C.profundo : C.primarioFg,
      fontFamily: F.titular,
      fontWeight: 800,
      fontSize: 64,
      letterSpacing: "0.06em",
      textTransform: "uppercase",
      whiteSpace: "nowrap",
      clipPath: "polygon(30px 0, 100% 0, 100% calc(100% - 30px), calc(100% - 30px) 100%, 0 100%, 0 30px)",
      ...style,
    }}
  >
    {children}
  </span>
);

/** Tarjeta de la web: superficie, borde fino, esquinas casi rectas, icono en cuadrado verde oscuro. */
export const Tarjeta: React.FC<{
  Icono: LucideIcon;
  titulo: string;
  detalle?: string;
  compacta?: boolean;
  style?: React.CSSProperties;
}> = ({ Icono, titulo, detalle, compacta, style }) => (
  <div
    style={{
      borderRadius: 10,
      border: `2px solid ${C.borde}`,
      background: C.superficie,
      padding: compacta ? "34px 44px" : "46px 50px",
      ...style,
    }}
  >
    <span
      style={{
        display: "inline-flex",
        width: compacta ? 88 : 104,
        height: compacta ? 88 : 104,
        borderRadius: 8,
        alignItems: "center",
        justifyContent: "center",
        background: C.suave,
        color: C.suaveTexto,
      }}
    >
      <Icono size={compacta ? 44 : 52} strokeWidth={2} />
    </span>
    <h3 style={{ ...T.h3, fontSize: compacta ? 58 : 66, margin: compacta ? "22px 0 0" : "30px 0 0", color: C.texto }}>{titulo}</h3>
    {detalle ? <p style={{ ...T.cuerpo, fontSize: compacta ? 34 : 38, margin: "10px 0 0", color: C.apagado }}>{detalle}</p> : null}
  </div>
);

/** Logo oficial de public/brand, versión para fondo oscuro (la que usa la web en modo oscuro). */
export const Logo: React.FC<{ ancho: number; style?: React.CSSProperties }> = ({ ancho, style }) => (
  <Img
    src={staticFile("uco/prolince-logo-horizontal-negativo.svg")}
    style={{ width: ancho, height: (ancho * 1252) / 4347, ...style }}
  />
);

/** Entrada de cada escena: empuje rápido con desenfoque y, después, un acercamiento lento y continuo. */
export const Entrada: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  const frame = useCurrentFrame();
  const { durationInFrames } = useVideoConfig();
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

/** Barrido en ángulo que tapa el corte: verde táctico con borde de rayas de precaución. */
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
          width: "62%",
          transform: "skewX(-14deg)",
          background: `linear-gradient(90deg, transparent, ${C.primario} 28%, ${C.primario} 72%, transparent)`,
          opacity: 0.95,
        }}
      />
      <div
        style={{
          position: "absolute",
          top: "-20%",
          bottom: "-20%",
          left: `${x + 14}%`,
          width: "5%",
          transform: "skewX(-14deg)",
          background: C.profundo,
          opacity: 0.9,
        }}
      />
    </AbsoluteFill>
  );
};

// ---------- Subtítulos tipo karaoke ----------

type Linea = { palabras: Palabra[]; inicio: number; fin: number };

/** Agrupa la locución en líneas cortas: corta tras puntuación o al pasar de ~22 caracteres. */
export const agruparLineas = (palabras: Palabra[]): Linea[] => {
  const out: Linea[] = [];
  let actual: Palabra[] = [];
  const cerrar = () => {
    if (!actual.length) return;
    out.push({ palabras: actual, inicio: actual[0].inicio, fin: actual[actual.length - 1].fin });
    actual = [];
  };
  for (const p of palabras) {
    actual.push(p);
    const largo = actual.map((w) => w.texto).join(" ").length;
    if (/[.,:…]$/.test(p.texto) || largo > 22) cerrar();
  }
  cerrar();
  return out;
};

const DESTACADAS_UCO = new Set([
  "uco", "examen", "policía", "judicial", "dos", "mil", "activo", "ilimitados", "simulacros", "repaso", "errores",
  "ranking", "móvil", "turnos", "ochenta", "nueve", "euros", "cuotas", "renovaciones",
]);
const LINEAS_UCO = agruparLineas(PALABRAS);
const limpia = (t: string) => t.toLowerCase().replace(/[^\p{L}\p{N}]/gu, "");

/** Subtítulos como etiqueta de visor: rectángulo casi negro, Barlow Condensed en mayúsculas, palabra clave en verde táctico. */
export const Subtitulos: React.FC<{
  ocultar: [number, number][];
  abajo?: number;
  lineas?: Linea[];
  destacadas?: Set<string>;
  acento?: string;
}> = ({ ocultar, abajo = 130, lineas = LINEAS_UCO, destacadas = DESTACADAS_UCO, acento = C.primario }) => {
  const frame = useCurrentFrame();
  const t = frame / FPS;
  if (ocultar.some(([a, b]) => t >= a && t < b)) return null;
  const linea = lineas.find((l, i) => t >= l.inicio - 0.05 && t < (lineas[i + 1]?.inicio ?? l.fin + 0.4) - 0.05);
  if (!linea || t > linea.fin + 0.4) return null;
  const pop = interpolate(t, [linea.inicio - 0.05, linea.inicio + 0.1], [0.88, 1], clamp);
  return (
    <AbsoluteFill style={{ justifyContent: "flex-end", alignItems: "center", paddingBottom: abajo, pointerEvents: "none" }}>
      <div
        style={{
          scale: String(pop),
          maxWidth: 960,
          padding: "12px 30px 16px",
          borderRadius: 8,
          background: "rgba(0,0,0,0.88)",
          border: `2px solid ${C.bordeFuerte}`,
          fontFamily: F.titular,
          fontWeight: 800,
          fontSize: 68,
          letterSpacing: "0.01em",
          lineHeight: 1.05,
          textTransform: "uppercase",
          textAlign: "center",
          color: "#ffffff",
        }}
      >
        {linea.palabras.map((w, i) => {
          const activa = t >= w.inicio - 0.03;
          const color = activa && destacadas.has(limpia(w.texto)) ? acento : activa ? "#ffffff" : "rgba(255,255,255,0.4)";
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
