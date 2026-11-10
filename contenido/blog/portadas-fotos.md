# Portadas del blog: dirección visual y procedencia

Las diez portadas de `public/blog/` fueron generadas con la herramienta integrada de imágenes
de OpenAI el 20 de septiembre de 2026. Se exportaron como JPEG a 1600×900 y calidad 86.

Cada portada representa una escena concreta del artículo. La serie evita repetir el recurso de
«persona estudiando» y combina espacios domésticos, administrativos, deportivos, clínicos y de
examen. No aparecen uniformes, insignias, armas, logotipos ni texto legible para no sugerir un
respaldo institucional de la Guardia Civil.

| Artículo | Escena generada |
| --- | --- |
| convocatoria-guardia-civil-2026-plazas-calendario | Un opositor organiza la convocatoria, los documentos y las fechas límite en la cocina al amanecer |
| preparar-oposicion-guardia-civil-desde-cero | Un trabajador se ata las zapatillas ante un plan de 90 días que combina estudio y entrenamiento |
| examen-conocimientos-guardia-civil-estructura | Un aspirante cambia de cuadernillo durante una prueba larga en una sala de examen llena |
| pruebas-fisicas-guardia-civil-marcas-entrenamiento | Una jornada de entrenamiento con pista, agilidad, extensiones de brazos y piscina |
| ortografia-gramatica-examen-guardia-civil | Primer plano de una hoja de respuestas, un reloj y seis marcas que representan el límite de errores |
| psicotecnico-guardia-civil-aptitudes-personalidad | Resolución cronometrada de figuras espaciales junto al cuestionario de personalidad |
| ingles-oposicion-guardia-civil | Una aspirante afronta con fatiga el último bloque del examen al final de la tarde |
| fase-concurso-guardia-civil-meritos | Entrega urgente del último certificado en una ventanilla administrativa |
| entrevista-reconocimiento-medico-guardia-civil | Espera entre la sala de entrevista y la consulta del reconocimiento médico |
| colegio-guardias-jovenes-acceso-guardia-civil | Un adolescente prepara la maleta con sus padres antes de marcharse al colegio |

## Especificación compartida de los prompts

- Fotografía editorial documental, hiperrealista y horizontal 16:9.
- Localizaciones y detalles cotidianos reconocibles de España.
- Expresiones naturales, piel real, encuadres imperfectos y luz ambiental creíble.
- Cada escena debe contar el conflicto o la acción central del artículo sin depender de texto.
- Sin texto legible, rótulos superpuestos, marcas de agua, logotipos, uniformes ni insignias.
- Sin sonrisas de foto de stock, piel plástica, propaganda ni estética militar heroica.

`scripts/portadas-blog.py` pertenece al juego anterior de fotografías de Pexels y queda como
referencia histórica. No debe ejecutarse si se quieren conservar estas portadas generadas.

## Portadas tomadas de «Fotos GC» (10 de noviembre de 2026)

Imágenes generadas de la carpeta `Fotos GC` del SSD, recortadas al centro a 1600×900 y calidad 85.
A diferencia de la serie anterior, **sí muestran uniformes, distintivos y el rótulo «Guardia Civil»**:
es una excepción a la especificación de arriba, decidida para los artículos sobre destinos y sueldo.

| Artículo | Archivo original | Escena |
| --- | --- | --- |
| destinos-especialidades-guardia-civil | guardia-civil-accion-01.png | Rescate de montaña en una cresta nevada al amanecer |
| sueldo-guardia-civil | guardia-civil-accion-20.png | Motoristas de Tráfico escoltan una ambulancia de noche bajo la lluvia |
