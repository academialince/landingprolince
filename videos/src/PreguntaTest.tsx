import "@fontsource-variable/manrope";
import "@fontsource/barlow-condensed/600.css";
import "@fontsource/barlow-condensed/700.css";
import "@fontsource/barlow-condensed/800.css";
import "@fontsource/jetbrains-mono/500.css";
import "@fontsource/jetbrains-mono/700.css";
import { ArrowRight, Check, ChevronLeft, Sparkles, Timer } from "lucide-react";
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

// Rediseño táctico de la web (src/app/globals.css, `.tactico[data-tema="oscuro"]`, el tema por
// defecto), con los tokens pasados de OKLCH a hex.
const C = {
  fondo: "#090e0a",
  texto: "#ecf0eb",
  superficie: "#111712",
  superficieTenue: "#0c120d",
  superficieTintada: "#121b13",
  primario: "#35ab6c",
  sobrePrimario: "#071009",
  suave: "#0e2e1c",
  suaveTexto: "#9ae5b5",
  profundo: "#030604",
  apagadoTexto: "#a5ada5",
  borde: "#262e27",
  bordeFuerte: "#404b42",
  rec: "#e5484d",
};

// Las tres familias de la web: Manrope para el texto, Barlow Condensed para los titulares en
// mayúsculas y JetBrains Mono para las etiquetas de visor.
const fuenteTexto = "'Manrope Variable', Manrope, sans-serif";
const fuenteTitular = "'Barlow Condensed', 'Manrope Variable', sans-serif";
const fuenteVisor = "'JetBrains Mono', ui-monospace, monospace";

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

// Tramos en segundos.
const T_TITULAR = 0.3;
const T_MOVIL = 0.7;
const T_ENUNCIADO = 1.4;
const T_OPCIONES = 2.0;
const T_EXPLICACION = 1.0;
const T_LECTURA = 5;
const T_CIERRE = 3;

const tiempos = (segundosCuenta: number) => {
  const cuenta = T_OPCIONES + 1.5;
  const solucion = cuenta + segundosCuenta;
  const explicacion = solucion + T_EXPLICACION;
  const cierre = explicacion + T_LECTURA;
  return { cuenta, solucion, explicacion, cierre, fin: cierre + T_CIERRE };
};

// El primer fotograma es la portada (la miniatura de Reels/TikTok): la escena completa justo antes
// de la cuenta atrás, sin cronómetro. Después arranca la animación desde cero.
export const FRAMES_PORTADA = 1;

export const duracionPregunta = (segundosCuenta: number, fps: number) =>
  FRAMES_PORTADA + Math.round(tiempos(segundosCuenta).fin * fps);

const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;

/** Etiqueta de visor: monoespaciada, en mayúsculas y con el «//» de la web. */
const Visor: React.FC<{ children: React.ReactNode; color?: string; tam?: number; style?: React.CSSProperties }> = ({
  children,
  color = C.primario,
  tam = 26,
  style,
}) => (
  <div
    style={{
      fontFamily: fuenteVisor,
      fontWeight: 700,
      fontSize: tam,
      letterSpacing: "0.16em",
      textTransform: "uppercase",
      color,
      ...style,
    }}
  >
    <span style={{ opacity: 0.6 }}>// </span>
    {children}
  </div>
);

/** Esquinas en escuadra alrededor de un panel, como el `.hud-marco` de la web. */
const EsquinasVisor: React.FC<{ inset: number; largo: number; grosor?: number; color?: string }> = ({
  inset,
  largo,
  grosor = 3,
  color = C.primario,
}) => {
  const esquinas: React.CSSProperties[] = [
    { top: inset, left: inset, borderTopWidth: grosor, borderLeftWidth: grosor },
    { top: inset, right: inset, borderTopWidth: grosor, borderRightWidth: grosor },
    { bottom: inset, left: inset, borderBottomWidth: grosor, borderLeftWidth: grosor },
    { bottom: inset, right: inset, borderBottomWidth: grosor, borderRightWidth: grosor },
  ];
  return (
    <>
      {esquinas.map((e, i) => (
        <span
          key={i}
          style={{ position: "absolute", width: largo, height: largo, borderStyle: "solid", borderWidth: 0, borderColor: color, ...e }}
        />
      ))}
    </>
  );
};

/** Barra de rayas de precaución (`.hud-rayas`). */
const Rayas: React.FC<{ ancho: number; alto: number; style?: React.CSSProperties }> = ({ ancho, alto, style }) => (
  <div
    style={{
      width: ancho,
      height: alto,
      opacity: 0.85,
      background: `repeating-linear-gradient(-45deg, ${C.primario} 0 12px, transparent 12px 24px)`,
      ...style,
    }}
  />
);

/** Fondo de la web táctica: casi negro, rejilla de mapa y un resplandor verde que respira. */
const EscenaFondo: React.FC<{ frame: number; fps: number }> = ({ frame, fps }) => {
  const s = frame / fps;
  const respira = Math.sin((s / 8) * Math.PI * 2);
  return (
    <AbsoluteFill style={{ overflow: "hidden" }}>
      <div
        style={{
          position: "absolute",
          inset: 0,
          background: `radial-gradient(ellipse 90% 60% at 15% 8%, ${C.primario}2e, transparent 60%), radial-gradient(ellipse 70% 50% at 90% 75%, ${C.primario}1a, transparent 65%)`,
          opacity: 0.85 + respira * 0.15,
        }}
      />
      <div
        style={{
          position: "absolute",
          inset: 0,
          backgroundImage: `linear-gradient(${C.primario}14 2px, transparent 2px), linear-gradient(90deg, ${C.primario}14 2px, transparent 2px)`,
          backgroundSize: "64px 64px",
          backgroundPosition: `0 ${s * 10}px`,
        }}
      />
      {/* Viñeta para que el borde no compita con el contenido */}
      <div style={{ position: "absolute", inset: 0, background: `radial-gradient(ellipse at 50% 50%, transparent 55%, ${C.profundo}cc 100%)` }} />
    </AbsoluteFill>
  );
};

/** Panel flotante oscuro con borde y esquinas de visor, como las tarjetas del hero táctico. */
const Panel: React.FC<{ style: React.CSSProperties; children: React.ReactNode }> = ({ style, children }) => (
  <div
    style={{
      position: "absolute",
      display: "flex",
      alignItems: "center",
      gap: 28,
      border: `2px solid ${C.bordeFuerte}`,
      background: `${C.superficie}f2`,
      borderRadius: 4,
      padding: 36,
      boxShadow: "0 40px 70px -24px #000c",
      ...style,
    }}
  >
    <EsquinasVisor inset={-12} largo={34} />
    {children}
  </div>
);

/** Emblema dentro de un marco de visor que respira. */
const Emblema: React.FC<{ frame: number; tam: number }> = ({ frame, tam }) => {
  const pulso = 1 + Math.sin(frame / 9) * 0.03;
  return (
    <div style={{ position: "relative", padding: tam * 0.14 }}>
      <div style={{ position: "absolute", inset: 0, transform: `scale(${pulso})` }}>
        <EsquinasVisor inset={0} largo={tam * 0.28} grosor={4} />
      </div>
      <Img
        src={staticFile("prolince-logo.svg")}
        style={{ width: tam, height: tam, display: "block", filter: `drop-shadow(0 0 ${tam * 0.12}px ${C.primario}66)` }}
      />
    </div>
  );
};

/**
 * Estima cuánto hay que subir el contenido del móvil para que la respuesta correcta quede por encima
 * de la tarjeta de explicación. Las medidas salen del maquetado de este archivo (ancho útil del
 * texto, tamaños de letra e interlineados) con un margen de seguridad; 0 si ya se ve.
 */
export function desplazamientoPantalla(p: {
  enunciado: string;
  opciones: string[];
  correcta: number;
  explicacion: string;
  escala: number;
  escalaExplicacion: number;
}) {
  const lineas = (texto: string, ancho: number, letra: number, factor: number) =>
    Math.max(1, Math.ceil((texto.length * letra * factor) / ancho));
  const letraEnunciado = 46 * p.escala;
  const altoEnunciado = lineas(p.enunciado, 636, letraEnunciado, 0.56) * letraEnunciado * 1.28;
  const letraOpcion = 36 * p.escala;
  const altoOpcion =
    lineas(p.opciones[p.correcta], 550, letraOpcion, 0.54) * letraOpcion * 1.22 + 52 * p.escala + 6;
  // Arriba de la pantalla (600 + marco 26), relleno superior 120, cabecera 70, progreso 58,
  // margen del enunciado 36, margen de la lista y de la opción, y 45 px por el giro del móvil.
  const bajoOpcion = 626 + 120 + 70 + 58 + 36 + altoEnunciado + 40 * p.escala + altoOpcion + 45;
  const letraExpl = 33 * p.escalaExplicacion;
  const altoTarjeta = 76 + Math.max(84, 57 + lineas(p.explicacion, 812, letraExpl, 0.52) * letraExpl * 1.4);
  const arribaTarjeta = 1920 - 90 - altoTarjeta - 12;
  return Math.max(0, Math.round(bajoOpcion + 24 - arribaTarjeta));
}

const LETRAS = ["A", "B", "C", "D"];
const TITULAR = ["¿Sabrías", "responder", "a", "esta", "pregunta?"];

export const PreguntaTest: React.FC<Props> = ({
  tema,
  enunciado,
  opciones,
  correcta,
  explicacion,
  segundosCuenta,
}) => {
  const { fps, height } = useVideoConfig();
  const t = tiempos(segundosCuenta);
  const f = (s: number) => Math.round(s * fps);
  const fotograma = useCurrentFrame();
  const portada = fotograma < FRAMES_PORTADA;
  const frame = portada ? f(t.cuenta) - 1 : fotograma - FRAMES_PORTADA;
  const entrada = (desde: number, damping = 200) =>
    spring({ frame: frame - desde, fps, config: { damping } });

  const resuelta = frame >= f(t.solucion);
  const pNav = entrada(0);
  const pBloque = interpolate(frame, [f(T_TITULAR + 0.5), f(T_TITULAR + 1.0)], [0, 1], {
    ...clamp,
    easing: (x) => 1 - Math.pow(1 - x, 3),
  });
  const pMovil = entrada(f(T_MOVIL), 18);
  const pEnunciado = entrada(f(T_ENUNCIADO));
  const pCuenta = entrada(f(t.cuenta), 14);
  const pSolucion = entrada(f(t.solucion), 12);
  const pExplicacion = entrada(f(t.explicacion), 16);
  // Antes de que suba la tarjeta de explicación, las opciones incorrectas se recogen para que la
  // correcta quede siempre a la vista, aunque sea la C o la D.
  const pRecoger = interpolate(frame, [f(t.explicacion - 0.45), f(t.explicacion + 0.15)], [0, 1], {
    ...clamp,
    easing: (x) => 1 - Math.pow(1 - x, 3),
  });
  // Cierre: la franja oscura sube desde abajo con una línea de barrido, como un visor.
  const pCierre = interpolate(frame, [f(t.cierre), f(t.cierre + 0.6)], [0, 1], {
    ...clamp,
    easing: (x) => 1 - Math.pow(1 - x, 3),
  });
  const pCierreTexto = entrada(f(t.cierre + 0.35));

  const segundosPasados = Math.max(0, (frame - f(t.cuenta)) / fps);
  const restante = Math.max(0, Math.ceil(segundosCuenta - segundosPasados));
  const progresoCuenta = interpolate(frame, [f(t.cuenta), f(t.solucion)], [1, 0], clamp);
  // Las preguntas largas del banco reducen la letra para que quepan en el móvil.
  const largo = enunciado.length + opciones.join("").length;
  const escala = Math.min(1, Math.max(0.7, 1 - (largo - 230) / 700));
  const escalaExplicacion = Math.min(1, Math.max(0.72, 1 - (explicacion.length - 200) / 500));
  const desplazamiento = desplazamientoPantalla({ enunciado, opciones, correcta, explicacion, escala, escalaExplicacion });
  const flotar = Math.sin((frame / fps / 7) * Math.PI * 2);
  // Barra de progreso del móvil: 35 % como en la web; se completa al resolver.
  const progresoTest = interpolate(frame, [f(t.solucion), f(t.solucion + 0.6)], [0.35, 1], clamp);
  const recParpadeo = Math.floor(frame / (fps * 0.8)) % 2 === 0 ? 1 : 0.25;

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily: fuenteTexto, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />

      {/* Cabecera: logo y la web, sobre una línea fina como el menú de la web */}
      <div
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          right: 0,
          height: 160,
          padding: "0 64px",
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          background: `${C.fondo}d9`,
          borderBottom: `2px solid ${C.borde}`,
          opacity: pNav,
          transform: `translateY(${(1 - pNav) * -60}px)`,
        }}
      >
        <Img src={staticFile("prolince-logo.svg")} style={{ width: 92, height: 92 }} />
        <span style={{ fontFamily: fuenteVisor, fontSize: 30, fontWeight: 700, letterSpacing: "0.06em" }}>
          prolinceacademia.com
        </span>
      </div>

      {/* Titular: Barlow Condensed en mayúsculas, con la palabra clave sobre bloque verde */}
      <div style={{ position: "absolute", top: 205, left: 64, right: 64 }}>
        <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", opacity: entrada(f(T_TITULAR)) }}>
          <Visor tam={26}>{tema}</Visor>
        </div>
        <div
          style={{
            marginTop: 16,
            fontFamily: fuenteTitular,
            fontSize: 112,
            fontWeight: 800,
            lineHeight: 0.95,
            letterSpacing: "0.005em",
            textTransform: "uppercase",
            display: "flex",
            flexWrap: "wrap",
            columnGap: 24,
          }}
        >
          {TITULAR.map((palabra, i) => {
            const p = entrada(f(T_TITULAR) + i * 4, 14);
            const clave = palabra === "responder";
            return (
              <span key={i} style={{ display: "inline-block", overflow: "hidden", padding: "4px 0" }}>
                <span
                  style={{
                    position: "relative",
                    display: "inline-block",
                    zIndex: 0,
                    padding: clave ? "0 12px" : 0,
                    color: clave && pBloque > 0.5 ? C.sobrePrimario : C.texto,
                    transform: `translateY(${(1 - p) * 110}%)`,
                  }}
                >
                  {clave && (
                    <span
                      style={{
                        position: "absolute",
                        left: 0,
                        top: 0,
                        bottom: 0,
                        width: `${pBloque * 100}%`,
                        background: C.primario,
                        zIndex: -1,
                      }}
                    />
                  )}
                  {palabra}
                </span>
              </span>
            );
          })}
        </div>
      </div>

      {/* Móvil con la pantalla de test de la plataforma, en el tema oscuro */}
      <div
        style={{
          position: "absolute",
          left: 110,
          top: 600,
          width: 800,
          perspective: 2200,
          transform: `translateY(${(1 - pMovil) * 1300 + flotar * 18}px)`,
        }}
      >
        <div
          style={{
            height: 1500,
            borderRadius: 110,
            background: C.profundo,
            padding: 26,
            transform: `rotateX(${(1 - pMovil) * 30}deg) rotate(${-5 + (1 - pMovil) * -10 + flotar * 1.2}deg)`,
            boxShadow: `0 60px 110px -30px #000e, 0 0 0 4px ${C.bordeFuerte}, 0 0 90px -20px ${C.primario}55`,
          }}
        >
          <div
            style={{
              position: "relative",
              height: "100%",
              overflow: "hidden",
              borderRadius: 86,
              background: C.superficie,
              paddingTop: 120,
            }}
          >
            <div
              style={{
                position: "absolute",
                top: 20,
                left: "50%",
                width: 200,
                height: 52,
                transform: "translateX(-50%)",
                borderRadius: 26,
                background: C.profundo,
                zIndex: 6,
              }}
            />
            {/* Reflejo muy tenue que cruza la pantalla, como el `.reflejo` de las fotos de la web */}
            <div
              style={{
                position: "absolute",
                inset: "-50%",
                background: "linear-gradient(115deg, transparent 43%, #ffffff17 49%, transparent 55%)",
                transform: `translateX(${interpolate(frame % f(9), [0, f(1.4), f(4.3)], [-65, -65, 65], clamp)}%)`,
                pointerEvents: "none",
                zIndex: 5,
                opacity: portada ? 0 : 1,
              }}
            />

            {/* Contenido de la pantalla: se desplaza hacia arriba, como un scroll, si la tarjeta de la
                explicación fuera a tapar la respuesta correcta. */}
            <div style={{ transform: `translateY(${-desplazamiento * pRecoger}px)` }}>
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "space-between",
                  padding: "0 56px 30px",
                }}
              >
                <ChevronLeft size={40} color={C.apagadoTexto} />
                <span
                  style={{
                    fontFamily: fuenteVisor,
                    fontSize: 22,
                    fontWeight: 700,
                    letterSpacing: "0.16em",
                    textTransform: "uppercase",
                    color: C.apagadoTexto,
                  }}
                >
                  Test de examen
                </span>
                <span
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: 8,
                    borderRadius: 3,
                    background: resuelta ? C.primario : C.suave,
                    color: resuelta ? C.sobrePrimario : C.suaveTexto,
                    padding: "8px 16px",
                    fontFamily: fuenteVisor,
                    fontSize: 26,
                    fontWeight: 700,
                    opacity: portada ? 0 : 1,
                  }}
                >
                  <Timer size={24} />
                  00:{String(restante).padStart(2, "0")}
                </span>
              </div>

              <div style={{ padding: "0 56px" }}>
                <div style={{ height: 8, background: C.borde, overflow: "hidden" }}>
                  <div style={{ height: "100%", width: `${progresoTest * 100}%`, background: C.primario }} />
                </div>
                <Visor tam={20} color={C.apagadoTexto} style={{ marginTop: 18 }}>
                  Pregunta de examen
                </Visor>
              </div>

              <p
                style={{
                  margin: 0,
                  padding: "36px 56px 0",
                  fontSize: 46 * escala,
                  fontWeight: 700,
                  lineHeight: 1.28,
                  opacity: pEnunciado,
                  transform: `translateY(${(1 - pEnunciado) * 30}px)`,
                }}
              >
                {enunciado}
              </p>

              <div style={{ display: "flex", flexDirection: "column", padding: `${20 * escala}px 56px 0` }}>
                {opciones.map((opcion, i) => {
                  const p = entrada(f(T_OPCIONES) + i * 5, 16);
                  const acierto = resuelta && i === correcta;
                  const apagada = resuelta && i !== correcta;
                  return (
                    <div
                      key={i}
                      style={{
                        position: "relative",
                        display: "flex",
                        alignItems: "center",
                        gap: 24,
                        padding: `${26 * escala * (apagada ? 1 - pRecoger : 1)}px 28px`,
                        marginTop: 20 * escala * (apagada ? 1 - pRecoger : 1),
                        maxHeight: apagada ? 260 * (1 - pRecoger) : undefined,
                        overflow: apagada && pRecoger > 0 ? "hidden" : undefined,
                        borderWidth: apagada ? 3 * (1 - pRecoger) : 3,
                        borderRadius: 4,
                        borderStyle: "solid",
                        borderColor: acierto ? C.primario : C.bordeFuerte,
                        background: acierto ? C.primario : C.superficieTintada,
                        color: acierto ? C.sobrePrimario : C.texto,
                        opacity: p * (apagada ? interpolate(pSolucion, [0, 1], [1, 0.4], clamp) * (1 - pRecoger) : 1),
                        transform: `translateX(${(1 - p) * 120}px) scale(${acierto ? 1 + pSolucion * 0.03 : 1})`,
                        boxShadow: acierto ? `0 0 0 ${10 * pSolucion}px ${C.primario}2e, 0 0 60px -10px ${C.primario}99` : "none",
                      }}
                    >
                      <span
                        style={{
                          flexShrink: 0,
                          width: 56,
                          height: 56,
                          borderRadius: 3,
                          display: "flex",
                          alignItems: "center",
                          justifyContent: "center",
                          fontFamily: fuenteVisor,
                          fontSize: 26,
                          fontWeight: 700,
                          border: `2px solid ${acierto ? C.sobrePrimario : C.bordeFuerte}`,
                          background: acierto ? C.sobrePrimario : C.superficieTenue,
                          color: acierto ? C.primario : C.apagadoTexto,
                        }}
                      >
                        {acierto ? <Check size={32} strokeWidth={3.5} /> : LETRAS[i]}
                      </span>
                      <span style={{ fontSize: 36 * escala, fontWeight: 600, lineHeight: 1.22 }}>{opcion}</span>
                      {acierto &&
                        [0, 1].map((k) => {
                          const onda = interpolate(
                            frame,
                            [f(t.solucion) + k * 6, f(t.solucion + 0.9) + k * 6],
                            [0, 1],
                            clamp,
                          );
                          return (
                            <span
                              key={k}
                              style={{
                                position: "absolute",
                                inset: -6,
                                borderRadius: 6,
                                border: `4px solid ${C.primario}`,
                                opacity: 1 - onda,
                                transform: `scale(${1 + onda * 0.12}, ${1 + onda * 0.6})`,
                              }}
                            />
                          );
                        })}
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Panel de visor: cuenta atrás */}
      {!resuelta && frame >= f(t.cuenta) && (
        <Panel
          style={{
            top: 575,
            right: 46,
            flexDirection: "column",
            gap: 14,
            padding: "28px 38px",
            opacity: pCuenta,
            transform: `scale(${0.6 + pCuenta * 0.4}) translateY(${flotar * -14}px)`,
          }}
        >
          <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
            <span style={{ width: 14, height: 14, borderRadius: "50%", background: C.rec, opacity: recParpadeo }} />
            <span style={{ fontFamily: fuenteVisor, fontSize: 20, fontWeight: 700, letterSpacing: "0.16em", color: C.apagadoTexto }}>
              TIEMPO
            </span>
          </div>
          <div style={{ position: "relative", width: 150, height: 150 }}>
            <svg width={150} height={150} style={{ transform: "rotate(-90deg)" }}>
              <circle cx={75} cy={75} r={64} stroke={C.borde} strokeWidth={10} fill="none" />
              <circle
                cx={75}
                cy={75}
                r={64}
                stroke={C.primario}
                strokeWidth={10}
                fill="none"
                strokeDasharray={2 * Math.PI * 64}
                strokeDashoffset={2 * Math.PI * 64 * (1 - progresoCuenta)}
              />
            </svg>
            <span
              style={{
                position: "absolute",
                inset: 0,
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                fontFamily: fuenteTitular,
                fontSize: 92,
                fontWeight: 800,
                color: C.texto,
                transform: `scale(${1 + Math.max(0, 1 - ((frame - f(t.cuenta)) % fps) / 8) * 0.18})`,
              }}
            >
              {restante}
            </span>
          </div>
        </Panel>
      )}

      {/* Al resolver, el panel de tiempo deja paso al emblema en su marco de visor */}
      {resuelta && (
        <div
          style={{
            position: "absolute",
            top: 570,
            right: 56,
            opacity: Math.min(1, pSolucion),
            transform: `scale(${pSolucion}) translateY(${flotar * -10}px)`,
          }}
        >
          <Emblema frame={frame} tam={140} />
        </div>
      )}

      {/* Panel de visor: explicación */}
      {frame >= f(t.explicacion) && (
        <Panel
          style={{
            left: 40,
            right: 40,
            bottom: 90,
            alignItems: "flex-start",
            opacity: Math.min(1, pExplicacion),
            transform: `translateY(${(1 - pExplicacion) * 260 + flotar * 10}px)`,
          }}
        >
          <span
            style={{
              flexShrink: 0,
              width: 84,
              height: 84,
              borderRadius: 4,
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              background: C.suave,
              color: C.primario,
              border: `2px solid ${C.primario}66`,
            }}
          >
            <Check size={46} strokeWidth={3} />
          </span>
          <div style={{ flex: 1 }}>
            <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between" }}>
              <span
                style={{
                  fontFamily: fuenteTitular,
                  fontSize: 44,
                  fontWeight: 700,
                  lineHeight: 1.05,
                  letterSpacing: "0.01em",
                  textTransform: "uppercase",
                }}
              >
                Entiende la respuesta
              </span>
              <Sparkles size={40} color={C.primario} />
            </div>
            <div
              style={{
                fontSize: 33 * escalaExplicacion,
                fontWeight: 500,
                lineHeight: 1.4,
                marginTop: 10,
                color: C.apagadoTexto,
              }}
            >
              {explicacion}
            </div>
          </div>
        </Panel>
      )}

      {/* Marco de visor de todo el encuadre, con la firma y las rayas del vídeo de lanzamiento */}
      <AbsoluteFill style={{ pointerEvents: "none" }}>
        <EsquinasVisor inset={26} largo={64} grosor={4} />
        <Rayas ancho={150} alto={14} style={{ position: "absolute", left: 60, bottom: 52 }} />
      </AbsoluteFill>

      {/* Cierre: la franja oscura de la web sube con una línea de barrido */}
      {frame >= f(t.cierre) && (
        <AbsoluteFill
          style={{
            background: C.profundo,
            color: C.texto,
            clipPath: `inset(${(1 - pCierre) * 100}% 0 0 0)`,
          }}
        >
          <div
            style={{
              position: "absolute",
              inset: 0,
              background: `radial-gradient(ellipse 80% 50% at 50% 38%, ${C.primario}30, transparent 65%)`,
            }}
          />
          <div
            style={{
              position: "absolute",
              inset: 0,
              backgroundImage: `linear-gradient(${C.primario}12 2px, transparent 2px), linear-gradient(90deg, ${C.primario}12 2px, transparent 2px)`,
              backgroundSize: "64px 64px",
            }}
          />
          <EsquinasVisor inset={26} largo={64} grosor={4} />
          <Visor tam={22} color={C.apagadoTexto} style={{ position: "absolute", top: 58, left: 64 }}>
            ProLince Academia
          </Visor>
          <Rayas ancho={150} alto={14} style={{ position: "absolute", left: 60, bottom: 52 }} />
          <AbsoluteFill
            style={{
              alignItems: "center",
              justifyContent: "center",
              flexDirection: "column",
              padding: "0 80px",
              opacity: Math.min(1, pCierreTexto),
              transform: `translateY(${(1 - pCierreTexto) * 80}px)`,
            }}
          >
            <Emblema frame={frame} tam={210} />
            <Visor tam={28} style={{ marginTop: 80 }}>
              Academia online de oposiciones
            </Visor>
            <div
              style={{
                marginTop: 26,
                fontFamily: fuenteTitular,
                fontSize: 168,
                fontWeight: 800,
                lineHeight: 0.92,
                textTransform: "uppercase",
                textAlign: "center",
              }}
            >
              <div>¿La has</div>
              <div
                style={{
                  display: "inline-block",
                  marginTop: 18,
                  padding: "8px 18px 0",
                  lineHeight: 0.95,
                  background: C.primario,
                  color: C.sobrePrimario,
                }}
              >
                acertado?
              </div>
            </div>
            <div style={{ marginTop: 40, fontSize: 40, lineHeight: 1.45, textAlign: "center", color: C.apagadoTexto }}>
              Temario, tests y simulacros cronometrados en un solo sitio.
            </div>
            <div
              style={{
                marginTop: 64,
                display: "flex",
                alignItems: "center",
                gap: 18,
                background: C.primario,
                color: C.sobrePrimario,
                fontFamily: fuenteTitular,
                fontSize: 54,
                fontWeight: 700,
                letterSpacing: "0.06em",
                textTransform: "uppercase",
                padding: "28px 64px",
                clipPath: "polygon(22px 0, 100% 0, 100% calc(100% - 22px), calc(100% - 22px) 100%, 0 100%, 0 22px)",
              }}
            >
              Empezar ahora
              <ArrowRight size={48} style={{ transform: `translateX(${Math.sin(frame / 5) * 5}px)` }} />
            </div>
            <div style={{ marginTop: 44, fontFamily: fuenteVisor, fontSize: 32, fontWeight: 700, letterSpacing: "0.06em" }}>
              prolinceacademia.com
            </div>
          </AbsoluteFill>
        </AbsoluteFill>
      )}
      {/* Línea de barrido del cierre */}
      {frame >= f(t.cierre) && pCierre < 1 && (
        <div
          style={{
            position: "absolute",
            left: 0,
            right: 0,
            top: (1 - pCierre) * height - 3,
            height: 6,
            background: C.primario,
            boxShadow: `0 0 40px 8px ${C.primario}88`,
          }}
        />
      )}
    </AbsoluteFill>
  );
};
