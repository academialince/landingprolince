import { MAX_ERRORES_LENGUA } from "./datos-oficiales";

/**
 * Test de ortografía con el formato oficial (base 7.4 de la convocatoria): frases con cuatro
 * palabras subrayadas, y hay que señalar las que tienen falta. Cuenta como error tanto no marcar
 * una palabra mal escrita como marcar una bien escrita. Seis errores o más: no apto.
 *
 * Cada frase es una lista de trozos: texto normal o una palabra subrayada con cómo aparece
 * escrita y cómo se escribe bien. Si coinciden, la palabra está bien.
 */

export type Subrayada = { escrita: string; correcta: string; nota?: string };
export type Trozo = string | Subrayada;
export type Frase = Trozo[];

const s = (escrita: string, correcta = escrita, nota?: string): Subrayada => ({ escrita, correcta, nota });

export const frases: Frase[] = [
  ["El agente ", s("exibió", "exhibió", "Exhibir se escribe con h intercalada."), " la placa y ", s("advirtió"), " al conductor de que ", s("había"), " ", s("revasado", "rebasado", "Rebasar se escribe con b."), " el límite de velocidad."],
  ["Tras la ", s("investigacion", "investigación", "Palabra aguda terminada en n: lleva tilde."), ", el juez ", s("ordenó"), " la ", s("detención"), " del ", s("sospechozo", "sospechoso", "El sufijo -oso se escribe con s."), "."],
  ["El ", s("vehículo"), " ", s("circulava", "circulaba", "El pretérito imperfecto de los verbos en -ar se escribe con b."), " sin ", s("seguro"), " por una vía ", s("prohibida"), "."],
  ["Los testigos ", s("hecharon", "echaron", "Echar (lanzar, tirar) no lleva h."), " a correr cuando ", s("oyeron"), " la ", s("explosión"), " junto al ", s("albergue"), "."],
  ["La patrulla ", s("recogió"), " los ", s("objetos"), " ", s("extraviados"), " en la ", s("estación"), "."],
  ["El ", s("sargento"), " ", s("exijió", "exigió", "Exigir se escribe con g en todas sus formas con ge, gi."), " ", s("silencio"), " durante la ", s("ceremonia"), "."],
  ["Se ", s("prohibe", "prohíbe", "Lleva tilde para romper el diptongo: pro-hí-be."), " ", s("acampar"), " en la ", s("orilla"), " del ", s("embalse"), "."],
  ["El ", s("exámen", "examen", "Palabra llana terminada en n: no lleva tilde."), " ", s("constará"), " de cien preguntas y las respuestas en ", s("blanco"), " no ", s("restan"), "."],
  ["El ", s("guardia"), " ", s("hayó", "halló", "Hallar (encontrar) se escribe con ll."), " el arma ", s("envuelta"), " en una ", s("vieja"), " bolsa."],
  ["La ", s("suspensión"), " del juicio ", s("obedeció"), " a la ", s("ausensia", "ausencia", "Ausencia se escribe con c."), " del ", s("abogado"), "."],
];

export const NUM_FRASES = 5;
export const NUM_PALABRAS = NUM_FRASES * 4;
export const MAX_ERRORES = MAX_ERRORES_LENGUA;

export const subrayadas = (f: Frase) => f.filter((t): t is Subrayada => typeof t !== "string");
export const tieneFalta = (p: Subrayada) => p.escrita !== p.correcta;

/** Una respuesta: el índice de la frase y, para cada palabra subrayada, si se marcó como falta. */
export type RespuestaOrtografia = { f: number; m: boolean[] };

/** Elige las frases al azar. Solo se llama al pulsar, nunca al renderizar. */
export function elegirFrases(): number[] {
  const indices = frases.map((_, i) => i);
  for (let i = indices.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [indices[i], indices[j]] = [indices[j], indices[i]];
  }
  return indices.slice(0, NUM_FRASES);
}

export function corregirOrtografia(respuestas: unknown): { errores: number; aciertos: number; apto: boolean } | null {
  if (!Array.isArray(respuestas) || respuestas.length !== NUM_FRASES) return null;
  const vistas = new Set<number>();
  let errores = 0;
  for (const item of respuestas) {
    const { f, m } = (item ?? {}) as Partial<RespuestaOrtografia>;
    const frase = Number.isInteger(f) ? frases[f!] : undefined;
    if (!frase || vistas.has(f!) || !Array.isArray(m)) return null;
    const palabras = subrayadas(frase);
    if (m.length !== palabras.length || m.some((x) => typeof x !== "boolean")) return null;
    vistas.add(f!);
    palabras.forEach((p, i) => {
      if (m[i] !== tieneFalta(p)) errores++;
    });
  }
  return { errores, aciertos: NUM_PALABRAS - errores, apto: errores <= MAX_ERRORES };
}
