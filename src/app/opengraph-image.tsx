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

export const alt = `${site.nombreLargo} · ${site.claim}`;
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

export default function OpenGraphImage() {
  return new ImageResponse(
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        alignItems: "center",
        justifyContent: "space-between",
        gap: 64,
        padding: "88px",
        background: "#00231A",
        color: "white",
      }}
    >
      <div style={{ display: "flex", flexDirection: "column", flex: 1 }}>
        <div
          style={{
            display: "flex",
            fontSize: 30,
            letterSpacing: 4,
            color: "#9FD3C2",
          }}
        >
          ACADEMIA ONLINE DE OPOSICIONES
        </div>
        <div
          style={{
            display: "flex",
            fontSize: 108,
            fontWeight: 800,
            marginTop: 24,
          }}
        >
          ProLince
        </div>
        <div
          style={{
            display: "flex",
            width: 120,
            height: 8,
            background: "#9FD3C2",
            marginTop: 40,
          }}
        />
        <div
          style={{
            display: "flex",
            fontSize: 40,
            lineHeight: 1.3,
            marginTop: 40,
            color: "rgba(255,255,255,0.82)",
          }}
        >
          Temario, tests y simulacros cronometrados para el acceso a la Guardia
          Civil
        </div>
      </div>
      <img src={isotipoSrc} width={300} height={300} alt="" />
    </div>,
    size,
  );
}
