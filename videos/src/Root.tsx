import { Composition } from "remotion";
import { PreguntaTest, preguntaSchema, duracionPregunta } from "./PreguntaTest";
import preguntas from "./datos/preguntas.json";
import { DURACION_DESTINO, MiPrimerDestino } from "./destino/MiPrimerDestino";

export const FPS = 30;

export const RemotionRoot: React.FC = () => {
  return (
    <>
    <Composition
      id="PreguntaTest"
      component={PreguntaTest}
      schema={preguntaSchema}
      width={1080}
      height={1920}
      fps={FPS}
      durationInFrames={duracionPregunta(8, FPS)}
      defaultProps={{ ...preguntas[0], segundosCuenta: 8 }}
      calculateMetadata={({ props }) => ({
        durationInFrames: duracionPregunta(props.segundosCuenta, FPS),
      })}
    />
    <Composition
      id="MiPrimerDestino"
      component={MiPrimerDestino}
      width={1080}
      height={1920}
      fps={FPS}
      durationInFrames={DURACION_DESTINO}
    />
    </>
  );
};
