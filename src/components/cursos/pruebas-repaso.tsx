"use client";

import { useEffect, useRef, useState } from "react";
import { BookOpen, Brain, Check, ChevronLeft, Dumbbell, Languages, MessagesSquare, Timer } from "lucide-react";
import { Reveal } from "@/components/layout/reveal";
import { Telefono } from "@/components/mockups/marcos";

type Prueba = { nombre: string; detalle: string };
type Tipo = "conocimientos" | "ingles" | "psicotecnico" | "fisicas" | "entrevista";

const INTERVALO_MS = 3600;

/** Cada prueba del curso se representa con una pantalla de la plataforma. */
function tipoDe(nombre: string): Tipo {
  const n = nombre.toLowerCase();
  if (n.includes("ingl")) return "ingles";
  if (n.includes("psicot")) return "psicotecnico";
  if (n.includes("físic") || n.includes("fisic")) return "fisicas";
  if (n.includes("entrevista")) return "entrevista";
  return "conocimientos";
}

/** La pregunta de conocimientos cambia según el curso; el resto de áreas son comunes. */
const conocimientos: Record<string, { tema: string; pregunta: string; opciones: string[]; correcta: number }> = {
  "acceso-guardia-civil": {
    tema: "Tema 4 · Constitución",
    pregunta: "¿Qué órgano es la cámara de representación territorial?",
    opciones: ["El Congreso de los Diputados", "El Senado", "El Consejo de Ministros", "El Tribunal Constitucional"],
    correcta: 1,
  },
  "colegio-guardias-jovenes": {
    tema: "Tema 3 · Constitución",
    pregunta: "¿Cuántos artículos tiene la Constitución española?",
    opciones: ["159", "169", "179", "186"],
    correcta: 1,
  },
};

export function PruebasRepaso({ pruebas, slug }: { pruebas: Prueba[]; slug: string }) {
  const [activa, setActiva] = useState(0);
  const [enPausa, setEnPausa] = useState(false);
  const escena = useRef<HTMLDivElement>(null);
  const visible = useRef(false);

  // Avanza solo mientras la sección está en pantalla, sin ratón encima y sin «reducir movimiento».
  useEffect(() => {
    const el = escena.current;
    if (!el) return;
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    const observador = new IntersectionObserver(([e]) => {
      visible.current = e.isIntersecting;
    });
    observador.observe(el);
    const id = window.setInterval(() => {
      if (visible.current && !enPausa) setActiva((a) => (a + 1) % pruebas.length);
    }, INTERVALO_MS);
    return () => {
      observador.disconnect();
      window.clearInterval(id);
    };
  }, [enPausa, pruebas.length]);

  return (
    <div
      ref={escena}
      className="grid items-start gap-10 lg:grid-cols-2 lg:gap-14"
      onMouseEnter={() => setEnPausa(true)}
      onMouseLeave={() => setEnPausa(false)}
    >
      <ol className="grid gap-4">
        {pruebas.map((prueba, i) => (
          <li key={prueba.nombre}>
            <Reveal retardo={i * 50}>
              <div
                onClick={() => setActiva(i)}
                className={`flex cursor-pointer gap-5 rounded-xl border bg-surface p-6 transition-[border-color,box-shadow] duration-300 ${
                  activa === i
                    ? "border-primary shadow-[0_0_0_1px_var(--color-primary)]"
                    : "border-border hover:border-border-strong"
                }`}
              >
                <span
                  aria-hidden
                  className={`inline-flex size-10 shrink-0 items-center justify-center rounded-full text-body-sm font-bold tabular transition-colors duration-300 ${
                    activa === i ? "bg-primary text-primary-fg" : "bg-primary-soft text-primary-soft-fg"
                  }`}
                >
                  {i + 1}
                </span>
                <div className="min-w-0">
                  <h3 className="text-h3">{prueba.nombre}</h3>
                  <p className="mt-2 text-muted-foreground">{prueba.detalle}</p>
                </div>
              </div>
            </Reveal>
          </li>
        ))}
      </ol>

      <div className="hidden justify-center lg:sticky lg:top-40 lg:flex">
        <Telefono className="max-w-[18rem]">
          <div className="relative h-full">
            {pruebas.map((p, i) => (
              <div
                key={p.nombre}
                className={`absolute inset-0 transition-[opacity,transform] ease-out ${
                  activa === i
                    ? "opacity-100 delay-200 duration-500"
                    : "pointer-events-none translate-y-2 opacity-0 duration-200"
                }`}
              >
                <Pantalla tipo={tipoDe(p.nombre)} slug={slug} paso={i} total={pruebas.length} activa={activa === i} />
              </div>
            ))}
          </div>
        </Telefono>
      </div>
    </div>
  );
}

/* ------------------------------------------------------------------ pantallas */

const iconos = { conocimientos: BookOpen, ingles: Languages, psicotecnico: Brain, fisicas: Dumbbell, entrevista: MessagesSquare };
const titulos = {
  conocimientos: "Conocimientos",
  ingles: "Inglés",
  psicotecnico: "Psicotécnicos",
  fisicas: "Plan físico",
  entrevista: "Entrevista y médico",
};

function Pantalla({ tipo, slug, paso, total, activa }: { tipo: Tipo; slug: string; paso: number; total: number; activa: boolean }) {
  const Icono = iconos[tipo];
  return (
    <div className="flex h-full flex-col bg-background pt-11 text-foreground">
      <div className="flex items-center justify-between px-4 pb-3">
        <ChevronLeft size={17} className="text-muted-foreground" />
        <span className="flex items-center gap-1.5 text-[0.6rem] font-bold uppercase tracking-wider text-muted-foreground">
          <Icono size={11} className="text-primary" />
          {titulos[tipo]}
        </span>
        <span className="text-[0.6rem] font-bold text-muted-foreground tabular">
          {paso + 1}/{total}
        </span>
      </div>
      <div className="flex gap-1 px-4">
        {Array.from({ length: total }, (_, i) => (
          <span key={i} className={`h-1 flex-1 rounded-full ${i <= paso ? "bg-primary" : "bg-muted"}`} />
        ))}
      </div>
      <div className="flex min-h-0 flex-1 flex-col px-4 pt-4">
        {tipo === "conocimientos" && <Pregunta {...(conocimientos[slug] ?? conocimientos["acceso-guardia-civil"])} activa={activa} />}
        {tipo === "ingles" && (
          <Pregunta
            tema="Reading · Grammar"
            pregunta="Choose the correct option: She ___ to work by train every day."
            opciones={["go", "goes", "going", "is go"]}
            correcta={1}
            activa={activa}
          />
        )}
        {tipo === "psicotecnico" && (
          <Pregunta
            tema="Razonamiento numérico"
            pregunta="Continúa la serie: 3 · 6 · 12 · 24 · ?"
            opciones={["36", "42", "48", "30"]}
            correcta={2}
            activa={activa}
          />
        )}
        {tipo === "fisicas" && <PlanFisico activa={activa} />}
        {tipo === "entrevista" && <Entrevista activa={activa} />}
      </div>
    </div>
  );
}

function Pregunta({
  tema,
  pregunta,
  opciones,
  correcta,
  activa,
}: {
  tema: string;
  pregunta: string;
  opciones: string[];
  correcta: number;
  activa: boolean;
}) {
  return (
    <>
      <div className="flex items-center justify-between">
        <span className="text-[0.6rem] font-semibold text-muted-foreground">{tema}</span>
        <span className="flex items-center gap-1 rounded-full bg-primary-soft px-2 py-0.5 text-[0.6rem] font-bold text-primary-soft-fg tabular">
          <Timer size={10} />
          00:42
        </span>
      </div>
      <p className="mt-3 text-[0.82rem] font-bold leading-snug">{pregunta}</p>
      <div className="mt-4 grid gap-2">
        {opciones.map((o, i) => {
          const marcada = activa && i === correcta;
          return (
            <div
              key={o}
              style={{ transitionDelay: marcada ? "900ms" : "0ms" }}
              className={`flex items-center gap-2.5 rounded-lg border px-3 py-2.5 transition-colors duration-300 ${
                marcada ? "border-primary bg-primary-soft" : "border-border bg-surface"
              }`}
            >
              <span
                style={{ transitionDelay: marcada ? "900ms" : "0ms" }}
                className={`flex size-5 shrink-0 items-center justify-center rounded-full text-[0.6rem] font-bold transition-colors duration-300 ${
                  marcada ? "bg-primary text-primary-fg" : "bg-muted text-muted-foreground"
                }`}
              >
                {marcada ? <Check size={11} strokeWidth={3} /> : String.fromCharCode(65 + i)}
              </span>
              <span className="text-[0.7rem] font-medium leading-tight">{o}</span>
            </div>
          );
        })}
      </div>
      <div className="mt-auto pb-4">
        <div className="flex h-10 items-center justify-center rounded-lg bg-primary text-[0.72rem] font-bold text-primary-fg">
          Siguiente pregunta
        </div>
      </div>
    </>
  );
}

function Lista({ titulo, subtitulo, items, activa }: { titulo: string; subtitulo: string; items: string[]; activa: boolean }) {
  return (
    <>
      <p className="text-[0.6rem] font-semibold text-muted-foreground">{subtitulo}</p>
      <p className="mt-1 text-[0.95rem] font-extrabold leading-tight">{titulo}</p>
      <div className="mt-4 grid gap-2">
        {items.map((t, i) => {
          const hecho = activa;
          return (
            <div key={t} className="flex items-center gap-2.5 rounded-lg border border-border bg-surface px-3 py-2.5">
              <span
                style={{ transitionDelay: hecho ? `${400 + i * 350}ms` : "0ms" }}
                className={`flex size-5 shrink-0 items-center justify-center rounded-full transition-colors duration-300 ${
                  hecho ? "bg-primary text-primary-fg" : "bg-muted text-transparent"
                }`}
              >
                <Check size={11} strokeWidth={3} />
              </span>
              <span className="text-[0.7rem] font-medium leading-tight">{t}</span>
            </div>
          );
        })}
      </div>
    </>
  );
}

function PlanFisico({ activa }: { activa: boolean }) {
  return (
    <>
      <Lista
        subtitulo="Plan de entrenamiento · Semana 6"
        titulo="Sesiones de esta semana"
        items={["Circuito de agilidad", "Carrera de resistencia", "Extensiones de brazos", "Natación"]}
        activa={activa}
      />
      <div className="mt-auto pb-4">
        <div className="rounded-lg bg-surface-tinted px-3 py-2.5">
          <div className="flex justify-between text-[0.62rem] font-semibold">
            <span className="text-muted-foreground">Hacia las marcas exigidas</span>
            <span className="text-primary tabular">72 %</span>
          </div>
          <div className="mt-2 h-1.5 overflow-hidden rounded-full bg-muted">
            <div
              className="h-full rounded-full bg-primary transition-[width] duration-[1600ms] ease-out"
              style={{ width: activa ? "72%" : "20%" }}
            />
          </div>
        </div>
      </div>
    </>
  );
}

function Entrevista({ activa }: { activa: boolean }) {
  return (
    <>
      <Lista
        subtitulo="Última fase"
        titulo="Lista de preparación"
        items={["Biodata revisada", "Coherencia con el psicotécnico", "Simulación de entrevista", "Cuadro médico de exclusiones"]}
        activa={activa}
      />
      <div className="mt-auto pb-4">
        <div className="flex h-10 items-center justify-center rounded-lg bg-primary text-[0.72rem] font-bold text-primary-fg">
          Repasar la guía
        </div>
      </div>
    </>
  );
}
