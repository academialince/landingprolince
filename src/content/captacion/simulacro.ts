import banco from "@/content/test-gratis/guardia-civil.json";

/**
 * Mini simulacro «¿Aprobarías hoy?». Preguntas del banco del test gratis (las mismas de la
 * plataforma), una por tema hasta completar el número, con la corrección del examen real: cada
 * acierto suma 1, cada error resta un tercio y las preguntas en blanco no cuentan.
 *
 * Lo usan la landing (cliente) y la acción que guarda el lead (servidor), que vuelve a corregir
 * con el banco en lugar de fiarse de la nota que mande el navegador.
 */

export type PreguntaSimulacro = (typeof banco)[number];

export const preguntasBanco: PreguntaSimulacro[] = banco;

export const NUM_PREGUNTAS = 15;
export const MINUTOS = 12;
/** Mínimo de la prueba de conocimientos sobre 100: por debajo, se queda fuera. */
export const MINIMO = 50;

/** Una respuesta: la opción elegida (0–3) o -1 si se dejó en blanco. */
export type Respuesta = { id: string; r: number };

/** Elige las preguntas: un tema distinto cada vez, al azar. Solo se llama al pulsar, nunca al renderizar. */
export function elegirPreguntas(): PreguntaSimulacro[] {
  const barajar = <T,>(lista: T[]) => {
    const a = [...lista];
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  };
  const porTema = new Map<number, PreguntaSimulacro[]>();
  for (const q of barajar(preguntasBanco)) porTema.set(q.tema, [...(porTema.get(q.tema) ?? []), q]);
  const temas = barajar([...porTema.keys()]).slice(0, NUM_PREGUNTAS);
  return temas.map((t) => porTema.get(t)![0]).sort((a, b) => a.tema - b.tema);
}

export type Correccion = {
  aciertos: number;
  errores: number;
  blancos: number;
  netas: number;
  /** Sobre 100, con dos decimales. */
  nota: number;
};

export function corregir(respuestas: unknown): Correccion | null {
  if (!Array.isArray(respuestas) || respuestas.length !== NUM_PREGUNTAS) return null;
  const vistas = new Set<string>();
  let aciertos = 0;
  let errores = 0;
  let blancos = 0;
  for (const item of respuestas) {
    const { id, r } = (item ?? {}) as Partial<Respuesta>;
    const q = preguntasBanco.find((p) => p.id === id);
    if (!q || vistas.has(q.id) || !Number.isInteger(r) || r! < -1 || r! > 3) return null;
    vistas.add(q.id);
    if (r === -1) blancos++;
    else if (r === q.correcta) aciertos++;
    else errores++;
  }
  const netas = Math.max(0, aciertos - errores / 3);
  const nota = Math.round((netas / NUM_PREGUNTAS) * 10000) / 100;
  return { aciertos, errores, blancos, netas, nota };
}
