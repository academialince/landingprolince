-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('balance-del-ano-como-saber-si-vas-bien-en-la-oposicion', 'articulo', 'Balance del año: cómo saber si vas bien en la oposición', 'Antes de que acabe el año, mide tu preparación con indicadores honestos: simulacros corregidos, margen sobre los mínimos, temas dominados, marcas físicas y constancia. Cómo calcularlos, cómo leerlos con las notas de corte y qué hacer en enero.', '**Respuesta corta:** sabes si vas bien cuando puedes medirlo con algo que no depende de cómo te sientes. Las sensaciones engañan en los dos sentidos; un simulacro corregido, no. Aquí tienes cinco indicadores propios para hacer balance antes del 31 de diciembre, cómo calcularlos y qué hacer con cada resultado.

Ninguna cifra de este artículo es una predicción: nadie puede asegurarte que una nota concreta dé plaza, porque depende de cuántas plazas se convoquen, de cuánta gente se presente y de cómo lo haga ese año.

## Antes de empezar: prepara tu hoja de balance

Necesitas una hoja (en papel o en una hoja de cálculo) con cinco bloques, uno por indicador. Rellénala con datos, no con impresiones: notas reales, fechas, tiempos cronometrados y días cumplidos. Si no tienes datos de algún bloque, ese es ya tu primer hallazgo.

| Indicador | Qué mides | Dato que apuntas |
|---|---|---|
| 1. Simulacros | Nota y tendencia | Fecha, aciertos, errores, blancos y nota |
| 2. Mínimos | Margen sobre cada mínimo eliminatorio | Nota por prueba frente al mínimo |
| 3. Notas de corte | Orden de magnitud global | Tu estimación sobre 195 |
| 4. Temario | Temas dominados | Estado de cada uno de los 23 temas |
| 5. Físicas y constancia | Marcas y semanas cumplidas | Tiempos, repeticiones y semanas |

## Cómo hacer un simulacro que sirva para medir

Un simulacro solo es un buen indicador si se parece al examen real. Algunas reglas propias para que el dato sea fiable:

1. **Tiempo real.** La prueba de conocimientos teórico-prácticos dura 140 minutos seguidos para ortografía, gramática, conocimientos generales e inglés. Practica con ese límite, en una sola sesión y sin pausas.
2. **Sin apuntes ni móvil.** Cualquier consulta, por pequeña que sea, infla la nota y falsea la tendencia.
3. **Con penalización.** Corrige aplicando que cada error resta un tercio de acierto; si no, la nota no es comparable con el mínimo.
4. **Con preguntas que no hayas visto.** Repetir un test que ya conoces mide memoria del test, no dominio del temario.
5. **Corrección completa el mismo día o el siguiente.** Clasifica cada fallo: no lo sabía, lo sabía pero me confundí, o leí mal el enunciado. Cada tipo pide un remedio distinto: estudiar, repasar o leer con más calma.

Apunta también cuántas preguntas dejaste en blanco y cuántas de las que respondiste con duda acertaste. Ese dato te dirá, con el tiempo, si te conviene arriesgar más o menos.

## Indicador 1: tu nota en simulacros corregidos

Es el más útil. En la prueba de conocimientos hay 100 preguntas de 4 opciones, **cada error resta un tercio de acierto** y las respuestas en blanco no restan. Hay que sacar al menos **50 sobre 100** para no quedar excluido. Si no recuerdas el cálculo, lo tienes en [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil) y en la [calculadora](/calculadora-nota-guardia-civil).

Ejemplo propio: 70 aciertos, 21 errores y 9 en blanco dan 70 − 21/3 = **63 puntos**.

Lo importante no es un simulacro suelto, sino la **tendencia de los últimos cuatro o cinco**:

- **Si la línea sube**, vas bien aunque la cifra aún no te guste.
- **Si está plana durante un mes**, algo del método hay que cambiar.
- **Si baja**, revisa si has abierto temas nuevos sin repasar los antiguos o si estás cansado.

Mira también el **número de errores**. Dos simulacros con la misma nota no son iguales: 65 con 6 errores revela una base más firme que 65 con 24 errores, que indica que estás arriesgando mucho y fallando a menudo.

## Indicador 2: margen sobre los mínimos

Cada prueba tiene un mínimo eliminatorio según la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)):

| Prueba | Mínimo | Cómo se puntúa |
|---|---|---|
| Conocimientos | 50 sobre 100 | +1 por acierto; −1/3 por error |
| Inglés | 8 sobre 20 | +1 por acierto; −1/3 por error |
| Psicotécnico (aptitudes) | 12 sobre 30 | +0,375 por acierto; −0,125 por error |
| Ortografía | Menos de 6 errores | 6 errores o más excluyen |
| Gramática | Menos de 6 errores | 6 errores o más excluyen |

Ejemplos de cálculo (propios):

- **Inglés**: 14 aciertos y 3 errores dan 14 − 1 = **13 sobre 20**. Margen sobre el mínimo: 5 puntos.
- **Psicotécnico**: 45 aciertos y 12 errores dan 45 × 0,375 − 12 × 0,125 = 16,875 − 1,5 = **15,375 sobre 30**. El mínimo de 12 equivale a 32 aciertos netos.
- **Ortografía**: si en tus prácticas cometes 4 o 5 errores, estás al borde de la exclusión aunque «casi apruebes».

Pregúntate en qué prueba estás más cerca del mínimo. Esa es tu prioridad de enero, no la que más te gusta estudiar. Quien domina el temario pero descuida el inglés se juega el proceso en una prueba de 20 preguntas.

## Indicador 3: comparación con las notas de corte (con cuidado)

La nota de corte que calculamos es la puntuación final, sobre 195, del último aspirante propuesto del cupo libre. A partir de las resoluciones de propuestos publicadas en el BOE, fueron:

| Año | Nota de corte (sobre 195) |
|---|---|
| 2022 | 110,58 |
| 2023 | 95,75 |
| 2024 | 103,08 |
| 2025 | 95,80 |
| 2026 | 90,61 |

Fuente de 2026: [BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936). Tienes el detalle en [la nota de corte](/blog/nota-de-corte-guardia-civil). No existe una «nota de corte oficial» publicada como cifra aislada.

Dos advertencias:

- Esa nota suma **concurso (hasta 45 puntos) y oposición (hasta 150)**. Tu simulacro de conocimientos es solo una parte: añade tu inglés, tu psicotécnico y tus méritos para estimar el total.
- Cambia mucho de un año a otro, así que sirve como orden de magnitud, no como objetivo exacto.

Ejemplo propio de estimación: 63 en conocimientos, 13 en inglés y 15,375 en psicotécnico suman 91,375 de oposición; con 10 puntos de concurso, 101,375 sobre 195. Es una foto aproximada, nada más.

## Indicador 4: temario dominado, no leído

Haz una tabla con los 23 temas y marca cada uno como:

- **Visto**: lo has leído una vez.
- **Repasado**: lo has vuelto a trabajar al menos una vez más.
- **Dominado**: respondes un test del tema sin apuntes y con pocos fallos.

Si la mayoría está en «visto», tienes lectura, no preparación. Sé estricto al marcar: un tema que solo reconoces cuando lees las opciones, pero que no sabrías explicar sin ellas, todavía no está dominado. Un objetivo razonable para enero es pasar cada semana algún tema de «visto» a «repasado» y de «repasado» a «dominado». Lo veremos con más calma al hablar del repaso espaciado.

## Indicador 5: marcas físicas y constancia

Cronometra los 2.000 metros, cuenta tus extensiones de brazos, haz el circuito y nada los 50 metros un día cualquiera, sin preparación especial. Compara con [las marcas y el entrenamiento de las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento). Las pruebas son de apto o no apto: lo que cuenta es tu margen sobre la marca de tu sexo y tramo de edad.

Después, cuenta cuántas semanas de las últimas ocho cumpliste tu plan de estudio y de entrenamiento. La constancia pesa más que cualquier semana heroica. Si estas fiestas has seguido un mínimo diario, como proponíamos en [cómo estudiar en Navidad](/blog/como-estudiar-la-oposicion-en-navidad-sin-perder-el-ritmo), anótalo también.

Si tienes dolor o una lesión, consulta con un profesional sanitario antes de forzar.

## Qué hacer con el resultado

| Situación | Qué hacer en enero |
|---|---|
| **Por encima de lo previsto** en todas las pruebas | Mantén el ritmo y sube la dificultad: simulacros completos, a tiempo real y con todas las pruebas seguidas |
| **Justo** en una prueba | Elige ese único punto débil y dedícale una parte fija de cada semana |
| **Por debajo** en varias | Revisa horas reales, método y [errores típicos al preparar](/blog/errores-preparar-oposicion-guardia-civil) antes de cambiar nada más |
| **Sin datos** | Haz un simulacro completo la primera semana de enero y empieza a registrar |

Fija después dos o tres objetivos medibles para enero, por ejemplo: «cuatro simulacros corregidos», «inglés por encima de 12 en tres prácticas seguidas» o «diez temas en dominado». Vuelve a medirte a final de mes.

Si quieres un seguimiento ordenado, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye temario y simulacros.

## Errores frecuentes al hacer balance

- **Medirse por horas** y no por resultados.
- **Quedarse con el mejor simulacro** y olvidar los demás.
- **Compararse con otros opositores** en lugar de con tu propio registro.
- **Ignorar las pruebas eliminatorias pequeñas** (ortografía, gramática, inglés).
- **Cambiar todo el método a la vez** tras un mal resultado.

## Preguntas frecuentes

### ¿Cuántos simulacros necesito para saber cómo voy?

No hay un número oficial. Con cuatro o cinco corregidos y registrados ya se ve una tendencia razonable.

### ¿Es malo suspender un simulacro?

No: es información. Lo malo es no corregirlo y repetir el mismo error.

### ¿Puedo compararme con la nota de corte del año pasado?

Solo como referencia. Suma concurso y oposición, y cambia en cada convocatoria.

### ¿Debo dejar en blanco las preguntas dudosas?

Depende de tu grado de duda. Con cuatro opciones, cada error resta un tercio; tus simulacros te dirán si arriesgar te sale a cuenta. Analiza cuántas de tus respuestas dudosas aciertas.

### ¿Cada cuánto debo repetir el balance?

Una vez al mes es una buena frecuencia: da tiempo a que los cambios se noten y evita obsesionarse con cada resultado.

### ¿Y si voy mal en diciembre?

Ajusta método y horas, céntrate en tu punto más débil y vuelve a medirte en cuatro semanas. Un mal balance a final de año no es una condena, sino el punto de partida para el siguiente.',
   NULL, NULL, 'publicado', '2026-12-30T06:58:00.000Z', 'acceso-guardia-civil',
   ARRAY['balance', 'planificación', 'simulacros', 'nota de corte']::text[], '{"title":"Cómo saber si vas bien en la oposición a Guardia Civil","description":"Indicadores para el balance de fin de año en tu oposición: simulacros, mínimos oficiales, notas de corte 2022-2026, temario, marcas físicas y constancia."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-memorizar-leyes-repaso-espaciado-aplicado-al-temario', 'articulo', 'Cómo memorizar leyes: repaso espaciado aplicado al temario', 'Releer subrayando es de lo menos eficaz. Qué dice la investigación sobre la curva del olvido, la práctica de recuperación y el repaso espaciado, y cómo montar un calendario de repasos para los 23 temas, con fichas de ejemplo.', '**Respuesta corta:** para retener mucho temario durante meses, lo que mejor respaldado está por la investigación es **recuperar lo aprendido sin mirar** (tests, preguntas, esquemas de memoria) y **repartir los repasos en el tiempo** en lugar de concentrarlos. Releer y subrayar, que es lo que casi todos hacemos, rinde menos. Abajo tienes cómo aplicarlo a leyes concretas y un calendario para los 23 temas.

## Qué dice la investigación (sin exagerar)

### La curva del olvido

En 1885, Hermann Ebbinghaus publicó sus experimentos de memoria, hechos sobre sí mismo con listas de sílabas sin sentido. Describió que olvidamos deprisa al principio y cada vez más despacio después. Cuánto olvida cada persona depende del material, de cómo se aprendió y de otros factores, así que **no hay un porcentaje universal** y desconfía de quien te lo dé. La idea que sí se sostiene: sin repasar, lo aprendido se va perdiendo, y cada repaso hace que dure más.

### Práctica de recuperación (el «efecto del test»)

Intentar recordar sin mirar fortalece la memoria más que volver a leer. Roediger y Karpicke (2006, *Psychological Science*) compararon estudiantes que releían un texto con otros que hacían pruebas de recuerdo: a corto plazo, releer daba resultados parecidos o algo mejores; a los días, recordaban más quienes se habían examinado. Además, los que releían se sentían más seguros. Esa falsa seguridad es la trampa de la relectura.

### Práctica espaciada

Repartir el estudio en varias sesiones separadas funciona mejor que concentrarlo. La revisión de Cepeda y colaboradores (2006, *Psychological Bulletin*), que analizó cientos de experimentos, confirmó ese efecto y apuntó que el intervalo más útil depende de cuánto tiempo necesitas recordar: cuanto más lejano el examen, más conviene separar los repasos.

### Qué técnicas salen mejor paradas

Dunlosky y colaboradores (2013, *Psychological Science in the Public Interest*) revisaron diez técnicas de estudio. Calificaron de **utilidad alta** la práctica con tests y la práctica espaciada, y de **utilidad baja** el subrayado y la relectura. No dicen que releer no sirva para nada, sino que rinde menos por hora invertida.

## Cómo hacer práctica de recuperación con leyes

- **Tapa y escribe:** lee un artículo, tápalo y escribe lo que recuerdes. Compara y corrige en otro color.
- **Convierte epígrafes en preguntas:** «¿Cuánto dura como máximo la detención preventiva?» en lugar de «Artículo 17.2».
- **Esquema en blanco:** dibuja la estructura del tema de memoria (títulos, capítulos, órganos) y rellénala.
- **Explícalo en voz alta**, como si se lo contaras a alguien que no sabe nada del tema.
- **Tests por tema**, corregidos y con los fallos anotados. Puedes usar el [test online](/test-guardia-civil).

## Fichas de ejemplo (Constitución)

| Pregunta (anverso) | Respuesta (reverso) |
| --- | --- |
| Duración máxima de la detención preventiva | 72 horas (art. 17.2 CE) |
| Número de diputados que prevé la Constitución | Entre 300 y 400 (art. 68 CE) |
| Senadores por provincia | 4 (art. 69 CE) |
| Miembros del Tribunal Constitucional y mandato | 12 miembros, 9 años |
| Composición del CGPJ | Presidente del Tribunal Supremo y 20 miembros, 5 años |

Reglas para que una ficha funcione: **una sola idea por ficha**, la pregunta formulada como te la harían, y la referencia del artículo para volver a la fuente si fallas. Con números parecidos (72 horas, 9 años, 5 años), crea fichas que obliguen a distinguirlos. Tienes el bloque constitucional explicado en [la Constitución en la oposición](/blog/constitucion-oposicion-guardia-civil) y un test para practicar en [20 preguntas de Constitución](/blog/test-constitucion-20-preguntas-guardia-civil).

## Un calendario de repasos (propuesta propia)

No es una norma científica: es una forma práctica de espaciar que puedes ajustar.

| Repaso | Cuándo, desde el estudio del tema |
| --- | --- |
| Primer contacto | Día 0 |
| Repaso 1 | Día 1 |
| Repaso 2 | Día 3 |
| Repaso 3 | Día 7 |
| Repaso 4 | Día 14 |
| Repaso 5 | Día 30 |
| Siguientes | Cada mes, o cuando falles en un test |

En cada repaso, **primero intentas recordar y luego compruebas**. Solo relees lo que has fallado. Los primeros repasos duran 10-20 minutos; los últimos, menos, porque ya sabes más.

### Ejemplo resuelto: cómo se acumulan los repasos

Supón que estudias un tema por semana, empezando el lunes. Cada tema nuevo trae sus repasos y se suman a los de semanas anteriores:

- **Semana 1:** estudias el tema 1 (días 0, 1 y 3 en la misma semana).
- **Semana 2:** tema 2 nuevo + repaso del tema 1 a los 7 días.
- **Semana 3:** tema 3 nuevo + repaso del tema 2 a los 7 días + repaso del tema 1 a los 14 días.
- **Semana 5:** tema 5 nuevo + repasos de los temas 4 (7 días) y 3 (14 días); el tema 1 llega a su repaso de los 30 días.

A partir del segundo mes tendrás cada semana uno o dos repasos de temas antiguos, además del tema nuevo. Por eso conviene reservar un bloque fijo semanal (por ejemplo, una hora el jueves) para repasos. En el reparto orientativo que proponemos en [cuántas horas estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil), esos repasos salen del 20 % dedicado a tests.

## Sistema de cajas (sin aplicaciones)

Si no quieres usar una aplicación de tarjetas, el sistema de cajas de Leitner funciona con papel:

1. Caja 1: fichas nuevas o falladas. Se repasan cada día.
2. Caja 2: acertadas una vez. Cada tres días.
3. Caja 3: acertadas dos veces seguidas. Cada semana.
4. Caja 4: cada dos semanas. Caja 5: cada mes.

Si aciertas, la ficha sube una caja; si fallas, vuelve a la 1. Así el repaso se concentra solo en lo que no sabes.

## Aplicarlo a cada tipo de contenido

- **Plazos y cifras** (por ejemplo, los plazos de la [detención y el habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre)): fichas y tests; aquí el error cuesta puntos.
- **Listas y estructuras:** esquema en blanco y rellenar de memoria.
- **Artículos largos:** divide en bloques y recupera cada uno por separado.
- **Conceptos:** explícalos con tus palabras y pon un ejemplo propio.
- **Definiciones parecidas entre normas:** ficha comparativa con dos columnas (norma A frente a norma B).

## Caso práctico (hipotético): el tema que no se queda

Alguien estudia el tema de armas y explosivos, hace el test del día 0 y saca 14 de 20. En el repaso del día 3, sin mirar, baja a 9. ¿Qué ha pasado? Al revisar los fallos, ve que todos son cifras parecidas: plazos de revista, categorías y divisiones de riesgo. Cambia de estrategia: deja de releer el tema completo y crea 25 fichas solo con esas cifras, cada una con la pregunta formulada como en un test. En el repaso del día 7 saca 15, y en el del día 14, 17. La lección: cuando un tema no se queda, casi nunca falta tiempo de lectura; falta **recuperación dirigida a lo que se falla**.

## Mezclar temas (práctica intercalada)

Cuando ya has estudiado varios temas, mezcla preguntas de unos y otros en el mismo test. Cuesta más y da peores resultados en el momento, pero te obliga a identificar de qué norma va cada pregunta, que es lo que pasa en el examen real. Es una de las razones por las que la segunda vuelta del temario se hace con tests mezclados.

## Cómo escribir buenas preguntas para tus fichas

Una ficha mal planteada te hace creer que sabes algo que no sabes. Compara:

- **Mala:** «Artículo 17 de la Constitución». No dice qué tienes que recordar.
- **Mejor:** «¿Cuál es la duración máxima de la detención preventiva?». Pide un dato concreto.
- **Aún mejor, para el test:** «La detención preventiva no podrá durar más de… ¿24, 48, 72 horas o 5 días?». Te entrena para distinguir entre opciones parecidas, que es lo que harás en el examen.

Y cuando falles una ficha, no te limites a darle la vuelta: vuelve al artículo, léelo entero y pregúntate por qué te confundiste.

## Errores frecuentes

- **Repasar todo igual.** Dedica más repasos a lo que fallas.
- **Esperar a «sabérmelo» para hacer tests.** Haz tests desde el primer día: fallar también enseña.
- **Confundir familiaridad con dominio.** Reconocer un texto al releerlo no es saber recordarlo.
- **Fichas demasiado largas.** Si la respuesta tiene cinco ideas, son cinco fichas.
- **Acumular en la víspera.** El descanso nocturno importa para consolidar lo aprendido; no lo sacrifiques.
- **Medir solo horas.** Mide aciertos.

## Checklist de la semana

- [ ] Cada tema nuevo cerrado con un test.
- [ ] Repasos programados en el calendario (1, 3, 7, 14 y 30 días).
- [ ] Fichas nuevas creadas con los fallos de la semana.
- [ ] Un test mezclado de temas antiguos.
- [ ] Fallos anotados con su causa.

Si prefieres que temario, tests y repasos vengan organizados, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) los incluye.

## Preguntas frecuentes

### ¿Cada cuánto debo repasar?
No hay un intervalo único demostrado para todos. Empieza con repasos cercanos y ve espaciándolos; si fallas, acórtalos.

### ¿Subrayar sirve de algo?
Ayuda a orientarte en la primera lectura, pero no basta para retener. Complétalo siempre con recuperación.

### ¿Tengo que usar aplicaciones de tarjetas?
No. Un cuaderno, fichas de cartulina y un calendario bastan. Las aplicaciones solo automatizan el cálculo de fechas.

### ¿Hay que memorizar las leyes literalmente?
Conviene dominar la literalidad de cifras, plazos, órganos y enumeraciones, porque las opciones de un test suelen jugar con pequeñas diferencias. El resto, entenderlo.

### ¿Cuánto tiempo me llevarán los repasos?
Al principio, poco. A partir del segundo mes, una parte fija de la semana. Inclúyelos en tu plan desde el primer día para que no se coman el tiempo del temario nuevo.

### ¿Esto garantiza aprobar?
No. Mejora la retención, pero el resultado depende de muchas más cosas: horas, nivel de partida y competencia.',
   '/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario.jpg', 'Opositora estudiando en una biblioteca con un libro lleno de subrayados y marcadores de colores', 'publicado', '2027-01-04T06:23:00.000Z', 'acceso-guardia-civil',
   ARRAY['memorización', 'repaso espaciado', 'técnicas de estudio', 'temario']::text[], '{"title":"Memorizar leyes: repaso espaciado para oposiciones","description":"Cómo memorizar leyes con repaso espaciado y práctica de recuperación: qué dice la investigación, calendario de repasos para 23 temas y fichas de ejemplo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil', 'articulo', 'Cuántas horas al día hay que estudiar para la Guardia Civil', 'No existe una cifra oficial de horas. Te damos una referencia (25 a 40 horas semanales de estudio), cómo repartirlas entre temario, tests, lengua, inglés y psicotécnico, tres horarios tipo y cómo saber si tus horas rinden.', '**Respuesta corta:** no hay un número oficial ni mágico. Como **referencia**, en ProLince trabajamos con **25 a 40 horas semanales de estudio**, es decir, de unas 4 a 7 horas diarias si repartes en seis días. El entrenamiento físico va aparte. Es una orientación de academia, no un dato de la convocatoria ni una garantía: con menos horas también se puede, pero necesitas más meses.

## Por qué no hay una cifra universal

La convocatoria ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) fija pruebas y mínimos, no horas de estudio. Las que necesitas dependen de:

- **Tu punto de partida** en temario, inglés y lengua.
- **Tu facilidad** para memorizar y comprender textos legales.
- **La nota que buscas.** Superar los mínimos no es lo mismo que competir por plaza: en 2026 la nota de corte del acceso libre fue de 90,61 puntos sobre 195, y en 2024, de 103,08. Lo explicamos en [la nota de corte](/blog/nota-de-corte-guardia-civil).
- **El tiempo que tengas** hasta la prueba, que en 2027 aún no está fijado.

## La cuenta que sí puedes hacer

En lugar de buscar «la cifra», calcula las horas totales que vas a poder invertir:

**horas semanales reales × semanas disponibles = horas totales**

Ejemplos:

| Horas semanales | Semanas | Horas totales |
| --- | --- | --- |
| 15 | 40 | 600 |
| 25 | 30 | 750 |
| 35 | 25 | 875 |

Nuestro [plan de estudio personalizado](/plan-de-estudio) avisa cuando alguien que empieza de cero cuenta con menos de 400 horas en total, o con menos de 12 semanas para la primera vuelta: es un plan muy apretado para 23 temas, inglés, lengua y psicotécnico. No significa que sea imposible, sino que tendrás que priorizar mucho.

## Cómo repartir las horas

El reparto orientativo que usamos para una semana de estudio:

| Bloque | Parte de tus horas | Con 20 h | Con 30 h | Con 40 h |
| --- | --- | --- | --- | --- |
| Temario | 60 % | 12 h | 18 h | 24 h |
| Tests y simulacros | 20 % | 4 h | 6 h | 8 h |
| Inglés, ortografía y gramática | 10 % | 2 h | 3 h | 4 h |
| Psicotécnicos | 10 % | 2 h | 3 h | 4 h |

¿Por qué así? Porque el examen de conocimientos tiene **100 preguntas** de temario, pero el inglés (mínimo 8 sobre 20), la ortografía y la gramática (6 errores o más excluyen) y el psicotécnico (mínimo 12 sobre 30, con 80 preguntas en 55 minutos) son eliminatorios. Pocas horas, pero todas las semanas. Ajusta los porcentajes a tus puntos débiles: si el inglés es tu problema, súbelo al 15 % y recorta temario. Recuerda que todo se examina en una sola prueba de 140 minutos, así que las horas de lengua e inglés no son un extra: son parte del mismo examen.

## Tres horarios tipo

Son ejemplos propios, no estándares. Comprueba que las sumas encajan con tu vida antes de copiarlos.

### Dedicación completa: unas 33 horas semanales

| Franja | Lunes a viernes | Sábado |
| --- | --- | --- |
| 9:00-11:00 | Tema nuevo | Simulacro o test mezclado (3 h) |
| 11:15-12:45 | Tema nuevo y esquema | |
| 16:00-17:00 | Test del tema o repaso espaciado | |
| 17:15-17:45 | Inglés u ortografía | |
| 17:45-18:15 | Psicotécnico | |

Suma: 5,5 horas diarias de lunes a viernes (27,5 h) más el simulacro del sábado y su corrección (unas 5 h): en torno a 33 horas. Entrenamiento a primera hora o por la tarde-noche, y domingo libre.

### Media jornada: unas 20 horas semanales

- Lunes a viernes: 3 horas diarias (2 de temario y 1 de tests, inglés o psicotécnico alternos) = 15 h.
- Sábado: 5 horas (simulacro o test mezclado y corrección).
- Domingo libre.

### Jornada completa: unas 14 horas semanales

- Lunes a jueves: 2 horas (1 h y media de temario y media hora de inglés o psicotécnico) = 8 h.
- Viernes: descanso o 1 hora de repaso suave.
- Sábado: 5 horas. Domingo: 1 hora de repaso espaciado.

Con 14 horas, la primera vuelta del temario se alarga: cuenta con una convocatoria más de lo que harías a jornada completa. Si trabajas, tienes un reparto más detallado en [plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando), y para calcular si llegas a tiempo, [empezar en enero: ¿da tiempo?](/blog/empezar-la-oposicion-a-guardia-civil-en-enero-da-tiempo).

## Más horas no es siempre mejor

Cuatro horas con el móvil al lado rinden menos que dos concentradas. Ideas prácticas:

- **Bloques de 45 a 90 minutos** con pausas cortas. No es una ley científica, es un punto de partida: ajusta cuando notes que decae tu atención.
- **Lo difícil, a tu mejor hora.** Si rindes por la mañana, ahí va el tema nuevo; el psicotécnico o el inglés aguantan mejor la tarde.
- **Recuperar antes que releer.** Hacer un test o escribir de memoria lo que recuerdas suele aprovechar mejor el tiempo que volver a leer. Lo desarrollamos en el artículo sobre repaso espaciado.
- **Registra lo hecho,** no lo planificado. Una hoja con fecha, horas reales y tema basta.
- **El psicotécnico, poco y a menudo:** sesiones cortas varias veces por semana, como explicamos en [psicotécnico en 15 minutos](/blog/entrenar-psicotecnico-15-minutos-guardia-civil).

## Cómo subir horas si hoy estudias poco

Si ahora no llegas a una hora diaria, no saltes de golpe a seis. Una progresión razonable (orientativa):

| Semanas | Horas diarias |
| --- | --- |
| 1-2 | 1 h |
| 3-4 | 1,5 h |
| 5-6 | 2 h |
| 7-8 | 2,5-3 h |
| A partir de la 9 | Tu objetivo, si lo sostienes |

Fija siempre la misma franja horaria y respeta un día de descanso. Sostener un ritmo modesto durante meses suele ser más útil que un arranque brillante de dos semanas.

## Caso práctico (hipotético): muchas horas, poca mejora

Alguien estudia 35 horas semanales desde hace dos meses y sus tests se han estancado en torno a 45 puntos netos sobre 100. Al revisar su registro descubre que el 90 % del tiempo es lectura y subrayado, y que apenas hace tests. Cambia el reparto: mantiene 35 horas, pero dedica 7 a tests (20 %) y cierra cada sesión de temario escribiendo de memoria un esquema. La clave del caso: **el problema no eran las horas, sino el método**. Antes de subir horas, cambia cómo las usas.

## Cómo cambian las horas a lo largo del año

El reparto no es fijo. En la primera vuelta del temario, el 60 % de temario manda. En la segunda vuelta, los tests mezclados ganan peso y pueden llegar a un tercio de tus horas. En la fase final, con un simulacro semanal y su análisis, el estudio de temas nuevos casi desaparece y el tiempo se va a repasar lo que fallas. Lo que no cambia en ninguna fase es el rato diario de inglés, lengua y psicotécnico.

## Errores frecuentes con las horas

- **Contar como estudio el tiempo de móvil o de pausas largas.** Cuenta solo el tiempo efectivo.
- **Copiar el horario de otra persona.** Su punto de partida, su trabajo y su ritmo no son los tuyos.
- **Compensar un día perdido con el doble al día siguiente.** Rompe el descanso y no recupera lo perdido.
- **No reservar horas para repasar.** Sin repasos, las horas de temario nuevo se pierden en semanas.
- **Eliminar el día libre.** A medio plazo, cuesta más de lo que aporta.

## Señales de que te estás pasando

Dormir poco, perder la concentración de forma continuada, irritabilidad o lesiones por entrenar cansado son señales de que debes bajar carga. Si persisten, consulta con tu médico. El descanso forma parte del plan; para combinarlo con el entrenamiento, mira [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Cómo saber si tus horas funcionan

Mide resultados, no tiempo:

- **Tendencia de tus simulacros:** la media de los últimos tres o cuatro.
- **Fallos por tema:** si un tema sigue dando muchos errores tras dos repasos, necesita otro enfoque.
- **Constancia:** semanas cumplidas frente a semanas previstas.

Si subes horas y no mejora nada en un mes, cambia el método antes que el horario. Para una planificación ya montada, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) la incluye.

## Checklist semanal

- [ ] He registrado las horas reales.
- [ ] He cerrado cada tema con un test.
- [ ] He tocado inglés, ortografía y psicotécnico al menos tres días.
- [ ] He repasado temas antiguos.
- [ ] He descansado un día completo.

## Preguntas frecuentes

### ¿Se puede aprobar estudiando 2 horas al día?
Puede ser, si tienes muchos meses por delante y las aprovechas bien. Con 12-14 horas semanales, la preparación se alarga y conviene apuntar a una convocatoria más lejana. No hay garantías: depende de tu nivel y de la competencia.

### ¿Las 25-40 horas son oficiales?
No. Es la referencia con la que trabajamos en ProLince. La convocatoria no dice nada sobre horas de estudio.

### ¿Cuenta el entrenamiento físico en esas horas?
En este artículo, no: hablamos de horas de estudio y el entrenamiento se suma aparte. Calcúlalo por separado para no engañarte con el total.

### ¿Hay que estudiar los fines de semana?
Muchos opositores usan el sábado para simulacros y repaso. Un día libre a la semana es sano y ayuda a sostener el ritmo meses.

### ¿Es mejor estudiar por la mañana o por la tarde?
Depende de ti. Pon el tema nuevo en tu franja de máxima concentración y deja para las demás lo que exige menos esfuerzo.

### ¿Qué hago si un día no puedo estudiar?
Ten un plan mínimo, por ejemplo 30 minutos de test o de inglés, para no romper la rutina. Y no intentes recuperar todo al día siguiente doblando horas.',
   NULL, NULL, 'publicado', '2027-01-02T06:49:00.000Z', 'acceso-guardia-civil',
   ARRAY['horas de estudio', 'organización', 'método', 'planificación']::text[], '{"title":"Horas al día para estudiar Guardia Civil: guía con horarios","description":"Cuántas horas estudiar al día para la Guardia Civil: referencia de 25 a 40 horas semanales, reparto por materias, horarios tipo y cómo medir si rinden."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('empezar-la-oposicion-a-guardia-civil-en-enero-da-tiempo', 'articulo', 'Empezar la oposición a Guardia Civil en enero: ¿da tiempo?', 'Empezar en enero no garantiza ni descarta nada. Qué calendario siguió la convocatoria de 2026, cómo calcular tu margen con tus horas reales, tres casos resueltos y qué priorizar si te pones hoy, sin promesas de plazos.', '**Respuesta corta:** puede dar tiempo o no, y nadie serio puede asegurártelo sin conocer tu punto de partida, tus horas reales y la fecha de la próxima prueba, que a día de hoy no está publicada. Lo que sí puedes hacer es calcular tu margen con números, decidir qué priorizar y empezar ya, porque esperar no te da ninguna ventaja.

## El calendario de referencia: la convocatoria de 2026

Es lo único verificable. Así fue el proceso de 2026, según el BOE y la web de la Guardia Civil:

| Paso | Qué pasó en 2026 |
| --- | --- |
| Convocatoria | BOE del 8 de mayo ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) |
| Solicitudes | 15 días hábiles desde el día siguiente a la publicación |
| Admitidos provisionales y fecha de la primera prueba | BOE del 13 de junio ([BOE-A-2026-12817](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-12817)) |
| Admitidos definitivos | Resolución de 30 de junio, BOE del 3 de julio ([BOE-A-2026-14447](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-14447)) |
| Pruebas psicofísicas | Septiembre, en Valdemoro (Madrid), según la web de la Guardia Civil |
| Propuestos para ingresar | Resolución de 6 de octubre, BOE del 8 de octubre ([BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936)) |
| Incorporación | 13 de octubre en Baeza y en Valdemoro |

Dos lecturas útiles. La primera: **la fecha de la prueba escrita no la fija la convocatoria**; la anunció el Tribunal junto con la lista provisional de admitidos. La segunda: entre la publicación en el BOE y la prueba escrita no hay margen para preparar 23 temas desde cero.

Si en 2027 hubiera un calendario parecido, entre enero y la convocatoria habría unos cuatro meses. Es una **hipótesis, no una previsión**: a finales de 2026 no hay oferta de empleo ni convocatoria para 2027. El detalle de 2026 está en [el artículo de la convocatoria](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## Cómo calcular tu margen en cuatro pasos

1. **Semanas disponibles.** Cuenta las semanas desde hoy hasta la fecha que uses como referencia. Como no hay fecha oficial, haz la cuenta con dos escenarios: uno ajustado y uno holgado.
2. **Horas semanales reales.** Las que cumples de verdad, no las que te gustaría. Si no lo sabes, apunta durante dos semanas lo que estudias.
3. **Horas de temario.** Como orientación, en torno al 60 % de tus horas va al temario; el resto, a tests, simulacros, lengua, inglés y psicotécnico.
4. **Ritmo por tema.** Con 15 o más horas semanales de temario, un tema por semana es un ritmo razonable para una primera vuelta; con más horas, un tema y medio. Los temas no son iguales: los del bloque jurídico llevan más.

### Tabla de referencia (orientativa)

| Ritmo de primera vuelta | Semanas para los 23 temas |
| --- | --- |
| 1 tema por semana | 23 semanas (algo más de cinco meses) |
| 1,5 temas por semana | unas 16 semanas (cuatro meses) |
| 2 temas por semana | 12 semanas (tres meses) |

A eso hay que sumarle la segunda vuelta y los simulacros. En nuestro [plan de estudio personalizado](/plan-de-estudio), quien empieza de cero dedica algo más de la mitad del tiempo a la primera vuelta, en torno a un tercio a la segunda y el resto a simulacros. Por tanto, si tu primera vuelta ocupa 16 semanas, el plan completo ronda las 29 semanas.

## Tres casos resueltos (hipotéticos)

Los casos son inventados para ilustrar el cálculo; no son alumnos reales.

### Caso 1: dedicación completa, 35 horas semanales

- Temario: 60 % de 35 = 21 horas semanales.
- Ritmo posible: 1,5 temas por semana, primera vuelta en unas 16 semanas.
- Si empieza la segunda semana de enero, cerraría la primera vuelta hacia finales de abril o principios de mayo.
- **Lectura:** llega con margen para una segunda vuelta si el calendario fuera parecido al de 2026. Su riesgo no es el tiempo, sino dispersarse.

### Caso 2: trabajo a media jornada, 20 horas semanales

- Temario: 60 % de 20 = 12 horas semanales.
- Ritmo posible: algo menos de un tema por semana; primera vuelta en unas 26 semanas.
- Cerraría la primera vuelta hacia julio.
- **Lectura:** con un calendario como el de 2026, llegaría a la prueba escrita sin haber terminado el temario. Opciones: subir horas en primavera, ordenar el temario por peso para llegar con lo más extenso dominado, o plantear esta convocatoria como ensayo.

### Caso 3: jornada completa, 12 horas semanales

- Temario: unas 7 horas semanales.
- Ritmo posible: un tema cada 10 días aproximadamente; primera vuelta en unas 33 semanas.
- **Lectura:** el objetivo realista es la convocatoria siguiente, presentándose a esta si puede para conocer el examen por dentro. Lo más rentable ahora es lo que tiene mínimo eliminatorio: lengua, inglés y psicotécnico, además del físico.

## Quién lo tiene más fácil y quién más difícil

- **Más margen:** estudias a jornada completa, vienes de estudiar hace poco o ya tienes buena base de lengua y de inglés.
- **Menos margen:** trabajas muchas horas, partes de cero en el temario o tienes que mejorar mucho tu condición física.

Ninguna de las dos situaciones decide el resultado. Hay quien empieza con ventaja y se dispersa, y quien parte de cero y mantiene un ritmo constante.

## Qué priorizar si empiezas ahora

1. **Requisitos:** edad (cumplir 18 y no cumplir 41 en el año de la convocatoria), Graduado en ESO o equivalente y carné B. Si te falta el carné, empieza hoy a sacarlo.
2. **Lo eliminatorio que se entrena poco a poco:** ortografía y gramática (6 errores o más excluyen), inglés (mínimo 8 sobre 20) y psicotécnico (mínimo 12 sobre 30). Un rato diario rinde mucho. La estructura completa, en [cómo es el examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).
3. **Temario por peso:** empieza por los temas más extensos del bloque jurídico.
4. **Físicas desde el primer mes:** las cuatro pruebas son eliminatorias y el cuerpo necesita meses.
5. **Método desde el principio:** test al cerrar cada tema y repaso programado. Si partes de cero, tienes una guía en [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero).
6. **Méritos:** revisa qué puedes acreditar antes de que termine el plazo de solicitud; un certificado de idiomas B2 suma 5 puntos en el concurso.

## Las primeras cuatro semanas, en concreto

| Semana | Objetivo |
| --- | --- |
| 1 | Requisitos, test de diagnóstico, marcas físicas de partida y horario fijo |
| 2 | Primer tema y su test; 20 minutos diarios de inglés u ortografía |
| 3 | Segundo tema; repaso del primero sin mirar; primera sesión de psicotécnico cronometrada |
| 4 | Tercer tema; revisión: ¿has cumplido las horas previstas? Ajusta el plan con datos |

Al final del primer mes ya sabrás tu ritmo real. Con él, rehaz la cuenta del margen: es mucho más fiable que la que hiciste el día 1. Si quieres ver un reparto mes a mes completo, está en [el plan para 2027](/blog/proposito-2027-entrar-en-la-guardia-civil-plan-mes-a-mes).

## Y si no llegas a esta convocatoria

Presentarte sin haber terminado el temario no es tiempo perdido si lo usas bien: conocerás el examen real, la gestión de los 140 minutos y los nervios del día, algo que ningún simulacro reproduce del todo. Además, tu nota en esa convocatoria te dirá con datos cuánto te falta. Si decides no presentarte, el trabajo hecho sigue siendo útil para la siguiente: el programa cambia poco entre convocatorias, aunque siempre debes cotejar el vigente. Lo único que de verdad se pierde es el tiempo que pasas esperando a que salga el BOE para empezar. Y vigila la edad: si este es tu último año antes de cumplir 41, la decisión de presentarte pesa más.

## Errores frecuentes al empezar en enero

- **Esperar al BOE.** El plazo de solicitud se mide en días hábiles y el tiempo entre el BOE y la prueba escrita es corto. Empezar antes no te obliga a nada; esperar sí puede costarte la convocatoria.
- **Planificar con horas ideales.** Un plan de 40 horas que abandonas en febrero vale menos que uno de 20 que cumples.
- **Leer sin tests.** La sensación de «lo entiendo» engaña. Cierra cada tema con preguntas.
- **Dejar inglés y lengua para el final.** Son eliminatorios y mejoran despacio.
- **Compararte con otros.** Compárate con tu semana anterior.

## Checklist de arranque

- [ ] Requisitos comprobados.
- [ ] Horas semanales reales medidas.
- [ ] Margen calculado en dos escenarios.
- [ ] Orden del temario decidido.
- [ ] Rutina diaria de inglés, ortografía y psicotécnico.
- [ ] Marcas físicas anotadas.

Si prefieres hacerlo con un plan cerrado, temario y simulacros, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto tiempo hace falta para preparar la oposición?
No hay un plazo oficial. Depende de tu base, de tus horas reales y de la competencia de cada año. Con la tabla de arriba puedes estimar tu caso.

### ¿Es tarde si la convocatoria sale en primavera?
Depende de tu avance y de cuándo se celebre la prueba escrita, que fija el Tribunal. Con la información de hoy no se puede afirmar ni desmentir.

### ¿Me presento aunque no esté listo?
Es una decisión personal. Conocer el examen real tiene valor, pero valora la tasa, el tiempo de preparación que te quita y tus años de margen por edad.

### ¿Qué estudio primero: temario o inglés?
Las dos cosas, en proporción: el temario se lleva el grueso de las horas, y el inglés, un rato diario. Son 100 preguntas de conocimientos frente a 20 de inglés, pero el inglés tiene mínimo eliminatorio.

### ¿Dónde veo las fechas oficiales?
En el BOE y en la página del proceso selectivo de la web de la Guardia Civil, donde el Tribunal publica sus resoluciones.

### ¿El temario cambia entre convocatorias?
Puede cambiar. El de 2026 era el de la Resolución de 26 de junio de 2019 con sus modificaciones; comprueba siempre el que cite la convocatoria vigente.',
   NULL, NULL, 'publicado', '2027-01-01T06:32:00.000Z', 'acceso-guardia-civil',
   ARRAY['convocatoria', 'empezar de cero', 'planificación', 'calendario']::text[], '{"title":"Empezar la oposición de Guardia Civil en enero: ¿da tiempo?","description":"¿Da tiempo a preparar la Guardia Civil desde enero? Calendario real de 2026, cómo calcular tu margen con tus horas y qué priorizar, sin prometer plazos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('proposito-2027-entrar-en-la-guardia-civil-plan-mes-a-mes', 'articulo', 'Propósito 2027: entrar en la Guardia Civil. Plan mes a mes', 'Un propósito de año nuevo solo funciona si tiene fases. Plan orientativo de enero a diciembre para preparar la Guardia Civil: temas por mes, tests, simulacros, físicas y trámites, apoyado en el calendario real de 2026 y sin inventar fechas.', '**Respuesta corta:** «aprobar la oposición» no es un propósito, es un resultado. Un propósito útil es un plan con fases: qué temas cierras cada mes, cuándo empiezan los simulacros y qué haces en cuanto salga la convocatoria. Aquí tienes uno orientativo, pensado para alguien que empieza en enero con unas **25-30 horas semanales de estudio** y tres o cuatro sesiones de entrenamiento a la semana. Si tienes más o menos tiempo, el esquema es el mismo: cambia el ritmo.

## Lo que sabemos del calendario (y lo que no)

La única referencia verificable es la convocatoria de 2026:

| Hito de 2026 | Documento |
| --- | --- |
| Convocatoria (Resolución 160/38243/2026, de 5 de mayo) | BOE del 8 de mayo de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982) |
| Plazo de solicitud | 15 días hábiles desde el día siguiente a la publicación |
| Lista provisional de admitidos, con fecha, hora y lugar de la primera prueba | BOE del 13 de junio, [BOE-A-2026-12817](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-12817) |
| Lista definitiva de admitidos (resolución de 30 de junio) | BOE del 3 de julio, [BOE-A-2026-14447](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-14447) |
| Propuestos para ingresar (resolución de 6 de octubre) | BOE del 8 de octubre, [BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936) |
| Incorporación a Baeza y Valdemoro | 13 de octubre de 2026 (base 10.1) |

Fíjate en un detalle: la fecha de la prueba escrita no venía en la convocatoria, sino que **la anunció después el Tribunal**. Para 2027 no hay nada publicado: ni oferta de empleo, ni convocatoria, ni fechas. **No hay garantía de que se repita el calendario de 2026**, así que el plan de abajo no depende de una fecha concreta, sino de fases. El detalle de lo que pasó en 2026 está en [el artículo sobre la convocatoria](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## La lógica del plan: tres fases

El programa tiene **23 temas de conocimientos**, más ortografía, gramática, inglés y psicotécnico. El plan sigue el mismo reparto que usa nuestro [plan de estudio personalizado](/plan-de-estudio) para quien empieza de cero:

1. **Primera vuelta (algo más de la mitad del tiempo):** estudias cada tema y haces su test al terminarlo.
2. **Segunda vuelta (en torno a un tercio):** repasas más rápido, con tests que mezclan temas.
3. **Simulacros (el tramo final):** examen completo con tiempo real y repaso de fallos.

Y las horas de cada semana se reparten, como orientación, así: **60 % temario, 20 % tests y simulacros, 10 % inglés, ortografía y gramática, 10 % psicotécnicos**. Con 25 horas semanales son 15 de temario, 5 de tests, 2,5 de lengua e inglés y 2,5 de psicotécnico. El entrenamiento físico va aparte.

## Plan mes a mes

### Enero: diagnóstico, rutina y primeros temas

- Comprueba los [requisitos](/blog/requisitos-guardia-civil): cumplir 18 años y no cumplir 41 en el año de la convocatoria, Graduado en ESO o equivalente y **permiso de conducir B**. Si te falta el carné, es lo primero que hay que resolver.
- Haz un test de diagnóstico sin estudiar: no es para aprobar, es para saber de dónde partes.
- Toma tus marcas físicas de partida (2.000 m, extensiones, circuito si puedes, 50 m de natación) y anótalas.
- Fija tu horario semanal y no lo toques durante dos semanas.
- Temario: **temas 1 a 4**, con su test al cerrar cada uno.

### Febrero: ritmo de crucero

- Temario: **temas 5 a 10** (un tema y medio por semana).
- Inglés y ortografía: un rato corto casi a diario. Mejor 20 minutos cada día que dos horas el domingo.
- Psicotécnico: sesiones cortas varias veces por semana.
- Físico: tres o cuatro sesiones semanales con progresión. Si tienes dudas sobre carga o lesiones, consulta con un profesional.

### Marzo: mitad del temario

- Temario: **temas 11 a 16**.
- Primer simulacro parcial (por ejemplo, 50 preguntas de los temas ya vistos más ortografía y gramática) para medir tiempos.
- Repaso espaciado de los temas de enero y febrero: si no los repasas, en abril serán nuevos otra vez.

### Abril: cerrar la primera vuelta

- Temario: **temas 17 a 23**. Al terminar, tienes la primera vuelta completa.
- Revisa tus méritos de la [fase de concurso](/blog/fase-concurso-guardia-civil-meritos): solo cuentan los que poseas al terminar el plazo de solicitud, y un certificado de idiomas (B2 = 5 puntos, C1 = 7, C2 = 9) necesita tiempo para prepararse y examinarse.
- Primer simulacro completo de 140 minutos: ortografía, gramática, 100 preguntas de conocimientos y 20 de inglés, seguidos.

### Mayo y junio: segunda vuelta

- Repaso de los 23 temas, más rápido, empezando por los que más fallas.
- Tests mezclados de varios temas a diario y un simulacro completo cada una o dos semanas.
- **Si se publica la convocatoria**, todo lo demás pasa a segundo plano durante unos días: léela entera, comprueba requisitos y méritos y presenta la solicitud por la Sede Electrónica dentro de plazo. En 2026 fueron 15 días hábiles.

### Desde la convocatoria hasta la prueba escrita: modo examen

- Un simulacro completo por semana, siempre en las mismas condiciones, y su análisis al día siguiente.
- Repaso dirigido: solo lo que fallas en los simulacros.
- Psicotécnico con tiempo real: 80 preguntas en 55 minutos.
- Si el Tribunal anuncia la fecha antes de que termines la segunda vuelta, no pasa nada: entra en modo examen con lo que tengas y prioriza los temas más extensos.

### Después de la prueba escrita: psicofísicas

Si superas la prueba escrita y entras en el corte para las pruebas de aptitud psicofísica (en 2026 se convocó a 1,5 aspirantes por plaza), te esperan las físicas, la entrevista personal y el reconocimiento médico.

- Mantén el entrenamiento hasta el último día; las cuatro pruebas físicas son eliminatorias.
- Saca el **certificado médico oficial**: la convocatoria de 2026 lo exigía expedido dentro de los 20 días anteriores.
- Prepara la entrevista: conoce las competencias que se valoran y repasa tu propia trayectoria.

### Si no hay convocatoria antes del verano

Nada de parar. Haz una tercera vuelta rápida, sube la frecuencia de simulacros a uno por semana y aprovecha para mejorar tu punto más débil (inglés, físicas o un bloque de temario). Revisa el plan al final de cada mes.

## Una semana tipo (unas 25 horas de estudio)

| Día | Estudio | Físico |
| --- | --- | --- |
| Lunes | 4 h: tema nuevo + 20 min de inglés | Carrera |
| Martes | 4 h: tema + test del tema + psicotécnico | Fuerza (extensiones) |
| Miércoles | 4 h: tema + ortografía | Descanso o natación |
| Jueves | 4 h: tema + repaso espaciado de temas anteriores | Carrera |
| Viernes | 4 h: cierre del tema, test y psicotécnico | Natación o circuito |
| Sábado | 5 h: simulacro o test mezclado y corrección | Descanso activo |
| Domingo | Libre | Libre |

Suma: 25 horas. No es para copiarla, es una referencia para comprobar si tu plan es sostenible. Si exige más horas de las que hay en tu semana real, recórtalo **antes** de empezar. La forma de encajar estudio y entrenamiento la tienes en [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Caso práctico (hipotético): el mismo plan con menos horas

Imagina a alguien que trabaja y solo puede dedicar **15 horas semanales** de estudio. Con el reparto del 60 %, le tocan 9 horas de temario a la semana: suficientes para un tema por semana si es corto y menos si es extenso. Su primera vuelta no terminaría en abril, sino hacia junio o julio. ¿Qué hace?

- Mantiene las fases, pero las alarga.
- Ordena el temario por peso: primero los temas más extensos del bloque jurídico.
- Empieza los simulacros parciales antes de terminar la primera vuelta, para no llegar sin ritmo de examen si la convocatoria se adelanta.
- Asume que quizá esta convocatoria le sirva de ensayo y la siguiente sea la buena. No es un fracaso: es una decisión de planificación.

## Errores frecuentes con los propósitos de año nuevo

- **Plan ideal en lugar de plan mínimo.** Define también el mínimo (por ejemplo, 30 minutos de test) para los días malos. Así no rompes la cadena.
- **Esperar al BOE para empezar.** Entre la convocatoria y la prueba escrita no hay tiempo para una primera vuelta completa.
- **Dejar el físico para el final.** El cuerpo tarda meses en responder; el temario, semanas.
- **No revisar.** Sin una revisión mensual, el plan se convierte en un deseo.
- **Arrastrar deuda.** Si a final de mes has hecho menos de la mitad de lo previsto, no acumules: recorta, prioriza lo eliminatorio y sigue.

## Checklist del propósito

- [ ] Requisitos comprobados y carné B en regla o en trámite.
- [ ] Test de diagnóstico hecho y anotado.
- [ ] Marcas físicas de partida anotadas.
- [ ] Horario semanal fijo con un día libre.
- [ ] Temas asignados a cada mes hasta cerrar la primera vuelta.
- [ ] Méritos revisados (idiomas, titulaciones, permisos).
- [ ] Revisión fijada el último día de cada mes.

Para la revisión mensual puedes usar los indicadores del [balance de fin de año](/blog/balance-del-ano-como-saber-si-vas-bien-en-la-oposicion). Y si prefieres un plan ya montado con temario, tests y simulacros, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuándo saldrá la convocatoria de 2027?
No lo sabemos. A finales de 2026 no hay oferta de empleo ni convocatoria publicadas para 2027. Se publicará en el BOE y la Guardia Civil la anunciará en su web.

### ¿Sirve este plan si empiezo en febrero o en marzo?
Sí, comprimiendo fases: más horas si puedes, temario ordenado por peso y simulacros parciales antes. Cuanto más tarde empieces, más importa priorizar.

### ¿Cuántas horas necesito?
No hay una cifra oficial. Como referencia, en ProLince trabajamos con 25 a 40 horas semanales de estudio; con menos se puede, pero el plan se alarga. Lo veremos con detalle en un artículo sobre las horas diarias.

### ¿Debo entrenar desde enero aunque las físicas vengan después?
Es lo recomendable, con carga progresiva. Las físicas son eliminatorias y la mejora física necesita meses. Si tienes dudas médicas o de entrenamiento, consulta con un profesional.

### ¿Qué hago si el examen se anuncia antes de terminar el temario?
Pasa a modo examen con lo que tengas: simulacros semanales, repaso de lo estudiado y los temas pendientes más extensos primero. Mejor dominar 18 temas que haber leído 23 por encima.

### ¿Tengo que repasar los temas de enero mientras avanzo?
Sí. Si no programas repasos, los primeros temas se olvidan. Reserva un rato cada semana para volver a ellos con tests.',
   NULL, NULL, 'publicado', '2026-12-31T06:15:00.000Z', 'acceso-guardia-civil',
   ARRAY['plan de estudio', 'año nuevo', 'planificación', 'convocatoria']::text[], '{"title":"Propósito 2027 Guardia Civil: plan de estudio mes a mes","description":"Plan orientativo mes a mes para preparar la Guardia Civil en 2027: temas por mes, simulacros, físicas y trámites, sin prometer fechas de convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('tecnologias-de-la-informacion-en-el-temario-conceptos-que-caen', 'articulo', 'Tecnologías de la información en el temario: qué conceptos estudiar', 'El tema 17 reúne telecomunicaciones, servicios electrónicos de confianza, ciberseguridad e interoperabilidad. Qué partes de cada norma entran, los conceptos clave con su artículo, preguntas oficiales comentadas y un mini test.', '**Respuesta corta:** el tema 17 del programa, *Tecnologías de la información y la comunicación*, no es informática práctica: es un tema normativo con un bloque de buenas prácticas. Tiene cuatro bloques: telecomunicaciones, firma y certificados electrónicos, ciberseguridad (CCN-CERT) e interoperabilidad. No podemos decir qué preguntas saldrán, porque no hay datos oficiales; sí qué partes entran y qué conceptos conviene dominar.

## Qué entra exactamente

Según el [temario oficial](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2024/TEMARIO_INGRESO_GC_ACTUALIZADO_2024.pdf) y nuestro resumen del [programa](/temario-guardia-civil):

| Bloque | Norma | Partes que entran |
| --- | --- | --- |
| 1. Telecomunicaciones | [Ley 11/2022, General de Telecomunicaciones](https://www.boe.es/buscar/act.php?id=BOE-A-2022-10757) | Título I (disposiciones generales) y Título III, Capítulo III |
| 1. Telecomunicaciones | [RD 806/2014](https://www.boe.es/buscar/act.php?id=BOE-A-2014-9741), sobre las TIC en la Administración General del Estado | Capítulos I y III |
| 2. Firma y certificados | [Ley 6/2020, de servicios electrónicos de confianza](https://www.boe.es/buscar/act.php?id=BOE-A-2020-14046) | Títulos I a III y disposición adicional tercera |
| 3. Ciberseguridad | Principios y recomendaciones básicas en ciberseguridad del CCN-CERT | Los apartados que enumera el temario |
| 4. Sistemas de información | [RD 4/2010, Esquema Nacional de Interoperabilidad](https://www.boe.es/buscar/act.php?id=BOE-A-2010-1331) | Completo |

Antes de estudiar, cotéjalo con el programa que cite la convocatoria vigente, que es el que manda.

## Bloque 1: telecomunicaciones

### Ley 11/2022: lo esencial del Título I

- **Objeto (art. 1):** regular las telecomunicaciones, que incluyen la instalación y explotación de redes, la prestación de servicios de comunicaciones electrónicas, sus recursos asociados y los equipos. Quedan **fuera** los servicios de comunicación audiovisual y los contenidos que circulan por las redes.
- **Naturaleza (art. 2):** las telecomunicaciones son **servicios de interés general que se prestan en régimen de libre competencia**. Solo algunos tienen consideración de servicio público o están sometidos a obligaciones de servicio público.
- **Art. 4:** servicios de telecomunicaciones para la seguridad nacional, la defensa, la seguridad pública, la seguridad vial y la protección civil. Por razones obvias, un artículo que conviene leer con calma.

### Ley 11/2022: Título III, Capítulo III (arts. 56 a 63)

Es el capítulo de derechos: salvaguardia de derechos fundamentales (56), no discriminación (57), **secreto de las comunicaciones (58)**, interceptación por los servicios técnicos (59), protección de datos personales (60), conservación y cesión de datos (61), cifrado (62) e integridad y seguridad de redes y servicios (63). Haz una tabla con número y título: te ayuda a situar cada pregunta. Para el contexto de protección de datos, tienes [RGPD y LOPDGDD para la oposición](/blog/proteccion-de-datos-para-la-oposicion-rgpd-y-lopdgdd).

### RD 806/2014: solo dos capítulos

El Capítulo I fija objeto y ámbito. El Capítulo III, el **modelo de gobernanza TIC**: estrategia TIC (art. 9), medios y servicios compartidos (10), proyectos de interés prioritario (11), unidades TIC (12) y cooperación interadministrativa (13). Ojo: la Comisión de Estrategia TIC y las Comisiones Ministeriales de Administración Digital están en el Capítulo II, que **no** figura en el programa.

## Bloque 2: servicios electrónicos de confianza (Ley 6/2020)

- **Objeto (art. 1):** regular determinados aspectos de estos servicios como complemento del Reglamento (UE) 910/2014 (eIDAS).
- **Ámbito (art. 2):** prestadores públicos y privados establecidos en España, y los de otros Estados con establecimiento permanente en España cuando sus servicios no estén supervisados por otro país de la Unión.
- **Vigencia (art. 4):** los certificados se extinguen por caducidad o por revocación; **los certificados cualificados no pueden tener una vigencia superior a cinco años**.
- **Revocación y suspensión (art. 5)**, identidad de los titulares (art. 6) y comprobación de la identidad del solicitante (art. 7).
- **Título III:** obligaciones y responsabilidad de los prestadores (arts. 8 a 13).
- **Disposición adicional tercera:** el **DNI electrónico** permite acreditar electrónicamente la identidad y firmar documentos, y todas las personas y entidades deben reconocer su eficacia.

La supervisión y el régimen sancionador (Títulos IV y V) quedan fuera del programa.

## Bloque 3: ciberseguridad (CCN-CERT)

El temario enumera los apartados del documento: factores de amenaza, la internet profunda, aplicaciones, navegación segura, correo electrónico, virtualización, dispositivos móviles y redes inalámbricas, mensajería instantánea, redes sociales e internet de las cosas. Es un documento práctico del Centro Criptológico Nacional; léelo entero al menos una vez y apunta datos concretos, porque las preguntas pueden ser muy literales. En la prueba de 2026, por ejemplo, la pregunta 82 del modelo A preguntaba, dentro de este bloque, en qué año se lanzó WhatsApp; la plantilla oficial da como correcta la b), 2009.

## Bloque 4: Esquema Nacional de Interoperabilidad (RD 4/2010)

- **Principios específicos (art. 4):** la interoperabilidad como cualidad integral, su carácter multidimensional y el enfoque de soluciones multilaterales.
- **Dimensiones (art. 6):** **organizativa, semántica y técnica**, sin olvidar la dimensión temporal (acceso a la información a lo largo del tiempo).
- **Hora oficial (art. 15):** los sistemas se sincronizan con el Real Instituto y Observatorio de la Armada.
- **Normas técnicas de interoperabilidad:** según el texto consolidado, las aprueba el Ministerio para la Transformación Digital y de la Función Pública, a propuesta de la Comisión Sectorial de Administración Electrónica. Fue la pregunta 83 del modelo A de 2026 (respuesta c) en la plantilla oficial).

El ENI aparece también en la Ley 39/2015 a propósito de la remisión de expedientes electrónicos; si ya la has estudiado, conecta ambas ([procedimiento administrativo en 10 claves](/blog/procedimiento-administrativo-ley-39-2015-en-10-claves)).

## Cómo estudiarlo

El riesgo de este tema no es la dificultad, sino confundir normas de nombres y objetos parecidos.

1. **Lee primero el índice** de cada norma y marca solo lo que entra.
2. **Tabla de definiciones:** término, qué es, norma y artículo.
3. **Una línea por norma:** qué regula cada una, para no mezclarlas.
4. **Fichas con repaso espaciado:** este tema, lleno de definiciones parecidas, es ideal ([cómo hacerlo](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario)).
5. **Tests por tema**, propios o de exámenes anteriores, para detectar lagunas.

### Ejemplo de ficha

**Anverso:** ¿cuáles son las dimensiones de la interoperabilidad según el ENI?
**Reverso:** organizativa, semántica y técnica, más la dimensión temporal (art. 6 RD 4/2010).

## Tabla para no confundir las cinco normas

| Norma | En una línea | Palabra clave |
| --- | --- | --- |
| Ley 11/2022 | Redes y servicios de comunicaciones electrónicas | Telecomunicaciones |
| RD 806/2014 | Organización de las TIC en la Administración General del Estado | Gobernanza |
| Ley 6/2020 | Certificados y prestadores de servicios de confianza | Firma |
| CCN-CERT | Buenas prácticas de seguridad para usuarios | Ciberseguridad |
| RD 4/2010 | Intercambio de información entre administraciones | Interoperabilidad |

Cuando una pregunta te descoloque, identifica primero de qué norma viene: en los cuestionarios oficiales de 2026, el enunciado empieza precisamente con el nombre de la norma.

## Un plan de una semana para este tema

| Día | Tarea |
| --- | --- |
| Lunes | Índices de las cuatro normas y tabla de lo que entra |
| Martes | Ley 11/2022: Título I y artículos 56 a 63 |
| Miércoles | RD 806/2014 (Capítulos I y III) y Ley 6/2020 |
| Jueves | Documento del CCN-CERT, con fichas de datos concretos |
| Viernes | ENI y test del tema completo |
| Sábado | Preguntas oficiales de este bloque en los exámenes de 2022 y 2026 |

Después, el tema entra en tu calendario de repasos espaciados como cualquier otro.

## Errores frecuentes

- Estudiar la Ley 11/2022 entera cuando solo entran el Título I y un capítulo del III.
- Atribuir a la Ley 6/2020 la supervisión de prestadores como si estuviera en el programa.
- Confundir el ENI (interoperabilidad) con el Esquema Nacional de Seguridad, que no figura en el tema.
- Dejar el documento del CCN-CERT para el final por parecer «de sentido común».

## Mini test (preguntas propias)

1. Según la Ley 11/2022, las telecomunicaciones son:
   a) Servicio público en todo caso · b) Servicios de interés general prestados en régimen de libre competencia · c) Servicios esenciales de titularidad estatal · d) Servicios audiovisuales
2. La vigencia de un certificado cualificado no puede superar:
   a) 2 años · b) 3 años · c) 4 años · d) 5 años
3. ¿Qué dimensión NO cita el artículo 6 del ENI?
   a) Organizativa · b) Semántica · c) Técnica · d) Presupuestaria
4. Los sistemas de la Administración se sincronizan con la hora oficial a través de:
   a) El Instituto Geográfico Nacional · b) El Real Instituto y Observatorio de la Armada · c) El Centro Criptológico Nacional · d) La Agencia Estatal de Meteorología
5. El secreto de las comunicaciones se regula en la Ley 11/2022 en su artículo:
   a) 2 · b) 58 · c) 4 · d) 63
6. ¿Qué parte de la Ley 6/2020 se refiere al DNI y sus certificados electrónicos?
   a) Título I · b) Título IV · c) Disposición adicional tercera · d) Disposición final primera

**Soluciones:** 1 b (art. 2.1). 2 d (art. 4.2). 3 d (art. 6). 4 b (art. 15.2 ENI). 5 b. 6 c.

Si quieres los temas ya ordenados y con tests, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Hay que saber informática para este tema?
No como tal: son normas y recomendaciones. Una base de usuario ayuda a entender conceptos como cifrado, redes o certificados.

### ¿Cuántas preguntas habrá de este tema?
No hay datos oficiales. El examen tiene 100 preguntas de temario y no se publica su reparto por tema.

### ¿Dónde consigo el documento del CCN-CERT?
Lo publica el propio CCN-CERT en su web. Comprueba que usas la versión que corresponde al temario vigente.

### ¿Entra el Esquema Nacional de Seguridad?
No figura en el programa del tema 17. Céntrate en el de Interoperabilidad.

### ¿Cambia el temario cada año?
Puede cambiar. Revisa el que cite la convocatoria vigente y los textos consolidados del BOE.',
   '/blog/tecnologias-de-la-informacion-en-el-temario-conceptos-que-caen.jpg', 'Agentes de la Guardia Civil preparando un dron en un mirador al atardecer', 'publicado', '2027-01-05T06:40:00.000Z', 'acceso-guardia-civil',
   ARRAY['tecnologías de la información', 'temario', 'ciberseguridad', 'administración electrónica']::text[], '{"title":"Tecnologías de la información en el temario de Guardia Civil","description":"Tema 17 de Guardia Civil: qué partes de cada norma entran, conceptos clave con su artículo, preguntas oficiales comentadas y un mini test con soluciones."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('topografia-para-guardia-civil-escalas-curvas-de-nivel', 'articulo', 'Topografía para Guardia Civil: escalas, curvas de nivel y pendientes', 'El tema 18, Topografía, mezcla conceptos sencillos con cuentas fáciles de fallar. Escalas, unidades angulares, curvas de nivel, pendientes, coordenadas y acimut, con ejemplos resueltos, dos preguntas oficiales y un mini test.', '**Respuesta corta:** el tema 18 del programa, Topografía, cabe en un párrafo del temario oficial: elementos geográficos, unidades de medida y representación del terreno. Casi todo se reduce a seis ideas: escala, unidades angulares, curvas de nivel, pendiente, coordenadas y orientación. Con tres fórmulas y práctica, es de los temas más asequibles; el riesgo está en las cuentas, no en la teoría.

## Qué dice exactamente el programa

El [temario oficial](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2024/TEMARIO_INGRESO_GC_ACTUALIZADO_2024.pdf) de la Guardia Civil enumera para este tema:

- **Elementos geográficos:** eje terrestre, polos, meridiano, paralelo, ecuador, puntos cardinales, coordenadas geográficas, acimut y rumbo.
- **Unidades geométricas de medida:** unidades lineales, escalas numérica y gráfica, unidades angulares.
- **Representación del terreno:** planimetría y altimetría, clases de terreno, accidentes del terreno, sistema de planos acotados, pendiente entre dos puntos.

No hay una norma que estudiar, así que tu material de referencia será un manual de topografía. Tienes el resumen de los 23 temas en nuestro [temario](/temario-guardia-civil). Los ejemplos de este artículo son propios, salvo las dos preguntas oficiales que se indican.

## Elementos geográficos

- **Eje terrestre:** línea imaginaria sobre la que gira la Tierra; corta la superficie en los **polos** norte y sur.
- **Meridiano:** semicírculo que va de polo a polo. El de referencia es el de Greenwich (0°).
- **Paralelo:** círculo perpendicular al eje. El **ecuador** es el paralelo máximo (0°) y divide la Tierra en dos hemisferios.
- **Coordenadas geográficas:** la **latitud** es la distancia angular al ecuador (de 0° a 90°, norte o sur) y la **longitud**, la distancia angular al meridiano de Greenwich (de 0° a 180°, este u oeste).
- **Puntos cardinales:** norte, sur, este y oeste.

## Escalas

La escala relaciona una distancia en el mapa con la real. En 1:50.000, **1 cm del mapa son 50.000 cm del terreno, es decir, 500 m**.

| Escala | 1 cm en el mapa | 4 cm en el mapa |
| --- | --- | --- |
| 1:10.000 | 100 m | 400 m |
| 1:25.000 | 250 m | 1 km |
| 1:50.000 | 500 m | 2 km |

- **Mayor escala = más detalle**, y es la del denominador más pequeño: 1:25.000 es mayor que 1:50.000.
- La escala **numérica** es la fracción (1:50.000); la **gráfica**, una regla dibujada en el mapa que sigue siendo válida aunque fotocopies el mapa ampliado o reducido.

### Ejemplos resueltos

1. **Pregunta oficial (prueba de 2026, modelo A, n.º 84):** dos puntos están a 500 m en el terreno; ¿qué separación tienen en un plano 1:25.000? 500 m = 50.000 cm; 50.000 / 25.000 = **2 cm**. Es la respuesta a) según la plantilla oficial.
2. Mides **7,4 cm** en un mapa 1:50.000. Real: 7,4 × 50.000 = 370.000 cm = **3,7 km**.
3. Quieres dibujar **1,2 km** en un mapa 1:25.000. 1,2 km = 120.000 cm; 120.000 / 25.000 = **4,8 cm**.
4. En un mapa sin escala, 3 cm equivalen a 1,5 km. 1,5 km = 150.000 cm; 150.000 / 3 = 50.000: escala **1:50.000**.

Truco: pasa siempre todo a centímetros antes de dividir. La mayoría de los errores son ceros que se pierden.

## Unidades angulares

| Sistema | Circunferencia completa | Ángulo recto | Subdivisiones |
| --- | --- | --- | --- |
| Sexagesimal | 360° | 90° | 1° = 60 minutos; 1 minuto = 60 segundos |
| Centesimal | 400ᵍ | 100ᵍ | 1ᵍ = 100 minutos centesimales; 1 minuto = 100 segundos |
| Radianes | 2π rad | π/2 rad | 1 rad ≈ 57,3° |

- El **radián** es el ángulo cuyo arco mide lo mismo que el radio.
- La **milésima** se define como la milésima parte del radián, así que una circunferencia tiene unas 6.283. En la práctica militar se usa una milésima convencional de **6.400 por circunferencia** (1.600 en un ángulo recto). Mira cuál usa tu material y no las mezcles.
- Conversiones rápidas: 1ᵍ = 0,9°; 54° = 60ᵍ; 45° = 50ᵍ.

La pregunta 85 del modelo A de 2026 pedía señalar la definición incorrecta de unidades de medida; la plantilla oficial da como respuesta la del grado centesimal que dividía la circunferencia «en 100 partes»: son **400**. Es justo el tipo de trampa que conviene tener automatizada.

## Planimetría, altimetría y planos acotados

La **planimetría** representa sobre un plano los detalles del terreno prescindiendo de su relieve (ríos, caminos, poblaciones); así se definía en la pregunta 91 del modelo 1A de 2022. La **altimetría** representa el relieve, es decir, las alturas. El **sistema de planos acotados** proyecta el terreno sobre un plano horizontal e indica la altura de los puntos con su **cota**; las curvas de nivel son su aplicación más conocida.

## Curvas de nivel

Una curva de nivel une puntos de **igual altitud**. La diferencia de altura entre dos curvas consecutivas es la **equidistancia**, que figura en el margen del mapa. En el Mapa Topográfico Nacional suele ser de 10 m en 1:25.000 y de 20 m en 1:50.000, pero en el examen manda siempre el dato del enunciado.

Reglas de lectura:

- **Curvas juntas:** terreno empinado. **Separadas:** terreno suave.
- **Curvas cerradas y concéntricas:** una elevación o una depresión; las cotas te dicen cuál.
- **Curvas en V o en U:** si el vértice apunta hacia cotas más altas, es una **vaguada** (las dos laderas se unen por abajo y por ahí corre el agua); si apunta hacia cotas más bajas, es una **divisoria** o espolón (las laderas se unen por arriba).
- **Collado:** zona más baja entre dos elevaciones, por donde se pasa de una vertiente a otra; los manuales lo describen como el lugar donde se encuentran dos vaguadas y dos divisorias.
- Las curvas **no se cruzan**, salvo en un voladizo, caso excepcional.

### Interpolar una cota: pregunta oficial resuelta

**Prueba de 2022 (modelo 1A, n.º 93):** dos curvas consecutivas A (440 m) y B, con equidistancia de 20 m y pendiente constante, están separadas 6 mm en el plano. Un punto P está a 2,7 mm de A. ¿Cuál es su cota?

- B es la curva de mayor cota: 440 + 20 = 460 m.
- P está a 2,7 / 6 = 0,45 del camino entre A y B.
- Sube 0,45 × 20 = 9 m.
- Cota de P = 440 + 9 = **449 m** (opción d).

## Pendiente

**Pendiente (%) = desnivel / distancia horizontal × 100**

1. Subes 50 m en 500 m horizontales: 50 / 500 = 0,10 → **10 %**. En grados son unos 5,7°: el porcentaje y los grados no son lo mismo, y una pendiente del 100 % equivale a 45°.
2. Entre las curvas de 440 y 460 m del ejemplo anterior, separadas 6 mm en un mapa 1:25.000: distancia real = 6 × 25.000 = 150.000 mm = 150 m. Pendiente = 20 / 150 = 0,133 → **13,3 %**.
3. Punto A a 620 m y punto B a 780 m, separados 4 cm en un mapa 1:50.000: distancia = 4 × 50.000 = 200.000 cm = 2.000 m; desnivel = 160 m; pendiente = 160 / 2.000 = **8 %**.

Si te dan la distancia medida en el mapa, **conviértela con la escala antes de dividir**.

## Coordenadas UTM (para leer mapas)

El temario cita las coordenadas geográficas, pero los mapas topográficos españoles traen también la cuadrícula **UTM**. El mundo se divide en **60 husos de 6°** de longitud, numerados hacia el este desde el antimeridiano de Greenwich; la Península queda en los husos 29, 30 y 31, y Canarias se representa en el 28. Las coordenadas se dan en metros: primero la X (este) y luego la Y (norte). El sistema geodésico oficial en España es el ETRS89, fijado por el [Real Decreto 1071/2007](https://www.boe.es/buscar/act.php?id=BOE-A-2007-15822).

## Orientación: acimut, contraacimut y rumbo

- **Acimut:** ángulo que forma una dirección con el norte, medido en sentido horario de 0° a 360°. Este = 90°, sur = 180°, oeste = 270°.
- **Contraacimut:** el acimut ± 180°. De 70° sale 250°; de 300°, 120°.
- **Rumbo:** el término tiene definiciones distintas según el manual (en muchos se mide respecto al norte magnético; en otros es un ángulo de 0° a 90° desde el norte o el sur). Apréndete la de tu material y no la mezcles con otra.
- **Declinación magnética:** diferencia entre el norte geográfico y el magnético. Varía con el lugar y con los años; el mapa trae el dato.

## Errores frecuentes

- Confundir «escala mayor» con «denominador mayor».
- Dividir metros entre la escala sin pasarlos a centímetros.
- Calcular la pendiente con la distancia del mapa sin convertir.
- Sumar la equidistancia hacia el lado equivocado al interpolar: mira qué curva es la más alta.
- Usar 100ᵍ como circunferencia completa (es el ángulo recto).

## Mini test (preguntas propias)

1. En un mapa 1:25.000 mides 3,2 cm. ¿Cuál es la distancia real?
   a) 80 m · b) 800 m · c) 8 km · d) 320 m
2. ¿Cuál de estas escalas es mayor?
   a) 1:50.000 · b) 1:25.000 · c) 1:10.000 · d) Todas son iguales
3. El contraacimut de 135° es:
   a) 45° · b) 225° · c) 315° · d) 270°
4. 50ᵍ equivalen a:
   a) 45° · b) 50° · c) 55° · d) 90°
5. Un camino sube 30 m en 600 m horizontales. Su pendiente es:
   a) 0,5 % · b) 5 % · c) 20 % · d) 50 %
6. Equidistancia de 10 m. Un punto está entre las curvas de 300 y 310 m, a tres cuartas partes del camino desde la de 300. Su cota es:
   a) 302,5 m · b) 305 m · c) 307,5 m · d) 310 m

**Soluciones:** 1 b (3,2 × 25.000 = 80.000 cm = 800 m). 2 c (el denominador más pequeño). 3 c (135 + 180). 4 a (50 × 0,9). 5 b (30 / 600 = 0,05). 6 c (300 + 0,75 × 10).

## Cómo estudiarlo

Haz ejercicios con un mapa real (el Instituto Geográfico Nacional ofrece cartografía gratuita), repasa las fórmulas con repasos espaciados y practica con tests. Cómo encaja en la prueba lo tienes en [el examen de conocimientos por dentro](/blog/examen-conocimientos-guardia-civil-estructura), y cuánto tiempo darle, en [las horas de estudio](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil). Puedes practicar en el [test online](/test-guardia-civil) y el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este tema.

## Preguntas frecuentes

### ¿Hace falta llevar calculadora o brújula?
No. La prueba de conocimientos es un test escrito; consulta en la convocatoria vigente qué material se permite. Las cuentas de este tema se hacen a mano.

### ¿Qué fórmulas debo saberme sí o sí?
La conversión de escala, la pendiente y la interpolación entre curvas. Más las equivalencias de las unidades angulares.

### ¿Entran las coordenadas UTM?
El programa habla de coordenadas geográficas. La UTM ayuda a leer mapas, pero prioriza lo que dice el temario.

### ¿Qué hago si mi material da otra equidistancia?
Fíate del dato del mapa o del enunciado, nunca de lo que recuerdes.

### ¿Cuántas preguntas hay de topografía?
No hay un reparto oficial por temas. En las pruebas de 2022 y 2026 aparecieron preguntas identificadas como «Topografía», pero eso no permite predecir cuántas habrá.

### ¿Se puede estudiar solo con teoría?
Mejor no: dos mapas y un lápiz valen más que una semana de resúmenes.',
   NULL, NULL, 'publicado', '2027-01-03T06:06:00.000Z', 'acceso-guardia-civil',
   ARRAY['topografía', 'temario', 'escalas', 'curvas de nivel']::text[], '{"title":"Topografía Guardia Civil: escalas, curvas y pendientes","description":"Tema 18 de Guardia Civil: escalas, unidades angulares, curvas de nivel, pendientes y acimut, con ejemplos resueltos, preguntas oficiales y mini test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

