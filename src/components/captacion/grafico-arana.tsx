"use client";

import { useState } from "react";

type Rasgo = { nombre: string; valor: number };

// Lienzo más ancho que alto: los ejes laterales llevan las etiquetas largas.
const ANCHO = 420;
const ALTO = 330;
const CX = ANCHO / 2;
const CY = ALTO / 2;
const R = 100;
const ANILLOS = [25, 50, 75, 100];

/** Punto del eje `i` (de `n`) a una distancia `v` (0–100) del centro. El primer eje mira arriba. */
function punto(i: number, n: number, v: number) {
  const a = -Math.PI / 2 + (i * 2 * Math.PI) / n;
  return [CX + Math.cos(a) * R * (v / 100), CY + Math.sin(a) * R * (v / 100)] as const;
}

const poligono = (n: number, valores: number[]) =>
  valores.map((v, i) => punto(i, n, v).map((x) => x.toFixed(1)).join(",")).join(" ");

/**
 * Gráfico de araña de los rasgos de estudio. Una sola serie en el verde de la marca, con el rasgo
 * más alto marcado como fortaleza y el más bajo como punto débil (con texto, no solo color).
 * Al tocar o pasar por un vértice se ve su valor; la lista oculta da los mismos datos en texto.
 */
export function GraficoArana({ rasgos }: { rasgos: Rasgo[] }) {
  const [activo, setActivo] = useState<number | null>(null);
  const n = rasgos.length;
  const valores = rasgos.map((r) => r.valor);
  const max = valores.indexOf(Math.max(...valores));
  const min = valores.indexOf(Math.min(...valores));

  return (
    <figure className="m-0">
      <svg
        viewBox={`0 0 ${ANCHO} ${ALTO}`}
        className="mx-auto block w-full max-w-[26rem] overflow-visible"
        role="img"
        aria-label={`Gráfico de araña de tus rasgos de estudio. Fortaleza: ${rasgos[max].nombre}. Punto débil: ${rasgos[min].nombre}.`}
      >
        <defs>
          <radialGradient id="arana-relleno" cx="50%" cy="50%" r="50%">
            <stop offset="0%" stopColor="var(--color-primary)" stopOpacity="0.55" />
            <stop offset="100%" stopColor="var(--color-primary)" stopOpacity="0.22" />
          </radialGradient>
        </defs>

        {/* Rejilla: anillos hexagonales y ejes, recesivos. */}
        {ANILLOS.map((v) => (
          <polygon
            key={v}
            points={poligono(n, Array(n).fill(v))}
            fill={v === 100 ? "color-mix(in oklch, var(--color-primary) 4%, transparent)" : "none"}
            stroke="var(--color-border-strong)"
            strokeOpacity={v === 100 ? 0.9 : 0.45}
            strokeWidth="1"
            strokeDasharray={v === 100 ? undefined : "3 4"}
          />
        ))}
        {rasgos.map((_, i) => {
          const [x, y] = punto(i, n, 100);
          return <line key={i} x1={CX} y1={CY} x2={x} y2={y} stroke="var(--color-border-strong)" strokeOpacity="0.45" />;
        })}

        {/* La forma. Aparece creciendo desde el centro (sin animación si se pide reducir movimiento). */}
        <g className="arana-forma" style={{ transformOrigin: `${CX}px ${CY}px` }}>
          <polygon
            points={poligono(n, valores)}
            fill="url(#arana-relleno)"
            stroke="var(--color-primary)"
            strokeWidth="2"
            strokeLinejoin="round"
          />
          {rasgos.map((r, i) => {
            const [x, y] = punto(i, n, r.valor);
            const color = i === min ? "var(--color-warning)" : "var(--color-primary)";
            const destacado = i === max || i === min || i === activo;
            return (
              <g key={r.nombre}>
                <circle cx={x} cy={y} r={destacado ? 6.5 : 4.5} fill={color} stroke="var(--color-surface)" strokeWidth="2" />
                {/* Zona de toque mayor que el punto. */}
                <circle
                  cx={x}
                  cy={y}
                  r="18"
                  fill="transparent"
                  onPointerEnter={() => setActivo(i)}
                  onPointerLeave={() => setActivo(null)}
                  onClick={() => setActivo(activo === i ? null : i)}
                >
                  <title>{`${r.nombre}: ${r.valor}/100`}</title>
                </circle>
              </g>
            );
          })}
        </g>

        {/* Etiquetas de los ejes, en tinta de texto. Arriba y abajo en una línea; a los lados, el
            nombre y el valor en dos, para que quepan en el móvil. */}
        {rasgos.map((r, i) => {
          const [x, y] = punto(i, n, 116);
          const centrada = Math.abs(x - CX) < 4;
          const ancla = centrada ? "middle" : x > CX ? "start" : "end";
          const etiqueta = i === max ? "FORTALEZA" : i === min ? "A MEJORAR" : null;
          // Líneas del bloque: [etiqueta?], nombre, valor (a los lados) o nombre + valor (centrada).
          const lineas = (etiqueta ? 1 : 0) + (centrada ? 1 : 2);
          const alto = 15;
          const arriba = centrada && y < CY;
          const y0 = centrada ? (arriba ? y - lineas * alto + 4 : y + 12) : y - (lineas * alto) / 2 + 11;
          const peso = i === activo || etiqueta ? 800 : 600;
          return (
            <text key={r.nombre} textAnchor={ancla} className="fill-foreground" style={{ fontSize: 12.5 }}>
              {etiqueta && (
                <tspan
                  x={x}
                  y={y0}
                  className={i === min ? "fill-warning" : "fill-primary"}
                  style={{ fontSize: 9, fontFamily: "var(--font-hud)", letterSpacing: "0.12em", fontWeight: 700 }}
                >
                  {etiqueta}
                </tspan>
              )}
              <tspan x={x} y={y0 + (etiqueta ? alto : 0)} style={{ fontWeight: peso }}>
                {r.nombre}
                {centrada && (
                  <tspan dx="5" className="fill-muted-foreground" style={{ fontWeight: 700 }}>
                    {r.valor}
                  </tspan>
                )}
              </tspan>
              {!centrada && (
                <tspan x={x} y={y0 + (etiqueta ? 2 : 1) * alto} className="fill-muted-foreground" style={{ fontWeight: 700 }}>
                  {r.valor}
                </tspan>
              )}
            </text>
          );
        })}
      </svg>

      <figcaption className="mt-4 flex flex-wrap justify-center gap-x-5 gap-y-2 text-body-sm text-muted-foreground">
        <span className="inline-flex items-center gap-2">
          <span className="size-2.5 rounded-full bg-primary" aria-hidden />
          Fortaleza: <strong className="text-foreground">{rasgos[max].nombre}</strong>
        </span>
        <span className="inline-flex items-center gap-2">
          <span className="size-2.5 rounded-full bg-warning" aria-hidden />
          A mejorar: <strong className="text-foreground">{rasgos[min].nombre}</strong>
        </span>
      </figcaption>

      <ul className="sr-only">
        {rasgos.map((r) => (
          <li key={r.nombre}>
            {r.nombre}: {r.valor} sobre 100
          </li>
        ))}
      </ul>
    </figure>
  );
}
