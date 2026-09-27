// Elige el dato curioso del día de dato-curioso/banco.json (curiosidades de Drive ya transcritas)
// sin repetir ninguna de dato-curioso/historial.csv, y lo deja en src/datos/curiosidad.json.
//
//   node dato-curioso/elegir.mjs --numero 22 [--carpeta Curiosidad_NN]   → carpeta de Drive y archivos «22»
//   node dato-curioso/elegir.mjs [--fecha 2026-09-27] [--carpeta Curiosidad_NN]   (antiguo: por fecha)
//   node dato-curioso/elegir.mjs --pendientes   → carpetas Curiosidad_NN ya usadas (para transcribir otra)
//   node dato-curioso/elegir.mjs --registrar    → añade la elegida al historial (tras publicarla)
import { existsSync, readFileSync, writeFileSync, appendFileSync } from "node:fs";

const BANCO = "dato-curioso/banco.json";
const HISTORIAL = "dato-curioso/historial.csv";
const DATOS = "src/datos/curiosidad.json";
const args = process.argv.slice(2);
const opcion = (n) => (args.includes(n) ? args[args.indexOf(n) + 1] : undefined);
const csvCampo = (v) => (/[;"\n]/.test(String(v)) ? `"${String(v).replace(/"/g, '""')}"` : String(v));

const usadas = new Set(
  existsSync(HISTORIAL)
    ? readFileSync(HISTORIAL, "utf8").trim().split("\n").slice(1).map((l) => l.split(";")[1])
    : [],
);

if (args.includes("--pendientes")) {
  console.log(`Ya publicadas: ${[...usadas].sort().join(", ") || "ninguna"}`);
  process.exit(0);
}

if (args.includes("--registrar")) {
  const e = JSON.parse(readFileSync(DATOS, "utf8"));
  if (!existsSync(HISTORIAL)) writeFileSync(HISTORIAL, "publicacion;carpeta;gancho\n");
  appendFileSync(HISTORIAL, [e.publicacion, e.carpeta, e.gancho].map(csvCampo).join(";") + "\n");
  console.log(`✓ Registrado en el historial: ${e.publicacion} · ${e.carpeta}`);
  process.exit(0);
}

const banco = JSON.parse(readFileSync(BANCO, "utf8"));
const libres = banco.filter((c) => !usadas.has(c.carpeta));
// Desde la publicación 22 las carpetas de Drive van numeradas (22, 23…) en lugar de por fecha.
const fecha = opcion("--numero") ?? opcion("--fecha") ?? new Date().toISOString().slice(0, 10);
// Con --carpeta se puede volver a montar una ya publicada (p. ej. tras cambiar la plantilla).
const elegida = opcion("--carpeta") ? banco.find((c) => c.carpeta === opcion("--carpeta")) : libres[0];
if (!elegida) {
  throw new Error(
    "No hay curiosidades transcritas sin publicar: transcribe otra carpeta Curiosidad_NN de Drive en banco.json.",
  );
}
const { driveId, fuente, ...props } = elegida;
writeFileSync(DATOS, JSON.stringify({ id: `dato-curioso-${fecha}`, publicacion: fecha, ...props }, null, 2) + "\n");
console.log(`✓ ${libres.length} sin publicar de ${banco.length} transcritas. Elegida: ${elegida.carpeta}`);
console.log(`  Fuente: ${fuente}`);
