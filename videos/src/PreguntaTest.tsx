import "@fontsource-variable/manrope";
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

// Tokens de src/app/globals.css de la landing, pasados de OKLCH a hex.
export const C = {
  fondo: "#ffffff",
  texto: "#121b16",
  primario: "#03512d",
  suave: "#e3f4e8",
  suaveTexto: "#004624",
  profundo: "#002a15",
  apagado: "#f2f7f5",
  apagadoTexto: "#535e57",
  borde: "#dde4e0",
  bordeTarjeta: "#d1e6d9",
  punto: "#439b64",
  marcoMovil: "#0B1714",
};

export const fontFamily = "'Manrope Variable', Manrope, sans-serif";

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

/** Fondo del hero de la web: aura que respira, rejilla girada y partículas. */
export const EscenaFondo: React.FC<{ frame: number; fps: number }> = ({ frame, fps }) => {
  const s = frame / fps;
  const respira = (periodo: number, desfase = 0) => Math.sin(((s + desfase) / periodo) * Math.PI * 2);
  return (
    <AbsoluteFill style={{ overflow: "hidden" }}>
      <div
        style={{
          position: "absolute",
          inset: "18% -30% 8%",
          borderRadius: "50%",
          background: "radial-gradient(ellipse at 50% 45%, #a9e9bc88, #d8f5df88 40%, transparent 69%)",
          opacity: 0.82 + respira(8) * 0.18,
          transform: `scale(${1 + respira(8) * 0.04})`,
        }}
      />
      <div
        style={{
          position: "absolute",
          inset: "20% -40%",
          opacity: 0.32,
          backgroundImage:
            "linear-gradient(#03512d20 2px, transparent 2px), linear-gradient(90deg, #03512d20 2px, transparent 2px)",
          backgroundSize: "72px 72px",
          backgroundPosition: `0 ${s * 12}px`,
          transform: "rotate(-12deg)",
          maskImage: "radial-gradient(ellipse, black, transparent 70%)",
        }}
      />
      {[
        { top: "30%", left: "6%", tam: 12, d: 0 },
        { top: "78%", left: "90%", tam: 12, d: 2 },
        { top: "92%", left: "64%", tam: 8, d: 1 },
      ].map((p, i) => (
        <span
          key={i}
          style={{
            position: "absolute",
            top: p.top,
            left: p.left,
            width: p.tam,
            height: p.tam,
            borderRadius: "50%",
            background: C.punto,
            opacity: 0.82 + respira(4, p.d) * 0.18,
            transform: `scale(${1 + respira(4, p.d) * 0.04})`,
          }}
        />
      ))}
    </AbsoluteFill>
  );
};

/** Tarjeta flotante blanca, igual que las del hero. */
const TarjetaFlotante: React.FC<{ style: React.CSSProperties; children: React.ReactNode }> = ({ style, children }) => (
  <div
    style={{
      position: "absolute",
      display: "flex",
      alignItems: "center",
      gap: 28,
      border: `2px solid ${C.bordeTarjeta}`,
      background: "#ffffffed",
      borderRadius: 40,
      padding: 36,
      boxShadow: "0 36px 80px -36px #03512d55",
      ...style,
    }}
  >
    {children}
  </div>
);

/** Emblema con el aro discontinuo que gira, como en el hero. */
export const Emblema: React.FC<{ frame: number; tam: number }> = ({ frame, tam }) => (
  <div
    style={{
      position: "relative",
      padding: tam * 0.1,
      borderRadius: "50%",
      background: "#ffffffde",
      border: "2px solid #b9d7c4",
      boxShadow: "0 32px 72px -30px #03512d55",
    }}
  >
    <div
      style={{
        position: "absolute",
        inset: -tam * 0.12,
        borderRadius: "50%",
        border: "2px dashed #03512d45",
        transform: `rotate(${frame * 0.4}deg)`,
      }}
    />
    <Img src={staticFile("prolince-logo.svg")} style={{ width: tam, height: tam, display: "block" }} />
  </div>
);

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
  const { fps, width, height } = useVideoConfig();
  const t = tiempos(segundosCuenta);
  const f = (s: number) => Math.round(s * fps);
  const fotograma = useCurrentFrame();
  const portada = fotograma < FRAMES_PORTADA;
  const frame = portada ? f(t.cuenta) - 1 : fotograma - FRAMES_PORTADA;
  const entrada = (desde: number, damping = 200) =>
    spring({ frame: frame - desde, fps, config: { damping } });

  const resuelta = frame >= f(t.solucion);
  const pNav = entrada(0);
  const pSubrayado = interpolate(frame, [f(T_TITULAR + 0.5), f(T_TITULAR + 1.1)], [0, 1], clamp);
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
  const pCierre = interpolate(frame, [f(t.cierre), f(t.cierre + 0.7)], [0, 1], {
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

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />

      {/* Barra de navegación de la web */}
      <div
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          right: 0,
          height: 170,
          padding: "0 64px",
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          background: "#ffffffcc",
          borderBottom: `2px solid ${C.borde}`,
          opacity: pNav,
          transform: `translateY(${(1 - pNav) * -60}px)`,
        }}
      >
        <Img src={staticFile("prolince-logo.svg")} style={{ width: 96, height: 96 }} />
        <span style={{ fontSize: 38, fontWeight: 700 }}>prolinceacademia.com</span>
      </div>

      {/* Titular con el subrayado verde suave del hero */}
      <div style={{ position: "absolute", top: 230, left: 64, right: 64 }}>
        <div
          style={{
            color: C.primario,
            fontSize: 30,
            fontWeight: 700,
            letterSpacing: "0.08em",
            textTransform: "uppercase",
            opacity: entrada(f(T_TITULAR)),
          }}
        >
          {tema}
        </div>
        <div
          style={{
            marginTop: 18,
            fontSize: 88,
            fontWeight: 780,
            lineHeight: 1.06,
            letterSpacing: "-0.038em",
            display: "flex",
            flexWrap: "wrap",
            columnGap: 22,
          }}
        >
          {TITULAR.map((palabra, i) => {
            const p = entrada(f(T_TITULAR) + i * 4, 14);
            return (
              <span key={i} style={{ display: "inline-block", overflow: "hidden", paddingBottom: 8 }}>
                <span
                  style={{
                    position: "relative",
                    display: "inline-block",
                    zIndex: 0,
                    transform: `translateY(${(1 - p) * 110}%)`,
                  }}
                >
                  {palabra === "responder" && (
                    <span
                      style={{
                        position: "absolute",
                        left: 0,
                        bottom: 11,
                        height: "0.32em",
                        width: `${pSubrayado * 100}%`,
                        background: C.suave,
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

      {/* Móvil con la pantalla de test de la plataforma */}
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
            background: C.marcoMovil,
            padding: 26,
            transform: `rotateX(${(1 - pMovil) * 30}deg) rotate(${-5 + (1 - pMovil) * -10 + flotar * 1.2}deg)`,
            boxShadow: "44px 68px 120px -40px #023b3466, 0 0 0 4px #b3d7bd",
          }}
        >
          <div
            style={{
              position: "relative",
              height: "100%",
              overflow: "hidden",
              borderRadius: 86,
              background: C.fondo,
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
                background: C.marcoMovil,
              }}
            />
            {/* Brillo que cruza la pantalla */}
            <div
              style={{
                position: "absolute",
                inset: "-50%",
                background: "linear-gradient(115deg, transparent 43%, #ffffff70 49%, transparent 55%)",
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
                  fontSize: 24,
                  fontWeight: 700,
                  letterSpacing: "0.08em",
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
                  borderRadius: 999,
                  background: resuelta ? C.primario : C.suave,
                  color: resuelta ? "#fff" : C.suaveTexto,
                  padding: "8px 18px",
                  fontSize: 26,
                  fontWeight: 800,
                  fontVariantNumeric: "tabular-nums",
                  opacity: portada ? 0 : 1,
                }}
              >
                <Timer size={24} />
                00:{String(restante).padStart(2, "0")}
              </span>
            </div>

            <div style={{ padding: "0 56px" }}>
              <div style={{ height: 10, borderRadius: 5, background: C.apagado, overflow: "hidden" }}>
                <div
                  style={{
                    height: "100%",
                    width: `${progresoTest * 100}%`,
                    borderRadius: 5,
                    background: C.primario,
                  }}
                />
              </div>
              <p style={{ margin: "18px 0 0", fontSize: 24, fontWeight: 600, color: C.apagadoTexto }}>
                Pregunta de examen
              </p>
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
                      borderRadius: 28,
                      borderStyle: "solid",
                      borderColor: acierto ? C.primario : C.borde,
                      background: acierto ? C.primario : "#fff",
                      color: acierto ? "#fff" : C.texto,
                      opacity: p * (apagada ? interpolate(pSolucion, [0, 1], [1, 0.4], clamp) * (1 - pRecoger) : 1),
                      transform: `translateX(${(1 - p) * 120}px) scale(${acierto ? 1 + pSolucion * 0.03 : 1})`,
                      boxShadow: acierto ? `0 0 0 ${10 * pSolucion}px #03512d22, 0 24px 50px -20px #03512d88` : "none",
                    }}
                  >
                    <span
                      style={{
                        flexShrink: 0,
                        width: 56,
                        height: 56,
                        borderRadius: "50%",
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                        fontSize: 26,
                        fontWeight: 800,
                        background: acierto ? "#fff" : C.apagado,
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
                              borderRadius: 32,
                              border: `4px solid ${C.punto}`,
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

      {/* Tarjeta flotante: cuenta atrás */}
      {!resuelta && frame >= f(t.cuenta) && (
        <TarjetaFlotante
          style={{
            top: 560,
            right: 40,
            flexDirection: "column",
            gap: 14,
            padding: "30px 40px",
            opacity: pCuenta,
            transform: `scale(${0.6 + pCuenta * 0.4}) translateY(${flotar * -14}px)`,
          }}
        >
          <span style={{ fontSize: 20, fontWeight: 700, letterSpacing: "0.12em", color: C.apagadoTexto }}>
            TIEMPO
          </span>
          <div style={{ position: "relative", width: 150, height: 150 }}>
            <svg width={150} height={150} style={{ transform: "rotate(-90deg)" }}>
              <circle cx={75} cy={75} r={64} stroke={C.suave} strokeWidth={12} fill="none" />
              <circle
                cx={75}
                cy={75}
                r={64}
                stroke={C.primario}
                strokeWidth={12}
                fill="none"
                strokeLinecap="round"
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
                fontSize: 72,
                fontWeight: 800,
                color: C.primario,
                fontVariantNumeric: "tabular-nums",
                transform: `scale(${1 + Math.max(0, 1 - ((frame - f(t.cuenta)) % fps) / 8) * 0.18})`,
              }}
            >
              {restante}
            </span>
          </div>
        </TarjetaFlotante>
      )}

      {/* Al resolver, la tarjeta de tiempo deja paso al emblema */}
      {resuelta && (
        <div
          style={{
            position: "absolute",
            top: 560,
            right: 60,
            opacity: Math.min(1, pSolucion),
            transform: `scale(${pSolucion}) rotate(${(1 - pSolucion) * -40 + flotar * 6}deg)`,
          }}
        >
          <Emblema frame={frame} tam={150} />
        </div>
      )}

      {/* Tarjeta flotante: explicación */}
      {frame >= f(t.explicacion) && (
        <TarjetaFlotante
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
              borderRadius: 26,
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              background: C.suave,
              color: C.primario,
            }}
          >
            <Check size={46} strokeWidth={3} />
          </span>
          <div style={{ flex: 1 }}>
            <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between" }}>
              <span style={{ fontSize: 36, fontWeight: 800 }}>Entiende la respuesta.</span>
              <Sparkles size={40} color={C.punto} />
            </div>
            <div style={{ fontSize: 33 * escalaExplicacion, fontWeight: 500, lineHeight: 1.4, marginTop: 10, color: C.apagadoTexto }}>
              {explicacion}
            </div>
          </div>
        </TarjetaFlotante>
      )}

      {/* Cierre: la banda verde profunda de la web se abre en círculo */}
      {frame >= f(t.cierre) && (
        <AbsoluteFill
          style={{
            background: C.profundo,
            color: "#fff",
            clipPath: `circle(${pCierre * Math.hypot(width, height)}px at 50% 62%)`,
          }}
        >
          <div
            style={{
              position: "absolute",
              inset: "-20%",
              opacity: 0.18,
              backgroundImage:
                "linear-gradient(#ffffff22 2px, transparent 2px), linear-gradient(90deg, #ffffff22 2px, transparent 2px)",
              backgroundSize: "72px 72px",
              transform: "rotate(-12deg)",
              maskImage: "radial-gradient(ellipse, black, transparent 65%)",
            }}
          />
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
            <Emblema frame={frame} tam={220} />
            <div style={{ marginTop: 90, fontSize: 30, fontWeight: 700, letterSpacing: "0.08em", color: C.suave }}>
              ACADEMIA ONLINE DE OPOSICIONES
            </div>
            <div
              style={{
                marginTop: 24,
                fontSize: 120,
                fontWeight: 780,
                lineHeight: 1.04,
                letterSpacing: "-0.038em",
                textAlign: "center",
              }}
            >
              ¿La has <span style={{ color: C.suave }}>acertado?</span>
            </div>
            <div style={{ marginTop: 36, fontSize: 40, lineHeight: 1.45, textAlign: "center", color: "#ffffffa6" }}>
              Temario, tests y simulacros cronometrados en un solo sitio.
            </div>
            <div
              style={{
                marginTop: 64,
                display: "flex",
                alignItems: "center",
                gap: 18,
                background: "#fff",
                color: C.profundo,
                fontSize: 42,
                fontWeight: 700,
                padding: "34px 56px",
                borderRadius: 32,
              }}
            >
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
