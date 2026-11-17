import { CONVOCATORIA } from "./datos-oficiales";

/**
 * «¿Puedes presentarte?». Requisitos de la base 2.1 de la convocatoria 2026 (BOE-A-2026-9982),
 * verificados el 7-11-2026. Se exigen el día en que acaba el plazo de solicitudes.
 *
 * La próxima convocatoria (2027) aún no se ha publicado: la edad se calcula con la regla de
 * 2026 (cumplir 18 y no cumplir 41 en el año de la convocatoria) aplicada a 2027, y se avisa.
 */

export const ANIO_OBJETIVO = CONVOCATORIA.anio + 1;
export const EDAD_MIN = 18;
export const EDAD_MAX = 41; // no cumplirlos en el año de la convocatoria

export type Estado = "ok" | "condicion" | "no";

type Opcion = { valor: string; texto: string; estado: Estado; detalle: string };
export type Requisito = { id: string; nombre: string; pregunta: string; ayuda?: string; opciones: Opcion[] };

export const requisitos: Requisito[] = [
  {
    id: "nacionalidad",
    nombre: "Nacionalidad",
    pregunta: "¿Tienes la nacionalidad española?",
    opciones: [
      { valor: "si", texto: "Sí", estado: "ok", detalle: "Se exige la nacionalidad española." },
      { valor: "tramite", texto: "La estoy tramitando", estado: "condicion", detalle: "Tienes que tenerla el día en que acaba el plazo de solicitudes." },
      { valor: "no", texto: "No", estado: "no", detalle: "Es imprescindible tener la nacionalidad española." },
    ],
  },
  {
    id: "titulo",
    nombre: "Estudios",
    pregunta: "¿Qué estudios tienes terminados?",
    ayuda: "Vale cualquier título que dé acceso a FP de Grado Medio.",
    opciones: [
      { valor: "eso", texto: "ESO, Bachillerato o superior", estado: "ok", detalle: "La ESO o un nivel superior cumple el requisito." },
      { valor: "fp", texto: "FP: Técnico Básico o Técnico", estado: "ok", detalle: "Los títulos de Técnico Básico y de Técnico cumplen el requisito." },
      {
        valor: "prueba",
        texto: "Prueba de acceso a FP o acceso a la universidad para mayores de 25",
        estado: "ok",
        detalle: "Haber superado la prueba de acceso a Grado Medio o Superior, o el acceso a la universidad para mayores de 25, cumple el requisito.",
      },
      { valor: "cursando", texto: "Lo estoy terminando", estado: "condicion", detalle: "Tienes que tener el título el día en que acaba el plazo de solicitudes." },
      { valor: "ninguno", texto: "Ninguno de estos", estado: "no", detalle: "Necesitas un título que dé acceso a FP de Grado Medio (como la ESO). Si no lo tienes, existen la prueba de acceso a Grado Medio y el curso específico de acceso." },
    ],
  },
  {
    id: "carne",
    nombre: "Carné de conducir B",
    pregunta: "¿Tienes el carné de conducir B?",
    opciones: [
      { valor: "si", texto: "Sí", estado: "ok", detalle: "Se exige el permiso de clase B." },
      { valor: "sacando", texto: "Me lo estoy sacando", estado: "condicion", detalle: "Tienes que tenerlo el día en que acaba el plazo de solicitudes." },
      { valor: "no", texto: "No", estado: "no", detalle: "Se exige el permiso de clase B el día en que acaba el plazo de solicitudes: aún tienes tiempo de sacarlo." },
    ],
  },
  {
    id: "antecedentes",
    nombre: "Antecedentes penales",
    pregunta: "¿Tienes antecedentes penales o una causa penal abierta por delito doloso?",
    opciones: [
      { valor: "no", texto: "No", estado: "ok", detalle: "Se exige no tener antecedentes penales ni estar procesado o con juicio oral abierto por delito doloso." },
      { valor: "si", texto: "Sí", estado: "no", detalle: "Tener antecedentes penales, o estar procesado o con juicio oral abierto por delito doloso, impide presentarse. Si se cancelan, deja de ser un impedimento." },
    ],
  },
  {
    id: "tatuajes",
    nombre: "Tatuajes y piercings",
    pregunta: "¿Tienes tatuajes, piercings o dilataciones?",
    opciones: [
      { valor: "no", texto: "No", estado: "ok", detalle: "Sin problema." },
      { valor: "tatuajes", texto: "Tatuajes normales, aunque se vean", estado: "ok", detalle: "Los tatuajes están permitidos aunque se vean con el uniforme, siempre que su contenido no sea contrario a los valores constitucionales ni a la imagen de la Guardia Civil." },
      {
        valor: "piercings",
        texto: "Piercings, dilataciones o implantes que se ven con el uniforme",
        estado: "condicion",
        detalle: "Con el uniforme no pueden verse argollas, dilataciones, implantes microdermales ni piercings (salvo pendientes). Lo que se pueda quitar no es problema; lo que no, conviene revisarlo antes.",
      },
      { valor: "ofensivos", texto: "Algún tatuaje de contenido ofensivo o violento", estado: "no", detalle: "No se admiten tatuajes contrarios a los valores constitucionales, a las autoridades o a la imagen de la Guardia Civil." },
    ],
  },
  {
    id: "expediente",
    nombre: "Expedientes e inhabilitación",
    pregunta: "¿Te han separado de alguna Administración por expediente disciplinario, o estás inhabilitado?",
    opciones: [
      { valor: "no", texto: "No", estado: "ok", detalle: "Se exige no haber sido separado por expediente disciplinario ni estar inhabilitado." },
      { valor: "si", texto: "Sí", estado: "no", detalle: "La separación por expediente disciplinario o la inhabilitación firme impiden presentarse." },
    ],
  },
];

export type RespuestasRequisitos = { nacimiento: number } & Record<string, string | number>;

export function evaluarEdad(nacimiento: number): { estado: Estado; detalle: string } {
  const edad = ANIO_OBJETIVO - nacimiento;
  if (edad < EDAD_MIN)
    return { estado: "no", detalle: `En ${ANIO_OBJETIVO} cumples ${edad} años: hace falta cumplir ${EDAD_MIN} durante el año de la convocatoria. Podrías presentarte en ${nacimiento + EDAD_MIN}.` };
  if (edad >= EDAD_MAX)
    return { estado: "no", detalle: `En ${ANIO_OBJETIVO} cumples ${edad} años: no se puede cumplir ${EDAD_MAX} durante el año de la convocatoria.` };
  return { estado: "ok", detalle: `En ${ANIO_OBJETIVO} cumples ${edad} años: entre ${EDAD_MIN} y ${EDAD_MAX - 1}, dentro del límite.` };
}

export function evaluarRequisitos(datos: unknown) {
  const d = (datos ?? {}) as Partial<RespuestasRequisitos>;
  const nac = d.nacimiento;
  if (!Number.isInteger(nac) || (nac as number) < 1940 || (nac as number) > ANIO_OBJETIVO) return null;
  const lineas: { id: string; titulo: string; estado: Estado; detalle: string }[] = [
    { id: "edad", titulo: "Edad", ...evaluarEdad(nac as number) },
  ];
  for (const r of requisitos) {
    const o = r.opciones.find((x) => x.valor === d[r.id]);
    if (!o) return null;
    lineas.push({ id: r.id, titulo: r.nombre, estado: o.estado, detalle: o.detalle });
  }
  const estado: Estado = lineas.some((l) => l.estado === "no") ? "no" : lineas.some((l) => l.estado === "condicion") ? "condicion" : "ok";
  return { estado, lineas };
}
