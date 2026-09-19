/**
 * PENDIENTE: testimonios reales.
 *
 * Se deja vacío a propósito. Un testimonio es una afirmación sobre una persona concreta: o es
 * real y está autorizado, o no se publica. La sección de la portada no se renderiza mientras
 * este array esté vacío.
 */
export type Testimonio = {
  nombre: string;
  promocion: string;
  destino: string;
  texto: string;
};

export const testimonios: Testimonio[] = [];
