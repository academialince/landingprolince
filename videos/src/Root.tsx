import { Composition, Folder } from "remotion";
import { PreguntaTest, preguntaSchema, duracionPregunta } from "./PreguntaTest";
import { Apertura, aperturaSchema, DURACION_APERTURA } from "./Apertura";
import { StoryInfo, storySchema, duracionStory } from "./StoryInfo";
import preguntas from "./datos/preguntas.json";
import stories from "./datos/stories.json";

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
        id="StoryInfo"
        component={StoryInfo}
        schema={storySchema}
        width={1080}
        height={1920}
        fps={FPS}
        durationInFrames={duracionStory(storySchema.parse(stories[0]), FPS)}
        defaultProps={storySchema.parse(stories[0])}
        calculateMetadata={({ props }) => ({ durationInFrames: duracionStory(props, FPS) })}
      />
      {/* Story «Mañana abrimos» de la apertura de la academia */}
      <Composition
        id="Apertura"
        component={Apertura}
        schema={aperturaSchema}
        width={1080}
        height={1920}
        fps={FPS}
        durationInFrames={DURACION_APERTURA * FPS}
        defaultProps={{
          etiqueta: "OBJ-00 · APERTURA",
          linea1: "MAÑANA",
          linea2: "ABRIMOS.",
          descripcion:
            "La plataforma para preparar Guardia Civil y Colegio de Guardias Jóvenes. Tests, simulacros y temario en un mismo sitio.",
          llamada: "Activa las notificaciones de la cuenta.",
          usuario: "@academiaprolince",
        }}
      />
      {/* Una entrada por story del JSON para verlas en el Studio sin tocar props. */}
      <Folder name="Stories">
        {stories.map((s) => {
          const story = storySchema.parse(s);
          return (
            <Composition
              key={story.id}
              id={story.id}
              component={StoryInfo}
              schema={storySchema}
              width={1080}
              height={1920}
              fps={FPS}
              durationInFrames={duracionStory(story, FPS)}
              defaultProps={story}
            />
          );
        })}
      </Folder>
    </>
  );
};
