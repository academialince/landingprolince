import { calcularPerfil, perfiles, type ClavePerfil } from "./tipo-opositor";
import { corregir } from "./simulacro";
import { corregirOrtografia, MAX_ERRORES, NUM_PALABRAS } from "./ortografia";
import { corregirPsico } from "./psicotecnico";
import { corregirIngles } from "./ingles";
import { evaluarFisicas } from "./fisicas";
import { evaluarRequisitos } from "./requisitos";
import { partidas, validarPlan, type Partida } from "./plan";
import { calcularSueldo, destinos, especialidades, type Destino, type Especialidad } from "./sueldo";

/**
 * Registro de las landing de captación. Cada una tiene un `recurso` (lo que se guarda en la
 * columna `leads.recurso`), su ruta, la palabra clave del anuncio y cómo se calcula y se nombra
 * su resultado. Añadir una landing nueva es añadir una entrada aquí.
 */
export type Recurso = {
  id: string;
  nombre: string;
  ruta: string;
  /** Palabra que hay que escribir en Instagram para recibir el enlace. */
  palabraClave: string;
  /**
   * Calcula el resultado en el servidor a partir de las respuestas. Devuelve null si las
   * respuestas no son válidas. Así el resultado guardado no depende de lo que diga el navegador.
   */
  resolver: (respuestas: unknown) => string | null;
  /** Nombre legible del resultado para el panel. */
  etiquetaResultado: (clave: string) => string;
  /**
   * Si el resultado es un número comparable (una nota), la acción devuelve cuántos resultados
   * hay y cuántos están por debajo, para el «has superado al X %».
   */
  comparable?: boolean;
};

export const recursos = {
  "tipo-opositor": {
    id: "tipo-opositor",
    nombre: "¿Qué tipo de opositor eres?",
    ruta: "/que-opositor-eres",
    palabraClave: "PERFIL",
    resolver: (respuestas) => calcularPerfil(respuestas)?.perfil ?? null,
    etiquetaResultado: (clave) => perfiles[clave as ClavePerfil]?.nombre ?? clave,
  },
  simulacro: {
    id: "simulacro",
    nombre: "¿Aprobarías hoy? (simulacro)",
    ruta: "/aprobarias-hoy",
    palabraClave: "SIMULACRO",
    resolver: (respuestas) => {
      const c = corregir(respuestas);
      return c ? c.nota.toFixed(2) : null;
    },
    etiquetaResultado: (nota) => `${nota.replace(".", ",")} / 100`,
    comparable: true,
  },
  ortografia: {
    id: "ortografia",
    nombre: "Test de ortografía",
    ruta: "/test-ortografia",
    palabraClave: "ORTOGRAFIA",
    // Se guardan los aciertos (sobre 20): cuanto más alto, mejor, como pide la comparativa.
    resolver: (respuestas) => corregirOrtografia(respuestas)?.aciertos.toString() ?? null,
    etiquetaResultado: (aciertos) => {
      const errores = NUM_PALABRAS - Number(aciertos);
      return `${errores} ${errores === 1 ? "error" : "errores"} · ${errores <= MAX_ERRORES ? "apto" : "no apto"}`;
    },
    comparable: true,
  },
  psicotecnico: {
    id: "psicotecnico",
    nombre: "Psicotécnico exprés",
    ruta: "/psicotecnico-express",
    palabraClave: "PSICO",
    resolver: (respuestas) => corregirPsico(respuestas)?.nota.toFixed(2) ?? null,
    etiquetaResultado: (nota) => `${nota.replace(".", ",")} / 30`,
    comparable: true,
  },
  ingles: {
    id: "ingles",
    nombre: "Nivel de inglés para el examen",
    ruta: "/nivel-ingles",
    palabraClave: "INGLES",
    resolver: (respuestas) => corregirIngles(respuestas)?.nota.toFixed(2) ?? null,
    etiquetaResultado: (nota) => `${nota.replace(".", ",")} / 20`,
    comparable: true,
  },
  fisicas: {
    id: "fisicas",
    nombre: "¿Pasarías las pruebas físicas?",
    ruta: "/pruebas-fisicas",
    palabraClave: "FISICAS",
    // «apto-4-4» o «no-apto-2-4»: aptas de las que ha indicado.
    resolver: (datos) => {
      const r = evaluarFisicas(datos);
      return r ? `${r.aptas === r.total ? "apto" : "no-apto"}-${r.aptas}-${r.total}` : null;
    },
    etiquetaResultado: (clave) => {
      const [, aptas, total] = clave.match(/(\d+)-(\d+)$/) ?? [];
      return `${clave.startsWith("apto") ? "Apto" : "No apto"} (${aptas}/${total} pruebas)`;
    },
  },
  sueldo: {
    id: "sueldo",
    nombre: "¿Cuánto cobra un guardia civil?",
    ruta: "/sueldo-guardia-civil",
    palabraClave: "SUELDO",
    // «destino|especialidad|años»: lo que interesa para segmentar el seguimiento.
    resolver: (datos) => {
      if (!calcularSueldo(datos)) return null;
      const d = datos as { destino: string; especialidad: string; anios: number };
      return `${d.destino}|${d.especialidad}|${d.anios}`;
    },
    etiquetaResultado: (clave) => {
      const [d, e, a] = clave.split("|");
      return `${destinos[d as Destino]?.nombre ?? d} · ${especialidades[e as Especialidad]?.nombre ?? e} · ${a} años`;
    },
  },
  requisitos: {
    id: "requisitos",
    nombre: "¿Puedes presentarte?",
    ruta: "/requisitos-guardia-civil",
    palabraClave: "REQUISITOS",
    resolver: (datos) => evaluarRequisitos(datos)?.estado ?? null,
    etiquetaResultado: (estado) =>
      ({ ok: "Cumple los requisitos", condicion: "Cumple con condiciones", no: "No cumple algún requisito" })[estado] ?? estado,
  },
  plan: {
    id: "plan",
    nombre: "Tu plan de estudio personalizado",
    ruta: "/plan-de-estudio",
    palabraClave: "PLAN",
    // «15h-8m-cero»: horas por semana, meses y punto de partida.
    resolver: (datos) => {
      const d = validarPlan(datos);
      return d ? `${d.horas}h-${d.meses}m-${d.partida}` : null;
    },
    etiquetaResultado: (clave) => {
      const [, h, m, p] = clave.match(/^(\d+)h-(\d+)m-(\w+)$/) ?? [];
      return h ? `${h} h/semana · ${m} meses · ${partidas[p as Partida]?.toLowerCase() ?? p}` : clave;
    },
  },
} satisfies Record<string, Recurso>;

export type IdRecurso = keyof typeof recursos;

export function recursoPorId(id: string): Recurso | undefined {
  return (recursos as Record<string, Recurso>)[id];
}

/** Parámetros de campaña que se guardan con cada lead. */
export const CAMPOS_UTM = ["utm_source", "utm_medium", "utm_campaign", "utm_content", "utm_term"] as const;
