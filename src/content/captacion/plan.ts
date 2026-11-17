import banco from "@/content/test-gratis/guardia-civil.json";

/**
 * «Tu plan de estudio personalizado». Con las horas por semana, los meses que faltan y el punto
 * de partida, reparte los 23 temas en semanas y en tres fases: primera vuelta (o repaso, si ya
 * se ha dado una), segunda vuelta y simulacros. Es un reparto orientativo y transparente, no una
 * promesa de aprobado.
 *
 * Lo usan la landing (para enseñarlo) y el servidor (para enviarlo por email), con el mismo
 * resultado para los mismos datos.
 */

/** Títulos de los 23 temas, sacados del banco de preguntas. */
export const temas: { n: number; titulo: string }[] = [...new Map(banco.map((q) => [q.tema, q.temaTitulo])).entries()]
  .sort(([a], [b]) => a - b)
  .map(([n, titulo]) => ({ n, titulo }));

export type Partida = "cero" | "vuelta";
export const partidas: Record<Partida, string> = {
  cero: "Empiezo de cero",
  vuelta: "Ya he dado una vuelta al temario",
};

export type DatosPlan = { horas: number; meses: number; partida: Partida };

export const HORAS = { min: 5, max: 40 } as const;
export const MESES = { min: 2, max: 18 } as const;

export type Fase = { nombre: string; desde: number; hasta: number; descripcion: string };
export type Semana = { n: number; inicio: string; fase: string; temas: number[]; foco: string };

const SEMANAS_POR_MES = 4.345;

export function validarPlan(datos: unknown): DatosPlan | null {
  const { horas, meses, partida } = (datos ?? {}) as Partial<DatosPlan>;
  if (!Number.isInteger(horas) || horas! < HORAS.min || horas! > HORAS.max) return null;
  if (!Number.isInteger(meses) || meses! < MESES.min || meses! > MESES.max) return null;
  if (partida !== "cero" && partida !== "vuelta") return null;
  return { horas: horas!, meses: meses!, partida };
}

/** Lunes de la semana siguiente a `hoy`, para que el plan empiece en una semana entera. */
function proximoLunes(hoy: Date) {
  const d = new Date(Date.UTC(hoy.getUTCFullYear(), hoy.getUTCMonth(), hoy.getUTCDate()));
  const dia = d.getUTCDay(); // 0 domingo
  d.setUTCDate(d.getUTCDate() + ((8 - dia) % 7 || 7));
  return d;
}

const fecha = (d: Date) => d.toLocaleDateString("es-ES", { day: "numeric", month: "short", timeZone: "UTC" }).replace(".", "");

/** Reparte `temas` en `semanas` de forma lo más pareja posible, en orden. */
function repartir(semanas: number, lista: number[]) {
  const res: number[][] = Array.from({ length: semanas }, () => []);
  lista.forEach((t, i) => res[Math.min(semanas - 1, Math.floor((i * semanas) / lista.length))].push(t));
  return res;
}

export function generarPlan(datos: DatosPlan, hoy: Date) {
  const total = Math.max(4, Math.round(datos.meses * SEMANAS_POR_MES));
  // Reparto de las semanas: quien empieza de cero dedica más a la primera vuelta.
  const pesos = datos.partida === "cero" ? [0.55, 0.3, 0.15] : [0.35, 0.4, 0.25];
  const s1 = Math.max(1, Math.round(total * pesos[0]));
  const s3 = Math.max(1, Math.round(total * pesos[2]));
  const s2 = Math.max(1, total - s1 - s3);
  const nums = temas.map((t) => t.n);

  const nombres = datos.partida === "cero" ? ["Primera vuelta", "Segunda vuelta", "Simulacros"] : ["Repaso a fondo", "Segunda vuelta", "Simulacros"];
  const fases: Fase[] = [
    {
      nombre: nombres[0],
      desde: 1,
      hasta: s1,
      descripcion:
        datos.partida === "cero"
          ? "Estudias cada tema por primera vez y haces su test al terminarlo."
          : "Repasas cada tema a fondo y haces su test para localizar lo que falla.",
    },
    { nombre: nombres[1], desde: s1 + 1, hasta: s1 + s2, descripcion: "Repasas todo más rápido, con tests mezclados de varios temas." },
    { nombre: nombres[2], desde: s1 + s2 + 1, hasta: total, descripcion: "Simulacros completos con tiempo y repaso de tus fallos." },
  ];

  const lunes = proximoLunes(hoy);
  const vuelta1 = repartir(s1, nums);
  const vuelta2 = repartir(s2, nums);
  const semanas: Semana[] = Array.from({ length: total }, (_, i) => {
    const inicio = new Date(lunes);
    inicio.setUTCDate(lunes.getUTCDate() + i * 7);
    if (i < s1) return { n: i + 1, inicio: fecha(inicio), fase: nombres[0], temas: vuelta1[i], foco: "Estudio y test de cada tema" };
    if (i < s1 + s2) return { n: i + 1, inicio: fecha(inicio), fase: nombres[1], temas: vuelta2[i - s1], foco: "Repaso y tests mezclados" };
    return { n: i + 1, inicio: fecha(inicio), fase: nombres[2], temas: [], foco: "Simulacro completo y repaso de fallos" };
  });

  // Reparto de las horas de una semana. El inglés y la ortografía, poco y a diario.
  const h = datos.horas;
  const semanaTipo = [
    { tarea: "Temario", horas: Math.round(h * 0.6 * 2) / 2 },
    { tarea: "Tests y simulacros", horas: Math.round(h * 0.2 * 2) / 2 },
    { tarea: "Inglés, ortografía y gramática", horas: Math.round(h * 0.1 * 2) / 2 },
    { tarea: "Psicotécnicos", horas: Math.round(h * 0.1 * 2) / 2 },
  ];

  const horasTotales = total * h;
  const aviso =
    datos.partida === "cero" && (s1 < 12 || horasTotales < 400)
      ? "Es un plan muy apretado para empezar de cero: tocas a menos de media semana por tema. Si puedes, sube horas o date más meses."
      : datos.partida === "cero" && h < 15
        ? "Con menos de 15 horas a la semana se puede, pero la constancia lo es todo: mejor poco cada día que todo el sábado."
        : null;

  return { total, fases, semanas, semanaTipo, horasTotales, aviso, empieza: fecha(lunes) };
}
