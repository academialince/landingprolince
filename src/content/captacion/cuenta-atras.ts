import { temas } from "./plan";

/**
 * «¿Te da tiempo?». Con la fecha del examen y los temas que ya llevas, calcula el ritmo
 * semanal necesario para terminar el temario dejando las últimas semanas para repasar y hacer
 * simulacros. Es una cuenta sencilla y transparente, no una promesa.
 *
 * Lo usan la landing y el servidor; `hoy` se pasa siempre desde fuera.
 */

export const TOTAL_TEMAS = temas.length;
export const SEMANAS_REPASO = 4;
/** Antelación mínima y máxima para que el cálculo tenga sentido. */
const DIAS = { min: 7, max: 3 * 366 } as const;

export type DatosCuentaAtras = { fecha: string; temasHechos: number };
export type Nivel = "hecho" | "holgado" | "asumible" | "exigente" | "apretado";

export const niveles: Record<Nivel, { nombre: string; texto: string; ok: boolean }> = {
  hecho: {
    nombre: "Temario visto: toca repasar",
    texto: "Ya llevas los 23 temas. Todo el tiempo que queda es para repasar, hacer tests mezclados y simulacros completos.",
    ok: true,
  },
  holgado: {
    nombre: "Te da tiempo de sobra",
    texto: "Vas con margen: menos de un tema a la semana. Aprovéchalo para dar más vueltas al temario, que es lo que sube la nota.",
    ok: true,
  },
  asumible: {
    nombre: "Te da tiempo",
    texto: "Es un ritmo asumible si eres constante. La clave es no saltarte semanas: cada una que pierdas, la tendrás que recuperar.",
    ok: true,
  },
  exigente: {
    nombre: "Te da tiempo, pero justo",
    texto: "Es un ritmo exigente: hace falta estudiar casi a diario y seguir un plan. Sin margen para semanas flojas.",
    ok: false,
  },
  apretado: {
    nombre: "Muy apretado",
    texto: "Con este ritmo es difícil ver todo el temario con calidad. Prioriza los temas que más preguntas dan y estudia con tests desde el primer día.",
    ok: false,
  },
};

const MS_DIA = 86_400_000;
const soloFecha = (d: Date) => Date.UTC(d.getUTCFullYear(), d.getUTCMonth(), d.getUTCDate());

export function validarCuentaAtras(datos: unknown, hoy: Date): DatosCuentaAtras | null {
  const { fecha, temasHechos } = (datos ?? {}) as Partial<DatosCuentaAtras>;
  if (typeof fecha !== "string" || !/^\d{4}-\d{2}-\d{2}$/.test(fecha)) return null;
  const t = Date.parse(`${fecha}T00:00:00Z`);
  if (Number.isNaN(t)) return null;
  const dias = Math.round((t - soloFecha(hoy)) / MS_DIA);
  // Un día de margen por la diferencia horaria entre el navegador y el servidor.
  if (dias < DIAS.min - 1 || dias > DIAS.max) return null;
  if (!Number.isInteger(temasHechos) || temasHechos! < 0 || temasHechos! > TOTAL_TEMAS) return null;
  return { fecha, temasHechos: temasHechos! };
}

export function calcularCuentaAtras(datos: unknown, hoy: Date) {
  const d = validarCuentaAtras(datos, hoy);
  if (!d) return null;
  const examen = Date.parse(`${d.fecha}T00:00:00Z`);
  const dias = Math.max(0, Math.round((examen - soloFecha(hoy)) / MS_DIA));
  const semanas = Math.max(1, Math.floor(dias / 7));
  // Las últimas semanas, para repasar y hacer simulacros. Si queda poco, una de cada cuatro.
  const repaso = semanas >= SEMANAS_REPASO * 2 ? SEMANAS_REPASO : Math.max(1, Math.floor(semanas / 4));
  const estudio = Math.max(1, semanas - repaso);
  const pendientes = TOTAL_TEMAS - d.temasHechos;
  const ritmo = pendientes / estudio;
  const nivel: Nivel =
    pendientes === 0 ? "hecho" : ritmo <= 0.75 ? "holgado" : ritmo <= 1.5 ? "asumible" : ritmo <= 2.5 ? "exigente" : "apretado";

  // Hitos: cuántos temas tendrías que llevar al final de cada tramo del estudio (hasta 6).
  const tramos = Math.min(6, estudio);
  const hitos = Array.from({ length: tramos }, (_, i) => {
    const semana = Math.round(((i + 1) * estudio) / tramos);
    const fin = new Date(soloFecha(hoy) + semana * 7 * MS_DIA);
    return {
      semana,
      fecha: fin.toLocaleDateString("es-ES", { day: "numeric", month: "short", timeZone: "UTC" }).replace(".", ""),
      temas: Math.min(TOTAL_TEMAS, d.temasHechos + Math.round(ritmo * semana)),
    };
  });

  return {
    datos: d,
    dias,
    semanas,
    repaso,
    estudio,
    pendientes,
    ritmo: Math.round(ritmo * 100) / 100,
    diasPorTema: pendientes ? Math.round((estudio * 7) / pendientes) : 0,
    nivel,
    hitos,
  };
}
