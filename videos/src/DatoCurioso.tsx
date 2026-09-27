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
  fecha: z.string(),
  anio: z.number().int(),
  /** Año desde el que cuenta el contador (1844, fundación del Cuerpo). */
  anioDesde: z.number().int(),
  respuesta: z.string(),
  /** Fragmento literal de la respuesta que va en negrita verde. */
  resaltar: z.string(),
  /** Cifra del «Y además…» (contador animado); null si el dato no lleva número. */
  ademasCifra: z.number().int().nullable(),
  ademasTexto: z.string(),
});

type Props = z.infer<typeof curiosidadSchema>;

// Tramos en segundos.
const T_TITULAR = 0.3;
const T_FICHA = 1.0;
const T_PIENSA = 2.2;
const S_PIENSA = 3;
const T_RESPUESTA = T_PIENSA + S_PIENSA;
const T_TEXTO = T_RESPUESTA + 1.4;
const T_ADEMAS = T_TEXTO + 6;
const T_CIERRE = T_ADEMAS + 5.5;
const T_FIN = T_CIERRE + 3;

// Primer fotograma = portada (miniatura de Reels/TikTok): gancho y ficha con la incógnita, sin cuenta atrás.
export const FRAMES_PORTADA = 1;
export const duracionCuriosidad = (fps: number) => FRAMES_PORTADA + Math.round(T_FIN * fps);

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

export const DatoCurioso: React.FC<Props> = ({
  etiqueta,
  gancho,
  destacar,
  fecha,
  anio,
  anioDesde,
  respuesta,
  resaltar,
  ademasCifra,
  ademasTexto,
}) => {
  const { fps, width, height } = useVideoConfig();
  const f = (s: number) => Math.round(s * fps);
  const fotograma = useCurrentFrame();
  const portada = fotograma < FRAMES_PORTADA;
  const frame = portada ? f(T_PIENSA) - 1 : fotograma - FRAMES_PORTADA;
  const entrada = (desde: number, damping = 200) => spring({ frame: frame - desde, fps, config: { damping } });

  const revelada = frame >= f(T_RESPUESTA);
  const pNav = entrada(0);
  const pSubrayado = interpolate(frame, [f(T_TITULAR + 0.6), f(T_TITULAR + 1.2)], [0, 1], clamp);
  const pFicha = entrada(f(T_FICHA), 18);
  const pPiensa = entrada(f(T_PIENSA), 14);
  const pRevela = entrada(f(T_RESPUESTA), 12);
  const pTexto = entrada(f(T_TEXTO));
  const pAdemas = entrada(f(T_ADEMAS), 16);
  const pCierre = interpolate(frame, [f(T_CIERRE), f(T_CIERRE + 0.7)], [0, 1], {
    ...clamp,
    easing: (x) => 1 - Math.pow(1 - x, 3),
  });
  const pCierreTexto = entrada(f(T_CIERRE + 0.35));
  const flotar = Math.sin((frame / fps / 7) * Math.PI * 2);

  const restante = Math.max(0, Math.ceil(S_PIENSA - (frame - f(T_PIENSA)) / fps));
  const progresoPiensa = interpolate(frame, [f(T_PIENSA), f(T_RESPUESTA)], [1, 0], clamp);
  const anioVisible = Math.round(
    interpolate(frame, [f(T_RESPUESTA), f(T_RESPUESTA + 1.3)], [anioDesde, anio], {
      ...clamp,
      easing: (x) => 1 - Math.pow(1 - x, 3),
    }),
  );
  const cifraVisible = Math.round(
    interpolate(frame, [f(T_ADEMAS + 0.3), f(T_ADEMAS + 1.8)], [0, ademasCifra ?? 0], {
      ...clamp,
      easing: (x) => 1 - Math.pow(1 - x, 3),
    }),
  );

  // Los ganchos y respuestas largos reducen la letra para no cortarse.
  const escalaGancho = Math.min(1, Math.max(0.66, 1 - (gancho.length - 36) / 80));
  const escalaRespuesta = Math.min(1, Math.max(0.78, 1 - (respuesta.length - 200) / 400));
  const palabras = gancho.split(" ");

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />
      <BarraWeb pNav={pNav} />

      {/* Etiqueta y gancho con el subrayado verde suave del hero */}
      <div style={{ position: "absolute", top: 230, left: 64, right: 64 }}>
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
      </div>

      {/* Ficha del dato: incógnita hasta la cuenta atrás, luego año y respuesta */}
      <div
        style={{
          position: "absolute",
          left: 64,
          right: 64,
          top: 740,
          height: 800,
          borderRadius: 56,
          border: `2px solid ${C.bordeTarjeta}`,
          background: "#ffffffee",
          boxShadow: "0 44px 110px -44px #03512d66",
          padding: "56px 60px",
          overflow: "hidden",
          opacity: pFicha,
          transform: `translateY(${(1 - pFicha) * 900 + flotar * 12}px) rotate(${(1 - pFicha) * -6 + flotar * 0.4}deg)`,
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
        <span
          style={{
            display: "inline-flex",
            alignItems: "center",
            gap: 12,
            borderRadius: 999,
            background: revelada ? C.primario : C.suave,
            color: revelada ? "#fff" : C.suaveTexto,
            padding: "12px 26px",
            fontSize: 30,
            fontWeight: 700,
          }}
        >
          <CalendarDays size={30} />
          {revelada ? fecha : "¿Cuándo y por qué?"}
        </span>

        {!revelada ? (
          <div
            style={{
              height: 560,
              display: "flex",
              flexDirection: "column",
              alignItems: "center",
              justifyContent: "center",
              gap: 36,
            }}
          >
            <div
              style={{
                width: 260,
                height: 260,
                borderRadius: "50%",
                background: C.suave,
                color: C.primario,
                display: "flex",
                alignItems: "center",
                justifyContent: "center",
                fontSize: 190,
                fontWeight: 800,
                transform: `scale(${1 + Math.sin(frame / 6) * 0.03})`,
              }}
            >
              ?
            </div>
            <div style={{ fontSize: 44, fontWeight: 700, color: C.apagadoTexto }}>¿Lo sabías?</div>
          </div>
        ) : (
          <>
            <div
              style={{
                marginTop: 20,
                fontSize: 230,
                fontWeight: 800,
                lineHeight: 1,
                letterSpacing: "-0.05em",
                color: C.primario,
                fontVariantNumeric: "tabular-nums",
                transform: `scale(${0.85 + Math.min(1, pRevela) * 0.15})`,
                transformOrigin: "left center",
              }}
            >
              {anioVisible}
            </div>
            <p
              style={{
                margin: "34px 0 0",
                fontSize: 42 * escalaRespuesta,
                fontWeight: 600,
                lineHeight: 1.36,
                color: C.texto,
                opacity: pTexto,
                transform: `translateY(${(1 - pTexto) * 40}px)`,
              }}
            >
              <Resaltado texto={respuesta} resaltar={resaltar} />
            </p>
          </>
        )}
      </div>

      {/* Tarjeta flotante: cuenta atrás para pensar */}
      {!revelada && frame >= f(T_PIENSA) && (
        <TarjetaFlotante
          style={{
            top: 650,
            right: 30,
            flexDirection: "column",
            gap: 14,
            padding: "30px 40px",
            opacity: pPiensa,
            transform: `scale(${0.6 + pPiensa * 0.4}) translateY(${flotar * -14}px)`,
          }}
        >
          <span style={{ fontSize: 20, fontWeight: 700, letterSpacing: "0.12em", color: C.apagadoTexto }}>PIENSA</span>
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
                strokeDashoffset={2 * Math.PI * 64 * (1 - progresoPiensa)}
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
                transform: `scale(${1 + Math.max(0, 1 - ((frame - f(T_PIENSA)) % fps) / 8) * 0.18})`,
              }}
            >
              {restante}
            </span>
          </div>
        </TarjetaFlotante>
      )}

      {/* Al revelar, la cuenta atrás deja paso al emblema */}
      {revelada && (
        <div
          style={{
            position: "absolute",
            top: 660,
            right: 50,
            opacity: Math.min(1, pRevela),
            transform: `scale(${pRevela}) rotate(${(1 - pRevela) * -40 + flotar * 6}deg)`,
          }}
        >
          <Emblema frame={frame} tam={140} />
        </div>
      )}

      {/* Tarjeta flotante: «Y además…» con contador */}
      {frame >= f(T_ADEMAS) && (
        <TarjetaFlotante
          style={{
            left: 40,
            right: 40,
            bottom: 60,
            alignItems: "center",
            opacity: Math.min(1, pAdemas),
            transform: `translateY(${(1 - pAdemas) * 260 + flotar * 10}px)`,
          }}
        >
          {ademasCifra !== null && (
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
              {cifraVisible}
            </span>
          )}
          <div style={{ flex: 1 }}>
            <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between" }}>
              <span style={{ fontSize: 38, fontWeight: 800 }}>Y además…</span>
              <Sparkles size={40} color={C.punto} />
            </div>
            <div style={{ fontSize: 34, fontWeight: 500, lineHeight: 1.38, marginTop: 10, color: C.apagadoTexto }}>
              {ademasTexto}
            </div>
          </div>
        </TarjetaFlotante>
      )}

      {frame >= f(T_CIERRE) && (
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
