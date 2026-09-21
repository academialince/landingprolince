"use client";

import { useEffect, useRef, useState, type PointerEvent } from "react";
import { Check, Pause, Play, Sparkles, TrendingUp } from "lucide-react";
import { Logo } from "@/components/ui/logo";
import { Telefono } from "@/components/mockups/marcos";
import { PantallaTest } from "@/components/mockups/pantalla-test";

/** Una ilustración de producto: animación CSS y profundidad por puntero, sin vídeo ni WebGL. */
export function HeroExperience() {
  const escena = useRef<HTMLDivElement>(null);
  const frame = useRef<number | null>(null);
  const [pausada, setPausada] = useState(false);

  useEffect(() => {
    const el = escena.current;
    if (!el) return;
    const observer = new IntersectionObserver(([entry]) => {
      el.dataset.visible = String(entry.isIntersecting);
    });
    observer.observe(el);
    return () => {
      observer.disconnect();
      if (frame.current !== null) cancelAnimationFrame(frame.current);
    };
  }, []);

  function inclinar(event: PointerEvent<HTMLDivElement>) {
    if (pausada || event.pointerType !== "mouse" || window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    const el = event.currentTarget;
    const rect = el.getBoundingClientRect();
    const x = ((event.clientX - rect.left) / rect.width - 0.5) * 12;
    const y = ((event.clientY - rect.top) / rect.height - 0.5) * -9;
    if (frame.current !== null) cancelAnimationFrame(frame.current);
    frame.current = requestAnimationFrame(() => {
      el.style.setProperty("--tilt-x", `${y}deg`);
      el.style.setProperty("--tilt-y", `${x}deg`);
    });
  }

  function centrar() {
    if (frame.current !== null) cancelAnimationFrame(frame.current);
    escena.current?.style.setProperty("--tilt-x", "0deg");
    escena.current?.style.setProperty("--tilt-y", "0deg");
  }

  return (
    <div className="hero-experience">
      <div
        ref={escena}
        className="hero-scene"
        data-paused={pausada}
        onPointerMove={inclinar}
        onPointerLeave={centrar}
        aria-hidden="true"
      >
        <div className="hero-aura" />
        <div className="hero-grid" />
        <div className="hero-orbit hero-orbit-outer"><span /></div>
        <div className="hero-orbit hero-orbit-inner"><span /></div>
        <div className="hero-wordmark">PROLINCE</div>
        <div className="hero-depth">
          <div className="hero-emblem"><Logo alto={80} decorativo /></div>
          <div className="hero-phone-float">
            <Telefono className="hero-phone">
              <PantallaTest animada />
              <div className="hero-screen-glint" />
            </Telefono>
          </div>
          <div className="hero-float-card hero-card-progress">
            <span className="hero-card-icon"><TrendingUp size={18} /></span>
            <div>
              <p className="hero-card-eyebrow">CADA PASO CUENTA</p>
              <p className="hero-card-title">Tu progreso, visible.</p>
              <div className="hero-mini-chart">
                {[30, 42, 38, 58, 54, 72, 84, 100].map((height, i) => (
                  <span key={i} style={{ height: `${height}%`, animationDelay: `${i * 100}ms` }} />
                ))}
              </div>
            </div>
          </div>
          <div className="hero-float-card hero-card-answer">
            <span className="hero-card-icon"><Check size={20} /></span>
            <div>
              <p className="hero-card-title">Entiende cada respuesta.</p>
              <p className="hero-card-copy">Practica. Revisa. Avanza.</p>
            </div>
            <Sparkles size={18} className="text-primary" />
          </div>
          <span className="hero-particle hero-particle-one" />
          <span className="hero-particle hero-particle-two" />
          <span className="hero-particle hero-particle-three" />
        </div>
      </div>
      <div className="hero-scene-caption">
        <span>Tu preparación, siempre contigo.</span>
        <button
          type="button"
          className="hero-pause"
          aria-pressed={pausada}
          aria-label={pausada ? "Reanudar animación" : "Pausar animación"}
          onClick={() => { centrar(); setPausada(!pausada); }}
        >
          {pausada ? <Play size={13} aria-hidden /> : <Pause size={13} aria-hidden />}
        </button>
      </div>
    </div>
  );
}
