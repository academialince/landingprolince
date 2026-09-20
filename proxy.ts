import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

/**
 * En Next 16 esto ya no se llama `middleware`. Su trabajo aquí es refrescar la sesión de
 * Supabase y evitar que alguien sin sesión vea el armazón del panel.
 *
 * No es la frontera de seguridad: esa es RLS. Si esto fallara, la base de datos seguiría
 * negando cualquier escritura que no venga del editor.
 */
export async function proxy(request: NextRequest) {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const anon = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  // Sin configurar, /admin explica por sí solo lo que falta en lugar de redirigir a ciegas.
  if (!url || !anon) return NextResponse.next();

  let respuesta = NextResponse.next({ request });

  const supabase = createServerClient(url, anon, {
    cookies: {
      getAll: () => request.cookies.getAll(),
      setAll: (lista) => {
        lista.forEach(({ name, value }) => request.cookies.set(name, value));
        respuesta = NextResponse.next({ request });
        lista.forEach(({ name, value, options }) => respuesta.cookies.set(name, value, options));
      },
    },
  });

  const {
    data: { user },
  } = await supabase.auth.getUser();

  const esEntrar = request.nextUrl.pathname.startsWith("/admin/entrar");

  if (!user && !esEntrar) {
    const destino = request.nextUrl.clone();
    destino.pathname = "/admin/entrar";
    destino.searchParams.set("desde", request.nextUrl.pathname);
    return NextResponse.redirect(destino);
  }

  if (user && esEntrar) {
    const destino = request.nextUrl.clone();
    destino.pathname = "/admin";
    destino.search = "";
    return NextResponse.redirect(destino);
  }

  return respuesta;
}

export const config = {
  matcher: ["/admin/:path*"],
};
