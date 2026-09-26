import "./index.css";
import { Composition, staticFile } from "remotion";
import {
  CaptionedVideo,
  calculateCaptionedVideoMetadata,
  captionedVideoSchema,
} from "./CaptionedVideo";
import { MensajeDelDia } from "./MensajeDelDia";
import {
  DURACION_TOTAL,
  mensajeDelDiaDefaultProps,
  mensajeDelDiaSchema,
} from "./MensajeDelDia/schema";

// Each <Composition> is an entry in the sidebar!

export const RemotionRoot: React.FC = () => {
  return (
    <>
      <Composition
        id="MensajeDelDia"
        component={MensajeDelDia}
        schema={mensajeDelDiaSchema}
        defaultProps={mensajeDelDiaDefaultProps}
        durationInFrames={DURACION_TOTAL}
        fps={30}
        width={1080}
        height={1920}
      />
      <Composition
        id="CaptionedVideo"
        component={CaptionedVideo}
        calculateMetadata={calculateCaptionedVideoMetadata}
        schema={captionedVideoSchema}
        width={1080}
        height={1920}
        defaultProps={{
          src: staticFile("sample-video.mp4"),
        }}
      />
    </>
  );
};
