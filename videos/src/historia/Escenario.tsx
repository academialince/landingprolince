import { CaballoDetalle, CaminoDetalle, CuartelDetalle, DespachoDetalle, MesaDetalle, PalacioDetalle } from "./fondos";

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
      <linearGradient id={`cielo${de}${a}`.replace(/#/g, "")} x1="0" y1="0" x2="0" y2="1">
        <stop offset="0" stopColor={de} />
        <stop offset="1" stopColor={a} />
      </linearGradient>
    </defs>
    <rect width={ANCHO_ESCENA} height={ALTO_ESCENA} fill={`url(#${`cielo${de}${a}`.replace(/#/g, "")})`} />
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
      return <CaminoDetalle t={t} />;
    case "despacho":
      return <DespachoDetalle t={t} />;
    case "palacio":
      return <PalacioDetalle t={t} />;
    case "cuartel":
      return <CuartelDetalle t={t} />;
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
      return <MesaDetalle x={x} t={t} />;
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
      return <CaballoDetalle x={x} t={t} />;
  }
};
