import "@fontsource-variable/manrope";
import { AbsoluteFill, Img, staticFile } from "remotion";

// Tokens de src/app/globals.css de la landing, pasados de OKLCH a hex.
export const C = {
  fondo: "#ffffff",
  texto: "#121b16",
  primario: "#03512d",
  suave: "#e3f4e8",
  suaveTexto: "#004624",
  profundo: "#002a15",
  apagado: "#f2f7f5",
  apagadoTexto: "#535e57",
  borde: "#dde4e0",
  bordeTarjeta: "#d1e6d9",
  punto: "#439b64",
  marcoMovil: "#0B1714",
};

export const fontFamily = "'Manrope Variable', Manrope, sans-serif";

/** Fondo del hero de la web: aura que respira, rejilla girada y partículas. */
export const EscenaFondo: React.FC<{ frame: number; fps: number }> = ({ frame, fps }) => {
  const s = frame / fps;
  const respira = (periodo: number, desfase = 0) => Math.sin(((s + desfase) / periodo) * Math.PI * 2);
  return (
    <AbsoluteFill style={{ overflow: "hidden" }}>
      <div
        style={{
          position: "absolute",
          inset: "18% -30% 8%",
          borderRadius: "50%",
          background: "radial-gradient(ellipse at 50% 45%, #a9e9bc88, #d8f5df88 40%, transparent 69%)",
          opacity: 0.82 + respira(8) * 0.18,
          transform: `scale(${1 + respira(8) * 0.04})`,
        }}
      />
      <div
        style={{
          position: "absolute",
          inset: "20% -40%",
          opacity: 0.32,
          backgroundImage:
            "linear-gradient(#03512d20 2px, transparent 2px), linear-gradient(90deg, #03512d20 2px, transparent 2px)",
          backgroundSize: "72px 72px",
          backgroundPosition: `0 ${s * 12}px`,
          transform: "rotate(-12deg)",
          maskImage: "radial-gradient(ellipse, black, transparent 70%)",
        }}
      />
      {[
        { top: "30%", left: "6%", tam: 12, d: 0 },
        { top: "78%", left: "90%", tam: 12, d: 2 },
        { top: "92%", left: "64%", tam: 8, d: 1 },
      ].map((p, i) => (
        <span
          key={i}
          style={{
            position: "absolute",
            top: p.top,
            left: p.left,
            width: p.tam,
            height: p.tam,
            borderRadius: "50%",
            background: C.punto,
            opacity: 0.82 + respira(4, p.d) * 0.18,
            transform: `scale(${1 + respira(4, p.d) * 0.04})`,
          }}
        />
      ))}
    </AbsoluteFill>
  );
};

/** Tarjeta flotante blanca, igual que las del hero. */
export const TarjetaFlotante: React.FC<{ style: React.CSSProperties; children: React.ReactNode }> = ({ style, children }) => (
  <div
    style={{
      position: "absolute",
      display: "flex",
      alignItems: "center",
      gap: 28,
      border: `2px solid ${C.bordeTarjeta}`,
      background: "#ffffffed",
      borderRadius: 40,
      padding: 36,
      boxShadow: "0 36px 80px -36px #03512d55",
      ...style,
    }}
  >
    {children}
  </div>
);

/** Emblema con el aro discontinuo que gira, como en el hero. */
export const Emblema: React.FC<{ frame: number; tam: number }> = ({ frame, tam }) => (
  <div
    style={{
      position: "relative",
      padding: tam * 0.1,
      borderRadius: "50%",
      background: "#ffffffde",
      border: "2px solid #b9d7c4",
      boxShadow: "0 32px 72px -30px #03512d55",
    }}
  >
    <div
      style={{
        position: "absolute",
        inset: -tam * 0.12,
        borderRadius: "50%",
        border: "2px dashed #03512d45",
        transform: `rotate(${frame * 0.4}deg)`,
      }}
    />
    <Img src={staticFile("prolince-logo.svg")} style={{ width: tam, height: tam, display: "block" }} />
  </div>
);
