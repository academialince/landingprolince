import { ESCALAS, MINIMOS, notasCorte } from "./datos-oficiales";

/**
 * «¿Qué nota de corte necesitas?». Con la nota prevista en cada prueba y los puntos de méritos,
 * calcula la puntuación final sobre 195 (oposición sobre 150 + concurso sobre 45) y la compara
 * con la nota del último aspirante con plaza del turno libre en las cinco últimas convocatorias.
 *
 * Lo usan la landing y el servidor, con el mismo resultado para los mismos datos.
 */

export type DatosCorte = { conocimientos: number; ingles: number; psicotecnico: number; meritos: number };
export type PruebaCorte = keyof DatosCorte;

export const pruebasCorte: { clave: PruebaCorte; nombre: string; max: number; minimo?: number; paso: number }[] = [
  { clave: "conocimientos", nombre: "Conocimientos", max: ESCALAS.conocimientos, minimo: MINIMOS.conocimientos, paso: 0.5 },
  { clave: "ingles", nombre: "Inglés", max: ESCALAS.ingles, minimo: MINIMOS.ingles, paso: 0.25 },
  { clave: "psicotecnico", nombre: "Psicotécnico", max: ESCALAS.psicotecnico, minimo: MINIMOS.psicotecnico, paso: 0.25 },
  { clave: "meritos", nombre: "Méritos", max: ESCALAS.concurso, paso: 0.25 },
];

export const DATOS_INICIALES: DatosCorte = { conocimientos: 65, ingles: 12, psicotecnico: 18, meritos: 4 };

export function validarCorte(datos: unknown): DatosCorte | null {
  const d = (datos ?? {}) as Partial<Record<PruebaCorte, unknown>>;
  const res = {} as DatosCorte;
  for (const p of pruebasCorte) {
    const v = d[p.clave];
    if (typeof v !== "number" || !Number.isFinite(v) || v < 0 || v > p.max) return null;
    res[p.clave] = Math.round(v * 100) / 100;
  }
  return res;
}

const redondear = (n: number) => Math.round(n * 100) / 100;

export function calcularCorte(datos: unknown) {
  const d = validarCorte(datos);
  if (!d) return null;
  const oposicion = redondear(d.conocimientos + d.ingles + d.psicotecnico);
  const total = redondear(oposicion + d.meritos);
  // Por debajo del mínimo de una prueba se queda fuera, sume lo que sume.
  const excluido = pruebasCorte.filter((p) => p.minimo !== undefined && d[p.clave] < p.minimo);
  const comparacion = notasCorte.map((n) => ({
    anio: n.anio,
    corte: n.libre,
    boe: n.boe,
    diferencia: redondear(total - n.libre),
    entra: excluido.length === 0 && total >= n.libre,
  }));
  const entraEn = comparacion.filter((c) => c.entra).length;
  const corteMasAlto = Math.max(...notasCorte.map((n) => n.libre));
  return { datos: d, oposicion, total, excluido, comparacion, entraEn, corteMasAlto, ultimo: comparacion[0] };
}
