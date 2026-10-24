import { PaginaTest, type ConfigTest } from "@/components/herramientas/pagina-test";
import preguntas from "@/content/test-gratis/guardias-jovenes.json";
import { metadataPagina } from "@/lib/seo";

const config: ConfigTest = {
  slug: "colegio-guardias-jovenes",
  ruta: "/test-guardias-jovenes",
  h1: "Test del Colegio de Guardias Jóvenes gratis",
  entradilla:
    "Haz un test online de 10 o 20 preguntas de los 10 temas de conocimientos del Colegio «Duque de Ahumada», con la solución explicada de cada pregunta. Sin registro.",
  preguntas,
  faq: [
    {
      pregunta: "¿De dónde salen las preguntas?",
      respuesta:
        "Del banco de preguntas de la plataforma de ProLince para el curso del Colegio de Guardias Jóvenes. Cubren los temas 1 a 10 del programa, los de la prueba de conocimientos.",
    },
    {
      pregunta: "¿Cómo es el examen real?",
      respuesta:
        "80 preguntas tipo test de los temas 1 a 10, más 10 de ortografía y gramática y 20 de inglés, todo seguido en 120 minutos. Los errores restan.",
    },
    {
      pregunta: "¿Cómo se corrige este test?",
      respuesta:
        "Cada acierto suma un punto, cada error resta un tercio y las preguntas en blanco no restan, y la nota se da sobre 100. Comprueba en las bases de tu convocatoria la fórmula exacta del Colegio.",
    },
    {
      pregunta: "¿Puedo hacer más tests?",
      respuesta:
        "Puedes repetir este test con preguntas distintas. En la plataforma tienes miles de preguntas del Colegio, tests por tema y simulacros, y puedes probarla gratis 7 días.",
    },
  ],
};

export const metadata = metadataPagina({
  titulo: "Test Colegio de Guardias Jóvenes gratis online",
  descripcion:
    "Test del Colegio de Guardias Jóvenes gratis y sin registro: preguntas de los 10 temas de conocimientos con la solución explicada. Repite con preguntas nuevas.",
  ruta: config.ruta,
});

export default function TestGuardiasJovenes() {
  return <PaginaTest config={config} />;
}
