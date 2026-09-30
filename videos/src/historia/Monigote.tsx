// Muñeco de estilo «chibi» (cabeza grande, sombreado suave, ojos con brillo y mofletes) en SVG, de
// frente y con poses, peinados, sombreros, uniformes y accesorios. El origen (0, 0) son los pies y
// mide unas 380 unidades de alto. Los ángulos de los brazos se miden desde la vertical hacia abajo;
// los positivos separan el brazo del cuerpo.

export type Pose =
  | "de-pie"
  | "habla"
  | "saluda"
  | "hola"
  | "senala"
  | "brazos-arriba"
  | "lee"
  | "piensa"
  | "camina"
  | "firmes";

export type Sombrero = "ninguno" | "tricornio" | "bicornio" | "corona" | "calanes" | "chistera" | "gorra";

export type Accesorio = "ninguno" | "fusil" | "trabuco" | "pergamino" | "libro" | "pluma" | "papeleta" | "maleta";

export type AspectoMonigote = {
  piel: string;
  pelo: string;
  peinado: "corto" | "largo" | "recogido" | "calvo";
  sombrero: Sombrero;
  colorSombrero?: string;
  /** Casaca, levita o chaqueta. */
  chaqueta: string;
  pantalon: string;
  zapatos?: string;
  /** Si existe, lleva vestido de este color en lugar de chaqueta y pantalón. */
  vestido?: string;
  accesorio: Accesorio;
  bigote?: boolean;
  patillas?: boolean;
  /** Correaje cruzado (el amarillo de la Guardia Civil histórica). */
  correaje?: string;
  botones?: string;
  fajin?: string;
  charreteras?: string;
  corbata?: string;
  camisa?: boolean;
  cinturon?: string;
  panuelo?: string;
  collar?: string;
};

// --- Color --------------------------------------------------------------------------------------

const rgb = (hex: string) => {
  const h = hex.replace("#", "");
  const n = parseInt(h.length === 3 ? h.replace(/./g, (c) => c + c) : h.slice(0, 6), 16);
  return [(n >> 16) & 255, (n >> 8) & 255, n & 255];
};
export const mezcla = (a: string, b: string, t: number) => {
  const x = rgb(a);
  const y = rgb(b);
  return `#${x
    .map((v, i) => Math.round(v + (y[i] - v) * t).toString(16).padStart(2, "0"))
    .join("")}`;
};
export const claro = (c: string, t = 0.3) => mezcla(c, "#ffffff", t);
export const oscuro = (c: string, t = 0.3) => mezcla(c, "#000000", t);
const id = (prefijo: string, c: string) => `${prefijo}${c.replace("#", "")}`;

/** Degradados de volumen para cada color del muñeco (ids deterministas: si se repiten, son iguales). */
const Degradados: React.FC<{ colores: string[]; piel: string }> = ({ colores, piel }) => (
  <defs>
    {colores.map((c) => (
      <linearGradient key={c} id={id("gl", c)} x1="0" y1="0" x2="1" y2="1">
        <stop offset="0" stopColor={claro(c, 0.32)} />
        <stop offset="0.5" stopColor={c} />
        <stop offset="1" stopColor={oscuro(c, 0.28)} />
      </linearGradient>
    ))}
    <radialGradient id={id("gr", piel)} cx="0.38" cy="0.32" r="0.8">
      <stop offset="0" stopColor={claro(piel, 0.35)} />
      <stop offset="0.6" stopColor={piel} />
      <stop offset="1" stopColor={oscuro(piel, 0.14)} />
    </radialGradient>
  </defs>
);
const gl = (c: string) => `url(#${id("gl", c)})`;

// --- Geometría ----------------------------------------------------------------------------------

const CABEZA = { x: 0, y: -282, rx: 70, ry: 72 };
const HOMBRO_Y = -196;
const HOMBRO_X = 48;
const BRAZO = 46;
const ANTEBRAZO = 46;

const rad = (g: number) => (g * Math.PI) / 180;
type Punto = { x: number; y: number };
type Brazo = [number, number];

function brazos(pose: Pose, s: number): { der: Brazo; izq: Brazo } {
  const osc = Math.sin(s * Math.PI * 2 * 1.6);
  switch (pose) {
    case "habla":
      return { der: [30, 115 + osc * 15], izq: [10, 6] };
    case "saluda":
      return { der: [150, 181], izq: [4, 2] };
    case "hola":
      return { der: [150, 168 + osc * 24], izq: [10, 6] };
    case "senala":
      return { der: [80, 86], izq: [10, 6] };
    case "brazos-arriba":
      return { der: [148 + osc * 5, 165], izq: [148 - osc * 5, 165] };
    case "lee":
      return { der: [15, -60], izq: [15, -60] };
    case "piensa":
      return { der: [20, -150], izq: [10, 6] };
    case "camina":
      return { der: [8 + osc * 12, 8 + osc * 16], izq: [8 - osc * 12, 8 - osc * 16] };
    case "firmes":
      return { der: [4, 2], izq: [4, 2] };
    default:
      return { der: [10, 6], izq: [10, 6] };
  }
}

const puntosBrazo = (lado: 1 | -1, a: Brazo) => {
  const hombro = { x: lado * HOMBRO_X, y: HOMBRO_Y };
  const codo = { x: hombro.x + lado * BRAZO * Math.sin(rad(a[0])), y: hombro.y + BRAZO * Math.cos(rad(a[0])) };
  const mano = { x: codo.x + lado * ANTEBRAZO * Math.sin(rad(a[1])), y: codo.y + ANTEBRAZO * Math.cos(rad(a[1])) };
  return { hombro, codo, mano };
};

// --- Piezas -------------------------------------------------------------------------------------

const BrazoSvg: React.FC<{ lado: 1 | -1; a: Brazo; manga: string; piel: string; puno?: string }> = ({ lado, a, manga, piel, puno }) => {
  const { hombro, codo, mano } = puntosBrazo(lado, a);
  const d = `M ${hombro.x} ${hombro.y} L ${codo.x} ${codo.y} L ${mano.x} ${mano.y}`;
  // El puño de la manga, un poco antes de la mano.
  const t = 0.78;
  const puño = { x: codo.x + (mano.x - codo.x) * t, y: codo.y + (mano.y - codo.y) * t };
  return (
    <g>
      <path d={d} stroke={oscuro(manga, 0.22)} strokeWidth={30} strokeLinecap="round" strokeLinejoin="round" fill="none" />
      <path d={d} stroke={manga} strokeWidth={24} strokeLinecap="round" strokeLinejoin="round" fill="none" />
      <path d={d} stroke={claro(manga, 0.25)} strokeWidth={7} strokeLinecap="round" strokeLinejoin="round" fill="none" transform={`translate(${-lado * 4} -2)`} opacity={0.7} />
      <circle cx={puño.x} cy={puño.y} r={14} fill={puno ?? oscuro(manga, 0.1)} />
      <circle cx={mano.x} cy={mano.y} r={15} fill={`url(#${id("gr", piel)})`} stroke={oscuro(piel, 0.12)} strokeWidth={2} />
    </g>
  );
};

const Pelo: React.FC<{ peinado: AspectoMonigote["peinado"]; color: string; delante: boolean }> = ({ peinado, color, delante }) => {
  const { y } = CABEZA;
  const brillo = claro(color, 0.35);
  if (peinado === "calvo") return null;
  if (!delante) {
    // Melena que asoma por detrás de la cabeza.
    if (peinado !== "largo") return null;
    return <path d={`M -80 ${y - 10} Q -86 ${y + 60} -74 ${y + 96} Q 0 ${y + 112} 74 ${y + 96} Q 86 ${y + 60} 80 ${y - 10} Z`} fill={gl(color)} />;
  }
  return (
    <g>
      <path
        d={`M -74 ${y + 6} Q -80 ${y - 78} 0 ${y - 82} Q 80 ${y - 78} 74 ${y + 6} Q 68 ${y - 36} 36 ${y - 42} Q 12 ${y - 22} -18 ${y - 40} Q -52 ${y - 38} -74 ${y + 6} Z`}
        fill={gl(color)}
      />
      {peinado === "recogido" && <circle cx={0} cy={y - 86} r={26} fill={gl(color)} />}
      <path d={`M -40 ${y - 62} Q -6 ${y - 76} 34 ${y - 64}`} stroke={brillo} strokeWidth={5} fill="none" strokeLinecap="round" opacity={0.8} />
      <path d={`M -30 ${y - 50} Q 0 ${y - 60} 26 ${y - 52}`} stroke={brillo} strokeWidth={4} fill="none" strokeLinecap="round" opacity={0.6} />
    </g>
  );
};

const SombreroSvg: React.FC<{ tipo: Sombrero; color?: string }> = ({ tipo, color }) => {
  const { y } = CABEZA;
  const brilloCharol = (
    <path d={`M -34 ${y - 62} Q 0 ${y - 76} 36 ${y - 64}`} stroke="#ffffffb0" strokeWidth={6} fill="none" strokeLinecap="round" />
  );
  switch (tipo) {
    case "tricornio": {
      // De frente: ala trasera levantada con el borde superior plano (la silueta del tricornio),
      // copa redonda delante, alas laterales recogidas y visera corta.
      const c = color ?? "#16181c";
      return (
        <g>
          <path d={`M -96 ${y - 24} Q -104 ${y - 72} -86 ${y - 122} L 86 ${y - 122} Q 104 ${y - 72} 96 ${y - 24} Z`} fill={gl(claro(c, 0.08))} />
          <path d={`M -84 ${y - 117} L 84 ${y - 117}`} stroke="#ffffff5a" strokeWidth={5} strokeLinecap="round" />
          <path d={`M -90 ${y - 60} Q -96 ${y - 92} -84 ${y - 112}`} stroke="#ffffff30" strokeWidth={4} fill="none" strokeLinecap="round" />
          <path d={`M -66 ${y - 22} Q -64 ${y - 82} 0 ${y - 86} Q 64 ${y - 82} 66 ${y - 22} Z`} fill={gl(c)} />
          <path d={`M -34 ${y - 68} Q 0 ${y - 80} 34 ${y - 70}`} stroke="#ffffffb0" strokeWidth={6} fill="none" strokeLinecap="round" />
          <path d={`M -88 ${y - 22} Q 0 ${y - 6} 88 ${y - 22} Q 0 ${y + 4} -88 ${y - 22} Z`} fill={oscuro(c, 0.2)} />
        </g>
      );
    }
    case "gorra": {
      const c = color ?? "#2d6a45";
      return (
        <g>
          <path d={`M -74 ${y - 26} Q -74 ${y - 94} 0 ${y - 98} Q 74 ${y - 94} 74 ${y - 26} Z`} fill={gl(c)} />
          <rect x={-74} y={y - 38} width={148} height={16} rx={6} fill={oscuro(c, 0.3)} />
          <path d={`M -64 ${y - 22} Q 0 ${y - 4} 64 ${y - 22} Q 0 ${y + 10} -64 ${y - 22} Z`} fill="#15171a" />
          <circle cx={0} cy={y - 62} r={13} fill="#e8c14a" stroke="#b08a1e" strokeWidth={3} />
          <path d={`M -40 ${y - 84} Q 0 ${y - 94} 40 ${y - 84}`} stroke="#ffffff55" strokeWidth={5} fill="none" strokeLinecap="round" />
        </g>
      );
    }
    case "bicornio": {
      const c = color ?? "#16181c";
      return (
        <g>
          <path d={`M -118 ${y - 34} Q 0 ${y - 170} 118 ${y - 34} Q 0 ${y - 66} -118 ${y - 34} Z`} fill={gl(c)} stroke="#d4a72c" strokeWidth={6} strokeLinejoin="round" />
          <path d={`M -70 ${y - 86} Q 0 ${y - 128} 70 ${y - 86}`} stroke="#ffffff50" strokeWidth={6} fill="none" strokeLinecap="round" />
          <circle cx={0} cy={y - 76} r={16} fill="#c0392b" stroke="#d4a72c" strokeWidth={5} />
          <circle cx={0} cy={y - 76} r={6} fill="#f1c40f" />
        </g>
      );
    }
    case "corona":
      return (
        <g>
          <path
            d={`M -54 ${y - 50} L -62 ${y - 116} L -30 ${y - 82} L 0 ${y - 126} L 30 ${y - 82} L 62 ${y - 116} L 54 ${y - 50} Z`}
            fill={gl(color ?? "#e8b83a")}
            stroke="#a8801c"
            strokeWidth={4}
            strokeLinejoin="round"
          />
          <rect x={-56} y={y - 60} width={112} height={16} rx={6} fill="#c9971f" />
          {[-30, 0, 30].map((cx) => (
            <circle key={cx} cx={cx} cy={y - 52} r={6} fill={cx === 0 ? "#c0392b" : "#2e86de"} />
          ))}
          {[-62, 0, 62].map((cx) => (
            <circle key={cx} cx={cx} cy={cx === 0 ? y - 128 : y - 118} r={7} fill="#fff4c2" />
          ))}
        </g>
      );
    case "calanes": {
      const c = color ?? "#1d1b1a";
      return (
        <g>
          <path d={`M -76 ${y - 32} Q -80 ${y - 70} 0 ${y - 74} Q 80 ${y - 70} 76 ${y - 32} Z`} fill="#c0392b" />
          <ellipse cx={0} cy={y - 62} rx={112} ry={20} fill={gl(c)} />
          <path d={`M -48 ${y - 66} L -40 ${y - 110} Q 0 ${y - 122} 40 ${y - 110} L 48 ${y - 66} Z`} fill={gl(c)} />
          <rect x={-48} y={y - 82} width={96} height={12} fill="#7a1f1f" />
          {[-64, -80].map((cx) => (
            <circle key={cx} cx={cx} cy={y - 70} r={10} fill="#e74c3c" />
          ))}
        </g>
      );
    }
    case "chistera": {
      const c = color ?? "#16181c";
      return (
        <g>
          <ellipse cx={0} cy={y - 56} rx={94} ry={16} fill={oscuro(c, 0.1)} />
          <path d={`M -54 ${y - 58} L -58 ${y - 176} Q 0 ${y - 186} 58 ${y - 176} L 54 ${y - 58} Z`} fill={gl(c)} />
          <rect x={-55} y={y - 88} width={110} height={20} fill="#6b1d1d" />
          <path d={`M -34 ${y - 170} L -30 ${y - 96}`} stroke="#ffffff45" strokeWidth={8} strokeLinecap="round" />
        </g>
      );
    }
    default:
      return null;
  }
};

const Cara: React.FC<{ a: AspectoMonigote; s: number; hablando?: boolean }> = ({ a, s, hablando }) => {
  const { y } = CABEZA;
  const dx = 6; // un poco girada hacia donde mira
  const parpadeo = s % 3.4 > 3.25;
  const boca = hablando ? 4 + Math.abs(Math.sin(s * Math.PI * 2 * 3.2)) * 9 : 0;
  const tinta = "#2a1d17";
  return (
    <g>
      {[-24, 24].map((ox) => (
        <g key={ox}>
          <path d={`M ${ox + dx - 11} ${y - 26} Q ${ox + dx} ${y - 33} ${ox + dx + 11} ${y - 26}`} stroke={oscuro(a.pelo, 0.1)} strokeWidth={5} fill="none" strokeLinecap="round" />
          <ellipse cx={ox + dx} cy={y - 4} rx={9} ry={parpadeo ? 1.5 : 12} fill={tinta} />
          {!parpadeo && <circle cx={ox + dx + 3} cy={y - 9} r={3.6} fill="#fff" />}
        </g>
      ))}
      {[-40, 40].map((ox) => (
        <ellipse key={ox} cx={ox + dx} cy={y + 22} rx={14} ry={8} fill="#f08c8c" opacity={0.45} />
      ))}
      <path d={`M ${dx + 2} ${y + 2} Q ${dx - 6} ${y + 14} ${dx + 3} ${y + 18}`} stroke={oscuro(a.piel, 0.28)} strokeWidth={3.5} fill="none" strokeLinecap="round" />
      {a.bigote && (
        <path
          d={`M ${dx - 26} ${y + 30} Q ${dx - 14} ${y + 18} ${dx} ${y + 25} Q ${dx + 14} ${y + 18} ${dx + 26} ${y + 30} Q ${dx + 12} ${y + 29} ${dx} ${y + 31} Q ${dx - 12} ${y + 29} ${dx - 26} ${y + 30} Z`}
          fill={oscuro(a.pelo, 0.15)}
        />
      )}
      {boca > 0 ? (
        <ellipse cx={dx} cy={y + 40} rx={10} ry={boca / 2 + 2} fill="#8a2c2c" />
      ) : (
        <g>
          <path d={`M ${dx - 14} ${y + 34} Q ${dx} ${y + 50} ${dx + 14} ${y + 34} Z`} fill="#8a2c2c" />
          <path d={`M ${dx - 12} ${y + 35} Q ${dx} ${y + 39} ${dx + 12} ${y + 35} L ${dx + 10} ${y + 38} Q ${dx} ${y + 41} ${dx - 10} ${y + 38} Z`} fill="#fff" />
        </g>
      )}
    </g>
  );
};

const Cuerpo: React.FC<{ a: AspectoMonigote }> = ({ a }) => {
  const torso = `M -54 -186 Q -58 -216 -28 -220 L 28 -220 Q 58 -216 54 -186 L 50 -104 Q 50 -90 36 -90 L -36 -90 Q -50 -90 -50 -104 Z`;
  if (a.vestido) {
    const v = a.vestido;
    return (
      <g>
        <path d={`M -50 -186 Q -56 -216 -28 -220 L 28 -220 Q 56 -216 50 -186 L 46 -142 L -46 -142 Z`} fill={gl(v)} />
        <path d={`M -46 -146 L 46 -146 L 84 -46 Q 0 -30 -84 -46 Z`} fill={gl(v)} />
        {[-44, -16, 16, 44].map((x) => (
          <path key={x} d={`M ${x * 0.55} -140 L ${x} -44`} stroke={oscuro(v, 0.15)} strokeWidth={3} opacity={0.6} />
        ))}
        <rect x={-46} y={-152} width={92} height={14} rx={6} fill={oscuro(v, 0.25)} />
        <rect x={-10} y={-155} width={20} height={20} rx={4} fill="none" stroke="#e2b53a" strokeWidth={4} />
        {a.collar && <path d="M -28 -214 Q 0 -196 28 -214" stroke={a.collar} strokeWidth={4} fill="none" />}
      </g>
    );
  }
  const c = a.chaqueta;
  return (
    <g>
      <path d={torso} fill={gl(c)} />
      {a.camisa && <path d="M -22 -220 L 0 -176 L 22 -220 Z" fill="#fbfbf8" />}
      {a.corbata && <path d="M -6 -214 L 6 -214 L 9 -168 L 0 -156 L -9 -168 Z" fill={a.corbata} />}
      {a.camisa && (
        <>
          <path d="M -24 -220 L -6 -170 L -30 -178 Z" fill={oscuro(c, 0.15)} />
          <path d="M 24 -220 L 6 -170 L 30 -178 Z" fill={oscuro(c, 0.15)} />
        </>
      )}
      {a.panuelo && <path d="M -26 -220 L 26 -220 L 0 -186 Z" fill={a.panuelo} />}
      {a.correaje && (
        <>
          <path d="M -46 -210 L 44 -104" stroke={a.correaje} strokeWidth={13} strokeLinecap="round" />
          <path d="M 46 -210 L -44 -104" stroke={a.correaje} strokeWidth={13} strokeLinecap="round" />
          <path d="M -46 -210 L 44 -104" stroke="#ffffff55" strokeWidth={3} transform="translate(-3 -2)" />
          <rect x={-13} y={-166} width={26} height={24} rx={4} fill={oscuro(a.correaje, 0.1)} stroke={oscuro(a.correaje, 0.35)} strokeWidth={3} />
        </>
      )}
      {a.botones && [-190, -164, -138].map((by) => <circle key={by} cx={a.correaje ? 30 : 0} cy={by} r={5} fill={a.botones} stroke={oscuro(a.botones!, 0.3)} strokeWidth={1.5} />)}
      {a.cinturon && (
        <>
          <rect x={-50} y={-116} width={100} height={14} rx={4} fill={a.cinturon} />
          <rect x={-10} y={-119} width={20} height={20} rx={4} fill="none" stroke="#e2b53a" strokeWidth={4} />
        </>
      )}
      {a.fajin && (
        <>
          <rect x={-51} y={-124} width={102} height={22} rx={6} fill={gl(a.fajin)} />
          <path d={`M 34 -104 L 44 -64 L 30 -66 L 26 -104 Z`} fill={a.fajin} />
          <path d={`M 40 -64 L 44 -54 M 34 -65 L 34 -54`} stroke="#e2b53a" strokeWidth={3} />
        </>
      )}
      {a.charreteras &&
        [-1, 1].map((l) => (
          <g key={l}>
            <ellipse cx={l * 44} cy={-212} rx={22} ry={10} fill={gl(a.charreteras!)} />
            {[-14, -7, 0, 7, 14].map((f) => (
              <line key={f} x1={l * 44 + f} x2={l * 44 + f * 1.1} y1={-204} y2={-190} stroke={a.charreteras} strokeWidth={3} />
            ))}
          </g>
        ))}
    </g>
  );
};

const Piernas: React.FC<{ a: AspectoMonigote; pose: Pose; s: number }> = ({ a, pose, s }) => {
  const paso = Math.sin(s * Math.PI * 2 * 1.6);
  const alza = (lado: number) => (pose === "camina" ? Math.max(0, lado * paso) * 16 : 0);
  const color = a.vestido ? a.piel : a.pantalon;
  const zapato = a.zapatos ?? "#1c1c1f";
  return (
    <g>
      {[-1, 1].map((l) => (
        <g key={l} transform={`translate(0 ${-alza(l)})`}>
          <rect x={l * 22 - 15} y={-100} width={30} height={88} rx={10} fill={gl(color)} />
          <path d={`M ${l * 22 - 22} -4 Q ${l * 22 - 24} -26 ${l * 22} -26 Q ${l * 22 + 26} -26 ${l * 22 + 24 + l * 6} -4 Z`} fill={gl(zapato)} />
          <path d={`M ${l * 22 - 10} -20 Q ${l * 22} -24 ${l * 22 + 10} -20`} stroke="#ffffff66" strokeWidth={3} fill="none" strokeLinecap="round" />
        </g>
      ))}
    </g>
  );
};

const AccesorioSvg: React.FC<{ tipo: Accesorio; der: Punto; izq: Punto; delante: boolean }> = ({ tipo, der, izq, delante }) => {
  switch (tipo) {
    case "fusil": {
      // Fusil con bayoneta, vertical junto al costado; en la mano libre si la derecha saluda.
      const m = delante ? izq : der;
      const l = m.x > 0 ? 1 : -1;
      return (
        <g transform={`translate(${m.x + l * 10} ${m.y}) rotate(${l * 4})`}>
          <path d="M -5 -260 L 0 -300 L 5 -260 Z" fill="#c9ced6" />
          <rect x={-5} y={-262} width={10} height={210} rx={3} fill="#5b636e" />
          <rect x={-3} y={-262} width={3} height={200} fill="#9aa3ad" />
          <path d="M -11 -110 L 9 -110 L 12 40 Q 0 52 -14 40 Z" fill="url(#gl8a5a2b)" />
          <rect x={-10} y={-160} width={18} height={10} rx={2} fill="#c9a227" />
        </g>
      );
    }
    case "trabuco":
      return (
        <g transform={`translate(${der.x} ${der.y}) rotate(-86)`}>
          <path d="M -12 -14 L 12 -14 L 10 34 Q 0 44 -10 34 Z" fill="url(#gl8a5a2b)" />
          <rect x={-6} y={-96} width={12} height={84} rx={3} fill="#4d545d" />
          <path d="M -6 -96 L -16 -122 L 16 -122 L 6 -96 Z" fill="#6c737c" />
        </g>
      );
    case "maleta":
      return (
        <g transform={`translate(${izq.x} ${izq.y + 10})`}>
          <path d="M -12 -6 Q -12 -20 0 -20 Q 12 -20 12 -6" stroke="#5a3a20" strokeWidth={5} fill="none" />
          <rect x={-38} y={-6} width={76} height={58} rx={10} fill="url(#gl9a6a3a)" />
          <rect x={-38} y={10} width={76} height={6} fill="#6b4226" />
          {[-24, 24].map((x) => (
            <rect key={x} x={x - 4} y={-8} width={8} height={62} rx={2} fill="#c9a227" />
          ))}
        </g>
      );
    default: {
      const centro = { x: (der.x + izq.x) / 2, y: (der.y + izq.y) / 2 };
      const p = tipo === "pluma" || !delante ? der : centro;
      const off = delante && tipo !== "pluma" ? -14 : -10;
      switch (tipo) {
        case "pergamino":
          return (
            <g transform={`translate(${p.x} ${p.y + off})`}>
              <rect x={-38} y={-40} width={76} height={80} fill="#f6e7bf" stroke="#c49a4a" strokeWidth={3} />
              {[-22, -10, 2, 14].map((l) => (
                <line key={l} x1={-24} x2={24} y1={l} y2={l} stroke="#c49a4a" strokeWidth={3} />
              ))}
              <circle cx={16} cy={28} r={8} fill="#c0392b" />
              <rect x={-46} y={-50} width={92} height={16} rx={8} fill="url(#gle2c27a)" />
              <rect x={-46} y={34} width={92} height={16} rx={8} fill="url(#gle2c27a)" />
            </g>
          );
        case "libro":
          return (
            <g transform={`translate(${p.x} ${p.y + off})`}>
              <rect x={-36} y={-44} width={72} height={88} rx={6} fill="url(#gl0b5d33)" />
              <rect x={30} y={-40} width={8} height={80} fill="#f4f0e4" />
              <rect x={-22} y={-24} width={44} height={8} rx={2} fill="#e2b53a" />
              <circle cx={0} cy={8} r={12} fill="none" stroke="#e2b53a" strokeWidth={3} />
            </g>
          );
        case "papeleta":
          return (
            <g transform={`translate(${p.x} ${p.y + off}) rotate(6)`}>
              <rect x={-26} y={-34} width={52} height={62} fill="#fff" stroke="#8a8a8a" strokeWidth={3} />
              <line x1={-14} x2={14} y1={-14} y2={-14} stroke="#8a8a8a" strokeWidth={3} />
              <line x1={-14} x2={8} y1={-2} y2={-2} stroke="#8a8a8a" strokeWidth={3} />
            </g>
          );
        case "pluma":
          return <path d={`M ${p.x} ${p.y} Q ${p.x + 24} ${p.y - 50} ${p.x + 10} ${p.y - 90} Q ${p.x - 6} ${p.y - 44} ${p.x} ${p.y} Z`} fill="#fdfdfd" stroke="#999" strokeWidth={3} />;
        default:
          return null;
      }
    }
  }
};

export const Monigote: React.FC<{
  aspecto: AspectoMonigote;
  pose: Pose;
  /** Segundos desde que empezó la escena (mueve piernas, brazos, parpadeo y boca). */
  s: number;
  hablando?: boolean;
  mirando?: "izq" | "der";
}> = ({ aspecto: a, pose, s, hablando, mirando = "der" }) => {
  const b = brazos(pose, s);
  const respira = Math.sin(s * Math.PI * 2 * 0.5) * 2.5;
  const rebote = pose === "camina" ? -Math.abs(Math.sin(s * Math.PI * 2 * 1.6)) * 7 : 0;
  const manoDer = puntosBrazo(1, b.der).mano;
  const manoIzq = puntosBrazo(-1, b.izq).mano;
  const derLevantada = ["saluda", "hola", "senala", "brazos-arriba"].includes(pose);
  const sujetaDelante = pose === "lee";
  const manga = a.vestido ?? a.chaqueta;
  const colores = [a.chaqueta, a.pantalon, a.zapatos ?? "#1c1c1f", a.pelo, a.vestido, a.fajin, a.charreteras, a.colorSombrero, "#16181c", "#2d6a45", "#e8b83a", "#1d1b1a", "#8a5a2b", "#9a6a3a", "#e2c27a", "#0b5d33"].filter(
    (c): c is string => !!c,
  );
  const unicos = [...new Set([...colores, oscuro("#16181c", 0.1), claro(a.colorSombrero ?? "#16181c", 0.08)])];
  return (
    <g transform={`scale(${mirando === "izq" ? -1 : 1} 1)`}>
      <Degradados colores={unicos} piel={a.piel} />
      <ellipse cx={0} cy={2} rx={74} ry={13} fill="#00000022" />
      <g transform={`translate(0 ${rebote})`}>
        <Pelo peinado={a.peinado} color={a.pelo} delante={false} />
        <Piernas a={a} pose={pose} s={s} />
        {a.accesorio === "fusil" && <AccesorioSvg tipo="fusil" der={manoDer} izq={manoIzq} delante={derLevantada} />}
        <Cuerpo a={a} />
        <g transform={`translate(0 ${respira})`}>
          {[-1, 1].map((l) => (
            <ellipse key={l} cx={l * 68} cy={CABEZA.y + 4} rx={13} ry={17} fill={`url(#${id("gr", a.piel)})`} />
          ))}
          <ellipse cx={CABEZA.x} cy={CABEZA.y} rx={CABEZA.rx} ry={CABEZA.ry} fill={`url(#${id("gr", a.piel)})`} />
          {a.patillas && [-1, 1].map((l) => <path key={l} d={`M ${l * 62} ${CABEZA.y - 20} L ${l * 64} ${CABEZA.y + 22} L ${l * 54} ${CABEZA.y + 18} Z`} fill={a.pelo} />)}
          <Cara a={a} s={s} hablando={hablando} />
          <Pelo peinado={a.sombrero === "ninguno" || a.sombrero === "corona" ? a.peinado : "corto"} color={a.pelo} delante />
          <g transform="translate(0 -12)">
            <SombreroSvg tipo={a.sombrero} color={a.colorSombrero} />
          </g>
        </g>
        {a.accesorio === "maleta" && (
          <AccesorioSvg tipo="maleta" der={manoDer} izq={pose === "brazos-arriba" ? { x: -92, y: -60 } : manoIzq} delante={false} />
        )}
        <BrazoSvg lado={-1} a={b.izq} manga={manga} piel={a.piel} />
        <BrazoSvg lado={1} a={b.der} manga={manga} piel={a.piel} />
        {!["fusil", "maleta", "ninguno"].includes(a.accesorio) && <AccesorioSvg tipo={a.accesorio} der={manoDer} izq={manoIzq} delante={sujetaDelante} />}
      </g>
    </g>
  );
};
