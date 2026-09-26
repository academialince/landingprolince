import { Composition } from "remotion";
import { PreguntaTest, preguntaSchema, duracionPregunta } from "./PreguntaTest";
import preguntas from "./datos/preguntas.json";

export const FPS = 30;

export const RemotionRoot: React.FC = () => {
  return (
    <Composition
      id="PreguntaTest"
      component={PreguntaTest}
      schema={preguntaSchema}
      width={1080}
      height={1920}
      fps={FPS}
      durationInFrames={duracionPregunta(5, FPS)}
      defaultProps={{ ...preguntas[0], segundosCuenta: 5 }}
      calculateMetadata={({ props }) => ({
        durationInFrames: duracionPregunta(props.segundosCuenta, FPS),
      })}
    />
  );
};
