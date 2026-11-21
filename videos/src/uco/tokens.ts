import "@fontsource/barlow-condensed/700.css";
import "@fontsource/barlow-condensed/800.css";
import "@fontsource/jetbrains-mono/700.css";
import "@fontsource-variable/manrope";
import { PALABRAS } from "./palabras";

// Paleta de prolinceacademia.com en su modo oscuro (por defecto): bloque `.tactico[data-tema="oscuro"]`
// de src/app/globals.css, de OKLCH a hex.
export const C = {
  fondo: "#090e0a", // --color-background
  texto: "#ecf0eb", // --color-foreground
  superficie: "#111712", // --color-surface
  sutil: "#0c120d", // --color-surface-subtle
  tintado: "#121b13", // --color-surface-tinted
  apagado: "#a5ada5", // --color-muted-foreground
  borde: "#262e27", // --color-border
  bordeFuerte: "#404b42", // --color-border-strong
  primario: "#35ab6c", // --color-primary (= --color-acento, el «verde táctico»)
  primarioHover: "#49bb7b",
  primarioFg: "#071009", // --color-primary-fg
  suave: "#0e2e1c", // --color-primary-soft (fondo de chips e iconos)
  suaveTexto: "#9ae5b5", // --color-primary-soft-fg
  profundo: "#030604", // --color-primary-deep (banda de cierre)
  fotoFondo: "#040704", // .hud-foto
  rec: "#ff3131", // punto «en directo»
  aviso: "#f7b83d", // --color-warning
  error: "#ee5a50",
};

export const F = {
  titular: "'Barlow Condensed', sans-serif", // --font-display
  texto: "'Manrope Variable', Manrope, sans-serif", // --font-sans
  hud: "'JetBrains Mono', monospace", // --font-hud
};

/**
 * Escala tipográfica del rediseño táctico (globals.css) llevada a 1080 px de ancho:
 * titulares Barlow Condensed 800 en mayúsculas, interlineado ajustado, etiquetas de visor en monoespaciada.
 */
const titular = { fontFamily: F.titular, fontWeight: 800, textTransform: "uppercase" as const, letterSpacing: "0.005em" };
export const T = {
  displayXl: { ...titular, fontSize: 210, lineHeight: 0.92 },
  displayL: { ...titular, fontSize: 150, lineHeight: 0.95 },
  h2: { ...titular, fontSize: 104, lineHeight: 1 },
  h3: { fontFamily: F.titular, fontWeight: 700, textTransform: "uppercase" as const, letterSpacing: "0.01em", fontSize: 66, lineHeight: 1.05 },
  cuerpo: { fontFamily: F.texto, fontWeight: 500, fontSize: 40, lineHeight: 1.5 },
  eyebrow: { fontFamily: F.hud, fontWeight: 700, fontSize: 28, letterSpacing: "0.16em", textTransform: "uppercase" as const },
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
