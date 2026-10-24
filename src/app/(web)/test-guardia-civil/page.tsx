import { PaginaTest, type ConfigTest } from "@/components/herramientas/pagina-test";
import preguntas from "@/content/test-gratis/guardia-civil.json";
import { metadataPagina } from "@/lib/seo";

const config: ConfigTest = {
  slug: "acceso-guardia-civil",
  ruta: "/test-guardia-civil",
  h1: "Test Guardia Civil gratis con soluciones",
  entradilla:
    "Haz un test online de 10 o 20 preguntas de los 23 temas de conocimientos, con la corrección y la explicación de cada pregunta y tu nota con la penalización del examen real. Sin registro.",
  preguntas,
  banco: "más de 20.000 preguntas",
  faq: [
    {
      pregunta: "¿De dónde salen las preguntas?",
      respuesta:
        "Del banco de preguntas de la plataforma de ProLince, el mismo con el que entrenan los alumnos. Cubren los 23 temas de la prueba de conocimientos de la Escala de Cabos y Guardias.",
    },
    {
      pregunta: "¿Cómo se corrige el test?",
      respuesta:
        "Igual que el examen: cada acierto suma un punto, cada error resta un tercio y las preguntas en blanco no restan. La nota se da sobre 100, como la prueba de conocimientos, en la que el mínimo es 50.",
    },
    {
      pregunta: "¿Cuántas preguntas tiene el examen real?",
      respuesta:
        "La prueba de conocimientos tiene 100 preguntas tipo test de los temas 1 a 23, y se hace junto a la de inglés, la de ortografía y la de gramática en 140 minutos.",
    },
    {
      pregunta: "¿Puedo hacer más tests?",
      respuesta:
        "Aquí puedes repetir el test tantas veces como quieras con preguntas distintas. En la plataforma hay más de 20.000 preguntas, tests por tema y simulacros cronometrados, y puedes probarla gratis 7 días.",
    },
  ],
};

export const metadata = metadataPagina({
  titulo: "Test Guardia Civil gratis online con soluciones",
  descripcion:
    "Test de Guardia Civil gratis y sin registro: preguntas de los 23 temas con solución explicada y nota con la penalización del examen real. Repite con preguntas nuevas.",
  ruta: config.ruta,
});

export default function TestGuardiaCivil() {
  return <PaginaTest config={config} />;
}
