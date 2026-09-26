import { Easing, Interactive, interpolate, useCurrentFrame } from "remotion";
import { clamp, colores } from "../MensajeDelDia/theme";

// Píldora dorada, igual que «PREGUNTA DEL DÍA»
export const Etiqueta: React.FC<{ texto: string; desde?: number }> = ({
  texto,
  desde = 0,
}) => {
  const frame = useCurrentFrame();

  return (
    <Interactive.Div
      name="Etiqueta"
      style={{
        alignSelf: "flex-start",
        backgroundColor: colores.dorado,
        color: colores.verdeProfundo,
        fontSize: 48,
        fontWeight: 900,
        letterSpacing: 3,
        padding: "14px 32px",
        borderRadius: 18,
        scale: interpolate(frame, [desde, desde + 20], [0.6, 1], {
          ...clamp,
          easing: Easing.spring({ damping: 12 }),
          output: "perceptual-scale",
        }),
        opacity: interpolate(frame, [desde, desde + 10], [0, 1], clamp),
      }}
    >
      {texto}
    </Interactive.Div>
  );
};
