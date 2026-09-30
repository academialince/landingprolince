// Fondos detallados, con el mismo acabado suave que los muñecos (degradados, brillos y sombras
// difusas). Lienzo de 1000 × 820 con el suelo en y = 740.
import { claro, oscuro } from "./Monigote";

const W = 1000;
const H = 820;
const SUELO = 740;

/** Degradado lineal con id propio (los fondos de dos escenas pueden convivir en la cortinilla). */
const Lin: React.FC<{ id: string; de: string; a: string; horizontal?: boolean; medio?: string }> = ({ id, de, a, horizontal, medio }) => (
  <linearGradient id={id} x1="0" y1="0" x2={horizontal ? 1 : 0} y2={horizontal ? 0 : 1}>
    <stop offset="0" stopColor={de} />
    {medio && <stop offset="0.5" stopColor={medio} />}
    <stop offset="1" stopColor={a} />
  </linearGradient>
);

/** Degradado cilíndrico (columnas, cortinas, mástiles): oscuro, claro, oscuro. */
const Cil: React.FC<{ id: string; c: string }> = ({ id, c }) => (
  <linearGradient id={id} x1="0" y1="0" x2="1" y2="0">
    <stop offset="0" stopColor={oscuro(c, 0.25)} />
    <stop offset="0.38" stopColor={claro(c, 0.3)} />
    <stop offset="1" stopColor={oscuro(c, 0.3)} />
  </linearGradient>
);

const Nube: React.FC<{ x: number; y: number; s: number; t: number }> = ({ x, y, s, t }) => (
  <g transform={`translate(${((x + t * 12) % 1300) - 150} ${y}) scale(${s})`}>
    <ellipse cx={0} cy={14} rx={90} ry={16} fill="#00000008" />
    <ellipse cx={-40} cy={0} rx={44} ry={28} fill="#f4f7fb" />
    <ellipse cx={10} cy={-16} rx={52} ry={40} fill="#ffffff" />
    <ellipse cx={58} cy={2} rx={40} ry={26} fill="#f7f9fc" />
    <ellipse cx={0} cy={10} rx={86} ry={20} fill="#ffffff" />
  </g>
);

const Sol: React.FC<{ x: number; y: number; t: number }> = ({ x, y, t }) => (
  <g>
    <circle cx={x} cy={y} r={120 + Math.sin(t * 1.4) * 6} fill="url(#solHalo)" />
    <circle cx={x} cy={y} r={54} fill="url(#solDisco)" />
  </g>
);

const DefsCielo: React.FC<{ id: string; de: string; a: string }> = ({ id, de, a }) => (
  <>
    <Lin id={id} de={de} a={a} />
    <radialGradient id="solHalo">
      <stop offset="0" stopColor="#fff3b0" stopOpacity={0.9} />
      <stop offset="1" stopColor="#fff3b0" stopOpacity={0} />
    </radialGradient>
    <radialGradient id="solDisco" cx="0.4" cy="0.35">
      <stop offset="0" stopColor="#fff8d6" />
      <stop offset="1" stopColor="#ffc94a" />
    </radialGradient>
  </>
);

const Olivo: React.FC<{ x: number; y: number; s: number }> = ({ x, y, s }) => (
  <g transform={`translate(${x} ${y}) scale(${s})`}>
    <ellipse cx={0} cy={4} rx={46} ry={8} fill="#00000018" />
    <path d="M -6 0 Q -10 -30 -2 -54 L 6 -54 Q 10 -30 8 0 Z" fill="url(#tronco)" />
    <ellipse cx={-22} cy={-74} rx={36} ry={28} fill="#7e9a52" />
    <ellipse cx={22} cy={-78} rx={38} ry={30} fill="#86a35a" />
    <ellipse cx={0} cy={-98} rx={40} ry={30} fill="#93b066" />
    <ellipse cx={-10} cy={-106} rx={18} ry={10} fill="#b2cb86" opacity={0.8} />
  </g>
);

const Mata: React.FC<{ x: number; y: number; c?: string }> = ({ x, y, c = "#8aa65a" }) => (
  <g transform={`translate(${x} ${y})`}>
    {[-14, -6, 2, 10].map((d, i) => (
      <path key={d} d={`M ${d} 0 Q ${d - 6 + i * 3} -26 ${d + 4 - i * 2} -34`} stroke={i % 2 ? c : claro(c, 0.2)} strokeWidth={6} fill="none" strokeLinecap="round" />
    ))}
  </g>
);

// --- Camino de la España de 1844 -----------------------------------------------------------------

export const CaminoDetalle: React.FC<{ t: number }> = ({ t }) => (
  <>
    <defs>
      <DefsCielo id="cieloCamino" de="#ffd9a8" a="#fff4e2" />
      <Lin id="montLejos" de="#cfc4df" a="#e9dfe6" />
      <Lin id="montCerca" de="#b8b0cf" a="#dcd2df" />
      <Lin id="colina1" de="#d6d58f" a="#bfbd73" />
      <Lin id="colina2" de="#e6c98f" a="#cfa865" />
      <Lin id="tierra" de="#d9b577" a="#b98f52" />
      <Lin id="senda" de="#f7e6bb" a="#ecd39a" />
      <Lin id="tronco" de="#8a6440" a="#5c3f24" horizontal />
      <Lin id="casaBlanca" de="#ffffff" a="#e8e2da" horizontal />
    </defs>
    <rect width={W} height={H} fill="url(#cieloCamino)" />
    <Sol x={800} y={150} t={t} />
    <Nube x={120} y={110} s={0.9} t={t} />
    <Nube x={700} y={230} s={0.6} t={t} />
    <path d="M 0 420 L 120 330 L 230 400 L 360 300 L 500 390 L 620 320 L 760 400 L 880 330 L 1000 380 L 1000 520 L 0 520 Z" fill="url(#montLejos)" />
    <path d="M 0 460 L 150 390 L 300 450 L 440 380 L 600 460 L 760 400 L 1000 450 L 1000 540 L 0 540 Z" fill="url(#montCerca)" />
    <path d="M 0 520 Q 200 440 420 500 T 1000 480 L 1000 640 L 0 640 Z" fill="url(#colina1)" />
    {/* Pueblo blanco en la loma */}
    <g transform="translate(190 468)">
      {[
        [-60, 0, 44, 30],
        [-14, -8, 40, 38],
        [30, 2, 46, 28],
        [72, -4, 34, 32],
      ].map(([x, y, w, h], i) => (
        <g key={i}>
          <rect x={x} y={y} width={w} height={h} fill="url(#casaBlanca)" />
          <path d={`M ${x - 4} ${y} L ${x + w / 2} ${y - 14} L ${x + w + 4} ${y} Z`} fill="#c7643e" />
          <rect x={x + w / 2 - 5} y={y + h - 14} width={10} height={14} fill="#8a5a34" />
        </g>
      ))}
      <rect x={4} y={-60} width={20} height={56} fill="url(#casaBlanca)" />
      <path d="M 0 -60 L 14 -80 L 28 -60 Z" fill="#c7643e" />
      <rect x={10} y={-50} width={8} height={12} rx={4} fill="#6b4a2a" />
    </g>
    {[
      [560, 520, 0.45],
      [640, 512, 0.4],
      [720, 522, 0.42],
      [900, 515, 0.45],
    ].map(([x, y, s]) => (
      <Olivo key={x} x={x} y={y} s={s} />
    ))}
    <path d="M 0 600 Q 260 560 520 610 T 1000 590 L 1000 820 L 0 820 Z" fill="url(#colina2)" />
    <rect x={0} y={SUELO - 50} width={W} height={H - SUELO + 50} fill="url(#tierra)" />
    {/* Camino que serpentea hasta el horizonte */}
    <path d="M 380 820 Q 430 700 520 650 Q 600 610 560 590 L 590 590 Q 650 616 580 660 Q 520 710 640 820 Z" fill="url(#senda)" />
    {[
      [470, 760, 10],
      [610, 790, 8],
      [540, 690, 6],
      [300, 780, 12],
      [760, 770, 9],
    ].map(([x, y, r]) => (
      <g key={x}>
        <ellipse cx={x} cy={y + r * 0.5} rx={r * 1.3} ry={r * 0.4} fill="#00000020" />
        <ellipse cx={x} cy={y} rx={r * 1.2} ry={r * 0.8} fill="#cfc2aa" />
        <ellipse cx={x - r * 0.3} cy={y - r * 0.3} rx={r * 0.5} ry={r * 0.3} fill="#ece4d4" />
      </g>
    ))}
    <Olivo x={90} y={690} s={1} />
    {/* Chumbera y poste indicador */}
    <g transform="translate(930 740)">
      <ellipse cx={0} cy={4} rx={50} ry={9} fill="#00000020" />
      <ellipse cx={0} cy={-40} rx={26} ry={42} fill="#7aa35a" />
      <ellipse cx={-30} cy={-86} rx={20} ry={30} fill="#86ae66" transform="rotate(-24 -30 -86)" />
      <ellipse cx={28} cy={-96} rx={18} ry={28} fill="#8fb66e" transform="rotate(20 28 -96)" />
      {[
        [-6, -60],
        [8, -30],
        [-30, -96],
        [30, -104],
      ].map(([x, y]) => (
        <circle key={`${x}${y}`} cx={x} cy={y} r={5} fill="#e0564a" />
      ))}
    </g>
    <g transform="translate(790 740)">
      <rect x={-6} y={-150} width={12} height={150} rx={4} fill="url(#tronco)" />
      <path d="M -60 -148 L 64 -148 L 84 -128 L 64 -108 L -60 -108 Z" fill="#b98a55" stroke="#7a5230" strokeWidth={4} />
      <text x={8} y={-120} textAnchor="middle" fontSize={22} fontWeight={800} fill="#4a2f18">
        A MADRID
      </text>
    </g>
    {[
      [200, 740],
      [340, 800],
      [700, 730],
      [860, 800],
      [40, 790],
    ].map(([x, y]) => (
      <Mata key={x} x={x} y={y} c="#9aa857" />
    ))}
  </>
);

// --- Despacho de un ministerio --------------------------------------------------------------------

const Libros: React.FC<{ x: number; y: number; ancho: number; semilla: number }> = ({ x, y, ancho, semilla }) => {
  const colores = ["#8e2b2b", "#2b4f8e", "#2b7a4f", "#b8872a", "#5b3a7a", "#7a3b24"];
  const libros: React.ReactNode[] = [];
  let cx = x;
  let i = 0;
  while (cx < x + ancho - 16) {
    const w = 16 + ((semilla * 7 + i * 13) % 10);
    const h = 64 + ((semilla * 5 + i * 11) % 18);
    const c = colores[(semilla + i) % colores.length];
    const inclinado = (semilla + i) % 9 === 4;
    libros.push(
      <g key={i} transform={inclinado ? `rotate(12 ${cx} ${y})` : undefined}>
        <rect x={cx} y={y - h} width={w} height={h} rx={2} fill={c} />
        <rect x={cx + 2} y={y - h} width={3} height={h} fill={claro(c, 0.3)} />
        <rect x={cx} y={y - h + 10} width={w} height={4} fill="#e2c27a" opacity={0.8} />
        <rect x={cx} y={y - 16} width={w} height={4} fill="#e2c27a" opacity={0.8} />
      </g>,
    );
    cx += w + 2;
    i++;
  }
  return <>{libros}</>;
};

export const DespachoDetalle: React.FC<{ t: number }> = ({ t }) => (
  <>
    <defs>
      <Lin id="papel" de="#f6e9cf" a="#ecdab8" />
      <Lin id="madera" de="#9a6a40" a="#6e4526" />
      <Lin id="maderaClara" de="#b98452" a="#8a5a34" horizontal />
      <Lin id="suelo" de="#a4724a" a="#7a5032" />
      <Cil id="cortina" c="#9c2230" />
      <Lin id="vistaVentana" de="#bfe3f3" a="#eaf6f0" />
      <Lin id="oro" de="#f3d47a" a="#b98b1e" horizontal medio="#e2b53a" />
      <Lin id="alfombra" de="#9b2433" a="#6f1622" />
    </defs>
    <rect width={W} height={H} fill="url(#papel)" />
    {Array.from({ length: 20 }, (_, i) => (
      <rect key={i} x={i * 50} y={0} width={24} height={SUELO - 150} fill="#e5cfa6" opacity={0.35} />
    ))}
    <rect x={0} y={0} width={W} height={34} fill="url(#madera)" />
    <rect x={0} y={34} width={W} height={8} fill="#5a3a20" opacity={0.4} />
    {/* Zócalo con cuarterones */}
    <rect x={0} y={SUELO - 150} width={W} height={150} fill="url(#madera)" />
    <rect x={0} y={SUELO - 156} width={W} height={10} fill="#c49058" />
    {Array.from({ length: 6 }, (_, i) => (
      <rect key={i} x={24 + i * 164} y={SUELO - 128} width={140} height={100} rx={6} fill="none" stroke="#b27d4b" strokeWidth={4} />
    ))}
    {/* Estantería */}
    <g transform="translate(40 110)">
      <rect x={-10} y={-18} width={340} height={24} rx={4} fill="url(#maderaClara)" />
      <rect x={0} y={0} width={320} height={470} fill="url(#madera)" />
      <rect x={14} y={14} width={292} height={442} fill="#4a2e18" />
      {[0, 1, 2, 3].map((f) => (
        <g key={f}>
          <Libros x={22} y={110 + f * 108} ancho={280} semilla={f + 2} />
          <rect x={14} y={110 + f * 108} width={292} height={12} fill="url(#maderaClara)" />
        </g>
      ))}
    </g>
    {/* Cuadro */}
    <g transform="translate(430 110)">
      <rect x={0} y={0} width={180} height={140} rx={6} fill="url(#oro)" />
      <rect x={14} y={14} width={152} height={112} fill="#8fb3c9" />
      <path d="M 14 96 Q 60 60 100 90 T 166 80 L 166 126 L 14 126 Z" fill="#6f8f4a" />
      <circle cx={130} cy={46} r={14} fill="#fff3b0" />
    </g>
    {/* Ventana con cortinas */}
    <g transform="translate(680 90)">
      <rect x={0} y={0} width={240} height={330} rx={8} fill="url(#vistaVentana)" />
      <path d="M 0 250 Q 80 200 140 240 T 240 220 L 240 330 L 0 330 Z" fill="#9fc27a" />
      <Olivo x={70} y={300} s={0.6} />
      <rect x={-8} y={-8} width={256} height={346} rx={10} fill="none" stroke="#f4ecdc" strokeWidth={16} />
      <rect x={114} y={0} width={12} height={330} fill="#f4ecdc" />
      <rect x={0} y={158} width={240} height={12} fill="#f4ecdc" />
      <path d={`M -40 -30 L 60 -30 Q ${40 + Math.sin(t) * 4} 150 20 360 L -40 360 Z`} fill="url(#cortina)" />
      <path d={`M 180 -30 L 280 -30 L 280 360 L 220 360 Q ${200 - Math.sin(t) * 4} 150 180 -30 Z`} fill="url(#cortina)" />
      <rect x={-50} y={-44} width={340} height={20} rx={10} fill="url(#oro)" />
      <circle cx={24} cy={200} r={10} fill="url(#oro)" />
      <circle cx={216} cy={200} r={10} fill="url(#oro)" />
    </g>
    {/* Suelo de tarima y alfombra */}
    <rect x={0} y={SUELO - 10} width={W} height={H - SUELO + 10} fill="url(#suelo)" />
    {Array.from({ length: 11 }, (_, i) => (
      <line key={i} x1={i * 100 - 30} x2={i * 100 - 60} y1={SUELO - 10} y2={H} stroke="#00000022" strokeWidth={3} />
    ))}
    <path d={`M 140 ${SUELO + 10} L 860 ${SUELO + 10} L 920 ${H - 6} L 80 ${H - 6} Z`} fill="url(#alfombra)" />
    <path d={`M 160 ${SUELO + 20} L 840 ${SUELO + 20} L 890 ${H - 16} L 110 ${H - 16} Z`} fill="none" stroke="#e2b53a" strokeWidth={4} />
  </>
);

export const MesaDetalle: React.FC<{ x: number; t: number }> = ({ x, t }) => (
  <g transform={`translate(${x} ${SUELO})`}>
    <defs>
      <Lin id="madera" de="#9a6a40" a="#6e4526" />
      <Lin id="maderaClara" de="#b98452" a="#8a5a34" horizontal />
      <Lin id="oro" de="#f3d47a" a="#b98b1e" horizontal medio="#e2b53a" />
    </defs>
    <ellipse cx={0} cy={6} rx={190} ry={16} fill="#00000025" />
    <rect x={-170} y={-176} width={340} height={30} rx={8} fill="url(#maderaClara)" />
    <rect x={-160} y={-148} width={320} height={120} rx={6} fill="url(#madera)" />
    {[-1, 1].map((l) => (
      <g key={l}>
        <rect x={l * 80 - 60} y={-136} width={120} height={46} rx={6} fill="none" stroke="#c49058" strokeWidth={4} />
        <circle cx={l * 80} cy={-113} r={6} fill="url(#oro)" />
        <rect x={l * 140 - 12} y={-30} width={24} height={30} rx={4} fill="url(#madera)" />
      </g>
    ))}
    {/* Papeles, tintero y vela */}
    <rect x={-120} y={-190} width={110} height={16} rx={3} fill="#fbf6e8" transform="rotate(-4 -60 -182)" />
    <rect x={-110} y={-196} width={100} height={14} rx={3} fill="#f3ead2" />
    <path d="M 20 -178 L 50 -178 L 46 -206 L 24 -206 Z" fill="#2a2d33" />
    <path d="M 38 -206 Q 60 -250 52 -286 Q 40 -250 34 -206 Z" fill="#fdfdfd" stroke="#aaa" strokeWidth={2} />
    <rect x={98} y={-190} width={36} height={14} rx={4} fill="url(#oro)" />
    <rect x={108} y={-246} width={16} height={58} rx={4} fill="#fbf4e3" />
    <path d={`M 116 -250 Q ${106 + Math.sin(t * 9) * 2} -266 116 -282 Q ${126 + Math.sin(t * 9) * 2} -266 116 -250 Z`} fill="#ffb938" />
    <circle cx={116} cy={-262} r={34} fill="#ffd66b" opacity={0.18} />
  </g>
);

// --- Salón del trono ------------------------------------------------------------------------------

export const PalacioDetalle: React.FC<{ t: number }> = ({ t }) => (
  <>
    <defs>
      <Lin id="paredPalacio" de="#f7eedf" a="#ecdcc2" />
      <Cil id="columna" c="#efe3cb" />
      <Cil id="terciopelo" c="#a3202f" />
      <Lin id="oro" de="#f3d47a" a="#b98b1e" horizontal medio="#e2b53a" />
      <Lin id="alfombraRoja" de="#b3263a" a="#7c1422" />
      <Lin id="marmol" de="#efe7da" a="#d7ccba" />
    </defs>
    <rect width={W} height={H} fill="url(#paredPalacio)" />
    {/* Friso dorado */}
    <rect x={0} y={0} width={W} height={56} fill="url(#oro)" />
    {Array.from({ length: 25 }, (_, i) => (
      <circle key={i} cx={20 + i * 40} cy={28} r={9} fill="#fff1c2" opacity={0.6} />
    ))}
    <rect x={0} y={56} width={W} height={10} fill="#a8801c" opacity={0.5} />
    {/* Lámpara de araña */}
    <g transform={`translate(500 66) rotate(${Math.sin(t * 1.2) * 1.5})`}>
      <line x1={0} y1={0} x2={0} y2={70} stroke="#a8801c" strokeWidth={4} />
      <ellipse cx={0} cy={86} rx={90} ry={18} fill="url(#oro)" />
      {[-72, -36, 0, 36, 72].map((x) => (
        <g key={x}>
          <rect x={x - 5} y={56} width={10} height={24} rx={3} fill="#fffaf0" />
          <ellipse cx={x} cy={50} rx={5} ry={9} fill="#ffb938" />
          <circle cx={x} cy={50} r={18} fill="#ffe08a" opacity={0.3} />
        </g>
      ))}
      {[-60, -20, 20, 60].map((x) => (
        <path key={x} d={`M ${x} 102 L ${x - 6} 118 L ${x} 130 L ${x + 6} 118 Z`} fill="#e7f3fb" stroke="#b9d3e6" strokeWidth={2} />
      ))}
    </g>
    {/* Trono */}
    <g transform="translate(500 520)">
      <path d="M -90 60 L -90 -170 Q -90 -230 0 -240 Q 90 -230 90 -170 L 90 60 Z" fill="url(#oro)" />
      <path d="M -70 50 L -70 -160 Q -70 -212 0 -218 Q 70 -212 70 -160 L 70 50 Z" fill="url(#terciopelo)" />
      <path d="M -24 -258 L -30 -292 L -12 -276 L 0 -300 L 12 -276 L 30 -292 L 24 -258 Z" fill="url(#oro)" />
      <rect x={-110} y={40} width={220} height={40} rx={10} fill="url(#oro)" />
      <rect x={-96} y={80} width={24} height={140} fill="url(#oro)" />
      <rect x={72} y={80} width={24} height={140} fill="url(#oro)" />
    </g>
    {/* Columnas */}
    {[170, 830].map((x) => (
      <g key={x}>
        <rect x={x - 38} y={110} width={76} height={24} rx={4} fill="url(#oro)" />
        <rect x={x - 30} y={134} width={60} height={SUELO - 170} fill="url(#columna)" />
        {[-14, 0, 14].map((d) => (
          <line key={d} x1={x + d} x2={x + d} y1={140} y2={SUELO - 42} stroke="#00000012" strokeWidth={4} />
        ))}
        <rect x={x - 40} y={SUELO - 40} width={80} height={30} rx={4} fill="url(#columna)" />
      </g>
    ))}
    {/* Cortinas de terciopelo */}
    {[-1, 1].map((l) => {
      const x0 = l < 0 ? 0 : W;
      const pliegue = Math.sin(t * 0.9) * 5;
      return (
        <g key={l}>
          {[0, 1, 2].map((k) => (
            <path
              key={k}
              d={`M ${x0 + l * -k * 40} 60 L ${x0 + l * -(k * 40 + 50)} 60 Q ${x0 + l * -(k * 34 + 70 + pliegue)} 300 ${x0 + l * -(k * 20 + 36)} 560 L ${x0 + l * -k * 16} 560 Z`}
              fill="url(#terciopelo)"
              opacity={1 - k * 0.12}
            />
          ))}
          <circle cx={x0 + l * -70} cy={330} r={12} fill="url(#oro)" />
          <path d={`M ${x0 + l * -70} 342 L ${x0 + l * -80} 390 L ${x0 + l * -60} 390 Z`} fill="url(#oro)" />
        </g>
      );
    })}
    {/* Suelo de mármol y alfombra roja */}
    <rect x={0} y={SUELO - 10} width={W} height={H - SUELO + 10} fill="url(#marmol)" />
    {Array.from({ length: 12 }, (_, i) => (
      <rect key={i} x={i * 90 - 20} y={SUELO - 10 + (i % 2) * 36} width={90} height={36} fill="#c9bca6" opacity={0.35} />
    ))}
    <path d={`M 380 ${SUELO - 12} L 620 ${SUELO - 12} L 680 ${H} L 320 ${H} Z`} fill="url(#alfombraRoja)" />
    <path d={`M 392 ${SUELO - 12} L 400 ${SUELO - 12} L 344 ${H} L 334 ${H} Z M 600 ${SUELO - 12} L 608 ${SUELO - 12} L 666 ${H} L 656 ${H} Z`} fill="#e2b53a" />
  </>
);

// --- Casa cuartel ---------------------------------------------------------------------------------

export const CuartelDetalle: React.FC<{ t: number }> = ({ t }) => (
  <>
    <defs>
      <DefsCielo id="cieloCuartel" de="#b9e2f2" a="#eef8f1" />
      <Lin id="fachada" de="#fbf3e2" a="#eadcc0" horizontal />
      <Lin id="tejado" de="#d4704a" a="#a24a2c" />
      <Lin id="puerta" de="#8a5a34" a="#5c3a1f" horizontal />
      <Lin id="empedrado" de="#d9cdb4" a="#bfae8c" />
      <Lin id="placa" de="#0b6a3b" a="#034523" />
      <Lin id="oro" de="#f3d47a" a="#b98b1e" horizontal medio="#e2b53a" />
      <Cil id="mastil" c="#8d949c" />
      <Lin id="tronco" de="#8a6440" a="#5c3f24" horizontal />
      <Lin id="colinaCuartel" de="#b9d69a" a="#9cc07a" />
    </defs>
    <rect width={W} height={H} fill="url(#cieloCuartel)" />
    <Sol x={150} y={120} t={t} />
    <Nube x={520} y={110} s={0.8} t={t} />
    <path d="M 0 470 Q 250 400 520 450 T 1000 430 L 1000 620 L 0 620 Z" fill="url(#colinaCuartel)" />
    <Olivo x={60} y={560} s={0.8} />
    <Olivo x={950} y={570} s={0.75} />
    {/* Edificio */}
    <ellipse cx={500} cy={SUELO} rx={430} ry={20} fill="#00000018" />
    <rect x={110} y={290} width={780} height={SUELO - 290} fill="url(#fachada)" />
    {[110, 862].map((x) =>
      [0, 1, 2, 3, 4, 5, 6, 7, 8].map((k) => (
        <rect key={`${x}${k}`} x={x + (k % 2) * 4} y={300 + k * 48} width={28 - (k % 2) * 8} height={42} fill="#d8c7a2" stroke="#c4b08a" strokeWidth={2} />
      )),
    )}
    <path d="M 80 300 L 500 180 L 920 300 Z" fill="url(#tejado)" />
    {Array.from({ length: 14 }, (_, i) => (
      <path key={i} d={`M ${110 + i * 56} ${300 - Math.max(0, 1 - Math.abs(i - 7) / 7.5) * 100} q 28 12 56 0`} stroke="#8a3a20" strokeWidth={3} fill="none" opacity={0.5} />
    ))}
    <rect x={80} y={296} width={840} height={12} rx={4} fill="#8a3a20" />
    {/* Placa */}
    <rect x={296} y={322} width={408} height={70} rx={12} fill="url(#oro)" />
    <rect x={304} y={330} width={392} height={54} rx={8} fill="url(#placa)" />
    <text x={500} y={368} textAnchor="middle" fontSize={32} fontWeight={800} fill="#fff" letterSpacing={2}>
      TODO POR LA PATRIA
    </text>
    {/* Ventanas con contraventanas y reja */}
    {[190, 730].map((x) => (
      <g key={x}>
        <rect x={x - 8} y={432} width={96} height={130} rx={6} fill="#f4ecdc" />
        <rect x={x} y={440} width={80} height={114} rx={4} fill="#9fd0e6" />
        <path d={`M ${x + 6} 446 L ${x + 30} 446 L ${x + 12} 520 Z`} fill="#ffffff66" />
        {[16, 32, 48, 64].map((d) => (
          <rect key={d} x={x + d - 2} y={440} width={4} height={114} fill="#2f3338" />
        ))}
        <rect x={x - 38} y={436} width={30} height={122} rx={3} fill="#2f6b47" />
        <rect x={x + 88} y={436} width={30} height={122} rx={3} fill="#2f6b47" />
        {[0, 1, 2, 3].map((k) => (
          <line key={k} x1={x - 34} x2={x - 12} y1={452 + k * 28} y2={452 + k * 28} stroke="#1f4d33" strokeWidth={3} />
        ))}
        <rect x={x - 14} y={562} width={108} height={14} rx={4} fill="#c4b08a" />
        {[0, 1, 2].map((k) => (
          <circle key={k} cx={x + 14 + k * 26} cy={556} r={11} fill={["#e0564a", "#f07a5a", "#d6453a"][k]} />
        ))}
      </g>
    ))}
    {/* Puerta de arco */}
    <path d="M 430 740 L 430 520 Q 430 440 500 440 Q 570 440 570 520 L 570 740 Z" fill="url(#puerta)" />
    <path d="M 420 740 L 420 520 Q 420 428 500 428 Q 580 428 580 520 L 580 740" stroke="#c4b08a" strokeWidth={14} fill="none" />
    <line x1={500} x2={500} y1={444} y2={740} stroke="#4a2c18" strokeWidth={4} />
    {[480, 560, 640, 700].map((y) => (
      <g key={y}>
        <circle cx={454} cy={y} r={4} fill="#2b2b2b" />
        <circle cx={546} cy={y} r={4} fill="#2b2b2b" />
      </g>
    ))}
    <circle cx={486} cy={600} r={6} fill="url(#oro)" />
    <circle cx={514} cy={600} r={6} fill="url(#oro)" />
    {/* Farol */}
    <g transform="translate(626 470)">
      <rect x={-4} y={-30} width={8} height={30} fill="#2b2b2b" />
      <path d="M -18 0 L 18 0 L 14 44 L -14 44 Z" fill="#2b2b2b" />
      <rect x={-11} y={6} width={22} height={32} fill="#ffe08a" />
      <circle cx={0} cy={22} r={30} fill="#ffe08a" opacity={0.2} />
    </g>
    {/* Mástil y bandera */}
    <rect x={944} y={40} width={12} height={SUELO - 40} rx={6} fill="url(#mastil)" />
    <circle cx={950} cy={38} r={10} fill="url(#oro)" />
    <g transform="translate(950 56)">
      {[0, 1, 2].map((franja) => {
        const y0 = [0, 22, 66][franja];
        const alto = [22, 44, 22][franja];
        const onda = (x: number) => Math.sin(t * 3 + x / 22) * 5;
        return (
          <path
            key={franja}
            d={`M 0 ${y0} ${[0, 15, 30, 45].map((x) => `L ${-x} ${y0 + onda(x)}`).join(" ")} L -45 ${y0 + alto + onda(45)} ${[30, 15, 0].map((x) => `L ${-x} ${y0 + alto + onda(x)}`).join(" ")} Z`}
            fill={franja === 1 ? "#ffc400" : "#c60b1e"}
          />
        );
      })}
    </g>
    {/* Empedrado */}
    <rect x={0} y={SUELO - 6} width={W} height={H - SUELO + 6} fill="url(#empedrado)" />
    {Array.from({ length: 3 }, (_, f) =>
      Array.from({ length: 18 }, (_, i) => (
        <ellipse key={`${f}-${i}`} cx={i * 60 + (f % 2) * 30} cy={SUELO + 14 + f * 24} rx={26} ry={9} fill="#e6dcc6" stroke="#b3a27e" strokeWidth={2} />
      )),
    )}
  </>
);

// --- Caballo ----------------------------------------------------------------------------------------

export const CaballoDetalle: React.FC<{ x: number; t: number }> = ({ x, t }) => {
  const cola = Math.sin(t * 2.4) * 8;
  const cabeza = Math.sin(t * 1.3) * 3;
  return (
    <g transform={`translate(${x} ${SUELO})`}>
      <defs>
        <Lin id="pelaje" de="#b9743c" a="#7c4520" />
        <Lin id="crin" de="#3a2616" a="#1d130b" />
        <Lin id="silla" de="#a3202f" a="#6d1420" />
      </defs>
      <ellipse cx={0} cy={4} rx={140} ry={16} fill="#00000025" />
      <path d={`M -112 -190 Q ${-160 + cola} -150 ${-146 + cola} -80 Q -130 -120 -104 -168 Z`} fill="url(#crin)" />
      {[-78, -44, 44, 78].map((lx, i) => (
        <g key={lx}>
          <rect x={lx - 14} y={-150} width={28} height={140} rx={12} fill={i % 2 ? "url(#pelaje)" : "#8d5228"} />
          <rect x={lx - 16} y={-22} width={32} height={22} rx={6} fill="#2b1d12" />
          <rect x={lx - 14} y={-40} width={28} height={16} rx={6} fill="#f4ede0" />
        </g>
      ))}
      <ellipse cx={0} cy={-170} rx={124} ry={64} fill="url(#pelaje)" />
      <ellipse cx={-20} cy={-196} rx={70} ry={20} fill="#ffffff22" />
      {/* Silla de montar */}
      <path d="M -50 -228 Q 0 -250 50 -228 L 56 -170 Q 0 -160 -56 -170 Z" fill="url(#silla)" />
      <path d="M -50 -228 Q 0 -250 50 -228" stroke="#e2b53a" strokeWidth={5} fill="none" />
      <rect x={-6} y={-170} width={12} height={60} fill="#5a3a20" />
      <g transform={`rotate(${cabeza} 100 -200)`}>
        <path d="M 70 -210 Q 100 -290 150 -300 L 176 -250 Q 140 -230 120 -170 Z" fill="url(#pelaje)" />
        <path d="M 78 -214 Q 100 -290 142 -304 Q 118 -276 104 -212 Z" fill="url(#crin)" />
        <ellipse cx={180} cy={-280} rx={46} ry={34} fill="url(#pelaje)" transform="rotate(24 180 -280)" />
        <ellipse cx={208} cy={-264} rx={24} ry={20} fill="#9c5e30" />
        <path d="M 176 -300 L 190 -262" stroke="#f4ede0" strokeWidth={10} strokeLinecap="round" />
        <circle cx={214} cy={-262} r={4} fill="#3a2616" />
        <ellipse cx={168} cy={-292} rx={9} ry={11} fill="#20150d" />
        <circle cx={171} cy={-296} r={3.5} fill="#fff" />
        <path d="M 150 -310 L 146 -340 L 164 -316 Z" fill="#8d5228" />
        <path d="M 162 -312 L 170 -340 L 176 -312 Z" fill="#9c5e30" />
      </g>
    </g>
  );
};
