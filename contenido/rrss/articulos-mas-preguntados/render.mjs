/**
 * Pasa video.html a MP4 vertical 1080×1920 a 30 fps, fotograma a fotograma.
 *
 *   node render.mjs                      → articulo-mas-preguntado-01.mp4
 *   node render.mjs --stills 1,5,9       → solo capturas PNG de esos segundos (para revisar)
 *
 * Necesita Playwright (Chromium) y un ffmpeg con libx264. El ffmpeg se toma de $FFMPEG o del PATH;
 * `pip install imageio-ffmpeg` trae uno estático válido.
 * El vídeo sale sin pista de audio: la música se añade en Instagram/TikTok.
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
const { DUR, FPS } = await page.evaluate(() => window.VIDEO);
const stage = await page.$("#stage");

if (stillsArg > -1) {
  for (const s of process.argv[stillsArg + 1].split(",").map(Number)) {
    await page.evaluate((t) => window.render(t), s);
    await stage.screenshot({ path: join(aqui, `_still_${String(s).replace(".", "_")}.png`) });
  }
  await browser.close();
  process.exit(0);
}

const ff = spawn(ffmpeg, [
  "-y", "-loglevel", "error",
  "-f", "image2pipe", "-framerate", String(FPS), "-c:v", "png", "-i", "-",
  "-c:v", "libx264", "-preset", "slow", "-crf", "18", "-pix_fmt", "yuv420p", "-profile:v", "high",
  "-an", "-movflags", "+faststart",
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
