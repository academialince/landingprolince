import { ArrowRight, Check, Clock, ListChecks, RefreshCw, ShieldCheck, Timer, Trophy, X } from "lucide-react";
import { AbsoluteFill, interpolate, useCurrentFrame } from "remotion";
import {
  Eyebrow,
  FondoProfundo,
  FondoWeb,
  FotoFondo,
  FotoMarco,
  Hud,
  Logo,
  Pildora,
  Sube,
  Tarjeta,
  useEntrada,
  usePop,
} from "./Piezas";
import { C, F, FPS, T, clamp, en } from "./tokens";

type P = { inicio: number };
const PAD = 72;

// 1 · «Llegar a la UCO no empieza en un operativo…»
export const Gancho: React.FC<P> = ({ inicio }) => {
  const hud = useEntrada(inicio, 0.2, 0.6);
  const titulo = useEntrada(inicio, en("Llegar"), 0.45);
  const tachar = useEntrada(inicio, en("operativo"), 0.5);
  return (
    <AbsoluteFill>
      <FotoFondo src="uco/llegada-operativo.jpg" desde={1.18} hasta={1.04} velo={0.85} origen="55% 35%" />
      <div style={{ position: "absolute", top: 180, left: PAD }}>
        <Hud texto="OBJ · UCO" oscuro p={hud} />
      </div>
      <div style={{ position: "absolute", left: PAD, right: PAD, top: 900, fontFamily: F.texto, color: "#fff" }}>
        <Sube p={titulo}>
          <p style={{ ...T.displayL, margin: 0 }}>
            Llegar a la <span style={{ color: C.menta }}>UCO</span>
          </p>
          <p style={{ ...T.displayL, margin: 0, position: "relative", display: "inline-block" }}>
            no empieza en un operativo
            <span
              style={{
                position: "absolute",
                left: 0,
                top: "54%",
                height: 10,
                width: `${tachar * 100}%`,
                background: C.acento,
                borderRadius: 6,
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
      <FondoWeb />
      <div style={{ position: "absolute", top: 230, left: 0, right: 0, textAlign: "center", fontFamily: F.texto }}>
        <p style={{ ...T.h2, margin: 0, color: C.apagado }}>empieza en un</p>
        <p
          style={{
            ...T.displayXl,
            fontSize: 210,
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
          left: 140,
          right: 140,
          top: 760,
          rotate: `${interpolate(hoja, [0, 1], [-14, -3])}deg`,
          translate: `0 ${interpolate(hoja, [0, 1], [500, 0])}px`,
          borderRadius: 28,
          border: `2px solid ${C.borde}`,
          background: "#fff",
          padding: "44px 48px",
          boxShadow: "0 40px 90px -40px rgba(2,67,52,0.45)",
          fontFamily: F.texto,
        }}
      >
        <Eyebrow>Pregunta 37 · Policía Judicial</Eyebrow>
        <p style={{ ...T.h3, fontSize: 40, margin: "16px 0 26px", color: C.texto }}>
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
                gap: 20,
                padding: "18px 22px",
                marginTop: 12,
                borderRadius: 16,
                border: `2px solid ${ok ? C.primario : C.borde}`,
                background: ok ? C.suave : "#fff",
                fontSize: 34,
                fontWeight: 600,
                color: C.texto,
              }}
            >
              <span
                style={{
                  width: 48,
                  height: 48,
                  borderRadius: 12,
                  display: "inline-flex",
                  alignItems: "center",
                  justifyContent: "center",
                  background: ok ? C.primario : C.sutil,
                  color: ok ? "#fff" : C.apagado,
                  fontWeight: 800,
                }}
              >
                {ok ? <Check size={30} strokeWidth={3} /> : "ABCD"[i]}
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
      <FondoWeb />
      <div style={{ position: "absolute", top: 170, left: PAD, opacity: logo }}>
        <Logo ancho={360} />
      </div>
      <div style={{ position: "absolute", top: 380, left: PAD, right: PAD, fontFamily: F.texto }}>
        <div style={{ display: "flex", alignItems: "center", gap: 20 }}>
          <span style={{ scale: String(nuevo), display: "inline-block" }}>
            <Pildora fuerte>Nuevo</Pildora>
          </span>
          <Sube p={titulo1} d={20}>
            <Pildora>Curso de especialidad</Pildora>
          </Sube>
        </div>
        <Sube p={titulo1}>
          <h1 style={{ ...T.displayXl, margin: "34px 0 0", color: C.texto }}>Acceso UCO /</h1>
        </Sube>
        <Sube p={titulo2}>
          <h1 style={{ ...T.displayXl, margin: 0, color: C.primario }}>Policía Judicial</h1>
        </Sube>
        <Sube p={curso} d={30}>
          <p style={{ ...T.cuerpo, margin: "28px 0 0", color: C.apagado }}>
            Tests y simulacros ilimitados para la especialidad, en un único curso.
          </p>
        </Sube>
      </div>
      <div style={{ position: "absolute", top: 960, left: PAD }}>
        <Sube p={foto} d={120}>
          <FotoMarco src="uco/investigacion-digital.jpg" ancho={1080 - 2 * PAD} alto={500} origen="50% 30%" />
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
      <FotoFondo src="uco/investigacion-digital.jpg" desde={1.05} hasta={1.18} velo={0.9} origen="50% 30%" />
      <div style={{ position: "absolute", top: 180, left: PAD }}>
        <Hud texto="BANCO · PREGUNTAS" oscuro />
      </div>
      <div style={{ position: "absolute", top: 640, left: PAD, right: PAD, fontFamily: F.texto, color: "#fff" }}>
        <p
          style={{
            ...T.displayXl,
            fontSize: 250,
            margin: 0,
            fontVariantNumeric: "tabular-nums",
            scale: String(interpolate(cifra, [0, 1], [0.7, 1])),
            transformOrigin: "left center",
            opacity: cifra,
          }}
        >
          +{n >= 1000 ? `${Math.floor(n / 1000)}.${String(n % 1000).padStart(3, "0")}` : n}
        </p>
        <p style={{ ...T.h2, margin: 0, color: C.menta }}>preguntas en el banco</p>
      </div>
      <div style={{ position: "absolute", top: 1080, left: PAD, right: PAD }}>
        <Sube p={tarjeta}>
          <Tarjeta
            Icono={ShieldCheck}
            titulo="Hechas por quien está dentro"
            detalle="Personal en activo de la UCO."
          />
        </Sube>
        <div style={{ position: "absolute", right: 30, top: -40, scale: String(sello), rotate: "8deg" }}>
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
      <FondoWeb tintado />
      <div style={{ position: "absolute", top: 190, left: PAD, right: PAD, fontFamily: F.texto }}>
        <Eyebrow>Cómo entrenas</Eyebrow>
        <h2 style={{ ...T.displayL, margin: "14px 0 0", color: C.texto }}>Todo el entrenamiento, sin límites</h2>
      </div>
      <div style={{ position: "absolute", top: 560, left: PAD, right: PAD }}>
        <Sube p={t1}>
          <Tarjeta Icono={ListChecks} titulo="Tests sin límite" detalle="Por tema o aleatorios, tantas veces como quieras." />
        </Sube>
        <div style={{ display: "flex", gap: 16, marginTop: 22, opacity: chips }}>
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
                right: 36,
                top: 36,
                opacity: reloj,
                display: "flex",
                alignItems: "center",
                gap: 12,
                padding: "12px 22px",
                borderRadius: 14,
                background: C.profundo,
                color: "#fff",
                fontFamily: F.hud,
                fontWeight: 700,
                fontSize: 40,
              }}
            >
              <Clock size={34} color={C.menta} />
              {mm}:{ss}
            </div>
          </div>
        </Sube>
      </div>
    </AbsoluteFill>
  );
};

// 6 · «Podrás hacer tests de repaso con tus errores y ver el ranking privado para saber dónde estás de verdad.»
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
    { ini: "Tú", pts: 87, yo: true },
    { ini: "P. S. V.", pts: 85 },
    { ini: "M. C. D.", pts: 81 },
  ];
  // «Tú» pasa del puesto 5 al 3.
  const puestoTu = interpolate(sube, [0, 1], [4, 2]);
  const orden = filas.filter((f) => !f.yo);
  return (
    <AbsoluteFill>
      <FondoWeb />
      <div style={{ position: "absolute", top: 190, left: PAD, right: PAD, fontFamily: F.texto }}>
        <Eyebrow>Repasa tus errores</Eyebrow>
        <div style={{ marginTop: 26, display: "grid", gap: 14 }}>
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
                  gap: 18,
                  padding: "20px 26px",
                  borderRadius: 18,
                  border: `2px solid ${junta > 0.5 ? C.primario : C.borde}`,
                  background: junta > 0.5 ? C.suave : "#fff",
                  fontSize: 36,
                  fontWeight: 650,
                  color: C.texto,
                }}
              >
                {junta > 0.5 ? <RefreshCw size={32} color={C.primario} /> : <X size={32} color={C.error} strokeWidth={3} />}
                {f}
              </div>
            );
          })}
        </div>
        <div style={{ marginTop: 24, opacity: junta }}>
          <span
            style={{
              display: "inline-flex",
              alignItems: "center",
              gap: 12,
              padding: "20px 34px",
              borderRadius: 14,
              background: C.primario,
              color: "#fff",
              fontWeight: 700,
              fontSize: 36,
              boxShadow: "0 16px 40px -16px rgba(3,81,45,0.6)",
            }}
          >
            Test de repaso <ArrowRight size={32} />
          </span>
        </div>
      </div>
      <div style={{ position: "absolute", top: 920, left: PAD, right: PAD, fontFamily: F.texto }}>
        <Sube p={ranking}>
          <div
            style={{
              borderRadius: 28,
              border: `2px solid ${C.borde}`,
              background: "#fff",
              padding: "34px 40px",
              boxShadow: "0 24px 60px -36px rgba(2,67,52,0.35)",
            }}
          >
            <div style={{ display: "flex", alignItems: "center", gap: 16 }}>
              <Trophy size={40} color={C.primario} />
              <span style={{ ...T.h3, color: C.texto }}>Ranking privado</span>
              <span style={{ marginLeft: "auto", fontSize: 28, color: C.apagado, fontWeight: 600 }}>Simulacro 12</span>
            </div>
            <div style={{ position: "relative", height: 5 * 82, marginTop: 18 }}>
              {orden.map((f, i) => {
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

const entradaLocal = (frame: number, inicio: number, en: number) =>
  interpolate(frame, [(en - inicio) * FPS, (en - inicio) * FPS + 10], [0, 1], clamp);

const Fila: React.FC<{ y: number; puesto: number; ini: string; pts: number; yo?: boolean }> = ({ y, puesto, ini, pts, yo }) => (
  <div
    style={{
      position: "absolute",
      left: 0,
      right: 0,
      top: y * 82,
      height: 70,
      display: "flex",
      alignItems: "center",
      gap: 22,
      padding: "0 22px",
      borderRadius: 14,
      background: yo ? C.primario : C.sutil,
      color: yo ? "#fff" : C.texto,
      fontSize: 34,
      fontWeight: yo ? 800 : 600,
      zIndex: yo ? 2 : 1,
      boxShadow: yo ? "0 14px 30px -12px rgba(3,81,45,0.6)" : "none",
    }}
  >
    <span style={{ fontFamily: F.hud, width: 60, opacity: 0.8 }}>{puesto}.º</span>
    <span>{ini}</span>
    <span style={{ marginLeft: "auto", fontFamily: F.hud }}>{pts}</span>
  </div>
);

// 7 · «Sin horarios: desde el móvil, en el hueco que te dejen los turnos.»
export const Movil: React.FC<P> = ({ inicio }) => {
  const hud = useEntrada(inicio, en("Sin"), 0.5);
  const movil = useEntrada(inicio, en("móvil"), 0.55);
  return (
    <AbsoluteFill>
      <FotoFondo src="uco/registro-domicilio.jpg" desde={1.12} hasta={1.02} velo={0.8} />
      <div style={{ position: "absolute", top: 180, left: PAD }}>
        <Hud texto="COMPATIBLE CON EL SERVICIO" oscuro p={hud} />
      </div>
      <div
        style={{
          position: "absolute",
          left: 270,
          top: 430,
          width: 540,
          height: 1060,
          borderRadius: 72,
          background: "#0b0f0c",
          padding: 18,
          boxShadow: "0 60px 120px -40px rgba(0,0,0,0.7)",
          translate: `0 ${(1 - movil) * 900}px`,
          rotate: `${(1 - movil) * 10 - 2}deg`,
        }}
      >
        <div style={{ width: "100%", height: "100%", borderRadius: 56, overflow: "hidden", background: C.fondo, fontFamily: F.texto }}>
          <div style={{ padding: "60px 34px 0", background: `radial-gradient(90% 60% at 20% -10%, ${C.suave}, transparent 70%)` }}>
            <Logo ancho={210} />
            <p style={{ ...T.eyebrow, fontSize: 20, margin: "34px 0 0", color: C.primario }}>Acceso UCO / Policía Judicial</p>
            <p style={{ fontSize: 40, fontWeight: 780, letterSpacing: "-0.03em", margin: "8px 0 0", color: C.texto }}>
              Hola, guardia
            </p>
          </div>
          <div style={{ padding: "26px 34px", display: "grid", gap: 16 }}>
            {[
              { t: "Test aleatorio", d: "20 preguntas", I: ListChecks },
              { t: "Simulacro", d: "Formato examen", I: Timer },
              { t: "Repaso", d: "Tus errores", I: RefreshCw },
            ].map(({ t, d, I }) => (
              <div
                key={t}
                style={{ display: "flex", alignItems: "center", gap: 16, padding: 20, borderRadius: 18, border: `2px solid ${C.borde}` }}
              >
                <span
                  style={{
                    width: 56,
                    height: 56,
                    borderRadius: 14,
                    background: C.suave,
                    color: C.suaveTexto,
                    display: "inline-flex",
                    alignItems: "center",
                    justifyContent: "center",
                  }}
                >
                  <I size={30} />
                </span>
                <span>
                  <span style={{ display: "block", fontSize: 28, fontWeight: 700, color: C.texto }}>{t}</span>
                  <span style={{ fontSize: 22, color: C.apagado }}>{d}</span>
                </span>
              </div>
            ))}
            <div style={{ marginTop: 6, padding: "18px 0", borderRadius: 14, background: C.primario, color: "#fff", textAlign: "center", fontWeight: 700, fontSize: 28 }}>
              Empezar
            </div>
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
      <FondoWeb tintado />
      <div style={{ position: "absolute", top: 210, left: PAD, right: PAD, textAlign: "center", fontFamily: F.texto }}>
        <Eyebrow>Precio</Eyebrow>
        <h2 style={{ ...T.displayL, margin: "14px 0 0", color: C.texto }}>Un solo pago, acceso a todo</h2>
      </div>
      <div style={{ position: "absolute", top: 640, left: 130, right: 130, fontFamily: F.texto }}>
        <Sube p={tarjeta}>
          <div
            style={{
              position: "relative",
              borderRadius: 40,
              border: `4px solid ${C.primario}`,
              background: "#fff",
              padding: "70px 56px 56px",
              boxShadow: "0 28px 72px -24px rgba(3,81,45,0.35)",
            }}
          >
            <span style={{ position: "absolute", top: -26, left: 56 }}>
              <Pildora fuerte>Acceso UCO / Policía Judicial</Pildora>
            </span>
            <p style={{ ...T.h3, margin: 0, color: C.texto }}>Tests y simulacros ilimitados</p>
            <p
              style={{
                ...T.displayXl,
                fontSize: 230,
                margin: "10px 0 0",
                color: C.texto,
                scale: String(interpolate(cifra, [0, 1], [0.6, 1])),
                transformOrigin: "left center",
                opacity: cifra,
              }}
            >
              89 €
            </p>
            <p style={{ fontSize: 34, margin: 0, color: C.apagado, fontWeight: 600 }}>pago único</p>
            <div style={{ display: "grid", gap: 18, marginTop: 40 }}>
              {[
                { t: "Sin cuotas mensuales", p: c1 },
                { t: "Sin renovaciones", p: c2 },
              ].map(({ t, p }) => (
                <div key={t} style={{ display: "flex", alignItems: "center", gap: 18, fontSize: 40, fontWeight: 700, color: C.texto, opacity: p, scale: String(interpolate(p, [0, 1], [0.8, 1])), transformOrigin: "left center" }}>
                  <Check size={42} color={C.primario} strokeWidth={3} /> {t}
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
      <FondoProfundo />
      <div style={{ position: "absolute", top: 470, left: PAD, right: PAD, fontFamily: F.texto, color: "#fff" }}>
        <Sube p={a}>
          <p style={{ ...T.h2, margin: 0, color: "rgba(255,255,255,0.75)" }}>Tu próximo destino:</p>
        </Sube>
        <p style={{ ...T.displayXl, fontSize: 190, margin: 0, color: C.menta, opacity: uco, scale: String(interpolate(uco, [0, 1], [0.7, 1])), transformOrigin: "left center" }}>
          la UCO.
        </p>
        <div style={{ height: 90 }} />
        <Sube p={b}>
          <p style={{ ...T.h2, margin: 0, color: "rgba(255,255,255,0.75)" }}>Tu próximo paso:</p>
        </Sube>
        <div style={{ marginTop: 26, opacity: logo, scale: String(interpolate(logo, [0, 1], [0.7, 1])), transformOrigin: "left center" }}>
          <Logo negativo ancho={760} />
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
      <FondoProfundo />
      <div style={{ position: "absolute", top: 360, left: 0, right: 0, display: "flex", flexDirection: "column", alignItems: "center", fontFamily: F.texto, color: "#fff", textAlign: "center" }}>
        <Sube p={logo}>
          <Logo negativo ancho={640} />
        </Sube>
        <Sube p={logo} style={{ marginTop: 70 }}>
          <Eyebrow color={C.menta}>Nuevo curso de especialidad</Eyebrow>
          <h2 style={{ ...T.displayL, fontSize: 92, margin: "18px 0 0" }}>
            Acceso UCO /<br />
            Policía Judicial
          </h2>
          <p style={{ ...T.cuerpo, margin: "20px 80px 0", color: "rgba(255,255,255,0.75)" }}>
            Más de 2.000 preguntas · Tests y simulacros ilimitados · 89 €, pago único
          </p>
        </Sube>
        <div
          style={{
            marginTop: 70,
            scale: String(interpolate(boton, [0, 1], [0.6, 1]) * pulso),
            opacity: boton,
            display: "inline-flex",
            alignItems: "center",
            gap: 18,
            padding: "34px 54px",
            borderRadius: 18,
            background: "#fff",
            color: C.profundo,
            fontWeight: 800,
            fontSize: 50,
          }}
        >
          Accede desde prolince.com <ArrowRight size={48} strokeWidth={2.6} />
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
          color: "rgba(255,255,255,0.6)",
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
