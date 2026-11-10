import type { Metadata } from "next";
import Image from "next/image";
import { ArrowRight, Check, ChevronDown, Minus } from "lucide-react";
import { Container } from "@/components/layout/container";
import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { VolverInicio } from "@/components/layout/volver-inicio";
import { Button } from "@/components/ui/button";
import { Icono } from "@/components/ui/icon";
import { metadataPagina } from "@/lib/seo";

/**
 * Curso de especialidad «Acceso UCO / PJ».
 *
 * OCULTO: no está en `cursos` (content/cursos.ts), así que no sale en la portada, el menú, la
 * tienda ni el sitemap, y la página va con `noindex`. Solo se llega con la URL directa.
 * Para activarlo: moverlo a `cursos`/`packs` (o enlazarlo desde allí), quitar `noindex` y sacar
 * «Policía Judicial» de `cursosProximos`.
 *
 * PENDIENTE: enlace real de pago. De momento todos los botones llevan a stripe.com.
 */
const COMPRA = "https://stripe.com";

const producto = {
  nombre: "Acceso a tests y simulacros ilimitados",
  precio: "89",
  preguntas: "más de 2.000",
  incluye: [
    "Tests ilimitados por tema y aleatorios",
    "Simulacros ilimitados con el formato del examen",
    "Banco de más de 2.000 preguntas",
    "Corrección al momento y explicación de cada respuesta",
    "Repaso de las preguntas falladas",
    "Estadísticas de tu evolución",
  ],
  noIncluye: "No incluye temario.",
};

const ventajas = [
  {
    icono: "ShieldCheck",
    titulo: "Hechas por quien está dentro",
    detalle: "Las preguntas las elabora personal en activo de la UCO, con el enfoque que se pide en la especialidad.",
  },
  {
    icono: "ListChecks",
    titulo: "Tests sin límite",
    detalle: "Por tema o aleatorios, tantas veces como quieras. Cada repetición cambia el orden y las preguntas.",
  },
  {
    icono: "Timer",
    titulo: "Simulacros ilimitados",
    detalle: "Cronometrados y con entrega única, para llegar al examen con el ritmo entrenado.",
  },
  {
    icono: "RefreshCw",
    titulo: "Repasa tus errores",
    detalle: "Lo que fallas vuelve en una cola de repaso hasta que lo aciertas.",
  },
  {
    icono: "Trophy",
    titulo: "Ranking privado",
    detalle: "Tu posición frente al resto de alumnos en cada simulacro, solo con iniciales, para saber dónde estás de verdad.",
  },
  {
    icono: "LineChart",
    titulo: "Estadísticas por tema",
    detalle: "Qué bloques llevas bien, cuáles flojean y cómo evolucionas semana a semana.",
  },
  {
    icono: "Clock",
    titulo: "Compatible con el servicio",
    detalle: "Sin horarios: desde el móvil o el ordenador, en el hueco que te dejen los turnos.",
  },
];

const faq = [
  {
    pregunta: "¿Es una suscripción?",
    respuesta: "No. Es un pago único de 89 €, sin cuotas mensuales ni renovaciones automáticas.",
  },
  {
    pregunta: "¿Quién elabora las preguntas?",
    respuesta:
      "Personal en activo de la UCO. Cada pregunta se redacta y se revisa antes de entrar en el banco, que ya supera las 2.000.",
  },
  {
    pregunta: "¿Incluye temario?",
    respuesta:
      "No. El producto es el acceso a los tests y simulacros ilimitados. Está pensado para entrenar y medir tu nivel sobre lo que ya estudias.",
  },
  {
    pregunta: "¿Cuándo debería empezar a practicar?",
    respuesta:
      "Cuanto antes. Lo que marca la diferencia es el volumen de preguntas hechas y repasadas. Empezar con margen te permite pasar varias veces por todo el banco y llegar con los simulacros bien rodados.",
  },
  {
    pregunta: "¿Puedo hacerlo desde el móvil?",
    respuesta: "Sí. La plataforma funciona en el navegador del móvil, la tableta o el ordenador, y tu progreso se guarda.",
  },
];

export const metadata: Metadata = metadataPagina({
  titulo: "Acceso UCO / PJ: tests y simulacros ilimitados",
  descripcion:
    "Prepara la especialidad de Policía Judicial y el acceso a la UCO con tests y simulacros ilimitados: más de 2.000 preguntas elaboradas por personal en activo de la UCO.",
  ruta: "/cursos/acceso-uco-pj",
  imagen: "/tactico/equipo-tactico-restaurada-4k.jpg",
  imagenAlt: "Equipo de la Guardia Civil en una intervención",
  noindex: true,
});

export default function PaginaAccesoUcoPj() {
  return (
    <>
      <VolverInicio />

      {/* Cabecera */}
      <section className="relative overflow-hidden border-b border-border">
        <div
          aria-hidden
          className="absolute inset-0 -z-10"
          style={{ background: "radial-gradient(90% 100% at 20% -20%, var(--color-primary-soft) 0%, transparent 62%)" }}
        />
        <Container>
          <div className="grid items-center gap-12 py-16 sm:py-20 lg:grid-cols-[1.05fr_0.95fr]">
            <div>
              <div className="flex flex-wrap items-center gap-3">
                <p className="text-eyebrow uppercase text-primary">Curso de especialidad</p>
                <span className="rounded-full bg-primary-soft px-3 py-1 text-eyebrow uppercase text-primary-soft-fg">
                  Policía Judicial
                </span>
              </div>
              <h1 className="text-display-xl mt-4">Acceso UCO / PJ</h1>
              <p className="text-body-lg mt-6 text-muted-foreground">
                Entrena la especialidad con tests y simulacros ilimitados. Preguntas pensadas por quien trabaja cada día en
                la Unidad Central Operativa, para que llegues al examen sabiendo cómo se pregunta.
              </p>

              <div className="mt-9 flex flex-wrap items-center gap-3">
                <Button href={COMPRA} tamano="lg">
                  Comprar por {producto.precio} €
                  <ArrowRight size={18} aria-hidden />
                </Button>
                <Button href="#producto" variante="secundario" tamano="lg">
                  Qué incluye
                </Button>
              </div>
              <p className="mt-4 text-body-sm text-muted-foreground">
                Banco de {producto.preguntas} preguntas elaboradas por personal en activo de la UCO.
              </p>

              <dl className="mt-10 flex flex-wrap gap-x-10 gap-y-4">
                {[
                  { valor: "+2.000", etiqueta: "preguntas en el banco" },
                  { valor: "∞", etiqueta: "tests y simulacros" },
                  { valor: "89 €", etiqueta: "pago único" },
                ].map((d) => (
                  <div key={d.etiqueta}>
                    <dt className="sr-only">{d.etiqueta}</dt>
                    <dd className="text-h2 tabular text-primary">{d.valor}</dd>
                    <dd className="text-body-sm text-muted-foreground">{d.etiqueta}</dd>
                  </div>
                ))}
              </dl>
            </div>

            <div className="reflejo relative aspect-[16/11] overflow-hidden rounded-2xl border border-border shadow-[0_28px_60px_-24px_rgba(2,67,52,0.35)]">
              <Image
                src="/tactico/equipo-tactico-restaurada-4k.jpg"
                quality={90}
                alt="Equipo de la Guardia Civil en una intervención"
                fill
                preload
                sizes="(max-width: 1024px) 100vw, 560px"
                className="object-cover"
              />
            </div>
          </div>
        </Container>
      </section>

      {/* Ventajas */}
      <Section
        eyebrow="Cómo entrenas"
        titulo="Todo el entrenamiento, sin límites"
        entradilla="Un único producto, sin packs ni cuotas: entras y practicas tanto como necesites."
      >
        <ul className="grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
          {ventajas.map((c, i) => (
            <Reveal key={c.titulo} retardo={(i % 3) * 60}>
              <li className="h-full rounded-xl border border-border bg-surface p-6">
                <span className="inline-flex size-11 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                  <Icono nombre={c.icono} size={21} />
                </span>
                <h3 className="text-h3 mt-5">{c.titulo}</h3>
                <p className="mt-2 text-muted-foreground">{c.detalle}</p>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      {/* La unidad */}
      <Section
        eyebrow="La unidad"
        titulo="Qué es la UCO"
        entradilla="La Unidad Central Operativa es la unidad de referencia de la Policía Judicial de la Guardia Civil. Llegar a ella exige primero la especialidad, y la especialidad se gana en el examen."
        fondo="suave"
      >
        <ul className="grid gap-3 sm:grid-cols-3">
          {[
            "Investigación de la delincuencia organizada y de las estructuras criminales más complejas",
            "Apoyo a otras unidades en investigaciones que requieren medios especializados",
            "Coordinación de operaciones con otros cuerpos, también fuera de España",
          ].map((r, i) => (
            <Reveal key={r} retardo={i * 40}>
              <li className="flex h-full items-start gap-3 rounded-xl border border-border bg-surface p-5">
                <span aria-hidden className="mt-2 size-1.5 shrink-0 rounded-full bg-primary" />
                <span className="font-medium">{r}</span>
              </li>
            </Reveal>
          ))}
        </ul>
      </Section>

      {/* Producto */}
      <Section
        id="producto"
        className="scroll-mt-24"
        eyebrow="Precio"
        titulo="Un solo pago, acceso a todo"
        centrado
      >
        <Reveal className="mx-auto mb-10 max-w-[36rem]">
          <dl className="grid grid-cols-3 divide-x divide-border rounded-xl border border-border bg-surface">
            {[
              { valor: "0 €", etiqueta: "de matrícula" },
              { valor: "0 €", etiqueta: "de mensualidades" },
              { valor: "89 €", etiqueta: "en un único pago" },
            ].map((d) => (
              <div key={d.etiqueta} className="px-3 py-5">
                <dt className="sr-only">{d.etiqueta}</dt>
                <dd className="text-h2 tabular text-primary">{d.valor}</dd>
                <dd className="text-body-sm text-muted-foreground">{d.etiqueta}</dd>
              </div>
            ))}
          </dl>
        </Reveal>
        <Reveal className="mx-auto max-w-[28rem] text-left">
          <div className="relative rounded-2xl border-2 border-primary bg-surface p-7 shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)]">
            <span className="absolute -top-3 left-7 rounded-full bg-primary px-3 py-1 text-eyebrow uppercase text-primary-fg">
              Acceso UCO / PJ
            </span>
            <h3 className="text-h3">{producto.nombre}</h3>
            <p className="mt-5">
              <span className="block text-display-l tabular">{producto.precio} €</span>
              <span className="text-body-sm text-muted-foreground">pago único</span>
            </p>
            <ul className="mt-6 grid gap-2.5 text-body-sm">
              {producto.incluye.map((item) => (
                <li key={item} className="flex gap-2.5">
                  <Check size={17} className="mt-0.5 shrink-0 text-primary" aria-hidden />
                  {item}
                </li>
              ))}
              <li className="flex gap-2.5 text-muted-foreground">
                <Minus size={17} className="mt-0.5 shrink-0" aria-hidden />
                {producto.noIncluye}
              </li>
            </ul>
            <Button href={COMPRA} tamano="lg" className="mt-7 w-full">
              Comprar ahora
              <ArrowRight size={18} aria-hidden />
            </Button>
            <p className="mt-4 text-center text-[0.8125rem] text-muted-foreground">
              Banco de {producto.preguntas} preguntas elaboradas por personal en activo de la UCO.
            </p>
          </div>
        </Reveal>
      </Section>

      {/* Preguntas */}
      <Section eyebrow="Preguntas" titulo="Dudas sobre el acceso" ancho="estrecho" fondo="suave">
        <div className="grid gap-3">
          {faq.map((item, i) => (
            <Reveal key={item.pregunta} retardo={i * 40}>
              <details className="group rounded-xl border border-border bg-surface open:border-border-strong">
                <summary className="flex cursor-pointer list-none items-center justify-between gap-4 p-5 text-h3 [&::-webkit-details-marker]:hidden">
                  {item.pregunta}
                  <ChevronDown
                    size={20}
                    aria-hidden
                    className="shrink-0 text-muted-foreground transition-transform duration-200 ease-[var(--ease-product)] group-open:rotate-180"
                  />
                </summary>
                <p className="-mt-1 px-5 pb-5 leading-[1.7] text-muted-foreground">{item.respuesta}</p>
              </details>
            </Reveal>
          ))}
        </div>
      </Section>

      {/* Cierre */}
      <section className="bg-primary-deep text-white">
        <Container>
          <Reveal>
            <div className="py-20 text-center">
              <h2 className="text-display-l mx-auto max-w-[36rem]">Entrena como se pregunta en la UCO</h2>
              <p className="text-body-lg mx-auto mt-5 max-w-[34rem] text-white/75">
                Tests y simulacros ilimitados por {producto.precio} €, en un único pago.
              </p>
              <div className="mt-9 flex justify-center">
                <Button href={COMPRA} variante="claro" tamano="lg">
                  Comprar por {producto.precio} €
                  <ArrowRight size={18} aria-hidden />
                </Button>
              </div>
            </div>
          </Reveal>
        </Container>
      </section>
    </>
  );
}
