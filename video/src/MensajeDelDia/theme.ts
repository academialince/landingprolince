import { loadFont } from "@remotion/fonts";
import { staticFile } from "remotion";

export const fontFamily = "Montserrat";

// Fuente local (variable, pesos 100-900; el subconjunto latin incluye tildes, ñ, ¿ y ¡)
loadFont({
  family: fontFamily,
  url: staticFile("montserrat-latin-wght-normal.woff2"),
  weight: "100 900",
});

// Colores de marca de Academia Prolince
export const colores = {
  verdeOscuro: "#005238",
  verdeProfundo: "#02331f",
  verde: "#439b64",
  verdeClaro: "#a9e9bc",
  menta: "#d8f5df",
  dorado: "#e6c35c",
  blanco: "#ffffff",
  rojo: "#e5484d",
};

export const fondo = `radial-gradient(ellipse at 50% 30%, ${colores.verde}55, transparent 60%), linear-gradient(180deg, ${colores.verdeOscuro} 0%, ${colores.verdeProfundo} 100%)`;

export const clamp = {
  extrapolateLeft: "clamp",
  extrapolateRight: "clamp",
} as const;
