import "@fontsource/jetbrains-mono/700.css";
import "@fontsource-variable/manrope";
import { PALABRAS } from "./palabras";

// Tokens de prolince.com (src/app/globals.css, tema claro), de OKLCH a hex.
export const C = {
  fondo: "#ffffff",
  sutil: "#f8fbf9",
  tintado: "#f2f9f5",
  texto: "#121b16",
  apagado: "#535e57",
  borde: "#dde4e0",
  primario: "#03512d",
  suave: "#e3f4e8",
  suaveTexto: "#004624",
  profundo: "#002a15",
  // primary-soft-fg y primary del tema oscuro: los verdes claros sobre fondo profundo.
  menta: "#a6e4bb",
  acento: "#35ab6c",
  error: "#ba2b28",
};

export const F = {
  texto: "'Manrope Variable', Manrope, sans-serif",
  hud: "'JetBrains Mono', monospace",
};

/** Escala tipográfica de la web (text-display-xl, h2, eyebrow…) llevada a 1080 px de ancho. */
export const T = {
  displayXl: { fontSize: 128, fontWeight: 780, letterSpacing: "-0.038em", lineHeight: 1.04 },
  displayL: { fontSize: 96, fontWeight: 760, letterSpacing: "-0.032em", lineHeight: 1.1 },
  h2: { fontSize: 64, fontWeight: 700, letterSpacing: "-0.028em", lineHeight: 1.15 },
  h3: { fontSize: 46, fontWeight: 680, letterSpacing: "-0.015em", lineHeight: 1.25 },
  cuerpo: { fontSize: 38, fontWeight: 500, lineHeight: 1.45 },
  eyebrow: { fontSize: 30, fontWeight: 600, letterSpacing: "0.08em", textTransform: "uppercase" as const },
};

export const FPS = 30;
export const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;
// --ease-product de la web.
export const EASE: [number, number, number, number] = [0.22, 1, 0.36, 1];

const limpia = (t: string) => t.toLowerCase().replace(/[^\p{L}\p{N}]/gu, "");

/** Instante (s) en que empieza la n-ésima aparición (desde 0) de la palabra `texto` en la locución. */
export const en = (texto: string, n = 0) => {
  const hits = PALABRAS.filter((p) => limpia(p.texto) === limpia(texto));
  if (!hits[n]) throw new Error(`«${texto}» (${n}) no está en la locución`);
  return hits[n].inicio;
};
