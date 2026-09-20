# Portadas del blog: procedencia

Las diez portadas de `public/blog/` son **fotografías reales de Pexels**, recortadas a 1600×900.
La [licencia de Pexels](https://www.pexels.com/es-es/license/) permite el uso comercial sin
atribución y sin permiso previo, pero aquí queda anotada la procedencia de cada una: si alguna
vez hay que reemplazar una imagen, sustituir una escena o comprobar de dónde salió, este es el
único sitio donde mirar.

El recorte lo hace `scripts/portadas-blog.py`, que baja el original, escala al ancho de destino y
corta la banda 16:9 en el ancla vertical que se le indique. El ancla existe porque un recorte
centrado le corta la cabeza a media plantilla: el corredor está arriba del encuadre y el pasillo
es una foto vertical.

| Artículo | Foto | Ancla | Escena |
| --- | --- | --- | --- |
| convocatoria-guardia-civil-2026-plazas-calendario | [8057549](https://www.pexels.com/photo/8057549/) | 0,55 | Joven repasando papeles junto al portátil en casa |
| preparar-oposicion-guardia-civil-desde-cero | [8553886](https://www.pexels.com/photo/8553886/) | 0,50 | Estudio en casa con flexo y libro abierto |
| examen-conocimientos-guardia-civil-estructura | [37758739](https://www.pexels.com/photo/37758739/) | 0,55 | Aula de examen con los pupitres separados |
| pruebas-fisicas-guardia-civil-marcas-entrenamiento | [37718409](https://www.pexels.com/photo/37718409/) | 0,06 | Corredor en pista de tartán |
| ortografia-gramatica-examen-guardia-civil | [6683673](https://www.pexels.com/photo/6683673/) | 0,50 | Primer plano de lápiz sobre la hoja de respuestas |
| psicotecnico-guardia-civil-aptitudes-personalidad | [6684047](https://www.pexels.com/photo/6684047/) | 0,45 | Aspirante pensando durante una prueba |
| ingles-oposicion-guardia-civil | [29242209](https://www.pexels.com/photo/29242209/) | 0,50 | Pupitre con diccionario de inglés |
| fase-concurso-guardia-civil-meritos | [7681227](https://www.pexels.com/photo/7681227/) | 0,55 | Archivando documentos en una carpeta de anillas |
| entrevista-reconocimiento-medico-guardia-civil | [38480584](https://www.pexels.com/photo/38480584/) | 0,40 | Persona esperando sola en un pasillo |
| colegio-guardias-jovenes-acceso-guardia-civil | [6471429](https://www.pexels.com/photo/6471429/) | 0,18 | Madre e hija adolescente hablando en casa |

## Las reglas con las que se eligieron

- **Sin uniformes, insignias, vehículos ni acuartelamientos.** Es la misma regla que siguen las
  fotos de curso (`ARQUITECTURA.md` §7.4): la web enseña a gente **preparándose**, no a agentes
  en acto de servicio. Imagen institucional en publicidad de una academia privada sugiere un
  respaldo oficial que no existe.
- **Una escena, no un concepto.** Cada portada enseña lo que cuenta su artículo: el pasillo de
  espera en el de la entrevista, el diccionario en el de inglés, la pista en el de las físicas.
- **Variedad en el índice.** Las diez tarjetas se ven juntas en `/blog`, así que no puede haber
  cuatro cenitales de manos sobre un papel. Hay planos generales, primeros planos y caras.
- **Sin texto protagonista.** Lo que se lee en la imagen envejece y descuadra el idioma.

## Para reemplazar una

1. Busca la foto en Pexels y quédate con el identificador numérico de la URL.
2. Añádelo a `ELEGIDAS` en `scripts/portadas-blog.py` con su ancla y ejecuta el script.
3. Actualiza aquí la fila y el `portada_alt` del `.md`, y lleva ese texto a la base de datos: el
   texto alternativo describe **esa** foto, así que cambiar la imagen sin cambiarlo deja a quien
   usa lector de pantalla con una descripción falsa.
