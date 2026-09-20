/**
 * PENDIENTE — IMPORTANTE: estos testimonios son un borrador.
 *
 * Un testimonio es una afirmación sobre una persona concreta: o es real y está autorizado por
 * escrito, o no se publica. Antes de salir a producción hay que sustituirlos por los de alumnos
 * reales, con su permiso para usar nombre, promoción y destino.
 *
 * Las fotos van en `public/testimonios/<slug>.jpg`, cuadradas y de 400×400 como mínimo. Mientras
 * el fichero no exista, la tarjeta enseña las iniciales sobre el verde suave.
 */
export type Testimonio = {
  slug: string;
  nombre: string;
  promocion: string;
  destino: string;
  curso: string;
  foto: string;
  texto: string;
};

export const testimonios: Testimonio[] = [
  {
    slug: "alvaro-m",
    nombre: "Álvaro M.",
    promocion: "Promoción 2024",
    destino: "Comandancia de Málaga",
    curso: "Acceso a la Guardia Civil",
    foto: "/testimonios/alvaro-m.jpg",
    texto:
      "Trabajaba de lunes a sábado y pensaba que no me iba a dar la vida. Lo que me salvó fue el plan por semanas: sabía exactamente qué tocaba cada día y dejé de perder tiempo decidiendo por dónde seguir.",
  },
  {
    slug: "noelia-r",
    nombre: "Noelia R.",
    promocion: "Promoción 2024",
    destino: "Agrupación de Tráfico",
    curso: "Acceso a la Guardia Civil",
    foto: "/testimonios/noelia-r.jpg",
    texto:
      "Suspendí la primera. Volver con el histórico de simulacros delante fue otra cosa: vi negro sobre blanco que mi problema era el psicotécnico, no el temario, y pude apretar donde tocaba.",
  },
  {
    slug: "sergio-d",
    nombre: "Sergio D.",
    promocion: "Promoción 2023",
    destino: "Comandancia de Sevilla",
    curso: "Acceso a la Guardia Civil",
    foto: "/testimonios/sergio-d.jpg",
    texto:
      "Los simulacros cronometrados me quitaron el susto del día del examen. Cuando me senté allí ya había hecho aquello veinte veces, y eso se nota en las dos primeras preguntas.",
  },
  {
    slug: "lucia-f",
    nombre: "Lucía F.",
    promocion: "Promoción 2025",
    destino: "Comandancia de Valencia",
    curso: "Colegio de Guardias Jóvenes",
    foto: "/testimonios/lucia-f.jpg",
    texto:
      "Entré por el Colegio con 16 años y compaginarlo con 4.º de la ESO daba respeto. Las sesiones eran cortas y podía hacer tests en el móvil de camino al instituto, así que cundía sin quitarme tardes.",
  },
  {
    slug: "ivan-p",
    nombre: "Iván P.",
    promocion: "Promoción 2023",
    destino: "SEPRONA",
    curso: "Acceso a la Guardia Civil",
    foto: "/testimonios/ivan-p.jpg",
    texto:
      "Venía de no hacer deporte y las marcas me parecían imposibles. Empezar lo físico el primer mes y no el último fue la diferencia entre llegar justo y llegar sobrado.",
  },
  {
    slug: "carmen-l",
    nombre: "Carmen L.",
    promocion: "Promoción 2025",
    destino: "Comandancia de Zaragoza",
    curso: "Acceso a la Guardia Civil",
    foto: "/testimonios/carmen-l.jpg",
    texto:
      "Lo que más agradecí fue que no me vendieran humo. Me dijeron desde el principio cuántas horas hacían falta y qué pasaba si no aprobaba a la primera. Con eso claro, te organizas.",
  },
];
