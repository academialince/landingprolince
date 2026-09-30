import type { AspectoMonigote } from "./Monigote";

const PIEL = { clara: "#f6d2b6", media: "#e8b48f", morena: "#c98e64", oscura: "#8d5a3b" };

// Personajes listos para usar desde el guion (campo "personaje"); cualquier campo se puede sobrescribir.
export const PERSONAJES = {
  // Guardia de 1844: casaca azul turquí, correaje amarillo cruzado, tricornio de charol y fusil.
  guardia: {
    piel: PIEL.media, pelo: "#3b2616", peinado: "corto", sombrero: "tricornio",
    chaqueta: "#1f2f5c", pantalon: "#e9e6dc", accesorio: "fusil", bigote: true,
    correaje: "#e6b93a", botones: "#e2b53a",
  },
  "guardia-actual": {
    piel: PIEL.clara, pelo: "#4a3020", peinado: "corto", sombrero: "gorra",
    chaqueta: "#2f6b47", pantalon: "#2a5a3c", accesorio: "ninguno", cinturon: "#1b1b1b", botones: "#e2b53a",
  },
  duque: {
    piel: PIEL.clara, pelo: "#6b6b6b", peinado: "corto", sombrero: "bicornio",
    chaqueta: "#1b2548", pantalon: "#1b2548", accesorio: "ninguno", bigote: true, patillas: true,
    botones: "#e2b53a", fajin: "#b3202c", charreteras: "#e2b53a",
  },
  reina: {
    piel: PIEL.clara, pelo: "#5a3520", peinado: "largo", sombrero: "corona", mujer: true,
    chaqueta: "#6d3fa0", pantalon: "#6d3fa0", vestido: "#7b4bb3", accesorio: "ninguno", collar: "#e2b53a",
  },
  // Mando militar del siglo XIX (sin bigote ni patillas, para no confundirlo con el duque).
  "militar-1844": {
    piel: PIEL.media, pelo: "#3b2616", peinado: "corto", sombrero: "bicornio",
    chaqueta: "#243a6b", pantalon: "#e9e6dc", accesorio: "ninguno",
    botones: "#e2b53a", fajin: "#b3202c", charreteras: "#e2b53a",
  },
  rey: {
    piel: PIEL.clara, pelo: "#8a6a4a", peinado: "corto", sombrero: "corona",
    chaqueta: "#1f2a4a", pantalon: "#1f2a4a", accesorio: "ninguno", fajin: "#b3202c", charreteras: "#e2b53a", botones: "#e2b53a",
  },
  ministro: {
    piel: PIEL.clara, pelo: "#2a1d15", peinado: "corto", sombrero: "chistera",
    chaqueta: "#24252b", pantalon: "#3a3b42", accesorio: "pergamino", bigote: true, patillas: true, camisa: true, corbata: "#1a1a1a",
  },
  bandolero: {
    piel: PIEL.morena, pelo: "#1d130c", peinado: "corto", sombrero: "calanes",
    chaqueta: "#7a4a26", pantalon: "#3b2a1c", accesorio: "trabuco", bigote: true, patillas: true, fajin: "#c0392b", camisa: true,
  },
  viajero: {
    piel: PIEL.clara, pelo: "#a2672e", peinado: "corto", sombrero: "ninguno",
    chaqueta: "#7d8691", pantalon: "#5c6470", accesorio: "maleta", camisa: true, corbata: "#8e2b2b",
  },
  ciudadano: {
    piel: PIEL.media, pelo: "#2a1d15", peinado: "corto", sombrero: "ninguno",
    chaqueta: "#46637a", pantalon: "#2e3a46", accesorio: "ninguno", camisa: true,
  },
  ciudadana: {
    piel: PIEL.clara, pelo: "#1f1a17", peinado: "largo", sombrero: "ninguno", mujer: true,
    chaqueta: "#4f9a5a", pantalon: "#4f9a5a", vestido: "#58a864", accesorio: "ninguno", collar: "#e2b53a",
  },
  diputado: {
    piel: PIEL.morena, pelo: "#3b2616", peinado: "corto", sombrero: "ninguno",
    chaqueta: "#2b2d33", pantalon: "#2b2d33", accesorio: "ninguno", camisa: true, corbata: "#c0392b", botones: "#e2b53a",
  },
  policia: {
    piel: PIEL.media, pelo: "#2a1d15", peinado: "corto", sombrero: "gorra", colorSombrero: "#1f2d57",
    chaqueta: "#22346a", pantalon: "#1b2850", accesorio: "ninguno", cinturon: "#1b1b1b", botones: "#d9dde3",
  },
  militar: {
    piel: PIEL.clara, pelo: "#4a3020", peinado: "corto", sombrero: "gorra", colorSombrero: "#4e5a2e",
    chaqueta: "#5a6634", pantalon: "#4e5a2e", accesorio: "ninguno", cinturon: "#3a2a1c", botones: "#e2b53a",
  },
} satisfies Record<string, AspectoMonigote>;

export type NombrePersonaje = keyof typeof PERSONAJES;
