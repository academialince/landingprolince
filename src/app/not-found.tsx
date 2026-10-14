import type { Metadata } from "next";
import { ArrowRight } from "lucide-react";
import WebLayout from "./(web)/layout";
import { PageHero } from "@/components/layout/page-hero";
import { Button } from "@/components/ui/button";
import { cursos } from "@/content/cursos";
import { cursosVisibles, inicioVisible, rutas } from "@/lib/links";

export const metadata: Metadata = {
  title: "Página no encontrada",
  robots: { index: false, follow: true },
};

/**
 * 404 de toda la web. Lleva cabecera y pie para que quien llega por un enlace roto, persona o
 * rastreador, tenga a mano los cursos y el blog en lugar de un callejón sin salida.
 */
export default function NoEncontrada() {
  return (
    <WebLayout>
      <PageHero
        eyebrow="Error 404"
        titulo="Esta página no existe"
        entradilla="Puede que el enlace esté mal escrito o que la página haya cambiado de sitio. Desde aquí puedes seguir:"
      >
        <div className="flex flex-wrap gap-3">
          {inicioVisible && <Button href={rutas.inicio}>Ir al inicio</Button>}
          {cursosVisibles &&
            cursos.map((c) => (
              <Button key={c.slug} href={rutas.curso(c.slug)} variante="secundario">
                {c.nombre}
              </Button>
            ))}
          <Button href={rutas.blog} variante="secundario">
            Leer el blog
            <ArrowRight size={18} aria-hidden />
          </Button>
        </div>
      </PageHero>
    </WebLayout>
  );
}
