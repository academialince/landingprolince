/**
 * Calculadora del concurso de méritos (máximo 45 puntos). Baremo del Apéndice I de la
 * convocatoria 2026 (BOE-A-2026-9982), dictado conforme al art. 9 de la Orden PCI/155/2019;
 * idéntico al de 2025. Verificado contra el BOE el 7-11-2026.
 *
 * Solo puntúa lo que figura en el apéndice (no el socorrismo, el buceo ni la informática), y
 * solo lo que se tenga al terminar el plazo de presentación de instancias.
 */

export const TOPES = { profesionales: 13.5, academicos: 27, otros: 4.5, total: 45 } as const;

export type Via = "libre" | "jovenes" | "tropa";
export const vias: Record<Via, string> = {
  libre: "Acceso libre",
  jovenes: "Colegio de Guardias Jóvenes",
  tropa: "Militar de tropa y marinería",
};

export type Empleo = "ninguno" | "cabo" | "cabo1";
export const empleos: Record<Empleo, { nombre: string; puntos: number }> = {
  ninguno: { nombre: "Soldado o marinero", puntos: 0 },
  cabo: { nombre: "Cabo", puntos: 2.4 },
  cabo1: { nombre: "Cabo primero", puntos: 3.6 },
};

/** Idiomas de interés del apartado 2.2. */
export const IDIOMAS = ["inglés", "francés", "alemán", "italiano", "portugués", "árabe", "ruso"] as const;
export type Idioma = (typeof IDIOMAS)[number];
export type NivelIdioma = "no" | "b2" | "c1" | "c2";
export const nivelesIdioma: Record<NivelIdioma, { nombre: string; puntos: number }> = {
  no: { nombre: "No", puntos: 0 },
  b2: { nombre: "B2", puntos: 5 },
  c1: { nombre: "C1", puntos: 7 },
  c2: { nombre: "C2", puntos: 9 },
};

export type Pesado = "no" | "c" | "ce";
export const pesados: Record<Pesado, { nombre: string; puntos: number }> = {
  no: { nombre: "Ninguno", puntos: 0 },
  c: { nombre: "C1, C, C1+E, D1, D o D1+E", puntos: 2 },
  ce: { nombre: "C+E o D+E", puntos: 3 },
};

export type Deporte = "no" | "a" | "b" | "c";
export const deportes: Record<Deporte, { nombre: string; porAnio: number }> = {
  no: { nombre: "No", porAnio: 0 },
  a: { nombre: "Grupo A", porAnio: 0.35 },
  b: { nombre: "Grupo B", porAnio: 0.25 },
  c: { nombre: "Grupo C", porAnio: 0.2 },
};

export type DatosMeritos = {
  via: Via;
  /** Años completos de servicio: como militar de tropa (tropa) o en la Administración General del Estado (libre y Guardias Jóvenes). */
  anios: number;
  empleo: Empleo;
  mesesReservista: number;
  titulacion: boolean;
  idiomas: Partial<Record<Idioma, NivelIdioma>>;
  permisoA: boolean;
  pesado: Pesado;
  deporte: Deporte;
  aniosDeporte: number;
};

export const DATOS_INICIALES: DatosMeritos = {
  via: "libre",
  anios: 0,
  empleo: "ninguno",
  mesesReservista: 0,
  titulacion: false,
  idiomas: {},
  permisoA: false,
  pesado: "no",
  deporte: "no",
  aniosDeporte: 0,
};

const entero = (v: unknown, min: number, max: number) => Number.isInteger(v) && (v as number) >= min && (v as number) <= max;
const r2 = (n: number) => Math.round(n * 100) / 100;

export function validarMeritos(datos: unknown): DatosMeritos | null {
  const d = (datos ?? {}) as Partial<DatosMeritos>;
  if (!d.via || !(d.via in vias)) return null;
  if (!entero(d.anios, 0, 45) || !entero(d.mesesReservista, 0, 480) || !entero(d.aniosDeporte, 0, 5)) return null;
  if (!d.empleo || !(d.empleo in empleos) || !d.pesado || !(d.pesado in pesados) || !d.deporte || !(d.deporte in deportes)) return null;
  if (typeof d.titulacion !== "boolean" || typeof d.permisoA !== "boolean") return null;
  if (typeof d.idiomas !== "object" || d.idiomas === null) return null;
  const idiomas: Partial<Record<Idioma, NivelIdioma>> = {};
  for (const [k, v] of Object.entries(d.idiomas)) {
    if (!(IDIOMAS as readonly string[]).includes(k) || !(v in nivelesIdioma)) return null;
    if (v !== "no") idiomas[k as Idioma] = v;
  }
  return { ...(d as DatosMeritos), idiomas };
}

export type Linea = { concepto: string; puntos: number };
export type Mejora = { concepto: string; puntos: number; nota: string };

export function calcularMeritos(datos: unknown) {
  const d = validarMeritos(datos);
  if (!d) return null;

  // 1. Profesionales: el apartado A es solo para la vía de tropa; el B, para libre y Guardias Jóvenes.
  const prof: Linea[] = [];
  if (d.via === "tropa") {
    prof.push({ concepto: `${d.anios} años de servicio (0,90 por año, hasta 9)`, puntos: Math.min(9, d.anios * 0.9) });
    prof.push({ concepto: `Empleo: ${empleos[d.empleo].nombre}`, puntos: empleos[d.empleo].puntos });
  } else {
    prof.push({ concepto: `${d.anios} años en la Administración General del Estado (0,90 por año)`, puntos: d.anios * 0.9 });
    prof.push({ concepto: `${d.mesesReservista} meses de reservista voluntario (0,025 por mes)`, puntos: d.mesesReservista * 0.025 });
  }

  // 2. Académicos: una titulación (2 puntos) y un certificado por idioma (el de más nivel).
  const acad: Linea[] = [{ concepto: "Bachillerato o titulación superior", puntos: d.titulacion ? 2 : 0 }];
  for (const [idioma, nivel] of Object.entries(d.idiomas) as [Idioma, NivelIdioma][]) {
    acad.push({ concepto: `${idioma[0].toUpperCase()}${idioma.slice(1)} ${nivelesIdioma[nivel].nombre}`, puntos: nivelesIdioma[nivel].puntos });
  }

  // 3. Otros: un permiso por apartado y el deporte de alto nivel de los últimos cinco años.
  const otros: Linea[] = [
    { concepto: "Permiso A o A2", puntos: d.permisoA ? 3 : 0 },
    { concepto: `Permiso: ${pesados[d.pesado].nombre}`, puntos: pesados[d.pesado].puntos },
    {
      concepto: `Deportista de alto nivel (${deportes[d.deporte].nombre}, ${d.aniosDeporte} años)`,
      puntos: d.deporte === "no" ? 0 : deportes[d.deporte].porAnio * d.aniosDeporte,
    },
  ];

  const suma = (l: Linea[]) => r2(l.reduce((s, x) => s + x.puntos, 0));
  const bloques = [
    { clave: "profesionales", nombre: "Profesionales", lineas: prof.filter((l) => l.puntos > 0), bruto: suma(prof), tope: TOPES.profesionales },
    { clave: "academicos", nombre: "Académicos", lineas: acad.filter((l) => l.puntos > 0), bruto: suma(acad), tope: TOPES.academicos },
    { clave: "otros", nombre: "Otros", lineas: otros.filter((l) => l.puntos > 0), bruto: suma(otros), tope: TOPES.otros },
  ].map((b) => ({ ...b, puntos: Math.min(b.tope, b.bruto), recortado: b.bruto > b.tope }));
  const total = r2(bloques.reduce((s, b) => s + b.puntos, 0));

  // Lo que todavía se puede sumar antes de las instancias, de lo más asequible a lo que más cuesta.
  const libreOtros = TOPES.otros - bloques[2].puntos;
  const libreAcad = TOPES.academicos - bloques[1].puntos;
  const mejoras: Mejora[] = [];
  if (!d.permisoA && libreOtros > 0)
    mejoras.push({ concepto: "Sacarte el permiso A2 de moto", puntos: Math.min(3, libreOtros), nota: "Suele ser lo más rápido y barato de todo el baremo." });
  if (d.pesado !== "ce" && libreOtros > 0) {
    const gana = Math.min(pesados.ce.puntos - pesados[d.pesado].puntos, libreOtros - (!d.permisoA ? Math.min(3, libreOtros) : 0));
    if (gana > 0) mejoras.push({ concepto: d.pesado === "no" ? "Sacarte el C o el C+E" : "Pasar del C al C+E", puntos: gana, nota: "El C da 2 puntos; el C+E, 3. Con el A2 ya llegas al tope de 4,5." });
  }
  if (!d.titulacion && libreAcad > 0)
    mejoras.push({ concepto: "Tener el Bachillerato (o un título superior)", puntos: 2, nota: "Un Grado o un Máster dan lo mismo: 2 puntos." });
  const ingles = d.idiomas["inglés"] ?? "no";
  if (ingles !== "c2" && libreAcad > 0) {
    const sig: NivelIdioma = ingles === "no" ? "b2" : ingles === "b2" ? "c1" : "c2";
    mejoras.push({
      concepto: `Certificar inglés ${nivelesIdioma[sig].nombre}`,
      puntos: Math.min(nivelesIdioma[sig].puntos - nivelesIdioma[ingles].puntos, libreAcad),
      nota: "Cambridge, Trinity, IELTS o la EOI. El examen tiene que ser 100 % presencial. Y el inglés lo estudias igualmente para la oposición.",
    });
  }
  if (Object.keys(d.idiomas).length < 3 && libreAcad > 5)
    mejoras.push({ concepto: "Certificar un B2 de otro idioma", puntos: Math.min(5, libreAcad), nota: "Francés, alemán, italiano, portugués, árabe o ruso. Cada idioma suma por separado." });

  return { datos: d, bloques, total, mejoras: mejoras.slice(0, 4) };
}
