/**
 * «¿Dónde te puede tocar?». No existe un dato oficial de vacantes por zona para las nuevas
 * promociones, ni una norma publicada que diga cómo se eligen las vacantes de prácticas. Por eso
 * esta landing no «simula» un destino: enseña el camino oficial hasta el primer destino y las
 * cifras públicas que hay, separando lo oficial de lo que sale de la prensa.
 *
 * Verificado el 7-11-2026. Fuentes en cada dato.
 */

export type Comunidad =
  | "andalucia"
  | "aragon"
  | "asturias"
  | "baleares"
  | "canarias"
  | "cantabria"
  | "castilla-la-mancha"
  | "castilla-y-leon"
  | "cataluna"
  | "valenciana"
  | "extremadura"
  | "galicia"
  | "madrid"
  | "murcia"
  | "navarra"
  | "pais-vasco"
  | "la-rioja"
  | "ceuta-melilla";

type Cifra = { valor: string; texto: string; fuente: string; url: string };

export const comunidades: Record<Comunidad, { nombre: string; cifras: Cifra[] }> = {
  andalucia: {
    nombre: "Andalucía",
    cifras: [
      {
        valor: "3.254",
        texto: "alumnos en prácticas entre 2021 y 2025, la comunidad con más (840 solo en 2024)",
        fuente: "The Objective, con datos de Transparencia (13-10-2026)",
        url: "https://theobjective.com/espana/2026-10-13/guardias-civiles-practicas-desaparecen-cataluna/",
      },
      {
        valor: "149",
        texto: "alumnos en prácticas en la Comandancia de Granada en 2026",
        fuente: "COPE Granada (30-6-2026)",
        url: "https://www.cope.es/emisoras/andalucia/granada-provincia/granada/noticias/granada-recibe-nueva-promocion-guardias-civiles-practicas-20260630_3394213.html",
      },
    ],
  },
  aragon: { nombre: "Aragón", cifras: [] },
  asturias: { nombre: "Asturias", cifras: [] },
  baleares: { nombre: "Islas Baleares", cifras: [] },
  canarias: { nombre: "Canarias", cifras: [] },
  cantabria: { nombre: "Cantabria", cifras: [] },
  "castilla-la-mancha": { nombre: "Castilla-La Mancha", cifras: [] },
  "castilla-y-leon": { nombre: "Castilla y León", cifras: [] },
  cataluna: {
    nombre: "Cataluña",
    cifras: [
      {
        valor: "392",
        texto: "alumnos en prácticas entre 2021 y 2025, cada año menos (134, 69, 94, 82 y 13)",
        fuente: "The Objective, con datos de Transparencia (13-10-2026)",
        url: "https://theobjective.com/espana/2026-10-13/guardias-civiles-practicas-desaparecen-cataluna/",
      },
    ],
  },
  valenciana: {
    nombre: "Comunidad Valenciana",
    cifras: [
      {
        valor: "1.503",
        texto: "alumnos en prácticas entre 2021 y 2025",
        fuente: "The Objective, con datos de Transparencia (13-10-2026)",
        url: "https://theobjective.com/espana/2026-10-13/guardias-civiles-practicas-desaparecen-cataluna/",
      },
    ],
  },
  extremadura: {
    nombre: "Extremadura",
    cifras: [
      {
        valor: "149",
        texto: "alumnos en prácticas incorporados en 2026",
        fuente: "La Portada de Extremadura (2026)",
        url: "https://www.laportadadeextremadura.com/extremadura/extremadura-refuerza-seguridad-este-verano-con-incorporacion-149-guardias-civiles-alumnos-en-practicas_6468_102.html",
      },
    ],
  },
  galicia: {
    nombre: "Galicia",
    cifras: [
      {
        valor: "166",
        texto: "alumnos en prácticas incorporados en 2026",
        fuente: "El Correo Gallego (30-6-2026)",
        url: "https://www.elcorreogallego.es/concellos/2026/06/30/guardia-civil-sueno-vida-agentes-practicas-galicia-131935240.html",
      },
    ],
  },
  madrid: {
    nombre: "Comunidad de Madrid",
    cifras: [
      {
        valor: "1.985",
        texto: "alumnos en prácticas entre 2021 y 2025, de 267 en 2021 a 347 en 2025",
        fuente: "The Objective, con datos de Transparencia (13-10-2026)",
        url: "https://theobjective.com/espana/2026-10-13/guardias-civiles-practicas-desaparecen-cataluna/",
      },
      {
        valor: "325",
        texto: "alumnos en prácticas incorporados en 2026",
        fuente: "Madrid Actual (10-7-2026)",
        url: "https://www.madridactual.es/noticias-regionales/guardia-civil-incorpora-325-agentes-practicas-unidades-20260710-8110787.html",
      },
    ],
  },
  murcia: { nombre: "Región de Murcia", cifras: [] },
  navarra: { nombre: "Navarra", cifras: [] },
  "pais-vasco": { nombre: "País Vasco", cifras: [] },
  "la-rioja": {
    nombre: "La Rioja",
    cifras: [
      {
        valor: "142",
        texto: "alumnos en prácticas entre 2021 y 2025, la cifra más baja del periodo",
        fuente: "The Objective, con datos de Transparencia (13-10-2026)",
        url: "https://theobjective.com/espana/2026-10-13/guardias-civiles-practicas-desaparecen-cataluna/",
      },
    ],
  },
  "ceuta-melilla": { nombre: "Ceuta o Melilla", cifras: [] },
};

/** Total de alumnos en prácticas en España, 2021–2025 (misma fuente de prensa). */
export const TOTAL_PRACTICAS_2021_2025 = "11.218";

/** El camino de la convocatoria 2026, con fechas reales. */
export const camino: { fecha: string; titulo: string; texto: string; /** Si la fecha es oficial o una aproximación nuestra. */
  fechaOficial: boolean }[] = [
  { fecha: "8 may 2026", titulo: "Convocatoria", texto: "3.240 plazas, 1.704 de ellas de acceso libre (BOE-A-2026-9982).", fechaOficial: true },
  { fecha: "11 jul 2026", titulo: "Examen", texto: "Conocimientos y psicotécnica, el mismo día (BOE-A-2026-12817).", fechaOficial: true },
  { fecha: "8 oct 2026", titulo: "Aprobados", texto: "Se publica la lista de aspirantes propuestos (BOE-A-2026-20936).", fechaOficial: true },
  {
    fecha: "13 oct 2026",
    titulo: "Academia de Baeza",
    texto: "Primer curso presencial: 1.141 horas, unos 8 o 9 meses. Tu nota del curso cuenta para el escalafón.",
    fechaOficial: true,
  },
  {
    fecha: "Verano 2027",
    titulo: "Prácticas en una unidad",
    texto: "Segundo curso: 40 semanas de prácticas en un puesto, en comisión de servicio. En 2026 se incorporaron 3.123 alumnos.",
    fechaOficial: false,
  },
  {
    fecha: "2028",
    titulo: "Guardia civil y primer destino",
    texto: "Al superar el plan de estudios obtienes el empleo de guardia civil y tu puesto en el escalafón.",
    fechaOficial: false,
  },
];

export function validarDestino(datos: unknown): Comunidad | null {
  const c = (datos as { comunidad?: unknown } | null)?.comunidad;
  return typeof c === "string" && c in comunidades ? (c as Comunidad) : null;
}
