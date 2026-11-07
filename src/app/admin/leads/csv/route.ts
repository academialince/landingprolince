import { supabaseServidor } from "@/lib/supabase/server";
import { recursoPorId } from "@/content/captacion/recursos";

/**
 * Exporta los leads en CSV (separado por punto y coma y con BOM, para que Excel en español lo
 * abra bien a la primera). La protección es RLS: sin sesión de editor la consulta vuelve vacía.
 */
export async function GET(request: Request) {
  const sb = await supabaseServidor();
  if (!sb) return new Response("Supabase no está configurado", { status: 503 });

  const recurso = new URL(request.url).searchParams.get("recurso");
  let consulta = sb
    .from("leads")
    .select("recurso, nombre, email, telefono, resultado, utm, creado_en")
    .order("creado_en", { ascending: false });
  if (recurso && recursoPorId(recurso)) consulta = consulta.eq("recurso", recurso);

  const { data, error } = await consulta;
  if (error) return new Response(error.message, { status: 500 });

  const celda = (v: unknown) => {
    const s = v == null ? "" : String(v);
    return /[";\n\r]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s;
  };

  const cabecera = ["fecha", "landing", "nombre", "email", "telefono", "resultado", "utm_source", "utm_medium", "utm_campaign", "utm_content"];
  const lineas = (data ?? []).map((f) => {
    const r = recursoPorId(f.recurso);
    const utm = (f.utm ?? {}) as Record<string, string>;
    return [
      f.creado_en,
      r?.nombre ?? f.recurso,
      f.nombre,
      f.email,
      f.telefono,
      f.resultado ? (r?.etiquetaResultado(f.resultado) ?? f.resultado) : "",
      utm.utm_source,
      utm.utm_medium,
      utm.utm_campaign,
      utm.utm_content,
    ]
      .map(celda)
      .join(";");
  });

  const fecha = new Date().toISOString().slice(0, 10);
  return new Response("﻿" + [cabecera.join(";"), ...lineas].join("\r\n"), {
    headers: {
      "Content-Type": "text/csv; charset=utf-8",
      "Content-Disposition": `attachment; filename="leads-${recurso ?? "todos"}-${fecha}.csv"`,
      "Cache-Control": "no-store",
    },
  });
}
