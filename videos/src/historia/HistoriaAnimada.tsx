import "@fontsource-variable/manrope";
import { ArrowRight, Check, Star, Timer } from "lucide-react";
import { AbsoluteFill, Img, interpolate, spring, staticFile, useCurrentFrame, useVideoConfig } from "remotion";
import { z } from "zod";
import { C, Emblema, EscenaFondo, fontFamily } from "../PreguntaTest";
import { ALTO_ESCENA, ANCHO_ESCENA, Escenario, Objeto, SUELO } from "./Escenario";
import { Monigote } from "./Monigote";
import { PERSONAJES, type NombrePersonaje } from "./personajes";

const nombresPersonaje = Object.keys(PERSONAJES) as [NombrePersonaje, ...NombrePersonaje[]];

const personajeSchema = z.object({
  personaje: z.enum(nombresPersonaje),
  /** Posición horizontal en la escena (0 a 1000). */
  x: z.number(),
  pose: z.enum(["de-pie", "habla", "saluda", "hola", "senala", "brazos-arriba", "lee", "piensa", "camina", "firmes"]).optional(),
  mirando: z.enum(["izq", "der"]).optional(),
  entra: z.enum(["izquierda", "derecha", "aparece"]).optional(),
  /** Segundo de la escena en el que aparece. */
  desde: z.number().optional(),
  nombre: z.string().optional(),
  dice: z.string().optional(),
  diceDesde: z.number().optional(),
  escala: z.number().optional(),
  sombrero: z.enum(["ninguno", "tricornio", "bicornio", "corona", "calanes", "chistera", "gorra"]).optional(),
  accesorio: z.enum(["ninguno", "fusil", "trabuco", "pergamino", "libro", "pluma", "papeleta"]).optional(),
});

const escenaSchema = z.object({
  fecha: z.string(),
  /** Etiqueta corta en la línea de tiempo (por defecto, el año de la fecha). */
  hito: z.string().optional(),
  titulo: z.string(),
  texto: z.string(),
  escenario: z.enum(["camino", "despacho", "palacio", "cuartel", "congreso", "plaza", "aula"]),
  personajes: z.array(personajeSchema),
  objetos: z.array(z.object({ tipo: z.enum(["urna", "mesa", "bandera", "cartel", "boe", "caballo"]), x: z.number(), texto: z.string().optional() })).optional(),
  clave: z.string().optional(),
  segundos: z.number().optional(),
});

export const historiaSchema = z.object({
  id: z.string(),
  serie: z.string(),
  titulo: z.string(),
  subtitulo: z.string(),
  escenas: z.array(escenaSchema).min(1),
  repaso: z
    .object({
      enunciado: z.string(),
      opciones: z.array(z.string()).min(3).max(4),
      correcta: z.number().int().min(0).max(3),
      explicacion: z.string(),
    })
    .optional(),
});

export type Historia = z.infer<typeof historiaSchema>;
type Escena = Historia["escenas"][number];
type Personaje = Escena["personajes"][number];

const T_INTRO = 3.4;
const T_REPASO = 11;
const T_CIERRE = 3.6;
const SOLAPE = 0.6;
const ESCALA = 1.12; // tamaño por defecto de los muñecos en escena
const LETRAS_S = 34; // velocidad del texto que se escribe solo (caracteres por segundo)
const CUENTA_REPASO = 5;
export const FRAMES_PORTADA = 1;

const finBocadillo = (p: Personaje) => (p.diceDesde ?? (p.desde ?? 0) + 1.3) + (p.dice?.length ?? 0) / LETRAS_S;

export const duracionEscena = (e: Escena) =>
  e.segundos ?? Math.max(6, 0.8 + Math.max(e.texto.length / LETRAS_S, ...e.personajes.map(finBocadillo)) + 2.8);

export const tiemposHistoria = (h: Historia) => {
  const escenas: { inicio: number; dur: number }[] = [];
  let t = T_INTRO;
  for (const e of h.escenas) {
    const dur = duracionEscena(e);
    escenas.push({ inicio: t, dur });
    t += dur;
  }
  const repaso = h.repaso ? t : null;
  if (h.repaso) t += T_REPASO;
  return { escenas, repaso, cierre: t, fin: t + T_CIERRE };
};

export const duracionHistoria = (h: Historia, fps: number) => FRAMES_PORTADA + Math.round(tiemposHistoria(h).fin * fps);

const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;
const suave = (x: number) => 1 - Math.pow(1 - x, 3);

// Maquetación en el lienzo de 1080 × 1920.
const ESCENA_TOP = 500;
const ESCENA_LEFT = 40;
const TEXTO_TOP = 1350;

/** Texto que se escribe letra a letra (reserva el hueco del texto completo para que no salte). */
const Escribe: React.FC<{ texto: string; s: number; style?: React.CSSProperties }> = ({ texto, s, style }) => {
  const n = Math.max(0, Math.min(texto.length, Math.floor(s * LETRAS_S)));
  return (
    <span style={{ position: "relative", display: "block", ...style }}>
      <span style={{ visibility: "hidden" }}>{texto}</span>
      <span style={{ position: "absolute", inset: 0 }}>{texto.slice(0, n)}</span>
    </span>
  );
};

const Bocadillo: React.FC<{ texto: string; x: number; alto: number; s: number }> = ({ texto, x, alto, s }) => {
  const p = Math.min(1, spring({ frame: s * 30, fps: 30, config: { damping: 14 } }));
  const ancho = Math.min(460, 120 + texto.length * 12);
  const izq = Math.max(16, Math.min(ANCHO_ESCENA - ancho - 16, x - ancho / 2));
  return (
    <div
      style={{
        position: "absolute",
        left: izq,
        bottom: ALTO_ESCENA - alto + 30,
        width: ancho,
        padding: "22px 28px",
        background: "#fff",
        border: `4px solid ${C.texto}`,
        borderRadius: 34,
        fontSize: 34,
        fontWeight: 700,
        lineHeight: 1.25,
        color: C.texto,
        transformOrigin: `${x - izq}px 120%`,
        transform: `scale(${p})`,
        boxShadow: "0 18px 30px -18px #00000055",
      }}
    >
      <Escribe texto={texto} s={s - 0.15} />
      <svg width={44} height={30} style={{ position: "absolute", bottom: -28, left: Math.max(20, Math.min(ancho - 64, x - izq - 22)) }}>
        <path d="M 0 0 L 22 26 L 44 0" fill="#fff" stroke={C.texto} strokeWidth={4} />
        <rect x={2} y={-4} width={40} height={6} fill="#fff" />
      </svg>
    </div>
  );
};

/** Un personaje de la escena: entra andando o aparece, y después adopta su pose. */
const Actor: React.FC<{ p: Personaje; s: number; fps: number }> = ({ p, s, fps }) => {
  const local = s - (p.desde ?? 0);
  if (local < 0) return null;
  const entra = p.entra ?? "aparece";
  const T_ANDAR = 1.2;
  const andando = entra !== "aparece" && local < T_ANDAR;
  const xIni = entra === "izquierda" ? -160 : entra === "derecha" ? ANCHO_ESCENA + 160 : p.x;
  const x = interpolate(local, [0, T_ANDAR], [xIni, p.x], { ...clamp, easing: (v) => 1 - Math.pow(1 - v, 2) });
  const aparece = entra === "aparece" ? spring({ frame: local * fps, fps, config: { damping: 12 } }) : 1;
  const mirandoFinal = p.mirando ?? (p.x > ANCHO_ESCENA / 2 ? "izq" : "der");
  const mirando = andando ? (entra === "izquierda" ? "der" : "izq") : mirandoFinal;
  const hablando = !!p.dice && s >= (p.diceDesde ?? (p.desde ?? 0) + 1.3) && s < finBocadillo(p);
  const escala = p.escala ?? ESCALA;
  const aspecto = { ...PERSONAJES[p.personaje], ...(p.sombrero && { sombrero: p.sombrero }), ...(p.accesorio && { accesorio: p.accesorio }) };
  return (
    <g transform={`translate(${x} ${SUELO}) scale(${escala * aparece})`}>
      <Monigote aspecto={aspecto} pose={andando ? "camina" : (p.pose ?? "de-pie")} s={local} hablando={hablando} mirando={mirando} />
    </g>
  );
};

const Etiqueta: React.FC<{ texto: string; x: number; opacidad: number }> = ({ texto, x, opacidad }) => (
  <div
    style={{
      position: "absolute",
      top: SUELO + 18,
      left: x - 200,
      width: 400,
      textAlign: "center",
      opacity: opacidad,
    }}
  >
    <span style={{ background: "#ffffffee", color: C.profundo, fontSize: 26, fontWeight: 800, padding: "6px 18px", borderRadius: 999 }}>{texto}</span>
  </div>
);

/** Tarjeta con el escenario, los objetos, los personajes y sus bocadillos. */
const Escenario2D: React.FC<{ e: Escena; s: number; t: number; fps: number }> = ({ e, s, t, fps }) => (
  <div
    style={{
      position: "absolute",
      top: ESCENA_TOP,
      left: ESCENA_LEFT,
      width: ANCHO_ESCENA,
      height: ALTO_ESCENA,
      borderRadius: 48,
      overflow: "hidden",
      border: `4px solid ${C.bordeTarjeta}`,
      boxShadow: "0 40px 90px -40px #03512d66",
      background: "#fff",
    }}
  >
    <svg width={ANCHO_ESCENA} height={ALTO_ESCENA} style={{ position: "absolute", inset: 0 }}>
      <Escenario tipo={e.escenario} t={t} />
      {e.objetos?.map((o, i) => (
        <Objeto key={i} tipo={o.tipo} x={o.x} texto={o.texto} t={t} />
      ))}
      {e.personajes.map((p, i) => (
        <Actor key={i} p={p} s={s} fps={fps} />
      ))}
    </svg>
    {e.personajes.map((p, i) =>
      p.nombre ? <Etiqueta key={i} texto={p.nombre} x={p.x} opacidad={interpolate(s, [(p.desde ?? 0) + 1.2, (p.desde ?? 0) + 1.6], [0, 1], clamp)} /> : null,
    )}
    {e.personajes.map((p, i) => {
      const desde = p.diceDesde ?? (p.desde ?? 0) + 1.3;
      if (!p.dice || s < desde) return null;
      return <Bocadillo key={i} texto={p.dice} x={p.x} alto={SUELO - 400 * (p.escala ?? ESCALA)} s={s - desde} />;
    })}
  </div>
);

const Cabecera: React.FC<{ fecha: string; titulo: string; p: number }> = ({ fecha, titulo, p }) => (
  <div style={{ position: "absolute", top: 290, left: 64, right: 64, height: 190, display: "flex", flexDirection: "column", justifyContent: "flex-end" }}>
    <div style={{ opacity: p, transform: `translateY(${(1 - p) * 30}px)` }}>
      <span style={{ display: "inline-block", background: C.primario, color: "#fff", fontSize: 32, fontWeight: 800, padding: "10px 26px", borderRadius: 999 }}>
        {fecha}
      </span>
    </div>
    <div
      style={{
        marginTop: 16,
        fontSize: titulo.length > 30 ? 52 : 64,
        fontWeight: 800,
        lineHeight: 1.08,
        letterSpacing: "-0.03em",
        opacity: p,
        transform: `translateY(${(1 - p) * 50}px)`,
      }}
    >
      {titulo}
    </div>
  </div>
);

const TarjetaTexto: React.FC<{ children: React.ReactNode; p: number; top?: number }> = ({ children, p, top = TEXTO_TOP }) => (
  <div
    style={{
      position: "absolute",
      top,
      left: 40,
      right: 40,
      padding: "38px 44px",
      background: "#ffffff",
      border: `3px solid ${C.bordeTarjeta}`,
      borderRadius: 44,
      boxShadow: "0 36px 80px -36px #03512d55",
      opacity: p,
      transform: `translateY(${(1 - p) * 120}px)`,
      display: "flex",
      flexDirection: "column",
      gap: 26,
    }}
  >
    {children}
  </div>
);

const Clave: React.FC<{ texto: string; p: number }> = ({ texto, p }) => (
  <div
    style={{
      display: "flex",
      alignItems: "flex-start",
      gap: 18,
      background: C.suave,
      border: `3px solid ${C.punto}`,
      borderRadius: 28,
      padding: "20px 26px",
      opacity: p,
      transform: `scale(${0.85 + p * 0.15})`,
      transformOrigin: "left center",
    }}
  >
    <Star size={40} color={C.primario} fill={C.primario} style={{ flexShrink: 0, marginTop: 2 }} />
    <div style={{ fontSize: 32, fontWeight: 700, lineHeight: 1.3, color: C.suaveTexto }}>
      <span style={{ fontWeight: 900, letterSpacing: "0.06em" }}>CAE EN EXAMEN · </span>
      {texto}
    </div>
  </div>
);

/** Capa que entra con una cortinilla de izquierda a derecha y tapa a la anterior. */
const Capa: React.FC<{ p: number; frame: number; fps: number; children: React.ReactNode }> = ({ p, frame, fps, children }) => (
  <AbsoluteFill style={{ clipPath: `inset(0 ${(1 - p) * 100}% 0 0)`, background: C.fondo }}>
    <EscenaFondo frame={frame} fps={fps} />
    {children}
    {p < 1 && <div style={{ position: "absolute", top: 0, bottom: 0, left: `calc(${p * 100}% - 18px)`, width: 18, background: C.primario }} />}
  </AbsoluteFill>
);

const LineaTiempo: React.FC<{ hitos: string[]; activo: number; p: number }> = ({ hitos, activo, p }) => {
  const n = hitos.length;
  const x = (i: number) => (n === 1 ? 50 : 6 + (i / (n - 1)) * 88);
  return (
    <div style={{ position: "absolute", top: 180, left: 40, right: 40, height: 90, opacity: p }}>
      <div style={{ position: "absolute", top: 20, left: "6%", right: "6%", height: 6, borderRadius: 3, background: C.borde }} />
      <div
        style={{
          position: "absolute",
          top: 20,
          left: "6%",
          width: `${Math.max(0, activo) === 0 ? 0 : (x(Math.min(activo, n - 1)) - 6)}%`,
          height: 6,
          borderRadius: 3,
          background: C.primario,
        }}
      />
      {hitos.map((h, i) => {
        const hecho = i <= activo;
        return (
          <div key={i} style={{ position: "absolute", left: `${x(i)}%`, top: 0, transform: "translateX(-50%)", textAlign: "center" }}>
            <div
              style={{
                width: 46,
                height: 46,
                margin: "0 auto",
                borderRadius: "50%",
                background: hecho ? C.primario : "#fff",
                border: `5px solid ${hecho ? C.primario : C.borde}`,
                transform: `scale(${i === activo ? 1.15 : 1})`,
                boxShadow: i === activo ? `0 0 0 10px #03512d22` : "none",
              }}
            />
            <div style={{ marginTop: 6, fontSize: 24, fontWeight: 800, color: hecho ? C.primario : C.apagadoTexto, whiteSpace: "nowrap" }}>{h}</div>
          </div>
        );
      })}
    </div>
  );
};

export const HistoriaAnimada: React.FC<Historia> = (h) => {
  const { fps, width, height } = useVideoConfig();
  const fotograma = useCurrentFrame();
  const T = tiemposHistoria(h);
  // Primer fotograma = portada (el título ya montado); después la animación arranca desde cero.
  const frame = fotograma < FRAMES_PORTADA ? Math.round(2.6 * fps) : fotograma - FRAMES_PORTADA;
  const s = frame / fps;
  const sp = (desde: number, damping = 200) => spring({ frame: frame - Math.round(desde * fps), fps, config: { damping } });
  const cortinilla = (inicio: number) => interpolate(s, [inicio, inicio + SOLAPE], [0, 1], { ...clamp, easing: suave });

  const hitos = h.escenas.map((e) => e.hito ?? e.fecha.match(/\d{4}/)?.[0] ?? "·");
  const activo = T.escenas.reduce((a, e, i) => (s >= e.inicio ? i : a), -1);
  const pCierre = interpolate(s, [T.cierre, T.cierre + 0.7], [0, 1], { ...clamp, easing: suave });

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />

      {/* Portada / intro */}
      <AbsoluteFill>
        <div style={{ position: "absolute", top: 230, left: 64, right: 64 }}>
          <div style={{ color: C.primario, fontSize: 32, fontWeight: 800, letterSpacing: "0.08em", textTransform: "uppercase", opacity: sp(0.2) }}>{h.serie}</div>
          <div style={{ marginTop: 20, fontSize: 96, fontWeight: 800, lineHeight: 1.04, letterSpacing: "-0.04em", display: "flex", flexWrap: "wrap", columnGap: 24 }}>
            {h.titulo.split(" ").map((palabra, i) => {
              const p = sp(0.3 + i * 0.12, 14);
              return (
                <span key={i} style={{ display: "inline-block", overflow: "hidden", paddingBottom: 8 }}>
                  <span style={{ display: "inline-block", transform: `translateY(${(1 - p) * 110}%)` }}>{palabra}</span>
                </span>
              );
            })}
          </div>
          <div style={{ marginTop: 24, fontSize: 40, fontWeight: 600, color: C.apagadoTexto, opacity: sp(1.1) }}>{h.subtitulo}</div>
        </div>
        <div style={{ position: "absolute", top: 820, left: ESCENA_LEFT, opacity: sp(0.8), transform: `translateY(${(1 - sp(0.8, 16)) * 400}px)` }}>
          <div style={{ position: "relative", width: ANCHO_ESCENA, height: ALTO_ESCENA, borderRadius: 48, overflow: "hidden", border: `4px solid ${C.bordeTarjeta}` }}>
            <svg width={ANCHO_ESCENA} height={ALTO_ESCENA}>
              <Escenario tipo="cuartel" t={s} />
              <g transform={`translate(300 ${SUELO}) scale(1.2)`}>
                <Monigote aspecto={PERSONAJES.guardia} pose={s > 1.6 ? "saluda" : "firmes"} s={s} />
              </g>
              <g transform={`translate(700 ${SUELO}) scale(1.2)`}>
                <Monigote aspecto={PERSONAJES["guardia-actual"]} pose={s > 1.9 ? "saluda" : "firmes"} s={s + 0.3} mirando="izq" />
              </g>
            </svg>
          </div>
        </div>
      </AbsoluteFill>

      {/* Escenas */}
      {h.escenas.map((e, i) => {
        const { inicio, dur } = T.escenas[i];
        const fin = inicio + dur + (i < h.escenas.length - 1 || T.repaso !== null ? SOLAPE : 0) + (i === h.escenas.length - 1 ? 1 : 0);
        if (s < inicio || s > fin + 0.01) return null;
        const local = s - inicio;
        const pTexto = spring({ frame: (local - 0.4) * fps, fps, config: { damping: 200 } });
        const finTexto = 0.8 + e.texto.length / LETRAS_S;
        const escalaTexto = Math.min(1, Math.max(0.78, 1 - (e.texto.length - 170) / 400));
        return (
          <Capa key={i} p={cortinilla(inicio)} frame={frame} fps={fps}>
            <Cabecera fecha={e.fecha} titulo={e.titulo} p={spring({ frame: (local - 0.3) * fps, fps, config: { damping: 200 } })} />
            <Escenario2D e={e} s={local} t={s} fps={fps} />
            <TarjetaTexto p={pTexto}>
              <Escribe texto={e.texto} s={local - 0.8} style={{ fontSize: 42 * escalaTexto, fontWeight: 600, lineHeight: 1.36 }} />
              {e.clave && <Clave texto={e.clave} p={spring({ frame: (local - finTexto - 0.2) * fps, fps, config: { damping: 14 } })} />}
            </TarjetaTexto>
          </Capa>
        );
      })}

      {/* Repaso con cuenta atrás */}
      {h.repaso && T.repaso !== null && s >= T.repaso && (
        <Capa p={cortinilla(T.repaso)} frame={frame} fps={fps}>
          <Repaso r={h.repaso} s={s - T.repaso} fps={fps} />
        </Capa>
      )}

      {/* Barra superior y línea de tiempo por encima de las capas */}
      <div
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          right: 0,
          height: 150,
          padding: "0 64px",
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          background: "#ffffffdd",
          borderBottom: `2px solid ${C.borde}`,
        }}
      >
        <Img src={staticFile("prolince-logo.svg")} style={{ width: 88, height: 88 }} />
        <span style={{ fontSize: 34, fontWeight: 700 }}>prolinceacademia.com</span>
      </div>
      <LineaTiempo hitos={hitos} activo={activo} p={interpolate(s, [T_INTRO, T_INTRO + 0.5], [0, 1], clamp) * (T.repaso !== null && s > T.repaso + SOLAPE ? 0 : 1)} />

      {/* Cierre */}
      {s >= T.cierre && (
        <AbsoluteFill style={{ background: C.profundo, color: "#fff", clipPath: `circle(${pCierre * Math.hypot(width, height)}px at 50% 55%)` }}>
          <AbsoluteFill
            style={{
              alignItems: "center",
              justifyContent: "center",
              flexDirection: "column",
              padding: "0 80px",
              opacity: Math.min(1, sp(T.cierre + 0.35)),
              transform: `translateY(${(1 - sp(T.cierre + 0.35)) * 80}px)`,
            }}
          >
            <Emblema frame={frame} tam={220} />
            <div style={{ marginTop: 80, fontSize: 30, fontWeight: 700, letterSpacing: "0.08em", color: C.suave }}>ACADEMIA ONLINE DE OPOSICIONES</div>
            <div style={{ marginTop: 24, fontSize: 104, fontWeight: 800, lineHeight: 1.04, letterSpacing: "-0.038em", textAlign: "center" }}>
              La historia <span style={{ color: C.suave }}>también cae.</span>
            </div>
            <div style={{ marginTop: 36, fontSize: 40, lineHeight: 1.45, textAlign: "center", color: "#ffffffa6" }}>
              Temario, tests y simulacros cronometrados en un solo sitio.
            </div>
            <div style={{ marginTop: 64, display: "flex", alignItems: "center", gap: 18, background: "#fff", color: C.profundo, fontSize: 42, fontWeight: 700, padding: "34px 56px", borderRadius: 32 }}>
              Empezar ahora
              <ArrowRight size={44} style={{ transform: `translateX(${Math.sin(frame / 5) * 5}px)` }} />
            </div>
            <div style={{ marginTop: 40, fontSize: 36, fontWeight: 700 }}>prolinceacademia.com</div>
          </AbsoluteFill>
        </AbsoluteFill>
      )}
    </AbsoluteFill>
  );
};

const LETRAS = ["A", "B", "C", "D"];

const Repaso: React.FC<{ r: NonNullable<Historia["repaso"]>; s: number; fps: number }> = ({ r, s, fps }) => {
  const sp = (desde: number, damping = 200) => spring({ frame: (s - desde) * fps, fps, config: { damping } });
  const T_CUENTA = 2.4;
  const T_SOL = T_CUENTA + CUENTA_REPASO;
  const resuelta = s >= T_SOL;
  const pSol = sp(T_SOL, 12);
  const restante = Math.max(0, Math.ceil(CUENTA_REPASO - Math.max(0, s - T_CUENTA)));
  const escala = Math.min(1, Math.max(0.78, 1 - (r.enunciado.length + r.opciones.join("").length - 220) / 600));
  return (
    <>
      <Cabecera fecha="Repaso rápido" titulo="¿Te has quedado con todo?" p={sp(0.3)} />
      <div
        style={{
          position: "absolute",
          top: ESCENA_TOP,
          left: ESCENA_LEFT,
          width: ANCHO_ESCENA,
          padding: "48px 48px",
          borderRadius: 48,
          background: "#fff",
          border: `4px solid ${C.bordeTarjeta}`,
          boxShadow: "0 40px 90px -40px #03512d66",
          opacity: sp(0.5),
        }}
      >
        <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
          <span style={{ fontSize: 26, fontWeight: 800, letterSpacing: "0.08em", color: C.apagadoTexto }}>PREGUNTA DE EXAMEN</span>
          <span
            style={{
              display: "flex",
              alignItems: "center",
              gap: 10,
              borderRadius: 999,
              background: resuelta ? C.primario : C.suave,
              color: resuelta ? "#fff" : C.suaveTexto,
              padding: "10px 22px",
              fontSize: 34,
              fontWeight: 800,
              fontVariantNumeric: "tabular-nums",
              opacity: s >= T_CUENTA ? 1 : 0,
              transform: `scale(${1 + Math.max(0, 1 - ((s - T_CUENTA) % 1) * 4) * 0.12})`,
            }}
          >
            <Timer size={32} /> 00:0{restante}
          </span>
        </div>
        <p style={{ margin: "30px 0 0", fontSize: 46 * escala, fontWeight: 800, lineHeight: 1.26 }}>{r.enunciado}</p>
        <div style={{ display: "flex", flexDirection: "column", gap: 22 * escala, marginTop: 36 * escala }}>
          {r.opciones.map((o, i) => {
            const p = sp(1 + i * 0.18, 16);
            const acierto = resuelta && i === r.correcta;
            const apagada = resuelta && i !== r.correcta;
            return (
              <div
                key={i}
                style={{
                  display: "flex",
                  alignItems: "center",
                  gap: 24,
                  padding: `${24 * escala}px 28px`,
                  borderRadius: 28,
                  border: `3px solid ${acierto ? C.primario : C.borde}`,
                  background: acierto ? C.primario : "#fff",
                  color: acierto ? "#fff" : C.texto,
                  opacity: p * (apagada ? 0.4 : 1),
                  transform: `translateX(${(1 - p) * 120}px) scale(${acierto ? 1 + pSol * 0.03 : 1})`,
                  boxShadow: acierto ? `0 0 0 ${10 * pSol}px #03512d22` : "none",
                }}
              >
                <span
                  style={{
                    flexShrink: 0,
                    width: 58,
                    height: 58,
                    borderRadius: "50%",
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    fontSize: 28,
                    fontWeight: 800,
                    background: acierto ? "#fff" : C.apagado,
                    color: acierto ? C.primario : C.apagadoTexto,
                  }}
                >
                  {acierto ? <Check size={34} strokeWidth={3.5} /> : LETRAS[i]}
                </span>
                <span style={{ fontSize: 38 * escala, fontWeight: 600, lineHeight: 1.22 }}>{o}</span>
              </div>
            );
          })}
        </div>
      </div>
      <TarjetaTexto p={sp(resuelta ? T_SOL + 0.4 : 1.4)} top={1500}>
        {resuelta ? (
          <Escribe texto={r.explicacion} s={s - T_SOL - 0.6} style={{ fontSize: 40, fontWeight: 600, lineHeight: 1.36 }} />
        ) : (
          <div style={{ fontSize: 44, fontWeight: 700, lineHeight: 1.3 }}>
            Tienes <span style={{ color: C.primario }}>{CUENTA_REPASO} segundos</span>. Dilo en voz alta antes de que se acabe el tiempo.
          </div>
        )}
      </TarjetaTexto>
    </>
  );
};
