// Genera el PDF del pack de bienvenida a partir de pack-bienvenida.html.
// Uso: node scripts/pack-bienvenida/generar.mjs  →  output/pack-bienvenida-prolince.pdf
import { createRequire } from "node:module";
import { fileURLToPath, pathToFileURL } from "node:url";
import path from "node:path";

const require = createRequire(import.meta.url);
const { chromium } = require("playwright");

const dir = path.dirname(fileURLToPath(import.meta.url));
const html = path.join(dir, "pack-bienvenida.html");
const salida = path.resolve(dir, "../../output/pack-bienvenida-prolince.pdf");

const navegador = await chromium.launch();
const pagina = await navegador.newPage();
await pagina.goto(pathToFileURL(html).href, { waitUntil: "networkidle" });
await pagina.evaluate(() => document.fonts.ready);
await pagina.pdf({ path: salida, format: "A4", printBackground: true, preferCSSPageSize: true });
await navegador.close();
console.log(salida);
