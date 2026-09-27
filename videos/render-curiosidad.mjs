// Renderiza el dato curioso de src/datos/curiosidad.json: out/<id>.mp4 y su portada out/<id>-portada.png
import { execFileSync } from "node:child_process";
import { readFileSync } from "node:fs";

const { carpeta, publicacion, ...c } = JSON.parse(readFileSync("src/datos/curiosidad.json", "utf8"));
const props = `--props=${JSON.stringify(c)}`;
console.log(`▶ ${c.id} (${carpeta}, ${publicacion})`);
execFileSync("npx", ["remotion", "render", "DatoCurioso", `out/${c.id}.mp4`, props], { stdio: "inherit" });
execFileSync("npx", ["remotion", "still", "DatoCurioso", `out/${c.id}-portada.png`, "--frame=0", props], {
  stdio: "inherit",
});
