import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { Icono } from "@/components/ui/icon";
import { EnlaceSeccion } from "@/components/ui/enlace-seccion";
import { Navegador } from "@/components/mockups/marcos";
import { PantallaCurso } from "@/components/mockups/pantalla-curso";

const claves = [
  {
    icono: "BookOpen",
    titulo: "Todo el temario, ordenado",
    detalle: "Dividido en módulos y lecciones, con el progreso marcado una a una.",
  },
  {
    icono: "ListChecks",
    titulo: "Tests con explicación",
    detalle: "Corrección inmediata y el porqué de cada respuesta, no solo el acierto.",
  },
  {
    icono: "LineChart",
    titulo: "Sabes por dónde ibas",
    detalle: "Vuelves al punto exacto donde lo dejaste, desde cualquier dispositivo.",
  },
];

export function PlataformaHome() {
  return (
    <section className="py-16 sm:py-24">
      <Container>
        <div className="grid items-center gap-12 lg:grid-cols-2 lg:gap-16">
          <Reveal className="order-2 lg:order-1">
            <Navegador>
              <PantallaCurso />
            </Navegador>
          </Reveal>

          <Reveal className="order-1 lg:order-2">
            <p className="text-eyebrow uppercase text-primary">La plataforma</p>
            <h2 className="text-h2 mt-3">Tu preparación entera, en una pantalla</h2>
            <p className="text-body-lg mt-4 text-muted-foreground">
              Nada de carpetas sueltas ni PDF perdidos en el correo. El temario, los tests y los
              simulacros están en el mismo sitio y saben por dónde vas.
            </p>

            <ul className="mt-8 grid gap-5">
              {claves.map((c) => (
                <li key={c.titulo} className="flex gap-4">
                  <span className="inline-flex size-10 shrink-0 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
                    <Icono nombre={c.icono} size={19} />
                  </span>
                  <div className="min-w-0">
                    <h3 className="font-bold">{c.titulo}</h3>
                    <p className="text-muted-foreground mt-1">{c.detalle}</p>
                  </div>
                </li>
              ))}
            </ul>

            <div className="mt-8">
              <EnlaceSeccion href="#cursos">Ver los cursos</EnlaceSeccion>
            </div>
          </Reveal>
        </div>
      </Container>
    </section>
  );
}
