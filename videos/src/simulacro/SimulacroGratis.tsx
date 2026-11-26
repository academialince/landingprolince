import { useEffect, useState } from "react";
import { AbsoluteFill, Audio, continueRender, delayRender, interpolate, Sequence, staticFile } from "remotion";
import { Barrido, Entrada, Subtitulos, agruparLineas } from "../uco/Piezas";
import { FPS } from "../uco/tokens";
import * as E from "./Escenas";
import { DURACION_LOCUCION, PALABRAS } from "./palabras";

/**
 * «Simulacro gratis · temas 1, 4, 6, 7 y 15» (vertical 1080×1920, ~54 s).
 * Voz, música y efectos de ElevenLabs. Aspecto de prolinceacademia.com en modo oscuro (rediseño táctico).
 */
const { en } = E;
const FIN = DURACION_LOCUCION + 1.3;
export const DURACION_SIMULACRO = Math.ceil(FIN * FPS);

type Corte = "barrido" | "golpe";
const ESCENAS: { desde: number; Escena: React.FC<{ inicio: number }>; corte?: Corte }[] = [
  { desde: 0, Escena: E.Gancho },
  { desde: en("Empezad") - 0.1, Escena: E.Temas, corte: "golpe" },
  { desde: en("Por", 1) - 0.08, Escena: E.Anuncio, corte: "barrido" },
  { desde: en("solo") - 0.3, Escena: E.Ranking, corte: "barrido" },
  { desde: en("Aspirantes", 1) - 0.08, Escena: E.Guardias, corte: "golpe" },
  { desde: en("Es") - 0.1, Escena: E.Llamada, corte: "barrido" },
  { desde: en("Prolince", 2) - 0.1, Escena: E.Cierre, corte: "golpe" },
];

const DESTACADAS = new Set([
  "temas", "problema", "cinco", "gratuito", "ranking", "puesto", "nota", "parcial", "diciembre", "gratis", "alumno",
  "simulacro", "excusas", "examen", "real", "estudia", "compite", "aprueba", "uno", "cuatro", "seis", "siete", "quince",
]);
const LINEAS = agruparLineas(PALABRAS);
// Sin subtítulos en la llamada y el cierre: el texto grande ya dice lo mismo que la voz.
const SIN_SUBTITULOS: [number, number][] = [
  [0, en("Empezad") - 0.1],
  [en("Es") - 0.1, FIN],
];

const useFuentes = () => {
  const [espera] = useState(() => delayRender("Cargando fuentes"));
  useEffect(() => {
    Promise.all([
      document.fonts.load('800 100px "Barlow Condensed"'),
      document.fonts.load('700 100px "Barlow Condensed"'),
      document.fonts.load('800 100px "Manrope Variable"'),
      document.fonts.load('500 40px "Manrope Variable"'),
      document.fonts.load('700 40px "JetBrains Mono"'),
    ]).then(() => continueRender(espera));
  }, [espera]);
};

// Efectos de sonido: golpe en cada número, en el sello, en los cambios de bloque y en el cierre; tic-tac en la cuenta atrás.
const golpes: number[] = [
  en("Aspirantes", 0) - 0.02,
  en("ocho", 0) - 0.04,
  en("ocho", 1) - 0.04,
  en("Sabéis") - 0.04,
  ...E.TEMAS.map((t) => en(t.palabra) - 0.06),
  en("excusas") - 0.04,
  ESCENAS[4].desde - 0.02,
  en("aprueba") - 0.04,
];
const whooshes: number[] = [ESCENAS[2].desde - 0.1, ESCENAS[3].desde - 0.1, ESCENAS[5].desde - 0.1, en("Estudia") - 0.1, en("compite") - 0.1];
const inicioCuenta = en("cuatro", 1) - 0.1;
const tics = Array.from({ length: Math.floor(en("Es") - inicioCuenta) }, (_, i) => inicioCuenta + i);

export const SimulacroGratis: React.FC = () => {
  useFuentes();
  return (
    <AbsoluteFill style={{ background: "#090e0a" }}>
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
      <Subtitulos ocultar={SIN_SUBTITULOS} lineas={LINEAS} destacadas={DESTACADAS} />
      {ESCENAS.filter((e) => e.corte === "barrido").map(({ desde }) => (
        <Sequence key={`b${desde}`} from={Math.round(desde * FPS) - 5} durationInFrames={11} name="Barrido">
          <Barrido />
        </Sequence>
      ))}

      {/* Audio: voz, música por debajo y efectos. */}
      <Audio src={staticFile("simulacro/locucion.mp3")} />
      <Audio
        src={staticFile("simulacro/musica.mp3")}
        volume={(f) =>
          interpolate(f, [0, 8, (en("aprueba") - 0.3) * FPS, en("aprueba") * FPS, FIN * FPS - 20, FIN * FPS], [0, 0.26, 0.26, 0.42, 0.42, 0], {
            extrapolateLeft: "clamp",
            extrapolateRight: "clamp",
          })
        }
      />
      {golpes.map((t, i) => (
        <Sequence key={`g${i}`} from={Math.max(0, Math.round(t * FPS))} durationInFrames={45} name="Golpe">
          <Audio src={staticFile("simulacro/impacto.mp3")} volume={0.5} />
        </Sequence>
      ))}
      {whooshes.map((t, i) => (
        <Sequence key={`w${i}`} from={Math.max(0, Math.round(t * FPS))} durationInFrames={62} name="Whoosh">
          <Audio src={staticFile("simulacro/whoosh.mp3")} volume={0.3} />
        </Sequence>
      ))}
      {tics.map((t, i) => (
        <Sequence key={`t${i}`} from={Math.round(t * FPS)} durationInFrames={20} name="Tic">
          <Audio src={staticFile("simulacro/tic.mp3")} volume={0.35} />
        </Sequence>
      ))}
    </AbsoluteFill>
  );
};
