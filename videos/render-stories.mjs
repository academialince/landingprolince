// Renderiza cada story de src/datos/stories.json: out/stories/<id>.mp4 y su miniatura <id>.png.
// `npm run stories -- story-ce-cifras` renderiza solo las indicadas.
import { execFileSync } from "node:child_process";
import { mkdirSync, readFileSync } from "node:fs";

const FPS = 30;
const todas = JSON.parse(readFileSync("src/datos/stories.json", "utf8"));
const pedidas = process.argv.slice(2);
const stories = pedidas.length ? todas.filter((s) => pedidas.includes(s.id)) : todas;
// En Windows npx es un .cmd y necesita shell.
const opciones = { stdio: "inherit", shell: process.platform === "win32" };
mkdirSync("out/stories", { recursive: true });

// Mismo cálculo que fotogramaPortada() en src/StoryInfo.tsx: el cuerpo completo antes del cierre.
const portada = (s) => {
  let t = 1.7 + (s.destacado ? 1.4 : 0);
  for (const p of s.puntos) t += Math.max(1.6, p.replace(/\*\*/g, "").length / 14);
  return Math.round((t + 2.2 - 0.2) * FPS);
};

for (const s of stories) {
  console.log(`▶ ${s.id}`);
  execFileSync("npx", ["remotion", "render", s.id, `out/stories/${s.id}.mp4`], opciones);
  execFileSync("npx", ["remotion", "still", s.id, `out/stories/${s.id}.png`, `--frame=${portada(s)}`], opciones);
}
