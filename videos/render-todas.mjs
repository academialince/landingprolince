// Renderiza cada pregunta de src/datos/preguntas.json: out/<id>.mp4 y su portada out/<id>-portada.png
import { execFileSync } from "node:child_process";
import { mkdirSync, readFileSync, rmSync, writeFileSync } from "node:fs";

const preguntas = JSON.parse(readFileSync("src/datos/preguntas.json", "utf8"));
const segundosCuenta = Number(process.env.SEGUNDOS ?? 8);
// En Windows npx es un .cmd y necesita shell; las props van en un archivo para no pelear con las comillas.
const opciones = { stdio: "inherit", shell: process.platform === "win32" };
mkdirSync("out", { recursive: true });

for (const p of preguntas) {
  console.log(`▶ ${p.id}`);
  const rutaProps = `out/props-${p.id}.json`;
  writeFileSync(rutaProps, JSON.stringify({ ...p, segundosCuenta }));
  const props = `--props=${rutaProps}`;
  execFileSync("npx", ["remotion", "render", "PreguntaTest", `out/${p.id}.mp4`, props], opciones);
  execFileSync("npx", ["remotion", "still", "PreguntaTest", `out/${p.id}-portada.png`, "--frame=0", props], opciones);
  rmSync(rutaProps);
}
