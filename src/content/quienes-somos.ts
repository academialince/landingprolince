/**
 * PENDIENTE: `equipo` se deja vacío hasta tener nombres, cargos y fotos reales con permiso.
 * La sección de equipo no se renderiza mientras tanto. Lo demás describe la forma de trabajar,
 * que no depende de datos por confirmar.
 */
export type Miembro = {
  nombre: string;
  cargo: string;
  bio: string;
  foto?: string;
};

export const equipo: Miembro[] = [];

export const historia = {
  titulo: "Una academia hecha por gente que ha pasado por esto",
  entradilla:
    "ProLince nace de una idea simple: preparar una oposición no debería depender de dónde vives ni de que puedas ir a clase a las siete de la tarde.",
  parrafos: [
    "La mayoría de quienes se presentan a la Guardia Civil compaginan la preparación con un trabajo, un turno rotativo o una familia. El modelo de academia presencial, con horarios fijos y desplazamientos, deja fuera a mucha gente que lo haría bien.",
    "Por eso montamos la preparación entera en una plataforma: el temario, los tests, los simulacros cronometrados y el seguimiento del progreso. Se estudia a la hora que se puede, y lo que se avanza queda registrado para no repetir lo que ya se sabe.",
    "No inventamos un método milagroso. Aplicamos lo que funciona —practicar mucho, medir los fallos y examinarse en condiciones reales— y lo ponemos donde se pueda usar todos los días.",
  ],
};

export const principios = [
  {
    icono: "ShieldCheck",
    titulo: "Te decimos lo que hay",
    detalle:
      "Si una oposición es dura, lo decimos. Si no sabemos cuántas plazas saldrán, no lo inventamos. La fuente válida siempre es el BOE, y así lo enlazamos.",
  },
  {
    icono: "LineChart",
    titulo: "Datos, no sensaciones",
    detalle:
      "Tu preparación se mide: aciertos por bloque, evolución entre simulacros, lecciones completadas. Saber dónde estás es lo que permite corregir a tiempo.",
  },
  {
    icono: "Clock",
    titulo: "Pensado para quien trabaja",
    detalle:
      "Nada de clases en directo a una hora fija. Todo el material está disponible siempre y el progreso se guarda, así que una semana mala no tira por tierra el plan.",
  },
  {
    icono: "RefreshCw",
    titulo: "Suspender no es empezar de cero",
    detalle:
      "La mayoría no aprueba a la primera, y es normal. Tu histórico se conserva para que la siguiente preparación arranque sabiendo qué te costó.",
  },
];

export const compromisos = {
  hacemos: [
    "Mantener el temario al día con la normativa vigente",
    "Avisarte en el tablón cuando se publique algo que te afecte",
    "Corregir las preguntas de respuesta corta que no corrige el sistema",
    "Enseñarte tu posición real frente al resto de alumnos",
  ],
  noHacemos: [
    "Prometerte una plaza ni un porcentaje de aprobados sin respaldo",
    "Inventar urgencias ni plazas limitadas para que te decidas antes",
    "Cobrarte por material que ya está incluido en tu curso",
    "Publicar testimonios que no sean de alumnos reales",
  ],
};
