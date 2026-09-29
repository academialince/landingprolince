// Monigote en SVG con poses, sombreros y accesorios. El origen (0, 0) son los pies; mide unas 320
// unidades de alto. Los ángulos se miden desde la vertical hacia abajo; los positivos van hacia donde
// mira el personaje.

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

export type Sombrero =
  | "ninguno"
  | "tricornio"
  | "bicornio"
  | "corona"
  | "calanes"
  | "chistera"
  | "gorra";

export type Accesorio = "ninguno" | "fusil" | "trabuco" | "pergamino" | "libro" | "pluma" | "papeleta";

export type AspectoMonigote = {
  color: string;
  sombrero: Sombrero;
  colorSombrero?: string;
  accesorio: Accesorio;
  bigote?: boolean;
  falda?: string;
  panuelo?: string;
};

const HOMBRO = { x: 0, y: -200 };
const CADERA = { x: 0, y: -120 };
const CABEZA = { x: 0, y: -248, r: 36 };
const BRAZO = 48;
const ANTEBRAZO = 46;
const MUSLO = 62;
const PIERNA = 58;

const rad = (g: number) => (g * Math.PI) / 180;
const punta = (desde: { x: number; y: number }, largo: number, angulo: number) => ({
  x: desde.x + largo * Math.sin(rad(angulo)),
  y: desde.y + largo * Math.cos(rad(angulo)),
});

type Brazo = [number, number];

/** Ángulos [brazo, antebrazo] del brazo delantero y del trasero para cada pose. */
function brazos(pose: Pose, s: number): { delante: Brazo; detras: Brazo } {
  const osc = Math.sin(s * Math.PI * 2 * 1.6);
  switch (pose) {
    case "habla":
      return { delante: [35, 95 + osc * 18], detras: [-18, -8] };
    case "saluda":
      return { delante: [100, -153], detras: [-4, -2] };
    case "hola":
      return { delante: [150, 170 + osc * 28], detras: [-15, -5] };
    case "senala":
      return { delante: [82, 86], detras: [-15, -5] };
    case "brazos-arriba":
      return { delante: [125 + osc * 4, 172], detras: [-125 - osc * 4, -172] };
    case "lee":
      return { delante: [22, 100], detras: [10, 95] };
    case "piensa":
      return { delante: [20, 178], detras: [-20, 60] };
    case "camina":
      return { delante: [osc * 26, osc * 26 + 12], detras: [-osc * 26, -osc * 26 + 12] };
    case "firmes":
      return { delante: [4, 2], detras: [-4, -2] };
    default:
      return { delante: [18, 6], detras: [-18, -6] };
  }
}

function piernas(pose: Pose, s: number): { delante: Brazo; detras: Brazo } {
  if (pose === "camina") {
    const a = Math.sin(s * Math.PI * 2 * 1.6) * 26;
    return { delante: [a, a - Math.max(0, -a) * 0.9], detras: [-a, -a - Math.max(0, a) * 0.9] };
  }
  if (pose === "firmes") return { delante: [2, 0], detras: [-2, 0] };
  return { delante: [10, 6], detras: [-10, -6] };
}

const SombreroSvg: React.FC<{ tipo: Sombrero; color?: string }> = ({ tipo, color }) => {
  const { y, r } = CABEZA;
  switch (tipo) {
    case "tricornio":
      // Charol negro: copa redonda, ala trasera levantada y visera corta delante.
      return (
        <g>
          <path d={`M -44 ${y - 12} L -64 ${y - 50} Q -64 ${y - 62} -52 ${y - 62} L -24 ${y - 44} Z`} fill={color ?? "#111"} />
          <path d={`M -42 ${y - 14} Q -40 ${y - 60} 2 ${y - 62} Q 40 ${y - 58} 42 ${y - 16} Z`} fill={color ?? "#111"} />
          <path d={`M 34 ${y - 20} Q 56 ${y - 20} 62 ${y - 10} L 36 ${y - 12} Z`} fill={color ?? "#111"} />
          <path d={`M -22 ${y - 46} Q 0 ${y - 56} 22 ${y - 48}`} stroke="#ffffff66" strokeWidth={5} fill="none" strokeLinecap="round" />
        </g>
      );
    case "bicornio":
      return (
        <g>
          <path d={`M -70 ${y - 18} Q 0 ${y - 100} 70 ${y - 18} Q 0 ${y - 40} -70 ${y - 18} Z`} fill={color ?? "#15171a"} stroke="#c9a227" strokeWidth={4} />
          <circle cx={6} cy={y - 50} r={9} fill="#c0392b" stroke="#c9a227" strokeWidth={3} />
        </g>
      );
    case "corona":
      return (
        <g>
          <path
            d={`M -32 ${y - 26} L -36 ${y - 66} L -16 ${y - 46} L 0 ${y - 74} L 16 ${y - 46} L 36 ${y - 66} L 32 ${y - 26} Z`}
            fill={color ?? "#e2b53a"}
            stroke="#a7801b"
            strokeWidth={4}
            strokeLinejoin="round"
          />
          <circle cx={0} cy={y - 40} r={6} fill="#c0392b" />
        </g>
      );
    case "calanes":
      return (
        <g>
          <ellipse cx={0} cy={y - r + 4} rx={66} ry={11} fill={color ?? "#1b1b1b"} />
          <path d={`M -30 ${y - r + 2} L -26 ${y - r - 26} Q 0 ${y - r - 34} 26 ${y - r - 26} L 30 ${y - r + 2} Z`} fill={color ?? "#1b1b1b"} />
          <circle cx={-40} cy={y - r - 4} r={7} fill="#c0392b" />
          <circle cx={-52} cy={y - r - 2} r={6} fill="#c0392b" />
        </g>
      );
    case "chistera":
      return (
        <g>
          <ellipse cx={0} cy={y - r + 6} rx={54} ry={10} fill={color ?? "#15171a"} />
          <rect x={-32} y={y - r - 70} width={64} height={76} rx={6} fill={color ?? "#15171a"} />
          <rect x={-32} y={y - r - 12} width={64} height={12} fill="#7a1f1f" />
        </g>
      );
    case "gorra":
      return (
        <g>
          <path d={`M -38 ${y - 12} Q -38 ${y - 56} 0 ${y - 58} Q 38 ${y - 56} 38 ${y - 12} Z`} fill={color ?? "#1f5a3a"} />
          <path d={`M 26 ${y - 16} Q 60 ${y - 16} 66 ${y - 6} L 26 ${y - 8} Z`} fill="#111" />
          <circle cx={4} cy={y - 34} r={8} fill="#e2b53a" />
        </g>
      );
    default:
      return null;
  }
};

const AccesorioSvg: React.FC<{ tipo: Accesorio; mano: { x: number; y: number } }> = ({ tipo, mano }) => {
  const { x, y } = mano;
  switch (tipo) {
    case "fusil":
      return (
        <g transform={`translate(${x - 14} ${y}) rotate(-8)`}>
          <rect x={-6} y={-150} width={10} height={130} rx={4} fill="#2b2b2b" />
          <path d="M -9 -24 L 7 -24 L 12 34 L -10 34 Z" fill="#7a4a22" />
        </g>
      );
    case "trabuco":
      return (
        <g transform={`translate(${x} ${y}) rotate(-80)`}>
          <path d="M -8 -10 L 8 -10 L 6 26 L -6 26 Z" fill="#7a4a22" />
          <rect x={-4} y={-74} width={8} height={66} fill="#2b2b2b" />
          <path d="M -4 -74 L -12 -92 L 12 -92 L 4 -74 Z" fill="#2b2b2b" />
        </g>
      );
    case "pergamino":
      return (
        <g transform={`translate(${x + 4} ${y - 30})`}>
          <rect x={-28} y={-8} width={56} height={62} fill="#f3e2b3" stroke="#b08a3e" strokeWidth={4} />
          <rect x={-34} y={-14} width={68} height={12} rx={6} fill="#d8bb77" stroke="#b08a3e" strokeWidth={3} />
          <rect x={-34} y={50} width={68} height={12} rx={6} fill="#d8bb77" stroke="#b08a3e" strokeWidth={3} />
          {[8, 20, 32].map((l) => (
            <line key={l} x1={-18} x2={18} y1={l} y2={l} stroke="#b08a3e" strokeWidth={3} />
          ))}
        </g>
      );
    case "libro":
      return (
        <g transform={`translate(${x + 6} ${y - 26})`}>
          <rect x={-26} y={-6} width={52} height={64} rx={5} fill="#03512d" stroke="#012b17" strokeWidth={4} />
          <rect x={-16} y={10} width={32} height={6} fill="#e2b53a" />
        </g>
      );
    case "pluma":
      return <path d={`M ${x} ${y} Q ${x + 18} ${y - 40} ${x + 8} ${y - 70} Q ${x - 4} ${y - 36} ${x} ${y} Z`} fill="#fafafa" stroke="#333" strokeWidth={3} />;
    case "papeleta":
      return (
        <g transform={`translate(${x + 4} ${y - 18}) rotate(8)`}>
          <rect x={-18} y={-6} width={36} height={46} fill="#fff" stroke="#333" strokeWidth={3} />
          <line x1={-10} x2={10} y1={8} y2={8} stroke="#333" strokeWidth={3} />
        </g>
      );
    default:
      return null;
  }
};

export const Monigote: React.FC<{
  aspecto: AspectoMonigote;
  pose: Pose;
  /** Segundos desde que empezó la escena (mueve piernas, brazos, parpadeo y boca). */
  s: number;
  hablando?: boolean;
  mirando?: "izq" | "der";
}> = ({ aspecto, pose, s, hablando, mirando = "der" }) => {
  const b = brazos(pose, s);
  const p = piernas(pose, s);
  const respira = Math.sin(s * Math.PI * 2 * 0.5) * 2;
  const rebote = pose === "camina" ? -Math.abs(Math.sin(s * Math.PI * 2 * 1.6)) * 8 : 0;
  const trazo = { stroke: aspecto.color, strokeWidth: 10, strokeLinecap: "round", strokeLinejoin: "round", fill: "none" } as const;

  const codo = (a: Brazo) => punta(HOMBRO, BRAZO, a[0]);
  const mano = (a: Brazo) => punta(codo(a), ANTEBRAZO, a[1]);
  const rodilla = (a: Brazo) => punta(CADERA, MUSLO, a[0]);
  const pie = (a: Brazo) => punta(rodilla(a), PIERNA, a[1]);
  const linea = (a: { x: number; y: number }, c: { x: number; y: number }, d: { x: number; y: number }) =>
    `M ${a.x} ${a.y} L ${c.x} ${c.y} L ${d.x} ${d.y}`;

  const parpadeo = s % 3.2 > 3.05;
  const boca = hablando ? 5 + Math.abs(Math.sin(s * Math.PI * 2 * 3.2)) * 9 : 0;

  return (
    <g transform={`scale(${mirando === "izq" ? -1 : 1} 1) translate(0 ${rebote})`}>
      <ellipse cx={0} cy={6 - rebote} rx={52} ry={9} fill="#00000018" />
      <path d={linea(CADERA, rodilla(p.detras), pie(p.detras))} {...trazo} />
      <path d={linea(CADERA, rodilla(p.delante), pie(p.delante))} {...trazo} />
      {aspecto.accesorio === "fusil" && <AccesorioSvg tipo="fusil" mano={mano(b.detras)} />}
      <path d={linea(HOMBRO, codo(b.detras), mano(b.detras))} {...trazo} />
      {aspecto.falda && (
        <path d={`M -8 ${CADERA.y - 50} L -46 ${CADERA.y + 70} L 46 ${CADERA.y + 70} L 8 ${CADERA.y - 50} Z`} fill={aspecto.falda} stroke={aspecto.color} strokeWidth={6} strokeLinejoin="round" />
      )}
      <path d={`M 0 ${CABEZA.y + CABEZA.r} L 0 ${CADERA.y + respira * 0.3}`} {...trazo} />
      {aspecto.panuelo && (
        <path d={`M -16 ${CABEZA.y + CABEZA.r - 2} L 16 ${CABEZA.y + CABEZA.r - 2} L 0 ${CABEZA.y + CABEZA.r + 22} Z`} fill={aspecto.panuelo} />
      )}
      <g transform={`translate(0 ${respira})`}>
        <circle cx={CABEZA.x} cy={CABEZA.y} r={CABEZA.r} fill="#fffdf8" stroke={aspecto.color} strokeWidth={9} />
        {[8, 22].map((ox) => (
          <ellipse key={ox} cx={ox} cy={CABEZA.y - 6} rx={4.5} ry={parpadeo ? 1 : 5.5} fill="#121b16" />
        ))}
        {aspecto.bigote && (
          <path d={`M 2 ${CABEZA.y + 10} Q 16 ${CABEZA.y + 2} 30 ${CABEZA.y + 10} Q 16 ${CABEZA.y + 8} 2 ${CABEZA.y + 10} Z`} stroke="#3a2a1a" strokeWidth={6} fill="#3a2a1a" strokeLinejoin="round" />
        )}
        {boca > 0 ? (
          <ellipse cx={17} cy={CABEZA.y + 18} rx={7} ry={boca / 2} fill="#7a1f1f" />
        ) : (
          <path d={`M 9 ${CABEZA.y + 16} Q 17 ${CABEZA.y + 22} 26 ${CABEZA.y + 16}`} stroke="#121b16" strokeWidth={4} fill="none" strokeLinecap="round" />
        )}
        <SombreroSvg tipo={aspecto.sombrero} color={aspecto.colorSombrero} />
      </g>
      <path d={linea(HOMBRO, codo(b.delante), mano(b.delante))} {...trazo} />
      {aspecto.accesorio !== "fusil" && <AccesorioSvg tipo={aspecto.accesorio} mano={mano(b.delante)} />}
    </g>
  );
};
