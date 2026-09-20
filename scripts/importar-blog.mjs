/**
 * Lleva los artículos de `contenido/blog/*.md` a la tabla `blog_posts`.
 *
 * Entra con el correo y la contraseña del editor y escribe con la clave anónima, es decir,
 * pasando por RLS igual que el panel. La service role key no entra en este repositorio: si un
 * script de contenido necesitara saltarse las políticas, el problema serían las políticas.
 *
 * El markdown del repositorio no es la fuente de verdad, lo es la base de datos. Estos ficheros
 * son el borrador con el que se escribió cada artículo; una vez importados, lo que manda es lo
 * que haya en `/admin`. Reimportar sobrescribe, así que conviene hacerlo solo con artículos que
 * no se hayan tocado después desde el panel.
 *
 *   BLOG_EMAIL=... BLOG_PASSWORD=... node scripts/importar-blog.mjs [--borrador] [slug...]
 *   node scripts/importar-blog.mjs --sql > semilla.sql
 */
import { createClient } from "@supabase/supabase-js";
import { readFileSync, readdirSync } from "node:fs";
import { dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const raiz = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const CARPETA = join(raiz, "contenido", "blog");

const argumentos = process.argv.slice(2);
const modoSql = argumentos.includes("--sql");
const forzarBorrador = argumentos.includes("--borrador");
const slugsPedidos = argumentos.filter((a) => !a.startsWith("--"));

/** Lector mínimo de `.env.local`. Solo se usa para la URL y la clave anónima, que son públicas. */
function entorno(clave) {
  if (process.env[clave]) return process.env[clave];
  try {
    const linea = readFileSync(join(raiz, ".env.local"), "utf8")
      .split("\n")
      .find((l) => l.startsWith(`${clave}=`));
    return linea ? linea.slice(clave.length + 1).trim() : "";
  } catch {
    return "";
  }
}

/**
 * Frontmatter con lo justo: `clave: valor`, `clave: [a, b]` para listas y `clave: {…}` para el
 * bloque de campos propios del tipo. No hace falta un parser de YAML para esto.
 */
function leerArticulo(ruta) {
  const crudo = readFileSync(ruta, "utf8");
  const partes = crudo.split(/^---\s*$/m);
  if (partes.length < 3) throw new Error(`${ruta}: falta el frontmatter`);

  const meta = {};
  for (const linea of partes[1].split("\n")) {
    const corte = linea.indexOf(":");
    if (corte === -1 || !linea.trim()) continue;
    const clave = linea.slice(0, corte).trim();
    const valor = linea.slice(corte + 1).trim();
    if (valor.startsWith("[") && valor.endsWith("]")) {
      meta[clave] = valor.slice(1, -1).split(",").map((v) => v.trim()).filter(Boolean);
    } else if (valor.startsWith("{")) {
      meta[clave] = JSON.parse(valor);
    } else {
      meta[clave] = valor;
    }
  }

  return { meta, cuerpo: partes.slice(2).join("---").trim() };
}

function aFila({ meta, cuerpo }) {
  // Mismas reglas que la server action del panel: sin texto alternativo no se publica.
  if (!meta.slug || !meta.titulo) throw new Error(`${meta.slug ?? "?"}: falta slug o título`);
  if ((meta.entradilla ?? "").length > 300) throw new Error(`${meta.slug}: entradilla de más de 300 caracteres`);
  if (meta.portada && !meta.portada_alt) throw new Error(`${meta.slug}: la portada no tiene texto alternativo`);

  const estado = forzarBorrador ? "borrador" : (meta.estado ?? "borrador");

  return {
    slug: meta.slug,
    tipo: meta.tipo ?? "articulo",
    titulo: meta.titulo,
    entradilla: meta.entradilla ?? null,
    cuerpo,
    portada_url: meta.portada ?? null,
    portada_alt: meta.portada_alt ?? null,
    estado,
    publicado_en: estado === "publicado" ? new Date(meta.publicado_en).toISOString() : null,
    curso: meta.curso ?? null,
    etiquetas: meta.etiquetas ?? [],
    seo: { title: meta.seo_title || undefined, description: meta.seo_description || undefined },
    datos: meta.datos ?? {},
  };
}

const ficheros = readdirSync(CARPETA)
  .filter((f) => f.endsWith(".md"))
  .filter((f) => !slugsPedidos.length || slugsPedidos.includes(f.replace(/\.md$/, "")));

if (!ficheros.length) {
  console.error(`No hay artículos que importar en ${CARPETA}`);
  process.exit(1);
}

const filas = ficheros.map((f) => aFila(leerArticulo(join(CARPETA, f))));

if (modoSql) {
  const texto = (v) => (v === null || v === undefined ? "NULL" : `'${String(v).replace(/'/g, "''")}'`);
  const lista = (v) => (v.length ? `ARRAY[${v.map(texto).join(", ")}]::text[]` : "'{}'::text[]");
  const json = (v) => `${texto(JSON.stringify(v))}::jsonb`;

  console.log("-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.");
  for (const f of filas) {
    console.log(`insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  (${texto(f.slug)}, ${texto(f.tipo)}, ${texto(f.titulo)}, ${texto(f.entradilla)}, ${texto(f.cuerpo)},
   ${texto(f.portada_url)}, ${texto(f.portada_alt)}, ${texto(f.estado)}, ${texto(f.publicado_en)}, ${texto(f.curso)},
   ${lista(f.etiquetas)}, ${json(f.seo)}, ${json(f.datos)})
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;
`);
  }
  process.exit(0);
}

const url = entorno("NEXT_PUBLIC_SUPABASE_URL");
const anon = entorno("NEXT_PUBLIC_SUPABASE_ANON_KEY");
const correo = process.env.BLOG_EMAIL;
const contrasena = process.env.BLOG_PASSWORD;

if (!url || !anon) {
  console.error("Faltan NEXT_PUBLIC_SUPABASE_URL o NEXT_PUBLIC_SUPABASE_ANON_KEY.");
  process.exit(1);
}
if (!correo || !contrasena) {
  console.error(
    "Faltan las credenciales del editor.\n\n" +
      "  BLOG_EMAIL=admin@academiaprolince.com BLOG_PASSWORD=… node scripts/importar-blog.mjs\n\n" +
      "Si prefieres no pasarlas por aquí, genera el SQL y pégalo en el editor de Supabase:\n\n" +
      "  node scripts/importar-blog.mjs --sql > semilla.sql\n",
  );
  process.exit(1);
}

const sb = createClient(url, anon, { auth: { persistSession: false } });

const { error: errorSesion } = await sb.auth.signInWithPassword({ email: correo, password: contrasena });
if (errorSesion) {
  console.error(`No se ha podido entrar como editor: ${errorSesion.message}`);
  process.exit(1);
}

let fallos = 0;
for (const fila of filas) {
  const { error } = await sb.from("blog_posts").upsert(fila, { onConflict: "slug" });
  if (error) {
    console.error(`✗ ${fila.slug}: ${error.message}`);
    fallos += 1;
  } else {
    console.log(`✓ ${fila.slug} (${fila.estado})`);
  }
}

await sb.auth.signOut();
console.log(`\n${filas.length - fallos} de ${filas.length} artículos importados.`);
process.exit(fallos ? 1 : 0);
