// Elige la pregunta del día del banco (CSV de GUARDIA CIVIL/TEST en Drive, convertidos en banco/)
// sin repetir ninguna de pregunta-del-dia/historial.csv, y la deja en src/datos/preguntas.json.
//
//   node pregunta-del-dia/elegir.mjs banco/tema-5.csv [más.csv ...] [--fecha 2026-09-27] [--fila N]
//   node pregunta-del-dia/elegir.mjs --registrar      → añade la elegida al historial (tras publicarla)
import { existsSync, readFileSync, writeFileSync, appendFileSync } from "node:fs";

const HISTORIAL = "pregunta-del-dia/historial.csv";
const ELEGIDA = "pregunta-del-dia/elegida.json";
const args = process.argv.slice(2);
const opcion = (n) => (args.includes(n) ? args[args.indexOf(n) + 1] : undefined);
const normaliza = (t) =>
  t.toLowerCase().normalize("NFD").replace(/[̀-ͯ]/g, "").replace(/[^a-z0-9]+/g, " ").trim();
const csvCampo = (v) => (/[;"\n]/.test(v) ? `"${v.replace(/"/g, '""')}"` : v);

if (args.includes("--registrar")) {
  const e = JSON.parse(readFileSync(ELEGIDA, "utf8"));
  if (!existsSync(HISTORIAL)) writeFileSync(HISTORIAL, "fecha;archivo;fila;tema;enunciado\n");
  appendFileSync(HISTORIAL, [e.fecha, e.archivo, e.fila, e.temaCsv, e.enunciadoOriginal].map(csvCampo).join(";") + "\n");
  console.log(`✓ Registrada en el historial: ${e.fecha} · ${e.archivo} fila ${e.fila}`);
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

// El banco antepone al enunciado la norma y la división («Tratado de la UE. Disposiciones… .»).
// En el vídeo sobra: el tema ya va en la cabecera.
function quitarPrefijo(enunciado, subtema) {
  const sub = normaliza(subtema);
  let resto = enunciado.trim();
  for (;;) {
    const m = resto.match(/^([^.?¿:]{3,}?)\.\s+(.+)$/s);
    if (!m || !sub.includes(normaliza(m[1]))) return resto;
    resto = m[2];
  }
}

const archivos = args.filter((a, i) => a.endsWith(".csv") && args[i - 1] !== "--fecha");
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
    const enunciado = quitarPrefijo(g("enunciado"), g("subtema"));
    const opciones = ["opcion_a", "opcion_b", "opcion_c", "opcion_d"].map(g);
    candidatas.push({
      archivo: archivo.split("/").pop(),
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
        g("explicacion").length >= 40,
    });
  });
}

const fecha = opcion("--fecha") ?? new Date().toISOString().slice(0, 10);
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
  const semilla = [...fecha].reduce((h, c) => (h * 31 + c.charCodeAt(0)) >>> 0, 7);
  elegida = bolsa[semilla % bolsa.length];
}

const tema = elegida.temaCsv.replace(/^(Tema \d+)\s+-\s+/, "$1 · ");
// El vídeo usa la explicación del banco sin la coletilla de exámenes, que va en la descripción.
const explicacionVideo = elegida.explicacion.replace(/\s*Preguntad[ao] en examen:.*$/s, "").trim();
const salida = { ...elegida, fecha, tema, explicacionVideo };
writeFileSync(ELEGIDA, JSON.stringify(salida, null, 2) + "\n");
writeFileSync(
  "src/datos/preguntas.json",
  JSON.stringify(
    [{ id: `pregunta-del-dia-${fecha}`, tema, enunciado: elegida.enunciado, opciones: elegida.opciones, correcta: elegida.correcta, explicacion: explicacionVideo }],
    null,
    2,
  ) + "\n",
);
console.log(`✓ ${libres.length} sin publicar de ${candidatas.length}. Elegida: ${elegida.archivo} fila ${elegida.fila} (${elegida.dificultad})`);
console.log(JSON.stringify(salida, null, 2));
