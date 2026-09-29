// Fondos de escena en SVG, dibujados en un lienzo de 1000 × 820 con el suelo en y = SUELO.

export const ANCHO_ESCENA = 1000;
export const ALTO_ESCENA = 820;
export const SUELO = 740;

export type TipoEscenario = "camino" | "despacho" | "palacio" | "cuartel" | "congreso" | "plaza" | "aula";

const Nube: React.FC<{ x: number; y: number; s: number; t: number }> = ({ x, y, s, t }) => (
  <g transform={`translate(${((x + t * 14) % 1200) - 100} ${y}) scale(${s})`} fill="#ffffff">
    <ellipse cx={0} cy={0} rx={60} ry={26} />
    <ellipse cx={40} cy={-14} rx={40} ry={26} />
    <ellipse cx={-36} cy={-8} rx={30} ry={20} />
  </g>
);

const Cielo: React.FC<{ t: number; de?: string; a?: string }> = ({ t, de = "#bfe6f2", a = "#eef9f1" }) => (
  <>
    <defs>
      <linearGradient id="cielo" x1="0" y1="0" x2="0" y2="1">
        <stop offset="0" stopColor={de} />
        <stop offset="1" stopColor={a} />
      </linearGradient>
    </defs>
    <rect width={ANCHO_ESCENA} height={ALTO_ESCENA} fill="url(#cielo)" />
    <circle cx={820} cy={130} r={58} fill="#ffd66b" opacity={0.9} />
    <Nube x={120} y={120} s={1} t={t} />
    <Nube x={620} y={200} s={0.7} t={t} />
  </>
);

const Suelo: React.FC<{ color: string }> = ({ color }) => (
  <rect x={0} y={SUELO - 8} width={ANCHO_ESCENA} height={ALTO_ESCENA - SUELO + 8} fill={color} />
);

const Pared: React.FC<{ color: string; zocalo: string }> = ({ color, zocalo }) => (
  <>
    <rect width={ANCHO_ESCENA} height={ALTO_ESCENA} fill={color} />
    <rect x={0} y={SUELO - 110} width={ANCHO_ESCENA} height={110} fill={zocalo} />
  </>
);

const Ventana: React.FC<{ x: number; y: number; w: number; h: number }> = ({ x, y, w, h }) => (
  <g>
    <rect x={x} y={y} width={w} height={h} rx={10} fill="#cfeaf5" stroke="#7a5a3a" strokeWidth={12} />
    <line x1={x + w / 2} x2={x + w / 2} y1={y} y2={y + h} stroke="#7a5a3a" strokeWidth={8} />
    <line x1={x} x2={x + w} y1={y + h / 2} y2={y + h / 2} stroke="#7a5a3a" strokeWidth={8} />
  </g>
);

const Columnas: React.FC<{ xs: number[]; arriba: number; abajo: number; color: string }> = ({ xs, arriba, abajo, color }) => (
  <>
    {xs.map((x) => (
      <g key={x}>
        <rect x={x - 22} y={arriba} width={44} height={abajo - arriba} fill={color} />
        <rect x={x - 32} y={arriba - 16} width={64} height={18} fill={color} />
        <rect x={x - 32} y={abajo - 4} width={64} height={18} fill={color} />
        {[-10, 0, 10].map((d) => (
          <line key={d} x1={x + d} x2={x + d} y1={arriba + 6} y2={abajo - 6} stroke="#00000014" strokeWidth={3} />
        ))}
      </g>
    ))}
  </>
);

export const Escenario: React.FC<{ tipo: TipoEscenario; t: number }> = ({ tipo, t }) => {
  switch (tipo) {
    case "camino":
      return (
        <>
          <Cielo t={t} de="#f7d9a6" a="#fdf1dc" />
          <path d="M 0 520 Q 180 430 360 500 T 720 470 T 1000 500 L 1000 820 L 0 820 Z" fill="#c9b27c" />
          <path d="M 0 600 Q 250 540 500 600 T 1000 580 L 1000 820 L 0 820 Z" fill="#b89a5e" />
          <path d="M 420 820 Q 470 640 520 560 L 548 560 Q 600 660 720 820 Z" fill="#e3cf9b" />
          {[
            [140, 560],
            [860, 540],
          ].map(([x, y]) => (
            <g key={x}>
              <rect x={x - 8} y={y - 10} width={16} height={60} fill="#6b4a2a" />
              <circle cx={x} cy={y - 40} r={46} fill="#6f8f4a" />
            </g>
          ))}
          <Suelo color="#a8894f" />
        </>
      );
    case "despacho":
      return (
        <>
          <Pared color="#efe6d4" zocalo="#b08a5a" />
          <Ventana x={620} y={140} w={260} h={300} />
          <rect x={80} y={120} width={300} height={440} fill="#7a5230" />
          {[0, 1, 2, 3].map((fila) => (
            <g key={fila}>
              <rect x={92} y={140 + fila * 104} width={276} height={10} fill="#5a3a20" />
              {[0, 1, 2, 3, 4, 5, 6].map((k) => (
                <rect key={k} x={104 + k * 36} y={152 + fila * 104} width={26} height={78} fill={["#8e2b2b", "#2b4f8e", "#2b7a4f", "#c9a227"][(k + fila) % 4]} />
              ))}
            </g>
          ))}
          <Suelo color="#8a6a44" />
        </>
      );
    case "palacio":
      return (
        <>
          <Pared color="#f4e9d8" zocalo="#d8c3a0" />
          <rect x={0} y={0} width={ANCHO_ESCENA} height={60} fill="#c9a227" />
          <path d="M 0 60 Q 120 200 0 520 Z" fill="#8e1f2b" />
          <path d="M 1000 60 Q 880 200 1000 520 Z" fill="#8e1f2b" />
          <Columnas xs={[230, 770]} arriba={120} abajo={SUELO - 20} color="#e9dcc3" />
          <rect x={410} y={150} width={180} height={220} rx={90} fill="#fff6e0" stroke="#c9a227" strokeWidth={10} />
          <path d="M 460 230 L 500 190 L 540 230 L 530 290 L 470 290 Z" fill="#c9a227" opacity={0.6} />
          <Suelo color="#b8a27a" />
          <rect x={380} y={SUELO - 8} width={240} height={90} fill="#a3202f" />
        </>
      );
    case "cuartel":
      return (
        <>
          <Cielo t={t} />
          <rect x={120} y={260} width={760} height={SUELO - 260} fill="#f2ead8" stroke="#c9b690" strokeWidth={6} />
          <path d="M 100 270 L 500 170 L 900 270 Z" fill="#b5523b" />
          <rect x={300} y={300} width={400} height={64} rx={8} fill="#03512d" />
          <text x={500} y={344} textAnchor="middle" fontSize={34} fontWeight={800} fill="#fff" letterSpacing={2}>
            TODO POR LA PATRIA
          </text>
          <Ventana x={170} y={400} w={120} h={150} />
          <Ventana x={710} y={400} w={120} h={150} />
          <rect x={440} y={430} width={120} height={SUELO - 430} rx={60} fill="#6b4226" />
          <rect x={440} y={430} width={120} height={SUELO - 430} rx={60} fill="none" stroke="#4a2c18" strokeWidth={8} />
          <line x1={880} x2={880} y1={60} y2={SUELO} stroke="#555" strokeWidth={8} />
          <g transform={`translate(884 70) skewY(${Math.sin(t * 3) * 4})`}>
            <rect width={120} height={26} fill="#c60b1e" />
            <rect y={26} width={120} height={32} fill="#ffc400" />
            <rect y={58} width={120} height={26} fill="#c60b1e" />
          </g>
          <Suelo color="#c8b98f" />
        </>
      );
    case "congreso":
      return (
        <>
          <Cielo t={t} />
          <rect x={120} y={300} width={760} height={SUELO - 300} fill="#efe3c8" />
          <path d="M 180 300 L 500 170 L 820 300 Z" fill="#e6d6b2" stroke="#c9b690" strokeWidth={6} />
          <circle cx={500} cy={250} r={26} fill="#c9a227" opacity={0.6} />
          <Columnas xs={[260, 380, 500, 620, 740]} arriba={320} abajo={SUELO - 60} color="#fbf4e3" />
          <rect x={100} y={SUELO - 60} width={800} height={60} fill="#d8c8a4" />
          {[160, 840].map((x) => (
            <g key={x}>
              <rect x={x - 50} y={SUELO - 120} width={100} height={60} fill="#b8a27a" />
              <ellipse cx={x} cy={SUELO - 150} rx={46} ry={34} fill="#8c7a58" />
              <circle cx={x + (x < 500 ? 34 : -34)} cy={SUELO - 172} r={22} fill="#8c7a58" />
            </g>
          ))}
          <Suelo color="#b9b2a2" />
        </>
      );
    case "plaza":
      return (
        <>
          <Cielo t={t} />
          {[
            [0, 300, 220, "#e8b77a"],
            [220, 250, 200, "#f0d9a8"],
            [420, 330, 180, "#d99b7a"],
            [600, 280, 210, "#e8c98a"],
            [810, 320, 190, "#cfa27a"],
          ].map(([x, y, w, c]) => (
            <g key={x as number}>
              <rect x={x as number} y={y as number} width={w as number} height={SUELO - (y as number)} fill={c as string} />
              {[0, 1].map((f) =>
                [0, 1].map((k) => (
                  <rect
                    key={`${f}${k}`}
                    x={(x as number) + 30 + k * ((w as number) / 2)}
                    y={(y as number) + 40 + f * 130}
                    width={(w as number) / 2 - 60}
                    height={80}
                    fill="#cfeaf5"
                    stroke="#7a5a3a"
                    strokeWidth={6}
                  />
                )),
              )}
            </g>
          ))}
          <Suelo color="#c2b8a3" />
        </>
      );
    case "aula":
      return (
        <>
          <Pared color="#eaf3ee" zocalo="#bcd6c6" />
          <rect x={200} y={100} width={600} height={340} rx={16} fill="#1f4d36" stroke="#7a5230" strokeWidth={16} />
          <text x={500} y={200} textAnchor="middle" fontSize={40} fontWeight={700} fill="#ffffffcc">
            Temario
          </text>
          <line x1={280} x2={720} y1={250} y2={250} stroke="#ffffff66" strokeWidth={6} />
          <line x1={280} x2={640} y1={310} y2={310} stroke="#ffffff66" strokeWidth={6} />
          <line x1={280} x2={680} y1={370} y2={370} stroke="#ffffff66" strokeWidth={6} />
          <Suelo color="#9fb8a8" />
        </>
      );
  }
};

export type TipoObjeto = "urna" | "mesa" | "bandera" | "cartel" | "boe" | "caballo";

export const Objeto: React.FC<{ tipo: TipoObjeto; x: number; texto?: string; t: number }> = ({ tipo, x, texto, t }) => {
  switch (tipo) {
    case "urna":
      return (
        <g transform={`translate(${x} ${SUELO})`}>
          <rect x={-70} y={-110} width={140} height={20} fill="#6b4226" />
          <rect x={-60} y={-90} width={10} height={90} fill="#6b4226" />
          <rect x={50} y={-90} width={10} height={90} fill="#6b4226" />
          <rect x={-56} y={-220} width={112} height={110} rx={8} fill="#d8f0f7cc" stroke="#6aa6b8" strokeWidth={5} />
          <rect x={-30} y={-226} width={60} height={10} rx={4} fill="#333" />
          {[0, 1, 2].map((k) => (
            <rect key={k} x={-40 + k * 26} y={-150 + k * 8} width={30} height={36} fill="#fff" stroke="#999" strokeWidth={2} transform={`rotate(${k * 12 - 10})`} />
          ))}
        </g>
      );
    case "mesa":
      return (
        <g transform={`translate(${x} ${SUELO})`}>
          <rect x={-150} y={-150} width={300} height={24} rx={6} fill="#7a5230" />
          <rect x={-136} y={-126} width={16} height={126} fill="#5a3a20" />
          <rect x={120} y={-126} width={16} height={126} fill="#5a3a20" />
          <rect x={-40} y={-166} width={90} height={16} fill="#fbf4e3" stroke="#b08a3e" strokeWidth={3} />
          <rect x={70} y={-178} width={20} height={28} rx={4} fill="#222" />
        </g>
      );
    case "bandera":
      return (
        <g transform={`translate(${x} ${SUELO})`}>
          <line x1={0} x2={0} y1={0} y2={-420} stroke="#6b4226" strokeWidth={10} strokeLinecap="round" />
          <g transform={`translate(4 -410) skewY(${Math.sin(t * 3) * 5})`}>
            <rect width={170} height={36} fill="#c60b1e" />
            <rect y={36} width={170} height={48} fill="#ffc400" />
            <rect y={84} width={170} height={36} fill="#c60b1e" />
          </g>
        </g>
      );
    case "cartel":
      return (
        <g transform={`translate(${x} ${SUELO})`}>
          <rect x={-8} y={-260} width={16} height={260} fill="#6b4a2a" />
          <rect x={-150} y={-330} width={300} height={100} rx={12} fill="#fffaf0" stroke="#6b4a2a" strokeWidth={8} />
          <text x={0} y={-268} textAnchor="middle" fontSize={34} fontWeight={800} fill="#03512d">
            {texto}
          </text>
        </g>
      );
    case "boe":
      return (
        <g transform={`translate(${x} ${SUELO - 360}) rotate(-4)`}>
          <rect x={-130} y={0} width={260} height={330} fill="#fffdf6" stroke="#9a9a9a" strokeWidth={4} />
          <text x={0} y={52} textAnchor="middle" fontSize={40} fontWeight={900} fill="#7a1f1f">
            BOE
          </text>
          <text x={0} y={92} textAnchor="middle" fontSize={20} fontWeight={700} fill="#333">
            {texto ?? "BOLETÍN OFICIAL DEL ESTADO"}
          </text>
          {[130, 160, 190, 220, 250, 280].map((y) => (
            <line key={y} x1={-100} x2={100} y1={y} y2={y} stroke="#c7c7c7" strokeWidth={6} />
          ))}
        </g>
      );
    case "caballo":
      return (
        <g transform={`translate(${x} ${SUELO})`}>
          <ellipse cx={0} cy={-150} rx={110} ry={50} fill="#7a4a22" />
          {[-80, -50, 50, 80].map((lx, i) => (
            <rect key={lx} x={lx - 8} y={-120} width={16} height={120} fill="#6b3e1c" transform={`rotate(${Math.sin(t * 6 + i) * 3} ${lx} -120)`} />
          ))}
          <path d="M 80 -170 L 130 -260 L 170 -250 L 150 -200 L 110 -140 Z" fill="#7a4a22" />
          <path d="M 96 -200 L 120 -260 L 100 -250 L 80 -190 Z" fill="#2b1a0e" />
          <circle cx={150} cy={-238} r={5} fill="#111" />
          <path d="M -110 -160 Q -150 -140 -140 -80" stroke="#2b1a0e" strokeWidth={14} fill="none" strokeLinecap="round" />
        </g>
      );
  }
};
