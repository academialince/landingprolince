// Renderiza un lote de datos curiosos en paralelo sin tocar src/datos/curiosidad.json.
//   node render-lote.mjs plan.json [--hilos 3] [--registrar]
// plan.json: [{ "numero": 42, "carpeta": "Nuevo_12_..." }, ...] (carpetas de dato-curioso/banco.json)
// Genera out/dato-curioso-<numero>.mp4 y -portada.png; con --registrar añade cada uno al historial, en orden.
import { spawn } from "node:child_process";
import { appendFileSync, existsSync, readFileSync, writeFileSync } from "node:fs";

const args = process.argv.slice(2);
const plan = JSON.parse(readFileSync(args[0], "utf8"));
const hilos = Number(args.includes("--hilos") ? args[args.indexOf("--hilos") + 1] : 3);
const banco = Object.fromEntries(JSON.parse(readFileSync("dato-curioso/banco.json", "utf8")).map((c) => [c.carpeta, c]));

const ejecuta = (cmd, argv) =>
  new Promise((ok, mal) => {
    const p = spawn(cmd, argv, { stdio: ["ignore", "ignore", "inherit"] });
    p.on("exit", (code) => (code === 0 ? ok() : mal(new Error(`${cmd} ${argv[1]} salió con ${code}`))));
  });

async function renderiza({ numero, carpeta }) {
  const { driveId, fuente, carpeta: _c, ...props } = banco[carpeta];
  const id = `dato-curioso-${numero}`;
  const fichero = `out/props-${numero}.json`;
  writeFileSync(fichero, JSON.stringify({ id, ...props }));
  await ejecuta("npx", ["remotion", "render", "DatoCurioso", `out/${id}.mp4`, `--props=${fichero}`, "--log=error", "--concurrency=2"]);
  await ejecuta("npx", ["remotion", "still", "DatoCurioso", `out/${id}-portada.png`, "--frame=0", `--props=${fichero}`, "--log=error"]);
  console.log(`✓ ${id} (${carpeta})`);
}

const cola = [...plan];
await Promise.all(
  Array.from({ length: hilos }, async () => {
    while (cola.length) await renderiza(cola.shift());
  }),
);

if (args.includes("--registrar")) {
  const HISTORIAL = "dato-curioso/historial.csv";
  if (!existsSync(HISTORIAL)) writeFileSync(HISTORIAL, "publicacion;carpeta;gancho\n");
  const campo = (v) => (/[;"\n]/.test(String(v)) ? `"${String(v).replace(/"/g, '""')}"` : String(v));
  for (const { numero, carpeta } of plan) {
    appendFileSync(HISTORIAL, [numero, carpeta, banco[carpeta].gancho].map(campo).join(";") + "\n");
  }
  console.log(`✓ ${plan.length} registrados en el historial`);
}
