export const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL ?? "";
export const SUPABASE_ANON = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ?? "";

/**
 * La web tiene que construirse y servirse aunque Supabase no esté configurado todavía. Cuando
 * no lo está, el blog enseña su estado vacío y el panel explica qué falta, en lugar de reventar
 * el build entero.
 */
export const supabaseConfigurado = Boolean(SUPABASE_URL && SUPABASE_ANON);

/** Editor único del blog. Debe coincidir con `public.es_editor_blog()` en la migración. */
export const CORREO_EDITOR = process.env.NEXT_PUBLIC_ADMIN_EMAIL ?? "admin@academiaprolince.com";
