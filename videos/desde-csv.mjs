// Convierte filas del CSV del banco de preguntas de la web (formato de importación:
// enunciado;tipo;opcion_a;opcion_b;opcion_c;opcion_d;respuesta_correcta;tema;subtema;dificultad;explicacion;cursos_aplicables)
// en src/datos/preguntas.json, que es lo que lee la plantilla.
//
//   node desde-csv.mjs banco.csv              → todas las filas
//   node desde-csv.mjs banco.csv 3 7 12       → solo esas filas (1 = primera pregunta, sin contar la cabecera)
import { readFileSync, writeFileSync } from "node:fs";

const [ruta, ...filas] = process.argv.slice(2);
if (!ruta) {
  console.error("Uso: node desde-csv.mjs <archivo.csv> [nº de fila ...]");
  process.exit(1);
}

function parsearCsv(texto) {
  const registros = [];
  let campo = "";
  let registro = [];
  let entreComillas = false;
  for (let i = 0; i < texto.length; i++) {
    const c = texto[i];
    if (entreComillas) {
      if (c === '"' && texto[i + 1] === '"') { campo += '"'; i++; }
      else if (c === '"') entreComillas = false;
      else campo += c;
    } else if (c === '"') entreComillas = true;
    else if (c === ";") { registro.push(campo); campo = ""; }
    else if (c === "\n" || c === "\r") {
      if (c === "\r" && texto[i + 1] === "\n") i++;
      registro.push(campo); campo = "";
      if (registro.some((v) => v.trim())) registros.push(registro);
      registro = [];
    } else campo += c;
  }
  registro.push(campo);
  if (registro.some((v) => v.trim())) registros.push(registro);
  return registros;
}

const [cabecera, ...datos] = parsearCsv(readFileSync(ruta, "utf8").replace(/^﻿/, ""));
const col = (nombre) => {
  const i = cabecera.findIndex((h) => h.trim().toLowerCase() === nombre);
  if (i < 0) throw new Error(`Falta la columna «${nombre}» en la cabecera del CSV`);
  return i;
};
const C = Object.fromEntries(
  ["enunciado", "opcion_a", "opcion_b", "opcion_c", "opcion_d", "respuesta_correcta", "tema", "explicacion"].map(
    (n) => [n, col(n)],
  ),
);

const elegidas = filas.length ? filas.map((n) => Number(n)) : datos.map((_, i) => i + 1);
const fecha = new Date().toISOString().slice(0, 10);

const preguntas = elegidas.map((n) => {
  const r = datos[n - 1];
  if (!r) throw new Error(`No existe la fila ${n} (el CSV tiene ${datos.length} preguntas)`);
  const letra = r[C.respuesta_correcta].trim().toUpperCase();
  const correcta = "ABCD".indexOf(letra);
  if (correcta < 0) throw new Error(`Fila ${n}: respuesta_correcta «${letra}» no es A, B, C o D`);
  return {
    id: `pregunta-${fecha}-${n}`,
    // «Tema 1 - Constitución Española» → «Tema 1 · Constitución Española», como en la web.
    tema: r[C.tema].trim().replace(/^(Tema \d+)\s+-\s+/, "$1 · "),
    enunciado: r[C.enunciado].trim(),
    opciones: [r[C.opcion_a], r[C.opcion_b], r[C.opcion_c], r[C.opcion_d]].map((o) => o.trim()),
    correcta,
    explicacion: r[C.explicacion].trim(),
  };
});

writeFileSync("src/datos/preguntas.json", JSON.stringify(preguntas, null, 2) + "\n");
console.log(`✓ ${preguntas.length} pregunta(s) en src/datos/preguntas.json`);
for (const p of preguntas) console.log(`  · ${p.id}: ${p.enunciado.slice(0, 70)}…`);
