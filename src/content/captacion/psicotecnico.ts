import { ESCALAS, MINIMOS } from "./datos-oficiales";

/**
 * Psicotécnico exprés. Preguntas de aptitudes con cuatro opciones y la corrección del examen
 * (cada error resta un tercio; en blanco no resta). La nota se lleva a la escala oficial de la
 * prueba de aptitudes intelectuales (sobre 30, mínimo 12) para que se entienda contra el examen.
 *
 * El examen real son 80 preguntas en 55 minutos; esto es una muestra corta y más apretada.
 * El BOE no detalla qué tipos de ejercicio entran: los de aquí son los habituales en este tipo
 * de pruebas, no una copia del examen.
 */

export type TipoPsico = "numericas" | "letras" | "verbal" | "razonamiento";

export const tipos: Record<TipoPsico, string> = {
  numericas: "Series numéricas",
  letras: "Series de letras",
  verbal: "Aptitud verbal",
  razonamiento: "Cálculo y razonamiento",
};

export type PreguntaPsico = { id: string; tipo: TipoPsico; enunciado: string; opciones: string[]; correcta: number; explicacion: string };

export const banco: PreguntaPsico[] = [
  // Series numéricas
  { id: "n1", tipo: "numericas", enunciado: "3 · 6 · 12 · 24 · ?", opciones: ["36", "48", "42", "30"], correcta: 1, explicacion: "Cada número es el doble del anterior: 24 × 2 = 48." },
  { id: "n2", tipo: "numericas", enunciado: "2 · 5 · 10 · 17 · 26 · ?", opciones: ["35", "36", "37", "39"], correcta: 2, explicacion: "Se suma +3, +5, +7, +9… El siguiente salto es +11: 26 + 11 = 37." },
  { id: "n3", tipo: "numericas", enunciado: "4 · 7 · 13 · 25 · 49 · ?", opciones: ["73", "96", "97", "98"], correcta: 2, explicacion: "Cada número es el doble del anterior menos 1: 49 × 2 − 1 = 97." },
  { id: "n4", tipo: "numericas", enunciado: "1 · 1 · 2 · 3 · 5 · 8 · ?", opciones: ["11", "12", "13", "14"], correcta: 2, explicacion: "Cada número es la suma de los dos anteriores: 5 + 8 = 13." },
  { id: "n5", tipo: "numericas", enunciado: "5 · 10 · 8 · 16 · 14 · ?", opciones: ["12", "26", "28", "30"], correcta: 2, explicacion: "Se alterna ×2 y −2: 14 × 2 = 28." },
  { id: "n6", tipo: "numericas", enunciado: "81 · 27 · 9 · 3 · ?", opciones: ["0", "1", "2", "3"], correcta: 1, explicacion: "Cada número es el anterior dividido entre 3: 3 ÷ 3 = 1." },
  // Series de letras (sin pasar por la Ñ, para que no haya dudas de alfabeto)
  { id: "l1", tipo: "letras", enunciado: "A · C · E · G · ?", opciones: ["H", "I", "J", "K"], correcta: 1, explicacion: "Se salta una letra cada vez: G (h) I." },
  { id: "l2", tipo: "letras", enunciado: "A · D · G · J · ?", opciones: ["K", "L", "M", "N"], correcta: 2, explicacion: "Se avanza de tres en tres: J, K, L, M." },
  { id: "l3", tipo: "letras", enunciado: "Z · X · V · T · ?", opciones: ["S", "R", "Q", "P"], correcta: 1, explicacion: "Hacia atrás, saltando una letra: T (s) R." },
  { id: "l4", tipo: "letras", enunciado: "AZ · BY · CX · ?", opciones: ["DV", "DW", "EW", "CW"], correcta: 1, explicacion: "La primera letra avanza desde la A y la segunda retrocede desde la Z: D y W." },
  { id: "l5", tipo: "letras", enunciado: "B · D · F · H · ?", opciones: ["I", "J", "K", "G"], correcta: 1, explicacion: "Se salta una letra cada vez: H (i) J." },
  // Aptitud verbal
  { id: "v1", tipo: "verbal", enunciado: "Médico es a hospital como profesor es a…", opciones: ["alumno", "colegio", "pizarra", "lección"], correcta: 1, explicacion: "Relación profesional–lugar de trabajo." },
  { id: "v2", tipo: "verbal", enunciado: "Frío es a calor como lento es a…", opciones: ["quieto", "despacio", "rápido", "tarde"], correcta: 2, explicacion: "Relación de contrarios." },
  { id: "v3", tipo: "verbal", enunciado: "¿Cuál es un sinónimo de «efímero»?", opciones: ["eterno", "pasajero", "débil", "frágil"], correcta: 1, explicacion: "Efímero: que dura poco. Su sinónimo es pasajero; eterno es su contrario." },
  { id: "v4", tipo: "verbal", enunciado: "¿Cuál es un antónimo de «escaso»?", opciones: ["poco", "abundante", "raro", "insuficiente"], correcta: 1, explicacion: "Escaso es lo contrario de abundante; las demás opciones son parecidas a escaso." },
  { id: "v5", tipo: "verbal", enunciado: "¿Qué palabra no pertenece al grupo?", opciones: ["manzana", "pera", "zanahoria", "ciruela"], correcta: 2, explicacion: "La zanahoria es una hortaliza; las demás son frutas." },
  { id: "v6", tipo: "verbal", enunciado: "Libro es a página como árbol es a…", opciones: ["raíz", "bosque", "hoja", "madera"], correcta: 2, explicacion: "Relación todo–parte que se repite muchas veces: las páginas del libro, las hojas del árbol." },
  // Cálculo y razonamiento
  { id: "r1", tipo: "razonamiento", enunciado: "Un coche recorre 150 km en 1 h 30 min. ¿Cuál es su velocidad media?", opciones: ["90 km/h", "100 km/h", "110 km/h", "120 km/h"], correcta: 1, explicacion: "150 km ÷ 1,5 h = 100 km/h." },
  { id: "r2", tipo: "razonamiento", enunciado: "¿Cuánto es el 15 % de 240?", opciones: ["32", "34", "36", "38"], correcta: 2, explicacion: "240 × 0,15 = 36." },
  { id: "r3", tipo: "razonamiento", enunciado: "3 agentes revisan 12 vehículos en una hora. Al mismo ritmo, ¿cuántos revisan 5 agentes en una hora?", opciones: ["15", "18", "20", "24"], correcta: 2, explicacion: "Cada agente revisa 4 vehículos por hora: 5 × 4 = 20." },
  { id: "r4", tipo: "razonamiento", enunciado: "Un artículo cuesta 80 € después de una rebaja del 20 %. ¿Cuánto costaba antes?", opciones: ["96 €", "100 €", "104 €", "120 €"], correcta: 1, explicacion: "80 € es el 80 % del precio original: 80 ÷ 0,8 = 100 €." },
  { id: "r5", tipo: "razonamiento", enunciado: "Ana es mayor que Luis y Luis es mayor que Pedro. ¿Quién es el menor?", opciones: ["Ana", "Luis", "Pedro", "No se puede saber"], correcta: 2, explicacion: "Si Ana > Luis y Luis > Pedro, Pedro es el menor." },
  { id: "r6", tipo: "razonamiento", enunciado: "Todos los agentes de la unidad tienen el carné B. Marta es agente de la unidad. Por tanto…", opciones: ["Marta tiene el carné B", "Marta no tiene el carné B", "Solo algunos agentes tienen el carné B", "No se puede saber"], correcta: 0, explicacion: "Si todos los de la unidad lo tienen y Marta es de la unidad, Marta lo tiene." },
];

export const POR_TIPO = 3;
export const NUM_PREGUNTAS = POR_TIPO * Object.keys(tipos).length;
export const MINUTOS = 5;
export const ESCALA = ESCALAS.psicotecnico;
export const MINIMO = MINIMOS.psicotecnico;

export type RespuestaPsico = { id: string; r: number };

/** Tres preguntas de cada tipo, al azar. Solo se llama al pulsar, nunca al renderizar. */
export function elegirPreguntas(): PreguntaPsico[] {
  const barajar = <T,>(lista: T[]) => {
    const a = [...lista];
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  };
  return (Object.keys(tipos) as TipoPsico[]).flatMap((t) => barajar(banco.filter((q) => q.tipo === t)).slice(0, POR_TIPO));
}

export function corregirPsico(respuestas: unknown) {
  if (!Array.isArray(respuestas) || respuestas.length !== NUM_PREGUNTAS) return null;
  const vistas = new Set<string>();
  const porTipo = Object.fromEntries(Object.keys(tipos).map((t) => [t, 0])) as Record<TipoPsico, number>;
  let aciertos = 0;
  let errores = 0;
  let blancos = 0;
  for (const item of respuestas) {
    const { id, r } = (item ?? {}) as Partial<RespuestaPsico>;
    const q = banco.find((p) => p.id === id);
    if (!q || vistas.has(q.id) || !Number.isInteger(r) || r! < -1 || r! > 3) return null;
    vistas.add(q.id);
    if (r === -1) blancos++;
    else if (r === q.correcta) {
      aciertos++;
      porTipo[q.tipo]++;
    } else errores++;
  }
  const netas = Math.max(0, aciertos - errores / 3);
  /** Sobre 30, como la prueba oficial. */
  const nota = Math.round(((ESCALA * netas) / NUM_PREGUNTAS) * 100) / 100;
  return { aciertos, errores, blancos, netas, nota, porTipo, apto: nota >= MINIMO };
}
