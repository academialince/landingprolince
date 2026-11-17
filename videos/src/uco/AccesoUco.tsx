import { useEffect, useState } from "react";
import { AbsoluteFill, Audio, continueRender, delayRender, interpolate, Sequence, staticFile } from "remotion";
import * as E from "./Escenas";
import { DURACION_LOCUCION } from "./palabras";
import { Barrido, Entrada, Subtitulos } from "./Piezas";
import { FPS, en } from "./tokens";

/**
 * Lanzamiento del curso «Acceso UCO / Policía Judicial» (vertical 1080×1920, ~42 s).
 * Voz: ElevenLabs («Bobby», public/uco/locucion.mp3). Música y efectos: ElevenLabs.
 * Look & feel de prolince.com: tokens del tema claro, Manrope y la banda verde profunda del cierre.
 */
const FIN = DURACION_LOCUCION + 1.6;
export const DURACION_UCO = Math.ceil(FIN * FPS);

// Cortes en segundos, anclados a las palabras de la locución.
const ESCENAS: { desde: number; Escena: React.FC<{ inicio: number }>; corte?: "barrido" | "golpe" }[] = [
  { desde: 0, Escena: E.Gancho },
  { desde: en("empieza", 1) - 0.08, Escena: E.Examen, corte: "golpe" },
  { desde: en("Hoy") - 0.1, Escena: E.Lanzamiento, corte: "barrido" },
  { desde: en("Más") - 0.05, Escena: E.Preguntas, corte: "barrido" },
  { desde: en("Tests") - 0.05, Escena: E.Tests, corte: "barrido" },
  { desde: en("Podrás") - 0.05, Escena: E.Repaso, corte: "barrido" },
  { desde: en("Sin") - 0.05, Escena: E.Movil, corte: "barrido" },
  { desde: en("Un", 2) - 0.05, Escena: E.Precio, corte: "barrido" },
  { desde: en("Tu") - 0.08, Escena: E.Eslogan, corte: "golpe" },
  { desde: en("Accede") - 0.06, Escena: E.Cierre, corte: "barrido" },
];

// Tramos sin subtítulos: el texto grande ya dice lo mismo que la voz.
const SIN_SUBTITULOS: [number, number][] = [
  [0, ESCENAS[2].desde],
  [ESCENAS[8].desde, FIN],
];

const useFuentes = () => {
  const [espera] = useState(() => delayRender("Cargando fuentes"));
  useEffect(() => {
    Promise.all([
      document.fonts.load('800 100px "Manrope Variable"'),
      document.fonts.load('500 40px "Manrope Variable"'),
      document.fonts.load('700 40px "JetBrains Mono"'),
    ]).then(() => continueRender(espera));
  }, [espera]);
};

export const AccesoUco: React.FC = () => {
  useFuentes();
  return (
    <AbsoluteFill style={{ background: "#ffffff" }}>
      {ESCENAS.map(({ desde, Escena }, i) => {
        const inicio = Math.round(desde * FPS);
        const fin = Math.round((ESCENAS[i + 1]?.desde ?? FIN) * FPS);
        return (
          <Sequence key={i} from={inicio} durationInFrames={fin - inicio} name={Escena.name}>
            <Entrada>
              <Escena inicio={inicio / FPS} />
            </Entrada>
          </Sequence>
        );
      })}
      <Subtitulos ocultar={SIN_SUBTITULOS} />
      {ESCENAS.filter((e) => e.corte === "barrido").map(({ desde }) => (
        <Sequence key={`b${desde}`} from={Math.round(desde * FPS) - 5} durationInFrames={11} name="Barrido">
          <Barrido />
        </Sequence>
      ))}

      {/* Audio: voz, música por debajo y efectos en los cortes. */}
      <Audio src={staticFile("uco/locucion.mp3")} />
      <Audio
        src={staticFile("uco/musica.mp3")}
        volume={(f) =>
          interpolate(f, [0, 10, DURACION_LOCUCION * FPS - 10, DURACION_LOCUCION * FPS + 10, FIN * FPS - 15, FIN * FPS], [0, 0.22, 0.22, 0.4, 0.4, 0], {
            extrapolateLeft: "clamp",
            extrapolateRight: "clamp",
          })
        }
      />
      {ESCENAS.slice(1).map(({ desde, corte }) => (
        <Sequence key={`s${desde}`} from={Math.max(0, Math.round(desde * FPS) - (corte === "golpe" ? 1 : 6))} durationInFrames={60} name="Efecto">
          <Audio src={staticFile(corte === "golpe" ? "uco/impacto.mp3" : "uco/whoosh.mp3")} volume={corte === "golpe" ? 0.55 : 0.3} />
        </Sequence>
      ))}
    </AbsoluteFill>
  );
};
