/* eslint-disable @next/next/no-img-element -- ImageResponse solo admite <img> */
import { ImageResponse } from "next/og";
import { join } from "node:path";
import { readFile } from "node:fs/promises";
import { entradaPorSlug, fechaLarga } from "@/lib/blog";
import { tipoPorClave } from "@/content/blog-tipos";

export const revalidate = 300;

/*
 * Storie de Instagram (1080×1920) de cada entrada del blog, con el aspecto oscuro de la web:
 * portada, tipo y fecha, titular y el arranque de la entradilla. Abajo queda un hueco marcado
 * para pegar el sticker del enlace. Instagram tapa la franja superior y la inferior con sus
 * controles, así que ahí solo queda margen.
 */

const ANCHO = 1080;
const ALTO = 1920;
const MARGEN = 72;
const ALTO_FOTO = 460;

const C = {
  fondo: "#0b100c",
  superficie: "#121813",
  borde: "#27302a",
  verde: "#35ab6c",
  chip: "#123321",
  chipTexto: "#9ae5b5",
  texto: "#ecf0eb",
  apagado: "#a5ada5",
};

const leer = (ruta: string) => readFile(join(process.cwd(), ruta));
const [barlow, manrope500, manrope700, mono, logo] = await Promise.all([
  leer("src/fuentes-og/barlow-condensed-latin-800-normal.woff"),
  leer("src/fuentes-og/manrope-latin-500-normal.woff"),
  leer("src/fuentes-og/manrope-latin-700-normal.woff"),
  leer("src/fuentes-og/jetbrains-mono-latin-700-normal.woff"),
  leer("public/brand/prolince-logo-horizontal-negativo.svg"),
]);
const logoSrc = `data:image/svg+xml;base64,${logo.toString("base64")}`;

/** La portada se lee del disco si es nuestra (/blog/x.jpg); si es una URL externa, se usa tal cual. */
async function portadaSrc(url: string | null) {
  if (!url) return null;
  if (/^https?:\/\//.test(url)) return url;
  try {
    const datos = await readFile(join(process.cwd(), "public", url.replace(/^\/+/, "")));
    const tipo = url.endsWith(".png") ? "png" : url.endsWith(".webp") ? "webp" : "jpeg";
    return `data:image/${tipo};base64,${datos.toString("base64")}`;
  } catch {
    return null;
  }
}

/** Corta el texto en la última palabra entera antes del límite. */
function recortar(texto: string, max: number) {
  if (texto.length <= max) return texto;
  const corte = texto.slice(0, max);
  return `${corte.slice(0, corte.lastIndexOf(" ")).replace(/[,;:.\s]+$/, "")}…`;
}

/** Esquina de visor: dos trazos verdes en L. */
function Esquina({ pos }: { pos: "ai" | "ad" | "bi" | "bd" }) {
  const arriba = pos[0] === "a";
  const izquierda = pos[1] === "i";
  const trazo = `5px solid ${C.verde}`;
  return (
    <div
      style={{
        position: "absolute",
        width: 46,
        height: 46,
        ...(arriba ? { top: 0, borderTop: trazo } : { bottom: 0, borderBottom: trazo }),
        ...(izquierda ? { left: 0, borderLeft: trazo } : { right: 0, borderRight: trazo }),
      }}
    />
  );
}

export async function GET(_: Request, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const e = await entradaPorSlug(slug);
  if (!e) return new Response("No encontrada", { status: 404 });

  const portada = await portadaSrc(e.portada_url);
  const titulo = e.titulo;
  const tamTitulo = titulo.length > 75 ? 76 : titulo.length > 50 ? 86 : 96;
  const entradilla = e.entradilla ? recortar(e.entradilla, titulo.length > 50 ? 120 : 160) : null;
  const fecha = fechaLarga(e.publicado_en);

  return new ImageResponse(
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        flexDirection: "column",
        position: "relative",
        padding: `240px ${MARGEN}px 130px`,
        background: C.fondo,
        backgroundImage: `linear-gradient(rgba(53,171,108,0.07) 1px, transparent 1px), linear-gradient(90deg, rgba(53,171,108,0.07) 1px, transparent 1px)`,
        backgroundSize: "64px 64px",
        color: C.texto,
        fontFamily: "Manrope",
      }}
    >
      {/* Brillo verde detrás de la tarjeta */}
      <div
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          width: ANCHO,
          height: ALTO,
          backgroundImage: "radial-gradient(70% 40% at 80% 18%, rgba(53,171,108,0.20) 0%, rgba(11,16,12,0) 100%)",
        }}
      />

      {/* Cabecera: logo y etiqueta de visor */}
      <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between" }}>
        <img src={logoSrc} height={72} width={Math.round((72 * 4347) / 1252)} alt="" />
        <div style={{ display: "flex", fontFamily: "JetBrains Mono", fontSize: 24, letterSpacing: 3, color: C.verde }}>
          {"// NUEVO EN EL BLOG"}
        </div>
      </div>

      {/* Tarjeta */}
      <div
        style={{
          display: "flex",
          flexDirection: "column",
          marginTop: 56,
          background: C.superficie,
          border: `2px solid ${C.borde}`,
          borderRadius: 10,
          overflow: "hidden",
        }}
      >
        {portada ? (
          <img src={portada} width={ANCHO - MARGEN * 2 - 4} height={ALTO_FOTO} alt="" style={{ objectFit: "cover" }} />
        ) : (
          <div style={{ height: 8, background: C.verde }} />
        )}
        <div style={{ display: "flex", flexDirection: "column", padding: "38px 48px 46px" }}>
          <div style={{ display: "flex", alignItems: "center", gap: 20, fontSize: 28 }}>
            <div style={{ display: "flex", padding: "6px 22px", borderRadius: 40, background: C.chip, color: C.chipTexto, fontWeight: 700 }}>
              {tipoPorClave(e.tipo).etiqueta}
            </div>
            {fecha && <div style={{ display: "flex", color: C.apagado }}>{fecha}</div>}
          </div>
          <div
            style={{
              display: "flex",
              marginTop: 26,
              fontFamily: "Barlow Condensed",
              fontSize: tamTitulo,
              lineHeight: 0.98,
              textTransform: "uppercase",
              letterSpacing: 0.5,
            }}
          >
            {titulo}
          </div>
          {entradilla && (
            <div style={{ display: "flex", marginTop: 24, fontSize: 34, lineHeight: 1.4, color: C.apagado }}>{entradilla}</div>
          )}
        </div>
      </div>

      {/* Hueco para el sticker del enlace: ocupa el espacio que sobre bajo la tarjeta */}
      <div style={{ display: "flex", flexGrow: 1, flexDirection: "column", alignItems: "center", justifyContent: "center" }}>
        <div style={{ display: "flex", fontFamily: "JetBrains Mono", fontSize: 24, letterSpacing: 3, color: C.verde }}>
          {"// LEE EL ARTÍCULO COMPLETO"}
        </div>
        <div style={{ position: "relative", display: "flex", marginTop: 22, width: 600, height: 150 }}>
          <Esquina pos="ai" />
          <Esquina pos="ad" />
          <Esquina pos="bi" />
          <Esquina pos="bd" />
        </div>
      </div>
    </div>,
    {
      width: ANCHO,
      height: ALTO,
      fonts: [
        { name: "Barlow Condensed", data: barlow, weight: 800, style: "normal" },
        { name: "Manrope", data: manrope500, weight: 500, style: "normal" },
        { name: "Manrope", data: manrope700, weight: 700, style: "normal" },
        { name: "JetBrains Mono", data: mono, weight: 700, style: "normal" },
      ],
    },
  );
}
