/**
 * «¿Encajas en el perfil de la entrevista?». Doce situaciones, dos por cada competencia que la
 * convocatoria 2026 dice que valora la entrevista personal (base 6.1.3.b de BOE-A-2026-9982).
 * Es una autoevaluación orientativa para reflexionar y preparar la entrevista: no reproduce la
 * prueba real, que hacen psicólogos con el BIODATA y los tests, y no predice el resultado.
 */

export type Competencia = "normas" | "responsabilidad" | "sacrificio" | "autocontrol" | "social" | "adaptacion";

export const competencias: Record<Competencia, { nombre: string; corto: string; consejo: string }> = {
  normas: {
    nombre: "Adecuación a normas y código de conducta",
    corto: "Normas",
    consejo:
      "Piensa en situaciones reales en las que cumpliste una norma que no te gustaba o en las que hiciste lo correcto aunque nadie mirara. En la entrevista valen más los ejemplos concretos que las frases hechas.",
  },
  responsabilidad: {
    nombre: "Responsabilidad y madurez",
    corto: "Responsabilidad",
    consejo:
      "Prepara un par de ejemplos en los que asumiste un error o un compromiso difícil. Reconocer un fallo y contar qué hiciste para arreglarlo dice mucho de tu madurez.",
  },
  sacrificio: {
    nombre: "Espíritu de sacrificio y abnegación",
    corto: "Sacrificio",
    consejo:
      "La propia oposición es tu mejor ejemplo: horas de estudio, entrenamiento, renuncias. Ten claro por qué quieres ser guardia civil y qué estás dispuesto a asumir: turnos, destino lejos, festivos.",
  },
  autocontrol: {
    nombre: "Autocontrol",
    corto: "Autocontrol",
    consejo:
      "Entrena la calma bajo presión: simulacros con tiempo, respiración antes de responder. En la entrevista pueden hacerte preguntas incómodas a propósito; contesta despacio y sin ponerte a la defensiva.",
  },
  social: {
    nombre: "Habilidades sociales y de comunicación",
    corto: "Comunicación",
    consejo:
      "Practica contar tu trayectoria en dos minutos, en voz alta y con alguien delante. Mira a los ojos, escucha la pregunta entera y responde a lo que te preguntan.",
  },
  adaptacion: {
    nombre: "Adaptación",
    corto: "Adaptación",
    consejo:
      "Piensa en cambios que hayas vivido (mudanzas, trabajos, estudios) y cómo te adaptaste. Asume desde ya que tu primer destino puede estar lejos de casa.",
  },
};

export type Situacion = { id: string; competencia: Competencia; texto: string; opciones: { texto: string; puntos: 0 | 1 | 2 }[] };

export const situaciones: Situacion[] = [
  {
    id: "e01",
    competencia: "normas",
    texto: "Ves que un compañero de trabajo se lleva a casa material de la empresa «porque todos lo hacen».",
    opciones: [
      { texto: "Si todos lo hacen, no será para tanto.", puntos: 0 },
      { texto: "Se lo dices a él y, si sigue, lo comunicas a quien corresponda.", puntos: 2 },
      { texto: "Haces como que no lo has visto: no es asunto tuyo.", puntos: 1 },
    ],
  },
  {
    id: "e02",
    competencia: "responsabilidad",
    texto: "Te has comprometido a entregar algo y ves que no vas a llegar a tiempo.",
    opciones: [
      { texto: "Lo intentas hasta el último momento sin decir nada.", puntos: 1 },
      { texto: "Esperas a que te pregunten.", puntos: 0 },
      { texto: "Avisas cuanto antes y propones una solución.", puntos: 2 },
    ],
  },
  {
    id: "e03",
    competencia: "sacrificio",
    texto: "Tenías la tarde para estudiar y te proponen un plan que te apetece mucho.",
    opciones: [
      { texto: "Cumples lo que tenías previsto y quedas otro día.", puntos: 2 },
      { texto: "Vas, y ya estudiarás cuando puedas.", puntos: 0 },
      { texto: "Vas, pero mañana recuperas las horas.", puntos: 1 },
    ],
  },
  {
    id: "e04",
    competencia: "autocontrol",
    texto: "Alguien te falta al respeto de malas maneras en plena calle.",
    opciones: [
      { texto: "Te vas sin decir nada.", puntos: 1 },
      { texto: "Le contestas en el mismo tono: que no se crea que puede hablarte así.", puntos: 0 },
      { texto: "Mantienes la calma y respondes con firmeza y educación.", puntos: 2 },
    ],
  },
  {
    id: "e05",
    competencia: "social",
    texto: "Llegas a un grupo en el que no conoces a nadie.",
    opciones: [
      { texto: "Te presentas y hablas con varias personas.", puntos: 2 },
      { texto: "Te cuesta: prefieres ir a tu aire.", puntos: 0 },
      { texto: "Esperas a que te hablen, pero acabas integrándote.", puntos: 1 },
    ],
  },
  {
    id: "e06",
    competencia: "adaptacion",
    texto: "Te destinan lejos de casa, a un sitio que no conoces.",
    opciones: [
      { texto: "Lo aceptas, aunque te cuesta.", puntos: 1 },
      { texto: "Lo vives como una oportunidad y te informas de la zona.", puntos: 2 },
      { texto: "Lo ves como un obstáculo serio para tu vida.", puntos: 0 },
    ],
  },
  {
    id: "e07",
    competencia: "normas",
    texto: "Una norma de tu trabajo te parece absurda.",
    opciones: [
      { texto: "La cumples solo cuando te están viendo.", puntos: 0 },
      { texto: "La cumples, aunque te quejas con los compañeros.", puntos: 1 },
      { texto: "La cumples y, si puedes, propones cambiarla por el cauce adecuado.", puntos: 2 },
    ],
  },
  {
    id: "e08",
    competencia: "responsabilidad",
    texto: "Cometes un error en el trabajo que nadie ha notado.",
    opciones: [
      { texto: "Lo corriges y lo comunicas.", puntos: 2 },
      { texto: "Lo corriges en silencio.", puntos: 1 },
      { texto: "Lo dejas: si nadie lo ha visto…", puntos: 0 },
    ],
  },
  {
    id: "e09",
    competencia: "sacrificio",
    texto: "Un servicio se alarga y te pierdes una celebración familiar importante.",
    opciones: [
      { texto: "Te parece inaceptable.", puntos: 0 },
      { texto: "Te molesta, pero lo asumes como parte del trabajo.", puntos: 2 },
      { texto: "Lo asumes, pero te planteas si compensa.", puntos: 1 },
    ],
  },
  {
    id: "e10",
    competencia: "autocontrol",
    texto: "Bajo presión (un examen, una urgencia)…",
    opciones: [
      { texto: "Te organizas y vas paso a paso.", puntos: 2 },
      { texto: "Te alteras y te cuesta pensar.", puntos: 0 },
      { texto: "Te bloqueas a ratos, pero sueles recuperarte.", puntos: 1 },
    ],
  },
  {
    id: "e11",
    competencia: "social",
    texto: "Tienes que explicarle algo a alguien que no lo entiende.",
    opciones: [
      { texto: "Lo repites igual, pero más despacio.", puntos: 1 },
      { texto: "Buscas otra forma de explicarlo, con paciencia.", puntos: 2 },
      { texto: "Te desesperas y lo dejas.", puntos: 0 },
    ],
  },
  {
    id: "e12",
    competencia: "adaptacion",
    texto: "Te cambian el horario o las tareas sin previo aviso.",
    opciones: [
      { texto: "Lo discutes hasta que lo cambien.", puntos: 0 },
      { texto: "Te adaptas, aunque de mal humor.", puntos: 1 },
      { texto: "Te adaptas y preguntas lo que necesites.", puntos: 2 },
    ],
  },
];

export type Nivel = "alto" | "medio" | "bajo";
export const nivelesEntrevista: Record<Nivel, { nombre: string; texto: string }> = {
  alto: {
    nombre: "Tu perfil encaja con lo que se valora",
    texto: "Tus respuestas van en la línea de las competencias que mide la entrevista. Ahora toca demostrarlo con ejemplos reales y coherencia.",
  },
  medio: {
    nombre: "Buen punto de partida",
    texto: "Tienes una base sólida, con alguna competencia que conviene trabajar antes de la entrevista.",
  },
  bajo: {
    nombre: "Hay que trabajarlo",
    texto: "Varias de tus respuestas se alejan de lo que se valora. La buena noticia: son actitudes que se trabajan, y tienes tiempo.",
  },
};

/** Respuestas: el índice de la opción elegida en cada situación, en orden. */
export function evaluarEntrevista(respuestas: unknown) {
  if (!Array.isArray(respuestas) || respuestas.length !== situaciones.length) return null;
  const suma: Record<Competencia, number> = { normas: 0, responsabilidad: 0, sacrificio: 0, autocontrol: 0, social: 0, adaptacion: 0 };
  for (let i = 0; i < situaciones.length; i++) {
    const r = respuestas[i];
    const s = situaciones[i];
    if (!Number.isInteger(r) || r < 0 || r >= s.opciones.length) return null;
    suma[s.competencia] += s.opciones[r].puntos;
  }
  // Dos situaciones por competencia, hasta 2 puntos cada una: 0–4 → 0–100.
  const claves = Object.keys(competencias) as Competencia[];
  const porCompetencia = claves.map((c) => ({ clave: c, valor: suma[c] * 25 }));
  const global = Math.round(porCompetencia.reduce((s, c) => s + c.valor, 0) / claves.length);
  const nivel: Nivel = global >= 80 ? "alto" : global >= 55 ? "medio" : "bajo";
  const minimo = Math.min(...porCompetencia.map((c) => c.valor));
  const aMejorar = porCompetencia.filter((c) => c.valor === minimo && c.valor < 100).map((c) => c.clave);
  return { porCompetencia, global, nivel, aMejorar };
}
