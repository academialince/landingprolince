/**
 * Opciones cerradas del formulario de la lista de espera. Las claves tienen que coincidir con
 * los `check` de `supabase/migrations/20260923100000_waitlist.sql`.
 */
export const tiemposOpositando = [
  { valor: "sin-empezar", etiqueta: "Todavía no he empezado" },
  { valor: "menos-6-meses", etiqueta: "Menos de 6 meses" },
  { valor: "6-12-meses", etiqueta: "Entre 6 y 12 meses" },
  { valor: "1-2-anos", etiqueta: "Entre 1 y 2 años" },
  { valor: "mas-2-anos", etiqueta: "Más de 2 años" },
] as const;

export const vecesPresentado = [
  { valor: "0", etiqueta: "Ninguna" },
  { valor: "1", etiqueta: "Una" },
  { valor: "2", etiqueta: "Dos" },
  { valor: "3+", etiqueta: "Tres o más" },
] as const;

export const valoresTiempo = tiemposOpositando.map((t) => t.valor) as [string, ...string[]];
export const valoresVeces = vecesPresentado.map((v) => v.valor) as [string, ...string[]];

export function etiquetaDe(lista: readonly { valor: string; etiqueta: string }[], valor: string) {
  return lista.find((o) => o.valor === valor)?.etiqueta ?? valor;
}
