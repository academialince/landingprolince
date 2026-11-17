"use client";

import { useEffect, useRef, useState } from "react";
import { ArrowRight, Info, ListOrdered, MapPin, Newspaper, Route, RotateCcw, Trophy } from "lucide-react";
import { BotonCompartir, CtaPlataforma, FormularioLead, Portada, boton } from "@/components/captacion/ui";
import { TOTAL_PRACTICAS_2021_2025, camino, comunidades, type Comunidad } from "@/content/captacion/destino";

const RECURSO = "destino";

type Fase = "inicio" | "opciones" | "datos" | "resultado";

export function DestinoGuardiaCivil({ registro, whatsapp }: { registro: string; whatsapp: string | null }) {
  const [fase, setFase] = useState<Fase>("inicio");
  const [comunidad, setComunidad] = useState<Comunidad | null>(null);
  const [nombre, setNombre] = useState("");
  const raiz = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (fase === "inicio") return;
    raiz.current?.scrollIntoView({ block: "start" });
    raiz.current?.querySelector<HTMLElement>("[data-foco]")?.focus({ preventScroll: true });
  }, [fase]);

  return (
    <div ref={raiz} className="scroll-mt-4">
      {fase === "inicio" && (
        <Portada
          etiqueta="Guía gratis · Guardia Civil"
          titulo="¿Dónde te puede tocar?"
          entradilla="Elige dónde te gustaría trabajar y te enseñamos el camino real desde el examen hasta tu primer destino, de qué depende y lo que se sabe de las prácticas en tu comunidad."
          puntos={[
            { icono: Route, texto: "Del examen al primer destino, con fechas reales" },
            { icono: ListOrdered, texto: "Qué decide el orden de escalafón" },
            { icono: MapPin, texto: "Las cifras públicas de tu comunidad" },
          ]}
          textoBoton="Elegir mi comunidad"
          onEmpezar={() => setFase("opciones")}
        />
      )}

      {fase === "opciones" && (
        <div className="pt-6 pb-12 sm:pt-10">
          <p className="text-eyebrow uppercase text-primary">Tu destino soñado</p>
          <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
            ¿Dónde te gustaría trabajar?
          </h1>
          <div className="mt-6 grid grid-cols-2 gap-2">
            {(Object.keys(comunidades) as Comunidad[]).map((k) => (
              <button
                key={k}
                type="button"
                aria-pressed={comunidad === k}
                onClick={() => setComunidad(k)}
                className={`min-h-12 border px-3 py-2 text-left text-body-sm font-semibold transition-colors ${
                  comunidad === k ? "border-primary bg-primary-soft text-primary-soft-fg" : "border-border-strong bg-surface hover:border-primary"
                }`}
              >
                {comunidades[k].nombre}
              </button>
            ))}
          </div>
          <button type="button" onClick={() => setFase("datos")} disabled={!comunidad} className={`${boton} mt-8`}>
            Ver mi camino
            <ArrowRight size={19} aria-hidden />
          </button>
        </div>
      )}

      {fase === "datos" && comunidad && (
        <FormularioLead
          recurso={RECURSO}
          respuestas={{ comunidad }}
          etiqueta="Listo"
          titulo="Tu camino está preparado"
          texto={`Déjanos tus datos para verlo: las fases hasta el primer destino, qué decide tu puesto en el escalafón y lo que se sabe de las prácticas en ${comunidades[comunidad].nombre}.`}
          textoBoton="Ver mi camino"
          anticipo={
            <>
              <p className="font-[family-name:var(--font-display)] text-3xl font-extrabold">Examen → Baeza → Prácticas → Destino</p>
              <p className="mt-4 text-body-sm">{comunidades[comunidad].nombre}: cifras de prácticas</p>
            </>
          }
          onVolver={() => setFase("opciones")}
          textoVolver="Cambiar de comunidad"
          onListo={(_, n) => {
            setNombre(n);
            setFase("resultado");
          }}
        />
      )}

      {fase === "resultado" && comunidad && (
        <Resultado comunidad={comunidad} nombre={nombre} registro={registro} whatsapp={whatsapp} onCambiar={() => setFase("opciones")} />
      )}
    </div>
  );
}

function Resultado({
  comunidad,
  nombre,
  registro,
  whatsapp,
  onCambiar,
}: {
  comunidad: Comunidad;
  nombre: string;
  registro: string;
  whatsapp: string | null;
  onCambiar: () => void;
}) {
  const c = comunidades[comunidad];

  return (
    <div className="pt-6 pb-12 sm:pt-10">
      <p className="text-eyebrow uppercase text-primary">Tu camino hasta {c.nombre}</p>
      <h1 data-foco tabIndex={-1} className="text-h2 mt-3 outline-none">
        {nombre ? `${nombre}, así se llega al primer destino` : "Así se llega al primer destino"}
      </h1>

      <section aria-labelledby="camino" className="mt-8">
        <h2 id="camino" className="sr-only">
          Fases
        </h2>
        <ol className="relative grid gap-5 border-l-2 border-primary pl-5">
          {camino.map((p) => (
            <li key={p.titulo} className="relative">
              <span className="absolute top-1.5 -left-[1.6rem] size-3 bg-primary" aria-hidden />
              <p className="font-[family-name:var(--font-hud)] text-xs font-bold tracking-[0.12em] text-primary uppercase">
                {p.fecha}
                {!p.fechaOficial && <span className="ml-2 font-normal normal-case text-muted-foreground">(aproximada)</span>}
              </p>
              <h3 className="mt-1 font-bold">{p.titulo}</h3>
              <p className="mt-1 text-body-sm text-muted-foreground">{p.texto}</p>
            </li>
          ))}
        </ol>
        <p className="mt-4 text-[0.75rem] text-muted-foreground">Fechas de la convocatoria 2026; las de 2027 aún no se han publicado.</p>
      </section>

      <section aria-labelledby="escalafon" className="mt-8 border-l-4 border-primary bg-surface p-5">
        <h2 id="escalafon" className="text-h3 flex items-center gap-2">
          <Trophy size={20} className="text-primary" aria-hidden />
          Lo que de verdad decide
        </h2>
        <p className="mt-3 text-muted-foreground">
          La nota con la que terminas la formación fija tu orden en el escalafón (Ley 29/2014, art. 3.4). Y los destinos que se dan por
          antigüedad se asignan por ese orden (Real Decreto 470/2019). Cuanto mejor sea tu número, más opciones tendrás de elegir.
        </p>
        <p className="mt-3 text-body-sm text-muted-foreground">
          Las prácticas se hacen en comisión de servicio y no cuentan como destino. Ninguna norma publicada explica cómo se reparten
          esas vacantes, así que desconfía de quien te asegure una plaza concreta.
        </p>
      </section>

      <section aria-labelledby="cifras" className="mt-8 border border-border bg-surface p-5">
        <h2 id="cifras" className="text-h3 flex items-center gap-2">
          <MapPin size={20} className="text-primary" aria-hidden />
          Prácticas en {c.nombre}
        </h2>
        {c.cifras.length > 0 ? (
          <ul className="mt-4 grid gap-4">
            {c.cifras.map((x) => (
              <li key={x.texto}>
                <p>
                  <span className="font-[family-name:var(--font-display)] text-4xl font-extrabold text-primary tabular">{x.valor}</span>{" "}
                  <span className="text-muted-foreground">{x.texto}</span>
                </p>
                <p className="mt-1 flex items-center gap-1.5 text-[0.75rem] text-muted-foreground">
                  <Newspaper size={13} aria-hidden />
                  <a href={x.url} target="_blank" rel="noopener noreferrer" className="hover:underline">
                    {x.fuente}
                  </a>
                </p>
              </li>
            ))}
          </ul>
        ) : (
          <p className="mt-3 text-muted-foreground">
            No hay cifras públicas de alumnos en prácticas para esta comunidad: la Guardia Civil no publica el reparto y denegó el
            desglose por provincias en una solicitud de transparencia.
          </p>
        )}
        <p className="mt-4 text-body-sm text-muted-foreground">
          Para hacerte una idea: según la misma solicitud de transparencia, entre 2021 y 2025 hicieron prácticas {TOTAL_PRACTICAS_2021_2025} alumnos en toda España. En 2026 se
          incorporaron 3.123 (dato oficial del Ministerio del Interior).
        </p>
        <p className="mt-3 flex gap-2 text-[0.75rem] text-muted-foreground">
          <Info size={14} className="mt-0.5 shrink-0" aria-hidden />
          Las cifras por comunidad salen de la prensa y de una solicitud de transparencia, no de una publicación oficial. Que haya
          muchos alumnos en prácticas en un sitio no garantiza que te toque allí.
        </p>
      </section>

      <CtaPlataforma
        titulo="Tu número empieza en el examen"
        texto="Con más nota, más opciones en cada paso. En ProLince tienes el temario, más de 20.000 preguntas, psicotécnicos y simulacros para entrar con la mejor nota posible."
        registro={registro}
        whatsapp={whatsapp}
        mensajeWhatsapp={`Hola, me gustaría trabajar en ${c.nombre} como guardia civil. ¿Me dais información para preparar la oposición?`}
      />

      <div className="mt-8 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-body-sm font-semibold">
        <BotonCompartir titulo="¿Dónde te puede tocar?" texto="Así es el camino hasta el primer destino en la Guardia Civil." />
        <button type="button" onClick={onCambiar} className="inline-flex min-h-11 items-center gap-2 text-muted-foreground hover:text-foreground">
          <RotateCcw size={16} aria-hidden />
          Cambiar de comunidad
        </button>
      </div>
    </div>
  );
}
