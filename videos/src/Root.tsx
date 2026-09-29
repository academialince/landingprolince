import { Composition, Folder } from "remotion";
import { PreguntaTest, preguntaSchema, duracionPregunta } from "./PreguntaTest";
import { HistoriaAnimada, historiaSchema, duracionHistoria, type Historia } from "./historia/HistoriaAnimada";
import preguntas from "./datos/preguntas.json";
import historias from "./datos/historias.json";

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
      <Folder name="Historias">
        {(historias as Historia[]).map((h) => (
          <Composition
            key={h.id}
            id={h.id}
            component={HistoriaAnimada}
            schema={historiaSchema}
            width={1080}
            height={1920}
            fps={FPS}
            durationInFrames={duracionHistoria(h, FPS)}
            defaultProps={h}
            calculateMetadata={({ props }) => ({ durationInFrames: duracionHistoria(props, FPS) })}
          />
        ))}
      </Folder>
    </>
  );
};
