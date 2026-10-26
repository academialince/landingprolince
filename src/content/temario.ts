/**
 * Programa oficial de cada curso. Se pinta en la sección «Temario» de su página.
 *
 * Escala de Cabos y Guardias: temario publicado por la Guardia Civil (Resolución de 26 de junio de
 * 2019 y sus actualizaciones de 2021, 2022 y 2023), aplicable a la convocatoria de 2026
 * (Resolución 160/38243/2026, BOE de 8 de mayo de 2026).
 * Colegio de Guardias Jóvenes: Apéndice I de la oferta de plazas del curso 2025/2026, Boletín Oficial
 * de la Guardia Civil núm. 45, de 3 de junio de 2025.
 *
 * `normas` resume lo que entra según el programa: si una ley aparece con títulos o capítulos
 * concretos, el resto queda fuera. Al publicarse un programa nuevo se actualiza aquí.
 */
export type Tema = {
  numero: number;
  titulo: string;
  resumen: string;
  normas: string[];
  /** Artículo del blog que desarrolla el tema, si existe. */
  articulo?: { titulo: string; slug: string };
};

const temasEscala: Tema[] = [
  {
    numero: 1,
    titulo: "Derechos Humanos",
    resumen:
      "El sistema internacional de protección: Naciones Unidas, el Consejo de Europa y la Unión Europea, la prevención de la tortura y la Corte Penal Internacional.",
    normas: [
      "Carta de las Naciones Unidas (órganos) y Declaración Universal de Derechos Humanos",
      "Convenio Europeo de Derechos Humanos (Tribunal Europeo) y Carta Social Europea revisada",
      "Pactos Internacionales de Derechos Civiles y Políticos y de Derechos Económicos, Sociales y Culturales",
      "Convención contra la Tortura y su Protocolo facultativo; Consejo de Derechos Humanos de la ONU",
      "Carta de los Derechos Fundamentales de la UE",
      "Estatuto de Roma y LO 18/2003, de Cooperación con la Corte Penal Internacional",
      "Reglamento del Defensor del Pueblo y Consejo Asesor del Mecanismo Nacional de Prevención de la Tortura",
    ],
  },
  {
    numero: 2,
    titulo: "Igualdad efectiva de mujeres y hombres",
    resumen:
      "La Ley de Igualdad: conceptos de discriminación, acoso, planes de igualdad y su aplicación en las administraciones y en las Fuerzas y Cuerpos de Seguridad.",
    normas: ["LO 3/2007: Título I, Título II (Capítulo I) y Títulos III a VIII"],
  },
  {
    numero: 3,
    titulo: "Prevención de riesgos laborales",
    resumen:
      "Derechos y obligaciones en seguridad y salud laboral, y su adaptación a la Guardia Civil.",
    normas: [
      "Ley 31/1995: Capítulos I, II, III, VI y VII",
      "RD 67/2010 (prevención en la Administración General del Estado)",
      "RD 179/2005 (prevención de riesgos laborales en la Guardia Civil)",
    ],
  },
  {
    numero: 4,
    titulo: "Derecho Constitucional",
    resumen:
      "La Constitución de 1978 entera, el Defensor del Pueblo y la protección del honor, la intimidad y la propia imagen. Uno de los temas que más preguntas aporta.",
    normas: [
      "Constitución Española de 1978 (completa)",
      "LO 3/1981, del Defensor del Pueblo: Títulos I a III y disposición final única",
      "LO 1/1982, de protección civil del derecho al honor, a la intimidad y a la propia imagen",
    ],
    articulo: { titulo: "La Constitución en la oposición: qué cae y cómo estudiarla", slug: "constitucion-oposicion-guardia-civil" },
  },
  {
    numero: 5,
    titulo: "Derecho de la Unión Europea",
    resumen:
      "Los Tratados de la Unión y de Funcionamiento: principios, instituciones, ciudadanía, espacio de libertad, seguridad y justicia, y política común de seguridad y defensa.",
    normas: [
      "Tratado de la Unión Europea: Títulos I a IV, VI y la política común de seguridad y defensa del Título V",
      "Tratado de Funcionamiento de la UE: las partes y títulos que fija el programa",
    ],
  },
  {
    numero: 6,
    titulo: "Instituciones internacionales",
    resumen:
      "Evolución histórica, ámbito geográfico, estructura y funciones de los organismos internacionales con los que se relaciona la seguridad.",
    normas: ["ONU, Consejo de Europa, Unión Europea, OTAN, INTERPOL, EUROPOL, EUROJUST, FRONTEX, CEPOL, FAO, FMI y OMS"],
  },
  {
    numero: 7,
    titulo: "Derecho Civil",
    resumen:
      "El Título Preliminar del Código Civil y el Libro I: personas, nacionalidad, vecindad, domicilio, matrimonio, filiación, tutela y registro civil.",
    normas: ["Código Civil: Título Preliminar y Libro I, Títulos I a XII"],
  },
  {
    numero: 8,
    titulo: "Derecho Penal",
    resumen:
      "La parte general del Código Penal (garantías, infracción penal, responsabilidad, penas) y los delitos que el programa selecciona de la parte especial.",
    normas: [
      "Código Penal: Título Preliminar",
      "Libro I: Títulos I, II, III (Capítulo I), IV, V (Capítulos I y II) y VII",
      "Libro II: Títulos I, III, VI, VII, VII bis, VIII, XII (Capítulos I y II), XIX, XXI y XXIV",
    ],
  },
  {
    numero: 9,
    titulo: "Derecho Procesal Penal",
    resumen:
      "Cómo se investiga y se juzga un delito: la Ley de Enjuiciamiento Criminal, el habeas corpus, la Policía Judicial y los derechos de la víctima.",
    normas: [
      "Ley de Enjuiciamiento Criminal: los libros, títulos y capítulos que fija el programa",
      "LO 6/1984, de Habeas Corpus (completa)",
      "LOPJ: Libro I, Título IV y Libro VII, Títulos I a III",
      "RD 769/1987, de Policía Judicial: Capítulos I a III",
      "Ley 4/2015, del Estatuto de la víctima del delito (completa)",
    ],
  },
  {
    numero: 10,
    titulo: "Derecho Administrativo",
    resumen: "El procedimiento administrativo común y el régimen jurídico del sector público.",
    normas: [
      "Ley 39/2015: Título Preliminar y Títulos I a VI",
      "Ley 40/2015: Título Preliminar, Títulos I y III y disposición final tercera",
    ],
  },
  {
    numero: 11,
    titulo: "Protección de datos",
    resumen: "La Ley Orgánica de Protección de Datos y garantía de los derechos digitales.",
    normas: ["LO 3/2018: Títulos I a VIII"],
  },
  {
    numero: 12,
    titulo: "Extranjería e inmigración",
    resumen:
      "Derechos y libertades de los extranjeros en España, entrada, estancia y residencia, y el régimen de los ciudadanos de la Unión.",
    normas: ["LO 4/2000 (completa)", "RD 240/2007 (completo)"],
  },
  {
    numero: 13,
    titulo: "Seguridad pública y seguridad privada",
    resumen: "La Ley de Seguridad Ciudadana y la Ley de Seguridad Privada.",
    normas: ["LO 4/2015: Capítulos I a V", "Ley 5/2014: Título Preliminar y Títulos I a V"],
  },
  {
    numero: 14,
    titulo: "Ministerio del Interior y Ministerio de Defensa",
    resumen: "La estructura orgánica básica de los dos ministerios de los que depende la Guardia Civil.",
    normas: ["Estructura orgánica básica del Ministerio del Interior", "Estructura orgánica básica del Ministerio de Defensa"],
  },
  {
    numero: 15,
    titulo: "Fuerzas y Cuerpos de Seguridad. Guardia Civil",
    resumen:
      "La Ley Orgánica de Fuerzas y Cuerpos de Seguridad, el régimen del personal y los derechos y deberes de los guardias civiles, la estructura de la Dirección General y la historia del Cuerpo.",
    normas: [
      "LO 2/1986 (completa)",
      "Ley 29/2014, de Régimen del Personal de la Guardia Civil: Título Preliminar y Títulos I y II",
      "Estructura orgánica de los Servicios Centrales de la Dirección General",
      "Historia de la Guardia Civil, desde inicios del siglo XIX hasta la democracia",
      "LO 11/2007, de derechos y deberes de los miembros de la Guardia Civil (completa)",
    ],
  },
  {
    numero: 16,
    titulo: "Protección civil, desarrollo sostenible y eficiencia energética",
    resumen: "El Sistema Nacional de Protección Civil, el patrimonio natural y la biodiversidad, y la eficiencia energética.",
    normas: [
      "Ley 17/2015, del Sistema Nacional de Protección Civil: Títulos I a V",
      "Ley 42/2007, del Patrimonio Natural y de la Biodiversidad: Título Preliminar y Títulos II a IV",
      "Directiva 2012/27/UE: Capítulos I y II",
    ],
  },
  {
    numero: 17,
    titulo: "Tecnologías de la información y la comunicación",
    resumen:
      "Telecomunicaciones, servicios electrónicos de confianza, ciberseguridad e interoperabilidad de la administración electrónica.",
    normas: [
      "Ley 11/2022, General de Telecomunicaciones: Título I y Título III, Capítulo III",
      "RD 806/2014: Capítulos I y III",
      "Ley 6/2020, de servicios electrónicos de confianza: Títulos I a III y disposición adicional tercera",
      "Principios y recomendaciones básicas en ciberseguridad del CCN-CERT",
      "RD 4/2010, Esquema Nacional de Interoperabilidad",
    ],
  },
  {
    numero: 18,
    titulo: "Topografía",
    resumen:
      "Orientación y lectura del terreno: elementos geográficos, escalas y unidades de medida, planimetría, altimetría, curvas de nivel y pendientes.",
    normas: ["Elementos geográficos, unidades de medida y representación del terreno"],
  },
  {
    numero: 19,
    titulo: "Deontología profesional",
    resumen: "Cómo y cuándo se puede usar la fuerza, y el Código de conducta de la Guardia Civil.",
    normas: [
      "Principios Básicos sobre el Empleo de la Fuerza y de Armas de Fuego (ONU, La Habana, 1990)",
      "RD 176/2022, Código de conducta del personal de la Guardia Civil",
    ],
  },
  {
    numero: 20,
    titulo: "Responsabilidad penal de los menores",
    resumen: "La Ley Orgánica de responsabilidad penal de los menores: ámbito, medidas, procedimiento y ejecución.",
    normas: ["LO 5/2000 (completa)"],
  },
  {
    numero: 21,
    titulo: "Protección integral contra la violencia de género",
    resumen: "Medidas de sensibilización, derechos de las víctimas, tutela institucional, penal y judicial.",
    normas: ["LO 1/2004 (completa)"],
  },
  {
    numero: 22,
    titulo: "Armas y explosivos",
    resumen: "Clasificación de las armas, licencias, guías de pertenencia, tenencia y control de explosivos.",
    normas: ["RD 137/1993, Reglamento de Armas", "RD 130/2017, Reglamento de Explosivos"],
  },
  {
    numero: 23,
    titulo: "Derecho fiscal",
    resumen: "La represión del contrabando y la normativa aduanera de la Unión que aplica la Guardia Civil como resguardo fiscal del Estado.",
    normas: [
      "LO 12/1995, de Represión del Contrabando",
      "RD 1649/1998 (infracciones administrativas de contrabando)",
      "Reglamento (UE) 952/2013, Código Aduanero de la Unión: los títulos y capítulos que fija el programa",
    ],
  },
];

const temasColegio: Tema[] = [
  {
    numero: 1,
    titulo: "Derechos Humanos",
    resumen: "Los grandes textos de protección de los derechos humanos de Naciones Unidas y del Consejo de Europa.",
    normas: [
      "Carta de las Naciones Unidas (órganos) y Declaración Universal de Derechos Humanos",
      "Convenio Europeo de Derechos Humanos (Tribunal Europeo de Derechos Humanos)",
      "Carta Social Europea",
      "Pactos Internacionales de Derechos Civiles y Políticos y de Derechos Económicos, Sociales y Culturales",
      "Consejo de Derechos Humanos de la ONU",
    ],
  },
  {
    numero: 2,
    titulo: "Igualdad efectiva de mujeres y hombres",
    resumen: "El principio de igualdad, la tutela contra la discriminación y los principios de las políticas públicas para la igualdad.",
    normas: ["LO 3/2007: Título I y Título II, Capítulo I"],
  },
  {
    numero: 3,
    titulo: "Derecho Constitucional",
    resumen: "La Constitución de 1978 completa y la ley del Defensor del Pueblo.",
    normas: [
      "Constitución Española de 1978 (completa)",
      "LO 3/1981, del Defensor del Pueblo: Títulos I a III y disposición final única",
    ],
    articulo: { titulo: "La Constitución en la oposición: qué cae y cómo estudiarla", slug: "constitucion-oposicion-guardia-civil" },
  },
  {
    numero: 4,
    titulo: "Derecho Civil",
    resumen: "Las fuentes del derecho, la aplicación y la eficacia de las normas.",
    normas: ["Código Civil: Título Preliminar"],
  },
  {
    numero: 5,
    titulo: "Derecho Penal",
    resumen: "Las garantías penales y la aplicación de la ley penal.",
    normas: ["Código Penal: Título Preliminar"],
  },
  {
    numero: 6,
    titulo: "Derecho Procesal Penal",
    resumen: "Las reglas que determinan qué juez o tribunal es competente en lo criminal.",
    normas: ["Ley de Enjuiciamiento Criminal: Libro I, Título II, Capítulo I"],
  },
  {
    numero: 7,
    titulo: "Derecho Administrativo",
    resumen: "Las disposiciones generales del procedimiento administrativo y los interesados en él.",
    normas: ["Ley 39/2015: Título Preliminar y Título I"],
  },
  {
    numero: 8,
    titulo: "Fuerzas y Cuerpos de Seguridad. Guardia Civil",
    resumen: "La Ley Orgánica de Fuerzas y Cuerpos de Seguridad y la historia de la Guardia Civil, de su fundación a la democracia.",
    normas: [
      "LO 2/1986, de Fuerzas y Cuerpos de Seguridad",
      "Historia de la Guardia Civil, desde inicios del siglo XIX hasta la democracia",
    ],
  },
  {
    numero: 9,
    titulo: "Deontología profesional",
    resumen: "El Código de conducta del personal de la Guardia Civil.",
    normas: ["RD 176/2022, Código de conducta del personal de la Guardia Civil"],
  },
  {
    numero: 10,
    titulo: "Topografía",
    resumen:
      "Elementos geográficos, coordenadas, acimut y rumbo, escalas, planimetría y altimetría, accidentes del terreno y pendientes.",
    normas: ["Elementos geográficos, unidades de medida y representación del terreno"],
  },
  {
    numero: 11,
    titulo: "Inglés",
    resumen: "Prueba propia de 20 preguntas de comprensión escrita y ortografía sobre un texto en inglés, con el nivel de la ESO.",
    normas: ["Programa de inglés de la ESO (RD 217/2022)"],
    articulo: { titulo: "El inglés en la oposición a Guardia Civil", slug: "ingles-oposicion-guardia-civil" },
  },
  {
    numero: 12,
    titulo: "Lengua española",
    resumen: "10 preguntas en dos bloques: ortografía y gramática, con el nivel de la ESO.",
    normas: ["Bloque 1: ortografía", "Bloque 2: gramática (morfología y sintaxis)"],
    articulo: { titulo: "Ortografía y gramática en el examen", slug: "ortografia-gramatica-examen-guardia-civil" },
  },
];

export type Programa = {
  temas: Tema[];
  /** Texto bajo el título de la sección. */
  entradilla: string;
  fuente: { texto: string; url?: string };
};

/** Programa de cada curso, por su slug. */
export const programas: Record<string, Programa> = {
  "acceso-guardia-civil": {
    temas: temasEscala,
    entradilla:
      "Los 23 temas del programa oficial, que forman las 100 preguntas de conocimientos. El inglés y la lengua española tienen sus propias pruebas.",
    fuente: {
      texto: "Programa oficial de la Escala de Cabos y Guardias, convocatoria de 2026 (Resolución 160/38243/2026, BOE de 8 de mayo de 2026)",
      url: "https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982",
    },
  },
  "colegio-guardias-jovenes": {
    temas: temasColegio,
    entradilla:
      "Los 12 temas del programa oficial del Colegio. Del 1 al 10 salen las 80 preguntas de conocimientos; el inglés y la lengua española tienen sus propias pruebas.",
    fuente: {
      texto: "Programa oficial del Colegio de Guardias Jóvenes «Duque de Ahumada», curso 2025/2026 (Boletín Oficial de la Guardia Civil núm. 45, de 3 de junio de 2025)",
    },
  },
};
