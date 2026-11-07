/**
 * «¿Pasarías las pruebas físicas?». Marcas mínimas de la convocatoria 2026 (BOE-A-2026-9982,
 * apéndice II y base 8.1), verificadas el 7-11-2026. Apto o no apto: quien no supera una prueba
 * queda excluido.
 *
 * El BOE no dice en qué fecha se computa la edad para elegir el tramo; aquí se usa la edad que
 * indica la persona y se avisa de ello.
 */

export type Sexo = "hombre" | "mujer";
export type Tramo = "menos35" | "35a39" | "40mas";
export type IdPrueba = "carrera" | "circuito" | "extensiones" | "natacion";

export const tramos: Record<Tramo, string> = {
  menos35: "Menos de 35 años",
  "35a39": "De 35 a 39 años",
  "40mas": "40 años o más",
};

export function tramoDeEdad(edad: number): Tramo {
  if (edad < 35) return "menos35";
  if (edad < 40) return "35a39";
  return "40mas";
}

type Prueba = {
  id: IdPrueba;
  nombre: string;
  detalle: string;
  /** Tiempo: cuanto menos, mejor. Repeticiones: cuanto más, mejor. */
  tipo: "tiempo" | "repeticiones";
  intentos: number;
  /** Marca mínima por sexo y tramo: segundos o repeticiones. */
  minimo: Record<Sexo, Record<Tramo, number>>;
};

export const pruebas: Prueba[] = [
  {
    id: "carrera",
    nombre: "Carrera de 2.000 m",
    detalle: "Resistencia, en pista y con salida de pie.",
    tipo: "tiempo",
    intentos: 1,
    minimo: {
      hombre: { menos35: 9 * 60 + 25, "35a39": 9 * 60 + 48, "40mas": 10 * 60 + 33 },
      mujer: { menos35: 11 * 60 + 14, "35a39": 11 * 60 + 35, "40mas": 12 * 60 + 49 },
    },
  },
  {
    id: "circuito",
    nombre: "Circuito de agilidad",
    detalle: "Coordinación. Derribar o mover un elemento lo anula.",
    tipo: "tiempo",
    intentos: 2,
    minimo: {
      hombre: { menos35: 14, "35a39": 14.4, "40mas": 15.1 },
      mujer: { menos35: 16, "35a39": 16.4, "40mas": 17.9 },
    },
  },
  {
    id: "extensiones",
    nombre: "Extensiones de brazos",
    detalle: "Flexiones en el suelo: cuenta cuando la barbilla toca.",
    tipo: "repeticiones",
    intentos: 2,
    minimo: {
      hombre: { menos35: 16, "35a39": 16, "40mas": 14 },
      mujer: { menos35: 11, "35a39": 11, "40mas": 9 },
    },
  },
  {
    id: "natacion",
    nombre: "Natación 50 m",
    detalle: "Estilo libre. No se puede tocar la corchera salvo en el viraje.",
    tipo: "tiempo",
    intentos: 1,
    minimo: {
      hombre: { menos35: 70, "35a39": 71, "40mas": 73 },
      mujer: { menos35: 81, "35a39": 83, "40mas": 88 },
    },
  },
];

export type MarcasFisicas = { sexo: Sexo; edad: number; marcas: Partial<Record<IdPrueba, number>> };

export type ResultadoPrueba = { id: IdPrueba; marca: number; minimo: number; apto: boolean; margen: number };

/** Evalúa las marcas que se hayan dado (al menos una). */
export function evaluarFisicas(datos: unknown): { tramo: Tramo; resultados: ResultadoPrueba[]; aptas: number; total: number } | null {
  const { sexo, edad, marcas } = (datos ?? {}) as Partial<MarcasFisicas>;
  if ((sexo !== "hombre" && sexo !== "mujer") || !Number.isInteger(edad) || edad! < 16 || edad! > 70 || !marcas) return null;
  const tramo = tramoDeEdad(edad!);
  const resultados: ResultadoPrueba[] = [];
  for (const p of pruebas) {
    const marca = marcas[p.id];
    if (marca === undefined) continue;
    if (typeof marca !== "number" || !Number.isFinite(marca) || marca < 0 || marca > 3600) return null;
    const minimo = p.minimo[sexo][tramo];
    const apto = p.tipo === "tiempo" ? marca <= minimo : marca >= minimo;
    // Margen positivo = te sobra; negativo = te falta. En segundos o repeticiones.
    const margen = Math.round((p.tipo === "tiempo" ? minimo - marca : marca - minimo) * 100) / 100;
    resultados.push({ id: p.id, marca, minimo, apto, margen });
  }
  if (resultados.length === 0) return null;
  return { tramo, resultados, aptas: resultados.filter((r) => r.apto).length, total: resultados.length };
}

export const pruebaPorId = (id: IdPrueba) => pruebas.find((p) => p.id === id)!;
