/**
 * Pasa video.html a MP4 vertical 1080×1920 a 30 fps, fotograma a fotograma.
 *
 *   node render.mjs                                  → Nº 1 (datos/01-art-282-bis-lecrim.js)
 *   node render.mjs --datos 02-art-5-lo-2-1986       → cualquier otro archivo de datos/
 *   node render.mjs --datos 02-art-5-lo-2-1986 --stills 1,5,9   → solo capturas de esos segundos
 *
 * Deja articulo-mas-preguntado-NN.mp4 y portada-NN.png (el primer fotograma, para subirlo como
 * miniatura si la red social no toma el primer fotograma sola).
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
const arg = (n) => { const i = process.argv.indexOf(n); return i > -1 ? process.argv[i + 1] : null; };
const datos = arg("--datos");
const stills = arg("--stills");

const browser = await chromium.launch(process.env.CHROMIUM ? { executablePath: process.env.CHROMIUM } : {});
const page = await browser.newPage({ viewport: { width: 1080, height: 1920 }, deviceScaleFactor: 1 });
await page.goto(pathToFileURL(join(aqui, "video.html")).href + "?render" + (datos ? `&datos=${datos}` : ""));
await page.evaluate(async () => {
  await document.fonts.ready;
  await Promise.all([...document.images].map((i) => (i.complete ? null : new Promise((r) => (i.onload = i.onerror = r)))));
});
const { DUR, FPS, numero } = await page.evaluate(() => ({ ...window.VIDEO, numero: window.DATA.numero }));
const stage = await page.$("#stage");
const salida = join(aqui, `articulo-mas-preguntado-${numero}.mp4`);

if (stills) {
  for (const s of stills.split(",").map(Number)) {
    await page.evaluate((t) => window.render(t), s);
    await stage.screenshot({ path: join(aqui, `_still_${numero}_${String(s).replace(".", "_")}.png`) });
  }
  await browser.close();
  process.exit(0);
}

await page.evaluate(() => window.render(0));
await stage.screenshot({ path: join(aqui, `portada-${numero}.png`) });

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
