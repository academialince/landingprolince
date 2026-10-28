import { existsSync, readdirSync } from "node:fs";
import { join } from "node:path";
import { Config } from "@remotion/cli/config";

Config.setVideoImageFormat("jpeg");
Config.setOverwriteOutput(true);

// Chromium preinstalado en el entorno cloud (Playwright), sea cual sea su versión; si no hay
// ninguno, Remotion descarga el suyo (en local).
function chromiumLocal() {
  const raiz = process.env.PLAYWRIGHT_BROWSERS_PATH ?? "/opt/pw-browsers";
  if (!existsSync(raiz)) return null;
  const candidatos = readdirSync(raiz)
    .filter((d) => d.startsWith("chromium_headless_shell-"))
    .sort()
    .reverse()
    .flatMap((d) => [
      join(raiz, d, "chrome-headless-shell-linux64", "chrome-headless-shell"),
      join(raiz, d, "chrome-linux", "headless_shell"),
    ]);
  return candidatos.find((c) => existsSync(c)) ?? null;
}

const chromium = chromiumLocal();
if (chromium) Config.setBrowserExecutable(chromium);
