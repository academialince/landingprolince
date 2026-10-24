import { ImageResponse } from "next/og";
import { join } from "node:path";
import { readFile } from "node:fs/promises";

// El isotipo no depende de la petición: se lee una vez al cargar el módulo.
const isotipo = `data:image/svg+xml;base64,${await readFile(join(process.cwd(), "public/brand/prolince-logo.svg"), "base64")}`;

const VERDE_OSCURO = "#0d1a13";
const VERDE = "#35ab6c";

/**
 * Imagen de marca generada: fondo verde casi negro, isotipo, antetítulo, título y pie. La usan
 * las entradas del blog sin portada (al compartirlas) y los packs de la tienda mientras no haya
 * fotos propias. El texto va centrado en vertical porque WhatsApp y otras apps recortan en
 * cuadrado desde el centro.
 */
export function imagenMarca({
  antetitulo,
  titulo,
  pie,
  ancho = 1200,
  alto = 630,
}: {
  antetitulo: string;
  titulo: string;
  pie?: string;
  ancho?: number;
  alto?: number;
}) {
  const tam = titulo.length > 70 ? 54 : titulo.length > 40 ? 64 : 76;
  return new ImageResponse(
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        padding: "0 90px",
        background: `radial-gradient(90% 90% at 85% 10%, #1d4a31 0%, ${VERDE_OSCURO} 60%)`,
        color: "white",
        fontFamily: "sans-serif",
        position: "relative",
      }}
    >
      {/* eslint-disable-next-line @next/next/no-img-element -- ImageResponse solo admite <img> */}
      <img src={isotipo} width={96} height={96} alt="" style={{ position: "absolute", top: 56, left: 90 }} />
      <div style={{ display: "flex", fontSize: 26, letterSpacing: 6, textTransform: "uppercase", color: VERDE, fontWeight: 700 }}>
        {`// ${antetitulo}`}
      </div>
      <div style={{ display: "flex", marginTop: 22, fontSize: tam, lineHeight: 1.08, fontWeight: 800, textTransform: "uppercase", maxWidth: ancho - 180 }}>
        {titulo}
      </div>
      {pie && (
        <div style={{ display: "flex", marginTop: 28, fontSize: 30, color: "rgba(255,255,255,0.75)" }}>{pie}</div>
      )}
      <div style={{ position: "absolute", bottom: 56, left: 90, display: "flex", gap: 14 }}>
        {[0, 1, 2, 3].map((i) => (
          <div key={i} style={{ width: 46, height: 10, background: VERDE, transform: "skewX(-35deg)" }} />
        ))}
      </div>
      <div style={{ position: "absolute", bottom: 50, right: 90, display: "flex", fontSize: 24, fontWeight: 700, color: "rgba(255,255,255,0.85)" }}>
        prolinceacademia.com
      </div>
    </div>,
    { width: ancho, height: alto },
  );
}
