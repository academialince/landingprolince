import { z } from "zod";

// Cambia estos valores para cada curiosidad desde el panel de props de Remotion Studio
export const curiosidadSchema = z.object({
  gancho: z.string(),
  fecha: z.string(),
  anio: z.number().int(),
  respuesta: z.string(),
  ademas: z.string(),
  usuario: z.string(),
});

export type CuriosidadProps = z.infer<typeof curiosidadSchema>;

// Curiosidad_01 del carrusel de Instagram
export const curiosidadDefaultProps: CuriosidadProps = {
  gancho: "¿De dónde sale el tricornio?",
  fecha: "1 de septiembre",
  anio: 1844,
  respuesta:
    "En la presentación oficial del Cuerpo, los guardias desfilaron con un sombrero de tres picos de origen francés. Con el tiempo se convirtió en uno de los símbolos de la Guardia Civil y de España.",
  ademas: "Ese mismo día el Duque de Ahumada fue nombrado Inspector General.",
  usuario: "@prolinceacademia",
};

export const DURACION = {
  gancho: 120,
  respuesta: 330,
  ademas: 180,
  cierre: 150,
  transicion: 15,
};

export const DURACION_TOTAL =
  DURACION.gancho +
  DURACION.respuesta +
  DURACION.ademas +
  DURACION.cierre -
  3 * DURACION.transicion;
