// Tramos de voz de la locución de ElevenLabs (public/destino/locucion.mp3, 49,32 s), medidos con
// silencedetect de ffmpeg (-35 dB, 0,25 s): cada tramo es una frase del guion.
export type Tramo = { inicio: number; fin: number; texto: string; pesos?: number[] };

export const TRAMOS: Tramo[] = [
  { inicio: 0.03, fin: 0.38, texto: "¡Para!" },
  { inicio: 0.76, fin: 3.48, texto: "¿Sabes ya cuál va a ser tu primer destino en la Guardia Civil?" },
  { inicio: 3.95, fin: 6.33, texto: "Porque aquí… ya hay gente peleándolo." },
  { inicio: 6.75, fin: 8.36, texto: "Esto es Mi primer destino:" },
  { inicio: 8.72, fin: 11.52, texto: "un mapa con todas las comandancias y puestos de España." },
  // «1318» se pronuncia «mil trescientos dieciocho»: su peso es el de la palabra hablada.
  { inicio: 11.9, fin: 14.34, texto: "¡1318 destinos reales!", pesos: [27, 9, 8] },
  { inicio: 14.88, fin: 17.81, texto: "Entras con tu cuenta de Prolince, buscas tu futuro destino…" },
  { inicio: 18.09, fin: 19.15, texto: "y plantas tu bandera." },
  { inicio: 19.52, fin: 21.59, texto: "Si llegas el primero, ¡lo fundas tú!" },
  { inicio: 22.04, fin: 22.96, texto: "¿Y cómo se defiende?" },
  { inicio: 23.3, fin: 24.02, texto: "Estudiando." },
  { inicio: 24.41, fin: 27.74, texto: "Cada lección, cada test y cada día de estudio suman puntos." },
  { inicio: 28.11, fin: 30.39, texto: "Y si encadenas racha… ¡multiplicas!" },
  { inicio: 30.75, fin: 32.87, texto: "Tu destino compite contra toda España:" },
  {
    inicio: 33.19,
    fin: 37.73,
    texto: "clasificación, derbi semanal entre comandancias… ¡y el destino en llamas de la semana!",
  },
  { inicio: 38.14, fin: 41.7, texto: "Y mientras, subes de empleo: de Aspirante… ¡a Cabo Mayor!" },
  { inicio: 42.18, fin: 42.75, texto: "Así que dime:" },
  { inicio: 43.08, fin: 44.39, texto: "¿qué destino vas a defender tú?" },
  { inicio: 44.87, fin: 45.76, texto: "Te leo en comentarios." },
  { inicio: 46.23, fin: 47.27, texto: "Mi primer destino." },
  { inicio: 47.56, fin: 49.3, texto: "Solo para alumnos de Prolince." },
];

export const DURACION_LOCUCION = 49.32;

export type Palabra = { texto: string; inicio: number; fin: number };

// Reparte el tiempo de cada tramo entre sus palabras según su longitud; los puntos suspensivos y
// las comas añaden la pausa que hace la voz.
const peso = (p: string) =>
  p.replace(/[^\p{L}\p{N}]/gu, "").length + 1 + (p.endsWith("…") ? 5 : 0) + (/[,:]$/.test(p) ? 1.5 : 0);

export const palabrasDe = (t: Tramo): Palabra[] => {
  const textos = t.texto.split(" ");
  const pesos = t.pesos ?? textos.map(peso);
  const total = pesos.reduce((a, b) => a + b, 0);
  let acumulado = 0;
  return textos.map((texto, i) => {
    const inicio = t.inicio + ((t.fin - t.inicio) * acumulado) / total;
    acumulado += pesos[i];
    return { texto, inicio, fin: t.inicio + ((t.fin - t.inicio) * acumulado) / total };
  });
};

/** Instante (s) en que empieza a decirse la palabra que contiene `fragmento` dentro del tramo. */
export const momento = (tramo: number, fragmento: string) => {
  const p = palabrasDe(TRAMOS[tramo]).find((w) => w.texto.toLowerCase().includes(fragmento));
  if (!p) throw new Error(`«${fragmento}» no está en el tramo ${tramo}`);
  return p.inicio;
};

// Páginas de subtítulos: como mucho 3 palabras, y se corta tras una coma o unos puntos suspensivos.
export const PAGINAS: Palabra[][] = TRAMOS.flatMap((t) => {
  const paginas: Palabra[][] = [];
  let actual: Palabra[] = [];
  for (const p of palabrasDe(t)) {
    actual.push(p);
    if (actual.length === 3 || /[,…:]$/.test(p.texto)) {
      paginas.push(actual);
      actual = [];
    }
  }
  if (actual.length) paginas.push(actual);
  return paginas;
});
