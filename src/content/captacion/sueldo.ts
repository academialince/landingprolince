/**
 * «¿Cuánto cobra un guardia civil?». Retribuciones del empleo de Guardia (subgrupo C1, nivel 17
 * de complemento de destino) en 2026.
 *
 * Oficial (verificado el 7-11-2026):
 * - Sueldo base, trienios y pagas extra: tabla «Cuantías retributivas año 2026» de la SEPG
 *   (Hacienda), con las subidas del RDL 14/2025.
 * - Nivel 17 de complemento de destino para el Guardia: RD 950/2005, anexos I y II.
 * - Indemnización por residencia en Baleares, subgrupo C1, desde el 1-7-2026: Orden PJC/683/2026.
 *
 * Aproximado (sin cuantía oficial vigente publicada): el componente general del complemento
 * específico; las webs especializadas dan entre 553 y 562 € al mes. Las cuantías de Canarias,
 * Ceuta y Melilla y los pluses por especialidad son estimaciones de fuentes no oficiales.
 *
 * ⚠️ Antes de lanzar la campaña conviene contrastarlo con una nómina real de un guardia.
 */

export const SUELDO_BASE = 900.63; // € al mes, 12 pagas
export const COMPLEMENTO_DESTINO = 465.75; // nivel 17, € al mes
export const TRIENIO = 32.96; // € al mes por trienio
export const EXTRA_BASE = 778.42; // sueldo de cada paga extra
export const TRIENIO_EXTRA = 28.45; // por trienio en cada paga extra
/** Componente general del complemento específico: rango aproximado, no oficial. */
export const ESPECIFICO_GENERAL: [number, number] = [553, 562];

export type Destino = "peninsula" | "mallorca" | "baleares-resto" | "canarias" | "ceuta-melilla";

export const destinos: Record<Destino, { nombre: string; plus: [number, number]; oficial: boolean; nota?: string }> = {
  peninsula: { nombre: "Península", plus: [0, 0], oficial: true },
  mallorca: { nombre: "Mallorca", plus: [144.61, 144.61], oficial: true, nota: "Indemnización por residencia, subgrupo C1 (Orden PJC/683/2026)." },
  "baleares-resto": { nombre: "Menorca, Ibiza o Formentera", plus: [405.1, 405.1], oficial: true, nota: "Indemnización por residencia, subgrupo C1 (Orden PJC/683/2026)." },
  canarias: { nombre: "Canarias", plus: [118, 230], oficial: false, nota: "Estimación no oficial: varía según la isla." },
  "ceuta-melilla": { nombre: "Ceuta o Melilla", plus: [300, 500], oficial: false, nota: "Estimación no oficial." },
};

export type Especialidad = "ninguna" | "trafico" | "gar" | "maritimo" | "usecic";

export const especialidades: Record<Especialidad, { nombre: string; plus: [number, number] }> = {
  ninguna: { nombre: "Seguridad ciudadana (sin especialidad)", plus: [0, 0] },
  trafico: { nombre: "Tráfico", plus: [200, 350] },
  gar: { nombre: "GAR", plus: [250, 400] },
  maritimo: { nombre: "Servicio Marítimo", plus: [200, 350] },
  usecic: { nombre: "USECIC", plus: [150, 300] },
};

export type DatosSueldo = { destino: Destino; especialidad: Especialidad; anios: number };

const r2 = (n: number) => Math.round(n * 100) / 100;

export function calcularSueldo(datos: unknown) {
  const { destino, especialidad, anios } = (datos ?? {}) as Partial<DatosSueldo>;
  if (!destino || !(destino in destinos) || !especialidad || !(especialidad in especialidades)) return null;
  if (!Number.isInteger(anios) || anios! < 0 || anios! > 45) return null;

  const trienios = Math.floor(anios! / 3);
  const d = destinos[destino];
  const e = especialidades[especialidad];

  /** Lo que es oficial y fijo para cualquier guardia. */
  const fijoOficial = r2(SUELDO_BASE + COMPLEMENTO_DESTINO + trienios * TRIENIO);
  const mensual: [number, number] = [
    r2(fijoOficial + ESPECIFICO_GENERAL[0] + d.plus[0] + e.plus[0]),
    r2(fijoOficial + ESPECIFICO_GENERAL[1] + d.plus[1] + e.plus[1]),
  ];
  // Cada paga extra: sueldo de la extra y trienios + un mes de destino y de específico general.
  const extra: [number, number] = [
    r2(EXTRA_BASE + trienios * TRIENIO_EXTRA + COMPLEMENTO_DESTINO + ESPECIFICO_GENERAL[0]),
    r2(EXTRA_BASE + trienios * TRIENIO_EXTRA + COMPLEMENTO_DESTINO + ESPECIFICO_GENERAL[1]),
  ];
  const anual: [number, number] = [r2(12 * mensual[0] + 2 * extra[0]), r2(12 * mensual[1] + 2 * extra[1])];

  const lineas = [
    { concepto: "Sueldo base (C1)", importe: [SUELDO_BASE, SUELDO_BASE] as [number, number], oficial: true },
    { concepto: "Complemento de destino (nivel 17)", importe: [COMPLEMENTO_DESTINO, COMPLEMENTO_DESTINO] as [number, number], oficial: true },
    ...(trienios > 0
      ? [{ concepto: `Trienios (${trienios})`, importe: [r2(trienios * TRIENIO), r2(trienios * TRIENIO)] as [number, number], oficial: true }]
      : []),
    { concepto: "Complemento específico general", importe: ESPECIFICO_GENERAL, oficial: false },
    ...(d.plus[1] > 0 ? [{ concepto: `Residencia: ${d.nombre}`, importe: d.plus, oficial: d.oficial }] : []),
    ...(e.plus[1] > 0 ? [{ concepto: `Plus de ${e.nombre}`, importe: e.plus, oficial: false }] : []),
  ];

  return { trienios, mensual, extra, anual, lineas };
}
