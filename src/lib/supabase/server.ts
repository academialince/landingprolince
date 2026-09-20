import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
import { SUPABASE_ANON, SUPABASE_URL, supabaseConfigurado } from "./config";

/**
 * Cliente de servidor con la sesión del usuario. Solo clave anónima: la service role key se
 * salta RLS por diseño y este sitio es público, así que no entra en el repositorio.
 */
export async function supabaseServidor() {
  if (!supabaseConfigurado) return null;
  const almacen = await cookies();

  return createServerClient(SUPABASE_URL, SUPABASE_ANON, {
    cookies: {
      getAll: () => almacen.getAll(),
      setAll: (lista) => {
        // En un Server Component las cookies son de solo lectura. El refresco de sesión lo hace
        // proxy.ts, así que aquí se ignora sin ruido.
        try {
          lista.forEach(({ name, value, options }) => almacen.set(name, value, options));
        } catch {
          /* solo lectura */
        }
      },
    },
  });
}
