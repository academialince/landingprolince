/**
 * Los dos cursos que se publican de momento. Cada uno tiene su propia landing de una sola
 * página en /cursos/[slug], con submenú de anclas.
 *
 * AVISO: edades, plazas y fechas describen procesos selectivos reales y cambian cada año.
 * Todo dato numérico debe cotejarse con la convocatoria vigente en el BOE antes de publicar.
 * Mientras `convocatoria` sea `null`, la web omite ese bloque en lugar de enseñar cifras sin
 * respaldo.
 */
export type Convocatoria = {
  anio: number;
  plazas: number;
  publicacionBoe: string;
  urlBoe: string;
};

export type Seccion = { id: string; etiqueta: string };

export type Curso = {
  slug: string;
  nombre: string;
  nombreCorto: string;
  eyebrow: string;
  titular: string;
  entradilla: string;
  imagen: string;
  imagenAlt: string;
  destacados: { valor: string; etiqueta: string }[];
  secciones: Seccion[];
  paraQuien: { titulo: string; texto: string; puntos: string[] };
  requisitos: { titulo: string; nota: string; lista: string[] };
  pruebas: { nombre: string; detalle: string }[];
  temario: { bloque: string; detalle: string }[];
  incluye: { icono: string; titulo: string; detalle: string }[];
  faq: { pregunta: string; respuesta: string }[];
  convocatoria: Convocatoria | null;
};

const seccionesComunes: Seccion[] = [
  { id: "para-quien", etiqueta: "Para quién es" },
  { id: "requisitos", etiqueta: "Requisitos" },
  { id: "pruebas", etiqueta: "Pruebas" },
  { id: "temario", etiqueta: "Temario" },
  { id: "incluye", etiqueta: "Qué incluye" },
  { id: "preguntas", etiqueta: "Preguntas" },
];

export const cursos: Curso[] = [
  {
    slug: "acceso-guardia-civil",
    nombre: "Acceso a la Guardia Civil",
    nombreCorto: "Guardia Civil",
    eyebrow: "Escala de Cabos y Guardias",
    titular: "Acceso a la Guardia Civil",
    entradilla:
      "La vía de entrada al Cuerpo. Una oposición larga, con una parte teórica exigente y unas pruebas físicas que hay que empezar a trabajar desde el primer mes, no desde el último.",
    imagen: "/cursos/acceso-guardia-civil.jpg",
    imagenAlt: "Dos opositores estudiando el temario en un aula con un acuartelamiento al fondo",
    destacados: [
      { valor: "3", etiqueta: "bloques de temario" },
      { valor: "5", etiqueta: "fases eliminatorias" },
      { valor: "12-15 h", etiqueta: "de estudio a la semana" },
    ],
    secciones: seccionesComunes,
    convocatoria: null,
    paraQuien: {
      titulo: "Para quién es este curso",
      texto:
        "Para quien tiene el Bachiller o un equivalente y quiere entrar en la Guardia Civil por la vía ordinaria. La mayoría de nuestros alumnos lo compagina con un trabajo.",
      puntos: [
        "Empiezas de cero y no sabes por dónde entrar al temario",
        "Ya te has presentado y quieres corregir lo que falló",
        "Llevas el temario pero no has hecho nunca un examen con cronómetro",
        "Necesitas que alguien te ordene la semana, no más PDF",
      ],
    },
    requisitos: {
      titulo: "Qué te piden para presentarte",
      nota: "Son los requisitos generales. La convocatoria vigente es la que manda: compruébalos siempre en el texto oficial antes de matricularte.",
      lista: [
        "Tener la nacionalidad española",
        "Tener cumplidos 18 años y no superar la edad máxima que fije la convocatoria",
        "Estar en posesión del título de Bachiller o equivalente",
        "Carecer de antecedentes penales",
        "No estar privado de los derechos civiles",
        "Estar en posesión del permiso de conducción de la clase B",
        "Cumplir el cuadro médico de exclusiones vigente",
        "Comprometerse a portar armas y, en su caso, a llegar a usarlas",
      ],
    },
    pruebas: [
      {
        nombre: "Prueba de conocimientos",
        detalle:
          "Examen tipo test sobre el temario oficial, más una parte de ortografía. Es la que más gente deja fuera y la que más se entrena con tests.",
      },
      {
        nombre: "Prueba de lengua inglesa",
        detalle:
          "Test de nivel de inglés. No hace falta un nivel alto, pero sí constante: se prepara en paralelo, con poco tiempo diario.",
      },
      {
        nombre: "Pruebas psicotécnicas y de personalidad",
        detalle:
          "Aptitud verbal, numérica, espacial y de razonamiento, junto con el cuestionario de personalidad que después se contrasta en la entrevista.",
      },
      {
        nombre: "Pruebas físicas",
        detalle:
          "Las marcas se exigen desde el primer intento y varían según la categoría. Se preparan desde el primer mes, con sesiones semanales que conviven con el estudio.",
      },
      {
        nombre: "Entrevista personal y reconocimiento médico",
        detalle:
          "Valoración del perfil, contraste con el psicotécnico y revisión del cuadro médico de exclusiones vigente.",
      },
    ],
    temario: [
      {
        bloque: "Ciencias Jurídicas",
        detalle:
          "Constitución, derechos fundamentales, organización del Estado, Unión Europea, derecho penal y procesal, seguridad ciudadana y protección de datos.",
      },
      {
        bloque: "Materias Socio-culturales",
        detalle:
          "Derechos humanos, igualdad efectiva de mujeres y hombres, prevención de la violencia de género, historia reciente y estructura de la Guardia Civil.",
      },
      {
        bloque: "Materias Técnico-científicas",
        detalle:
          "Topografía, informática básica, tecnologías de la información y nociones aplicadas al servicio.",
      },
    ],
    incluye: [
      {
        icono: "BookOpen",
        titulo: "Temario completo y actualizado",
        detalle:
          "Los tres bloques divididos en módulos y lecciones, con el progreso marcado lección a lección.",
      },
      {
        icono: "ListChecks",
        titulo: "Tests por tema",
        detalle:
          "Baterías de preguntas por cada bloque, con corrección inmediata y la explicación de la respuesta correcta.",
      },
      {
        icono: "Timer",
        titulo: "Simulacros cronometrados",
        detalle:
          "Exámenes completos con el formato y el tiempo real, con entrega única igual que el día de la prueba.",
      },
      {
        icono: "Trophy",
        titulo: "Ranking privado",
        detalle: "Tu posición frente al resto de alumnos del mismo simulacro, solo dentro del curso.",
      },
      {
        icono: "Dumbbell",
        titulo: "Plan de pruebas físicas",
        detalle:
          "Las marcas que se exigen y un plan de entrenamiento repartido en sesiones semanales desde el primer mes.",
      },
      {
        icono: "Megaphone",
        titulo: "Avisos de convocatoria",
        detalle:
          "Cuando se publica algo que te afecta, te llega al tablón del curso. No tienes que vigilar el BOE.",
      },
    ],
    faq: [
      {
        pregunta: "¿Cuánto se tarda en preparar esta oposición?",
        respuesta:
          "Con 12 a 15 horas semanales, lo habitual es una convocatoria completa. Quien parte de una base previa o puede dedicarle más horas acorta ese plazo, pero prometerte un tiempo cerrado sería engañarte: depende de tu punto de partida y de la regularidad.",
      },
      {
        pregunta: "¿Puedo prepararla si trabajo a turnos?",
        respuesta:
          "Sí, y es el caso de buena parte de nuestros alumnos. No hay clases en directo a hora fija: el temario, los tests y los simulacros están disponibles siempre y el progreso se guarda lección a lección.",
      },
      {
        pregunta: "¿Cómo se preparan las pruebas físicas?",
        respuesta:
          "Con una guía de las marcas exigidas y un plan de entrenamiento en sesiones semanales desde el primer mes. Quien deja lo físico para el final suele llegar justo.",
      },
      {
        pregunta: "¿Qué pasa si no apruebo a la primera?",
        respuesta:
          "Es lo más frecuente y no significa empezar de cero. Tu progreso, tus resultados y el histórico de simulacros siguen ahí, así que la siguiente preparación arranca sabiendo qué bloques te costaron.",
      },
    ],
  },
  {
    slug: "colegio-guardias-jovenes",
    nombre: "Acceso al Colegio de Guardias Jóvenes",
    nombreCorto: "Guardias Jóvenes",
    eyebrow: "Colegio Duque de Ahumada",
    titular: "Acceso al Colegio de Guardias Jóvenes",
    entradilla:
      "La entrada más temprana a la Guardia Civil: se cursa Bachillerato en el Colegio Duque de Ahumada, en Valdemoro, y desde ahí se accede después a la Escala de Cabos y Guardias.",
    imagen: "/cursos/colegio-guardias-jovenes.jpg",
    imagenAlt:
      "Grupo de estudiantes jóvenes preparando la oposición con una profesora, junto a una pista de atletismo",
    destacados: [
      { valor: "ESO", etiqueta: "titulación de partida" },
      { valor: "Valdemoro", etiqueta: "sede del Colegio" },
      { valor: "4", etiqueta: "fases eliminatorias" },
    ],
    secciones: seccionesComunes,
    convocatoria: null,
    paraQuien: {
      titulo: "Para quién es este curso",
      texto:
        "Para chicos y chicas que están terminando la ESO y tienen claro que quieren dedicarse a esto. Y para sus familias, que suelen ser quienes buscan la información.",
      puntos: [
        "Estás cursando o acabas de terminar la ESO",
        "Quieres entrar en la Guardia Civil por la vía más temprana",
        "Necesitas compaginar la preparación con el curso escolar",
        "Vas a presentarte por primera vez y no sabes qué se exige",
      ],
    },
    requisitos: {
      titulo: "Qué te piden para presentarte",
      nota: "Las edades y la titulación exacta las fija cada convocatoria y son el punto donde más gente se equivoca. Compruébalas siempre en el texto oficial publicado en el BOE.",
      lista: [
        "Tener la nacionalidad española",
        "Cumplir la edad que fije la convocatoria dentro del año (es un rango estrecho)",
        "Estar en posesión del título de Graduado en Educación Secundaria Obligatoria",
        "Carecer de antecedentes penales",
        "Cumplir el cuadro médico de exclusiones vigente",
        "Presentar la autorización de los padres o tutores si aún eres menor de edad",
      ],
    },
    pruebas: [
      {
        nombre: "Prueba de conocimientos",
        detalle:
          "Contenidos del nivel de ESO: lengua castellana, matemáticas y cultura general, en formato test.",
      },
      {
        nombre: "Prueba de lengua inglesa",
        detalle: "Test de nivel adaptado a la etapa, centrado en comprensión y uso básico del idioma.",
      },
      {
        nombre: "Pruebas psicotécnicas y de personalidad",
        detalle:
          "Aptitudes verbales, numéricas y de razonamiento, más el cuestionario de personalidad propio del proceso.",
      },
      {
        nombre: "Pruebas físicas y reconocimiento médico",
        detalle:
          "Marcas adaptadas a la edad y revisión del cuadro médico. Es la parte que más sorprende a quien no viene de hacer deporte de forma regular.",
      },
    ],
    temario: [
      {
        bloque: "Lengua castellana",
        detalle:
          "Comprensión lectora, ortografía, gramática y léxico, con el nivel de referencia de la ESO.",
      },
      {
        bloque: "Matemáticas",
        detalle:
          "Aritmética, álgebra, proporcionalidad, geometría y resolución de problemas, con práctica cronometrada.",
      },
      {
        bloque: "Cultura general e inglés",
        detalle:
          "Conocimientos generales, actualidad, geografía e historia de España, y comprensión de inglés básico.",
      },
    ],
    incluye: [
      {
        icono: "BookOpen",
        titulo: "Temario del nivel de ESO",
        detalle:
          "Lengua, matemáticas y cultura general organizados por temas, pensados para repasar sin solaparse con el instituto.",
      },
      {
        icono: "ListChecks",
        titulo: "Tests por tema",
        detalle: "Preguntas por bloque con corrección inmediata y explicación de cada respuesta.",
      },
      {
        icono: "Timer",
        titulo: "Simulacros cronometrados",
        detalle:
          "El formato real del examen, con tiempo medido, para llegar sabiendo cómo se reparte la hora.",
      },
      {
        icono: "Dumbbell",
        titulo: "Preparación física guiada",
        detalle:
          "Marcas de referencia por edad y un plan progresivo que cabe en una semana con clase por la mañana.",
      },
      {
        icono: "Clock",
        titulo: "Compatible con el curso escolar",
        detalle:
          "Sesiones cortas y material disponible a cualquier hora, para estudiar después del instituto sin doblar la jornada.",
      },
      {
        icono: "Megaphone",
        titulo: "Avisos de convocatoria",
        detalle:
          "El plazo de esta convocatoria es corto y se pasa con facilidad. Te avisamos en el tablón del curso.",
      },
    ],
    faq: [
      {
        pregunta: "¿Qué edad hay que tener exactamente?",
        respuesta:
          "La convocatoria fija cada año un rango de edad estrecho, referido al año natural en que se celebra el proceso. Es el requisito donde más gente se equivoca, así que conviene comprobarlo en el texto del BOE antes de preparar nada.",
      },
      {
        pregunta: "¿Se estudia y se vive en el Colegio?",
        respuesta:
          "El Colegio Duque de Ahumada, en Valdemoro, es un centro de régimen interno donde se cursa Bachillerato. El detalle del régimen, los permisos y el plan de estudios lo publica la propia convocatoria.",
      },
      {
        pregunta: "¿Se puede compaginar con 4.º de la ESO?",
        respuesta:
          "Sí, y es lo normal. El curso está pensado en sesiones cortas y con todo el material disponible a cualquier hora, para que se pueda estudiar después del instituto sin doblar la jornada.",
      },
      {
        pregunta: "¿Entrar aquí garantiza ser Guardia Civil?",
        respuesta:
          "No. El Colegio es una vía de acceso privilegiada y prepara para ello, pero después hay que superar el proceso de ingreso en la Escala de Cabos y Guardias. Cualquiera que te prometa lo contrario te está engañando.",
      },
    ],
  },
];

export const cursoPorSlug = (slug: string) => cursos.find((c) => c.slug === slug);
