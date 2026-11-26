import { ArrowRight, Check, ChevronDown, ChevronUp, Flame, MessageCircle, Target, Trophy } from "lucide-react";
import { AbsoluteFill, Easing, interpolate, useCurrentFrame } from "remotion";
import {
  Boton,
  Eyebrow,
  FondoTactico,
  Logo,
  Pildora,
  Rayas,
  Sube,
  useEntrada,
  usePop,
} from "../uco/Piezas";
import { C, EASE, F, FPS, T, clamp, crearEn } from "../uco/tokens";
import { PALABRAS } from "./palabras";

export const en = crearEn(PALABRAS);

type P = { inicio: number };
const PAD = 90;
const ease = Easing.bezier(...EASE);

/** Temas del simulacro (títulos de src/content/temario.ts). */
export const TEMAS = [
  { n: "1", palabra: "uno", titulo: "Derechos Humanos" },
  { n: "4", palabra: "cuatro", titulo: "Derecho Constitucional" },
  { n: "6", palabra: "seis", titulo: "Instituciones internacionales" },
  { n: "7", palabra: "siete", titulo: "Derecho Civil" },
  { n: "15", palabra: "quince", titulo: "Fuerzas y Cuerpos de Seguridad. Guardia Civil" },
];

/** Días que faltan para el parcial del CGJ (4 de diciembre) desde la fecha de publicación (26 de noviembre de 2026). */
export const DIAS_AL_PARCIAL = 8;

// 1 · «Si a estas alturas no dominas estos cinco temas… tenemos un problema.»
export const Gancho: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const logo = usePop(inicio, 0.12);
  const l1 = usePop(inicio, 0.75);
  const l2 = usePop(inicio, 1.5);
  const l3 = usePop(inicio, 2.4);
  const destello = interpolate(frame, [3, 5, 16], [0, 0.55, 0], clamp);
  const parpadeo = (frame / FPS) % 1.6 < 0.96;
  const linea = (p: number, texto: string, color = "#fff") => (
    <p
      style={{
        ...T.displayXl,
        fontSize: 190,
        margin: 0,
        color,
        opacity: p,
        scale: String(interpolate(p, [0, 1], [1.35, 1])),
        whiteSpace: "nowrap",
      }}
    >
      {texto}
    </p>
  );
  return (
    <AbsoluteFill style={{ background: "#000" }}>
      <AbsoluteFill
        style={{ background: `radial-gradient(60% 40% at 50% 38%, ${C.primario}26 0%, transparent 70%)` }}
      />
      <div style={{ position: "absolute", top: 250, left: 0, right: 0, display: "flex", justifyContent: "center" }}>
        <div style={{ scale: String(interpolate(logo, [0, 1], [0.6, 1])), opacity: logo }}>
          <Logo ancho={700} />
        </div>
      </div>
      <div style={{ position: "absolute", top: 640, left: PAD, right: PAD }}>
        {linea(l1, "¿Llevas los")}
        {linea(l2, "deberes")}
        {linea(l3, "hechos?", C.primario)}
      </div>
      <div style={{ position: "absolute", top: 150, left: PAD, display: "flex", alignItems: "center", gap: 14 }}>
        <span style={{ width: 20, height: 20, borderRadius: 10, background: C.rec, opacity: parpadeo ? 1 : 0.2 }} />
        <span style={{ ...T.eyebrow, fontSize: 26, color: C.apagado }}>Simulacro gratis</span>
      </div>
      <AbsoluteFill style={{ background: "#fff", opacity: destello, mixBlendMode: "screen" }} />
    </AbsoluteFill>
  );
};

// 2 · «Temas uno, cuatro, seis, siete y quince. A finales de noviembre… Sin excusas.»
export const Temas: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t = inicio + frame / FPS;
  const titulo = useEntrada(inicio, inicio + 0.1, 0.4);
  const aviso = useEntrada(inicio, en("finales"), 0.45);
  const sello = usePop(inicio, en("excusas"));
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 160, left: PAD, right: PAD }}>
        <Sube p={titulo}>
          <Eyebrow>Temas del simulacro</Eyebrow>
          <h2 style={{ ...T.displayL, fontSize: 112, margin: "16px 0 0", color: C.texto, whiteSpace: "nowrap" }}>
            Temas 1 · 4 · 6 · 7 · 15
          </h2>
        </Sube>
      </div>
      <div style={{ position: "absolute", top: 420, left: PAD, right: PAD }}>
        {TEMAS.map((tema, i) => {
          const cae = en(tema.palabra) - 0.05;
          const s = usePop(inicio, cae);
          // Cada número cae desde arriba con rebote y aterriza con un golpe.
          const y = interpolate(s, [0, 1], [-700, 0]);
          const visto = t >= cae - 0.02;
          return (
            <div
              key={tema.n}
              style={{
                display: "flex",
                alignItems: "center",
                gap: 30,
                height: 150,
                marginBottom: 16,
                translate: `0 ${y}px`,
                opacity: visto ? 1 : 0,
                borderRadius: 10,
                border: `2px solid ${C.borde}`,
                background: C.superficie,
                padding: "0 30px 0 0",
                overflow: "hidden",
              }}
            >
              <span
                style={{
                  display: "inline-flex",
                  alignItems: "center",
                  justifyContent: "center",
                  width: 200,
                  height: "100%",
                  background: C.primario,
                  color: C.primarioFg,
                  ...T.displayXl,
                  fontSize: 150,
                  lineHeight: 1,
                }}
              >
                {tema.n}
              </span>
              <span>
                <span style={{ ...T.eyebrow, fontSize: 22, color: C.primario, display: "block" }}>
                  <span style={{ opacity: 0.6 }}>{"// "}</span>Tema {tema.n}
                </span>
                <span style={{ ...T.h3, fontSize: 52, color: C.texto, display: "block", marginTop: 4, lineHeight: 1 }}>
                  {tema.titulo}
                </span>
              </span>
            </div>
          );
        })}
      </div>
      <div style={{ position: "absolute", top: 1400, left: PAD, right: PAD }}>
        <Sube p={aviso} d={30}>
          <div
            style={{
              display: "flex",
              alignItems: "center",
              gap: 20,
              padding: "22px 30px",
              borderRadius: 8,
              border: `2px solid ${C.aviso}`,
              background: "rgba(247,184,61,0.08)",
              color: C.aviso,
              ...T.eyebrow,
              fontSize: 26,
              lineHeight: 1.3,
            }}
          >
            <Flame size={44} />
            A finales de noviembre: estudiados y asimilados
          </div>
        </Sube>
      </div>
      <div
        style={{
          position: "absolute",
          top: 850,
          left: 0,
          right: 0,
          display: "flex",
          justifyContent: "center",
          rotate: "-7deg",
          scale: String(interpolate(sello, [0, 1], [2.2, 1])),
          opacity: sello,
        }}
      >
        <span
          style={{
            ...T.displayXl,
            fontSize: 190,
            padding: "0 40px",
            color: "#fff",
            background: C.rec,
            border: "8px solid #fff",
            boxShadow: "0 30px 80px -10px rgba(0,0,0,0.8)",
          }}
        >
          Sin excusas
        </span>
      </div>
    </AbsoluteFill>
  );
};

// 3 · «Por eso, en Prolince Academia lanzamos un simulacro totalmente gratuito… con el nivel del examen real.»
export const Anuncio: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t = inicio + frame / FPS;
  const titulo = useEntrada(inicio, inicio + 0.1, 0.4);
  const gratis = usePop(inicio, en("gratuito"));
  const movil = useEntrada(inicio, en("lanzamos"), 0.6);
  const nivel = usePop(inicio, en("nivel"));
  const marca = t >= en("real") - 0.1;
  const opciones = ["El Ministerio Fiscal", "El Defensor del Pueblo", "Cincuenta Senadores", "Los órganos ejecutivos de las CCAA"];
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 160, left: PAD, right: PAD }}>
        <Sube p={titulo}>
          <Pildora fuerte>Gratis</Pildora>
          <h2 style={{ ...T.displayXl, fontSize: 170, margin: "20px 0 0", color: C.texto, lineHeight: 0.92 }}>
            Simulacro
            <br />
            <span style={{ color: C.primario, scale: String(interpolate(gratis, [0, 1], [0.8, 1])), display: "inline-block", transformOrigin: "left center" }}>
              gratuito
            </span>
            <Flame size={120} color={C.aviso} style={{ marginLeft: 24, verticalAlign: "-14px", opacity: gratis }} />
          </h2>
        </Sube>
      </div>
      <div
        style={{
          position: "absolute",
          left: 190,
          top: 600,
          width: 700,
          height: 880,
          borderRadius: 64,
          background: "#050805",
          padding: 16,
          boxShadow: `0 60px 120px -40px rgba(0,0,0,0.8), 0 0 0 3px ${C.bordeFuerte}`,
          translate: `0 ${(1 - movil) * 900}px`,
          opacity: movil,
        }}
      >
        <div style={{ position: "relative", width: "100%", height: "100%", borderRadius: 50, overflow: "hidden", background: C.fondo }}>
          <FondoTactico />
          <div style={{ position: "relative", padding: "36px 40px 0" }}>
            <Logo ancho={210} />
            <p style={{ ...T.eyebrow, fontSize: 21, margin: "18px 0 0", color: C.primario }}>
              <span style={{ opacity: 0.6 }}>{"// "}</span>Simulacro gratuito
            </p>
            <div style={{ marginTop: 16, height: 10, borderRadius: 5, background: C.borde }}>
              <div style={{ width: `${interpolate(t, [inicio, inicio + 7], [4, 22], clamp)}%`, height: "100%", borderRadius: 5, background: C.primario }} />
            </div>
            <p style={{ ...T.eyebrow, fontSize: 20, margin: "18px 0 0", color: C.apagado }}>Pregunta 1 · Derecho Constitucional</p>
            <p style={{ ...T.h3, fontSize: 38, lineHeight: 1.12, textTransform: "none", margin: "10px 0 0", color: C.texto, fontFamily: F.texto, fontWeight: 700, letterSpacing: "-0.01em" }}>
              ¿Cuál de los siguientes NO está legitimado para interponer el recurso de inconstitucionalidad (art. 162.1 a) CE)?
            </p>
          </div>
          <div style={{ position: "relative", padding: "16px 40px", display: "grid", gap: 10 }}>
            {opciones.map((o, i) => {
              const ok = i === 0 && marca;
              return (
                <div
                  key={o}
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: 18,
                    padding: "10px 16px",
                    borderRadius: 8,
                    border: `2px solid ${ok ? C.primario : C.borde}`,
                    background: ok ? C.suave : C.superficie,
                    fontFamily: F.texto,
                    fontSize: 29,
                    fontWeight: 600,
                    color: C.texto,
                  }}
                >
                  <span
                    style={{
                      flex: "none",
                      width: 46,
                      height: 46,
                      borderRadius: 6,
                      display: "inline-flex",
                      alignItems: "center",
                      justifyContent: "center",
                      background: ok ? C.primario : C.suave,
                      color: ok ? C.primarioFg : C.suaveTexto,
                      fontFamily: F.hud,
                      fontWeight: 700,
                    }}
                  >
                    {ok ? <Check size={28} strokeWidth={3} /> : "ABCD"[i]}
                  </span>
                  {o}
                </div>
              );
            })}
          </div>
        </div>
      </div>
      <div
        style={{
          position: "absolute",
          right: 50,
          top: 1430,
          rotate: "-5deg",
          scale: String(interpolate(nivel, [0, 1], [1.8, 1])),
          opacity: nivel,
        }}
      >
        <div
          style={{
            display: "flex",
            alignItems: "center",
            gap: 18,
            padding: "22px 36px",
            background: C.primario,
            color: C.primarioFg,
            fontFamily: F.titular,
            fontWeight: 800,
            fontSize: 70,
            letterSpacing: "0.03em",
            textTransform: "uppercase",
            clipPath: "polygon(24px 0, 100% 0, 100% calc(100% - 24px), calc(100% - 24px) 100%, 0 100%, 0 24px)",
            boxShadow: "0 30px 80px rgba(0,0,0,0.6)",
          }}
        >
          <Target size={60} strokeWidth={2.6} />
          Nivel examen real
        </div>
      </div>
    </AbsoluteFill>
  );
};

// 4 · «Y no solo vas a saber tu nota. Vas a ver en qué puesto quedas frente al resto de opositores en un ranking.»
type Fila = { ini: string; yo?: boolean; pos: number[]; pts: [number, number] };
const FILAS: Fila[] = [
  { ini: "J. M. R.", pos: [0, 1, 2, 1], pts: [93, 92] },
  { ini: "A. L. G.", pos: [1, 0, 0, 0], pts: [91, 94] },
  { ini: "P. S. V.", pos: [2, 3, 4, 4], pts: [88, 85] },
  { ini: "M. C. D.", pos: [3, 2, 1, 3], pts: [86, 87] },
  { ini: "L. T. N.", pos: [4, 5, 6, 6], pts: [82, 80] },
  { ini: "R. G. A.", pos: [5, 6, 5, 5], pts: [79, 82] },
  { ini: "Tú", yo: true, pos: [6, 4, 3, 2], pts: [74, 89] },
];

export const Ranking: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t = inicio + frame / FPS;
  const titulo = useEntrada(inicio, inicio + 0.1, 0.4);
  const donde = usePop(inicio, en("puesto"));
  const tabla = useEntrada(inicio, inicio + 0.3, 0.5);
  // Instantes (s) en que se recoloca el ranking.
  const hitos = [en("saber"), en("ver") + 0.2, en("resto"), en("ranking", 0) + 0.15];
  const progreso = (t0: number) => interpolate(t, [t0, t0 + 0.55], [0, 1], { ...clamp, easing: ease });
  const posicion = (f: Fila) => {
    let p = f.pos[0];
    for (let i = 1; i < f.pos.length; i++) p = interpolate(progreso(hitos[i - 1]), [0, 1], [p, f.pos[i]]);
    return p;
  };
  const sube = (f: Fila) => {
    for (let i = hitos.length - 1; i >= 0; i--) {
      if (t >= hitos[i] && t < hitos[i] + 0.7) return Math.sign(f.pos[i] - f.pos[i + 1]);
    }
    return 0;
  };
  const total = progreso(hitos[hitos.length - 1]);
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 160, left: PAD, right: PAD }}>
        <Sube p={titulo}>
          <Eyebrow>Ranking</Eyebrow>
          <h2 style={{ ...T.displayXl, fontSize: 136, margin: "14px 0 0", color: C.texto, whiteSpace: "nowrap" }}>
            Ranking <span style={{ color: C.primario }}>gratis</span>
          </h2>
        </Sube>
        <p
          style={{
            ...T.h2,
            fontSize: 96,
            margin: "10px 0 0",
            color: C.aviso,
            opacity: donde,
            scale: String(interpolate(donde, [0, 1], [0.8, 1])),
            transformOrigin: "left center",
          }}
        >
          ¿Dónde estás tú?
        </p>
      </div>
      <div style={{ position: "absolute", top: 640, left: PAD, right: PAD }}>
        <Sube p={tabla}>
          <div style={{ borderRadius: 10, border: `2px solid ${C.borde}`, background: C.superficie, padding: "30px 34px" }}>
            <div style={{ display: "flex", alignItems: "center", gap: 16 }}>
              <Trophy size={44} color={C.primario} />
              <span style={{ ...T.h3, fontSize: 46, color: C.texto, whiteSpace: "nowrap" }}>Simulacro · Temas 1 · 4 · 6 · 7 · 15</span>
            </div>
            <div style={{ position: "relative", height: 7 * 106, marginTop: 20 }}>
              {FILAS.map((f) => {
                const p = posicion(f);
                const dir = sube(f);
                const pts = Math.round(interpolate(total, [0, 1], f.pts));
                return (
                  <div
                    key={f.ini}
                    style={{
                      position: "absolute",
                      left: 0,
                      right: 0,
                      top: p * 106,
                      height: 92,
                      display: "flex",
                      alignItems: "center",
                      gap: 22,
                      padding: "0 26px",
                      borderRadius: 6,
                      background: f.yo ? C.primario : C.sutil,
                      border: `2px solid ${f.yo ? C.primario : C.borde}`,
                      color: f.yo ? C.primarioFg : C.texto,
                      fontFamily: F.texto,
                      fontSize: 40,
                      fontWeight: f.yo ? 800 : 600,
                      zIndex: f.yo ? 2 : 1,
                      boxShadow: f.yo ? `0 0 60px -10px ${C.primario}` : "none",
                    }}
                  >
                    <span style={{ fontFamily: F.hud, fontWeight: 700, width: 76, opacity: 0.8 }}>{Math.round(p) + 1}.º</span>
                    <span>{f.ini}</span>
                    <span style={{ marginLeft: "auto", display: "inline-flex", alignItems: "center", gap: 14 }}>
                      {dir > 0 ? (
                        <ChevronUp size={44} strokeWidth={3} color={f.yo ? C.primarioFg : C.primario} />
                      ) : dir < 0 ? (
                        <ChevronDown size={44} strokeWidth={3} color={C.error} />
                      ) : null}
                      <span style={{ fontFamily: F.hud, fontWeight: 700 }}>{pts}</span>
                    </span>
                  </div>
                );
              })}
            </div>
          </div>
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

// 5 · «Aspirantes del Colegio de Guardias Jóvenes… El cuatro de diciembre tenéis el parcial…»
const Rayado: React.FC<{ y: number }> = ({ y }) => (
  <div
    style={{
      position: "absolute",
      left: 0,
      right: 0,
      top: y,
      height: 30,
      opacity: 0.9,
      background: `repeating-linear-gradient(-45deg, ${C.aviso} 0 30px, #000 30px 60px)`,
    }}
  />
);

export const Guardias: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t = inicio + frame / FPS;
  const titulo = usePop(inicio, inicio + 0.05);
  const colegio = useEntrada(inicio, en("Colegio"), 0.45);
  const cuenta = usePop(inicio, en("cuatro", 1) - 0.1);
  const c1 = usePop(inicio, en("simulacro", 1));
  const c2 = usePop(inicio, en("ranking", 1));
  const c3 = usePop(inicio, en("nivel", 1));
  // La cuenta atrás arranca al aparecer el cuadro («El cuatro de diciembre…») desde DIAS_AL_PARCIAL días exactos.
  const seg = Math.max(0, DIAS_AL_PARCIAL * 86400 - Math.floor(Math.max(0, t - (en("cuatro", 1) - 0.1))));
  const d = Math.floor(seg / 86400);
  const h = Math.floor((seg % 86400) / 3600);
  const m = Math.floor((seg % 3600) / 60);
  const s = seg % 60;
  const bloques = [
    { v: d, l: "Días" },
    { v: h, l: "Horas" },
    { v: m, l: "Min" },
    { v: s, l: "Seg" },
  ];
  const pulso = 1 + 0.02 * Math.sin(t * 6.3);
  return (
    <AbsoluteFill>
      <FondoTactico />
      <AbsoluteFill style={{ background: `radial-gradient(70% 45% at 50% 30%, ${C.aviso}22 0%, transparent 70%)` }} />
      <Rayado y={110} />
      <div style={{ position: "absolute", top: 210, left: PAD, right: PAD }}>
        <p style={{ ...T.eyebrow, margin: 0, color: C.aviso }}>
          <span style={{ opacity: 0.6 }}>{"// "}</span>Colegio de Guardias Jóvenes
        </p>
        <h2
          style={{
            ...T.displayXl,
            fontSize: 190,
            margin: "10px 0 0",
            color: "#fff",
            scale: String(interpolate(titulo, [0, 1], [1.4, 1])),
            opacity: titulo,
            transformOrigin: "left center",
            whiteSpace: "nowrap",
          }}
        >
          Aspirantes
          <br />
          <span style={{ color: C.aviso }}>CGJ</span>
        </h2>
        <Sube p={colegio} d={30}>
          <p style={{ ...T.cuerpo, margin: "10px 0 0", color: C.apagado }}>Esto también va por vosotros.</p>
        </Sube>
      </div>
      <div
        style={{
          position: "absolute",
          top: 800,
          left: PAD,
          right: PAD,
          opacity: cuenta,
          scale: String(interpolate(cuenta, [0, 1], [0.7, 1]) * pulso),
          borderRadius: 10,
          border: `4px solid ${C.aviso}`,
          background: "rgba(247,184,61,0.07)",
          padding: "36px 30px 40px",
          boxShadow: `0 0 90px -20px ${C.aviso}66`,
        }}
      >
        <p style={{ ...T.h2, fontSize: 80, margin: 0, textAlign: "center", color: "#fff", whiteSpace: "nowrap" }}>
          Parcial: <span style={{ color: C.aviso }}>4 de diciembre</span>
        </p>
        <div style={{ display: "flex", justifyContent: "center", gap: 18, marginTop: 30 }}>
          {bloques.map((b, i) => (
            <div key={b.l} style={{ display: "flex", alignItems: "flex-start", gap: 18 }}>
              <div style={{ textAlign: "center" }}>
                <div
                  style={{
                    width: 190,
                    padding: "14px 0",
                    borderRadius: 6,
                    background: "rgba(0,0,0,0.8)",
                    border: `2px solid ${C.bordeFuerte}`,
                    fontFamily: F.hud,
                    fontWeight: 700,
                    fontSize: 120,
                    lineHeight: 1,
                    color: i === 3 ? C.aviso : "#fff",
                  }}
                >
                  {String(b.v).padStart(2, "0")}
                </div>
                <span style={{ ...T.eyebrow, fontSize: 22, color: C.apagado }}>{b.l}</span>
              </div>
            </div>
          ))}
        </div>
      </div>
      <div style={{ position: "absolute", top: 1270, left: PAD, right: PAD, display: "grid", gap: 14 }}>
        {[
          { p: c1, t: "Haz el simulacro" },
          { p: c2, t: "Mira el ranking" },
          { p: c3, t: "Comprueba tu nivel" },
        ].map(({ p, t: texto }) => (
          <div
            key={texto}
            style={{
              display: "flex",
              alignItems: "center",
              gap: 24,
              padding: "12px 28px",
              borderRadius: 8,
              border: `2px solid ${C.aviso}`,
              background: "rgba(0,0,0,0.6)",
              opacity: p,
              translate: `${(1 - p) * 120}px 0`,
              ...T.h3,
              fontSize: 54,
              color: "#fff",
            }}
          >
            <Check size={46} color={C.aviso} strokeWidth={3} /> {texto}
          </div>
        ))}
      </div>
      <Rayado y={1830} />
    </AbsoluteFill>
  );
};

// 6 · «Es gratis y está abierto a todos. No hace falta ser alumno. Entra en prolinceacademia.com o comenta SIMULACRO…»
export const Llamada: React.FC<P> = ({ inicio }) => {
  const logo = useEntrada(inicio, inicio, 0.45);
  const gratis = usePop(inicio, en("gratis"));
  const alumno = useEntrada(inicio, en("alumno") - 0.3, 0.45);
  const web = usePop(inicio, en("Entra"));
  const comenta = usePop(inicio, en("comenta"));
  const frame = useCurrentFrame();
  const pulso = 1 + 0.03 * Math.sin((frame / FPS) * 6.5) * comenta;
  return (
    <AbsoluteFill>
      <FondoTactico profundo />
      <div style={{ position: "absolute", top: 190, left: 0, right: 0, display: "flex", justifyContent: "center", opacity: logo }}>
        <Logo ancho={600} />
      </div>
      <div style={{ position: "absolute", top: 400, left: PAD, right: PAD, textAlign: "center" }}>
        <div style={{ display: "flex", justifyContent: "center", opacity: gratis }}>
          <Eyebrow>Abierto a todos</Eyebrow>
        </div>
        <p
          style={{
            ...T.displayXl,
            fontSize: 330,
            margin: "6px 0 0",
            color: C.primario,
            scale: String(interpolate(gratis, [0, 1], [1.5, 1])),
            opacity: gratis,
          }}
        >
          100 %
        </p>
        <p style={{ ...T.displayXl, fontSize: 330, margin: 0, color: "#fff", opacity: gratis }}>gratis</p>
        <Sube p={alumno} d={30}>
          <p style={{ ...T.h3, fontSize: 64, margin: "26px 0 0", color: C.apagado }}>No hace falta ser alumno</p>
        </Sube>
      </div>
      <div style={{ position: "absolute", top: 1230, left: 0, right: 0, display: "flex", flexDirection: "column", alignItems: "center", gap: 36 }}>
        <div style={{ scale: String(interpolate(web, [0, 1], [0.6, 1])), opacity: web }}>
          <Boton claro style={{ fontSize: 66, padding: "32px 54px" }}>
            prolinceacademia.com <ArrowRight size={58} strokeWidth={2.6} />
          </Boton>
        </div>
        <div style={{ scale: String(interpolate(comenta, [0, 1], [0.6, 1]) * pulso), opacity: comenta }}>
          <span
            style={{
              display: "inline-flex",
              alignItems: "center",
              gap: 22,
              padding: "20px 44px",
              borderRadius: 999,
              background: C.primario,
              color: C.primarioFg,
              ...T.eyebrow,
              fontSize: 36,
            }}
          >
            <MessageCircle size={44} /> Comenta «SIMULACRO»
          </span>
        </div>
      </div>
    </AbsoluteFill>
  );
};

// Cierre · «Prolince Academia. Estudia, compite, aprueba.»
export const Cierre: React.FC<P> = ({ inicio }) => {
  const logo = usePop(inicio, en("Prolince", 2));
  const w1 = usePop(inicio, en("Estudia"));
  const w2 = usePop(inicio, en("compite"));
  const w3 = usePop(inicio, en("aprueba"));
  const palabra = (p: number, texto: string, color: string) => (
    <p
      style={{
        ...T.displayXl,
        fontSize: 250,
        margin: 0,
        color,
        opacity: p,
        scale: String(interpolate(p, [0, 1], [1.5, 1])),
        transformOrigin: "left center",
      }}
    >
      {texto}
    </p>
  );
  return (
    <AbsoluteFill>
      <FondoTactico profundo />
      <div style={{ position: "absolute", top: 260, left: PAD, right: PAD }}>
        <div style={{ opacity: logo, scale: String(interpolate(logo, [0, 1], [0.7, 1])), transformOrigin: "left center" }}>
          <Logo ancho={760} />
        </div>
        <div style={{ marginTop: 90 }}>
          {palabra(w1, "Estudia.", "#fff")}
          {palabra(w2, "Compite.", "#fff")}
          {palabra(w3, "Aprueba.", C.primario)}
        </div>
        <div style={{ marginTop: 50, opacity: w3 }}>
          <Rayas ancho={380} />
        </div>
      </div>
    </AbsoluteFill>
  );
};

