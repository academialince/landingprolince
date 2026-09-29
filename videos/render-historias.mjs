// Renderiza cada historia de src/datos/historias.json: out/<id>.mp4 y su portada out/<id>-portada.png
// Uso: npm run historias               (todas)
//      npm run historias -- <id> ...   (solo esas)
import { execFileSync } from "node:child_process";
import { mkdirSync, readFileSync } from "node:fs";

const historias = JSON.parse(readFileSync("src/datos/historias.json", "utf8"));
const pedidas = process.argv.slice(2);
const opciones = { stdio: "inherit", shell: process.platform === "win32" };
mkdirSync("out", { recursive: true });

for (const h of historias.filter((h) => pedidas.length === 0 || pedidas.includes(h.id))) {
  console.log(`▶ ${h.id}`);
  execFileSync("npx", ["remotion", "render", h.id, `out/${h.id}.mp4`], opciones);
  execFileSync("npx", ["remotion", "still", h.id, `out/${h.id}-portada.png`, "--frame=0"], opciones);
}
