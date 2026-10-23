"use client";

import { useEffect, useRef, useState, type ComponentType } from "react";
import { BookOpen, Check, ChevronRight, FileText, House, ListChecks, Play, Timer } from "lucide-react";
import { Reveal } from "@/components/layout/reveal";
import { Telefono } from "@/components/mockups/marcos";

type Prueba = { nombre: string; detalle: string };

const INTERVALO_MS = 3400;

/**
 * Las pruebas del curso a la izquierda y, a la derecha, un móvil que recorre la plataforma en
 * bucle y por su cuenta: entra al curso, abre el temario, hace un test, mira los simulacros y la
 * documentación. El móvil es decorativo; el contenido con significado es la lista.
 */
export function PruebasRepaso({
  pruebas,
  slug,
  curso,
  temas,
}: {
  pruebas: Prueba[];
  slug: string;
  curso: string;
  temas: string[];
}) {
  return (
    <div className="grid items-start gap-10 lg:grid-cols-[minmax(0,1fr)_auto] lg:gap-16">
      <ol className="grid gap-3">
        {pruebas.map((prueba, i) => (
          <li key={prueba.nombre}>
            <Reveal retardo={i * 50}>
              <div className="flex gap-4 rounded-xl border border-border bg-surface px-5 py-4">
                <span
                  aria-hidden
                  className="inline-flex size-8 shrink-0 items-center justify-center rounded-full bg-primary text-[0.8rem] font-bold text-primary-fg tabular"
                >
                  {i + 1}
                </span>
                <div className="min-w-0">
                  <h3 className="text-h3 prueba-titulo">{prueba.nombre}</h3>
                  <p className="mt-1.5 text-body-sm text-muted-foreground">{prueba.detalle}</p>
                </div>
              </div>
            </Reveal>
          </li>
        ))}
      </ol>

      <div className="hidden w-[18rem] lg:sticky lg:top-40 lg:block">
        <RecorridoCurso slug={slug} curso={curso} temas={temas} />
      </div>
    </div>
  );
}

/* ------------------------------------------------------------- recorrido */

type Paso = "inicio" | "temario" | "test" | "simulacros" | "documentacion";

const pasos: { id: Paso; etiqueta: string; icono: ComponentType<{ size?: number; className?: string }> }[] = [
  { id: "inicio", etiqueta: "Inicio", icono: House },
  { id: "temario", etiqueta: "Temario", icono: BookOpen },
  { id: "test", etiqueta: "Tests", icono: ListChecks },
  { id: "simulacros", etiqueta: "Simulacros", icono: Timer },
  { id: "documentacion", etiqueta: "Docs", icono: FileText },
];

function RecorridoCurso({ slug, curso, temas }: { slug: string; curso: string; temas: string[] }) {
  const [activo, setActivo] = useState(0);
  const caja = useRef<HTMLDivElement>(null);

  // Avanza solo mientras se ve y si no se ha pedido reducir el movimiento.
  useEffect(() => {
    const el = caja.current;
    if (!el || window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    let visible = false;
    const observador = new IntersectionObserver(([e]) => {
      visible = e.isIntersecting;
    });
    observador.observe(el);
    const id = window.setInterval(() => {
      if (visible) setActivo((a) => (a + 1) % pasos.length);
    }, INTERVALO_MS);
    return () => {
      observador.disconnect();
      window.clearInterval(id);
    };
  }, []);

  return (
    <div ref={caja}>
      <Telefono className="max-w-[18rem]">
        <div className="flex h-full flex-col bg-background text-foreground">
          <div className="relative min-h-0 flex-1">
            {pasos.map((p, i) => (
              <div
                key={p.id}
                className={`absolute inset-0 transition-[opacity,transform] ease-out ${
                  activo === i
                    ? "opacity-100 delay-200 duration-500"
                    : "pointer-events-none translate-y-2 opacity-0 duration-200"
                }`}
              >
                <div className="flex h-full flex-col px-4 pt-11">
                  {p.id === "inicio" && <Inicio curso={curso} temas={temas} activa={activo === i} />}
                  {p.id === "temario" && <Temario temas={temas} activa={activo === i} />}
                  {p.id === "test" && <Test slug={slug} activa={activo === i} />}
                  {p.id === "simulacros" && <Simulacros slug={slug} activa={activo === i} />}
                  {p.id === "documentacion" && <Documentacion activa={activo === i} />}
                </div>
              </div>
            ))}
          </div>

          {/* barra de pestañas: la activa sigue al recorrido */}
          <nav className="grid grid-cols-5 border-t border-border bg-surface px-1 pb-4 pt-2">
            {pasos.map((p, i) => (
              <span
                key={p.id}
                className={`flex flex-col items-center gap-1 text-[0.5rem] font-semibold transition-colors duration-300 ${
                  activo === i ? "text-primary" : "text-muted-foreground"
                }`}
              >
                <p.icono size={14} />
                {p.etiqueta}
              </span>
            ))}
          </nav>
        </div>
      </Telefono>
    </div>
  );
}

/* --------------------------------------------------------------- pantallas */

function Cabecera({ antetitulo, titulo }: { antetitulo: string; titulo: string }) {
  return (
    <>
      <p className="text-[0.55rem] font-bold uppercase tracking-wider text-primary">{antetitulo}</p>
      <p className="mt-1 text-[0.95rem] font-extrabold leading-tight tracking-tight">{titulo}</p>
    </>
  );
}

function Barra({ valor, activa, retardo = 300 }: { valor: number; activa: boolean; retardo?: number }) {
  return (
    <div className="h-1.5 overflow-hidden rounded-full bg-muted">
      <div
        className="h-full rounded-full bg-primary transition-[width] duration-[1400ms] ease-out"
        style={{ width: activa ? `${valor}%` : "8%", transitionDelay: activa ? `${retardo}ms` : "0ms" }}
      />
    </div>
  );
}

function Inicio({ curso, temas, activa }: { curso: string; temas: string[]; activa: boolean }) {
  return (
    <>
      <Cabecera antetitulo="Curso en marcha" titulo={curso} />
      <div className="mt-3 rounded-lg border border-border bg-surface p-3">
        <div className="flex items-center justify-between text-[0.62rem] font-semibold">
          <span>Tu progreso</span>
          <span className="tabular text-primary">54 %</span>
        </div>
        <div className="mt-2">
          <Barra valor={54} activa={activa} />
        </div>
        <div className="mt-2.5 flex items-center gap-1.5 text-[0.6rem] text-muted-foreground">
          <Play size={10} className="text-primary" />
          Sigues en «{temas[3] ?? temas[0]}»
        </div>
      </div>
      <div className="mt-3 grid grid-cols-2 gap-2">
        {[
          ["Tests hechos", "312"],
          ["Aciertos", "78 %"],
          ["Simulacros", "6"],
          ["Racha", "12 días"],
        ].map(([k, v]) => (
          <div key={k} className="rounded-lg border border-border bg-surface px-3 py-2.5">
            <p className="text-[0.55rem] font-semibold text-muted-foreground">{k}</p>
            <p className="mt-0.5 text-[0.85rem] font-extrabold tabular">{v}</p>
          </div>
        ))}
      </div>
      <div className="mt-auto pb-3">
        <div className="flex h-10 items-center justify-center rounded-lg bg-primary text-[0.72rem] font-bold text-primary-fg">
          Continuar donde lo dejé
        </div>
      </div>
    </>
  );
}

function Temario({ temas, activa }: { temas: string[]; activa: boolean }) {
  const avance = [100, 100, 80, 45, 10, 0];
  return (
    <>
      <Cabecera antetitulo="Temario" titulo={`${temas.length} temas`} />
      <div className="mt-3 grid gap-1.5">
        {temas.slice(0, 6).map((t, i) => (
          <div key={t} className="rounded-md border border-border bg-surface px-2.5 py-2">
            <div className="flex items-center gap-2 text-[0.6rem]">
              <span className="w-4 shrink-0 font-bold tabular text-muted-foreground">{i + 1}</span>
              <span className="min-w-0 flex-1 truncate font-semibold">{t}</span>
              {avance[i] === 100 ? (
                <Check size={11} strokeWidth={3} className="shrink-0 text-primary" />
              ) : (
                <ChevronRight size={11} className="shrink-0 text-muted-foreground" />
              )}
            </div>
            <div className="mt-1.5 pl-6">
              <Barra valor={avance[i]} activa={activa} retardo={200 + i * 120} />
            </div>
          </div>
        ))}
      </div>
    </>
  );
}

const preguntas: Record<string, { tema: string; pregunta: string; opciones: string[]; correcta: number }> = {
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

function Test({ slug, activa }: { slug: string; activa: boolean }) {
  const q = preguntas[slug] ?? preguntas["acceso-guardia-civil"];
  return (
    <>
      <div className="flex items-center justify-between">
        <span className="text-[0.6rem] font-semibold text-muted-foreground">{q.tema}</span>
        <span className="flex items-center gap-1 rounded-full bg-primary-soft px-2 py-0.5 text-[0.6rem] font-bold text-primary-soft-fg tabular">
          <Timer size={10} />
          08:14
        </span>
      </div>
      <div className="mt-2">
        <Barra valor={35} activa={activa} />
      </div>
      <p className="mt-1.5 text-[0.55rem] font-semibold text-muted-foreground tabular">Pregunta 7 de 20</p>
      <p className="mt-3 text-[0.8rem] font-bold leading-snug">{q.pregunta}</p>
      <div className="mt-3 grid gap-2">
        {q.opciones.map((o, i) => {
          const marcada = activa && i === q.correcta;
          return (
            <div
              key={o}
              style={{ transitionDelay: marcada ? "1000ms" : "0ms" }}
              className={`flex items-center gap-2.5 rounded-lg border px-3 py-2 transition-colors duration-300 ${
                marcada ? "border-primary bg-primary-soft" : "border-border bg-surface"
              }`}
            >
              <span
                style={{ transitionDelay: marcada ? "1000ms" : "0ms" }}
                className={`flex size-5 shrink-0 items-center justify-center rounded-full text-[0.6rem] font-bold transition-colors duration-300 ${
                  marcada ? "bg-primary text-primary-fg" : "bg-muted text-muted-foreground"
                }`}
              >
                {marcada ? <Check size={11} strokeWidth={3} /> : String.fromCharCode(65 + i)}
              </span>
              <span className="text-[0.68rem] font-medium leading-tight">{o}</span>
            </div>
          );
        })}
      </div>
    </>
  );
}

const simulacros: Record<string, { nombre: string; nota: string }[]> = {
  "acceso-guardia-civil": [
    { nombre: "Examen oficial 2025", nota: "7,8" },
    { nombre: "Examen oficial 2024", nota: "7,1" },
    { nombre: "Simulacro ProLince 6", nota: "6,9" },
    { nombre: "Examen oficial 2023", nota: "—" },
  ],
  "colegio-guardias-jovenes": [
    { nombre: "Examen oficial 2025", nota: "8,2" },
    { nombre: "Examen oficial 2024", nota: "7,6" },
    { nombre: "Simulacro ProLince 3", nota: "7,0" },
    { nombre: "Examen oficial 2023", nota: "—" },
  ],
};

function Simulacros({ slug, activa }: { slug: string; activa: boolean }) {
  const lista = simulacros[slug] ?? simulacros["acceso-guardia-civil"];
  return (
    <>
      <Cabecera antetitulo="Simulacros" titulo="Con el formato del examen" />
      <div className="mt-3 rounded-lg border border-primary bg-primary-soft p-3">
        <p className="text-[0.55rem] font-semibold text-primary-soft-fg">Tu media en los simulacros</p>
        <p className="mt-0.5 text-[1.3rem] font-extrabold leading-none tabular text-primary-soft-fg">7,3</p>
        <div className="mt-2">
          <Barra valor={73} activa={activa} />
        </div>
      </div>
      <div className="mt-3 grid gap-1.5">
        {lista.map((s, i) => (
          <div
            key={s.nombre}
            style={{ transitionDelay: activa ? `${300 + i * 150}ms` : "0ms" }}
            className={`flex items-center justify-between rounded-md border border-border bg-surface px-3 py-2 text-[0.62rem] transition-[opacity,transform] duration-500 ${
              activa ? "translate-x-0 opacity-100" : "translate-x-2 opacity-0"
            }`}
          >
            <span className="font-semibold">{s.nombre}</span>
            <span className={`font-bold tabular ${s.nota === "—" ? "text-muted-foreground" : "text-primary"}`}>
              {s.nota === "—" ? "Empezar" : s.nota}
            </span>
          </div>
        ))}
      </div>
    </>
  );
}

function Documentacion({ activa }: { activa: boolean }) {
  const docs = [
    ["Esquema · Constitución", "PDF · 12 págs."],
    ["Esquema · Derecho Penal", "PDF · 18 págs."],
    ["Bases de la convocatoria", "BOE"],
    ["Guía de las pruebas físicas", "PDF · 6 págs."],
  ];
  return (
    <>
      <Cabecera antetitulo="Documentación" titulo="Esquemas y guías" />
      <div className="mt-3 grid gap-1.5">
        {docs.map(([t, d], i) => (
          <div
            key={t}
            style={{ transitionDelay: activa ? `${250 + i * 150}ms` : "0ms" }}
            className={`flex items-center gap-2.5 rounded-md border border-border bg-surface px-3 py-2.5 transition-[opacity,transform] duration-500 ${
              activa ? "translate-y-0 opacity-100" : "translate-y-1.5 opacity-0"
            }`}
          >
            <span className="grid size-7 shrink-0 place-items-center rounded-md bg-primary-soft text-primary-soft-fg">
              <FileText size={13} />
            </span>
            <span className="min-w-0 flex-1">
              <span className="block truncate text-[0.65rem] font-semibold">{t}</span>
              <span className="block text-[0.55rem] text-muted-foreground">{d}</span>
            </span>
          </div>
        ))}
      </div>
    </>
  );
}
