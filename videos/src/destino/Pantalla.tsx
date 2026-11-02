import { Easing, Img, interpolate, staticFile, useCurrentFrame, useVideoConfig } from "remotion";
import { C, F, clamp } from "./tokens";

/** Encuadre de la cámara sobre la captura, en píxeles de la imagen: centro y ancho visible. */
export type Encuadre = { t: number; cx: number; cy: number; cw: number };
type Punto = { x: number; y: number };
type Rect = { x: number; y: number; w: number; h: number };

export type Captura = { src: string; w: number; h: number };

export const CAPTURAS = {
  portada: { src: "destino/01-portada.png", w: 1280, h: 820 },
  buscar: { src: "destino/03-elegir-busqueda.png", w: 1280, h: 820 },
  mapa: { src: "destino/05-mapa.png", w: 1280, h: 820 },
  sevilla: { src: "destino/07-mapa-sevilla.png", w: 1280, h: 820 },
  clasificacion: { src: "destino/08-clasificacion.png", w: 1280, h: 820 },
  derbi: { src: "destino/10-derbi.png", w: 1280, h: 820 },
  ficha: { src: "destino/11-mi-ficha.png", w: 1280, h: 820 },
  movilMapa: { src: "destino/12-movil-mapa.png", w: 390, h: 844 },
  movilFicha: { src: "destino/13-movil-ficha.png", w: 390, h: 844 },
} satisfies Record<string, Captura>;

const suave = Easing.bezier(0.65, 0, 0.35, 1);

const encuadreEn = (claves: Encuadre[], s: number): Omit<Encuadre, "t"> => {
  if (claves.length === 1 || s <= claves[0].t) return claves[0];
  const i = claves.findIndex((k) => k.t > s);
  if (i === -1) return claves[claves.length - 1];
  const a = claves[i - 1];
  const b = claves[i];
  const p = interpolate(s, [a.t, b.t], [0, 1], { ...clamp, easing: suave });
  return { cx: a.cx + (b.cx - a.cx) * p, cy: a.cy + (b.cy - a.cy) * p, cw: a.cw + (b.cw - a.cw) * p };
};

type Props = {
  captura: Captura;
  tipo: "navegador" | "movil";
  ancho: number;
  alto: number;
  claves: Encuadre[];
  /** Cursor: se desplaza de `desde` a `hasta` entre `mover[0]` y `mover[1]` (s) y pulsa en `clic`. */
  cursor?: { desde: Punto; hasta: Punto; mover: [number, number]; clic: number };
  /** Recuadro menta que aparece en `t` (s) para señalar una zona de la captura. */
  marca?: Rect & { t: number };
};

export const Pantalla: React.FC<Props> = ({ captura, tipo, ancho, alto, claves, cursor, marca }) => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  const s = frame / fps;

  // Deriva lenta y continua para que la imagen nunca esté quieta.
  const deriva = 1 + 0.012 * Math.sin(s * 0.9);
  const e = encuadreEn(claves, s);
  const cw = Math.min(e.cw / deriva, captura.w);
  const ch = (cw * alto) / ancho;
  const cx = Math.min(Math.max(e.cx, cw / 2), captura.w - cw / 2);
  const cy = Math.min(Math.max(e.cy, ch / 2), captura.h - ch / 2);
  const escala = ancho / cw;
  const aPantalla = (p: Punto) => ({ x: (p.x - (cx - cw / 2)) * escala, y: (p.y - (cy - ch / 2)) * escala });

  const barra = tipo === "navegador" ? 54 : 0;
  const borde = tipo === "movil" ? 16 : 3;

  let cursorEl: React.ReactNode = null;
  if (cursor) {
    const p = interpolate(s, cursor.mover, [0, 1], { ...clamp, easing: suave });
    const pos = aPantalla({
      x: cursor.desde.x + (cursor.hasta.x - cursor.desde.x) * p,
      y: cursor.desde.y + (cursor.hasta.y - cursor.desde.y) * p,
    });
    const pulsa = interpolate(s, [cursor.clic - 0.08, cursor.clic, cursor.clic + 0.12], [1, 0.82, 1], clamp);
    const onda = interpolate(s, [cursor.clic, cursor.clic + 0.5], [0, 1], clamp);
    cursorEl = (
      <>
        {s >= cursor.clic && (
          <div
            style={{
              position: "absolute",
              left: pos.x - 60,
              top: pos.y - 60,
              width: 120,
              height: 120,
              borderRadius: "50%",
              border: `6px solid ${C.menta}`,
              scale: String(0.3 + onda),
              opacity: 1 - onda,
            }}
          />
        )}
        <svg
          width={64}
          height={64}
          viewBox="0 0 24 24"
          style={{
            position: "absolute",
            left: pos.x - 8,
            top: pos.y - 4,
            scale: String(pulsa),
            transformOrigin: "8px 4px",
            opacity: interpolate(s, [cursor.mover[0] - 0.3, cursor.mover[0]], [0, 1], clamp),
            filter: "drop-shadow(0 6px 10px rgba(0,0,0,0.55))",
          }}
        >
          <path d="M5 2l14 11.2-6.6.6 3.9 7.3-2.9 1.5-3.9-7.4L5 20z" fill="#fff" stroke={C.profundo} strokeWidth={1.4} strokeLinejoin="round" />
        </svg>
      </>
    );
  }

  let marcaEl: React.ReactNode = null;
  if (marca && s >= marca.t) {
    const a = aPantalla({ x: marca.x, y: marca.y });
    const entra = interpolate(s, [marca.t, marca.t + 0.3], [0, 1], { ...clamp, easing: Easing.out(Easing.back(2)) });
    const margen = 12;
    marcaEl = (
      <div
        style={{
          position: "absolute",
          left: a.x - margen,
          top: a.y - margen,
          width: marca.w * escala + margen * 2,
          height: marca.h * escala + margen * 2,
          borderRadius: 18,
          border: `5px solid ${C.menta}`,
          boxShadow: `0 0 0 9999px rgba(3,6,4,${0.45 * entra}), 0 0 40px ${C.acento}`,
          opacity: entra,
          scale: String(1.15 - 0.15 * entra),
        }}
      />
    );
  }

  return (
    <div
      style={{
        width: ancho + borde * 2,
        borderRadius: tipo === "movil" ? 72 : 26,
        background: tipo === "movil" ? "#050806" : C.superficie,
        border: tipo === "movil" ? `2px solid ${C.borde}` : `${borde}px solid ${C.borde}`,
        padding: tipo === "movil" ? borde : 0,
        boxShadow: `0 50px 120px -30px rgba(0,0,0,0.85), 0 0 90px -20px ${C.acento}66`,
        overflow: "hidden",
      }}
    >
      {tipo === "navegador" && (
        <div style={{ height: barra, display: "flex", alignItems: "center", gap: 12, padding: "0 22px", background: C.profundo }}>
          {["#ff5f57", "#febc2e", "#28c840"].map((c) => (
            <span key={c} style={{ width: 16, height: 16, borderRadius: 8, background: c }} />
          ))}
          <span
            style={{
              marginLeft: 18,
              flex: 1,
              height: 32,
              borderRadius: 16,
              background: C.superficie,
              color: C.apagado,
              fontFamily: F.texto,
              fontSize: 20,
              fontWeight: 600,
              display: "flex",
              alignItems: "center",
              paddingLeft: 18,
            }}
          >
            Mi primer destino · Prolince
          </span>
        </div>
      )}
      <div
        style={{
          position: "relative",
          width: ancho,
          height: alto,
          overflow: "hidden",
          borderRadius: tipo === "movil" ? 56 : 0,
        }}
      >
        <Img
          src={staticFile(captura.src)}
          style={{
            position: "absolute",
            width: captura.w * escala,
            height: captura.h * escala,
            left: -(cx - cw / 2) * escala,
            top: -(cy - ch / 2) * escala,
            maxWidth: "none",
          }}
        />
        {marcaEl}
        {cursorEl}
      </div>
    </div>
  );
};
