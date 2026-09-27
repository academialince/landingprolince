import { Check, ChevronLeft, Sparkles, Timer } from "lucide-react";
import { AbsoluteFill, interpolate, spring, useCurrentFrame, useVideoConfig } from "remotion";
import { z } from "zod";
import { BarraWeb, C, Cierre, clamp, Emblema, EscenaFondo, fontFamily, TarjetaFlotante } from "./comun";

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
  const flotar = Math.sin((frame / fps / 7) * Math.PI * 2);
  // Barra de progreso del móvil: 35 % como en la web; se completa al resolver.
  const progresoTest = interpolate(frame, [f(t.solucion), f(t.solucion + 0.6)], [0.35, 1], clamp);

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />

      <BarraWeb pNav={pNav} />

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

            <div style={{ display: "grid", gap: 20 * escala, padding: `${40 * escala}px 56px 0` }}>
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
                      padding: `${26 * escala}px 28px`,
                      borderRadius: 28,
                      border: `3px solid ${acierto ? C.primario : C.borde}`,
                      background: acierto ? C.primario : "#fff",
                      color: acierto ? "#fff" : C.texto,
                      opacity: p * (apagada ? interpolate(pSolucion, [0, 1], [1, 0.4], clamp) : 1),
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
        <Cierre
          frame={frame}
          pCierre={pCierre}
          pCierreTexto={pCierreTexto}
          width={width}
          height={height}
          titular={<>¿La has <span style={{ color: C.suave }}>acertado?</span></>}
        />
      )}
    </AbsoluteFill>
  );
};
