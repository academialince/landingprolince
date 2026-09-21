import "server-only";
import { createClient } from "@supabase/supabase-js";
import { SUPABASE_ANON, SUPABASE_URL, supabaseConfigurado } from "./config";

/** Las páginas públicas nunca heredan la sesión del editor ni sus permisos de lectura. */
export function supabasePublico() {
  if (!supabaseConfigurado) return null;
  return createClient(SUPABASE_URL, SUPABASE_ANON, {
    auth: { persistSession: false, autoRefreshToken: false, detectSessionInUrl: false },
  });
}
