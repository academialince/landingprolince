// Elige la pregunta del día del banco (CSV de GUARDIA CIVIL/TEST en Drive, convertidos en banco/)
// sin repetir ninguna de pregunta-del-dia/historial.csv, y la deja en src/datos/preguntas.json.
//
//   node pregunta-del-dia/elegir.mjs banco/tema-5.csv [más.csv ...] --numero N [--fila F]
//     N es el número secuencial de la publicación (carpeta N de «Publicaciones/Pregunta del día» en Drive).
//   node pregunta-del-dia/elegir.mjs --tema 5 [--fecha …] → busca los CSV del tema 5 en PROLINCE_BANCO_DIR
//                                                           (la carpeta TEST sincronizada con Google Drive para escritorio)
//   node pregunta-del-dia/elegir.mjs --registrar      → añade la elegida al historial (tras publicarla)
import { existsSync, readFileSync, readdirSync, writeFileSync, appendFileSync } from "node:fs";
import { join } from "node:path";

const HISTORIAL = "pregunta-del-dia/historial.csv";
const ELEGIDA = "pregunta-del-dia/elegida.json";
const args = process.argv.slice(2);
const opcion = (n) => (args.includes(n) ? args[args.indexOf(n) + 1] : undefined);
const normaliza = (t) =>
  t.toLowerCase().normalize("NFD").replace(/[̀-ͯ]/g, "").replace(/[^a-z0-9]+/g, " ").trim();
const csvCampo = (v) => (/[;"\n]/.test(v) ? `"${v.replace(/"/g, '""')}"` : v);

if (args.includes("--registrar")) {
  // Sin más argumentos registra la última elegida; con rutas .json, cada una de ellas (lotes).
  const rutas = args.filter((a) => a.endsWith(".json"));
  if (!existsSync(HISTORIAL)) writeFileSync(HISTORIAL, "fecha;archivo;fila;tema;enunciado;numero\n");
  for (const ruta of rutas.length ? rutas : [ELEGIDA]) {
    const e = JSON.parse(readFileSync(ruta, "utf8"));
    const campos = [e.fecha, e.archivo, e.fila, e.temaCsv, e.enunciadoOriginal, e.numero ?? ""];
    appendFileSync(HISTORIAL, campos.map((v) => csvCampo(String(v))).join(";") + "\n");
    console.log(`✓ Registrada en el historial: nº ${e.numero ?? "-"} · ${e.archivo} fila ${e.fila}`);
  }
  process.exit(0);
}

function parsearCsv(texto) {
  const regs = [];
  let campo = "", reg = [], comillas = false;
  for (let i = 0; i < texto.length; i++) {
    const c = texto[i];
    if (comillas) {
      if (c === '"' && texto[i + 1] === '"') { campo += '"'; i++; }
      else if (c === '"') comillas = false;
      else campo += c;
    } else if (c === '"') comillas = true;
    else if (c === ";") { reg.push(campo); campo = ""; }
    else if (c === "\n" || c === "\r") {
      if (c === "\r" && texto[i + 1] === "\n") i++;
      reg.push(campo); campo = "";
      if (reg.some((v) => v.trim())) regs.push(reg);
      reg = [];
    } else campo += c;
  }
  reg.push(campo);
  if (reg.some((v) => v.trim())) regs.push(reg);
  return regs;
}

const usadas = new Set(
  existsSync(HISTORIAL) ? parsearCsv(readFileSync(HISTORIAL, "utf8")).slice(1).map((r) => normaliza(r[4])) : [],
);

// El banco antepone al enunciado la norma y el epígrafe («Ley de Seguridad Privada. Servicios de
// investigación privada. …»). En el vídeo sobra: el tema ya va en la cabecera.
// Una frase inicial es prefijo si casi todas sus palabras están en el tema o el subtema (o su sigla
// entre paréntesis), o si, tras quitar ya la norma, es un rótulo corto sin más.
function quitarPrefijo(enunciado, subtema, tema) {
  const referencia = new Set(normaliza(`${subtema} ${tema}`).split(" "));
  const vacias = new Set(["de", "la", "el", "los", "las", "del", "y", "en", "a", "para", "por", "sobre", "su", "sus", "e", "o"]);
  let resto = enunciado.trim();
  let quitados = 0;
  for (;;) {
    const m = resto.match(/^([^.?¿:]{3,160}?)\.\s+(.{25,})$/s);
    if (!m) return resto;
    const palabras = normaliza(m[1]).split(" ").filter((w) => w && !vacias.has(w));
    const coinciden = palabras.filter((w) => referencia.has(w)).length;
    const sigla = (m[1].match(/\(([^)]+)\)/) ?? [])[1];
    const esNorma = palabras.length > 0 && coinciden / palabras.length >= 0.6;
    const esRotulo = quitados > 0 && palabras.length <= 6;
    if (!(esNorma || esRotulo || (sigla && referencia.has(normaliza(sigla))))) return resto;
    resto = m[2];
    quitados++;
  }
}

const archivos = args.filter((a) => a.endsWith(".csv"));
if (opcion("--tema")) {
  const dir = process.env.PROLINCE_BANCO_DIR;
  if (!dir || !existsSync(dir)) {
    console.error("Con --tema hace falta PROLINCE_BANCO_DIR (en videos/.env.local) apuntando a la carpeta TEST del banco.");
    process.exit(1);
  }
  const patron = new RegExp(`^tema[-_]0?${Number(opcion("--tema"))}[-_].*\\.csv$`, "i");
  archivos.push(...readdirSync(dir).filter((f) => patron.test(f)).map((f) => join(dir, f)));
  console.log(`Banco del tema ${opcion("--tema")}: ${archivos.map((a) => a.split(/[\\/]/).pop()).join(", ") || "ninguno"}`);
}
if (!archivos.length) {
  console.error("Indica al menos un CSV del banco.");
  process.exit(1);
}
const candidatas = [];
for (const archivo of archivos) {
  const [cab, ...filas] = parsearCsv(readFileSync(archivo, "utf8").replace(/^﻿/, ""));
  const col = Object.fromEntries(cab.map((h, i) => [h.trim().toLowerCase(), i]));
  filas.forEach((r, i) => {
    const g = (n) => (r[col[n]] ?? "").trim();
    const correcta = "ABCD".indexOf(g("respuesta_correcta").toUpperCase());
    const enunciado = quitarPrefijo(g("enunciado"), g("subtema"), g("tema"));
    const opciones = ["opcion_a", "opcion_b", "opcion_c", "opcion_d"].map(g);
    candidatas.push({
      archivo: archivo.split(/[\\/]/).pop(),
      fila: i + 1,
      temaCsv: g("tema"),
      subtema: g("subtema"),
      dificultad: g("dificultad"),
      enunciadoOriginal: g("enunciado"),
      enunciado,
      opciones,
      correcta,
      explicacion: g("explicacion"),
      // Que quepa bien en el vídeo y que tenga respuesta válida.
      apta:
        correcta >= 0 &&
        opciones.every(Boolean) &&
        enunciado.length <= 230 &&
        opciones.every((o) => o.length <= 95) &&
        g("explicacion").length >= 40 &&
        // Nada que dependa de datos de actualidad: en redes la pregunta dura más que el dato.
        !/dato de actualidad|revisar antes del examen/i.test(g("explicacion")),
    });
  });
}

const fecha = opcion("--fecha") ?? new Date().toISOString().slice(0, 10);
const numero = opcion("--numero") ? Number(opcion("--numero")) : null;
// Desde la publicación 1 van numeradas; la fecha solo queda como dato de cuándo se generó.
// Nombre de los archivos: pregunta-<nº> (pregunta-1.mp4, pregunta-1-portada.png…).
const idPublicacion = numero ? `pregunta-${numero}` : `pregunta-del-dia-${fecha}`;
const libres = candidatas.filter((c) => !usadas.has(normaliza(c.enunciadoOriginal)));
let elegida;
if (opcion("--fila")) {
  elegida = libres.find((c) => c.fila === Number(opcion("--fila")));
  if (!elegida) throw new Error("Esa fila no existe o ya se publicó");
} else {
  const aptas = libres.filter((c) => c.apta);
  const preferidas = aptas.filter((c) => /media/i.test(c.dificultad));
  const bolsa = preferidas.length ? preferidas : aptas;
  if (!bolsa.length) throw new Error("No quedan preguntas sin publicar en estos CSV: usa otro tema.");
  // Pseudoaleatoria pero reproducible por fecha.
  const semilla = [...(numero ? `n${numero}` : fecha)].reduce((h, c) => (h * 31 + c.charCodeAt(0)) >>> 0, 7);
  elegida = bolsa[semilla % bolsa.length];
}

const tema = elegida.temaCsv.replace(/^(Tema \d+)\s+-\s+/, "$1 · ");
// El vídeo usa la explicación del banco sin la coletilla de exámenes, que va en la descripción.
const explicacionVideo = elegida.explicacion.replace(/\s*Preguntad[ao] en examen:.*$/s, "").trim();
const salida = { ...elegida, fecha, numero, id: idPublicacion, tema, explicacionVideo };
writeFileSync(ELEGIDA, JSON.stringify(salida, null, 2) + "\n");
writeFileSync(
  "src/datos/preguntas.json",
  JSON.stringify(
    [{ id: idPublicacion, tema, enunciado: elegida.enunciado, opciones: elegida.opciones, correcta: elegida.correcta, explicacion: explicacionVideo }],
    null,
    2,
  ) + "\n",
);
console.log(`✓ ${libres.length} sin publicar de ${candidatas.length}. Elegida: ${elegida.archivo} fila ${elegida.fila} (${elegida.dificultad})`);
console.log(JSON.stringify(salida, null, 2));
