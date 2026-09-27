import { ImageResponse } from "next/og";
import { join } from "node:path";
import { readFile } from "node:fs/promises";
import { site } from "@/content/site";

// El isotipo no depende de la petición: se lee una vez al cargar el módulo.
const isotipo = await readFile(
  join(process.cwd(), "public/brand/prolince-logo.svg"),
  "base64",
);
const isotipoSrc = `data:image/svg+xml;base64,${isotipo}`;

export const alt = site.nombreLargo;
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

/**
 * Solo el logo, centrado. WhatsApp y otras apps recortan la vista previa en cuadrado desde el
 * centro, así que cualquier cosa en los laterales se perdería.
 */
export default function OpenGraphImage() {
  return new ImageResponse(
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        background: "white",
      }}
    >
      <img src={isotipoSrc} width={460} height={460} alt="" />
    </div>,
    size,
  );
}
