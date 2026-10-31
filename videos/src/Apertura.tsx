import "@fontsource-variable/big-shoulders-display";
import "@fontsource-variable/manrope";
import {
  Bell,
  BookOpen,
  CalendarClock,
  ClipboardCheck,
  Infinity as Infinito,
  ListTree,
  RotateCcw,
  Sparkles,
} from "lucide-react";
import {
  AbsoluteFill,
  Easing,
  Freeze,
  Img,
  interpolate,
  Sequence,
  spring,
  staticFile,
  useCurrentFrame,
  useVideoConfig,
} from "remotion";
import { z } from "zod";

// Paleta de la pieza «OBJ-00 · Apertura» de redes (verde bosque, dorado y crema).
const A = {
  verdeArriba: "#0f4c38",
  verdeAbajo: "#06281e",
  dorado: "#c9a24e",
  doradoClaro: "#e3c06c",
  crema: "#f5f0e6",
  texto: "#e4ded2",
  cobre: "#c2552b",
  corazon: "#4fcf74",
};

const display = "'Big Shoulders Display Variable', 'Big Shoulders Display', sans-serif";
const texto = "'Manrope Variable', Manrope, sans-serif";

const ICONOS = {
  infinito: Infinito,
  repetir: RotateCcw,
  historico: CalendarClock,
  simulacro: ClipboardCheck,
  esquema: ListTree,
  temario: BookOpen,
};

export const aperturaSchema = z.object({
  etiqueta: z.string(),
  linea1: z.string(),
  linea2: z.string(),
  descripcion: z.string(),
  llamada: z.string(),
  etiquetaVentajas: z.string(),
  tituloVentajas1: z.string(),
  tituloVentajas2: z.string(),
  ventajas: z
    .array(z.object({ icono: z.enum(["infinito", "repetir", "historico", "simulacro", "esquema", "temario"]), texto: z.string() }))
    .min(1)
    .max(6),
  novedades: z.string(),
  despedida1: z.string(),
  despedida2: z.string(),
  usuario: z.string(),
});

type Props = z.infer<typeof aperturaSchema>;

// Escenas, en segundos: portada con el logo, anuncio, ventajas y final «Te esperamos».
const INICIO_ANUNCIO = 2.1;
const DUR_ANUNCIO = 6.2;
const INICIO_VENTAJAS = INICIO_ANUNCIO + DUR_ANUNCIO;
const DUR_VENTAJAS = 6.4;
const INICIO_FINAL = INICIO_VENTAJAS + DUR_VENTAJAS;
const DUR_FINAL = 3.8;
export const DURACION_APERTURA = INICIO_FINAL + DUR_FINAL;
// El primer fotograma es la portada ya montada (lo que Instagram enseña mientras carga la story);
// después arranca la animación desde cero.
export const FRAMES_PORTADA = 1;
export const framesApertura = (fps: number) => FRAMES_PORTADA + Math.round(DURACION_APERTURA * fps);

// Franjas que tapa Instagram en Stories.
const SEGURO_ARRIBA = 250;
const SEGURO_ABAJO = 340;

// Logo del pie: allí aterriza el logo de la portada y de allí despega en el final.
const LOGO_PIE = { left: 84, top: 1920 - SEGURO_ABAJO - 112, tam: 112 };
const VUELO_LOGO = 0.7;
// Hueco que deja el pie a las escenas centrales.
const ALTO_PIE = 112 + 60;

const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;
const salida = Easing.bezier(0.16, 1, 0.3, 1);
const vuelo = Easing.bezier(0.65, 0, 0.35, 1);

/** Titular letra a letra: cada una sube desde detrás de una máscara. */
const LineaTitular: React.FC<{ texto: string; desde: number; color: string; tam: number; centrar?: boolean }> = ({
  texto: linea,
  desde,
  color,
  tam,
  centrar,
}) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  return (
    <div
      style={{
        display: "flex",
        justifyContent: centrar ? "center" : undefined,
        overflow: "hidden",
        paddingTop: tam * 0.18,
        marginTop: -tam * 0.18,
      }}
    >
      {[...linea].map((letra, i) => {
        const p = spring({ frame: frame - desde - i * 2, fps, config: { damping: 15, stiffness: 140 } });
        // El punto final cae el último y rebota.
        const esPunto = letra === "." && i === linea.length - 1;
        const pPunto = spring({ frame: frame - desde - linea.length * 2 - 6, fps, config: { damping: 8 } });
        return (
          <span
            key={i}
            style={{
              display: "inline-block",
              whiteSpace: "pre",
              color,
              fontFamily: display,
              fontSize: tam,
              fontWeight: 900,
              lineHeight: 0.86,
              letterSpacing: "-0.01em",
              // En px y no en %: la caja de la letra es más baja que la «Ñ» y la virgulilla asomaría.
              translate: esPunto ? `0 ${(1 - pPunto) * -tam}px` : `0 ${(1 - p) * tam * 1.3}px`,
              scale: esPunto ? `${0.4 + pPunto * 0.6}` : undefined,
              opacity: esPunto ? Math.min(1, pPunto * 2) : 1,
            }}
          >
            {letra}
          </span>
        );
      })}
    </div>
  );
};

/** Etiqueta con borde dorado, como «OBJ-00 · APERTURA». */
const Etiqueta: React.FC<{ texto: string; p: number }> = ({ texto: contenido, p }) => (
  <div
    style={{
      alignSelf: "flex-start",
      border: `3px solid ${A.dorado}`,
      borderRadius: 999,
      padding: "14px 30px",
      color: A.doradoClaro,
      fontSize: 36,
      fontWeight: 700,
      letterSpacing: "0.02em",
      opacity: p,
      scale: `${0.8 + p * 0.2}`,
      transformOrigin: "left center",
    }}
  >
    {contenido}
  </div>
);

/** Columna de contenido dentro de la zona segura y por encima del pie; sale hacia arriba al final. */
const Columna: React.FC<{ fuera: number; children: React.ReactNode }> = ({ fuera, children }) => (
  <div
    style={{
      position: "absolute",
      top: SEGURO_ARRIBA + 30,
      bottom: SEGURO_ABAJO + ALTO_PIE,
      left: 84,
      right: 84,
      display: "flex",
      flexDirection: "column",
      opacity: 1 - fuera,
      translate: `0 ${-fuera * 80}px`,
    }}
  >
    {children}
  </div>
);

const CORAZON = "M12 21s-7.5-4.6-10-9.2C.3 8.4 2.3 4 6.4 4c2.3 0 3.8 1.3 5.6 3.4C13.8 5.3 15.3 4 17.6 4 21.7 4 23.7 8.4 22 11.8 19.5 16.4 12 21 12 21z";

const Corazon: React.FC<{ tam: number; style?: React.CSSProperties }> = ({ tam, style }) => (
  <svg width={tam} height={tam} viewBox="0 0 24 24" style={style}>
    <path d={CORAZON} fill={A.corazon} />
    <path d="M6.2 7.2c-1.4.2-2.3 1.4-2.2 2.8" stroke="#ffffff88" strokeWidth={1.2} strokeLinecap="round" fill="none" />
  </svg>
);

/** Portada: el logo entra con un aro dorado y el nombre; luego vuela al pie. */
const Portada: React.FC = () => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  const pLogo = spring({ frame, fps, config: { damping: 13, stiffness: 120 } });
  const pAro = interpolate(frame, [f(0.2), f(1.2)], [0, 1], { ...clamp, easing: salida });
  const pNombre = spring({ frame: frame - f(0.5), fps, config: { damping: 200 } });
  const pLema = spring({ frame: frame - f(0.85), fps, config: { damping: 200 } });
  const pSalida = interpolate(frame, [f(INICIO_ANUNCIO - 0.15), f(INICIO_ANUNCIO + 0.25)], [0, 1], { ...clamp, easing: salida });
  const pVuelo = interpolate(frame, [f(INICIO_ANUNCIO), f(INICIO_ANUNCIO + VUELO_LOGO)], [0, 1], { ...clamp, easing: vuelo });
  if (pVuelo >= 1) return null;

  const tam = interpolate(pVuelo, [0, 1], [400, LOGO_PIE.tam]);
  const latido = 1 + Math.sin((frame / fps) * Math.PI * 1.6) * 0.015 * (1 - pSalida);

  return (
    <AbsoluteFill>
      {/* Aros dorados: uno se dibuja y el discontinuo gira */}
      <svg
        width={600}
        height={600}
        style={{ position: "absolute", left: 240, top: 460, opacity: 1 - pSalida, scale: `${1 + pSalida * 0.3}` }}
      >
        <circle
          cx={300}
          cy={300}
          r={238}
          fill="none"
          stroke={A.dorado}
          strokeWidth={5}
          strokeLinecap="round"
          strokeDasharray={2 * Math.PI * 238}
          strokeDashoffset={2 * Math.PI * 238 * (1 - pAro)}
          transform="rotate(-90 300 300)"
        />
        <circle
          cx={300}
          cy={300}
          r={272}
          fill="none"
          stroke={A.dorado}
          strokeOpacity={0.45}
          strokeWidth={3}
          strokeDasharray="10 16"
          transform={`rotate(${frame * 0.5} 300 300)`}
          opacity={pAro}
        />
      </svg>
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          position: "absolute",
          left: interpolate(pVuelo, [0, 1], [540 - 200, LOGO_PIE.left]),
          top: interpolate(pVuelo, [0, 1], [760 - 200, LOGO_PIE.top]),
          width: tam,
          height: tam,
          opacity: Math.min(1, pLogo * 1.5),
          scale: `${(0.5 + pLogo * 0.5) * latido}`,
          rotate: `${(1 - pLogo) * -60}deg`,
          filter: "drop-shadow(0 30px 60px #00000055)",
        }}
      />
      <div
        style={{
          position: "absolute",
          top: 1100,
          left: 0,
          right: 0,
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          opacity: 1 - pSalida,
          translate: `0 ${pSalida * 60}px`,
        }}
      >
        <div style={{ overflow: "hidden" }}>
          <div
            style={{
              fontFamily: display,
              fontWeight: 900,
              fontSize: 190,
              lineHeight: 0.9,
              color: A.crema,
              translate: `0 ${(1 - pNombre) * 100}%`,
            }}
          >
            PROLINCE
          </div>
        </div>
        <div
          style={{
            marginTop: 14,
            fontSize: 52,
            fontWeight: 700,
            letterSpacing: `${0.2 + pNombre * 0.22}em`,
            marginRight: "-0.42em",
            color: A.dorado,
            opacity: pNombre,
          }}
        >
          ACADEMIA
        </div>
        <div style={{ marginTop: 56, width: 520 * pLema, height: 3, background: A.dorado, opacity: 0.6 }} />
        <div style={{ marginTop: 34, fontSize: 36, fontWeight: 600, color: A.texto, opacity: pLema }}>
          Guardia Civil · Guardias Jóvenes
        </div>
      </div>
    </AbsoluteFill>
  );
};

/** «Mañana abrimos»: su fotograma 0 es el final de la portada. */
const Anuncio: React.FC<Props> = ({ etiqueta, linea1, linea2, descripcion, llamada }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  const entrada = (desde: number, damping = 200) => spring({ frame: frame - f(desde), fps, config: { damping } });

  const pDescripcion = entrada(2.3);
  const pLlamada = entrada(3.4, 14);
  const fuera = interpolate(frame, [f(DUR_ANUNCIO - 0.45), f(DUR_ANUNCIO)], [0, 1], { ...clamp, easing: Easing.in(Easing.cubic) });
  // La campana suena dos veces.
  const campana = (inicio: number) =>
    frame < f(inicio) ? 0 : interpolate(frame, [f(inicio), f(inicio + 1)], [1, 0], clamp) * Math.sin((frame - f(inicio)) / 2.2) * 22;
  const giroCampana = campana(3.7) + campana(5);
  // Brillo que cruza «ABRIMOS.» una vez colocado.
  const brillo = interpolate(frame, [f(4.4), f(5.6)], [-30, 130], { ...clamp, easing: Easing.inOut(Easing.quad) });

  return (
    <Columna fuera={fuera}>
      <Etiqueta texto={etiqueta} p={entrada(0.3, 14)} />

      <div style={{ marginTop: 100, position: "relative" }}>
        <LineaTitular texto={linea1} desde={f(0.7)} color={A.crema} tam={248} />
        <div style={{ position: "relative", marginTop: 6 }}>
          <LineaTitular texto={linea2} desde={f(1.2)} color={A.dorado} tam={248} />
          <div
            style={{
              position: "absolute",
              inset: 0,
              background: `linear-gradient(105deg, transparent ${brillo - 12}%, #fff6dc99 ${brillo}%, transparent ${brillo + 12}%)`,
              mixBlendMode: "overlay",
              pointerEvents: "none",
            }}
          />
        </div>
      </div>

      <div
        style={{
          marginTop: 56,
          fontSize: 46,
          lineHeight: 1.36,
          fontWeight: 500,
          color: A.texto,
          opacity: pDescripcion,
          translate: `0 ${(1 - pDescripcion) * 40}px`,
        }}
      >
        {descripcion}
      </div>

      <div
        style={{
          marginTop: 48,
          display: "flex",
          alignItems: "center",
          gap: 22,
          color: A.doradoClaro,
          fontSize: 46,
          fontWeight: 800,
          lineHeight: 1.2,
          opacity: pLlamada,
          translate: `${(1 - pLlamada) * -60}px 0`,
        }}
      >
        <Bell size={58} strokeWidth={2.6} style={{ flexShrink: 0, rotate: `${giroCampana}deg`, transformOrigin: "50% 8%" }} />
        {llamada}
      </div>
    </Columna>
  );
};

/** Lo que ofrece la plataforma, punto a punto. */
const Ventajas: React.FC<Props> = ({ etiquetaVentajas, tituloVentajas1, tituloVentajas2, ventajas, novedades }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  const entrada = (desde: number, damping = 200) => spring({ frame: frame - f(desde), fps, config: { damping } });
  const fuera = interpolate(frame, [f(DUR_VENTAJAS - 0.45), f(DUR_VENTAJAS)], [0, 1], { ...clamp, easing: Easing.in(Easing.cubic) });
  const T_PUNTOS = 1.1;
  const PASO = 0.38;
  const pNovedades = entrada(T_PUNTOS + ventajas.length * PASO + 0.25, 14);

  return (
    <Columna fuera={fuera}>
      <Etiqueta texto={etiquetaVentajas} p={entrada(0.1, 14)} />

      <div style={{ marginTop: 56 }}>
        <LineaTitular texto={tituloVentajas1} desde={f(0.25)} color={A.crema} tam={150} />
        <div style={{ marginTop: 4 }}>
          <LineaTitular texto={tituloVentajas2} desde={f(0.5)} color={A.dorado} tam={150} />
        </div>
      </div>

      <div style={{ marginTop: 44, display: "flex", flexDirection: "column", gap: 16 }}>
        {ventajas.map((v, i) => {
          const p = entrada(T_PUNTOS + i * PASO, 16);
          const Icono = ICONOS[v.icono];
          return (
            <div
              key={i}
              style={{
                display: "flex",
                alignItems: "center",
                gap: 28,
                opacity: p,
                translate: `${(1 - p) * 120}px 0`,
              }}
            >
              <span
                style={{
                  flexShrink: 0,
                  width: 88,
                  height: 88,
                  borderRadius: 26,
                  border: `3px solid ${A.dorado}`,
                  background: "#c9a24e1f",
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "center",
                  color: A.doradoClaro,
                  scale: `${0.6 + p * 0.4}`,
                }}
              >
                <Icono size={46} strokeWidth={2.4} />
              </span>
              <span style={{ fontSize: 46, fontWeight: 700, lineHeight: 1.2, color: A.crema }}>{v.texto}</span>
            </div>
          );
        })}
      </div>

      <div
        style={{
          marginTop: 40,
          display: "flex",
          alignItems: "center",
          gap: 18,
          color: A.doradoClaro,
          fontSize: 44,
          fontWeight: 800,
          opacity: pNovedades,
          translate: `0 ${(1 - pNovedades) * 30}px`,
        }}
      >
        <Sparkles size={48} strokeWidth={2.4} style={{ flexShrink: 0, rotate: `${Math.sin(frame / 6) * 10}deg` }} />
        {novedades}
      </div>
    </Columna>
  );
};

/** Pie fijo durante el anuncio y las ventajas: logo, marca y usuario. */
const Pie: React.FC<{ usuario: string }> = ({ usuario }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  const p =
    spring({ frame: frame - f(INICIO_ANUNCIO + 0.5), fps, config: { damping: 200 } }) *
    interpolate(frame, [f(INICIO_FINAL - 0.2), f(INICIO_FINAL + 0.2)], [1, 0], clamp);
  // El logo solo se ve mientras no está volando (lo pintan la portada y el final).
  const logoVisible = frame >= f(INICIO_ANUNCIO + VUELO_LOGO) && frame < f(INICIO_FINAL);
  return (
    <>
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          position: "absolute",
          left: LOGO_PIE.left,
          top: LOGO_PIE.top,
          width: LOGO_PIE.tam,
          height: LOGO_PIE.tam,
          opacity: logoVisible ? 1 : 0,
        }}
      />
      <div
        style={{
          position: "absolute",
          left: LOGO_PIE.left + LOGO_PIE.tam + 24,
          right: 84,
          top: LOGO_PIE.top,
          height: LOGO_PIE.tam,
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          opacity: p,
          translate: `0 ${(1 - p) * 40}px`,
        }}
      >
        <div style={{ display: "flex", flexDirection: "column" }}>
          <span style={{ fontFamily: display, fontWeight: 900, fontSize: 64, lineHeight: 0.9, color: A.crema }}>
            PROLINCE
          </span>
          <span style={{ fontSize: 24, fontWeight: 700, letterSpacing: "0.32em", color: A.dorado, marginTop: 4 }}>
            ACADEMIA
          </span>
        </div>
        <span style={{ fontSize: 38, fontWeight: 800, color: A.doradoClaro }}>{usuario}</span>
      </div>
    </>
  );
};

// Corazones pequeños que suben desde el grande.
const BURBUJAS = [
  { x: -150, tam: 46, retraso: 0, giro: -14 },
  { x: 140, tam: 38, retraso: 0.25, giro: 12 },
  { x: -70, tam: 30, retraso: 0.5, giro: -6 },
  { x: 210, tam: 34, retraso: 0.7, giro: 18 },
  { x: -230, tam: 28, retraso: 0.9, giro: -20 },
  { x: 60, tam: 42, retraso: 1.1, giro: 8 },
];

/** Final: el logo vuelve del pie al centro y aparece «Te esperamos» con un corazón que late. */
const Final: React.FC<Props> = ({ despedida1, despedida2, usuario }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  if (frame < f(INICIO_FINAL)) return null;
  const local = frame - f(INICIO_FINAL);
  const pVuelo = interpolate(local, [0, f(VUELO_LOGO)], [0, 1], { ...clamp, easing: vuelo });
  const pCorazon = spring({ frame: local - f(1.35), fps, config: { damping: 9 } });
  const pUsuario = spring({ frame: local - f(1.7), fps, config: { damping: 200 } });
  // Latido doble (pum-pum) cada segundo una vez colocado el corazón.
  const fase = ((local - f(1.6)) / fps) % 1;
  const latido =
    local < f(1.6)
      ? 1
      : 1 + 0.12 * Math.exp(-Math.pow((fase - 0.1) / 0.06, 2)) + 0.08 * Math.exp(-Math.pow((fase - 0.32) / 0.06, 2));
  const tamLogo = interpolate(pVuelo, [0, 1], [LOGO_PIE.tam, 230]);

  return (
    <AbsoluteFill>
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{
          position: "absolute",
          left: interpolate(pVuelo, [0, 1], [LOGO_PIE.left, 540 - 115]),
          top: interpolate(pVuelo, [0, 1], [LOGO_PIE.top, 430]),
          width: tamLogo,
          height: tamLogo,
          filter: "drop-shadow(0 30px 60px #00000055)",
        }}
      />
      {/* Corazón verde con corazones pequeños que suben a los lados (detrás del titular) */}
      <div style={{ position: "absolute", top: 1180, left: 540 - 90, width: 180, height: 180 }}>
        {BURBUJAS.map((b, i) => {
          const t = (local - f(1.6 + b.retraso)) / fps;
          if (t < 0) return null;
          const ciclo = t % 1.8;
          return (
            <Corazon
              key={i}
              tam={b.tam}
              style={{
                position: "absolute",
                left: 90 - b.tam / 2 + b.x * Math.min(1, ciclo * 1.5),
                top: 60 - ciclo * 120,
                opacity: interpolate(ciclo, [0, 0.2, 1.2, 1.8], [0, 0.85, 0.4, 0]),
                rotate: `${b.giro + Math.sin(ciclo * 4) * 10}deg`,
              }}
            />
          );
        })}
        <Corazon
          tam={180}
          style={{
            position: "absolute",
            inset: 0,
            opacity: Math.min(1, pCorazon * 2),
            scale: `${pCorazon * latido}`,
            filter: `drop-shadow(0 0 ${30 * pCorazon}px #4fcf7488)`,
          }}
        />
      </div>

      <div style={{ position: "absolute", top: 760, left: 0, right: 0 }}>
        <LineaTitular texto={despedida1} desde={f(INICIO_FINAL + 0.45)} color={A.crema} tam={200} centrar />
        <div style={{ marginTop: 8 }}>
          <LineaTitular texto={despedida2} desde={f(INICIO_FINAL + 0.65)} color={A.dorado} tam={200} centrar />
        </div>
      </div>

      <div
        style={{
          position: "absolute",
          top: 1420,
          left: 0,
          right: 0,
          textAlign: "center",
          fontSize: 44,
          fontWeight: 800,
          color: A.doradoClaro,
          opacity: pUsuario,
          translate: `0 ${(1 - pUsuario) * 30}px`,
        }}
      >
        {usuario}
      </div>
    </AbsoluteFill>
  );
};

export const Apertura: React.FC<Props> = (props) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  if (frame < FRAMES_PORTADA) {
    return (
      <Freeze frame={Math.round(1.6 * fps)}>
        <Escena {...props} />
      </Freeze>
    );
  }
  return (
    <Sequence from={FRAMES_PORTADA} layout="none">
      <Escena {...props} />
    </Sequence>
  );
};

const Escena: React.FC<Props> = (props) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  return (
    <AbsoluteFill
      style={{
        background: `linear-gradient(180deg, ${A.verdeArriba}, ${A.verdeAbajo})`,
        fontFamily: texto,
        color: A.crema,
      }}
    >
      {/* Rayado diagonal fino que se desliza despacio */}
      <AbsoluteFill
        style={{
          inset: -200,
          backgroundImage: "repeating-linear-gradient(135deg, #ffffff0d 0 2px, transparent 2px 34px)",
          translate: `${(frame * 0.6) % 48}px 0px`,
        }}
      />
      {/* Luz suave arriba a la izquierda */}
      <AbsoluteFill style={{ background: "radial-gradient(circle at 15% 20%, #ffffff12, transparent 55%)" }} />

      <Sequence from={f(INICIO_ANUNCIO)} durationInFrames={f(DUR_ANUNCIO)} layout="none">
        <Anuncio {...props} />
      </Sequence>
      <Sequence from={f(INICIO_VENTAJAS)} durationInFrames={f(DUR_VENTAJAS)} layout="none">
        <Ventajas {...props} />
      </Sequence>
      <Pie usuario={props.usuario} />
      <Portada />
      <Final {...props} />

      {/* Franja cobriza inferior que se dibuja de izquierda a derecha */}
      <div
        style={{
          position: "absolute",
          left: 0,
          bottom: 0,
          height: 18,
          width: `${interpolate(frame, [f(0.2), f(1.2)], [0, 100], { ...clamp, easing: salida })}%`,
          background: A.cobre,
          borderTop: `4px solid ${A.dorado}`,
        }}
      />
    </AbsoluteFill>
  );
};
