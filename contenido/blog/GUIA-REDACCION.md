# Guía de redacción del blog de ProLince

Reglas para escribir los artículos del calendario de 100 días (`plan-100-dias.json`). Existen ya 28
artículos escritos con estas mismas reglas (semanas 1-4): léete **uno o dos** como modelo de tono y
estructura, por ejemplo `test-personalidad-guardia-civil.md` y `circuito-agilidad-coordinacion-guardia-civil.md`.

## 1. Objetivo

Cada artículo responde a una búsqueda real de un opositor a la Escala de Cabos y Guardias de la Guardia
Civil, con información **correcta, concreta y útil**, para posicionar en Google. Mejor menos palabras y
verificadas que más y dudosas.

## 2. Formato del fichero

Un fichero `contenido/blog/<slug>.md` por artículo, con este frontmatter exacto (y el cuerpo después):

```
---
titulo: <título, el del plan salvo ajuste justificado>
slug: <slug del plan, SIN cambiarlo>
tipo: articulo        (o guia, con datos: {"duracion": "..."})
estado: publicado
publicado_en: <el campo publicado_en del plan, tal cual>
curso: acceso-guardia-civil     (colegio-guardias-jovenes en los del Colegio de Guardias Jóvenes)
entradilla: <180-260 caracteres; máximo 300>
etiquetas: [3 a 5, en minúscula]
seo_title: <máx. 60 caracteres, con la palabra clave al principio>
seo_description: <140-155 caracteres>
datos: {}
---
```

Cuerpo: 650-1.000 palabras. Apertura que enganche y dé la **respuesta corta**; `##` y `###` para secciones;
tablas y listas cuando ayuden; una sección final `## Preguntas frecuentes` con 3-4 preguntas (`###`) y su
respuesta; y, de forma natural y sin agresividad, un enlace al curso (`[curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil)`).
No pongas el título como `#` dentro del cuerpo.

## 3. Rigor (lo más importante)

- Todo dato (cifras, plazos, requisitos, números de artículo, nombres de leyes, fechas, importes) debe
  **verificarse en fuente oficial**: BOE, guardiacivil.es, interior.gob.es, defensa.gob.es, congreso.es,
  boe.es/buscar/act.php?id=… (texto consolidado). Descárgalo con `curl` o `WebFetch` y comprueba la cifra.
- **Si no puedes verificar un dato, no lo escribas.** No inventes, no redondees y no rellenes con lo
  «habitual». Escribe en su lugar «consulta la convocatoria vigente» y anótalo en tu informe final.
- Cita la fuente con enlace (`[BOE-A-…](https://www.boe.es/diario_boe/txt.php?id=BOE-A-…)`).
- Datos ya verificados que puedes usar:
  - Convocatoria Guardia Civil 2026: **BOE-A-2026-9982**. Texto en
    `/private/tmp/claude-501/-Volumes-SSD-Marcos-Proyectos-de-VSC-Landing-Prolince/79b78a54-b0d2-431d-822f-2a515618c2d1/scratchpad/boe/gc2026.txt`
    (**solo lectura**: no lo modifiques, ni escribas en esa carpeta).
  - Convocatoria Policía Nacional 2026: BOE-A-2026-15055. Orden PCI/155/2019 (cuadro médico y normas de
    selección): BOE-A-2019-2291 (consolidada). Constitución: BOE-A-1978-31229.
  - El programa de la oposición tiene **23 temas** (no 25): está en `src/content/temario.ts`, con el
    alcance de cada tema y las normas que entran.
  - Notas de corte y escalas de puntuación: `src/content/captacion/datos-oficiales.ts`.
- Puntuación del examen (verificada): conocimientos 100 preguntas, 4 opciones, cada error resta 1/3 de
  acierto, en blanco no resta, mínimo 50 sobre 100; inglés 20 preguntas, mínimo 8 sobre 20; psicotécnico
  80 preguntas en 55 minutos, mínimo 12 sobre 30; ortografía (5 frases con 4 palabras subrayadas) y
  gramática (20 frases): 6 errores o más excluyen. Examen de conocimientos: 140 minutos en total.
- **No afirmes que algo «cae» en el examen ni des estadísticas de aparición**; no hay datos oficiales.
  Los tests, ejemplos y preguntas que escribas son propios: dilo.
- **No inventes** testimonios, cifras de alumnos, resultados de la academia ni citas.
- Sin consejos médicos, jurídicos o de entrenamiento concluyentes: remite a un profesional cuando toque.
- Si el título prometido no se sostiene con los datos reales, **ajusta el título** (mismo tema y mismo
  slug) y avísalo en el informe.

## 4. Estilo

Español de España, tuteo, frases claras, sin relleno ni promesas («aprobarás seguro»). Evita repetir lo
que ya dicen otros artículos del blog: enlaza a ellos en lugar de reexplicarlo. No menciones este
proceso, las semanas ni «esta serie» más de lo imprescindible. Revisa la ortografía y la gramática.

## 5. Enlaces internos

- **Solo a artículos con fecha de publicación anterior** a la del tuyo (campo `publicado_en` del plan;
  los 19 artículos ya publicados y los de las semanas 1-4 son siempre anteriores). Un enlace a un artículo
  que aún no está publicado devuelve un 404 que Google penaliza.
- Para mencionar un artículo posterior, hazlo **sin enlace** («lo veremos más adelante»).
- Formato `[texto](/blog/slug)`; entre 2 y 5 enlaces internos por artículo.
- Slugs ya publicados antes del 11-11-2026: colegio-guardias-jovenes-acceso-guardia-civil,
  entrevista-reconocimiento-medico-guardia-civil, fase-concurso-guardia-civil-meritos,
  ingles-oposicion-guardia-civil, psicotecnico-guardia-civil-aptitudes-personalidad,
  ortografia-gramatica-examen-guardia-civil, pruebas-fisicas-guardia-civil-marcas-entrenamiento,
  examen-conocimientos-guardia-civil-estructura, preparar-oposicion-guardia-civil-desde-cero,
  convocatoria-guardia-civil-2026-plazas-calendario, requisitos-guardia-civil,
  calcular-nota-examen-guardia-civil, academia-baeza-guardia-civil, sueldo-guardia-civil,
  errores-preparar-oposicion-guardia-civil, constitucion-oposicion-guardia-civil, tatuajes-guardia-civil,
  plan-estudio-guardia-civil-trabajando, destinos-especialidades-guardia-civil.
- Resto de slugs y fechas: `plan-100-dias.json`.
- Otras rutas válidas: `/cursos/acceso-guardia-civil`, `/cursos/colegio-guardias-jovenes`,
  `/requisitos-guardia-civil`, `/calculadora-nota-guardia-civil`, `/nota-de-corte`, `/test-guardia-civil`,
  `/temario-guardia-civil`, `/plan-de-estudio`, `/nivel-ingles`, `/pruebas-fisicas`.
- No enlaces a `/cursos/acceso-uco-pj` ni menciones ese producto: aún no se ha lanzado.

## 6. Portadas

Para cada artículo, una escena de portada para generar con ChatGPT (fotografía editorial, 16:9, sin texto
legible, personas reales y creíbles; pueden verse uniformes y el rótulo «Guardia Civil»). Formato, como en
`portadas-prompts.md`:

`N. **<slug>.jpg**: <escena en 1-3 frases>.`

Escríbelas en `contenido/blog/portadas-prompts-<tu id>.md` (un solo fichero), numeradas con el `i` del plan.

## 7. Qué NO hacer

- No uses git, no escribas en la base de datos y no toques ficheros que no sean los tuyos.
- Tus descargas y borradores, en tu propia carpeta: `<scratchpad>/<tu id>/`, donde `<scratchpad>` es
  `/private/tmp/claude-501/-Volumes-SSD-Marcos-Proyectos-de-VSC-Landing-Prolince/79b78a54-b0d2-431d-822f-2a515618c2d1/scratchpad`.
  No sobrescribas nunca nada fuera de ella.
- No cambies slugs ni la hora de publicación.

## 8. Informe final (máximo 200 palabras)

Lista de ficheros creados, títulos que has ajustado y por qué, datos que **no** has podido verificar,
y cualquier duda o riesgo que deba revisar una persona.
