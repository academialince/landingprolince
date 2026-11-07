/**
 * Test «¿Qué tipo de opositor eres?». Ocho preguntas, cuatro perfiles.
 *
 * Cada opción suma un punto a un perfil. El orden de las opciones cambia de una pregunta a otra
 * a propósito, para que no se vea que la «A» es siempre el mismo perfil.
 *
 * Este módulo es dato puro: lo usan la landing (cliente) y la acción que guarda el lead
 * (servidor), que vuelve a calcular el perfil en lugar de fiarse del que mande el navegador.
 */

export type ClavePerfil = "metodico" | "sprinter" | "explorador" | "perfeccionista";

export const ordenPerfiles: ClavePerfil[] = ["metodico", "sprinter", "explorador", "perfeccionista"];

export type Pregunta = {
  pregunta: string;
  opciones: { texto: string; perfil: ClavePerfil }[];
};

export const preguntas: Pregunta[] = [
  {
    pregunta: "Es domingo por la noche y mañana empieza la semana. ¿Qué haces?",
    opciones: [
      { texto: "Nada especial: ya tengo el plan de la semana hecho.", perfil: "metodico" },
      { texto: "Repaso el tema de la semana pasada, que aún no lo domino del todo.", perfil: "perfeccionista" },
      { texto: "Nada. El lunes lo doy todo y ya veré.", perfil: "sprinter" },
      { texto: "Miro un canal o unos apuntes nuevos que he encontrado, a ver si me sirven más.", perfil: "explorador" },
    ],
  },
  {
    pregunta: "¿Cómo es una semana normal de estudio para ti?",
    opciones: [
      { texto: "Depende: hay semanas que estudio muchísimo y otras casi nada.", perfil: "sprinter" },
      { texto: "Cada día toco algo distinto, según me apetezca.", perfil: "explorador" },
      { texto: "Parecida a la anterior: mismas horas y mismos días.", perfil: "metodico" },
      { texto: "Estudio bastantes horas, pero avanzo poco porque me paro mucho en cada tema.", perfil: "perfeccionista" },
    ],
  },
  {
    pregunta: "Haces un test y fallas una pregunta. ¿Qué pasa después?",
    opciones: [
      { texto: "Me agobio y vuelvo a leerme el tema entero.", perfil: "perfeccionista" },
      { texto: "La apunto y la repaso en mi siguiente sesión de repaso.", perfil: "metodico" },
      { texto: "La busco en tres sitios distintos y acabo leyendo otra cosa.", perfil: "explorador" },
      { texto: "Sigo con otro test. Ya saldrá.", perfil: "sprinter" },
    ],
  },
  {
    pregunta: "¿Cuántos materiales usas para estudiar (temarios, apps, canales, PDF…)?",
    opciones: [
      { texto: "Muchos. Siempre encuentro uno nuevo que parece mejor.", perfil: "explorador" },
      { texto: "Los que tenga a mano cuando me pongo.", perfil: "sprinter" },
      { texto: "Pocos, pero todos subrayados, resumidos y pasados a limpio.", perfil: "perfeccionista" },
      { texto: "Uno principal y algo de apoyo.", perfil: "metodico" },
    ],
  },
  {
    pregunta: "¿Qué es lo que más te cuesta?",
    opciones: [
      { texto: "Mantener el ritmo más de dos o tres semanas seguidas.", perfil: "sprinter" },
      { texto: "Saber si lo que hago funciona de verdad.", perfil: "metodico" },
      { texto: "Pasar al siguiente tema sin sentir que lo sé al cien por cien.", perfil: "perfeccionista" },
      { texto: "Terminar lo que empiezo.", perfil: "explorador" },
    ],
  },
  {
    pregunta: "Quedan dos meses para el examen. ¿Qué haces?",
    opciones: [
      { texto: "Cambio de método: ahora sí he encontrado el bueno.", perfil: "explorador" },
      { texto: "Lo que ya tenía previsto: más repaso y más simulacros.", perfil: "metodico" },
      { texto: "Me encierro y estudio diez horas al día.", perfil: "sprinter" },
      { texto: "Me entra el pánico: hay temas que todavía no tengo perfectos.", perfil: "perfeccionista" },
    ],
  },
  {
    pregunta: "¿Haces simulacros de examen completos y con tiempo?",
    opciones: [
      { texto: "No. Prefiero esperar a saberme todo el temario.", perfil: "perfeccionista" },
      { texto: "He empezado varios, pero termino pocos.", perfil: "explorador" },
      { texto: "Sí, cada cierto tiempo, y apunto la nota.", perfil: "metodico" },
      { texto: "Alguno, de golpe, cuando me da el subidón.", perfil: "sprinter" },
    ],
  },
  {
    pregunta: "¿Qué frase te define mejor?",
    opciones: [
      { texto: "«Cuando me pongo, me pongo».", perfil: "sprinter" },
      { texto: "«Si no lo sé perfecto, no lo sé».", perfil: "perfeccionista" },
      { texto: "«Poco a poco, pero todos los días».", perfil: "metodico" },
      { texto: "«Ya me centraré cuando encuentre lo que me funciona».", perfil: "explorador" },
    ],
  },
];

export type Perfil = {
  clave: ClavePerfil;
  nombre: string;
  /** Código de visor para la estética táctica de la web. */
  codigo: string;
  lema: string;
  resumen: string;
  fortalezas: string[];
  riesgo: string;
  plan: string[];
  /** Cómo encaja la plataforma con este perfil. Sin cifras que no se puedan sostener. */
  enProlince: string;
};

export const perfiles: Record<ClavePerfil, Perfil> = {
  metodico: {
    clave: "metodico",
    nombre: "El Metódico",
    codigo: "PERFIL-M",
    lema: "Poco a poco, pero todos los días.",
    resumen:
      "Tienes lo más difícil de conseguir en una oposición: constancia. Estudias con plan y con horario, y no dependes de la motivación del día.",
    fortalezas: [
      "Sumas horas aunque no te apetezca.",
      "Sabes qué te toca cada semana.",
      "Es el perfil que mejor llega al examen sin quemarse.",
    ],
    riesgo:
      "Confundir rutina con avance. Puedes pasar meses cumpliendo horario sin medir si de verdad retienes lo que estudias, o seguir con el mismo método aunque haya dejado de funcionar.",
    plan: [
      "Mide en lugar de suponer: haz un test de cada tema al terminarlo y otro dos semanas después. Si la nota baja, ese tema vuelve al plan.",
      "Haz un simulacro completo con tiempo cada dos o tres semanas y apunta la nota. Es tu termómetro real.",
      "Reserva un bloque fijo de repaso a la semana para los temas que más fallas, no solo para el que toca.",
    ],
    enProlince:
      "En ProLince tienes tests por tema y simulacros cronometrados con la corrección del examen real, para que tu constancia se convierta en una nota que puedas medir.",
  },
  sprinter: {
    clave: "sprinter",
    nombre: "El Sprinter",
    codigo: "PERFIL-S",
    lema: "Cuando me pongo, me pongo.",
    resumen:
      "Cuando estás enchufado tienes una capacidad de trabajo enorme. El problema no es cuánto estudias, sino cuánto te dura.",
    fortalezas: [
      "En una buena semana avanzas lo que otros en un mes.",
      "No te cuesta arrancar cuando ves un objetivo cerca.",
      "Sabes apretar al final, que es cuando más se nota.",
    ],
    riesgo:
      "Los parones. Después de cada atracón viene una bajada, y lo que se estudia deprisa se olvida deprisa. Con un temario tan largo, lo que no se repasa se pierde.",
    plan: [
      "Ponte un mínimo diario innegociable, aunque sea pequeño: por ejemplo, un test de 20 preguntas. Los días buenos haces más; los malos, al menos eso.",
      "Cambia parte de los atracones de temario nuevo por repaso: lo que estudiaste hace dos semanas es lo primero que se te va.",
      "Ponte metas semanales, no solo la fecha del examen. Una meta lejana no te sostiene en los meses flojos.",
    ],
    enProlince:
      "En ProLince puedes hacer un test corto en cualquier momento desde el móvil: es la forma más fácil de no cortar la racha los días que no te apetece.",
  },
  explorador: {
    clave: "explorador",
    nombre: "El Explorador",
    codigo: "PERFIL-E",
    lema: "Ya me centraré cuando encuentre lo que me funciona.",
    resumen:
      "Eres curioso y tienes iniciativa: buscas, comparas y pruebas. Sabes un poco de muchas cosas, pero te cuesta cerrar lo que empiezas.",
    fortalezas: [
      "No te conformas con la primera explicación.",
      "Tienes iniciativa para buscar recursos y soluciones.",
      "Te adaptas rápido a los cambios.",
    ],
    riesgo:
      "Cambiar de material o de método cada pocas semanas. Cada cambio te devuelve al principio, y al final tienes muchos temas empezados y pocos terminados.",
    plan: [
      "Elige un solo temario y una sola fuente de tests, y comprométete con ellos hasta el examen.",
      "Trabaja por temas cerrados: no empieces uno nuevo hasta haber estudiado el anterior y hecho su test.",
      "Lleva a la vista la lista de temas cerrados. Ver el avance es lo que te quita las ganas de cambiar.",
    ],
    enProlince:
      "En ProLince tienes temario, tests y simulacros en un mismo sitio, con tu progreso por tema a la vista. Una sola fuente, sin tener que saltar entre materiales.",
  },
  perfeccionista: {
    clave: "perfeccionista",
    nombre: "El Perfeccionista",
    codigo: "PERFIL-P",
    lema: "Si no lo sé perfecto, no lo sé.",
    resumen:
      "Estudias a fondo y con rigor: cuando dices que sabes un tema, lo sabes. Pero exigirte el cien por cien en cada uno te frena.",
    fortalezas: [
      "Entiendes lo que estudias, no solo lo memorizas.",
      "Eres riguroso con los datos: plazos, artículos y cifras.",
      "Te tomas la oposición muy en serio.",
    ],
    riesgo:
      "No llegar a ver todo el temario, o llegar sin haber practicado tests. En el examen cuenta más tener todos los temas a buen nivel que unos pocos perfectos, y los tests se entrenan haciendo tests.",
    plan: [
      "Da cada tema por cerrado cuando saques buena nota en su test, no cuando sientas que lo sabes todo. Ya lo pulirás en las siguientes vueltas.",
      "Empieza a hacer tests desde el primer tema. Fallar forma parte del estudio.",
      "Haz un simulacro aunque creas que no estás preparado: te dirá dónde estás de verdad.",
    ],
    enProlince:
      "En ProLince cada pregunta de test viene con su explicación: fallar te enseña algo y no te obliga a releer el tema entero.",
  },
};

export type Reparto = Record<ClavePerfil, number>;

/**
 * Rasgos del gráfico de araña. Cada perfil aporta un peso (0–1) a cada rasgo, y el valor de un
 * rasgo es la media de esos pesos ponderada por el reparto de respuestas. Así la forma refleja
 * la mezcla real de cada persona, no solo su perfil principal.
 *
 * Los pesos son coherentes con los textos de cada perfil: el rasgo más bajo de un perfil puro
 * es su punto débil (el Metódico, flexibilidad; el Perfeccionista, práctica de test…).
 */
export const rasgos: { nombre: string; pesos: Record<ClavePerfil, number> }[] = [
  { nombre: "Constancia", pesos: { metodico: 1, sprinter: 0.2, explorador: 0.3, perfeccionista: 0.7 } },
  { nombre: "Organización", pesos: { metodico: 0.95, sprinter: 0.25, explorador: 0.15, perfeccionista: 0.6 } },
  { nombre: "Intensidad", pesos: { metodico: 0.55, sprinter: 1, explorador: 0.4, perfeccionista: 0.6 } },
  { nombre: "Rigor", pesos: { metodico: 0.6, sprinter: 0.3, explorador: 0.3, perfeccionista: 1 } },
  { nombre: "Práctica de test", pesos: { metodico: 0.75, sprinter: 0.6, explorador: 0.3, perfeccionista: 0.1 } },
  { nombre: "Flexibilidad", pesos: { metodico: 0.3, sprinter: 0.65, explorador: 1, perfeccionista: 0.2 } },
];

/** Valor de cada rasgo de 0 a 100 (con un suelo de 15, para que ningún rasgo quede en cero). */
export function calcularRasgos(reparto: Reparto) {
  return rasgos.map((r) => {
    const v = ordenPerfiles.reduce((s, p) => s + (reparto[p] / 100) * r.pesos[p], 0);
    return { nombre: r.nombre, valor: Math.round(15 + 85 * v) };
  });
}

/** Índices de las opciones elegidas (0–3), una por pregunta. Devuelve null si no son válidos. */
export function calcularPerfil(respuestas: unknown): { perfil: ClavePerfil; reparto: Reparto } | null {
  if (!Array.isArray(respuestas) || respuestas.length !== preguntas.length) return null;

  const puntos: Reparto = { metodico: 0, sprinter: 0, explorador: 0, perfeccionista: 0 };
  const elegidos: ClavePerfil[] = [];
  for (let i = 0; i < preguntas.length; i++) {
    const r = respuestas[i];
    const opcion = Number.isInteger(r) ? preguntas[i].opciones[r as number] : undefined;
    if (!opcion) return null;
    puntos[opcion.perfil]++;
    elegidos.push(opcion.perfil);
  }

  const maximo = Math.max(...Object.values(puntos));
  const empatados = ordenPerfiles.filter((p) => puntos[p] === maximo);
  // Desempate: manda la respuesta más reciente entre los empatados. La última pregunta es la de
  // «qué frase te define», la más directa de todas.
  const perfil = [...elegidos].reverse().find((p) => empatados.includes(p)) ?? empatados[0];

  const reparto = Object.fromEntries(
    ordenPerfiles.map((p) => [p, Math.round((puntos[p] / preguntas.length) * 100)]),
  ) as Reparto;

  return { perfil, reparto };
}
