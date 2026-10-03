// Convierte la descripción de la pregunta del día (out/pregunta-del-dia-<N>.txt, la de Instagram y TikTok)
// en el texto para el canal de Telegram: una encuesta en modo cuestionario y un mensaje con la solución.
//
//   node pregunta-del-dia/telegram.mjs out/pregunta-del-dia-6.txt [más.txt | carpeta ...] [--salida dir] [--todas archivo.txt]
//     → <salida>/pregunta-del-dia-<N>-telegram.txt (por defecto en out/)
//     --todas además las une, por orden de número, en un solo archivo.
//
// Telegram limita la encuesta: pregunta de 300 caracteres, opciones de 100 y explicación de 200.
// Si la pregunta o alguna opción no cabe, el enunciado completo va en un mensaje previo y la encuesta
// solo pregunta la letra (A, B, C, D).
import { existsSync, mkdirSync, readFileSync, readdirSync, statSync, writeFileSync } from "node:fs";
import { basename, join } from "node:path";

const MAX_PREGUNTA = 300;
const MAX_OPCION = 100;
const MAX_EXPLICACION = 200;
const WEB = "👉 Temario, tests y simulacros cronometrados en prolinceacademia.com";
const RAYA = "━━━━━━━━━━━━━━━━━━━━";

const args = process.argv.slice(2);
const opcion = (n) => (args.includes(n) ? args[args.indexOf(n) + 1] : undefined);
const salida = opcion("--salida") ?? "out";
const todas = opcion("--todas");
const entradas = args.filter((a, i) => !a.startsWith("--") && !["--salida", "--todas"].includes(args[i - 1]));

if (!entradas.length) {
  console.error("Uso: node pregunta-del-dia/telegram.mjs <descripción.txt | carpeta> [...] [--salida dir] [--todas archivo.txt]");
  process.exit(1);
}

const archivos = entradas.flatMap((e) =>
  statSync(e).isDirectory()
    ? readdirSync(e).filter((f) => /^pregunta-del-dia-\d+\.txt$/.test(f)).map((f) => join(e, f))
    : [e],
);
const numeroDe = (ruta) => Number(basename(ruta).match(/(\d+)/)?.[1]);
archivos.sort((a, b) => numeroDe(a) - numeroDe(b));

// Lee la descripción por sus marcas (las mismas que fija la skill), sin depender de los emojis.
function leer(texto) {
  const lineas = texto.replace(/\r/g, "").split("\n").map((l) => l.trimEnd());
  const busca = (re, desde = 0) => lineas.findIndex((l, i) => i >= desde && re.test(l));
  const cabecera = lineas[busca(/PREGUNTA DEL DÍA/)].match(/Tema\s+(\d+)\s*·\s*(.+)$/);
  const iA = busca(/^A\)\s/);
  const iCorrecta = busca(/Respuesta correcta:/);
  const iExplicacion = busca(/Explicación:/, iCorrecta);
  const iTrampa = busca(/Trampa típica:/, iExplicacion);
  const iCierre = busca(/¿La has acertado\?|prolinceacademia\.com|^#|^---$/, iTrampa + 1);
  const bloque = (desde, hasta) => lineas.slice(desde, hasta).join("\n").trim();

  const opciones = ["A", "B", "C", "D"].map((letra) => {
    const l = lineas[busca(new RegExp(`^${letra}\\)\\s`), iA)];
    return l.replace(/^[A-D]\)\s*/, "");
  });
  const correcta = lineas[iCorrecta].match(/Respuesta correcta:\s*([A-D])\)/)[1];
  const enunciado = bloque(busca(/PREGUNTA DEL DÍA/) + 1, iA).replace(/\s*\n\s*/g, " ");
  const explicacion = bloque(iExplicacion + 1, iTrampa);
  const trampa = bloque(iTrampa, iCierre === -1 ? undefined : iCierre).replace(/^.*?Trampa típica:\s*/, "");
  if (!cabecera || opciones.some((o) => !o) || !enunciado || !explicacion || !trampa) {
    throw new Error("no tiene la estructura de la descripción de la pregunta del día");
  }
  return { tema: Number(cabecera[1]), titulo: cabecera[2].trim(), enunciado, opciones, correcta, explicacion, trampa };
}

// Explicación de la encuesta (la que Telegram enseña al responder): la primera frase, que cita la norma,
// o, si es larga, lo que va antes de los dos puntos («Lo dice el artículo X de la Ley Y:»).
function explicacionCorta({ explicacion }) {
  const aviso = "Explicación completa en el mensaje siguiente 👇";
  const parrafo = explicacion.split("\n")[0];
  const candidatas = [
    parrafo.match(/^(.+?[.!?])(?=\s+[A-ZÁÉÍÓÚÑ¿«]|$)/)?.[1],
    parrafo.match(/^([^:«]+?):\s/)?.[1].concat("."),
  ].filter(Boolean);
  const conAviso = candidatas.find((c) => c.length + 1 + aviso.length <= MAX_EXPLICACION);
  if (conAviso) return `${conAviso} ${aviso}`;
  return candidatas.find((c) => c.length <= MAX_EXPLICACION) ?? aviso;
}

function telegram(p, numero) {
  const letras = ["A", "B", "C", "D"];
  const conLetra = p.opciones.map((o, i) => `${letras[i]}) ${o}`);
  const cabe = p.enunciado.length <= MAX_PREGUNTA && conLetra.every((o) => o.length <= MAX_OPCION);
  const corta = explicacionCorta(p);
  const pos = letras.indexOf(p.correcta);
  const tema = `Tema ${p.tema} · ${p.titulo}`;
  const partes = [`PREGUNTA DEL DÍA Nº ${numero} · TELEGRAM`, tema, ""];

  let paso = 1;
  if (!cabe) {
    partes.push(
      RAYA,
      `${paso++}. MENSAJE CON LA PREGUNTA (envíalo justo antes de la encuesta)`,
      RAYA,
      "",
      `🟢 PREGUNTA DEL DÍA · ${tema}`,
      "",
      p.enunciado,
      "",
      ...conLetra,
      "",
      "👇 Responde en la encuesta",
      "",
    );
  }
  partes.push(
    RAYA,
    `${paso++}. ENCUESTA (Adjuntar → Encuesta → activa «Modo cuestionario»)`,
    RAYA,
    "",
    "Pregunta:",
    cabe ? p.enunciado : "¿Cuál es la respuesta correcta? 👆",
    "",
    ...(cabe ? conLetra : letras).map((o, i) => `Opción ${i + 1}: ${o}`),
    "",
    `Respuesta correcta: opción ${pos + 1} (${p.correcta})`,
    "",
    "Explicación (sale al responder):",
    corta,
    "",
    RAYA,
    `${paso}. MENSAJE CON LA SOLUCIÓN (envíalo después de la encuesta)`,
    RAYA,
    "",
    `✅ SOLUCIÓN · PREGUNTA DEL DÍA · ${tema}`,
    "",
    p.enunciado,
    "",
    `✔️ Respuesta correcta: ${conLetra[pos]}`,
    "",
    "📘 Explicación:",
    p.explicacion,
    "",
    `⚠️ Trampa típica: ${p.trampa}`,
    "",
    "💬 ¿La has acertado? Cuéntanoslo en el grupo.",
    WEB,
  );
  return { texto: partes.join("\n") + "\n", cabe, corta };
}

if (!existsSync(salida)) mkdirSync(salida, { recursive: true });
const unidas = [];
let errores = 0;
for (const ruta of archivos) {
  const numero = numeroDe(ruta);
  try {
    const p = leer(readFileSync(ruta, "utf8"));
    const { texto, cabe, corta } = telegram(p, numero);
    const destino = join(salida, `pregunta-del-dia-${numero}-telegram.txt`);
    writeFileSync(destino, texto);
    unidas.push(texto);
    const avisos = [cabe ? "" : "enunciado aparte", corta.length > MAX_EXPLICACION ? "explicación larga" : ""].filter(Boolean);
    console.log(`✓ ${destino}${avisos.length ? ` (${avisos.join(", ")})` : ""}`);
  } catch (e) {
    errores++;
    console.error(`✗ ${ruta}: ${e.message}`);
  }
}
if (todas && unidas.length) {
  writeFileSync(todas, unidas.join(`\n\n${"═".repeat(40)}\n\n`));
  console.log(`✓ ${unidas.length} preguntas unidas en ${todas}`);
}
process.exit(errores ? 1 : 0);
