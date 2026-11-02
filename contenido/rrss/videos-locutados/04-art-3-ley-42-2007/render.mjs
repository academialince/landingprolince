/**
 * Pasa video.html a MP4 vertical 1080×1920 a 30 fps con la locución (locucion.mp3).
 *
 *   node render.mjs                     → articulo-que-mas-cae.mp4 + articulo-que-mas-cae-portada.png
 *   node render.mjs --stills 2,15,40    → solo capturas de esos segundos, para revisar
 *
 * Necesita Playwright (Chromium) y ffmpeg con libx264 y aac ($FFMPEG o el del PATH).
 */
import { chromium } from "playwright";
import { spawn } from "node:child_process";
import { fileURLToPath, pathToFileURL } from "node:url";
import { dirname, join } from "node:path";

const aqui = dirname(fileURLToPath(import.meta.url));
const ffmpeg = process.env.FFMPEG || "ffmpeg";
const arg = (n) => { const i = process.argv.indexOf(n); return i > -1 ? process.argv[i + 1] : null; };
const stills = arg("--stills");
const nombre = process.env.NOMBRE || "articulo-definiciones-patrimonio-natural";

const browser = await chromium.launch(process.env.CHROMIUM ? { executablePath: process.env.CHROMIUM } : {});
const page = await browser.newPage({ viewport: { width: 1080, height: 1920 }, deviceScaleFactor: 1 });
await page.goto(pathToFileURL(join(aqui, "video.html")).href + "?render");
await page.evaluate(async () => {
  await document.fonts.ready;
  await Promise.all([...document.images].map((i) => (i.complete ? null : new Promise((r) => (i.onload = i.onerror = r)))));
});
const { DUR, FPS } = await page.evaluate(() => window.VIDEO);
const stage = await page.$("#stage");

if (stills) {
  for (const s of stills.split(",").map(Number)) {
    await page.evaluate((t) => window.render(t), s);
    await stage.screenshot({ path: join(aqui, `_still_${String(s).replace(".", "_")}.png`) });
  }
  await browser.close();
  process.exit(0);
}

// Portada: el fotograma del artículo revelado (s3), que sirve de miniatura.
await page.evaluate(() => window.render(window.VIDEO.PORTADA ?? 0));
await stage.screenshot({ path: join(aqui, `${nombre}-portada.png`) });

const ff = spawn(ffmpeg, [
  "-y", "-loglevel", "error",
  "-f", "image2pipe", "-framerate", String(FPS), "-c:v", "png", "-i", "-",
  "-i", join(aqui, "locucion.mp3"),
  "-map", "0:v", "-map", "1:a",
  "-c:v", "libx264", "-preset", "medium", "-crf", "18", "-pix_fmt", "yuv420p", "-profile:v", "high",
  "-c:a", "aac", "-b:a", "192k", "-movflags", "+faststart",
  join(aqui, `${nombre}.mp4`),
], { stdio: ["pipe", "inherit", "inherit"] });

const total = Math.round(DUR * FPS);
for (let f = 0; f < total; f++) {
  await page.evaluate((t) => window.render(t), f / FPS);
  const png = await stage.screenshot({ type: "png" });
  if (!ff.stdin.write(png)) await new Promise((r) => ff.stdin.once("drain", r));
}
ff.stdin.end();
await new Promise((r, j) => ff.on("close", (c) => (c === 0 ? r() : j(new Error(`ffmpeg salió con ${c}`)))));
await browser.close();
console.log(`✔ ${nombre}.mp4`);
