import { Section } from "@/components/layout/section";
import { Reveal } from "@/components/layout/reveal";
import { EnlaceSeccion } from "@/components/ui/enlace-seccion";
import { metodo } from "@/content/propuesta";
import { rutas } from "@/lib/links";

export function MetodoHome() {
  return (
    <Section eyebrow="Método" titulo={metodo.titulo} entradilla={metodo.entradilla} fondo="suave">
      <ol className="grid gap-6 md:grid-cols-2 lg:grid-cols-4">
        {metodo.pasos.map((paso, i) => (
          <Reveal key={paso.titulo} retardo={i * 70}>
            <li className="h-full">
              <div className="flex items-center gap-3">
                <span className="text-display-l leading-none text-primary/25 tabular">
                  {String(i + 1).padStart(2, "0")}
                </span>
                <span aria-hidden className="h-px flex-1 bg-border" />
              </div>
              <h3 className="text-h3 mt-5">{paso.titulo}</h3>
              <p className="mt-2 text-muted-foreground">{paso.detalle}</p>
            </li>
          </Reveal>
        ))}
      </ol>
      <Reveal className="mt-10">
        <EnlaceSeccion href={rutas.metodo}>Cómo se organiza la semana</EnlaceSeccion>
      </Reveal>
    </Section>
  );
}
