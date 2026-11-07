export type ViralId = "especialidad" | "duelo" | "articulo" | "reflejos" | "provincia" | "1995" | "falla" | "bingo" | "horas" | "pasaporte";

export type PreguntaViral = { pregunta: string; opciones: string[]; correcta?: number };

export const preguntasConocimiento: PreguntaViral[] = [
  { pregunta: "¿Qué artículo proclama la igualdad ante la ley?", opciones: ["14", "18", "24", "30"], correcta: 0 },
  { pregunta: "El Senado es la Cámara de representación…", opciones: ["Popular", "Territorial", "Judicial", "Europea"], correcta: 1 },
  { pregunta: "¿Quién sanciona y promulga las leyes?", opciones: ["El Congreso", "El Gobierno", "El Rey", "El Senado"], correcta: 2 },
  { pregunta: "La detención preventiva no puede durar más de…", opciones: ["24 h", "48 h", "72 h", "96 h"], correcta: 2 },
  { pregunta: "¿Cuál está escrita correctamente?", opciones: ["Preveer", "Prever", "Preveerá", "Preveyendo"], correcta: 1 },
  { pregunta: "El Defensor del Pueblo es alto comisionado de…", opciones: ["Las Cortes", "El Gobierno", "El CGPJ", "La Corona"], correcta: 0 },
  { pregunta: "La soberanía nacional reside en…", opciones: ["Las Cortes", "El Rey", "El pueblo español", "El Gobierno"], correcta: 2 },
  { pregunta: "¿Cuál es correcta?", opciones: ["A grosso modo", "Grosso modo", "De grosso modo", "En grosso modo"], correcta: 1 },
  { pregunta: "El estado de alarma se declara inicialmente por…", opciones: ["15 días", "30 días", "60 días", "90 días"], correcta: 0 },
  { pregunta: "La Constitución entró en vigor…", opciones: ["6 dic. 1978", "27 dic. 1978", "29 dic. 1978", "1 ene. 1979"], correcta: 2 },
];

export const preguntasEspecialidad: PreguntaViral[] = [
  { pregunta: "Tu servicio ideal empieza…", opciones: ["Con acción", "En plena naturaleza", "En carretera", "Siguiendo una pista"] },
  { pregunta: "Te define más…", opciones: ["Disciplina", "Paciencia", "Precisión", "Curiosidad"] },
  { pregunta: "Elige un entorno", opciones: ["Operativo", "Montaña", "Mar", "Laboratorio"] },
  { pregunta: "Ante un problema tú…", opciones: ["Actúas", "Observas", "Coordinas", "Investigas"] },
  { pregunta: "Preferirías dominar…", opciones: ["Táctica", "Rescate", "Conducción", "Análisis"] },
  { pregunta: "Tu compañero perfecto tiene…", opciones: ["Sangre fría", "Resistencia", "Reflejos", "Buen olfato"] },
  { pregunta: "¿Qué impacto te motiva?", opciones: ["Proteger", "Conservar", "Prevenir", "Resolver"] },
  { pregunta: "Escoge una herramienta", opciones: ["Escudo", "Prismáticos", "Radar", "Lupa"] },
  { pregunta: "Trabajas mejor…", opciones: ["En equipo", "Al aire libre", "En movimiento", "Con datos"] },
  { pregunta: "Tu mayor fortaleza", opciones: ["Valor", "Temple", "Atención", "Ingenio"] },
];

export const especialidadesVirales = ["GRS", "SEPRONA", "Tráfico", "Policía Judicial"] as const;

export const provincias = ["Madrid", "Barcelona", "Valencia", "Sevilla", "Málaga", "Murcia", "Cádiz", "Jaén", "Granada", "Alicante", "Otra"];

export const bingoCasillas = [
  "He subrayado el temario entero", "Mi madre pregunta cuándo es el examen", "He soñado con artículos", "Tengo más de 3 rotuladores verdes",
  "He dicho «el lunes empiezo fuerte»", "He cambiado el planning otra vez", "He discutido una respuesta del test", "Sé una ley pero no dónde dejé las llaves",
  "He estudiado un sábado noche", "Tengo un grupo de opositores silenciado", "He comprado material que aún no abrí", "He confundido descanso con culpa",
  "He celebrado un 6 como un 10", "He hecho tests en el autobús", "Me sé fechas que nadie preguntó", "He pensado: esta plaza es mía",
];

export const virales: Record<ViralId, { titulo: string; etiqueta: string; descripcion: string; palabra: string }> = {
  especialidad: { titulo: "¿Qué especialidad de la Guardia Civil va contigo?", etiqueta: "Test de personalidad", descripcion: "10 decisiones rápidas. Descubre el destino que encaja con tu forma de ser.", palabra: "ESPECIALIDAD" },
  duelo: { titulo: "Reta a un amigo", etiqueta: "Duelo ProLince", descripcion: "Responde 10 preguntas, comparte tu reto y descubre quién manda en el temario.", palabra: "DUELO" },
  articulo: { titulo: "El artículo del día", etiqueta: "Un reto nuevo cada día", descripcion: "Adivina el artículo de la Constitución en seis intentos y comparte tu cuadrícula.", palabra: "ARTICULO" },
  reflejos: { titulo: "30 segundos. ¿Cuántos aciertas?", etiqueta: "Psicotécnico de reflejos", descripcion: "Pulsa solo cuando aparezca la señal. Cada error resta. Cada décima cuenta.", palabra: "REFLEJOS" },
  provincia: { titulo: "Pon a tu provincia en lo más alto", etiqueta: "Ranking de provincias", descripcion: "Haz el test, suma tu nota y compara el resultado de tu provincia.", palabra: "PROVINCIA" },
  "1995": { titulo: "¿Habrías aprobado en 1995?", etiqueta: "Examen de otra época", descripcion: "Preguntas clásicas, reglas actuales y un veredicto que enfrenta dos generaciones.", palabra: "1995" },
  falla: { titulo: "El 80 % falla esta", etiqueta: "Una pregunta · cero excusas", descripcion: "Parece fácil hasta que tienes que elegir. Comprueba de qué lado estás.", palabra: "FALLA" },
  bingo: { titulo: "Bingo del opositor", etiqueta: "Demasiado real", descripcion: "Marca todo lo que te haya pasado estudiando y comparte tu nivel de sufrimiento.", palabra: "BINGO" },
  horas: { titulo: "¿Cuánto llevas estudiado?", etiqueta: "Calculadora de horas", descripcion: "Convierte meses, semanas y horas de estudio en una cifra que impone respeto.", palabra: "HORAS" },
  pasaporte: { titulo: "Tu pasaporte de opositor", etiqueta: "Identidad ProLince", descripcion: "Crea una tarjeta personal con tu nivel, racha y tema fuerte. No es un documento oficial.", palabra: "PASAPORTE" },
};

export function resolverViral(id: ViralId, datos: unknown): string | null {
  if (!datos || typeof datos !== "object") return null;
  const d = datos as Record<string, unknown>;
  if (id === "especialidad" && Array.isArray(d.respuestas) && d.respuestas.length === 10) {
    const conteo = [0, 0, 0, 0];
    for (const n of d.respuestas) if (Number.isInteger(n) && Number(n) >= 0 && Number(n) < 4) conteo[Number(n)]++;
    return especialidadesVirales[conteo.indexOf(Math.max(...conteo))];
  }
  if (["duelo", "provincia", "1995"].includes(id) && Array.isArray(d.respuestas) && d.respuestas.length === 10) {
    return d.respuestas.reduce<number>((s, n, i) => s + (n === preguntasConocimiento[i].correcta ? 1 : 0), 0).toString();
  }
  if (id === "falla" && Array.isArray(d.respuestas) && d.respuestas.length === 1) return (d.respuestas[0] === preguntasConocimiento[4].correcta ? 1 : 0).toString();
  if (id === "reflejos" && Number.isFinite(d.puntos) && Number(d.puntos) >= 0 && Number(d.puntos) <= 999) return Math.round(Number(d.puntos)).toString();
  if (id === "articulo" && Number.isInteger(d.intentos) && Number(d.intentos) >= 1 && Number(d.intentos) <= 7) return String(d.intentos);
  if (id === "bingo" && Array.isArray(d.marcadas)) return String(Math.min(16, d.marcadas.length));
  if (id === "horas" && Number.isFinite(d.horas) && Number(d.horas) >= 0 && Number(d.horas) <= 100000) return String(Math.round(Number(d.horas)));
  if (id === "pasaporte" && typeof d.nivel === "string" && ["Cadete", "Aspirante", "Veterano", "Élite"].includes(d.nivel)) return d.nivel;
  return null;
}
