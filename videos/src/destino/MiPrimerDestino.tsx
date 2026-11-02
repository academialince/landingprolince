import { useEffect, useState } from "react";
import { AbsoluteFill, Audio, continueRender, delayRender, Sequence, staticFile } from "remotion";
import * as E from "./Escenas";
import { DURACION_LOCUCION, momento } from "./locucion";
import { Destello, Entrada, Fondo, Subtitulos } from "./Piezas";
import { FPS } from "./tokens";

const FIN = DURACION_LOCUCION + 1;
export const DURACION_DESTINO = Math.ceil(FIN * FPS);

// Cortes en segundos de la locución (los tramos están en locucion.ts).
const ESCENAS: { desde: number; Escena: React.FC<{ inicio: number }>; destello?: boolean }[] = [
  { desde: 0, Escena: E.Para },
  { desde: 0.76, Escena: E.Gancho, destello: true },
  { desde: 3.95, Escena: E.Peleando, destello: true },
  { desde: 6.75, Escena: E.EstoEs, destello: true },
  { desde: 8.72, Escena: E.Mapa },
  { desde: 11.9, Escena: E.Contador, destello: true },
  { desde: 14.88, Escena: E.Entra, destello: true },
  { desde: momento(6, "buscas"), Escena: E.Busca },
  { desde: 18.09, Escena: E.Bandera },
  { desde: 19.52, Escena: E.Funda },
  { desde: 22.04, Escena: E.Defiende, destello: true },
  { desde: 24.41, Escena: E.Puntos, destello: true },
  { desde: 28.11, Escena: E.Racha },
  { desde: 30.75, Escena: E.Compite, destello: true },
  { desde: 33.19, Escena: E.Derbi },
  { desde: momento(14, "¡y"), Escena: E.EnLlamas },
  { desde: 38.14, Escena: E.Empleo, destello: true },
  { desde: 42.18, Escena: E.Llamada, destello: true },
  { desde: 46.23, Escena: E.Cierre, destello: true },
];

// Tramos sin subtítulos: el texto ya ocupa la pantalla.
const SIN_SUBTITULOS: [number, number][] = [
  [0, 3.95],
  [11.9, 14.88],
  [22.04, 24.41],
  [42.18, FIN],
];

const useFuentes = () => {
  const [espera] = useState(() => delayRender("Cargando fuentes"));
  useEffect(() => {
    Promise.all([
      document.fonts.load('800 100px "Barlow Condensed"'),
      document.fonts.load('700 100px "Barlow Condensed"'),
      document.fonts.load('700 100px "JetBrains Mono"'),
      document.fonts.load('700 40px "Manrope Variable"'),
    ]).then(() => continueRender(espera));
  }, [espera]);
};

export const MiPrimerDestino: React.FC = () => {
  useFuentes();
  return (
    <AbsoluteFill>
      <Fondo />
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
      {ESCENAS.filter((e) => e.destello).map(({ desde }) => (
        <Sequence key={desde} from={Math.round(desde * FPS) - 2} durationInFrames={9} name="Destello">
          <Destello />
        </Sequence>
      ))}
      <Audio src={staticFile("destino/locucion.mp3")} />
    </AbsoluteFill>
  );
};
