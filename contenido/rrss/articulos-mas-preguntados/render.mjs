/**
 * Pasa video.html a MP4 vertical 1080×1920 a 30 fps, fotograma a fotograma.
 *
 *   node render.mjs                      → articulo-mas-preguntado-01.mp4
 *   node render.mjs --stills 1,5,9       → solo capturas PNG de esos segundos (para revisar)
 *
 * Necesita Playwright (Chromium) y un ffmpeg con libx264. El ffmpeg se toma de $FFMPEG o del PATH;
 * `pip install imageio-ffmpeg` trae uno estático válido.
 * La pista de audio son efectos sintetizados (tic del contador, cuenta atrás y acierto) para que
 * el vídeo no salga mudo; en Instagram/TikTok se puede bajar su volumen y poner música encima.
 */
import { chromium } from "playwright";
import { spawn } from "node:child_process";
import { fileURLToPath, pathToFileURL } from "node:url";
import { dirname, join } from "node:path";

const aqui = dirname(fileURLToPath(import.meta.url));
const ffmpeg = process.env.FFMPEG || "ffmpeg";
const salida = join(aqui, process.env.SALIDA || "articulo-mas-preguntado-01.mp4");
const stillsArg = process.argv.indexOf("--stills");

const browser = await chromium.launch(process.env.CHROMIUM ? { executablePath: process.env.CHROMIUM } : {});
const page = await browser.newPage({ viewport: { width: 1080, height: 1920 }, deviceScaleFactor: 1 });
await page.goto(pathToFileURL(join(aqui, "video.html")).href + "?render");
await page.evaluate(async () => {
  await document.fonts.ready;
  await Promise.all([...document.images].map((i) => (i.complete ? null : new Promise((r) => (i.onload = i.onerror = r)))));
});
const { DUR, FPS, T } = await page.evaluate(() => window.VIDEO);
const stage = await page.$("#stage");

if (stillsArg > -1) {
  for (const s of process.argv[stillsArg + 1].split(",").map(Number)) {
    await page.evaluate((t) => window.render(t), s);
    await stage.screenshot({ path: join(aqui, `_still_${String(s).replace(".", "_")}.png`) });
  }
  await browser.close();
  process.exit(0);
}

/* Efectos: [instante, frecuencia, duración, volumen] */
const sfx = [];
const t0 = T.s3 + 0.5;
for (let i = 0; i < 11; i++) sfx.push([t0 + i * 0.24, 880 + i * 40, 0.06, 0.25]);
const cd1 = T.s6 + 2.0 + 3;
for (let i = 0; i < 3; i++) sfx.push([cd1 - 3 + i, 660, 0.09, 0.3]);
sfx.push([cd1, 1046.5, 0.18, 0.35], [cd1 + 0.12, 1318.5, 0.35, 0.35]);
sfx.push([T.s2, 220, 0.25, 0.35], [T.s5 + 1.6, 330, 0.15, 0.3]);

const entradas = sfx.flatMap(([, f, d]) => ["-f", "lavfi", "-i", `sine=frequency=${f}:duration=${d}`]);
const filtros = sfx
  .map(([t, , d, v], i) => `[${i + 1}:a]afade=t=out:st=${Math.max(0, d - 0.04)}:d=0.04,volume=${v * 3},adelay=${Math.round(t * 1000)}:all=1[a${i}]`)
  .join(";");
const mezcla = `${filtros};${sfx.map((_, i) => `[a${i}]`).join("")}amix=inputs=${sfx.length}:normalize=0,apad=whole_dur=${DUR}[aout]`;

const ff = spawn(ffmpeg, [
  "-y", "-loglevel", "error",
  "-f", "image2pipe", "-framerate", String(FPS), "-c:v", "png", "-i", "-",
  ...entradas,
  "-filter_complex", mezcla,
  "-map", "0:v", "-map", "[aout]",
  "-c:v", "libx264", "-preset", "slow", "-crf", "18", "-pix_fmt", "yuv420p", "-profile:v", "high",
  "-c:a", "aac", "-b:a", "160k", "-shortest", "-movflags", "+faststart",
  salida,
], { stdio: ["pipe", "inherit", "inherit"] });

const total = Math.round(DUR * FPS);
for (let f = 0; f < total; f++) {
  await page.evaluate((t) => window.render(t), f / FPS);
  const png = await stage.screenshot({ type: "png" });
  if (!ff.stdin.write(png)) await new Promise((r) => ff.stdin.once("drain", r));
  if (f % 90 === 0) process.stdout.write(`\r${f}/${total}`);
}
ff.stdin.end();
await new Promise((r, j) => ff.on("close", (c) => (c === 0 ? r() : j(new Error(`ffmpeg salió con ${c}`)))));
await browser.close();
console.log(`\n✔ ${salida}`);
