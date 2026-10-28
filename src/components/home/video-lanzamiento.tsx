"use client";

import { useEffect, useRef, useState } from "react";
import { Pause, Play, Volume2, VolumeX } from "lucide-react";
import { Section } from "@/components/layout/section";

/**
 * Vídeo de lanzamiento del curso de Acceso a la Guardia Civil. Sin fecha: vale también después de abrir.
 *
 * Arranca solo y en silencio (los navegadores no dejan otra cosa) y en bucle. Dos botones: pausa o
 * reproducción, y sonido. En pantallas estrechas carga la versión vertical. Si la persona tiene
 * «reducir movimiento» activado, no arranca solo. Fuera de pantalla se pausa para no gastar batería,
 * salvo que lo haya pausado ella: entonces se queda como lo dejó.
 */
const FUENTES = {
  horizontal: { src: "/video/lanzamiento-web.mp4", poster: "/video/lanzamiento-web.jpg" },
  vertical: { src: "/video/lanzamiento-vertical.mp4", poster: "/video/lanzamiento-vertical.jpg" },
};

export function VideoLanzamiento() {
  const video = useRef<HTMLVideoElement>(null);
  const [formato, setFormato] = useState<keyof typeof FUENTES | null>(null);
  const [reproduciendo, setReproduciendo] = useState(false);
  const [silenciado, setSilenciado] = useState(true);
  const pausadoAMano = useRef(false);

  // El formato se decide en el navegador: en el servidor no se sabe el ancho de pantalla.
  useEffect(() => {
    const estrecha = window.matchMedia("(max-width: 767px)");
    const elegir = () => setFormato(estrecha.matches ? "vertical" : "horizontal");
    elegir();
    estrecha.addEventListener("change", elegir);
    return () => estrecha.removeEventListener("change", elegir);
  }, []);

  useEffect(() => {
    const v = video.current;
    if (!v || !formato) return;
    const sinMovimiento = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
    if (sinMovimiento) pausadoAMano.current = true;

    const observador = new IntersectionObserver(
      ([entrada]) => {
        if (entrada.isIntersecting) {
          if (!pausadoAMano.current) v.play().catch(() => setReproduciendo(false));
        } else if (!v.paused) {
          v.pause();
        }
      },
      { threshold: 0.35 },
    );
    observador.observe(v);
    return () => observador.disconnect();
  }, [formato]);

  const alternarReproduccion = () => {
    const v = video.current;
    if (!v) return;
    if (v.paused) {
      pausadoAMano.current = false;
      v.play().catch(() => {});
    } else {
      pausadoAMano.current = true;
      v.pause();
    }
  };

  const alternarSonido = () => {
    const v = video.current;
    if (!v) return;
    v.muted = !v.muted;
    setSilenciado(v.muted);
    // Quien activa el sonido quiere oírlo: si estaba pausado, arranca.
    if (!v.muted && v.paused) {
      pausadoAMano.current = false;
      v.play().catch(() => {});
    }
  };

  const fuente = formato ? FUENTES[formato] : null;
  const boton =
    "grid size-12 place-items-center rounded-full bg-black/60 text-white backdrop-blur-sm transition-colors hover:bg-black/80 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-white";

  return (
    <Section
      eyebrow="Ya disponible"
      titulo="Así es el curso de Acceso a la Guardia Civil"
      entradilla="Temario, tests, simulacros y estadísticas en la misma plataforma. Dale al sonido para escucharlo."
    >
      <div className="relative mx-auto aspect-[9/16] w-full max-w-[calc(78vh*9/16)] overflow-hidden rounded-2xl border border-border bg-primary-deep shadow-[0_24px_60px_-28px_rgba(2,67,52,0.45)] md:aspect-video md:max-w-none">
        {fuente && (
          <video
            ref={video}
            key={fuente.src}
            src={fuente.src}
            poster={fuente.poster}
            muted
            loop
            playsInline
            preload="metadata"
            onPlay={() => setReproduciendo(true)}
            onPause={() => setReproduciendo(false)}
            onClick={alternarReproduccion}
            className="h-full w-full cursor-pointer object-cover"
            aria-label="Vídeo de lanzamiento del curso de Acceso a la Guardia Civil"
          />
        )}
        <div className="absolute bottom-4 left-4 flex gap-2">
          <button type="button" onClick={alternarReproduccion} className={boton} aria-label={reproduciendo ? "Pausar el vídeo" : "Reproducir el vídeo"}>
            {reproduciendo ? <Pause size={20} aria-hidden /> : <Play size={20} aria-hidden />}
          </button>
          <button type="button" onClick={alternarSonido} className={boton} aria-label={silenciado ? "Activar el sonido" : "Silenciar el vídeo"} aria-pressed={!silenciado}>
            {silenciado ? <VolumeX size={20} aria-hidden /> : <Volume2 size={20} aria-hidden />}
          </button>
        </div>
      </div>
    </Section>
  );
}
