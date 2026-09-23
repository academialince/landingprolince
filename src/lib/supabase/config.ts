export const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL ?? "";
export const SUPABASE_ANON = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ?? "";

/**
 * La web tiene que construirse y servirse aunque Supabase no esté configurado todavía. Cuando
 * no lo está, el blog enseña su estado vacío y el panel explica qué falta, en lugar de reventar
 * el build entero.
 */
export const supabaseConfigurado = Boolean(SUPABASE_URL && SUPABASE_ANON);

/**
 * Cuentas con acceso al panel. Deben coincidir con `public.es_editor_blog()` en las migraciones:
 * esto solo decide qué enseña la interfaz, la base de datos es la que concede el permiso.
 */
export const CORREOS_EDITORES = ["admin@academiaprolince.com", "marcos@academiaprolince.com"];

/** Correo que se sugiere en la pantalla de acceso. */
export const CORREO_EDITOR = process.env.NEXT_PUBLIC_ADMIN_EMAIL ?? CORREOS_EDITORES[0];

export function esEditor(correo: string | null | undefined) {
  return Boolean(correo && CORREOS_EDITORES.includes(correo.toLowerCase()));
}
