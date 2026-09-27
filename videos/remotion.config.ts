import { existsSync } from "node:fs";
import { Config } from "@remotion/cli/config";

Config.setVideoImageFormat("jpeg");
Config.setOverwriteOutput(true);

// Chromium preinstalado en el entorno cloud (si existe); si no, Remotion descarga el suyo.
const CHROMIUM_LOCAL = "/opt/pw-browsers/chromium_headless_shell-1194/chrome-linux/headless_shell";
if (existsSync(CHROMIUM_LOCAL)) Config.setBrowserExecutable(CHROMIUM_LOCAL);
