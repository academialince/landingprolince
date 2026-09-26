import { linearTiming, TransitionSeries } from "@remotion/transitions";
import { fade } from "@remotion/transitions/fade";
import { Ademas } from "./Ademas";
import { Cierre } from "./Cierre";
import { Gancho } from "./Gancho";
import { Respuesta } from "./Respuesta";
import { CuriosidadProps, DURACION } from "./schema";

export const Curiosidad: React.FC<CuriosidadProps> = (props) => {
  const transicion = (
    <TransitionSeries.Transition
      presentation={fade()}
      timing={linearTiming({ durationInFrames: DURACION.transicion })}
    />
  );

  return (
    <TransitionSeries>
      <TransitionSeries.Sequence
        name="Gancho"
        durationInFrames={DURACION.gancho}
      >
        <Gancho gancho={props.gancho} destacado={props.destacado} />
      </TransitionSeries.Sequence>
      {transicion}
      <TransitionSeries.Sequence
        name="Respuesta"
        durationInFrames={DURACION.respuesta}
      >
        <Respuesta
          fecha={props.fecha}
          anio={props.anio}
          respuesta={props.respuesta}
        />
      </TransitionSeries.Sequence>
      {transicion}
      <TransitionSeries.Sequence
        name="Ademas"
        durationInFrames={DURACION.ademas}
      >
        <Ademas ademas={props.ademas} />
      </TransitionSeries.Sequence>
      {transicion}
      <TransitionSeries.Sequence
        name="Cierre"
        durationInFrames={DURACION.cierre}
      >
        <Cierre usuario={props.usuario} />
      </TransitionSeries.Sequence>
    </TransitionSeries>
  );
};
