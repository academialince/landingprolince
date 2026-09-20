/**
 * PENDIENTE: las biografías son un borrador y las fotos no existen todavía.
 *
 * Cada ficha espera un retrato vertical en `public/equipo/<slug>.jpg`, recortado a 4:5 y de
 * 800×1000 px como mínimo. Mientras el fichero no exista, la ficha enseña las iniciales sobre
 * el verde suave en lugar de un hueco roto.
 */
export type Miembro = {
  slug: string;
  nombre: string;
  cargo: string;
  foto: string;
  bio: string[];
  foco: string[];
};

export const equipo: Miembro[] = [
  {
    slug: "juan",
    nombre: "Juan",
    cargo: "Dirección y preparación de Ciencias Jurídicas",
    foto: "/equipo/juan.jpg",
    bio: [
      "Lleva más de una década dando clase de temario jurídico a opositores y es quien decide qué entra y qué se queda fuera de cada bloque.",
      "Su obsesión es que nadie estudie de más: si un tema cae poco y ocupa tres tardes, lo dice y lo recorta. Es también quien revisa cada cambio normativo antes de que llegue al alumno.",
    ],
    foco: ["Constitución y derecho penal", "Estructura del temario", "Actualización normativa"],
  },
  {
    slug: "juan-carlos",
    nombre: "Juan Carlos",
    cargo: "Psicotécnicos, ortografía e inglés",
    foto: "/equipo/juan-carlos.jpg",
    bio: [
      "Se ocupa de las tres partes que la gente descuida hasta que las suspende. Diseña las baterías de psicotécnicos y las tandas de ortografía que llevan el sello de la casa.",
      "Defiende que el psicotécnico no se estudia, se entrena, y que quince minutos diarios rinden más que una tarde entera el fin de semana.",
    ],
    foco: ["Aptitud verbal y numérica", "Ortografía aplicada", "Inglés de la prueba"],
  },
  {
    slug: "hector",
    nombre: "Héctor",
    cargo: "Preparación física",
    foto: "/equipo/hector.jpg",
    bio: [
      "Monta los planes de entrenamiento y las marcas de referencia de cada convocatoria. Trabaja con quien parte de cero y con quien ya corre, que necesitan cosas distintas.",
      "Repite una frase en cada sesión: lo físico no se deja para el final. Quien lo aparca hasta los últimos meses llega justo a las marcas, y eso se ve en los resultados.",
    ],
    foco: ["Planes por nivel", "Marcas por categoría", "Prevención de lesiones"],
  },
  {
    slug: "marcos",
    nombre: "Marcos",
    cargo: "Plataforma y producto",
    foto: "/equipo/marcos.jpg",
    bio: [
      "Construye y mantiene la plataforma donde ocurre todo: el temario, los tests, los simulacros y el seguimiento del progreso.",
      "Se encarga de que el alumno sepa siempre por dónde iba y de que los datos que ve sean los de verdad. Si algo se puede medir en lugar de intuir, lo mide.",
    ],
    foco: ["Plataforma de estudio", "Simulacros y corrección", "Datos de progreso"],
  },
];

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
