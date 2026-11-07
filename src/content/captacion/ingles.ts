import { ESCALAS, MINIMOS } from "./datos-oficiales";

/**
 * «¿Qué nivel de inglés tienes para el examen?». Preguntas tipo test de los bloques que más caen
 * (tiempos verbales, preposiciones, phrasal verbs, condicionales, cuantificadores, falsos
 * amigos), en tres niveles de dificultad, con la corrección del examen (cada error resta un
 * tercio). La nota se lleva a la escala oficial de la prueba de inglés: sobre 20, mínimo 8.
 *
 * El BOE no fija un nivel del MCER (dice «compatible con los contenidos de la ESO»), así que el
 * resultado habla del nivel para el examen, no de un A2/B1 que no tendría fuente.
 */

export type Dificultad = "basico" | "intermedio" | "avanzado";

export const dificultades: Record<Dificultad, string> = {
  basico: "Básico",
  intermedio: "Intermedio",
  avanzado: "Avanzado",
};

export type PreguntaIngles = { id: string; nivel: Dificultad; enunciado: string; opciones: string[]; correcta: number; explicacion: string };

export const banco: PreguntaIngles[] = [
  { id: "b1", nivel: "basico", enunciado: "She ___ to work by bus every day.", opciones: ["go", "goes", "is going", "gone"], correcta: 1, explicacion: "Rutina en presente simple; con she, el verbo lleva -s: goes." },
  { id: "b2", nivel: "basico", enunciado: "How ___ money do you have?", opciones: ["many", "much", "a few", "lot"], correcta: 1, explicacion: "Money es incontable: how much." },
  { id: "b3", nivel: "basico", enunciado: "The meeting is ___ Monday.", opciones: ["in", "on", "at", "by"], correcta: 1, explicacion: "Con los días de la semana se usa on." },
  { id: "b4", nivel: "basico", enunciado: "I ___ a film last night.", opciones: ["watch", "watched", "have watched", "am watching"], correcta: 1, explicacion: "Last night marca un momento terminado del pasado: pasado simple." },
  { id: "b5", nivel: "basico", enunciado: "This is the ___ car in the street.", opciones: ["more expensive", "most expensive", "expensivest", "most expensiver"], correcta: 1, explicacion: "Superlativo de un adjetivo largo: the most expensive." },
  { id: "i1", nivel: "intermedio", enunciado: "I ___ in Madrid since 2020.", opciones: ["live", "lived", "have lived", "am living"], correcta: 2, explicacion: "Since + un punto en el pasado que llega hasta hoy: present perfect." },
  { id: "i2", nivel: "intermedio", enunciado: "If it rains tomorrow, we ___ at home.", opciones: ["will stay", "would stay", "stayed", "stay"], correcta: 0, explicacion: "Primer condicional: if + presente, will + infinitivo." },
  { id: "i3", nivel: "intermedio", enunciado: "He is looking ___ his keys. He can't find them.", opciones: ["after", "for", "up", "at"], correcta: 1, explicacion: "Look for: buscar. Look after es cuidar y look up, consultar." },
  { id: "i4", nivel: "intermedio", enunciado: "«Actually» significa…", opciones: ["actualmente", "en realidad", "activamente", "exactamente"], correcta: 1, explicacion: "Falso amigo: actually es «en realidad». Actualmente es currently." },
  { id: "i5", nivel: "intermedio", enunciado: "The suspect ___ by the police yesterday.", opciones: ["arrested", "was arrested", "has been arrested", "is arrested"], correcta: 1, explicacion: "Pasiva en pasado simple (yesterday): was arrested." },
  { id: "a1", nivel: "avanzado", enunciado: "If I ___ more time, I would study every day.", opciones: ["have", "had", "will have", "would have"], correcta: 1, explicacion: "Segundo condicional: if + pasado simple, would + infinitivo." },
  { id: "a2", nivel: "avanzado", enunciado: "When we arrived at the station, the train ___ .", opciones: ["has already left", "had already left", "already leaves", "was already leave"], correcta: 1, explicacion: "Algo anterior a otro hecho pasado: past perfect, had left." },
  { id: "a3", nivel: "avanzado", enunciado: "She asked me where ___ .", opciones: ["I lived", "did I live", "do I live", "I am live"], correcta: 0, explicacion: "En el estilo indirecto la pregunta pierde la inversión y el tiempo retrocede: where I lived." },
  { id: "a4", nivel: "avanzado", enunciado: "The firefighters managed to ___ the fire in an hour.", opciones: ["put off", "put out", "put up", "put on"], correcta: 1, explicacion: "Put out: apagar. Put off es aplazar; put up, alojar o montar; put on, ponerse." },
  { id: "a5", nivel: "avanzado", enunciado: "I'm not used to ___ up so early.", opciones: ["get", "got", "getting", "have got"], correcta: 2, explicacion: "Be used to va seguido de -ing: getting." },
];

export const POR_NIVEL = 4;
export const NUM_PREGUNTAS = POR_NIVEL * 3;
export const ESCALA = ESCALAS.ingles;
export const MINIMO = MINIMOS.ingles;

export type RespuestaIngles = { id: string; r: number };

/** Cuatro de cada nivel, al azar, de más fácil a más difícil. Solo se llama al pulsar. */
export function elegirPreguntas(): PreguntaIngles[] {
  const barajar = <T,>(lista: T[]) => {
    const a = [...lista];
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  };
  return (Object.keys(dificultades) as Dificultad[]).flatMap((n) => barajar(banco.filter((q) => q.nivel === n)).slice(0, POR_NIVEL));
}

/** Lectura de la nota sobre 20, de cara al examen. */
export function nivelParaExamen(nota: number) {
  if (nota < MINIMO) return { nombre: "Por debajo del mínimo", texto: `Hoy no llegarías al ${MINIMO} sobre ${ESCALA} que hace falta. Con 20 minutos al día se sube rápido.`, ok: false };
  if (nota < 12) return { nombre: "Justo", texto: "Pasarías, pero sin margen: el inglés va al final del examen, cuando ya estás cansado, y ahí se cae fácil.", ok: true };
  if (nota < 16) return { nombre: "Suficiente", texto: "Pasas con margen. Pulir las estructuras que fallas te da puntos que cuentan para la plaza.", ok: true };
  return { nombre: "Sólido", texto: "Buen nivel para el examen. Mantenlo con práctica corta y constante, y céntrate en el temario.", ok: true };
}

export function corregirIngles(respuestas: unknown) {
  if (!Array.isArray(respuestas) || respuestas.length !== NUM_PREGUNTAS) return null;
  const vistas = new Set<string>();
  const porNivel = { basico: 0, intermedio: 0, avanzado: 0 } as Record<Dificultad, number>;
  let aciertos = 0;
  let errores = 0;
  let blancos = 0;
  for (const item of respuestas) {
    const { id, r } = (item ?? {}) as Partial<RespuestaIngles>;
    const q = banco.find((p) => p.id === id);
    if (!q || vistas.has(q.id) || !Number.isInteger(r) || r! < -1 || r! > 3) return null;
    vistas.add(q.id);
    if (r === -1) blancos++;
    else if (r === q.correcta) {
      aciertos++;
      porNivel[q.nivel]++;
    } else errores++;
  }
  const netas = Math.max(0, aciertos - errores / 3);
  const nota = Math.round(((ESCALA * netas) / NUM_PREGUNTAS) * 100) / 100;
  return { aciertos, errores, blancos, netas, nota, porNivel };
}
