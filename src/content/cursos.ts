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
  /** Título y descripción para buscadores: ≤ 60 y ≤ 155 caracteres, con la palabra clave delante. */
  seo: { titulo: string; descripcion: string };
  imagen: string;
  imagenAlt: string;
  destacados: { valor: string; etiqueta: string }[];
  secciones: Seccion[];
  paraQuien: { titulo: string; texto: string; puntos: string[] };
  requisitos: { titulo: string; nota: string; lista: string[] };
  pruebas: { nombre: string; detalle: string }[];
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
  { id: "packs", etiqueta: "Packs" },
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
    seo: {
      titulo: "Curso de oposiciones a Guardia Civil online",
      descripcion:
        "Curso online de oposiciones a Guardia Civil (Escala de Cabos y Guardias): temario, tests por tema, simulacros cronometrados y seguimiento de tu progreso.",
    },
    imagen: "/tactico/desfile-4k.jpg",
    imagenAlt: "Promoción de guardias civiles desfilando por una calle de piedra",
    destacados: [
      { valor: "25", etiqueta: "temas del programa oficial" },
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
    incluye: [
      {
        icono: "BookOpen",
        titulo: "Temario de los 23 temas",
        detalle:
          "En PDF y con esquemas de cada tema, en versión web y móvil. Se lee en un visor protegido que recuerda dónde lo dejaste.",
      },
      {
        icono: "ListChecks",
        titulo: "Tests por tema y a tu medida",
        detalle:
          "Tests por tema y tests personalizados de hasta 20 preguntas del tema o los subtemas que elijas, con la explicación de cada respuesta.",
      },
      {
        icono: "Timer",
        titulo: "Simulacros oficiales y propios",
        detalle:
          "Los exámenes oficiales de 2017 a 2026 y simulacros propios con el mismo formato, algunos también en PDF. Cronometrados y con entrega única, igual que el día de la prueba.",
      },
      {
        icono: "Trophy",
        titulo: "Ranking privado",
        detalle: "Tu posición frente al resto de alumnos del mismo simulacro, solo dentro del curso y con iniciales.",
      },
      {
        icono: "RefreshCw",
        titulo: "Repasa tus errores",
        detalle:
          "Las preguntas que fallas se guardan en una cola de repaso y vuelven hasta que las aciertas.",
      },
      {
        icono: "LineChart",
        titulo: "Estadísticas de verdad",
        detalle:
          "Rendimiento por tema, ritmo de estudio y tu evolución comparada con la media del grupo.",
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
    seo: {
      titulo: "Curso Colegio de Guardias Jóvenes online",
      descripcion:
        "Prepara el acceso al Colegio de Guardias Jóvenes Duque de Ahumada online: temario completo, tests por tema, repaso de errores y estadísticas por tema.",
    },
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
          "80 preguntas tipo test de los temas 1 a 10 del programa (los mismos de la Escala de Cabos y Guardias, con un alcance más corto), más 10 de ortografía y gramática. Los errores restan.",
      },
      {
        nombre: "Prueba de lengua inglesa",
        detalle: "20 preguntas de comprensión escrita y ortografía sobre un texto en inglés, con el nivel de la ESO. Las tres pruebas se hacen seguidas, en 120 minutos.",
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
    incluye: [
      {
        icono: "BookOpen",
        titulo: "Temario completo",
        detalle:
          "En PDF, en versión web y móvil, dentro de un visor que recuerda dónde lo dejaste.",
      },
      {
        icono: "ListChecks",
        titulo: "Tests por tema y a tu medida",
        detalle:
          "Tests por tema y tests personalizados de hasta 20 preguntas, con corrección inmediata y la explicación de cada respuesta.",
      },
      {
        icono: "RefreshCw",
        titulo: "Repasa tus errores",
        detalle: "Lo que fallas vuelve en una cola de repaso hasta que lo aciertas.",
      },
      {
        icono: "LineChart",
        titulo: "Estadísticas por tema",
        detalle: "Qué temas llevas bien, cuáles flojean y tu evolución frente a la media del grupo.",
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
          "El plazo de esta convocatoria es corto y se pasa con facilidad. Te avisamos en el tablón del curso y por correo.",
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

/**
 * Especialidades que llegarán más adelante. Se enseñan bloqueadas, con «Próximamente», en el
 * listado de cursos y en el menú; no tienen página propia ni se puede entrar en ellas.
 */
export type CursoProximo = { id: string; nombre: string; eyebrow: string; entradilla: string };

export const cursosProximos: CursoProximo[] = [
  {
    id: "policia-judicial",
    nombre: "Policía Judicial",
    eyebrow: "Especialidad",
    entradilla: "Para guardias civiles que quieren dar el salto a la especialidad de Policía Judicial.",
  },
  {
    id: "ascenso-cabo",
    nombre: "Ascenso a Cabo",
    eyebrow: "Promoción interna",
    entradilla: "Para guardias civiles que preparan el ascenso al empleo de Cabo.",
  },
  {
    id: "ascenso-sargento",
    nombre: "Ascenso a Sargento",
    eyebrow: "Promoción interna",
    entradilla: "Para cabos y guardias civiles que preparan el acceso a la Escala de Suboficiales.",
  },
];
