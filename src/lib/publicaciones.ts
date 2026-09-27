import "server-only";
import { supabaseServidor } from "@/lib/supabase/server";

export const BUCKET_PUBLICACIONES = "publicaciones";

export type Publicacion = {
  id: string;
  tipo: string;
  fecha: string;
  titulo: string;
  descripcion: string;
  video_path: string | null;
  portada_path: string | null;
  creado_en: string;
};

/** RLS solo deja leer al editor: con otra cuenta vuelve vacío, no con error. */
export async function listarPublicaciones(tipo?: string) {
  const sb = await supabaseServidor();
  if (!sb) return { filas: [] as Publicacion[], error: null };
  let consulta = sb.from("publicaciones").select("*").order("fecha", { ascending: false });
  if (tipo) consulta = consulta.eq("tipo", tipo);
  const { data, error } = await consulta;
  return { filas: (data ?? []) as Publicacion[], error: error?.message ?? null };
}

export async function publicacionPorFecha(tipo: string, fecha: string) {
  const sb = await supabaseServidor();
  if (!sb) return null;
  const { data } = await sb.from("publicaciones").select("*").eq("tipo", tipo).eq("fecha", fecha).maybeSingle();
  return (data as Publicacion | null) ?? null;
}

/**
 * URLs firmadas de una hora: una para ver el archivo en la página y otra que fuerza la descarga
 * con su nombre, que es la que se usa para subirlo a la red social.
 */
export async function urlsFirmadas(ruta: string | null) {
  if (!ruta) return null;
  const sb = await supabaseServidor();
  if (!sb) return null;
  const almacen = sb.storage.from(BUCKET_PUBLICACIONES);
  const nombre = ruta.split("/").pop() ?? "archivo";
  const [ver, descargar] = await Promise.all([
    almacen.createSignedUrl(ruta, 3600),
    almacen.createSignedUrl(ruta, 3600, { download: nombre }),
  ]);
  if (!ver.data || !descargar.data) return null;
  return { ver: ver.data.signedUrl, descargar: descargar.data.signedUrl, nombre };
}
