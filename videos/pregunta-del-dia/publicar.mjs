// Sube la pregunta del día al panel de la web (/admin/publicaciones/pregunta-del-dia) y borra
// las de días anteriores: vídeo, portada y descripción.
//
//   node pregunta-del-dia/publicar.mjs [pregunta-del-dia/lote/<fecha>.json]
//
// Lee pregunta-del-dia/elegida.json (o el JSON indicado, para publicar un día de un lote) y out/pregunta-del-dia-<fecha>.{mp4,png,txt}.
// Necesita SUPABASE_SERVICE_ROLE_KEY en el entorno (nunca en el repositorio). La URL es la del
// proyecto de la web; se puede cambiar con SUPABASE_URL.
import { readFileSync, existsSync } from "node:fs";
import { createClient } from "@supabase/supabase-js";

const URL = process.env.SUPABASE_URL ?? "https://mfclhieniekxksdfnabj.supabase.co";
const CLAVE = process.env.SUPABASE_SERVICE_ROLE_KEY;
const TIPO = "pregunta-del-dia";
const BUCKET = "publicaciones";

if (!CLAVE) {
  console.error("Falta SUPABASE_SERVICE_ROLE_KEY en el entorno.");
  process.exit(2);
}

const e = JSON.parse(readFileSync(process.argv[2] ?? "pregunta-del-dia/elegida.json", "utf8"));
const base = `out/${TIPO}-${e.fecha}`;
for (const ext of ["mp4", "png", "txt"]) {
  if (!existsSync(`${base}.${ext}`)) throw new Error(`Falta ${base}.${ext}: renderiza y escribe la descripción antes.`);
}

const sb = createClient(URL, CLAVE, { auth: { persistSession: false } });
const almacen = sb.storage.from(BUCKET);
const carpeta = `${TIPO}/${e.fecha}`;

async function subir(ext, tipo) {
  const ruta = `${carpeta}/${TIPO}-${e.fecha}.${ext}`;
  const { error } = await almacen.upload(ruta, readFileSync(`${base}.${ext}`), { contentType: tipo, upsert: true });
  if (error) throw new Error(`Subida de ${ruta}: ${error.message}`);
  return ruta;
}

const video_path = await subir("mp4", "video/mp4");
const portada_path = await subir("png", "image/png");
await subir("txt", "text/plain");

const { error: errorFila } = await sb.from("publicaciones").upsert(
  {
    tipo: TIPO,
    fecha: e.fecha,
    titulo: `${e.tema} · ${e.enunciado.slice(0, 90)}${e.enunciado.length > 90 ? "…" : ""}`,
    descripcion: readFileSync(`${base}.txt`, "utf8"),
    video_path,
    portada_path,
    datos: { archivo: e.archivo, fila: e.fila, subtema: e.subtema, correcta: "ABCD"[e.correcta] },
  },
  { onConflict: "tipo,fecha" },
);
if (errorFila) throw new Error(`Registro: ${errorFila.message}`);
console.log(`✓ Publicada en el panel: /admin/publicaciones/${TIPO}/${e.fecha}`);

// Solo se conserva la del día: se borran las carpetas y filas de fechas anteriores.
const { data: carpetas, error: errorLista } = await almacen.list(TIPO, { limit: 1000 });
if (errorLista) throw new Error(`Listado: ${errorLista.message}`);
for (const c of carpetas.filter((c) => c.name !== e.fecha)) {
  const { data: archivos } = await almacen.list(`${TIPO}/${c.name}`, { limit: 1000 });
  const rutas = (archivos ?? []).map((a) => `${TIPO}/${c.name}/${a.name}`);
  if (rutas.length) {
    const { error } = await almacen.remove(rutas);
    if (error) throw new Error(`Borrado de ${c.name}: ${error.message}`);
  }
  console.log(`🗑  Borrada la carpeta ${c.name} (${rutas.length} archivos)`);
}
const { data: borradas, error: errorBorrado } = await sb
  .from("publicaciones")
  .delete()
  .eq("tipo", TIPO)
  .neq("fecha", e.fecha)
  .select("fecha");
if (errorBorrado) throw new Error(`Borrado de registros: ${errorBorrado.message}`);
if (borradas?.length) console.log(`🗑  Borrados los registros de: ${borradas.map((b) => b.fecha).join(", ")}`);
