import { CalendarDays, Lightbulb, Sparkles } from "lucide-react";
import { AbsoluteFill, interpolate, spring, useCurrentFrame, useVideoConfig } from "remotion";
import { z } from "zod";
import { BarraWeb, C, Cierre, clamp, Emblema, EscenaFondo, fontFamily, TarjetaFlotante } from "./comun";

export const curiosidadSchema = z.object({
  id: z.string(),
  etiqueta: z.string(),
  gancho: z.string(),
  /** Palabra del gancho que lleva el subrayado verde suave. */
  destacar: z.string(),
  /** Fecha del hecho para la etiqueta de la ficha; vacía si no aporta. */
  fecha: z.string(),
  respuesta: z.string(),
  /** Fragmento literal de la respuesta que va en negrita verde. */
  resaltar: z.string(),
  /** Número grande opcional en la ficha (un año, una cifra); null si el dato no lo necesita. */
  cifra: z.object({ valor: z.number().int(), desde: z.number().int() }).nullable(),
  /** Tarjeta «Y además…» opcional, con o sin número. */
  ademas: z.object({ texto: z.string(), cifra: z.number().int().nullable() }).nullable(),
});

type Props = z.infer<typeof curiosidadSchema>;

// Tramos en segundos. No es un test: sin cuenta atrás, el dato se cuenta directamente
// y cada bloque se queda en pantalla el tiempo de leerlo.
const T_TITULAR = 0.3;
const T_FICHA = 1.0;
const T_TEXTO = 1.5;
const T_CIERRE = 3;
const LETRAS_POR_SEGUNDO = 30;

const tiempos = ({ respuesta, ademas }: Pick<Props, "respuesta" | "ademas">) => {
  const lecturaRespuesta = Math.max(5, respuesta.length / LETRAS_POR_SEGUNDO + 1.5);
  const ademasEn = T_TEXTO + lecturaRespuesta;
  const cierre = ademas ? ademasEn + Math.max(4, ademas.texto.length / LETRAS_POR_SEGUNDO + 2.5) : ademasEn;
  return { ademasEn, cierre, fin: cierre + T_CIERRE };
};

// El primer fotograma es la portada (miniatura de Reels/TikTok): una captura del contenido completo
// en pantalla, justo antes del cierre. Después arranca la animación desde cero.
export const FRAMES_PORTADA = 1;
export const duracionCuriosidad = (props: Pick<Props, "respuesta" | "ademas">, fps: number) =>
  FRAMES_PORTADA + Math.round(tiempos(props).fin * fps);

const Resaltado: React.FC<{ texto: string; resaltar: string }> = ({ texto, resaltar }) => {
  const i = resaltar ? texto.indexOf(resaltar) : -1;
  if (i < 0) return <>{texto}</>;
  return (
    <>
      {texto.slice(0, i)}
      <strong style={{ color: C.primario, fontWeight: 800 }}>{resaltar}</strong>
      {texto.slice(i + resaltar.length)}
    </>
  );
};

export const DatoCurioso: React.FC<Props> = (props) => {
  const { etiqueta, gancho, destacar, fecha, respuesta, resaltar, cifra, ademas } = props;
  const { fps, width, height } = useVideoConfig();
  const t = tiempos(props);
  const f = (s: number) => Math.round(s * fps);
  const fotograma = useCurrentFrame();
  const portada = fotograma < FRAMES_PORTADA;
  const frame = portada ? f(t.cierre) - 1 : fotograma - FRAMES_PORTADA;
  const entrada = (desde: number, damping = 200) => spring({ frame: frame - desde, fps, config: { damping } });
  const cuenta = (desde: number, hasta: number, inicio: number) =>
    Math.round(
      interpolate(frame, [f(inicio), f(inicio + 1.4)], [desde, hasta], {
        ...clamp,
        easing: (x) => 1 - Math.pow(1 - x, 3),
      }),
    );

  const pNav = entrada(0);
  const pSubrayado = interpolate(frame, [f(T_TITULAR + 0.6), f(T_TITULAR + 1.2)], [0, 1], clamp);
  const pFicha = entrada(f(T_FICHA), 18);
  const pSello = entrada(f(T_FICHA + 0.5), 12);
  const pTexto = entrada(f(T_TEXTO));
  const pAdemas = entrada(f(t.ademasEn), 16);
  const pCierre = interpolate(frame, [f(t.cierre), f(t.cierre + 0.7)], [0, 1], {
    ...clamp,
    easing: (x) => 1 - Math.pow(1 - x, 3),
  });
  const pCierreTexto = entrada(f(t.cierre + 0.35));
  const flotar = Math.sin((frame / fps / 7) * Math.PI * 2);

  // Los ganchos y respuestas largos reducen la letra para no cortarse; sin cifra grande, la respuesta gana tamaño.
  const escalaGancho = Math.min(1, Math.max(0.66, 1 - (gancho.length - 36) / 80));
  const letraRespuesta = (cifra ? 42 : 48) * Math.min(1, Math.max(0.74, 1 - (respuesta.length - 200) / 400));
  const palabras = gancho.split(" ");

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />
      <BarraWeb pNav={pNav} />

      <div
        style={{
          position: "absolute",
          top: 230,
          bottom: 70,
          left: 64,
          right: 64,
          display: "flex",
          flexDirection: "column",
        }}
      >
        {/* Etiqueta y gancho con el subrayado verde suave del hero */}
        <div
          style={{
            display: "flex",
            alignItems: "center",
            gap: 14,
            color: C.primario,
            fontSize: 30,
            fontWeight: 700,
            letterSpacing: "0.08em",
            textTransform: "uppercase",
            opacity: entrada(f(T_TITULAR)),
          }}
        >
          <Lightbulb size={34} strokeWidth={2.4} />
          {etiqueta}
        </div>
        <div
          style={{
            marginTop: 18,
            fontSize: 108 * escalaGancho,
            fontWeight: 780,
            lineHeight: 1.06,
            letterSpacing: "-0.038em",
            display: "flex",
            flexWrap: "wrap",
            columnGap: 24 * escalaGancho,
          }}
        >
          {palabras.map((palabra, i) => {
            const p = entrada(f(T_TITULAR) + i * 4, 14);
            const conSubrayado = destacar && palabra.includes(destacar);
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
                  {conSubrayado && (
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

        {/* Ficha y «Y además…» centradas en el espacio que queda, con o sin cifras */}
        <div style={{ flex: 1, display: "flex", flexDirection: "column", justifyContent: "center", gap: 44 }}>
          <div
            style={{
              position: "relative",
              opacity: pFicha,
              transform: `translateY(${(1 - pFicha) * 900 + flotar * 12}px) rotate(${(1 - pFicha) * -6 + flotar * 0.4}deg)`,
            }}
          >
            <div
              style={{
                position: "relative",
                borderRadius: 56,
                border: `2px solid ${C.bordeTarjeta}`,
                background: "#ffffffee",
                boxShadow: "0 44px 110px -44px #03512d66",
                padding: "56px 60px 60px",
                overflow: "hidden",
              }}
            >
              {/* Brillo que cruza la ficha, como en el móvil de la pregunta del día */}
              <div
                style={{
                  position: "absolute",
                  inset: "-50%",
                  background: "linear-gradient(115deg, transparent 43%, #ffffff90 49%, transparent 55%)",
                  transform: `translateX(${interpolate(frame % f(9), [0, f(1.4), f(4.3)], [-65, -65, 65], clamp)}%)`,
                  pointerEvents: "none",
                  zIndex: 5,
                  opacity: portada ? 0 : 1,
                }}
              />
              {fecha && (
                <span
                  style={{
                    display: "inline-flex",
                    alignItems: "center",
                    gap: 12,
                    borderRadius: 999,
                    background: C.primario,
                    color: "#fff",
                    padding: "12px 26px",
                    fontSize: 30,
                    fontWeight: 700,
                  }}
                >
                  <CalendarDays size={30} />
                  {fecha}
                </span>
              )}
              {cifra && (
                <div
                  style={{
                    marginTop: 20,
                    fontSize: 230,
                    fontWeight: 800,
                    lineHeight: 1,
                    letterSpacing: "-0.05em",
                    color: C.primario,
                    fontVariantNumeric: "tabular-nums",
                  }}
                >
                  {cuenta(cifra.desde, cifra.valor, T_TEXTO)}
                </div>
              )}
              <p
                style={{
                  margin: fecha || cifra ? "34px 0 0" : 0,
                  fontSize: letraRespuesta,
                  fontWeight: 600,
                  lineHeight: 1.38,
                  color: C.texto,
                  opacity: pTexto,
                  transform: `translateY(${(1 - pTexto) * 40}px)`,
                }}
              >
                <Resaltado texto={respuesta} resaltar={resaltar} />
              </p>
            </div>
            {/* Sello con el emblema en la esquina de la ficha */}
            <div
              style={{
                position: "absolute",
                top: -80,
                right: -24,
                opacity: Math.min(1, pSello),
                transform: `scale(${pSello}) rotate(${(1 - pSello) * -40 + flotar * 6}deg)`,
              }}
            >
              <Emblema frame={frame} tam={130} />
            </div>
          </div>

          {ademas && (
            <TarjetaFlotante
              style={{
                position: "relative",
                alignItems: "center",
                opacity: frame >= f(t.ademasEn) ? Math.min(1, pAdemas) : 0,
                transform: `translateY(${(1 - pAdemas) * 260 + flotar * 10}px)`,
              }}
            >
              {ademas.cifra !== null && (
                <span
                  style={{
                    flexShrink: 0,
                    minWidth: 250,
                    padding: "18px 26px",
                    borderRadius: 30,
                    background: C.suave,
                    color: C.primario,
                    fontSize: 120,
                    fontWeight: 800,
                    letterSpacing: "-0.04em",
                    textAlign: "center",
                    fontVariantNumeric: "tabular-nums",
                  }}
                >
                  {cuenta(0, ademas.cifra, t.ademasEn + 0.3)}
                </span>
              )}
              <div style={{ flex: 1 }}>
                <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between" }}>
                  <span style={{ fontSize: 38, fontWeight: 800 }}>Y además…</span>
                  <Sparkles size={40} color={C.punto} />
                </div>
                <div style={{ fontSize: 34, fontWeight: 500, lineHeight: 1.38, marginTop: 10, color: C.apagadoTexto }}>
                  {ademas.texto}
                </div>
              </div>
            </TarjetaFlotante>
          )}
        </div>
      </div>

      {frame >= f(t.cierre) && (
        <Cierre
          frame={frame}
          pCierre={pCierre}
          pCierreTexto={pCierreTexto}
          width={width}
          height={height}
          titular={
            <>
              ¿Lo <span style={{ color: C.suave }}>sabías?</span>
            </>
          }
        />
      )}
    </AbsoluteFill>
  );
};
