import { z } from "zod";

// Cambia estos valores cada día desde el panel de props de Remotion Studio
export const mensajeDelDiaSchema = z.object({
  animo: z.array(z.string()).length(3),
  pregunta: z.string(),
  opciones: z.array(z.string()).length(4),
  correcta: z.enum(["A", "B", "C", "D"]),
  explicacion: z.string(),
});

export type MensajeDelDiaProps = z.infer<typeof mensajeDelDiaSchema>;

export const mensajeDelDiaDefaultProps: MensajeDelDiaProps = {
  animo: [
    "No hace falta hacerlo perfecto.",
    "Hace falta no rendirse.",
    "Cada test de hoy te acerca un paso más a tu plaza en la Guardia Civil.",
  ],
  pregunta:
    "Según el artículo 104.1 de la Constitución, las Fuerzas y Cuerpos de Seguridad actúan bajo la dependencia de:",
  opciones: [
    "Las Cortes Generales",
    "El Gobierno",
    "El Ministerio de Defensa",
    "El Consejo General del Poder Judicial",
  ],
  correcta: "B",
  explicacion:
    "Art. 104.1 CE: «Las Fuerzas y Cuerpos de seguridad, bajo la dependencia del Gobierno, tendrán como misión proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana».",
};

export const DURACION = {
  intro: 90,
  animo: 300,
  pregunta: 540,
  outro: 150,
  transicion: 15,
};

export const DURACION_TOTAL =
  DURACION.intro +
  DURACION.animo +
  DURACION.pregunta +
  DURACION.outro -
  3 * DURACION.transicion;
