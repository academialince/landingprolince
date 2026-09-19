import { ImageResponse } from "next/og";
import { site } from "@/content/site";

export const alt = `${site.nombreLargo} · ${site.claim}`;
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

export default function OpenGraphImage() {
  return new ImageResponse(
    (
      <div
        style={{
          width: "100%",
          height: "100%",
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          padding: "88px",
          background: "#00231A",
          color: "white",
        }}
      >
        <div style={{ display: "flex", fontSize: 30, letterSpacing: 4, color: "#9FD3C2" }}>
          ACADEMIA ONLINE DE OPOSICIONES
        </div>
        <div style={{ display: "flex", fontSize: 108, fontWeight: 800, marginTop: 24 }}>
          ProLince
        </div>
        <div style={{ display: "flex", width: 120, height: 8, background: "#9FD3C2", marginTop: 40 }} />
        <div
          style={{
            display: "flex",
            fontSize: 40,
            lineHeight: 1.3,
            marginTop: 40,
            color: "rgba(255,255,255,0.82)",
            maxWidth: 900,
          }}
        >
          Temario, tests y simulacros cronometrados para el acceso a la Guardia Civil
        </div>
      </div>
    ),
    size,
  );
}
