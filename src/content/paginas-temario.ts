/**
 * Páginas de temario: una por curso, pensadas para posicionar en «temario Guardia Civil» y
 * «temario Colegio de Guardias Jóvenes». Los temas salen de `temario.ts`; aquí va el texto
 * propio de cada página. Los datos del examen son los de la convocatoria vigente y los mismos
 * que cuentan los artículos del blog: si cambia la convocatoria, se cambia aquí y allí.
 */
export type PaginaTemario = {
  slug: string;
  ruta: string;
  meta: { titulo: string; descripcion: string };
  eyebrow: string;
  h1: string;
  entradilla: string;
  /** Cifras del hero. */
  datos: { valor: string; etiqueta: string }[];
  /** «Cómo se examina este temario»: una línea por parte del examen. */
  examen: { parte: string; detalle: string }[];
  /** Artículos del blog que desarrollan el examen (solo se enlazan si están publicados). */
  articulosExamen: { titulo: string; slug: string }[];
  faq: { pregunta: string; respuesta: string }[];
  /** Fecha de la última revisión del texto (ISO), visible y en los datos estructurados. */
  revisado: string;
};

export const paginasTemario: Record<string, PaginaTemario> = {
  "acceso-guardia-civil": {
    slug: "acceso-guardia-civil",
    ruta: "/temario-guardia-civil",
    meta: {
      titulo: "Temario Guardia Civil 2026: los 23 temas oficiales",
      descripcion:
        "Temario de Guardia Civil 2026 tema a tema: qué leyes entran en cada uno, cómo se examina y cómo estudiarlo. Programa oficial de la Escala de Cabos y Guardias.",
    },
    eyebrow: "Escala de Cabos y Guardias",
    h1: "Temario Guardia Civil 2026",
    entradilla:
      "Los 23 temas del programa oficial, uno a uno: de qué trata cada tema, qué leyes y qué partes de cada ley entran, y cómo se examinan. Es el temario que aplica la convocatoria de 2026.",
    datos: [
      { valor: "23", etiqueta: "temas en el programa" },
      { valor: "100", etiqueta: "preguntas de temario" },
      { valor: "140 min", etiqueta: "para todo el examen" },
    ],
    examen: [
      {
        parte: "Ortografía",
        detalle: "Apto o no apto. Seis errores o más te excluyen del proceso, sin corregir el resto del examen.",
      },
      {
        parte: "Gramática",
        detalle: "Apto o no apto, con el mismo límite de errores que la ortografía.",
      },
      {
        parte: "Conocimientos",
        detalle:
          "100 preguntas tipo test de los temas 1 a 23, calificadas de 0 a 100 puntos. Hace falta un mínimo de 50 y, por encima, la nota cuenta para tu posición.",
      },
      {
        parte: "Inglés",
        detalle: "20 preguntas tipo test de inglés, de 0 a 20 puntos, con un mínimo de 8.",
      },
      {
        parte: "Penalización",
        detalle:
          "Cada error resta un tercio de acierto (con cuatro opciones); las preguntas en blanco no restan. Las cuatro partes se hacen seguidas, en 140 minutos.",
      },
    ],
    articulosExamen: [
      { titulo: "Así es el examen de la Guardia Civil por dentro", slug: "examen-conocimientos-guardia-civil-estructura" },
      { titulo: "Cómo se calcula la nota del examen (con ejemplos)", slug: "calcular-nota-examen-guardia-civil" },
      { titulo: "Preparar la Guardia Civil desde cero", slug: "preparar-oposicion-guardia-civil-desde-cero" },
    ],
    faq: [
      {
        pregunta: "¿Cuántos temas tiene el temario de Guardia Civil?",
        respuesta:
          "23. Son los que forman la prueba de conocimientos, de 100 preguntas tipo test. El inglés tiene su propia prueba de 20 preguntas, y la lengua española se evalúa en los ejercicios de ortografía y gramática.",
      },
      {
        pregunta: "¿Ha cambiado el temario para la convocatoria de 2026?",
        respuesta:
          "La convocatoria de 2026 (BOE de 8 de mayo de 2026) aplica el programa publicado en 2019 con sus actualizaciones de 2021, 2022 y 2023. Lo que sí cambia con el tiempo son las leyes que lo componen: hay que estudiar siempre el texto vigente de cada norma.",
      },
      {
        pregunta: "¿Qué temas son los más largos?",
        respuesta:
          "Los que más normativa reúnen: Derecho Constitucional (la Constitución entera, más el Defensor del Pueblo y la protección del honor), Derecho Penal, Derecho Procesal Penal y Derecho Administrativo. Son los que más horas de estudio piden, aunque cualquier tema puede salir en el examen.",
      },
      {
        pregunta: "¿Entra cada ley completa?",
        respuesta:
          "No siempre. El programa concreta títulos, capítulos o artículos de muchas normas, y lo que no aparece queda fuera. En cada tema de esta página tienes qué partes de cada ley entran.",
      },
      {
        pregunta: "¿Hay temario de Guardia Civil en PDF?",
        respuesta:
          "Sí. En ProLince el temario completo, con esquemas, se descarga en PDF desde la plataforma, y además se estudia con tests por tema y simulacros cronometrados. Viene en el Pack Temarios y en el Pack Ahorro.",
      },
      {
        pregunta: "¿Cuántas horas hay que dedicarle?",
        respuesta:
          "Depende de tu punto de partida, pero como referencia recomendamos entre 12 y 15 horas a la semana, combinando estudio de temas, tests y entrenamiento de las pruebas físicas desde el primer mes.",
      },
    ],
    revisado: "2026-10-24",
  },
  "colegio-guardias-jovenes": {
    slug: "colegio-guardias-jovenes",
    ruta: "/temario-colegio-guardias-jovenes",
    meta: {
      titulo: "Temario Colegio de Guardias Jóvenes: los 12 temas",
      descripcion:
        "Temario del Colegio de Guardias Jóvenes «Duque de Ahumada» tema a tema: qué normas entran en cada uno, cómo es el examen y cómo prepararlo.",
    },
    eyebrow: "Colegio de Guardias Jóvenes",
    h1: "Temario del Colegio de Guardias Jóvenes",
    entradilla:
      "Los 12 temas del programa oficial del Colegio «Duque de Ahumada», uno a uno: de qué trata cada tema, qué normas entran y cómo se examinan. Es una versión más corta del temario de la Escala de Cabos y Guardias.",
    datos: [
      { valor: "12", etiqueta: "temas en el programa" },
      { valor: "80", etiqueta: "preguntas de temario" },
      { valor: "120 min", etiqueta: "para las tres pruebas" },
    ],
    examen: [
      {
        parte: "Conocimientos",
        detalle: "80 preguntas tipo test de los temas 1 a 10 del programa. Los errores restan.",
      },
      {
        parte: "Ortografía y gramática",
        detalle: "10 preguntas en dos bloques, con el nivel de la ESO. Corresponde al tema 12, Lengua española.",
      },
      {
        parte: "Inglés",
        detalle: "20 preguntas de comprensión escrita y ortografía sobre un texto en inglés, con el nivel de la ESO (tema 11).",
      },
      {
        parte: "Tiempo",
        detalle: "Las tres pruebas se hacen seguidas, en 120 minutos.",
      },
    ],
    articulosExamen: [
      { titulo: "Colegio de Guardias Jóvenes: qué es y cómo se accede", slug: "colegio-guardias-jovenes-acceso-guardia-civil" },
      { titulo: "El inglés en la oposición", slug: "ingles-oposicion-guardia-civil" },
      { titulo: "Ortografía y gramática en el examen", slug: "ortografia-gramatica-examen-guardia-civil" },
    ],
    faq: [
      {
        pregunta: "¿Cuántos temas tiene el temario del Colegio de Guardias Jóvenes?",
        respuesta:
          "12. Los temas 1 a 10 forman la prueba de conocimientos, de 80 preguntas tipo test. El tema 11 es el inglés y el 12, la lengua española, cada uno con su propia prueba.",
      },
      {
        pregunta: "¿Es el mismo temario que el de Guardia Civil?",
        respuesta:
          "Son los mismos bloques que la Escala de Cabos y Guardias, pero con menos temas y un alcance más corto en cada uno. Por eso se puede preparar a la vez que se termina la ESO.",
      },
      {
        pregunta: "¿De dónde sale este programa?",
        respuesta:
          "Del Apéndice I de la oferta de plazas del curso 2025/2026, publicado en el Boletín Oficial de la Guardia Civil núm. 45, de 3 de junio de 2025. Comprueba siempre las bases de la convocatoria a la que te presentas.",
      },
      {
        pregunta: "¿Hay temario del Colegio en PDF?",
        respuesta:
          "Sí. En ProLince el temario del Colegio se descarga en PDF desde la plataforma y se estudia con tests por tema y simulacros con el formato del examen. Viene en el Pack Temarios y en el Pack Ahorro del curso del Colegio.",
      },
    ],
    revisado: "2026-10-24",
  },
};
