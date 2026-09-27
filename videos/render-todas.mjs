// Renderiza cada pregunta de src/datos/preguntas.json: out/<id>.mp4 y su portada out/<id>-portada.png
import { execFileSync } from "node:child_process";
import { readFileSync } from "node:fs";

const preguntas = JSON.parse(readFileSync("src/datos/preguntas.json", "utf8"));
const segundosCuenta = Number(process.env.SEGUNDOS ?? 8);

for (const p of preguntas) {
  console.log(`▶ ${p.id}`);
  const props = `--props=${JSON.stringify({ ...p, segundosCuenta })}`;
  execFileSync("npx", ["remotion", "render", "PreguntaTest", `out/${p.id}.mp4`, props], { stdio: "inherit" });
  execFileSync("npx", ["remotion", "still", "PreguntaTest", `out/${p.id}-portada.png`, "--frame=0", props], {
    stdio: "inherit",
  });
}
