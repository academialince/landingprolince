import type { AspectoMonigote } from "./Monigote";

// Personajes listos para usar desde el guion (campo "personaje"); cualquier campo se puede sobrescribir.
export const PERSONAJES = {
  guardia: { color: "#03512d", sombrero: "tricornio", accesorio: "fusil", bigote: true },
  "guardia-actual": { color: "#1f5a3a", sombrero: "gorra", accesorio: "ninguno" },
  duque: { color: "#1d2a44", sombrero: "bicornio", accesorio: "ninguno", bigote: true },
  reina: { color: "#5b2a86", sombrero: "corona", accesorio: "ninguno", falda: "#8e5cc2" },
  rey: { color: "#1d2a44", sombrero: "corona", accesorio: "ninguno" },
  ministro: { color: "#2d2d2d", sombrero: "chistera", accesorio: "pergamino", bigote: true },
  bandolero: { color: "#6b4226", sombrero: "calanes", accesorio: "trabuco", bigote: true, panuelo: "#c0392b" },
  viajero: { color: "#6f6f6f", sombrero: "ninguno", accesorio: "ninguno" },
  ciudadano: { color: "#4a5a66", sombrero: "ninguno", accesorio: "ninguno" },
  ciudadana: { color: "#8a3b5c", sombrero: "ninguno", accesorio: "ninguno", falda: "#d98cab" },
  diputado: { color: "#2d2d2d", sombrero: "ninguno", accesorio: "ninguno", panuelo: "#b03a2e" },
  policia: { color: "#1c2e5a", sombrero: "gorra", colorSombrero: "#1c2e5a", accesorio: "ninguno" },
  militar: { color: "#4b5320", sombrero: "gorra", colorSombrero: "#4b5320", accesorio: "ninguno" },
} satisfies Record<string, AspectoMonigote>;

export type NombrePersonaje = keyof typeof PERSONAJES;
