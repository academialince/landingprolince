import "@fontsource/barlow-condensed/700.css";
import "@fontsource/barlow-condensed/800.css";
import "@fontsource/jetbrains-mono/700.css";
import "@fontsource-variable/manrope";

// Paleta de «Mi primer destino» (bloque .mpd-juego de simulador-entrevista), de OKLCH a hex.
export const C = {
  fondo: "#090e0a",
  superficie: "#111712",
  profundo: "#030604",
  texto: "#ecf0eb",
  apagado: "#a5ada5",
  borde: "#262e27",
  acento: "#35ab6c",
  menta: "#9ae5b5",
  aviso: "#f7b83d",
};

export const F = {
  titular: "'Barlow Condensed', sans-serif",
  texto: "'Manrope Variable', Manrope, sans-serif",
  cifras: "'JetBrains Mono', monospace",
};

export const FPS = 30;
export const ANCHO = 1080;
export const ALTO = 1920;

export const clamp = { extrapolateLeft: "clamp", extrapolateRight: "clamp" } as const;
