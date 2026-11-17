import { existsSync, readdirSync } from "node:fs";
import { join } from "node:path";
import { Config } from "@remotion/cli/config";

Config.setVideoImageFormat("jpeg");
Config.setOverwriteOutput(true);

// Chromium preinstalado en el entorno cloud (si existe); si no, Remotion descarga el suyo.
// La versión de /opt/pw-browsers cambia entre contenedores, así que se busca la que haya.
const buscarChromium = () => {
  const base = "/opt/pw-browsers";
  if (!existsSync(base)) return null;
  for (const dir of readdirSync(base).filter((d) => d.startsWith("chromium_headless_shell-")).sort().reverse()) {
    for (const ruta of ["chrome-headless-shell-linux64/chrome-headless-shell", "chrome-linux/headless_shell"]) {
      const exe = join(base, dir, ruta);
      if (existsSync(exe)) return exe;
    }
  }
  return null;
};
const chromium = buscarChromium();
if (chromium) Config.setBrowserExecutable(chromium);
