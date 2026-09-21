/**
 * Contenido de las secciones que explican la propuesta.
 *
 * Todo lo que se afirma aquí tiene que existir en la plataforma. Si una función desaparece del
 * producto, desaparece de esta lista el mismo día.
 */
export type Paso = {
  titulo: string;
  detalle: string;
};

export type Caracteristica = {
  icono: string;
  titulo: string;
  detalle: string;
};

export const metodo = {
  titulo: "Cómo se prepara con nosotros",
  entradilla:
    "No hay un secreto. Hay un orden, y saber en qué punto estás para no perder semanas estudiando lo que ya te sabes.",
  pasos: [
    {
      titulo: "Sabes de dónde partes",
      detalle:
        "Empiezas con un test de diagnóstico por bloques. Sirve para ver qué temas llevas y cuáles no, antes de dedicarles tiempo a ciegas.",
    },
    {
      titulo: "Tienes un plan con fechas",
      detalle:
        "Recibes un calendario de preparación y un plan de estudio repartido por semanas, con las pruebas físicas incluidas desde el principio y no al final.",
    },
    {
      titulo: "Practicas todos los días",
      detalle:
        "Cada tema lleva sus tests. Al fallar una pregunta ves por qué fallaste, no solo que estaba mal, y la pregunta vuelve a aparecer más adelante.",
    },
    {
      titulo: "Te examinas como el día real",
      detalle:
        "Simulacros cronometrados con el formato del examen. Terminas con una nota, un desglose por bloques y una idea clara de dónde estás.",
    },
  ] satisfies Paso[],
};

export const incluye = {
  titulo: "Qué incluye tu curso",
  entradilla: "Todo lo que necesitas para preparar la oposición, en un único sitio y desde cualquier dispositivo.",
  caracteristicas: [
    {
      icono: "BookOpen",
      titulo: "Temario estructurado",
      detalle:
        "El temario oficial dividido en módulos y lecciones, con el progreso marcado lección a lección para que sepas siempre por dónde ibas.",
    },
    {
      icono: "ListChecks",
      titulo: "Tests por tema",
      detalle:
        "Baterías de preguntas asociadas a cada bloque del temario, con corrección inmediata y explicación de la respuesta.",
    },
    {
      icono: "Timer",
      titulo: "Simulacros cronometrados",
      detalle:
        "Exámenes completos con tiempo real, cuatro tipos de pregunta y entrega única, igual que el día de la convocatoria.",
    },
    {
      icono: "LineChart",
      titulo: "Tu progreso, medido",
      detalle:
        "Aciertos por bloque, evolución entre simulacros y lecciones completadas. Datos, no sensaciones.",
    },
    {
      icono: "Dumbbell",
      titulo: "Guía de pruebas físicas",
      detalle:
        "Las marcas que se exigen y cómo llegar a ellas, con un plan de entrenamiento que convive con las horas de estudio.",
    },
    {
      icono: "Megaphone",
      titulo: "Avisos de convocatoria",
      detalle:
        "Cuando se publica algo que te afecta, te llega al tablón del curso. No tienes que estar mirando el BOE.",
    },
  ] satisfies Caracteristica[],
};

export const simulacros = {
  titulo: "Entrena el examen. Descubre dónde mejorar.",
  entradilla:
    "Practica con tiempo real, revisa cada respuesta y convierte tus errores en un plan de mejora para el siguiente simulacro.",
  puntos: [
    {
      icono: "Timer",
      titulo: "Con tiempo real",
      detalle: "El cronómetro corre desde que empiezas. Si se acaba, se entrega lo que haya.",
    },
    {
      icono: "ClipboardCheck",
      titulo: "Corregido al momento",
      detalle:
        "Las preguntas objetivas se corrigen solas al entregar. Las de respuesta corta pasan a revisión de un profesor.",
    },
    {
      icono: "Search",
      titulo: "Revisión razonada",
      detalle: "Pregunta a pregunta: qué contestaste, cuál era la correcta y por qué.",
    },
    {
      icono: "Trophy",
      titulo: "Ranking privado",
      detalle:
        "Ves tu posición frente al resto de alumnos del mismo simulacro. Privado, y solo dentro de tu curso.",
    },
  ] satisfies Caracteristica[],
};

export const compaginar = {
  titulo: "¿Puedes con esto si trabajas?",
  entradilla:
    "Es la pregunta que más nos hacen y la que casi nadie responde. La respuesta honesta es que sí, pero depende de cómo repartas la semana.",
  puntos: [
    {
      icono: "Clock",
      titulo: "Entre 12 y 15 horas a la semana",
      detalle:
        "Es el rango con el que trabajan nuestros planes. Menos de diez hace que la preparación se alargue más de lo que suele aguantar la motivación.",
    },
    {
      icono: "Moon",
      titulo: "A la hora que puedas",
      detalle:
        "El temario, los tests y los simulacros están disponibles siempre. No hay clase en directo a la que llegar tarde.",
    },
    {
      icono: "RefreshCw",
      titulo: "Si pierdes una semana, no empiezas de cero",
      detalle:
        "El progreso queda guardado por lección. Vuelves al punto exacto donde lo dejaste y el plan se reajusta.",
    },
    {
      icono: "Dumbbell",
      titulo: "Lo físico no se deja para el final",
      detalle:
        "Tres sesiones semanales desde el primer mes. Quien lo aparca hasta el final suele llegar justo a las marcas.",
    },
  ] satisfies Caracteristica[],
};
