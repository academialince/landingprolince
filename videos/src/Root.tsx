import { Composition } from "remotion";
import { DatoCurioso, curiosidadSchema, duracionCuriosidad } from "./DatoCurioso";
import { PreguntaTest, preguntaSchema, duracionPregunta } from "./PreguntaTest";
import curiosidad from "./datos/curiosidad.json";
import preguntas from "./datos/preguntas.json";

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
        id="DatoCurioso"
        component={DatoCurioso}
        schema={curiosidadSchema}
        width={1080}
        height={1920}
        fps={FPS}
        durationInFrames={duracionCuriosidad(curiosidad, FPS)}
        defaultProps={curiosidad}
        calculateMetadata={({ props }) => ({
          durationInFrames: duracionCuriosidad(props, FPS),
        })}
      />
    </>
  );
};
