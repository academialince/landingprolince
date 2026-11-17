/**
 * Tests rápidos de 10 preguntas para las landing CONSTITUCION y TRAMPAS. Las preguntas son
 * propias, redactadas a partir del texto de cada norma (Constitución de 1978, LO 2/1986, LO
 * 3/1981, LO 6/1984 y Código Penal). Corrección del examen real: cada error resta un tercio y
 * las preguntas en blanco no cuentan. Nota sobre 10.
 *
 * Para añadir otro test (p. ej. LEYES), basta con otra entrada en `bancos` y otra en recursos.ts.
 */

export type PreguntaRapida = {
  id: string;
  /** De dónde sale: se enseña encima del enunciado. */
  fuente: string;
  pregunta: string;
  opciones: [string, string, string, string];
  correcta: 0 | 1 | 2 | 3;
  explicacion: string;
  /** Solo en TRAMPAS: dónde está la trampa. */
  trampa?: string;
};

export type IdBanco = "constitucion" | "trampas";

const constitucion: PreguntaRapida[] = [
  {
    id: "ce-01",
    fuente: "Constitución",
    pregunta: "¿En qué fecha ratificó el pueblo español la Constitución en referéndum?",
    opciones: ["31 de octubre de 1978", "6 de diciembre de 1978", "27 de diciembre de 1978", "29 de diciembre de 1978"],
    correcta: 1,
    explicacion:
      "El referéndum fue el 6 de diciembre de 1978. El 31 de octubre la aprobaron las Cortes, el 27 de diciembre la sancionó el Rey y el 29 de diciembre se publicó en el BOE, día en que entró en vigor.",
  },
  {
    id: "ce-02",
    fuente: "Constitución",
    pregunta: "¿Cuántos artículos tiene la Constitución española?",
    opciones: ["159", "169", "179", "196"],
    correcta: 1,
    explicacion:
      "Tiene 169 artículos, además de 4 disposiciones adicionales, 9 transitorias, 1 derogatoria y 1 final, repartidos en un Título preliminar y diez títulos.",
  },
  {
    id: "ce-03",
    fuente: "Constitución, art. 1.3",
    pregunta: "Según la Constitución, la forma política del Estado español es:",
    opciones: [
      "El Estado social y democrático de Derecho",
      "La Monarquía constitucional",
      "La Monarquía parlamentaria",
      "La República parlamentaria",
    ],
    correcta: 2,
    explicacion:
      "Art. 1.3: «La forma política del Estado español es la Monarquía parlamentaria». El Estado social y democrático de Derecho es cómo se constituye España (art. 1.1), no su forma política.",
  },
  {
    id: "ce-04",
    fuente: "Constitución, art. 12",
    pregunta: "Según la Constitución, los españoles son mayores de edad a los:",
    opciones: ["16 años", "18 años", "21 años", "14 años"],
    correcta: 1,
    explicacion: "Art. 12: «Los españoles son mayores de edad a los dieciocho años».",
  },
  {
    id: "ce-05",
    fuente: "Constitución",
    pregunta:
      "¿Qué artículo dice que las Fuerzas y Cuerpos de Seguridad, bajo la dependencia del Gobierno, tienen como misión proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana?",
    opciones: ["Artículo 8", "Artículo 104", "Artículo 126", "Artículo 149"],
    correcta: 1,
    explicacion:
      "Es el art. 104.1. El art. 8 se refiere a las Fuerzas Armadas, el 126 a la policía judicial y el 149.1.29.ª reserva al Estado la competencia sobre seguridad pública.",
  },
  {
    id: "ce-06",
    fuente: "Constitución, art. 54",
    pregunta: "El Defensor del Pueblo es alto comisionado de:",
    opciones: ["El Gobierno", "Las Cortes Generales", "El Rey", "El Consejo General del Poder Judicial"],
    correcta: 1,
    explicacion:
      "Art. 54: el Defensor del Pueblo es «alto comisionado de las Cortes Generales, designado por éstas para la defensa de los derechos comprendidos en este Título».",
  },
  {
    id: "ce-07",
    fuente: "Constitución, art. 68.1",
    pregunta: "Según la Constitución, el Congreso se compone de:",
    opciones: [
      "350 Diputados exactamente",
      "Un mínimo de 300 y un máximo de 400 Diputados",
      "Un mínimo de 250 y un máximo de 350 Diputados",
      "Un mínimo de 200 y un máximo de 400 Diputados",
    ],
    correcta: 1,
    explicacion:
      "La Constitución fija una horquilla de 300 a 400 Diputados (art. 68.1). Los 350 actuales los fija la Ley Orgánica del Régimen Electoral General, no la Constitución.",
  },
  {
    id: "ce-08",
    fuente: "Constitución, art. 159.1",
    pregunta: "¿Cuántos miembros tiene el Tribunal Constitucional?",
    opciones: ["9", "12", "15", "20"],
    correcta: 1,
    explicacion:
      "Doce, nombrados por el Rey: cuatro a propuesta del Congreso y cuatro del Senado (por mayoría de tres quintos), dos del Gobierno y dos del Consejo General del Poder Judicial.",
  },
  {
    id: "ce-09",
    fuente: "Constitución",
    pregunta: "¿Qué título de la Constitución regula la Corona?",
    opciones: ["Título preliminar", "Título I", "Título II", "Título III"],
    correcta: 2,
    explicacion:
      "El Título II, «De la Corona» (arts. 56 a 65). El Título I trata de los derechos y deberes fundamentales y el Título III, de las Cortes Generales.",
  },
  {
    id: "ce-10",
    fuente: "Constitución",
    pregunta: "La reforma total de la Constitución, o la parcial que afecte al Título II, sigue el procedimiento del artículo:",
    opciones: ["166", "167", "168", "169"],
    correcta: 2,
    explicacion:
      "El art. 168 es el procedimiento agravado: dos tercios de cada Cámara, disolución inmediata de las Cortes, ratificación por las nuevas Cámaras y referéndum. Se aplica a la revisión total o a la parcial que afecte al Título preliminar, a la sección 1.ª del capítulo II del Título I o al Título II.",
  },
];

const trampas: PreguntaRapida[] = [
  {
    id: "tr-01",
    fuente: "Constitución, art. 17.2",
    pregunta: "Según la Constitución, el detenido debe ser puesto en libertad o a disposición judicial en el plazo máximo de:",
    opciones: ["24 horas", "48 horas", "72 horas", "5 días"],
    correcta: 2,
    explicacion: "Art. 17.2: la detención preventiva no puede durar más de lo estrictamente necesario y, como máximo, 72 horas.",
    trampa:
      "Las 24 horas son de la Ley de Enjuiciamiento Criminal (art. 496). Si la pregunta dice «según la Constitución», son 72.",
  },
  {
    id: "tr-02",
    fuente: "LO 3/1981, del Defensor del Pueblo, art. 2",
    pregunta: "El Defensor del Pueblo es elegido por las Cortes Generales para un período de:",
    opciones: ["4 años", "5 años", "6 años", "9 años"],
    correcta: 1,
    explicacion: "Cinco años (art. 2.1 de la LO 3/1981).",
    trampa:
      "Se tiende a pensar en los 4 años de una legislatura. Su mandato es más largo a propósito: así no coincide con las Cortes que lo eligen.",
  },
  {
    id: "tr-03",
    fuente: "Constitución, art. 159.3",
    pregunta: "Los miembros del Tribunal Constitucional se designan por nueve años y se renuevan:",
    opciones: ["Por mitades, cada cuatro años y medio", "Por terceras partes, cada tres años", "Íntegramente, cada nueve años", "Por cuartas partes, cada tres años"],
    correcta: 1,
    explicacion: "Art. 159.3: designados por nueve años, se renuevan por terceras partes cada tres.",
    trampa: "Doce miembros entre tres son cuatro por renovación. Lo de «por mitades» suena bien, pero no es lo que dice la Constitución.",
  },
  {
    id: "tr-04",
    fuente: "Constitución, art. 122.3",
    pregunta: "El Consejo General del Poder Judicial está integrado por el Presidente del Tribunal Supremo, que lo preside, y por:",
    opciones: ["Doce miembros", "Quince miembros", "Veinte miembros", "Veintiún miembros"],
    correcta: 2,
    explicacion: "Art. 122.3: veinte miembros nombrados por el Rey por cinco años, más el Presidente.",
    trampa: "Veinte vocales más el Presidente son 21 personas. Si la pregunta dice «y por», el Presidente ya está contado aparte: la respuesta es 20.",
  },
  {
    id: "tr-05",
    fuente: "Constitución, art. 87.3",
    pregunta: "Para la iniciativa legislativa popular se exigen, como mínimo:",
    opciones: ["50.000 firmas acreditadas", "250.000 firmas acreditadas", "500.000 firmas acreditadas", "1.000.000 de firmas acreditadas"],
    correcta: 2,
    explicacion:
      "Art. 87.3: no menos de 500.000 firmas. Y no cabe en materias de ley orgánica, tributarias, de carácter internacional ni en lo relativo a la prerrogativa de gracia.",
    trampa: "Un cero de más o de menos. Recuérdalo como «medio millón».",
  },
  {
    id: "tr-06",
    fuente: "Constitución, art. 69.2",
    pregunta: "En las provincias peninsulares, ¿cuántos Senadores elige cada una por sufragio universal?",
    opciones: ["2", "3", "4", "5"],
    correcta: 2,
    explicacion: "Art. 69.2: cuatro Senadores por provincia.",
    trampa:
      "El 3 es de las islas mayores (Gran Canaria, Mallorca y Tenerife) y el 2, de Ceuta y Melilla. Las demás islas o agrupaciones eligen uno.",
  },
  {
    id: "tr-07",
    fuente: "Código Penal, art. 131.1",
    pregunta: "Los delitos leves prescriben:",
    opciones: ["A los 3 meses", "A los 6 meses", "Al año", "A los 5 años"],
    correcta: 2,
    explicacion: "Art. 131.1 del Código Penal: los delitos leves y los de injurias y calumnias prescriben al año.",
    trampa: "Los 6 meses eran de las antiguas faltas, que desaparecieron en 2015. Muchos apuntes viejos todavía lo dicen.",
  },
  {
    id: "tr-08",
    fuente: "LO 2/1986, de Fuerzas y Cuerpos de Seguridad, art. 9.b",
    pregunta: "En tiempo de guerra y durante el estado de sitio, la Guardia Civil depende exclusivamente:",
    opciones: ["Del Ministro del Interior", "Del Ministro de Defensa", "Del Presidente del Gobierno", "Del Jefe de Estado Mayor de la Defensa"],
    correcta: 1,
    explicacion: "Art. 9.b de la LO 2/1986: en tiempo de guerra y durante el estado de sitio, dependerá exclusivamente del Ministro de Defensa.",
    trampa: "Solo en guerra y en estado de sitio. En los estados de alarma y de excepción no cambia su dependencia.",
  },
  {
    id: "tr-09",
    fuente: "Constitución, art. 116.3",
    pregunta: "El estado de excepción lo declara:",
    opciones: [
      "El Gobierno, dando cuenta al Congreso",
      "El Gobierno, previa autorización del Congreso",
      "El Congreso, por mayoría absoluta, a propuesta exclusiva del Gobierno",
      "El Rey, a propuesta del Presidente del Gobierno",
    ],
    correcta: 1,
    explicacion: "Art. 116.3: lo declara el Gobierno, mediante decreto acordado en Consejo de Ministros, previa autorización del Congreso, por 30 días prorrogables por otros 30.",
    trampa:
      "Las tres primeras opciones son los tres estados: «dando cuenta» es el de alarma, «previa autorización» el de excepción y «mayoría absoluta del Congreso» el de sitio.",
  },
  {
    id: "tr-10",
    fuente: "LO 6/1984, de «habeas corpus», art. 7",
    pregunta: "En el procedimiento de «habeas corpus», el juez debe resolver en el plazo de:",
    opciones: ["12 horas", "24 horas", "48 horas", "72 horas"],
    correcta: 1,
    explicacion: "Art. 7 de la LO 6/1984: la resolución debe dictarse en 24 horas desde el auto de incoación.",
    trampa: "Después de estudiar las 72 horas de la detención, es fácil arrastrarlas aquí. El «habeas corpus» es rápido por definición: 24 horas.",
  },
];

export const bancos: Record<IdBanco, PreguntaRapida[]> = { constitucion, trampas };

export const NUM_RAPIDAS = 10;

/** Una respuesta por pregunta, en orden: la opción (0–3) o -1 si se dejó en blanco. */
export function corregirRapido(banco: IdBanco, respuestas: unknown) {
  const preguntas = bancos[banco];
  if (!Array.isArray(respuestas) || respuestas.length !== preguntas.length) return null;
  let aciertos = 0;
  let errores = 0;
  let blancos = 0;
  for (let i = 0; i < preguntas.length; i++) {
    const r = respuestas[i];
    if (!Number.isInteger(r) || r < -1 || r > 3) return null;
    if (r === -1) blancos++;
    else if (r === preguntas[i].correcta) aciertos++;
    else errores++;
  }
  const netas = Math.max(0, aciertos - errores / 3);
  const nota = Math.round((netas / preguntas.length) * 1000) / 100;
  return { aciertos, errores, blancos, netas, nota };
}
