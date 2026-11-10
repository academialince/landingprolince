-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('certificados-de-idiomas-para-la-guardia-civil-cual-sacarte', 'articulo', '"Certificados de idiomas para la Guardia Civil: cuál sacarte y cuánto suma"', 'El baremo de la convocatoria de 2026 puntúa los certificados de idiomas con 5, 7 o 9 puntos según el nivel, dentro de un tope de 27 para los méritos académicos. Qué títulos se admiten, qué condiciones exige el apéndice I y cómo decidir cuál sacarte.', '**Respuesta corta:** según el apéndice I de la convocatoria de 2026, un certificado de nivel **B2 suma 5 puntos**, uno de **C1, 7** y uno de **C2, 9**. Por cada idioma solo cuenta una acreditación, la de mayor puntuación, y todos los méritos académicos juntos tienen un **tope de 27 puntos**. Solo puntúan los títulos que aparecen expresamente en la lista. El baremo puede cambiar entre convocatorias, así que compruébalo en la que se publique.

Todo lo que sigue sale del apéndice I de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). Para ver cómo encaja en el conjunto, mira [los 45 puntos de la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

## Dónde encajan los idiomas en el baremo

La fase de concurso vale de 0 a 45 puntos y se reparte en tres bloques con su propio tope:

| Bloque | Tope | Qué incluye |
|---|---|---|
| Méritos profesionales | 13,5 | Servicios en las Fuerzas Armadas o en la Administración General del Estado, reservista voluntario |
| Méritos académicos | 27 | Nivel académico (Bachiller o superior, 2 puntos) e **idiomas** |
| Otros méritos | 4,5 | Permisos de conducción (A o A2; C, D y sus combinaciones) y deportista de alto nivel |

Los idiomas son, con diferencia, la partida que más puntos puede aportar a quien no tiene experiencia profesional previa.

## Las reglas generales

- **Solo cuentan los méritos que figuran en el apéndice**, que se han **alegado en la inscripción telemática** y que **se poseen dentro del plazo de presentación de solicitudes**.
- **Por cada idioma** se contabiliza una sola acreditación (perfil SLP, título o certificado): la de mayor puntuación. Un B2 y un C1 de inglés no se suman.
- **Idiomas de interés**: alemán, árabe, francés, inglés, italiano, portugués y ruso. Certificados de idiomas distintos sí pueden sumar entre sí, dentro del tope de 27.
- Se justifican con la documentación que pida el Tribunal de Selección, en la fecha que disponga.
- En los certificados no nacionales, **todas las pruebas deben ser 100 % presenciales**.

## Certificados de inglés que puntúan

### Escuela Oficial de Idiomas

Certificado oficial según el artículo 7.9 del Real Decreto 1041/2017:

| Nivel | Puntos |
| --- | --- |
| Avanzado C2 | 9 |
| Avanzado C1 | 7 |
| Intermedio B2 | 5 |

### Certificados no nacionales

| Entidad | 9 puntos | 7 puntos | 5 puntos |
| --- | --- | --- | --- |
| Trinity College London (ISE) | ISE IV (C2) | ISE III (C1) | ISE II (B2) |
| Cambridge | CPE (C2), grado A, B o C | CAE (C1), grado A, B o C | FCE (B2), grado A, B o C |
| IELTS (Academic o General Training) | 8 o más en cada rasgo | De 7 a menos de 8 en cada rasgo | De 5,5 a menos de 7 en cada rasgo |
| CertAcles (ACLES), pruebas presenciales | C2 | C1 | B2 |

En Trinity puntúan los resultados *pass*, *pass with merit* o *pass with distinction*. En IELTS, la puntuación se exige en **cada uno de los rasgos de la nota final**, no en la media: con una nota global alta pero un rasgo por debajo del umbral, bajas de tramo.

### Otras vías

- **Perfil lingüístico SLP del STANAG 6001**: 4.4.4.4 o superior, 9 puntos; 3.3.3.3 o superior, 7; 2.2.2.2 o superior, 5. Solo pueden invocarlo quienes pertenezcan o hayan pertenecido a las Fuerzas Armadas, y debe estar en vigor.
- **Licenciatura o Grado en Filología** (o equivalente) en un idioma de interés: 9 puntos. También **Traducción e Interpretación** en el idioma B, si es de interés: 9 puntos. En estos casos, esa titulación no puede valorarse además como nivel académico (apartado 2.1).

### Lo que no está en la lista

En la convocatoria de 2026 no figuran otros exámenes de inglés distintos de los citados. Si tu certificado no aparece en el apéndice, no puntúa en esa convocatoria aunque acredite un nivel B2 o superior. Tampoco puntúan niveles por debajo de B2. Antes de matricularte en un examen, comprueba que su nombre exacto está en el baremo vigente.

## Cómo funciona el tope de 27: ejemplos resueltos

Los ejemplos son hipotéticos y usan el baremo de 2026.

| Aspirante | Méritos académicos | Suma | Puntúa |
|---|---|---|---|
| A | Bachiller + B2 de inglés | 2 + 5 | **7** |
| B | Grado universitario + C1 de inglés + B2 de francés | 2 + 7 + 5 | **14** |
| C | Bachiller + FCE (B2) + C1 de la EOI, ambos de inglés | 2 + 7 (solo el mayor) | **9** |
| D | Bachiller + C2 de inglés, alemán y francés | 2 + 9 + 9 + 9 = 29 | **27** (tope) |
| E | Grado en Filología Inglesa + B2 de francés | 9 + 5 (el grado no cuenta también como nivel académico) | **14** |

En el caso E, si además tuviera otro título de Bachiller o superior distinto del de Filología, podría alegarlo como nivel académico; la convocatoria solo valora **una** titulación en ese apartado.

## ¿Cuál sacarte?

Depende de tu nivel real, de tu tiempo y de cuándo se abra el plazo:

- **Si ya tienes un título, localízalo y alégalo.** Es puntuación sin más trabajo.
- **El salto de B2 a C1 vale 2 puntos; de C1 a C2, otros 2.** Cada salto exige bastante más nivel. Para muchos opositores, asegurar un B2 o un C1 es más realista que perseguir un C2.
- **Un segundo idioma** suma aparte: un B2 de francés añade 5 puntos aunque ya tengas un C1 de inglés.
- **Fechas.** Debes poseer el certificado **dentro del plazo de solicitudes**. En 2026 ese plazo fue de 15 días hábiles desde el día siguiente a la publicación de la convocatoria. Mira con tiempo cuándo publica resultados cada examinador: aprobar no basta si el certificado llega tarde.
- **Presencialidad.** Comprueba que el formato que eliges es presencial en todas sus partes.
- **Coste.** Los exámenes oficiales tienen tasas que varían según la entidad; consúltalas antes de decidir.

### Cómo comparar opciones antes de matricularte

| Criterio | Qué comprobar |
|---|---|
| ¿Está en el baremo? | Nombre exacto del examen y nivel en el apéndice vigente |
| ¿Es presencial? | Todas las partes, también la oral, en el caso de los no nacionales |
| ¿Cuándo tendrás el certificado? | Fecha de publicación de resultados y de expedición, frente al plazo de solicitudes |
| ¿Se ajusta a tu nivel? | Una prueba de nivel previa evita pagar por un examen que no vas a aprobar |
| ¿Qué cuesta? | Tasa de examen y, si lo necesitas, preparación |

### Alegarlo y justificarlo sin errores

1. **Al rellenar la solicitud**, marca cada mérito en el apartado correspondiente de la inscripción telemática. Lo que no se alega no se valora.
2. **Guarda el original** del certificado: cuando lo indique el Tribunal, los méritos se justifican con el original o una copia auténtica (base 3.2.1).
3. **Espera las instrucciones del Tribunal** sobre cómo y cuándo presentar la documentación; en el SLP, la propia convocatoria prevé la consulta a las bases de datos del Ministerio de Defensa.
4. **Revisa la lista de admitidos**, que se publica con la calificación de la fase de concurso. Según la base 3.4, hay **10 días hábiles** para subsanar errores en esa puntuación o reclamar. Las dudas sobre la puntuación de un mérito las resuelve la Jefatura de Enseñanza (base 3.2.2).

Los pasos de la solicitud los veremos con más detalle en un artículo posterior.

### ¿Cuánto pesan esos puntos?

Mucho, en términos relativos. La puntuación final va sobre 195, y las notas de corte calculadas por ProLince para el acceso libre han oscilado en los últimos años entre 90,61 (2026) y 110,58 (2022); tienes el detalle en [nota de corte](/blog/nota-de-corte-guardia-civil). En ese contexto, 5 o 7 puntos son una diferencia apreciable, aunque nadie puede decirte cuánto pesarán en la próxima convocatoria.

## Recuerda: el certificado no sustituye a la prueba de inglés

El certificado suma en el concurso, pero **no te exime** de la prueba de inglés de la oposición, que sigue siendo eliminatoria con un [mínimo de 8 sobre 20](/blog/ingles-como-llegar-a-los-8-puntos-minimos-sin-ser-bilingue). La buena noticia es que preparar un B2 te deja muy por encima del nivel ESO que exige esa prueba.

## Errores frecuentes

- **Sumar dos certificados del mismo idioma.** Solo cuenta el mayor.
- **Olvidar alegarlo en la inscripción.** Si no lo alegas, no se valora.
- **Sacarlo después del plazo de solicitudes.** Debes poseerlo dentro del plazo.
- **Elegir un examen que no está en la lista** o con alguna parte no presencial.
- **Mirar la media del IELTS** en lugar de cada rasgo.
- **Contar Filología dos veces**, como idioma y como nivel académico.

## Preguntas frecuentes

### ¿Puedo sumar un B2 de inglés y un C1 de inglés?
No. Por cada idioma solo cuenta una acreditación, la de mayor puntuación.

### ¿Valen los exámenes online?
En los certificados no nacionales, el apéndice exige que todas las pruebas sean 100 % presenciales; CertAcles también debe ser presencial.

### ¿Y si me saco el título después de enviar la solicitud?
El apéndice exige poseer el mérito dentro del plazo de presentación de solicitudes y haberlo alegado en la inscripción telemática.

### ¿Cuántos puntos máximos puedo sacar por idiomas?
Hasta 9 por idioma, con el tope de 27 de los méritos académicos en su conjunto, que incluyen también los 2 puntos del nivel académico.

### ¿Puntúa un B1?
No. Los tramos del baremo empiezan en B2 (5 puntos).

### ¿Puntúa un certificado de catalán, gallego o euskera?
No figuran entre los idiomas de interés del apéndice de 2026, que son alemán, árabe, francés, inglés, italiano, portugués y ruso.

### ¿Me ayuda el certificado a preparar la prueba de inglés?
Sí, indirectamente: el nivel B2 está por encima del nivel ESO de la prueba. Para entrenar el formato de 20 preguntas con penalización, el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) incluye tests y simulacros.',
   NULL, NULL, 'publicado', '2027-01-18T06:21:00.000Z', 'acceso-guardia-civil',
   ARRAY['idiomas', 'certificados', 'fase de concurso', 'baremo']::text[], '{"title":"Certificados de idiomas Guardia Civil: cuántos puntos suman","description":"Qué certificados de idiomas puntúan en la Guardia Civil 2026: EOI, Cambridge, IELTS, Trinity y CertAcles, con 5, 7 o 9 puntos y tope de 27 académicos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-aprobar-el-ingles-de-la-guardia-civil-partiendo-de-cero', 'articulo', '"Cómo aprobar el inglés de la Guardia Civil partiendo de cero"', 'Si tu inglés es casi inexistente, la prueba de 20 preguntas de nivel ESO sigue siendo alcanzable con constancia y un orden de trabajo claro. Un plan por fases, qué priorizar, ejercicios de arranque y cómo medir tu avance sin promesas milagrosas.', '**Respuesta corta:** sí se puede llegar desde cero, porque la prueba pide un nivel compatible con la ESO y un mínimo de 8 puntos sobre 20. Pero requiere constancia: el idioma se aprende con frecuencia, no con atracones, y conviene empezar cuanto antes. Nadie puede decirte cuánto tardarás, porque depende de tu punto de partida y del tiempo que le dediques.

## Qué hay que conseguir exactamente

Según la base 6.1.1 d) y la base 7 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982):

- **20 preguntas tipo test**, más una de reserva que solo se valora si el Tribunal anula alguna.
- **Cuatro opciones** por pregunta y una sola válida (si crees que varias lo son, debes marcar la más completa).
- **Nivel compatible con la ESO** (Real Decreto 217/2022).
- **Cada error penaliza** un tercio de acierto; en blanco no resta.
- Se califica de 0 a 20 y hay que llegar a **8 puntos** para no quedar excluido.

No se te pide hablar, escuchar ni escribir: solo reconocer la opción correcta. Eso cambia mucho la forma de prepararlo, porque puedes centrarte en **gramática y vocabulario de lectura**.

## Fase 0: mide dónde estás (una semana)

Antes de estudiar, haz una prueba de **20 preguntas de cuatro opciones** y corrígela aplicando la penalización: aciertos menos errores entre tres. Puedes usar la [prueba de nivel de inglés](/nivel-ingles) de la web o cualquier cuestionario básico. Anota tres cosas: tu nota, qué preguntas no entendiste ni siquiera en el enunciado y qué estructuras fallaste.

| Resultado orientativo | Lectura | Por dónde empezar |
|---|---|---|
| No entiendes la mayoría de los enunciados | Base muy baja | Fase 1 completa |
| Entiendes los enunciados pero fallas mucho | Base frágil | Fase 1 rápida y fase 2 |
| Rondas el 8 | Cerca del mínimo | Fase 2 y fase 3 |

La tabla es orientativa, para decidir por dónde empezar; no es un baremo oficial.

## Fase 1: la base

Aquí está el mayor rendimiento si partes de cero:

1. **Verbos *to be* y *to have*** y el **presente simple**, con sus negativas y preguntas: *I am*, *she is*, *they aren''t*, *Does he work?*
2. **Pasado simple**, regulares (*worked*) e irregulares frecuentes (*went*, *saw*, *took*).
3. **Pronombres, posesivos y artículos**: *I / me / my / mine*; *a / an / the*.
4. **Preguntas con *wh-***: *what*, *where*, *when*, *who*, *why*, *how*.
5. **Vocabulario cotidiano**: familia, casa, trabajo, comida, tiempo, transporte, números, días y meses.

### Ejercicios de arranque (propios, con soluciones)

1. My sister ___ a nurse. (a) am (b) is (c) are (d) be
2. ___ you like coffee? (a) Do (b) Does (c) Are (d) Is
3. They ___ to the cinema last Saturday. (a) go (b) goes (c) went (d) gone
4. This is Pedro and that is ___ car. (a) he (b) him (c) his (d) he''s
5. ___ do you live? — In Granada. (a) What (b) Where (c) Who (d) When

**Soluciones:** 1-b, 2-a, 3-c, 4-c, 5-b.

No avances de fase hasta que aciertes con holgura los ejercicios de la actual. Avanzar con la base coja hace que todo lo posterior se tambalee.

## Fase 2: las estructuras que cuestan

Cuando la base aguante, añade lo que más se confunde:

- *Present perfect* y su diferencia con el pasado simple.
- *Will*, *going to* y presente continuo para el futuro.
- Comparativos y superlativos: *bigger than*, *the biggest*, *more expensive than*, *the most expensive*, y los irregulares *good / better / the best* y *bad / worse / the worst*.
- Cuantificadores: *much / many*, *few / a few*, *some / any*.
- Condicionales de primer y segundo tipo.
- Verbos modales: *can*, *must*, *should*, *have to*.

Tienes el repaso con ejemplos en [los tiempos verbales](/blog/gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales) y en [vocabulario y phrasal verbs](/blog/vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles).

### Ejemplo resuelto

*This book is ___ than the other one.* (a) more interesting (b) most interesting (c) interestinger (d) the more interesting

1. *Than* exige comparativo.
2. *Interesting* es un adjetivo largo: se forma con *more*.
3. **Respuesta: (a).** La (b) es superlativo sin *the*; la (c) no existe; la (d) no encaja con *than*.

## Fase 3: formato de examen

El inglés comparte los 140 minutos de la prueba de conocimientos con ortografía, gramática y las 100 preguntas del temario, y la convocatoria lo enumera en último lugar. En [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil) explicamos por qué conviene entrenarlo en ese contexto, con cansancio acumulado. Desde esta fase:

- Trabaja con **tests de cuatro opciones** y cronómetro.
- Haz **simulacros completos** con el inglés al final.
- Practica la **gestión de dudas**: descarta opciones antes de marcar.
- Lleva un **cuaderno de fallos** y relee cada semana los de las últimas cuatro.

## Cómo encajarlo en tu semana

El inglés es la parte que menos tolera los atracones. Una rutina que cabe en casi cualquier agenda:

| Momento | Tarea | Tiempo orientativo |
| --- | --- | --- |
| Diario | Ejercicios o test corto con corrección inmediata | 10 minutos |
| Diario | Vocabulario con repaso espaciado | 5 minutos |
| 2-3 veces por semana | Lectura sencilla de algo que te guste | 10 minutos |
| Semanal | Repaso del cuaderno de fallos | 15 minutos |
| Cada 2-4 semanas | Test de 20 preguntas con penalización | 20 minutos |

Los tiempos son una propuesta, no una cifra oficial. Si trabajas, el [plan de estudio compatible con un empleo](/blog/plan-estudio-guardia-civil-trabajando) te ayuda a colocarlo.

## Un ejemplo de calendario por bloques

Este reparto es una propuesta propia para quien parte de muy abajo; alarga o acorta cada bloque según tus resultados, no según el calendario:

| Bloque | Contenido | Cómo sabes que puedes pasar al siguiente |
| --- | --- | --- |
| 1 | *To be*, *to have*, presente simple, pronombres y posesivos | Aciertas casi todos los ejercicios básicos sin mirar la regla |
| 2 | Pasado simple, irregulares frecuentes, preguntas con *wh-* | Construyes preguntas y negativas en pasado sin dudar |
| 3 | Presente continuo, futuro (*will*, *going to*), comparativos | Distingues hábito, acción actual y plan |
| 4 | *Present perfect* frente a pasado simple, *for* y *since* | Eliges bien con *yesterday*, *ever*, *since* |
| 5 | Condicionales, modales, cuantificadores | Resuelves frases con *if*, *must*, *much/many* |
| 6 | Tests completos de 20 preguntas con penalización | Superas el 8 con margen de forma repetida |

Mientras avanzas por los bloques, no abandones lo anterior: dedica una parte de cada sesión a repasar lo ya visto, porque es lo que hace que se quede.

## Cómo leer una pregunta de examen

Muchos fallos de quien empieza no son de gramática, sino de lectura. Un protocolo sencillo para cada pregunta:

1. **Lee la frase entera**, incluido lo que va detrás del hueco.
2. **Busca la pista**: un marcador de tiempo (*yesterday*, *now*, *since*), un sujeto en tercera persona, una palabra como *than* o *if*.
3. **Decide qué estructura pide** antes de mirar las opciones.
4. **Descarta** las que no encajan y elige entre las que quedan.

## Cómo saber si avanzas

Registra la nota de cada test de 20 preguntas en una hoja: fecha, aciertos, errores, en blanco y nota final. Lo que te interesa es la **tendencia**, no un resultado aislado. Una señal útil es que tu nota supere el 8 con margen de forma repetida, no una sola vez: el día del examen habrá nervios y cansancio.

## Caso práctico (hipotético)

Sergio dejó el inglés en 4.º de ESO y en su primera prueba saca 4 aciertos, 6 errores y 10 en blanco: 4 − 6/3 = **2 puntos**. No entiende bien la mitad de los enunciados. Empieza por la fase 1 con diez minutos al día y una sesión semanal de repaso. Cuando aprueba con soltura los ejercicios básicos, pasa a la fase 2 y repite un test de 20 preguntas cada pocas semanas. El resultado concreto dependerá de su constancia; lo que el plan le da es saber en qué trabajar cada semana.

## Errores típicos al empezar desde cero

- **Aprender reglas sin practicar tests.** El examen no pide explicar la gramática, sino elegir una opción.
- **Saltar de nivel demasiado pronto**, sin tener asentada la base.
- **Dejarlo para el final.** Es la parte que peor responde a las prisas.
- **Darlo por perdido y confiar solo en el temario.** Quedar por debajo de 8 excluye aunque el resto vaya bien.
- **Contestar todo a ciegas.** Cada error resta; al azar, de media, ni ganas ni pierdes.

## Preguntas frecuentes

### ¿Es realista aprobar partiendo de cero?
El nivel exigido es el de la ESO y el mínimo es 8 sobre 20. Con práctica regular es un objetivo razonable, aunque nadie puede garantizar el resultado.

### ¿Cuánto tiempo necesito?
No hay una cifra válida para todos. Haz la prueba de nivel y ajusta: cuanta más distancia al nivel ESO, antes debes empezar.

### ¿Necesito un certificado de idiomas?
Para aprobar la prueba, no. Un certificado de B2 o superior suma puntos en la fase de concurso; lo veremos en otro artículo.

### ¿Me sirve una aplicación de idiomas?
Puede ayudarte con el vocabulario y el hábito diario, pero complétala con ejercicios de gramática y tests de cuatro opciones, que es el formato del examen.

### ¿Qué hago si fallo muchas preguntas de gramática?
Vuelve a la fase 1 o 2 con ejercicios cortos de esa estructura y repite un test de 20 preguntas pasada una semana.

### ¿Debo estudiar inglés todos los días aunque tenga poco tiempo?
Sí, aunque sean diez minutos. La frecuencia pesa más que la duración en el aprendizaje de un idioma.

### ¿Dónde practico con tests corregidos?
En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) el inglés se trabaja con tests por materia y simulacros completos.',
   NULL, NULL, 'publicado', '2027-01-15T06:30:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'desde cero', 'plan de estudio', 'examen']::text[], '{"title":"Aprobar el inglés de la Guardia Civil desde cero","description":"Plan por fases para aprobar el inglés de la Guardia Civil partiendo de cero: qué priorizar, ejercicios de arranque, tests y cómo medir tu avance."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derechos-deberes-y-regimen-disciplinario-del-guardia-civil', 'articulo', '"Derechos, deberes y régimen disciplinario del guardia civil"', 'Dos leyes orgánicas de 2007 marcan qué puede y qué no puede hacer un guardia civil: la LO 11/2007, de derechos y deberes, y la LO 12/2007, de régimen disciplinario. Un mapa de ambas con sus límites, faltas, sanciones, plazos y un test resuelto.', '**Respuesta corta:** la Ley Orgánica 11/2007 regula los derechos y deberes de los miembros de la Guardia Civil, y la Ley Orgánica 12/2007, su régimen disciplinario, con tres clases de faltas (muy graves, graves y leves) y sus sanciones. El guardia civil conserva sus derechos fundamentales, con límites propios de un Instituto Armado de naturaleza militar: no puede sindicarse ni hacer huelga, no tiene sufragio pasivo en los términos de la ley electoral y debe mantener neutralidad política y sindical.

Este resumen se basa en los textos consolidados del BOE: [LO 11/2007 (BOE-A-2007-18391)](https://www.boe.es/buscar/act.php?id=BOE-A-2007-18391) y [LO 12/2007 (BOE-A-2007-18392)](https://www.boe.es/buscar/act.php?id=BOE-A-2007-18392). Es una guía de estudio, no un sustituto de la ley: lee siempre el texto vigente.

## Dónde encaja en la oposición

La **LO 11/2007 (completa)** figura en el alcance del tema 15 del programa, «Fuerzas y Cuerpos de Seguridad. Guardia Civil», según nuestro [temario](/temario-guardia-civil). El mismo tema reúne la LO 2/1986, que tratamos en [competencias de cada cuerpo](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada), la Ley 29/2014 de Régimen del Personal y la historia del Cuerpo.

La **LO 12/2007 no aparece citada** en ese alcance del programa. Aun así conviene conocerla: los alumnos de los centros docentes de formación, como la [Academia de Baeza](/blog/academia-baeza-guardia-civil), están sujetos a ella en lo que les sea aplicable (art. 2). No hay datos oficiales de qué se pregunta en cada examen.

## LO 11/2007: estructura

| Título | Artículos | Contenido |
|---|---|---|
| I | 1 | Objeto y ámbito (incluye a los alumnos de los centros docentes) |
| II | 2 a 14 | Ejercicio de derechos fundamentales y libertades públicas |
| III | 15 a 23 | Deberes |
| IV | 24 y 25 | Derechos y deberes a la vez: defensa de España, uniforme y armas |
| V | 26 a 35 | Derechos profesionales |
| VI | 36 a 51 | Asociaciones profesionales |
| VII | 52 a 57 | Consejo de la Guardia Civil |

### Derechos fundamentales, con límites (título II)

Los guardias civiles son titulares de los derechos fundamentales y libertades públicas de la Constitución, sin más límites que los de la propia Constitución, sus normas de desarrollo y esta ley (art. 2). Las particularidades:

| Derecho | Artículo | Qué dice |
|---|---|---|
| Igualdad | 3 | Sin discriminación por nacimiento, raza, sexo, orientación sexual, religión, opinión u otra condición; igualdad real entre mujeres y hombres |
| Intimidad | 5 | El pabellón asignado se considera domicilio habitual; registro de efectos personales solo con autorización motivada del jefe, ante el interesado y un testigo, cuando lo exija la investigación de un delito |
| Desplazamiento | 6 | Libre por el territorio nacional; los viajes al extranjero se comunican previamente |
| Expresión | 7 | Con los límites del régimen disciplinario, el secreto profesional y el respeto a la dignidad de personas e instituciones; en asuntos de servicio, también disciplina, neutralidad y reserva |
| Reunión | 8 | Las reuniones en dependencias oficiales se comunican al jefe; nunca asistir a manifestaciones o reuniones de uniforme o con armas |
| Asociación | 9 | Pueden constituir asociaciones profesionales, que no pueden hacer actividades políticas o sindicales |
| Sufragio | 10 | Votan; no disfrutan del sufragio pasivo en los términos de la legislación electoral general |
| Sindicación | 11 | No pueden ejercerla |
| Huelga | 12 | No pueden ejercerla, ni acciones sustitutivas o concertadas para alterar el servicio |
| Petición | 13 | Solo de forma individual |
| Defensor del Pueblo | 14 | Pueden dirigirse a él directa e individualmente |

### Deberes (título III)

- **Respeto a la Constitución** y al ordenamiento jurídico, protección del libre ejercicio de derechos y libertades y garantía de la seguridad ciudadana (art. 15).
- **Jerarquía, disciplina y subordinación** (art. 16). La obediencia debida **nunca** ampara órdenes que entrañen actos manifiestamente delictivos o contrarios a la Constitución o a las leyes.
- **Respeto a la vida y a la integridad física y moral**, con estricto cumplimiento de las normas sobre el uso legítimo de la fuerza (art. 17).
- **Neutralidad e imparcialidad** (art. 18): no pueden fundar ni afiliarse a partidos o sindicatos.
- **Reserva**: secretos oficiales, secreto profesional y sigilo (art. 19).
- **Cooperación en catástrofes** (art. 20): en estados de alarma, excepción o sitio, o cuando se disponga por emergencia grave, presentarse en su destino o en la dependencia más próxima.
- **Residencia y domicilio** (art. 21), **incompatibilidades** (art. 22) y **reconocimientos psicofísicos** (art. 23).

### Derechos profesionales, asociaciones y Consejo

El título V reconoce, entre otros, formación, carrera, horario (con disponibilidad permanente), vacaciones, quejas y retribuciones. Las **asociaciones profesionales** deben tener ámbito estatal, duración indefinida y carácter no lucrativo (arts. 36 y siguientes). El **Consejo de la Guardia Civil** es un órgano colegiado presidido por el **Ministro del Interior** (o persona en quien delegue), con representantes elegidos por los guardias civiles y otros tantos de la Administración; se reúne en sesión ordinaria al menos una vez cada tres meses (arts. 52 a 55).

## LO 12/2007: régimen disciplinario

### Tres clases de faltas

Las faltas pueden ser **muy graves, graves y leves** (art. 6). Las muy graves lo son «siempre que no constituyan delito» (art. 7). Algunos ejemplos del articulado:

| Clase | Ejemplos |
| --- | --- |
| Muy graves (art. 7) | Incumplir el deber de fidelidad a la Constitución; violar la neutralidad política o sindical; pertenecer a partidos o sindicatos; discriminación o acoso; trato inhumano, degradante o vejatorio a personas bajo custodia; omisión de urgente auxilio; participar en huelgas; prestar servicio embriagado o bajo estupefacientes; negarse sin justificación a una prueba de alcoholemia o drogas legítimamente ordenada |
| Graves (art. 8) | Abuso de autoridad; falta de subordinación; violar el secreto profesional; informes o partes que no se ajusten a la realidad; superar 0,3 g/l de alcohol en sangre o 0,15 mg/l en aire espirado al inicio o durante el servicio; tenencia de drogas fuera de actuaciones del servicio |
| Leves (art. 9) | Desconsideración o incorrección; retraso o negligencia en los deberes; indiscreción en asuntos del servicio; descuido en el aseo o en la uniformidad; incumplir el horario o falta de puntualidad; omitir intencionadamente el saludo a un superior |

La LO 8/2014 añadió, entre otras, la falta muy grave de organizar o participar activamente en reuniones o manifestaciones políticas o sindicales (art. 7.3 bis) y la grave de manifestaciones públicas contrarias a la neutralidad (art. 8.21 bis).

### Sanciones (art. 11)

| Falta | Sanciones |
| --- | --- |
| Muy grave | Separación del servicio; suspensión de empleo de 3 meses y 1 día a 6 años; pérdida de puestos en el escalafón |
| Grave | Suspensión de empleo de 1 a 3 meses; pérdida de 5 a 20 días de haberes con suspensión de funciones; pérdida de destino |
| Leve | Reprensión; pérdida de 1 a 4 días de haberes con suspensión de funciones |

Detalles que conviene fijar:

- La **separación del servicio** supone perder la condición de militar de carrera de la Guardia Civil, salvo los derechos pasivos consolidados (art. 12). La impone el **Ministro de Defensa a propuesta del Ministro del Interior** (art. 27).
- La **pérdida de destino** impide pedir otro en la misma unidad o especialidad durante **dos años** (art. 15).
- La **reprensión** es una reprobación expresa **por escrito**; la amonestación verbal del superior en el ejercicio del mando **no** es sanción (art. 17).
- El **arresto** desapareció del cuadro de sanciones, como destaca el preámbulo.
- Las sanciones se gradúan por proporcionalidad: intencionalidad, reincidencia, historial profesional (solo como atenuante) o incidencia en la seguridad ciudadana, entre otros criterios (art. 19).

### Alumnos de los centros de formación (art. 18)

A los alumnos que no eran ya guardias civiles solo se les pueden imponer: por faltas graves y muy graves, **suspensión de haberes y servicios de 5 a 20 días** o **baja como alumno**; por faltas leves, **reprensión** o **suspensión de haberes y servicios de 1 a 4 días**. Las anotaciones por falta leve de los alumnos se cancelan, en todo caso, al incorporarse a la Escala (art. 71.3).

### Plazos que hay que saber

| Concepto | Muy graves | Graves | Leves | Artículo |
|---|---|---|---|---|
| Prescripción de la falta | 3 años | 2 años | 6 meses | 21 |
| Prescripción de la sanción | 3 años | 2 años | 1 año | 22 |
| Cancelación de la anotación | 4 años | 2 años | 6 meses | 71 |

La prescripción de la falta se cuenta desde que se comete; la de la sanción, desde que se notifica la resolución (o desde que se quebranta su cumplimiento). La cancelación se cuenta desde el cumplimiento de la sanción, si en ese tiempo no se impone otra; la separación del servicio no se cancela.

### Procedimiento y recursos, en resumen

- Solo se pueden imponer sanciones mediante el **expediente disciplinario** correspondiente (art. 26).
- En faltas graves y muy graves, la **instrucción no puede exceder de seis meses** (art. 55), y la resolución debe notificarse en **seis meses** desde la incoación; si no, el expediente **caduca** (art. 65, con posibles suspensiones).
- Las sanciones son **inmediatamente ejecutivas**: recurrir no suspende su cumplimiento (art. 66), aunque en faltas graves y muy graves se puede pedir la suspensión durante el recurso (art. 77).
- **Recursos**: alzada en el plazo de un mes (art. 74), reposición potestativa contra las resoluciones del Ministro de Defensa, también en un mes (art. 75), y después recurso **contencioso-disciplinario militar** (art. 78).

## Casos prácticos (hipotéticos)

**Caso 1.** Un guardia acude de paisano a una manifestación sindical en la calle, sin uniforme ni armas, y participa activamente en su organización. Aunque no lleve uniforme, organizar o participar activamente en manifestaciones de carácter político o sindical está tipificado como falta muy grave (art. 7.3 bis LO 12/2007).

**Caso 2.** Al iniciar el servicio, un control da 0,20 mg/l en aire espirado. Supera el umbral de 0,15 mg/l: es falta grave (art. 8.27).

**Caso 3.** Un cabo advierte de palabra a un guardia sobre su puntualidad. No es sanción (art. 17.2).

## Errores frecuentes

- Pensar que los guardias civiles **no pueden asociarse**: pueden, en asociaciones profesionales, pero no sindicarse.
- Creer que la **obediencia debida** cubre cualquier orden.
- Confundir **prescripción de faltas** (3 años, 2 años, 6 meses) con **prescripción de sanciones** (3, 2 y 1 año).
- Atribuir la separación del servicio al Director General: la impone el **Ministro de Defensa**.

## Test propio de repaso (con soluciones)

Preguntas escritas por ProLince para practicar; no son preguntas oficiales.

1. Según la LO 11/2007, el pabellón asignado al guardia civil: a) Es dependencia oficial a todos los efectos. b) Se considera domicilio habitual. c) Puede registrarse sin autorización. d) No goza de inviolabilidad.
2. ¿Quién preside el Consejo de la Guardia Civil? a) El Director General. b) El Ministro de Defensa. c) El Ministro del Interior o persona en quien delegue. d) El Presidente del Gobierno.
3. Las faltas graves prescriben a los: a) Seis meses. b) Un año. c) Dos años. d) Tres años.
4. ¿Cuál es una sanción por falta leve? a) Pérdida de destino. b) Reprensión. c) Suspensión de empleo de un mes. d) Arresto.
5. El derecho de petición de los guardias civiles se ejerce: a) Solo de forma colectiva. b) Solo de forma individual. c) A través de su asociación. d) No lo tienen.

**Soluciones:** 1-b (art. 5.1 LO 11/2007); 2-c (art. 52); 3-c (art. 21 LO 12/2007); 4-b (art. 11.3); 5-b (art. 13).

## Cómo estudiarlo

Lee la LO 11/2007 título a título y haz dos listas: lo que pueden hacer con límites y lo que no pueden hacer. Para la LO 12/2007, fija las cifras con tablas y repásalas con [repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario); conéctalo con la [deontología profesional](/blog/deontologia-profesional-el-codigo-de-conducta-que-entra).

## Preguntas frecuentes

### ¿Puede un guardia civil afiliarse a un sindicato?
No. La LO 11/2007 les prohíbe la sindicación (art. 11) y la huelga (art. 12), y afiliarse a partidos o sindicatos (art. 18). Sí pueden constituir asociaciones profesionales.

### ¿Puede un guardia civil presentarse a unas elecciones?
La ley dice que no disfrutan del sufragio pasivo en los términos que establezca la legislación electoral general (art. 10.2). El derecho de voto sí lo tienen.

### ¿Cuánto prescribe una falta leve?
A los seis meses, según el art. 21 de la LO 12/2007.

### ¿Se aplica el régimen disciplinario a los alumnos de Baeza?
Sí, en la medida en que les sea aplicable y con un régimen específico de sanciones (arts. 2 y 18 de la LO 12/2007).

### ¿La LO 12/2007 entra en el examen de acceso?
El programa vigente cita la LO 11/2007 completa en el tema 15, pero no la LO 12/2007. Comprueba el temario de cada convocatoria.

### ¿Dónde preparo esta parte del temario?
En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil), con tests por temas.',
   NULL, NULL, 'publicado', '2027-01-19T06:38:00.000Z', 'acceso-guardia-civil',
   ARRAY['derechos y deberes', 'régimen disciplinario', 'temario', 'normativa']::text[], '{"title":"Derechos y deberes del guardia civil: LO 11/2007 y 12/2007","description":"LO 11/2007 de derechos y deberes y LO 12/2007 de régimen disciplinario de la Guardia Civil: límites, faltas, sanciones, prescripción y test resuelto."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('falsos-amigos-en-ingles-los-errores-tipicos-del-opositor', 'articulo', '"Falsos amigos en inglés: los errores clásicos al traducir del español"', 'Palabras inglesas que se parecen a las españolas pero significan otra cosa. Una tabla amplia de falsos amigos con ejemplos propios, los parciales, los que encajan en contextos de seguridad y un método para no caer en un test de cuatro opciones.', '**Respuesta corta:** un falso amigo es una palabra inglesa que se parece a una española pero significa otra cosa. En un test de cuatro opciones son un cebo perfecto, porque la opción que «suena» a español se marca por inercia. La defensa es memorizar los pares más conocidos, aprenderlos dentro de frases y desconfiar de lo que parece demasiado fácil.

Los ejemplos y ejercicios son **propios**, escritos para practicar. No son preguntas oficiales ni sabemos si saldrá alguno en el examen. La prueba, según la base 6.1.1 d) de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), consta de 20 preguntas tipo test de nivel compatible con la ESO.

## Los falsos amigos más conocidos

| Palabra inglesa | Significa | NO significa | Ejemplo |
| --- | --- | --- | --- |
| actually | en realidad | actualmente (*currently*) | *Actually, I don''t agree.* |
| assist | ayudar | asistir a un acto (*attend*) | *Can I assist you?* |
| attend | asistir a | atender a alguien (*serve, look after*) | *She attends English classes.* |
| embarrassed | avergonzado | embarazada (*pregnant*) | *He was embarrassed by his mistake.* |
| library | biblioteca | librería (*bookshop*) | *I study in the library.* |
| sensible | sensato | sensible (*sensitive*) | *It is a sensible decision.* |
| realize | darse cuenta | realizar (*carry out*) | *I realized I was late.* |
| eventually | al final, finalmente | eventualmente (*possibly*) | *Eventually, we found the house.* |
| carpet | alfombra, moqueta | carpeta (*folder*) | *The carpet is new.* |
| constipated | estreñido | constipado (*to have a cold*) | *He is constipated.* |
| sympathetic | comprensivo | simpático (*nice, friendly*) | *She was sympathetic to my problem.* |
| large | grande | largo (*long*) | *They live in a large house.* |
| parents | padres | parientes (*relatives*) | *My parents live in Jaén.* |
| lecture | conferencia, clase magistral | lectura (*reading*) | *The lecture starts at ten.* |
| pretend | fingir | pretender (*intend*) | *He pretended to be asleep.* |
| resume | reanudar | resumir (*summarize*) | *The meeting will resume at noon.* |
| fabric | tela | fábrica (*factory*) | *This fabric is soft.* |
| support | apoyar | soportar (*put up with, stand*) | *My family supports me.* |
| introduce | presentar a alguien | introducir (*insert, put in*) | *Let me introduce my friend Ana.* |
| success | éxito | suceso (*event, incident*) | *The operation was a success.* |
| exit | salida | éxito (*success*) | *Use the emergency exit.* |
| notice | aviso; darse cuenta | noticia (*news*) | *Did you notice the noise?* |
| record | grabar; registro | recordar (*remember*) | *They recorded the interview.* |
| rope | cuerda | ropa (*clothes*) | *He tied the box with a rope.* |
| career | carrera profesional | carrera universitaria (*degree*) o de atletismo (*race*) | *She has a long career in the police.* |
| petrol | gasolina | petróleo (*oil*) | *The car needs petrol.* |
| casualty | víctima, herido (en un accidente) | casualidad (*chance, coincidence*) | *There were no casualties in the accident.* |

Y al revés, para decir en inglés lo que piensas en español: *currently* (actualmente), *to carry out* (realizar), *pregnant* (embarazada), *bookshop* (librería), *folder* (carpeta), *to have a cold* (estar constipado), *success* (éxito), *news* (noticia), *clothes* (ropa), *remember* (recordar), *oil* (petróleo).

## Falsos amigos parciales

Algunas palabras coinciden con el español en un sentido y en otro no. Son las más traicioneras, porque a veces la traducción «obvia» es correcta:

- ***Argument***: puede ser «argumento», pero muy a menudo es «discusión» o «pelea»: *They had an argument about money.*
- ***Excited***: «ilusionado», «emocionado»: *I''m excited about the trip.*
- ***Discuss***: «hablar de», «tratar» un tema, sin necesidad de discutir: *We discussed the plan.*
- ***Agenda***: «orden del día» de una reunión; la agenda personal es *diary* o *planner*.
- ***College***: centro de estudios superiores; el colegio de primaria es *school*.

## No todo parecido es una trampa

El extremo contrario también hace daño: desconfiar de cualquier palabra que se parezca al español. La mayoría de las palabras parecidas son **cognados verdaderos**, que significan lo mismo en las dos lenguas: *hospital*, *important*, *possible*, *problem*, *decision*, *information*, *family*, *police*, *accident*, *necessary*. Si en una pregunta la opción parecida al español encaja con el sentido de toda la frase, puede ser perfectamente la correcta. La sospecha sirve para **releer**, no para descartar a ciegas.

## Por qué caes aunque lo sepas

Los falsos amigos no fallan por falta de nivel, sino por **velocidad**. Con prisa y cansancio, tu cerebro propone el significado español y lo da por bueno. El inglés comparte los 140 minutos de la prueba de conocimientos con ortografía, gramática y las 100 preguntas del temario, así que es fácil llegar a él con la cabeza cargada; por eso, como explicamos en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil), conviene entrenarlo dentro de simulacros completos.

## Ejemplo resuelto paso a paso

*After two hours of searching, they ___ found the missing boy.* (a) actually (b) eventually (c) currently (d) possibly

1. La frase cuenta un proceso largo que termina bien.
2. Buscamos «al final», «finalmente».
3. *Eventually* significa exactamente eso, aunque se parezca a «eventualmente».

**Respuesta: (b).** La (a) significa «en realidad»; la (c), «actualmente»; la (d), «posiblemente», que no encaja con un hallazgo ya ocurrido.

## Cómo evitarlos

1. **Aprende los pares de dos en dos.** No apuntes solo *library* = biblioteca; apunta también librería = *bookshop*.
2. **Frases propias.** Una frase tuya con *actually* o *eventually* se queda mejor que la definición.
3. **Sospecha de las opciones obvias.** Si una opción se parece mucho a una palabra española, lee las demás antes de marcar.
4. **Vuelve al contexto.** Pregúntate qué significa la frase entera con cada opción.
5. **Cuaderno de falsos amigos.** Cada vez que falles uno, anótalo con su frase.

Más palabras útiles en [vocabulario y phrasal verbs](/blog/vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles). Si estás empezando, primero la base de [cómo aprobar el inglés desde cero](/blog/como-aprobar-el-ingles-de-la-guardia-civil-partiendo-de-cero).

## Test propio de diez preguntas (con soluciones)

1. "Actually" means: (a) ahora mismo (b) en realidad (c) antiguamente (d) a veces
2. My sister is ___ and the baby is due next month. (a) embarrassed (b) pregnant (c) constipated (d) sensible
3. I want to buy a book. Let''s go to the ___. (a) library (b) bookshop (c) carpet (d) exit
4. She was ___ when she forgot his name. (a) embarrassed (b) pregnant (c) sensible (d) sympathetic
5. "I realized my mistake" means: (a) llevé a cabo mi error (b) me di cuenta de mi error (c) resumí mi error (d) apoyé mi error
6. Put the documents in this blue ___. (a) carpet (b) folder (c) fabric (d) library
7. I can''t go out tonight; I have a ___. (a) constipation (b) cold (c) rope (d) record
8. Let me ___ you to my brother, Luis. (a) introduce (b) realize (c) insert (d) resume
9. "There were three casualties" means: (a) hubo tres casualidades (b) hubo tres víctimas o heridos (c) hubo tres coincidencias (d) hubo tres casos
10. Did you watch the ___ on TV last night? (a) notices (b) news (c) success (d) lecture

**Soluciones:** 1-b, 2-b, 3-b (en una *library* se piden libros prestados; se compran en una *bookshop*), 4-a, 5-b, 6-b, 7-b, 8-a, 9-b, 10-b.

## Segundo ejercicio: corrige la frase

Cada frase usa mal un falso amigo. Escribe la palabra correcta. Las frases incorrectas están marcadas como tales y son propias.

1. ✗ *I went to the library and bought two novels.*
2. ✗ *Actually, she lives in Toledo, but she was born in Ávila.* (Queremos decir «actualmente».)
3. ✗ *I''m constipated: I have a temperature and a sore throat.*
4. ✗ *He assisted the meeting yesterday.* (Queremos decir que asistió a la reunión.)
5. ✗ *I can''t record his name.* (Queremos decir «recordar».)
6. ✗ *She is very sensible: she cries at every film.*

**Soluciones:**

1. *I went to the **bookshop** and bought two novels.*
2. ***Currently**, she lives in Toledo, but she was born in Ávila.*
3. *I **have a cold**: I have a temperature and a sore throat.*
4. *He **attended** the meeting yesterday.*
5. *I can''t **remember** his name.*
6. *She is very **sensitive**: she cries at every film.*

## Errores frecuentes

- Traducir *actually* por «actualmente».
- Decir *I''m constipated* para hablar de un resfriado.
- Usar *sensible* cuando quieres decir *sensitive*.
- Llamar *library* a una tienda de libros.
- Decir *I assisted to the meeting*: es *I attended the meeting*.

## Preguntas frecuentes

### ¿Los falsos amigos caen en el examen?
No hay datos oficiales de qué contenidos se preguntan y la convocatoria no detalla un listado. Lo sensato es dominar los más conocidos, porque aparecen en cualquier material de inglés general.

### ¿Cuántos tengo que aprender?
No hay cifra oficial. Con los de la tabla tienes una base amplia; añade los que falles en tus tests.

### ¿Qué diferencia hay entre falso amigo total y parcial?
El total nunca significa lo que sugiere el parecido (*embarrassed*). El parcial a veces sí y a veces no (*argument*). Por eso conviene verlos siempre en una frase.

### ¿Hay falsos amigos con verbos?
Sí, muchos: *pretend*, *realize*, *resume*, *support*, *assist*, *attend*, *record*, *introduce*.

### ¿Qué hago si no recuerdo si una palabra es falso amigo?
Prueba cada opción dentro de la frase y pregúntate si el conjunto tiene sentido. Si la opción parecida al español produce una frase rara (*She was embarrassed and the baby arrives next month*), descártala.

### ¿Sirven las listas de falsos amigos de internet?
Sirven como punto de partida, pero contrasta los significados con un buen diccionario bilingüe y quédate con los de uso cotidiano, que son los propios de un nivel ESO.

### ¿Cómo me preparo con método?
Con tests de cuatro opciones y cuaderno de fallos, como en el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil).',
   NULL, NULL, 'publicado', '2027-01-16T06:47:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'falsos amigos', 'vocabulario', 'examen']::text[], '{"title":"Falsos amigos en inglés para el examen de la Guardia Civil","description":"Los falsos amigos en inglés más conocidos, con significado y ejemplo, los parciales y cómo evitar caer en ellos en un test de cuatro opciones."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales', 'articulo', '"Gramática inglesa para la Guardia Civil: los tiempos verbales que conviene dominar"', 'El examen de inglés son 20 preguntas de nivel ESO y los tiempos verbales están en casi todas las frases. Repasamos presente, pasado, present perfect, past perfect, futuro y condicionales, con ejemplos propios y un test de diez preguntas resuelto.', '**Respuesta corta:** la convocatoria pide inglés con un nivel compatible con la ESO, así que no necesitas gramática avanzada, sino elegir bien el tiempo verbal en frases cortas. Con seis bloques tienes la base: presente, pasado, *present perfect*, *past perfect*, futuro y condicionales.

Todos los ejemplos y ejercicios de este artículo son **propios**, escritos para practicar. No son preguntas oficiales ni reproducen ningún examen. Cómo es la prueba por dentro lo tienes en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

## Qué dice la convocatoria

La [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 6.1.1 d), fija un cuestionario de **20 preguntas tipo test** (más una de reserva, que solo cuenta si el Tribunal anula alguna) con un nivel «compatible con los contenidos contemplados para la Educación Secundaria Obligatoria en el Real Decreto 217/2022». Cada pregunta tiene una única respuesta válida, los errores penalizan y las preguntas en blanco no. Se califica de 0 a 20 y hay que llegar a **8**. Para ver cómo encaja en la nota total, consulta [cómo se calcula la nota](/blog/calcular-nota-examen-guardia-civil).

La convocatoria no publica una lista de contenidos gramaticales. Lo que sigue es una selección razonable de lo que se trabaja en la ESO, no un temario oficial.

## Mapa rápido de los tiempos

| Tiempo | Forma | Uso principal | Ejemplo |
|---|---|---|---|
| Present simple | *work / works* | Hábitos, hechos | *She works in Madrid.* |
| Present continuous | *am/is/are + -ing* | Ahora; planes cerrados | *They are studying now.* |
| Past simple | *worked / went* | Acción terminada en un momento pasado | *I went to Cádiz last summer.* |
| Past continuous | *was/were + -ing* | Acción en curso en el pasado | *I was driving when you called.* |
| Present perfect | *have/has + participio* | Pasado conectado con el presente | *I have lost my wallet.* |
| Past perfect | *had + participio* | Pasado anterior a otro pasado | *The train had left when we arrived.* |
| Future (*will*) | *will + infinitivo* | Decisiones en el momento, predicciones | *I''ll open the window.* |
| *Going to* | *am/is/are going to + infinitivo* | Planes decididos, evidencias | *Look at those clouds: it''s going to rain.* |

## 1. Presente simple y presente continuo

- **Presente simple**: hábitos, rutinas y hechos generales. *He gets up at seven every day.* *Water boils at 100 degrees Celsius.*
- **Presente continuo**: lo que ocurre ahora, situaciones temporales y planes ya acordados. *Look, it is raining.* *I''m living with my parents this year.* *We are meeting the sergeant tomorrow.*

**Pistas:** *every day*, *usually*, *often*, *never*, *always* → presente simple. *Now*, *at the moment*, *right now*, *Look!*, *Listen!* → continuo.

**Tercera persona:** *he works*, nunca *he work*. En negativas e interrogativas, la -s pasa al auxiliar: *Does he work here?* / *He doesn''t work here*, nunca *Does he works* ni *He doesn''t works*.

**Verbos de estado** (*know*, *like*, *want*, *need*, *believe*, *understand*) normalmente no van en continuo: *I know the answer*, no *I am knowing the answer*.

## 2. Pasado simple y pasado continuo

- **Pasado simple**: acción terminada en un momento concreto del pasado. *I visited Seville in 2019.* *He didn''t call yesterday.*
- **Pasado continuo**: acción en curso en un momento del pasado, a menudo interrumpida por otra. *I was watching TV when the phone rang.* *At nine o''clock last night, we were having dinner.*

Con negación o pregunta, el pasado lo lleva el auxiliar *did*: *Did you see him?*, nunca *Did you saw him?*

### Irregulares que conviene tener muy frescos

| Infinitivo | Pasado | Participio |
|---|---|---|
| be | was / were | been |
| go | went | gone |
| see | saw | seen |
| take | took | taken |
| write | wrote | written |
| buy | bought | bought |
| bring | brought | brought |
| think | thought | thought |
| leave | left | left |
| catch | caught | caught |
| choose | chose | chosen |
| speak | spoke | spoken |

## 3. *Present perfect*: el que más confunde

Se forma con *have/has* + participio. Se usa cuando el pasado conecta con el presente:

| Situación | Ejemplo |
|---|---|
| Experiencia sin fecha | *I have never been to London.* |
| Resultado presente | *She has lost her keys* (y ahora no las tiene). |
| Duración hasta ahora con *for/since* | *We have lived here for five years / since 2020.* |
| Algo reciente con *just*, *already*, *yet* | *I have just finished.* *Have you finished yet?* |

**Regla práctica:** si aparece un momento terminado (*yesterday*, *in 2019*, *last week*, *two days ago*), va **pasado simple**. *I saw him yesterday*, nunca *I have seen him yesterday*.

**For y since:** *for* + periodo (*for three months*); *since* + punto de inicio (*since March*, *since 2021*).

**Gone y been:** *She has gone to Paris* (está allí ahora); *She has been to Paris* (estuvo y volvió).

## 4. *Past perfect*: el pasado del pasado

*Had* + participio, para una acción anterior a otra pasada: *When I arrived at the station, the train had already left.* Si quitas *had*, cambia el sentido: *When I arrived, the train left* significa que el tren salió justo cuando llegaste.

## 5. El futuro: *will*, *going to* y presente continuo

- ***Will***: decisiones tomadas en el momento, ofrecimientos, promesas y predicciones. *I''ll help you with that.* *I think it will be cold tomorrow.*
- ***Going to***: planes ya decididos e indicios presentes. *We are going to visit my aunt; we have already bought the tickets.* *Be careful! You''re going to fall.*
- **Presente continuo**: citas y planes con hora y lugar. *I''m seeing the doctor at five.*

## 6. Condicionales

| Tipo | Estructura | Uso | Ejemplo |
|---|---|---|---|
| Cero | *If* + presente, presente | Verdades generales | *If you heat ice, it melts.* |
| Primero | *If* + presente, *will* + infinitivo | Situación real o probable | *If it rains, we will stay at home.* |
| Segundo | *If* + pasado, *would* + infinitivo | Situación hipotética | *If I had more time, I would study more.* |
| Tercero | *If* + *past perfect*, *would have* + participio | Pasado que no ocurrió | *If you had called me, I would have helped you.* |

**Errores típicos:** poner *will* detrás de *if* en el primer condicional (*If it will rain* es incorrecto en este tipo de frase) y poner *would* en las dos partes del segundo (*If I would have money* es incorrecto). En el segundo condicional, con *I*, es habitual *If I were you, I would…*.

## Ejemplo resuelto paso a paso

*By the time the police arrived, the thief ___.* (a) escapes (b) has escaped (c) had escaped (d) will escape

1. *Arrived* está en pasado: la frase transcurre en el pasado.
2. *By the time* indica que una acción ya había terminado antes de la otra.
3. Acción anterior a otra pasada → *past perfect*.

**Respuesta: (c) *had escaped*.** La (b) sería correcta si el marco fuera presente; la (a) y la (d) no encajan con *arrived*.

## Cómo practicarlo

1. **Diez frases con huecos al día**, corregidas en el momento.
2. **Cuaderno de fallos**: cada error con la regla que lo explica. Verás que se repiten pocas estructuras.
3. **Tests de cuatro opciones** cuanto antes, porque es el formato del examen.
4. **Lee la frase entera** antes de mirar las opciones: las pistas (*yesterday*, *since*, *by the time*) suelen estar al final.

## Test propio de diez preguntas (con soluciones)

1. She ___ to work by bus every day. (a) go (b) goes (c) going (d) gone
2. I ___ never ___ to Rome. (a) have / been (b) did / be (c) am / being (d) was / been
3. If it ___ tomorrow, we will cancel the trip. (a) will rain (b) rained (c) rains (d) would rain
4. When I arrived, they ___ dinner. (a) have (b) were having (c) are having (d) has
5. If I were you, I ___ that offer. (a) will accept (b) would accept (c) accept (d) accepted
6. We ___ in this town since 2018. (a) live (b) lived (c) have lived (d) are living
7. I ___ my keys yesterday. (a) have lost (b) lost (c) had lost (d) lose
8. Look at the sky! It ___ rain. (a) is going to (b) will to (c) goes to (d) is raining to
9. ___ your brother speak French? (a) Do (b) Does (c) Is (d) Has
10. If you had studied more, you ___ the exam. (a) will pass (b) would pass (c) would have passed (d) passed

**Soluciones:** 1-b (hábito, tercera persona), 2-a (experiencia sin fecha), 3-c (primer condicional: presente tras *if*), 4-b (acción en curso interrumpida), 5-b (segundo condicional), 6-c (duración con *since*), 7-b (momento terminado: *yesterday*), 8-a (indicio presente), 9-b (auxiliar de tercera persona), 10-c (tercer condicional).

## Errores frecuentes

- **Present perfect con fecha terminada.** *I have seen him last week* es incorrecto: *I saw him last week*.
- **Doble marca de pasado.** *Did you went?* es incorrecto: *Did you go?*
- **Olvidar la -s de tercera persona** en afirmativa, o ponerla también en el verbo con *does*.
- ***Will* detrás de *if*** en el primer condicional.
- **Continuo con verbos de estado.** *I am wanting* es incorrecto: *I want*.

## Preguntas frecuentes

### ¿Hace falta saber todos los tiempos verbales?
No hay un temario oficial de gramática inglesa; la convocatoria solo habla de un nivel compatible con la ESO. Estos bloques son una base razonable, no una lista oficial.

### ¿Entra la voz pasiva o el estilo indirecto?
La convocatoria no detalla contenidos. Son estructuras que se trabajan en la ESO, así que conviene conocerlas una vez dominados los tiempos verbales.

### ¿Qué hago si dudo entre dos opciones?
Descarta primero las que sean claramente incorrectas. Si te quedan dos, arriesgar suele compensar, porque el error solo resta un tercio de acierto. Lo explicaremos con números en un artículo posterior.

### ¿Cuántos verbos irregulares tengo que saber?
No hay cifra oficial. Empieza por los más frecuentes y añade los que te encuentres en tus tests.

### ¿Cuánto tiempo al día debería dedicarle?
Mejor poco y a diario que mucho de golpe. Diez o quince minutos diarios de práctica con corrección rinden más que una sesión larga a la semana.

### ¿Dónde practico con tests de cuatro opciones?
En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) el inglés se entrena con tests en el mismo formato del examen. Si dudas entre formatos de preparación, mira [academia, online o por libre](/blog/academia-online-o-por-libre-como-preparar-la-guardia-civil).',
   NULL, NULL, 'publicado', '2027-01-13T06:56:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'gramática', 'tiempos verbales', 'examen']::text[], '{"title":"Gramática inglesa Guardia Civil: tiempos verbales","description":"Tiempos verbales en inglés para el examen de la Guardia Civil: presente, pasado, present perfect, futuro y condicionales, con test resuelto."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('ingles-como-llegar-a-los-8-puntos-minimos-sin-ser-bilingue', 'articulo', '"Inglés: cómo llegar a los 8 puntos mínimos sin ser bilingüe"', 'El inglés vale 20 de los 195 puntos de la oposición, pero quedar por debajo de 8 excluye. Cómo se calcula la nota con la penalización de un tercio, qué combinaciones llegan al mínimo, cuándo compensa arriesgar y cuándo no.', '**Respuesta corta:** necesitas 8 puntos sobre 20; cada acierto suma un punto y cada error resta un tercio. Con 8 aciertos y ningún error ya llegas; con más aciertos puedes permitirte algunos errores. No necesitas ser bilingüe: necesitas asegurar las preguntas que sabes y gestionar bien las dudosas.

## Lo que dice la convocatoria

Según la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982):

- **20 preguntas tipo test** con cuatro opciones, más una de reserva que solo se valora si el Tribunal anula alguna (base 6.1.1 d).
- **Nivel compatible con la ESO** (Real Decreto 217/2022).
- **Las respuestas incorrectas penalizan; las no contestadas, no.**
- Se valora **de 0 a 20 puntos** y hay que alcanzar un **mínimo de 8** para no quedar excluido.

La fórmula de la base 7.3 es *Puntuación = Y × (A − E/(N−1)) / T*. Para el inglés, Y = 20 (puntuación máxima), T = 20 (preguntas) y N = 4 (opciones). Sustituyendo: 20 × (A − E/3) / 20, es decir:

**Nota de inglés = aciertos − errores / 3**

## ¿Cuánto vale dentro del total?

La puntuación final máxima es de 195 puntos: 45 de la fase de concurso y 150 de la oposición (100 de conocimientos generales, 20 de inglés y 30 de la psicotécnica). El inglés pesa algo más de un 10 % del total, pero es **eliminatorio**: bajar de 8 te deja fuera aunque el resto vaya perfecto.

Y tiene un segundo papel: según la base 7.10, en caso de empate en la puntuación final se mira primero la nota de conocimientos y, si sigue el empate, **la de inglés**. Tienes la visión global en [cómo se calcula la nota](/blog/calcular-nota-examen-guardia-civil).

## Combinaciones que dan exactamente 8

| Aciertos | Errores | En blanco | Nota |
| --- | --- | --- | --- |
| 8 | 0 | 12 | 8,00 |
| 9 | 3 | 8 | 8,00 |
| 10 | 6 | 4 | 8,00 |
| 11 | 9 | 0 | 8,00 |

Con más aciertos o menos errores que en cada fila, superas el mínimo. Por ejemplo, 12 aciertos y 8 errores dan 12 − 8/3 = **9,33**.

Dos lecturas prácticas:

- **Si contestas las 20, necesitas al menos 11 aciertos.** Con 10 aciertos y 10 errores sacas 10 − 3,33 = 6,67.
- **Cada tres errores te «roban» un acierto.** Por eso, más que contestar mucho, importa contestar bien.

### Si contestas las 20 preguntas

Cuando no dejas ninguna en blanco, la nota solo depende de los aciertos: nota = (4 × aciertos − 20) / 3.

| Aciertos | Errores | Nota |
| --- | --- | --- |
| 10 | 10 | 6,67 |
| 11 | 9 | 8,00 |
| 12 | 8 | 9,33 |
| 13 | 7 | 10,67 |
| 14 | 6 | 12,00 |
| 15 | 5 | 13,33 |
| 16 | 4 | 14,67 |

Cada acierto que conviertes en error te cuesta 1,33 puntos: el punto que dejas de ganar y el tercio que te restan.

## ¿Compensa arriesgar?

Con cuatro opciones y una penalización de un tercio, **contestar al azar no gana ni pierde nada de media**. La ganancia esperada de cada pregunta depende de cuántas opciones puedas descartar:

| Opciones que descartas | Probabilidad de acertar | Ganancia esperada |
| --- | --- | --- |
| Ninguna (al azar) | 1/4 | 0 |
| Una | 1/3 | +0,11 |
| Dos | 1/2 | +0,33 |

De media, si descartas **al menos una** opción, contestar sale a cuenta. Pero la media no lo es todo: cuando estás cerca del 8, lo que importa es el riesgo de bajar de esa cifra. Dos ejemplos lo muestran.

### Ejemplo resuelto 1: 8 seguras y 12 al azar

Marina está segura de 8 respuestas (y acierta las 8). Del resto no tiene ni idea.

- **Si deja las 12 en blanco:** nota = 8. Aprueba justo.
- **Si las contesta al azar:** cada una tiene 1/4 de probabilidad de acierto. Bajaría de 8 si acierta 2 o menos de esas 12, lo que, con esa probabilidad, ocurre aproximadamente **4 de cada 10 veces**.

Aunque de media no pierde nada, se juega la exclusión en casi un 40 % de los casos. **Conclusión: con la nota justa, no contestes al azar.**

### Ejemplo resuelto 2: 9 seguras y 4 dudas entre dos

Iván está seguro de 9 y en otras 4 ha descartado dos opciones; le quedan dos posibles en cada una.

- **Si deja las 4 en blanco:** nota = 9.
- **Si las contesta:** cada una tiene 1/2 de probabilidad. Solo bajaría de 8 si fallara las 4 (9 − 4/3 = 7,67), algo que ocurre en 1 de cada 16 casos, alrededor de un 6 %. De media, gana 4 × 0,33 = 1,33 puntos.

Aquí arriesgar tiene más sentido, pero no es gratis. La decisión depende de cuánto margen tengas sobre el 8.

### Una regla práctica

1. Cuenta primero cuántas respuestas tienes **seguras**.
2. Si con ellas pasas de 8 con margen, contesta las dudas en las que hayas descartado una o dos opciones.
3. Si estás justo en 8 o por debajo, contesta solo las dudas en las que hayas descartado **dos** opciones, y deja en blanco las que serían al azar.

Es una estrategia razonable, no una garantía. Lo importante es que la decidas antes del examen y la ensayes en simulacros.

## Cómo gestionar las 20 preguntas el día del examen

Un método en tres pasadas, para entrenarlo en simulacros:

1. **Primera pasada:** contesta solo las que sabes sin dudar. Deja las dudosas para después (si las instrucciones del Tribunal permiten anotar en el cuadernillo, márcalas; si no, bastará con una segunda lectura completa).
2. **Segunda pasada:** vuelve a las dudosas y descarta opciones, fijándote en cuántas has podido eliminar en cada una.
3. **Recuento y decisión:** cuenta tus seguras y aplica la regla práctica del apartado anterior para decidir qué dudas contestas.

Antes de entregar, comprueba que has marcado las respuestas donde y como indiquen las instrucciones del Tribunal y que no has señalado dos opciones en la misma pregunta.

## Caso práctico (hipotético): la misma persona, dos estrategias

Elena hace un simulacro y obtiene 10 seguras correctas, 3 dudas con dos opciones descartadas y 7 preguntas en las que no sabe nada.

- **Estrategia A, contestar todo:** de media, las 3 dudas le dan +1 y las 7 al azar, 0. Pero si las 7 al azar salen mal y fallan además 2 dudas, su nota sería 10 + 1 − 9/3 = 8. Va por el filo.
- **Estrategia B, contestar seguras y dudas:** deja en blanco las 7 sin pista. En el peor caso, falla las 3 dudas: 10 − 1 = 9. En el mejor, acierta las 3: 13.

La B no maximiza la media de forma apreciable respecto a la A, pero protege mucho mejor el mínimo. Esa es la lógica que conviene aplicar cuando el inglés es tu punto débil.

## Un plan para llegar a 8 con margen

1. **Mide el punto de partida** con un test de 20 preguntas cronometrado, aplicando la penalización.
2. **Asegura las preguntas de base**: tiempos verbales, vocabulario cotidiano y estructuras básicas. Los repasos están en [los tiempos verbales](/blog/gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales), [vocabulario y phrasal verbs](/blog/vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles) y [falsos amigos](/blog/falsos-amigos-en-ingles-los-errores-tipicos-del-opositor).
3. **Aprende a descartar**: ante una duda, elimina primero lo que sabes que es incorrecto.
4. **Simulacros completos**, con el inglés dentro de los 140 minutos, para que el cansancio no te pille por sorpresa.
5. **Cuaderno de fallos** y repaso semanal.

Si partes de un nivel muy bajo, el plan por fases está en [cómo aprobar el inglés desde cero](/blog/como-aprobar-el-ingles-de-la-guardia-civil-partiendo-de-cero).

## Ejercicio: calcula tu nota

Calcula la nota de estos tres aspirantes hipotéticos y di si superan el mínimo.

1. 10 aciertos, 3 errores, 7 en blanco.
2. 13 aciertos, 7 errores, 0 en blanco.
3. 9 aciertos, 6 errores, 5 en blanco.

**Soluciones:** 1) 10 − 1 = **9**, supera. 2) 13 − 2,33 = **10,67**, supera. 3) 9 − 2 = **7**, no llega: queda excluido aunque haya acertado más de 8.

## Errores frecuentes

- **Creer que basta con 8 aciertos** cuando también has fallado varias.
- **Contestar todo «por si acaso»** cuando estás justo en el mínimo.
- **Dejar en blanco dudas en las que has descartado dos opciones**, teniendo margen.
- **No calcular la nota con penalización** en los entrenamientos y llevarte la sorpresa el día del examen.
- **No ensayar en condiciones reales**, con el resto de la prueba antes.

## Preguntas frecuentes

### ¿Cuántas preguntas tengo que acertar como mínimo?
Sin ningún error, 8. Con errores, más: cada tres errores restan un acierto. Si contestas las 20, necesitas 11 aciertos.

### ¿Cuenta la pregunta de reserva?
Solo si el Tribunal anula alguna de las veinte. Si no, no se valora.

### ¿Es mejor dejar en blanco?
En blanco no resta. Al azar, de media, ni ganas ni pierdes, pero aumentas el riesgo de bajar del mínimo. Cuando descartas opciones, arriesgar suele compensar si tienes margen.

### ¿El inglés cuenta para la nota final?
Sí, hasta 20 puntos dentro de la fase de oposición, y además es el segundo criterio de desempate.

### ¿Qué pasa si saco 7,67?
No alcanzas el mínimo de 8 y quedas excluido del proceso.

### ¿Puedo compensar un mal inglés con una buena nota en conocimientos?
No. El mínimo de 8 es independiente: aunque saques una nota excelente en conocimientos generales, por debajo de 8 en inglés quedas excluido. Solo por encima del mínimo los puntos se suman al total.

### ¿Cuánto tiempo debo dedicar al inglés dentro de los 140 minutos?
La convocatoria no fija tiempos por parte. Reserva un margen que te permita leer cada frase con calma y hacer la segunda pasada, y ajústalo en tus simulacros.

### ¿Dónde practico con penalización real?
En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) entrenas el inglés con tests y simulacros corregidos con la misma fórmula.',
   NULL, NULL, 'publicado', '2027-01-17T06:04:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'nota mínima', 'penalización', 'examen']::text[], '{"title":"Inglés Guardia Civil: cómo llegar a los 8 puntos mínimos","description":"Cómo se puntúa el inglés de la Guardia Civil: 20 preguntas, el error resta un tercio y el mínimo es 8. Combinaciones, cuándo arriesgar y ejemplos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles', 'articulo', '"Vocabulario y phrasal verbs útiles para el examen de inglés"', 'Con 20 preguntas de nivel ESO no hace falta un vocabulario enorme, sino el cotidiano bien asentado. Phrasal verbs comunes, verbos con preposición, pares que se confunden, un método para memorizar y un test resuelto.', '**Respuesta corta:** la prueba es de nivel compatible con la ESO, así que lo rentable es dominar el vocabulario de uso diario, los *phrasal verbs* más comunes y las preposiciones que acompañan a verbos y adjetivos, no listas de palabras raras. Memoriza en contexto, con frases, y repasa a menudo.

Todos los ejemplos y ejercicios son **propios**, escritos para practicar. No son preguntas oficiales ni sabemos qué palabras saldrán: nadie lo sabe. Si aún no tienes la base gramatical, empieza por [los tiempos verbales](/blog/gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales).

## Qué vocabulario merece tu tiempo

La convocatoria no publica una lista de palabras. Lo único oficial es el nivel (ESO, según el Real Decreto 217/2022) y el formato: 20 preguntas tipo test de cuatro opciones con una sola respuesta válida, según la base 6.1.1 d) del [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). Con eso, la apuesta segura es:

- **Vida diaria**: familia, casa, trabajo, estudios, ocio, compras, viajes, salud, tiempo atmosférico.
- **Verbos frecuentes** y sus preposiciones.
- **Cuantificadores** (*much*, *many*, *few*, *little*, *some*, *any*).
- **Conectores** (*although*, *however*, *because*, *so*, *unless*, *while*).

Más contexto sobre la prueba en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

## Phrasal verbs de uso común

Un *phrasal verb* es un verbo + una partícula (preposición o adverbio) que cambia el significado. *Look* es «mirar», pero *look for* es «buscar» y *look after*, «cuidar».

### En casa y en el día a día

| Phrasal verb | Significado | Ejemplo |
| --- | --- | --- |
| get up | levantarse | *I get up at seven.* |
| wake up | despertarse | *She woke up late.* |
| turn on / turn off | encender / apagar | *Turn off the light, please.* |
| put on / take off | ponerse / quitarse (ropa) | *Put on your coat; it''s cold.* |
| look for | buscar | *I''m looking for my keys.* |
| look after | cuidar | *She looks after her grandmother.* |
| throw away | tirar a la basura | *Don''t throw away that box.* |
| pick up | recoger | *I''ll pick you up at eight.* |

### Planes, problemas y trabajo

| Phrasal verb | Significado | Ejemplo |
| --- | --- | --- |
| give up | rendirse; dejar (un hábito) | *He gave up smoking last year.* |
| find out | descubrir, averiguar | *I found out the truth yesterday.* |
| put off | aplazar | *They put off the meeting until Monday.* |
| call off | cancelar | *The match was called off because of the rain.* |
| carry on | continuar | *Carry on reading, please.* |
| run out of | quedarse sin | *We ran out of milk.* |
| fill in | rellenar (un impreso) | *Please fill in this form.* |
| break down | averiarse | *Our car broke down on the motorway.* |
| set off | salir (de viaje) | *We set off early in the morning.* |
| come across | encontrar por casualidad | *I came across an old photo.* |
| work out | resolver; hacer ejercicio | *I can''t work out this problem.* |
| look forward to | tener ganas de | *I''m looking forward to seeing you.* |
| get on with | llevarse bien con | *I get on well with my colleagues.* |
| take off | despegar | *The plane takes off at nine.* |

Dos detalles que suelen caer en tests de nivel básico:

- ***Look forward to* va seguido de -ing**: *I''m looking forward to meeting you*, no *to meet you*. El *to* es preposición.
- **Los separables admiten el objeto en medio**: *turn the light off* o *turn off the light*. Si el objeto es un pronombre, va en medio obligatoriamente: *turn it off*, no *turn off it*.

## Verbos y adjetivos con su preposición

Es vocabulario «invisible» porque en español la preposición cambia:

| Inglés | Español | Ejemplo |
| --- | --- | --- |
| depend on | depender de | *It depends on the weather.* |
| listen to | escuchar | *Listen to me.* |
| wait for | esperar a | *I''m waiting for the bus.* |
| arrive in / at | llegar a | *We arrived in Madrid / at the station.* |
| be interested in | estar interesado en | *She is interested in history.* |
| be good at | ser bueno en | *He is good at maths.* |
| be afraid of | tener miedo de | *I''m afraid of dogs.* |
| be married to | estar casado con | *She is married to a teacher.* |
| be responsible for | ser responsable de | *Who is responsible for this?* |

Truco para *arrive*: *in* con ciudades y países; *at* con lugares concretos (estación, aeropuerto, oficina). Y nunca *arrive to*.

## Pares de palabras que se confunden

- ***Make* y *do***: *make a mistake*, *make a decision*, *make a phone call*; *do homework*, *do the shopping*, *do exercise*.
- ***Say* y *tell***: *say hello*, *say something to someone*; *tell me the truth* (*tell* lleva destinatario).
- ***Borrow* y *lend***: *Can I borrow your pen?* (tomar prestado); *Can you lend me your pen?* (prestar).
- ***Bring* y *take***: *bring* hacia donde está quien habla; *take*, hacia otro sitio.
- ***Hear* y *listen***: *I hear a noise*; *I listen to the radio*.
- ***Look*, *see* y *watch***: *look at a picture*, *see a car*, *watch a film*.
- ***Much* y *many***: *much water*, *many people*.
- ***Few* y *a few***, ***little* y *a little***: *I have few friends* (casi ninguno); *I have a few friends* (algunos). *There is little time* (casi nada); *There is a little time* (un poco).
- ***Win* y *earn***: *win a match*, *earn money* (con el trabajo).

## Vocabulario cotidiano por temas

Una lista de arranque, no exhaustiva, para comprobar que tienes la base. Si dudas con alguna palabra, apúntala con una frase:

| Tema | Palabras |
| --- | --- |
| Familia | *aunt, uncle, cousin, nephew, niece, grandson, father-in-law, husband, wife* |
| Casa | *bedroom, kitchen, ceiling, floor, stairs, roof, fridge, sink, neighbour* |
| Trabajo | *job, salary, boss, colleague, shift, retire, hire, apply for, unemployed* |
| Viajes | *luggage, ticket, platform, flight, delay, departure, arrival, abroad* |
| Salud | *headache, fever, injury, pill, prescription, wound, ambulance, recover* |
| Tiempo | *weather, cloudy, foggy, windy, storm, heat, freezing, forecast* |
| Ciudad | *street, square, crossroads, traffic lights, pavement, bridge, town hall* |
| Compras | *price, cheap, expensive, receipt, change, discount, size, try on* |

Dos detalles: *luggage* y *information* son incontables (*some luggage*, *a piece of information*, nunca *two luggages* ni *an information*), y *advice* también lo es (*some advice*, no *an advice*).

### Conectores básicos

| Conector | Uso | Ejemplo |
| --- | --- | --- |
| *although* | aunque | *Although it was late, we went out.* |
| *however* | sin embargo | *It was late. However, we went out.* |
| *because* | porque | *I stayed at home because I was ill.* |
| *so* | así que | *I was ill, so I stayed at home.* |
| *unless* | a menos que | *You won''t pass unless you study.* |
| *while* | mientras | *He called while I was cooking.* |

## Ejemplo resuelto paso a paso

*I''m really looking forward ___ you next week.* (a) to see (b) to seeing (c) seeing (d) see

1. Reconoce el *phrasal verb*: *look forward to*.
2. El *to* forma parte de él y es preposición, no infinitivo.
3. Detrás de una preposición, el verbo va en -ing.

**Respuesta: (b) *to seeing*.** La (a) es el error más habitual; la (c) y la (d) olvidan el *to*.

## Método para memorizar sin agobiarte

1. **Frases, no palabras sueltas.** Anota cada *phrasal verb* con una frase tuya.
2. **Diez minutos al día**, mejor que una hora el domingo.
3. **Repaso espaciado**: vuelve a lo aprendido a los dos días, a la semana y al mes. Lo explicamos aplicado al temario en [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario), y funciona igual con el vocabulario.
4. **Agrupa por temas** (casa, viajes, trabajo) o por verbo base (*look for*, *look after*, *look forward to*).
5. **Cuaderno de fallos.** Cada error de un test se convierte en una ficha con su frase correcta.

## Test propio de diez preguntas (con soluciones)

1. We ___ of coffee, so I went to the shop. (a) ran out (b) gave up (c) put off (d) looked after
2. Could you ___ this form, please? (a) fill in (b) carry on (c) break down (d) turn off
3. I don''t have much time: I have only ___ minutes. (a) a little (b) a few (c) much (d) a lot
4. Can I ___ your dictionary for a day? (a) lend (b) borrow (c) say (d) tell
5. The concert was ___ because of the storm. (a) called off (b) found out (c) taken off (d) come across
6. It''s cold outside. ___ your jacket. (a) Put on (b) Take off (c) Turn on (d) Give up
7. She is very good ___ languages. (a) in (b) on (c) at (d) for
8. We arrived ___ the airport at six. (a) to (b) at (c) in (d) on
9. I always ___ a lot of mistakes when I''m tired. (a) do (b) make (c) take (d) get
10. My grandparents ___ me when my parents are at work. (a) look for (b) look after (c) look at (d) look forward to

**Soluciones:** 1-a, 2-a, 3-b (*minutes* es contable), 4-b, 5-a, 6-a, 7-c, 8-b (lugar concreto), 9-b (*make a mistake*), 10-b.

## Errores frecuentes

- ***Arrive to***: siempre *arrive in* o *arrive at*.
- ***Do a mistake***: es *make a mistake*.
- ***Explain me***: es *explain to me* o *explain it to me*.
- ***Depend of***: es *depend on*.
- ***Turn off it***: con pronombre, *turn it off*.
- **Aprender listas de cien palabras sin frases**: se olvidan en días.

## Preguntas frecuentes

### ¿Cuántos phrasal verbs tengo que saber?
No hay cifra oficial. Unas decenas de los más comunes, bien asentados, rinden más que una lista enorme a medias.

### ¿Los falsos amigos cuentan como vocabulario?
Sí, y son una fuente clásica de errores. Les dedicaremos un artículo propio más adelante.

### ¿Tengo que aprender vocabulario policial o jurídico?
La convocatoria habla de nivel ESO, sin vocabulario específico. Prioriza el cotidiano.

### ¿Sirve ver series en inglés?
Ayuda a familiarizarte con el idioma, sobre todo con subtítulos en inglés, pero no sustituye a la práctica con tests de cuatro opciones.

### ¿Cuál es la mejor manera de practicar?
Tests de cuatro opciones con corrección inmediata, como los del [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil), y un cuaderno donde apuntar lo que falles.',
   NULL, NULL, 'publicado', '2027-01-14T06:13:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'vocabulario', 'phrasal verbs', 'examen']::text[], '{"title":"Phrasal verbs y vocabulario: inglés de la Guardia Civil","description":"Phrasal verbs, preposiciones y vocabulario cotidiano para el inglés de la Guardia Civil: tablas con ejemplos, pares que se confunden y test resuelto."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

