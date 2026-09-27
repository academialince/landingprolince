// Convierte la salida de read_file_content de Google Drive (JSON con fileContent en markdown)
// al CSV original del banco: quita los escapes \_ y los dos espacios de fin de línea.
//   node pregunta-del-dia/drive-a-csv.mjs <salida.txt|json> <destino.csv>
import { readFileSync, writeFileSync } from "node:fs";

const [origen, destino] = process.argv.slice(2);
const bruto = readFileSync(origen, "utf8");
let texto;
try {
  texto = JSON.parse(bruto).fileContent;
} catch {
  texto = bruto;
}
texto = texto
  .replace(/^﻿/, "")
  .replace(/\\([_*\[\]()#+\-.!`>|~])/g, "$1")
  .split("\n")
  .map((l) => l.replace(/\s+$/, ""))
  .join("\n");
writeFileSync(destino, texto.endsWith("\n") ? texto : texto + "\n");
console.log(`✓ ${texto.split("\n").filter(Boolean).length - 1} preguntas → ${destino}`);
