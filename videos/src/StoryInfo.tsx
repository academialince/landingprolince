import { ArrowRight, BookOpen, Check, Lightbulb, TriangleAlert } from "lucide-react";
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
import { C, Emblema, EscenaFondo, fontFamily } from "./marca";

export const storySchema = z.object({
  id: z.string(),
  tipo: z.enum(["dato", "consejo", "trampa"]),
  /** Tema del programa («Tema 4 · Derecho Constitucional»); vacío en los consejos generales. */
  tema: z.string().optional(),
  /** Titular. Lo que va entre **dobles asteriscos** se resalta en verde. */
  titulo: z.string(),
  /** Cifra grande opcional («169» + «artículos»). Si es un número, cuenta hacia arriba salvo contar: false. */
  destacado: z
    .object({ valor: z.string(), etiqueta: z.string(), contar: z.boolean().optional() })
    .optional(),
  /** De 1 a 4 puntos. «Clave | Valor» se pinta como fila de dos columnas (fechas, plazos…). */
  puntos: z.array(z.string()).min(1).max(4),
  /** Frase del cierre; si falta, una por defecto según el tipo. */
  cierre: z.string().optional(),
});

export type Story = z.infer<typeof storySchema>;

const TIPOS = {
  dato: { etiqueta: "Dato del temario", Icono: BookOpen, acento: C.primario, fondoAcento: C.suave, cierre: "Guárdala para tu repaso" },
  consejo: { etiqueta: "Consejo de estudio", Icono: Lightbulb, acento: C.primario, fondoAcento: C.suave, cierre: "¿Lo aplicas desde hoy?" },
  trampa: { etiqueta: "Ojo con la trampa", Icono: TriangleAlert, acento: "#9a3412", fondoAcento: "#ffedd5", cierre: "Que no te la cuelen en el examen" },
} as const;

// Instagram tapa unos 250 px arriba (barra de progreso y perfil) y unos 340 abajo (respuesta y
// enlaces): todo el contenido vive entre esas dos franjas.
const SEGURO_ARRIBA = 250;
const SEGURO_ABAJO = 340;

// Tramos en segundos.
const T_TITULO = 0.45;
const T_CUERPO = 1.7;
const T_DESTACADO = 1.4;
const T_LECTURA = 2.2;
const T_CIERRE = 3.2;

/** Tiempo de lectura de un punto: unas 14 letras por segundo, nunca menos de 1,6 s. */
const lecturaPunto = (texto: string) => Math.max(1.6, texto.replace(/\*\*/g, "").length / 14);

const tiempos = (s: Pick<Story, "destacado" | "puntos">) => {
  const puntos = T_CUERPO + (s.destacado ? T_DESTACADO : 0);
  const inicios: number[] = [];
  let t = puntos;
  for (const p of s.puntos) {
    inicios.push(t);
    t += lecturaPunto(p);
  }
  const cierre = t + T_LECTURA;
  return { inicios, cierre, fin: cierre + T_CIERRE };
};

export const duracionStory = (s: Pick<Story, "destacado" | "puntos">, fps: number) =>
  Math.round(tiempos(s).fin * fps);

/** Fotograma para la miniatura: el cuerpo completo justo antes del cierre. */
export const fotogramaPortada = (s: Pick<Story, "destacado" | "puntos">, fps: number) =>
  Math.round((tiempos(s).cierre - 0.2) * fps);

const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;

/** Pinta **así** en verde con el subrayado suave de la web. */
const Resaltado: React.FC<{ texto: string; color: string; fondo: string }> = ({ texto, color, fondo }) => (
  <>
    {texto.split(/(\*\*[^*]+\*\*)/g).map((trozo, i) =>
      trozo.startsWith("**") ? (
        <span
          key={i}
          style={{
            color,
            fontWeight: 800,
            backgroundImage: `linear-gradient(transparent 62%, ${fondo} 62%)`,
          }}
        >
          {trozo.slice(2, -2)}
        </span>
      ) : (
        <span key={i}>{trozo}</span>
      ),
    )}
  </>
);

export const StoryInfo: React.FC<Story> = (story) => {
  const { tipo, tema, titulo, destacado, puntos } = story;
  const { fps, width, height } = useVideoConfig();
  const frame = useCurrentFrame();
  const f = (s: number) => Math.round(s * fps);
  const t = tiempos(story);
  const estilo = TIPOS[tipo];
  const entrada = (desde: number, damping = 200) => spring({ frame: frame - desde, fps, config: { damping } });

  const pMarca = entrada(0);
  const pEtiqueta = entrada(f(0.2), 14);
  const pDestacado = entrada(f(T_CUERPO), 14);
  const pCierre = interpolate(frame, [f(t.cierre), f(t.cierre + 0.7)], [0, 1], {
    ...clamp,
    easing: (x) => 1 - Math.pow(1 - x, 3),
  });
  const pCierreTexto = entrada(f(t.cierre + 0.35));
  const flotar = Math.sin((frame / fps / 6) * Math.PI * 2);

  // Los titulares largos bajan de tamaño para no invadir el cuerpo.
  const letrasTitulo = titulo.replace(/\*\*/g, "").length;
  const letraTitulo = Math.round(Math.min(100, Math.max(70, 100 - (letrasTitulo - 30) * 0.9)));
  // Cada palabra (o grupo **resaltado**) con su puntuación pegada, para que «?» no salte suelto.
  const palabras = titulo.match(/\*\*[^*]+\*\*\S*|\S+/g) ?? [];

  const numero = destacado && /^\d+$/.test(destacado.valor) && destacado.contar !== false ? Number(destacado.valor) : null;
  const valorDestacado =
    numero === null
      ? destacado?.valor
      : String(Math.round(numero * interpolate(frame, [f(T_CUERPO), f(T_CUERPO + 1)], [0, 1], { ...clamp, easing: (x) => 1 - Math.pow(1 - x, 3) })));

  const letraPunto = puntos.length > 3 && destacado ? 42 : 48;

  return (
    <AbsoluteFill style={{ backgroundColor: C.fondo, fontFamily, color: C.texto }}>
      <EscenaFondo frame={frame} fps={fps} />

      <div
        style={{
          position: "absolute",
          top: SEGURO_ARRIBA,
          bottom: SEGURO_ABAJO,
          left: 72,
          right: 72,
          display: "flex",
          flexDirection: "column",
        }}
      >
        {/* Marca */}
        <div
          style={{
            display: "flex",
            alignItems: "center",
            gap: 20,
            opacity: pMarca,
            transform: `translateY(${(1 - pMarca) * -40}px)`,
          }}
        >
          <Img src={staticFile("prolince-logo.svg")} style={{ width: 76, height: 76 }} />
          <span style={{ fontSize: 34, fontWeight: 700 }}>prolinceacademia.com</span>
        </div>

        {/* El cuerpo se centra en el hueco que queda bajo la marca */}
        <div style={{ flex: 1, display: "flex", flexDirection: "column", justifyContent: "center", marginTop: 40, paddingBottom: 40 }}>
        {/* Etiqueta del tipo y tema */}
        <div style={{ display: "flex", alignItems: "center", gap: 20, flexWrap: "wrap" }}>
          <span
            style={{
              display: "flex",
              alignItems: "center",
              gap: 14,
              padding: "14px 26px",
              borderRadius: 999,
              background: estilo.fondoAcento,
              color: estilo.acento,
              fontSize: 28,
              fontWeight: 800,
              letterSpacing: "0.08em",
              textTransform: "uppercase",
              opacity: pEtiqueta,
              transform: `scale(${0.7 + pEtiqueta * 0.3})`,
              transformOrigin: "left center",
            }}
          >
            <estilo.Icono size={34} strokeWidth={2.6} />
            {estilo.etiqueta}
          </span>
        </div>
        {tema && (
          <div
            style={{
              marginTop: 22,
              fontSize: 30,
              fontWeight: 700,
              color: C.apagadoTexto,
              opacity: entrada(f(0.35)),
            }}
          >
            {tema}
          </div>
        )}

        {/* Titular palabra a palabra */}
        <div
          style={{
            marginTop: 30,
            fontSize: letraTitulo,
            fontWeight: 780,
            lineHeight: 1.08,
            letterSpacing: "-0.035em",
            display: "flex",
            flexWrap: "wrap",
            columnGap: letraTitulo * 0.24,
          }}
        >
          {palabras.map((palabra, i) => {
            const p = entrada(f(T_TITULO) + i * 3, 14);
            return (
              <span key={i} style={{ display: "inline-block", overflow: "hidden", paddingBottom: 6 }}>
                <span style={{ display: "inline-block", transform: `translateY(${(1 - p) * 110}%)` }}>
                  <Resaltado texto={palabra} color={estilo.acento} fondo={estilo.fondoAcento} />
                </span>
              </span>
            );
          })}
        </div>

        {/* Cifra destacada */}
        {destacado && (
          <div
            style={{
              marginTop: 40,
              display: "flex",
              alignItems: "baseline",
              gap: 28,
              opacity: pDestacado,
              transform: `translateY(${(1 - pDestacado) * 60}px)`,
            }}
          >
            <span
              style={{
                fontSize: 210,
                fontWeight: 800,
                lineHeight: 0.9,
                letterSpacing: "-0.05em",
                color: estilo.acento,
                fontVariantNumeric: "tabular-nums",
              }}
            >
              {valorDestacado}
            </span>
            <span style={{ fontSize: 44, fontWeight: 700, color: C.apagadoTexto, lineHeight: 1.15 }}>
              {destacado.etiqueta}
            </span>
          </div>
        )}

        {/* Puntos */}
        <div style={{ marginTop: 44, display: "flex", flexDirection: "column", gap: 26 }}>
          {puntos.map((punto, i) => {
            const p = entrada(f(t.inicios[i]), 16);
            const pares = punto.includes("|");
            const [clave, valor] = punto.split("|").map((s) => s.trim());
            return (
              <div
                key={i}
                style={{
                  display: "flex",
                  alignItems: pares ? "center" : "flex-start",
                  gap: 26,
                  padding: "34px 36px",
                  borderRadius: 32,
                  border: `2px solid ${C.bordeTarjeta}`,
                  background: "#ffffffee",
                  boxShadow: "0 30px 60px -36px #03512d55",
                  opacity: p,
                  transform: `translateX(${(1 - p) * 140}px)`,
                }}
              >
                <span
                  style={{
                    flexShrink: 0,
                    width: 60,
                    height: 60,
                    borderRadius: 20,
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    background: estilo.fondoAcento,
                    color: estilo.acento,
                    fontSize: 30,
                    fontWeight: 800,
                  }}
                >
                  {tipo === "consejo" ? i + 1 : <Check size={34} strokeWidth={3.2} />}
                </span>
                {pares ? (
                  <div style={{ flex: 1, display: "flex", justifyContent: "space-between", alignItems: "baseline", gap: 20 }}>
                    <span style={{ fontSize: letraPunto - 2, fontWeight: 600, color: C.apagadoTexto, lineHeight: 1.25 }}>
                      <Resaltado texto={clave} color={estilo.acento} fondo={estilo.fondoAcento} />
                    </span>
                    <span style={{ fontSize: letraPunto, fontWeight: 800, textAlign: "right", lineHeight: 1.2, whiteSpace: "nowrap" }}>
                      <Resaltado texto={valor} color={estilo.acento} fondo={estilo.fondoAcento} />
                    </span>
                  </div>
                ) : (
                  <span style={{ fontSize: letraPunto, fontWeight: 600, lineHeight: 1.3, paddingTop: 6 }}>
                    <Resaltado texto={punto} color={estilo.acento} fondo={estilo.fondoAcento} />
                  </span>
                )}
              </div>
            );
          })}
        </div>
        </div>
      </div>

      {/* Cierre: la banda verde profunda de la web se abre en círculo */}
      {frame >= f(t.cierre) && (
        <AbsoluteFill
          style={{
            background: C.profundo,
            color: "#fff",
            clipPath: `circle(${pCierre * Math.hypot(width, height)}px at 50% 50%)`,
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
              top: SEGURO_ARRIBA,
              bottom: SEGURO_ABAJO,
              alignItems: "center",
              justifyContent: "center",
              flexDirection: "column",
              padding: "0 80px",
              opacity: Math.min(1, pCierreTexto),
              transform: `translateY(${(1 - pCierreTexto) * 80}px)`,
            }}
          >
            <div style={{ transform: `translateY(${flotar * 10}px)` }}>
              <Emblema frame={frame} tam={200} />
            </div>
            <div style={{ marginTop: 80, fontSize: 30, fontWeight: 700, letterSpacing: "0.08em", color: C.suave }}>
              OPOSICIÓN GUARDIA CIVIL
            </div>
            <div
              style={{
                marginTop: 24,
                fontSize: 96,
                fontWeight: 780,
                lineHeight: 1.06,
                letterSpacing: "-0.035em",
                textAlign: "center",
              }}
            >
              {story.cierre ?? estilo.cierre}
            </div>
            <div
              style={{
                marginTop: 64,
                display: "flex",
                alignItems: "center",
                gap: 18,
                background: "#fff",
                color: C.profundo,
                fontSize: 40,
                fontWeight: 700,
                padding: "30px 52px",
                borderRadius: 32,
              }}
            >
              prolinceacademia.com
              <ArrowRight size={42} style={{ transform: `translateX(${Math.sin(frame / 5) * 5}px)` }} />
            </div>
          </AbsoluteFill>
        </AbsoluteFill>
      )}
    </AbsoluteFill>
  );
};
