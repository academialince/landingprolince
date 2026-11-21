import { ArrowRight, Check, Clock, ListChecks, RefreshCw, ShieldCheck, Timer, Trophy, X } from "lucide-react";
import { AbsoluteFill, interpolate, useCurrentFrame } from "remotion";
import {
  Boton,
  Eyebrow,
  FondoTactico,
  FotoFondo,
  FotoMarco,
  Logo,
  Pildora,
  Sube,
  Tarjeta,
  useEntrada,
  usePop,
} from "./Piezas";
import { C, F, FPS, T, clamp, en } from "./tokens";

type P = { inicio: number };
const PAD = 90;

// 1 · «Llegar a la UCO no empieza en un operativo…»
export const Gancho: React.FC<P> = ({ inicio }) => {
  const titulo = useEntrada(inicio, en("Llegar"), 0.45);
  const tachar = useEntrada(inicio, en("operativo"), 0.5);
  return (
    <AbsoluteFill>
      <FotoFondo src="uco/llegada-operativo.jpg" etiqueta="OBJ-01 · UCO" desde={1.18} hasta={1.04} origen="55% 35%" />
      <div style={{ position: "absolute", left: PAD, right: PAD, top: 980, color: "#fff" }}>
        <Sube p={titulo}>
          <p style={{ ...T.displayL, fontSize: 128, margin: 0, whiteSpace: "nowrap" }}>
            Llegar a la <span style={{ color: C.primario }}>UCO</span>
          </p>
          <p style={{ ...T.displayL, fontSize: 128, margin: 0, whiteSpace: "nowrap" }}>no empieza en</p>
          <p style={{ ...T.displayL, fontSize: 128, margin: 0, position: "relative", display: "inline-block", whiteSpace: "nowrap" }}>
            un operativo
            <span
              style={{
                position: "absolute",
                left: 0,
                top: "52%",
                height: 12,
                width: `${tachar * 100}%`,
                background: C.primario,
              }}
            />
          </p>
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

// 2 · «…empieza en un examen.»
export const Examen: React.FC<P> = ({ inicio }) => {
  const hoja = usePop(inicio, inicio + 0.05);
  const palabra = usePop(inicio, en("examen"));
  const marca = useEntrada(inicio, en("examen") + 0.3, 0.3);
  const opciones = ["RD 96/2009", "RD 1484/1987", "RD 769/1987", "RD 137/1993"];
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 210, left: 0, right: 0, textAlign: "center" }}>
        <p style={{ ...T.h2, fontSize: 96, margin: 0, color: C.apagado }}>empieza en un</p>
        <p
          style={{
            ...T.displayXl,
            fontSize: 330,
            margin: 0,
            color: C.primario,
            scale: String(interpolate(palabra, [0, 1], [0.6, 1])),
            opacity: palabra,
          }}
        >
          examen
        </p>
      </div>
      <div
        style={{
          position: "absolute",
          left: 120,
          right: 120,
          top: 820,
          rotate: `${interpolate(hoja, [0, 1], [-14, -3])}deg`,
          translate: `0 ${interpolate(hoja, [0, 1], [500, 0])}px`,
          borderRadius: 10,
          border: `2px solid ${C.bordeFuerte}`,
          background: C.superficie,
          padding: "46px 50px",
          boxShadow: "0 40px 90px -30px rgba(0,0,0,0.8)",
        }}
      >
        <Eyebrow>Pregunta 37 · Policía Judicial</Eyebrow>
        <p style={{ ...T.h3, fontSize: 60, margin: "20px 0 30px", color: C.texto }}>
          ¿Qué Real Decreto regula la Policía Judicial?
        </p>
        {opciones.map((o, i) => {
          const ok = i === 2 && marca > 0;
          return (
            <div
              key={o}
              style={{
                display: "flex",
                alignItems: "center",
                gap: 22,
                padding: "18px 22px",
                marginTop: 14,
                borderRadius: 8,
                border: `2px solid ${ok ? C.primario : C.borde}`,
                background: ok ? C.suave : C.sutil,
                fontFamily: F.texto,
                fontSize: 36,
                fontWeight: 600,
                color: C.texto,
              }}
            >
              <span
                style={{
                  width: 52,
                  height: 52,
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
                {ok ? <Check size={32} strokeWidth={3} /> : "ABCD"[i]}
              </span>
              {o}
            </div>
          );
        })}
      </div>
    </AbsoluteFill>
  );
};

// 3 · «Hoy lanzamos Acceso UCO, Policía Judicial: el nuevo curso de especialidad de Prolince.»
export const Lanzamiento: React.FC<P> = ({ inicio }) => {
  const logo = useEntrada(inicio, inicio, 0.5);
  const nuevo = usePop(inicio, en("lanzamos"));
  const titulo1 = useEntrada(inicio, en("Acceso"), 0.45);
  const titulo2 = useEntrada(inicio, en("Policía"), 0.45);
  const curso = useEntrada(inicio, en("curso"), 0.5);
  const foto = useEntrada(inicio, en("especialidad"), 0.6);
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 160, left: PAD, opacity: logo }}>
        <Logo ancho={420} />
      </div>
      <div style={{ position: "absolute", top: 340, left: PAD, right: PAD }}>
        <div style={{ display: "flex", alignItems: "center", gap: 20 }}>
          <span style={{ scale: String(nuevo), display: "inline-block", transformOrigin: "left center" }}>
            <Pildora fuerte>Nuevo</Pildora>
          </span>
          <Sube p={titulo1} d={20}>
            <Pildora>Curso de especialidad</Pildora>
          </Sube>
        </div>
        <Sube p={titulo1}>
          <h1 style={{ ...T.displayXl, fontSize: 138, margin: "34px 0 0", color: C.texto, whiteSpace: "nowrap" }}>Acceso UCO /</h1>
        </Sube>
        <Sube p={titulo2}>
          <h1 style={{ ...T.displayXl, fontSize: 138, margin: 0, color: C.primario, whiteSpace: "nowrap" }}>Policía Judicial</h1>
        </Sube>
        <Sube p={curso} d={30}>
          <p style={{ ...T.cuerpo, margin: "34px 0 0", color: C.apagado }}>
            Tests y simulacros ilimitados para la especialidad, en un único curso.
          </p>
        </Sube>
      </div>
      <div style={{ position: "absolute", top: 930, left: PAD + 24 }}>
        <Sube p={foto} d={120}>
          <FotoMarco
            src="uco/investigacion-digital.jpg"
            ancho={1080 - 2 * PAD - 48}
            alto={620}
            origen="50% 30%"
            etiqueta="OBJ-01 · POLICÍA JUDICIAL"
            pie="Acceso UCO"
            dato="+2.000"
          />
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

// 4 · «Más de dos mil preguntas, elaboradas por personal en activo de la UCO.»
export const Preguntas: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t = inicio + frame / FPS;
  const n = Math.round(interpolate(t, [en("dos"), en("preguntas") + 0.3], [0, 2000], clamp));
  const cifra = usePop(inicio, en("Más"));
  const tarjeta = useEntrada(inicio, en("elaboradas"), 0.5);
  const sello = usePop(inicio, en("activo"));
  return (
    <AbsoluteFill>
      <FotoFondo src="uco/investigacion-digital.jpg" etiqueta="BANCO · PREGUNTAS" desde={1.05} hasta={1.18} origen="50% 30%" />
      <div style={{ position: "absolute", top: 680, left: PAD, right: PAD, color: "#fff" }}>
        <p
          style={{
            ...T.displayXl,
            fontSize: 340,
            margin: 0,
            fontVariantNumeric: "tabular-nums",
            scale: String(interpolate(cifra, [0, 1], [0.7, 1])),
            transformOrigin: "left center",
            opacity: cifra,
            color: C.primario,
          }}
        >
          +{n >= 1000 ? `${Math.floor(n / 1000)}.${String(n % 1000).padStart(3, "0")}` : n}
        </p>
        <p style={{ ...T.h2, fontSize: 84, margin: "6px 0 0", whiteSpace: "nowrap" }}>preguntas en el banco</p>
      </div>
      <div style={{ position: "absolute", top: 1180, left: PAD, right: PAD }}>
        <Sube p={tarjeta}>
          <Tarjeta compacta Icono={ShieldCheck} titulo="Hechas por quien está dentro" detalle="Personal en activo de la UCO." />
        </Sube>
        <div style={{ position: "absolute", right: 24, top: -34, scale: String(sello), rotate: "6deg" }}>
          <Pildora fuerte>En activo</Pildora>
        </div>
      </div>
    </AbsoluteFill>
  );
};

// 5 · «Tests ilimitados, por tema o aleatorios. Y simulacros cronometrados con el formato del examen.»
export const Tests: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t1 = useEntrada(inicio, en("Tests"), 0.45);
  const chips = useEntrada(inicio, en("tema"), 0.4);
  const t2 = useEntrada(inicio, en("simulacros"), 0.45);
  const reloj = useEntrada(inicio, en("cronometrados"), 0.4);
  const t = inicio + frame / FPS;
  const restante = Math.max(0, 3600 - Math.floor((t - en("cronometrados")) * 47));
  const mm = String(Math.floor(restante / 60)).padStart(2, "0");
  const ss = String(restante % 60).padStart(2, "0");
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 170, left: PAD, right: PAD }}>
        <Eyebrow>Cómo entrenas</Eyebrow>
        <h2 style={{ ...T.displayL, fontSize: 112, margin: "18px 0 0", color: C.texto }}>Todo el entrenamiento, sin límites</h2>
      </div>
      <div style={{ position: "absolute", top: 560, left: PAD, right: PAD }}>
        <Sube p={t1}>
          <Tarjeta Icono={ListChecks} titulo="Tests sin límite" detalle="Por tema o aleatorios, tantas veces como quieras." />
        </Sube>
        <div style={{ display: "flex", gap: 16, marginTop: 26, opacity: chips }}>
          {["Por tema", "Aleatorios", "∞ repeticiones"].map((c, i) => (
            <Sube key={c} p={interpolate(chips, [i * 0.2, 0.6 + i * 0.2], [0, 1], clamp)} d={20}>
              <Pildora>{c}</Pildora>
            </Sube>
          ))}
        </div>
        <Sube p={t2} style={{ marginTop: 34 }}>
          <div style={{ position: "relative" }}>
            <Tarjeta Icono={Timer} titulo="Simulacros ilimitados" detalle="Cronometrados y con el formato del examen." />
            <div
              style={{
                position: "absolute",
                right: 40,
                top: 40,
                opacity: reloj,
                display: "flex",
                alignItems: "center",
                gap: 12,
                padding: "12px 22px",
                borderRadius: 6,
                background: "rgba(0,0,0,0.85)",
                color: C.primario,
                fontFamily: F.hud,
                fontWeight: 700,
                fontSize: 42,
              }}
            >
              <Clock size={36} color={C.primario} />
              {mm}:{ss}
            </div>
          </div>
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

// 6 · «Podrás hacer tests de repaso con tus errores y ver el ranking privado para saber dónde estás de verdad.»
const entradaLocal = (frame: number, inicio: number, en: number) =>
  interpolate(frame, [(en - inicio) * FPS, (en - inicio) * FPS + 10], [0, 1], clamp);

export const Repaso: React.FC<P> = ({ inicio }) => {
  const frame = useCurrentFrame();
  const t = inicio + frame / FPS;
  const fallos = ["Plazo de la detención", "Diligencias del atestado", "Cadena de custodia"];
  const junta = useEntrada(inicio, en("errores"), 0.5);
  const ranking = useEntrada(inicio, en("ranking"), 0.45);
  const sube = interpolate(t, [en("saber"), en("verdad")], [0, 1], { ...clamp });
  const filas = [
    { ini: "J. M. R.", pts: 92 },
    { ini: "A. L. G.", pts: 89 },
    { ini: "P. S. V.", pts: 85 },
    { ini: "M. C. D.", pts: 81 },
  ];
  // «Tú» pasa del puesto 5 al 3.
  const puestoTu = interpolate(sube, [0, 1], [4, 2]);
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 170, left: PAD, right: PAD }}>
        <Eyebrow>Repasa tus errores</Eyebrow>
        <div style={{ marginTop: 30, display: "grid", gap: 16 }}>
          {fallos.map((f, i) => {
            const aparece = entradaLocal(frame, inicio, inicio + 0.1 + i * 0.18);
            return (
              <div
                key={f}
                style={{
                  opacity: aparece,
                  translate: `${(1 - aparece) * -60}px ${junta * -i * 30}px`,
                  scale: String(1 - junta * 0.06),
                  display: "flex",
                  alignItems: "center",
                  gap: 22,
                  padding: "26px 30px",
                  borderRadius: 8,
                  border: `2px solid ${junta > 0.5 ? C.primario : C.borde}`,
                  background: junta > 0.5 ? C.suave : C.superficie,
                  fontFamily: F.texto,
                  fontSize: 38,
                  fontWeight: 650,
                  color: C.texto,
                }}
              >
                {junta > 0.5 ? (
                  <RefreshCw size={38} color={C.primario} />
                ) : (
                  <X size={38} color={C.error} strokeWidth={3} />
                )}
                {f}
              </div>
            );
          })}
        </div>
        <div style={{ marginTop: 30, opacity: junta }}>
          <Boton style={{ fontSize: 56, padding: "26px 52px" }}>
            Test de repaso <ArrowRight size={50} strokeWidth={2.6} />
          </Boton>
        </div>
      </div>
      <div style={{ position: "absolute", top: 940, left: PAD, right: PAD }}>
        <Sube p={ranking}>
          <div style={{ borderRadius: 10, border: `2px solid ${C.borde}`, background: C.superficie, padding: "36px 40px" }}>
            <div style={{ display: "flex", alignItems: "center", gap: 18 }}>
              <Trophy size={46} color={C.primario} />
              <span style={{ ...T.h3, color: C.texto }}>Ranking privado</span>
              <span style={{ marginLeft: "auto", ...T.eyebrow, fontSize: 24, color: C.apagado }}>Simulacro 12</span>
            </div>
            <div style={{ position: "relative", height: 5 * 84, marginTop: 22 }}>
              {filas.map((f, i) => {
                const y = i + interpolate(i - puestoTu + 1, [0, 1], [0, 1], clamp);
                return <Fila key={f.ini} y={y} puesto={Math.round(y) + 1} ini={f.ini} pts={f.pts} />;
              })}
              <Fila y={puestoTu} puesto={Math.round(puestoTu) + 1} ini="Tú" pts={Math.round(78 + sube * 9)} yo />
            </div>
          </div>
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

const Fila: React.FC<{ y: number; puesto: number; ini: string; pts: number; yo?: boolean }> = ({ y, puesto, ini, pts, yo }) => (
  <div
    style={{
      position: "absolute",
      left: 0,
      right: 0,
      top: y * 84,
      height: 72,
      display: "flex",
      alignItems: "center",
      gap: 22,
      padding: "0 24px",
      borderRadius: 6,
      background: yo ? C.primario : C.sutil,
      border: `2px solid ${yo ? C.primario : C.borde}`,
      color: yo ? C.primarioFg : C.texto,
      fontFamily: F.texto,
      fontSize: 34,
      fontWeight: yo ? 800 : 600,
      zIndex: yo ? 2 : 1,
    }}
  >
    <span style={{ fontFamily: F.hud, fontWeight: 700, width: 64, opacity: 0.75 }}>{puesto}.º</span>
    <span>{ini}</span>
    <span style={{ marginLeft: "auto", fontFamily: F.hud, fontWeight: 700 }}>{pts}</span>
  </div>
);

// 7 · «Sin horarios: desde el móvil, en el hueco que te dejen los turnos.»
export const Movil: React.FC<P> = ({ inicio }) => {
  const movil = useEntrada(inicio, en("móvil"), 0.55);
  return (
    <AbsoluteFill>
      <FotoFondo src="uco/registro-domicilio.jpg" etiqueta="COMPATIBLE CON EL SERVICIO" desde={1.12} hasta={1.02} />
      <div
        style={{
          position: "absolute",
          left: 270,
          top: 400,
          width: 540,
          height: 1060,
          borderRadius: 72,
          background: "#050805",
          padding: 18,
          boxShadow: `0 60px 120px -40px rgba(0,0,0,0.8), 0 0 0 3px ${C.bordeFuerte}`,
          translate: `0 ${(1 - movil) * 900}px`,
          rotate: `${(1 - movil) * 10 - 2}deg`,
        }}
      >
        <div
          style={{
            position: "relative",
            width: "100%",
            height: "100%",
            borderRadius: 56,
            overflow: "hidden",
            background: C.fondo,
            fontFamily: F.texto,
          }}
        >
          <FondoTactico />
          <div style={{ position: "relative", padding: "64px 34px 0" }}>
            <Logo ancho={230} />
            <p style={{ ...T.eyebrow, fontSize: 20, margin: "34px 0 0", color: C.primario }}>
              <span style={{ opacity: 0.6 }}>{"// "}</span>Acceso UCO / PJ
            </p>
            <p style={{ ...T.h3, fontSize: 56, margin: "10px 0 0", color: C.texto }}>Hola, guardia</p>
          </div>
          <div style={{ position: "relative", padding: "26px 34px", display: "grid", gap: 16 }}>
            {[
              { t: "Test aleatorio", d: "20 preguntas", I: ListChecks },
              { t: "Simulacro", d: "Formato examen", I: Timer },
              { t: "Repaso", d: "Tus errores", I: RefreshCw },
            ].map(({ t, d, I }) => (
              <div
                key={t}
                style={{
                  display: "flex",
                  alignItems: "center",
                  gap: 16,
                  padding: 20,
                  borderRadius: 8,
                  border: `2px solid ${C.borde}`,
                  background: C.superficie,
                }}
              >
                <span
                  style={{
                    width: 58,
                    height: 58,
                    borderRadius: 6,
                    background: C.suave,
                    color: C.suaveTexto,
                    display: "inline-flex",
                    alignItems: "center",
                    justifyContent: "center",
                  }}
                >
                  <I size={32} />
                </span>
                <span>
                  <span style={{ ...T.h3, display: "block", fontSize: 38, color: C.texto }}>{t}</span>
                  <span style={{ fontSize: 22, color: C.apagado }}>{d}</span>
                </span>
              </div>
            ))}
            <Boton
              style={{
                justifyContent: "center",
                fontSize: 40,
                padding: "20px 0",
                clipPath: "polygon(16px 0, 100% 0, 100% calc(100% - 16px), calc(100% - 16px) 100%, 0 100%, 0 16px)",
              }}
            >
              Empezar
            </Boton>
          </div>
        </div>
      </div>
    </AbsoluteFill>
  );
};

// 8 · «Un único pago de ochenta y nueve euros. Sin cuotas. Sin renovaciones.»
export const Precio: React.FC<P> = ({ inicio }) => {
  const tarjeta = useEntrada(inicio, inicio, 0.45);
  const cifra = usePop(inicio, en("ochenta"));
  const c1 = usePop(inicio, en("cuotas"));
  const c2 = usePop(inicio, en("renovaciones"));
  return (
    <AbsoluteFill>
      <FondoTactico />
      <div style={{ position: "absolute", top: 190, left: PAD, right: PAD, textAlign: "center" }}>
        <div style={{ display: "flex", justifyContent: "center" }}>
          <Eyebrow>Precio</Eyebrow>
        </div>
        <h2 style={{ ...T.displayL, margin: "20px 0 0", color: C.texto }}>Un solo pago, acceso a todo</h2>
      </div>
      <div style={{ position: "absolute", top: 660, left: 120, right: 120 }}>
        <Sube p={tarjeta}>
          <div
            style={{
              position: "relative",
              borderRadius: 10,
              border: `4px solid ${C.primario}`,
              background: C.superficie,
              padding: "78px 60px 60px",
              boxShadow: `0 0 90px -20px ${C.primario}55`,
            }}
          >
            <span
              style={{
                position: "absolute",
                top: -32,
                left: 56,
                ...T.eyebrow,
                fontSize: 26,
                padding: "10px 28px",
                borderRadius: 999,
                background: C.primario,
                color: C.primarioFg,
              }}
            >
              Acceso UCO / Policía Judicial
            </span>
            <p style={{ ...T.h3, margin: 0, color: C.texto }}>Tests y simulacros ilimitados</p>
            <p
              style={{
                ...T.displayXl,
                fontSize: 270,
                margin: "14px 0 0",
                color: C.texto,
                scale: String(interpolate(cifra, [0, 1], [0.6, 1])),
                transformOrigin: "left center",
                opacity: cifra,
              }}
            >
              89 €
            </p>
            <p style={{ fontFamily: F.texto, fontSize: 36, margin: 0, color: C.apagado }}>pago único</p>
            <div style={{ display: "grid", gap: 20, marginTop: 44 }}>
              {[
                { t: "Sin cuotas mensuales", p: c1 },
                { t: "Sin renovaciones", p: c2 },
              ].map(({ t, p }) => (
                <div
                  key={t}
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: 20,
                    fontFamily: F.texto,
                    fontSize: 40,
                    fontWeight: 600,
                    color: C.texto,
                    opacity: p,
                    scale: String(interpolate(p, [0, 1], [0.8, 1])),
                    transformOrigin: "left center",
                  }}
                >
                  <Check size={46} color={C.primario} strokeWidth={3} /> {t}
                </div>
              ))}
            </div>
          </div>
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

// 9 · «Tu próximo destino: la UCO. Tu próximo paso: Prolince.»
export const Eslogan: React.FC<P> = ({ inicio }) => {
  const a = useEntrada(inicio, en("Tu"), 0.4);
  const uco = usePop(inicio, en("UCO", 3));
  const b = useEntrada(inicio, en("Tu", 1), 0.4);
  const logo = usePop(inicio, en("Prolince", 1));
  return (
    <AbsoluteFill>
      <FondoTactico profundo />
      <div style={{ position: "absolute", top: 440, left: PAD, right: PAD }}>
        <Sube p={a}>
          <Eyebrow>Tu próximo destino</Eyebrow>
        </Sube>
        <p
          style={{
            ...T.displayXl,
            fontSize: 290,
            margin: "10px 0 0",
            whiteSpace: "nowrap",
            color: C.primario,
            opacity: uco,
            scale: String(interpolate(uco, [0, 1], [0.7, 1])),
            transformOrigin: "left center",
          }}
        >
          La UCO.
        </p>
        <div style={{ height: 70 }} />
        <Sube p={b}>
          <Eyebrow>Tu próximo paso</Eyebrow>
        </Sube>
        <div
          style={{
            marginTop: 34,
            opacity: logo,
            scale: String(interpolate(logo, [0, 1], [0.7, 1])),
            transformOrigin: "left center",
          }}
        >
          <Logo ancho={820} />
        </div>
      </div>
    </AbsoluteFill>
  );
};

// 10 · «Accede desde prolince punto com.»
export const Cierre: React.FC<P> = ({ inicio }) => {
  const logo = useEntrada(inicio, inicio, 0.5);
  const boton = usePop(inicio, en("desde", 1));
  const letra = useEntrada(inicio, en("com") + 0.2, 0.6);
  const frame = useCurrentFrame();
  const pulso = 1 + 0.025 * Math.sin((frame / FPS) * 6) * boton;
  return (
    <AbsoluteFill>
      <FondoTactico profundo />
      <div
        style={{
          position: "absolute",
          top: 330,
          left: 0,
          right: 0,
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          color: "#fff",
          textAlign: "center",
        }}
      >
        <Sube p={logo}>
          <Logo ancho={680} />
        </Sube>
        <Sube p={logo} style={{ marginTop: 80 }}>
          <div style={{ display: "flex", justifyContent: "center" }}>
            <Eyebrow>Nuevo curso de especialidad</Eyebrow>
          </div>
          <h2 style={{ ...T.displayL, fontSize: 150, margin: "24px 0 0" }}>
            Acceso UCO /<br />
            Policía Judicial
          </h2>
          <p style={{ ...T.cuerpo, margin: "28px 100px 0", color: C.apagado }}>
            Más de 2.000 preguntas · Tests y simulacros ilimitados · 89 €, pago único
          </p>
        </Sube>
        <div style={{ marginTop: 80, scale: String(interpolate(boton, [0, 1], [0.6, 1]) * pulso), opacity: boton }}>
          <Boton claro>
            Accede desde prolince.com <ArrowRight size={58} strokeWidth={2.6} />
          </Boton>
        </div>
      </div>
      <p
        style={{
          position: "absolute",
          left: PAD,
          right: PAD,
          bottom: 250,
          margin: 0,
          textAlign: "center",
          fontFamily: F.texto,
          fontSize: 28,
          lineHeight: 1.5,
          color: "rgba(255,255,255,0.55)",
          opacity: letra,
        }}
      >
        Tests y simulacros. No incluye temario.
        <br />
        Prolince no es un centro oficial de la Guardia Civil.
      </p>
    </AbsoluteFill>
  );
};
