// Renderiza un MP4 por cada pregunta de src/datos/preguntas.json en out/<id>.mp4
import { execFileSync } from "node:child_process";
import { readFileSync } from "node:fs";

const preguntas = JSON.parse(readFileSync("src/datos/preguntas.json", "utf8"));
const segundosCuenta = Number(process.env.SEGUNDOS ?? 5);

for (const p of preguntas) {
  console.log(`▶ ${p.id}`);
  execFileSync(
    "npx",
    ["remotion", "render", "PreguntaTest", `out/${p.id}.mp4`, `--props=${JSON.stringify({ ...p, segundosCuenta })}`],
    { stdio: "inherit" },
  );
}
