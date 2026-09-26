import { linearTiming, TransitionSeries } from "@remotion/transitions";
import { fade } from "@remotion/transitions/fade";
import { Animo } from "./Animo";
import { Intro } from "./Intro";
import { Outro } from "./Outro";
import { Pregunta } from "./Pregunta";
import { DURACION, MensajeDelDiaProps } from "./schema";

export const MensajeDelDia: React.FC<MensajeDelDiaProps> = (props) => {
  const transicion = (
    <TransitionSeries.Transition
      presentation={fade()}
      timing={linearTiming({ durationInFrames: DURACION.transicion })}
    />
  );

  return (
    <TransitionSeries>
      <TransitionSeries.Sequence name="Intro" durationInFrames={DURACION.intro}>
        <Intro />
      </TransitionSeries.Sequence>
      {transicion}
      <TransitionSeries.Sequence name="Animo" durationInFrames={DURACION.animo}>
        <Animo animo={props.animo} />
      </TransitionSeries.Sequence>
      {transicion}
      <TransitionSeries.Sequence
        name="Pregunta"
        durationInFrames={DURACION.pregunta}
      >
        <Pregunta
          pregunta={props.pregunta}
          opciones={props.opciones}
          correcta={props.correcta}
          explicacion={props.explicacion}
        />
      </TransitionSeries.Sequence>
      {transicion}
      <TransitionSeries.Sequence name="Outro" durationInFrames={DURACION.outro}>
        <Outro />
      </TransitionSeries.Sequence>
    </TransitionSeries>
  );
};
