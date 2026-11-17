/**
 * Datos oficiales de la oposición de acceso a la Escala de Cabos y Guardias, verificados contra
 * el BOE el 7-11-2026. Fuente principal, salvo que se indique otra: convocatoria 2026,
 * Resolución 160/38243/2026, BOE núm. 112, de 8 de mayo de 2026 (BOE-A-2026-9982).
 *
 * Si sale una convocatoria nueva, este es el fichero que hay que revisar.
 */

export const CONVOCATORIA = {
  anio: 2026,
  boe: "BOE-A-2026-9982",
  url: "https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982",
} as const;

/**
 * Notas de corte: puntuación final (concurso + oposición, sobre 195) del último aspirante
 * propuesto del cupo libre, calculada a partir del anexo I de cada resolución de propuestos.
 */
export const notasCorte = [
  { anio: 2026, libre: 90.61, boe: "BOE-A-2026-20936" },
  { anio: 2025, libre: 95.8, boe: "BOE-A-2025-21469" },
  { anio: 2024, libre: 103.08, boe: "BOE-A-2024-24233" },
  { anio: 2023, libre: 95.75, boe: "BOE-A-2023-26041" },
  { anio: 2022, libre: 110.58, boe: "BOE-A-2022-18829" },
] as const;

/** Escalas de la puntuación final (base 7.9). */
export const ESCALAS = { conocimientos: 100, ingles: 20, psicotecnico: 30, oposicion: 150, concurso: 45, final: 195 } as const;

/** Mínimos de cada prueba para no quedar excluido (bases 7.6–7.8). */
export const MINIMOS = { conocimientos: 50, ingles: 8, psicotecnico: 12 } as const;

/** Ortografía y gramática: apto o no apto; 6 errores o más excluyen (bases 7.4 y 7.5). */
export const MAX_ERRORES_LENGUA = 5;

export const bocUrl = (id: string) => `https://www.boe.es/diario_boe/txt.php?id=${id}`;
