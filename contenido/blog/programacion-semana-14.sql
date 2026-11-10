-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('bloques-de-estudio-y-tecnica-pomodoro-para-opositores', 'articulo', 'Bloques de estudio y técnica Pomodoro para opositores', 'Cómo dividir tu día en bloques de estudio con objetivo, qué es la técnica Pomodoro y qué se puede decir de ella con honestidad. Plantillas de sesión, una semana tipo y cómo combinar bloques cortos con los 140 minutos del examen.', 'Sentarse cuatro horas «a estudiar» y levantarse sin saber qué has aprendido es una de las formas más comunes de perder el tiempo en una oposición. Dividir el día en **bloques con un objetivo concreto** ayuda a que cada hora cuente y, sobre todo, a saber al final del día qué has hecho.

**Respuesta corta:** un bloque de estudio es un tramo de tiempo con una tarea definida (qué vas a estudiar y cómo vas a comprobar que lo sabes) y un descanso al final. La técnica Pomodoro es una forma popular de organizarlo, con intervalos de 25 minutos, pero no es obligatoria ni mágica: lo que más pesa es **qué haces dentro del bloque**, no cuánto dura.

## Qué es la técnica Pomodoro

La propuso Francesco Cirillo a finales de los años ochenta y le puso el nombre del temporizador de cocina con forma de tomate que usaba. El esquema clásico es:

1. Eliges una tarea.
2. Trabajas en ella 25 minutos sin interrupciones (un «pomodoro»).
3. Descansas unos 5 minutos.
4. Cada cuatro pomodoros, haces un descanso más largo, de 15 a 30 minutos.

Es una **convención para organizar el tiempo**, no el resultado de un experimento sobre memoria. La investigación específica sobre la técnica es escasa y no permite afirmar que 25 minutos sea la duración óptima para aprender. Lo que sí tiene sentido es la lógica de fondo: **empezar cuesta menos si el compromiso es corto**, el temporizador te protege de interrupciones y la pausa evita seguir leyendo sin enterarte.

Por eso muchas personas lo adaptan: bloques de 40 o 50 minutos con 10 de descanso, o de 45 a 90 minutos según la tarea. Si 25 minutos se te quedan cortos para un tema denso, alárgalos; si te cuesta concentrarte, empieza por menos.

## Lo que dice la investigación sobre aprender

Más importante que el reloj es el **tipo de actividad** que pones dentro del bloque. Una revisión muy citada de técnicas de estudio, [Dunlosky y colaboradores (2013)](https://doi.org/10.1177/1529100612453266), evaluó diez estrategias habituales. Las que mejor valoraron fueron:

- **La práctica de recuperación** (*practice testing*): intentar recordar o responder preguntas sin mirar los apuntes.
- **La práctica distribuida** (*distributed practice*): repartir el estudio de un mismo contenido en varias sesiones separadas en el tiempo, en lugar de concentrarlo.

En cambio, **subrayar** y **releer** salieron con una utilidad baja. La misma revisión daba una valoración intermedia a otras como la autoexplicación o la práctica intercalada (mezclar tipos de problemas). No damos cifras porque los efectos dependen del material y de la población estudiada; si te interesa, merece la pena leer la fuente.

Traducido a bloques: **cada bloque debería terminar con preguntas**, y lo que estudias hoy debe volver a aparecer en bloques de días y semanas posteriores. Cómo programar esas vueltas lo explicamos en [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).

## Tres tipos de bloque

No todos los bloques sirven para lo mismo. Distinguirlos te ayuda a colocarlos en el día:

| Tipo | Para qué | Duración orientativa | Cuándo colocarlo |
| --- | --- | --- | --- |
| Aprender | Temario nuevo: leer, esquematizar, entender | 45-60 min | En tu franja de más energía |
| Recuperar | Tests, preguntas sin mirar, fichas | 25-30 min | Al final de un bloque de aprender, o en huecos cortos |
| Ensayar | Simulacro completo en condiciones reales | 140 min seguidos | Una vez por semana o cada dos, según la fase |

El tercero es importante: la prueba de conocimientos dura **140 minutos sin pausas** para ortografía, gramática, 100 preguntas de conocimientos y 20 de inglés. Los pomodoros de 25 minutos están bien para aprender, pero **no entrenan la resistencia que pide el examen**. Necesitas también bloques largos de ensayo. Cada cuánto hacerlos depende de la fase: lo tienes en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Plantilla de una sesión de dos horas

Un esquema propio, para un día de temario nuevo:

| Tramo | Qué haces |
| --- | --- |
| 0-5 min | Escribe el objetivo: «artículos 14 a 29 de la Constitución, y 20 preguntas» |
| 5-35 min | Lectura activa y esquema |
| 35-40 min | Pausa (levántate, agua, sin móvil) |
| 40-70 min | **Preguntas sin mirar** sobre lo que acabas de ver |
| 70-75 min | Pausa |
| 75-105 min | Corrige: cada fallo, a una ficha con el artículo |
| 105-115 min | Repaso de fichas de días anteriores |
| 115-120 min | Anota qué has hecho y qué toca mañana |

Fíjate en el reparto: el tiempo de lectura es menos de un tercio de la sesión. El resto es recuperar, corregir y repasar.

### Variante para días de repaso

Cuando no toca temario nuevo, la misma sesión de dos horas puede ser: 30 minutos de test mixto de varios temas, 5 de pausa, 30 de corrección con el artículo delante, 5 de pausa, 30 de fichas de errores antiguos y 20 de inglés o psicotécnico. Mezclar temas en el test te obliga a identificar de qué norma viene cada pregunta, como en el examen.

## Ejemplo propio: un día con trabajo

**Caso hipotético.** Laura trabaja de 8 a 15 h. Su día de estudio:

- **16:30-17:30:** bloque de aprender (tema de Derecho Penal), con 10 preguntas al final.
- **17:30-17:45:** pausa y merienda.
- **17:45-18:15:** bloque de recuperar: test mixto de temas de semanas anteriores.
- **18:15-18:30:** psicotécnico, una tanda corta (ideas en [entrenar el psicotécnico en 15 minutos](/blog/entrenar-psicotecnico-15-minutos-guardia-civil)).
- **Noche:** entrenamiento físico; el estudio no se alarga.

Son unas dos horas efectivas, con objetivo en cada tramo. Si trabajas, tienes un reparto semanal completo en [el plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando).

## Cuántos bloques al día

Depende de tu vida, no de lo que hagan otros. Como referencia, ProLince plantea en su web una horquilla de 25 a 40 horas semanales para dedicación completa; lo explicamos en [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil). Un criterio práctico es **contar bloques completos, no horas sentado**: tres bloques con objetivo cumplido valen más que cinco horas con el móvil al lado.

## Una semana tipo, adaptable

- **Lunes a viernes:** 2 o 3 bloques diarios (uno de temario nuevo, uno de test y uno de repaso), más una tanda corta de inglés, lengua o psicotécnico.
- **Sábado:** bloque largo con simulacro y su corrección.
- **Domingo:** descanso, o un bloque ligero de fichas.

En los últimos meses antes del examen, el peso se desplaza de los bloques de aprender a los de recuperar y ensayar. Lo veremos en el plan de repaso de los últimos tres meses.

## Errores frecuentes

- **Bloques sin objetivo.** «Estudiar el tema 5» es vago; «esquema del tema 5 y 15 preguntas» es medible.
- **Bloques solo de lectura.** Si nunca te preguntas, no sabes qué has retenido.
- **Pausas que se alargan.** Si la pausa es de redes sociales, cuesta volver. Mejor caminar o estirar.
- **Interrumpirte por cada notificación.** El teléfono, en otra habitación o en modo avión.
- **Usar solo bloques cortos** y llegar al examen sin haber aguantado nunca 140 minutos.
- **No planificar el repaso.** Lo que no vuelve a aparecer en tu calendario se olvida.

## Checklist del bloque

- [ ] Antes de empezar, he escrito el objetivo.
- [ ] El móvil está fuera de mi alcance.
- [ ] El bloque termina con preguntas sin mirar.
- [ ] Los fallos van a fichas o a un cuaderno de errores.
- [ ] La pausa es de verdad (moverme, agua), no de pantalla.
- [ ] Al acabar, anoto lo hecho y lo que toca mañana.
- [ ] Esta semana tengo reservado un bloque largo de simulacro.

Si prefieres que alguien te estructure los bloques y el calendario, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye planificación.

## Preguntas frecuentes

### ¿Son obligatorios los 25 minutos del Pomodoro?

No. Es la propuesta original, pero puedes ajustar los tiempos a tu concentración y a la tarea. Muchos opositores usan bloques de 45 a 60 minutos para temario nuevo.

### ¿Hay estudios que prueben que el Pomodoro funciona?

La investigación específica sobre la técnica es escasa y no demuestra que 25 minutos sea lo ideal. Sí hay respaldo sólido para la práctica de recuperación y la práctica distribuida, que puedes meter dentro de tus bloques.

### ¿Qué hago si no consigo concentrarme ni 25 minutos?

Empieza con bloques de 10 o 15 minutos y ve subiendo poco a poco. Si es un problema persistente que te preocupa o te limita, consúltalo con un profesional.

### ¿Estudio mejor por la mañana o por la tarde?

Depende de cada persona y de tus horarios. Coloca los bloques de aprender en tu franja de más energía y deja los de recuperar para los huecos.

### ¿Cómo entreno los 140 minutos del examen si estudio en bloques cortos?

Con bloques de ensayo: simulacros completos, sin pausas y con reloj, con la frecuencia que corresponda a tu fase.

### ¿Cuánto deben durar las pausas?

En el esquema clásico, unos 5 minutos entre bloques y entre 15 y 30 cada cuatro. Lo importante es que te despejen y que sepas cuándo terminan.',
   NULL, NULL, 'publicado', '2027-02-12T06:26:00.000Z', 'acceso-guardia-civil',
   ARRAY['técnica de estudio', 'pomodoro', 'organización', 'planificación']::text[], '{"title":"Técnica Pomodoro para opositores: bloques de estudio","description":"Cómo organizar bloques de estudio con la técnica Pomodoro en la oposición a Guardia Civil: plantillas de sesión, descansos, semana tipo y evidencia."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas', 'articulo', 'Cómo leer un enunciado tipo test para reducir los errores de lectura', 'Muchos fallos del test no son de temario, sino de lectura: un «excepto» pasado por alto, una doble negación o una opción más completa que otra. Un método de lectura en cinco pasos, ejemplos propios resueltos y cómo entrenarlo en tus simulacros.', 'Hay preguntas que fallas aunque sepas la respuesta. Lees deprisa, marcas la primera opción que suena bien y, al corregir, ves que el enunciado pedía **lo contrario**. Ese error es el más barato de corregir, porque no depende de cuánto temario sabes, sino de cómo lees.

**Respuesta corta:** lee el enunciado entero antes de mirar las opciones, localiza qué se pide exactamente (lo correcto, lo incorrecto, lo más completo, según qué norma) y lee las cuatro opciones hasta el final antes de marcar. Desconfía de las palabras absolutas, pero no las descartes por sistema. Y entrena todo esto en tus simulacros, porque en esta oposición cada error resta.

Todos los ejemplos del artículo son **propios**, creados para practicar la lectura: no son preguntas oficiales.

## Por qué leer bien vale puntos

La prueba de conocimientos tiene 100 preguntas con 4 opciones y, según la base 6.1.1.c) de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), las contestadas incorrectamente penalizan y las no contestadas no. Con la fórmula oficial, **cada error resta un tercio de acierto** (lo tienes desarrollado en [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil)).

Un fallo de lectura, por tanto, no solo deja de sumar: resta. Si en un simulacro pierdes cinco preguntas que sabías por leer mal, la diferencia entre acertarlas y fallarlas es de 5 + 5/3 ≈ **6,7 puntos**. Y el mínimo para no quedar excluido es 50 sobre 100.

## El método en cinco pasos

1. **Lee el enunciado completo, tapando las opciones.** Intenta responder mentalmente antes de verlas. Si ya sabes la respuesta, las opciones solo tienen que confirmarla.
2. **Localiza la orden.** ¿Pide la correcta, la incorrecta, la que *no* se cumple, la más completa? Rodéala con el bolígrafo.
3. **Localiza la fuente.** «Según la Constitución», «según la Ley Orgánica 2/1986»: contesta con esa norma y no con otra parecida.
4. **Marca los términos que acotan:** cifras, plazos, órganos, «siempre», «solo», «al menos», «en todo caso», «podrá», «deberá».
5. **Lee las cuatro opciones hasta el final** antes de elegir, y compara entre ellas lo que cambia.

Parece lento, pero con práctica se hace en segundos. El objetivo no es leer despacio, sino leer **en el orden correcto**.

## Trampa 1: «incorrecta», «no» y «excepto»

Un enunciado como «señale la opción **incorrecta**» invierte toda la pregunta. Si lo pasas por alto, marcas una afirmación verdadera.

**Ejemplo propio.** Señale la afirmación **incorrecta** sobre el Tribunal Constitucional:

a) Se compone de 12 miembros.
b) Sus miembros son designados por un periodo de nueve años.
c) Se renueva por terceras partes cada tres años.
d) Sus miembros son designados por un periodo de cinco años.

**Solución:** d). Las tres primeras recogen lo que dice el artículo 159 de la Constitución; la d) es la falsa. Quien no ve el «incorrecta» marca la a), porque es la primera verdadera.

## Trampa 2: las dobles negaciones

«No es cierto que la Constitución no reconozca el derecho a la vida.» Dos negaciones se anulan: la frase equivale a «la Constitución reconoce el derecho a la vida», que es verdad (artículo 15).

**Técnica:** antes de mirar las opciones, **traduce la frase a una afirmación simple**. Si te pierdes, tacha mentalmente las dos negaciones y lee lo que queda.

## Trampa 3: los absolutos

Palabras como *siempre, nunca, todos, ninguno, únicamente, en ningún caso* hacen una afirmación más fácil de refutar: basta un caso en contra.

**Ejemplo propio:** «Los derechos fundamentales no pueden suspenderse en ningún caso». Es **falsa**: el artículo 55.1 de la Constitución permite suspender determinados derechos cuando se declara el estado de excepción o de sitio.

Pero cuidado: **un absoluto no es siempre falso**. El artículo 159.5 dice que los miembros del Tribunal Constitucional son independientes e inamovibles en el ejercicio de su mandato, y una opción con «en todo caso» puede ser literal de la norma. La palabra absoluta es una **señal para releer**, no una regla para descartar.

## Trampa 4: «la más completa»

La base 6.1.1.c) dice que, si el aspirante considera correctas varias opciones, **debe señalar la más completa**. Es la misma instrucción que aparece para el inglés y el psicotécnico.

**Ejemplo propio.** Según el artículo 69.2 de la Constitución, en cada provincia se elegirán:

a) Senadores.
b) Cuatro senadores.
c) Cuatro senadores por sufragio universal, libre, igual, directo y secreto.
d) Dos senadores.

**Solución:** c). La a) y la b) son ciertas, pero incompletas; la c) recoge también la forma de elección que fija el mismo apartado. Cuando varias te parezcan correctas, **compara cuál incluye a las demás**. Hay más ejemplos de este tipo en [las preguntas trampa del examen](/blog/preguntas-trampa-del-examen-de-guardia-civil).

## Trampa 5: verbos que cambian el sentido

«Podrá» no es «deberá»; «propone» no es «nombra»; «convoca» no es «preside». Un solo verbo cambiado convierte una frase literal en falsa.

**Ejemplo propio:** «El Rey sancionará en el plazo de quince días las leyes aprobadas por las Cortes Generales». Es lo que dice el artículo 91. Si la opción dijera «en el plazo de un mes» o «podrá sancionar», ya no sería literal. Al estudiar, subraya los verbos de los artículos que te cuesten, no solo los sustantivos.

## Trampa 6: números y listas casi iguales

Plazos o cifras que cambian en una unidad entre opciones. Aquí no hay truco de lectura: hay que saberse el dato. Lo que sí ayuda es **comparar las opciones entre sí** para ver exactamente qué cambia y concentrar tu duda en ese punto.

## Qué hacer cuando dudas: la aritmética del tercio

Con cuatro opciones y un tercio de penalización, contestar a ciegas tiene un valor esperado de cero: un cuarto de probabilidad de sumar 1 y tres cuartos de restar un tercio. Si **descartas al menos una opción** y las restantes te parecen igual de probables, el valor esperado pasa a ser positivo. Es aritmética, no una garantía: comprueba en tus simulacros si arriesgar te ha sumado o restado.

### ¿Cambiar o no la primera respuesta?

Existe la creencia de que la primera intuición suele ser la buena. Algunos estudios lo han puesto en duda: por ejemplo, Kruger, Wirtz y Miller (2005, *Journal of Personality and Social Psychology*) encontraron que, entre los cambios de respuesta de estudiantes, eran más frecuentes los que pasaban de incorrecta a correcta que al revés. Una pauta prudente: **cambia solo cuando tengas un motivo concreto** (has visto el «no», recuerdas el artículo), no por nerviosismo.

## Leer bien sin quedarte sin tiempo

Los 140 minutos de la prueba incluyen ortografía, gramática, las 100 preguntas de conocimientos y las 20 de inglés, seguidas. Un reparto **orientativo y propio**, que debes ajustar con tus simulacros:

| Parte | Tiempo orientativo |
| --- | --- |
| Ortografía y gramática | 15-20 min |
| Conocimientos (100 preguntas) | 85-95 min |
| Inglés (20 preguntas) | 15-20 min |
| Repaso de dudosas y comprobación de marcas | 10 min |

Una técnica útil es la de **dos pasadas**: en la primera contestas lo seguro y marcas al margen las dudosas; en la segunda vuelves solo a esas. Así la lectura cuidadosa no se come el tiempo de las preguntas fáciles. La estructura del examen completo está en [el examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Caso práctico: revisar los fallos de lectura

**Caso hipotético.** Una opositora corrige un simulacro con 22 errores. Repasa cada uno y anota la causa: 13 «no lo sabía», 5 «leí mal» (tres negaciones no vistas, dos opciones incompletas), 4 «lo confundí con otra norma». Decide tres cambios para el siguiente simulacro: rodear siempre la orden, leer las cuatro opciones y escribir la norma citada al margen. Dos semanas después, los fallos de lectura bajan a 2. El temario no ha cambiado; la forma de leer, sí.

## Errores frecuentes

- **Mirar las opciones antes de terminar el enunciado.**
- **Responder con la norma equivocada** porque el dato «te suena».
- **Descartar por sistema** cualquier opción con «siempre» o «nunca».
- **Cambiar respuestas por nervios**, sin una razón concreta.
- **Releer cada pregunta tres veces** y quedarte sin tiempo para el inglés.

## Checklist de lectura

- [ ] He leído el enunciado entero tapando las opciones.
- [ ] He rodeado la orden (correcta, incorrecta, excepto, más completa).
- [ ] Sé qué norma pregunta.
- [ ] He leído las cuatro opciones.
- [ ] He comparado qué cambia entre ellas.
- [ ] Si dudo, sé cuántas opciones he descartado antes de decidir.

Para entrenarlo con cuestionarios completos, mira [cómo hacer y analizar simulacros](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados). Si quieres practicar con tests corregidos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye simulacros.

## Preguntas frecuentes

### ¿Debo descartar siempre las opciones con «siempre» o «nunca»?

No. Son una señal para comprobar, no una regla. Hay afirmaciones absolutas verdaderas y algunas son literales de la norma.

### ¿Qué hago si dos opciones parecen correctas?

La convocatoria indica que debes señalar la más completa. Comprueba cuál engloba a la otra.

### ¿Contestar en blanco resta?

Según la convocatoria de 2026, no: solo penalizan las preguntas contestadas incorrectamente.

### ¿Cuánto tiempo tengo por pregunta?

La convocatoria no fija tiempo por pregunta: hay 140 minutos para todas las partes. Reparte según tus simulacros y deja unos minutos para repasar.

### ¿Conviene cambiar una respuesta en el repaso final?

Solo si tienes un motivo concreto. Cambiar por nervios no tiene fundamento; cambiar porque has visto una negación que se te escapó, sí.

### ¿Los ejemplos de este artículo son preguntas oficiales?

No. Son ejemplos propios, creados para practicar la lectura. Consulta siempre la convocatoria vigente.',
   NULL, NULL, 'publicado', '2027-02-11T06:09:00.000Z', 'acceso-guardia-civil',
   ARRAY['test', 'técnica de examen', 'lectura', 'penalización']::text[], '{"title":"Cómo leer un enunciado tipo test: método en 5 pasos","description":"Cómo leer los enunciados del test de Guardia Civil: absolutos, dobles negaciones, «excepto», la opción más completa y la gestión del tiempo. Con ejemplos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('motivacion-que-hacer-los-dias-que-no-te-apetece-estudiar', 'articulo', 'Motivación: qué hacer los días que no te apetece estudiar', 'Habrá días en que no te apetezca abrir el temario. Cómo seguir avanzando sin depender de las ganas: averiguar qué te frena, mínimos diarios, planes «si… entonces», rutinas y objetivos visibles. Y cuándo conviene hablar con un profesional.', 'Opositar dura meses, y nadie tiene ganas todos los días. Esperar a «sentirte motivado» para sentarte es una estrategia que suele fallar justo cuando más hace falta: en semanas de cansancio, después de un mal simulacro o cuando la fecha del examen todavía parece lejana.

**Respuesta corta:** diseña tu preparación para que no dependa de las ganas. Averigua qué te frena ese día (no es lo mismo cansancio que aburrimiento o miedo), cumple un **mínimo diario pequeño**, decide de antemano qué harás en los días malos y haz visible lo que avanzas. Y si el desánimo es profundo o dura semanas, habla con un profesional: eso ya no es falta de motivación.

## Por qué esperar a tener ganas no funciona

Mucha gente espera a tener ganas para empezar. Con frecuencia ocurre al revés: **empiezas con poco y las ganas llegan después**, o no llegan, pero el trabajo queda hecho. No es una ley universal, pero sí un buen motivo para probar a empezar diez minutos en lugar de decidir si «hoy toca».

La motivación también se gasta en decidir. Si cada tarde tienes que elegir qué estudiar, dónde y cuánto, llegas a la mesa con menos energía. Por eso las estrategias que funcionan mejor no intentan aumentar las ganas, sino **reducir lo que depende de ellas**.

## Paso 1: averigua qué te frena hoy

«No me apetece» puede significar cosas muy distintas, y cada una pide una respuesta diferente:

| Lo que notas | Qué suele haber detrás | Qué probar |
| --- | --- | --- |
| Cuerpo pesado, sueño | Cansancio físico o falta de sueño | Bloque corto de repaso; acostarte antes hoy |
| «Es siempre lo mismo» | Aburrimiento, monotonía | Cambiar de tarea o de formato: tests, fichas, explicar en voz alta |
| No sabes por dónde empezar | Tarea demasiado grande o difusa | Partirla: «solo el artículo 14 y 5 preguntas» |
| Te angustia abrir el tema | Miedo a fallar, sensación de ir tarde | Empezar por algo que dominas para arrancar |
| Llevas semanas así | Puede haber algo más de fondo | Hablarlo con alguien de confianza o con un profesional |

Ponerle nombre no lo resuelve todo, pero evita aplicar la misma receta a problemas distintos.

## Paso 2: estrategias que puedes aplicar

### 1. Un mínimo innegociable

Decide un mínimo que cumplirás incluso en un mal día: por ejemplo, 20 minutos de test o una ronda de fichas. Un mal día con mínimo cumplido mantiene el hábito; un día a cero rompe la racha y hace más difícil el siguiente. Que sea **tan pequeño que no puedas negociarlo**.

### 2. Planes «si… entonces»

La investigación de Peter Gollwitzer sobre las llamadas **intenciones de implementación** (por ejemplo, su artículo de 1999 en *American Psychologist*) sugiere que concretar **cuándo, dónde y cómo** vas a actuar ante una situación ayuda a cumplir lo que te propones. En la práctica, se escriben como frases «si… entonces». Ejemplos propios:

- «**Si** llego a casa sin ganas, **entonces** hago solo el test de 20 preguntas del tema de la semana.»
- «**Si** saco menos de 50 en un simulacro, **entonces** anoto los fallos y lo analizo al día siguiente, no esa noche.»
- «**Si** cojo el móvil en un bloque, **entonces** lo dejo en otra habitación hasta la pausa.»

Escríbelos y tenlos a la vista. Funcionan porque la decisión ya está tomada cuando llega el mal momento.

### 3. Convierte el estudio en rutina

Mismo sitio, misma hora, mismos primeros pasos. Los estudios sobre formación de hábitos, como el de Phillippa Lally y su equipo (2010), describen que las conductas repetidas en el mismo contexto se van volviendo más automáticas con el tiempo, aunque el tiempo necesario varía mucho de una persona a otra. Ayuda tener los bloques definidos: mira [bloques de estudio y técnica Pomodoro](/blog/bloques-de-estudio-y-tecnica-pomodoro-para-opositores).

### 4. Objetivos pequeños y visibles

«Aprobar la oposición» es enorme. «Terminar el tema 3 esta semana» es concreto. Apunta lo que completas: una lista de tareas tachadas o una hoja con la nota de cada simulacro pesan más que una sensación vaga de no avanzar. Ideas para medirte en [el balance: cómo saber si vas bien](/blog/balance-del-ano-como-saber-si-vas-bien-en-la-oposicion).

### 5. Cambia de tarea, no abandones

Si no puedes con el temario, haz tests. Si no puedes con tests, repasa fichas. Si no puedes con nada escrito, escucha un tema o explícalo en voz alta. Cambiar de actividad es mejor que cerrar el libro.

### 6. La regla de los diez minutos

Comprométete solo a diez minutos. Si al acabar sigues sin poder, para sin culpa: has cumplido. Muchas veces seguirás; otras no, y también vale.

### 7. Recuerda por qué lo haces

Escribe en una nota tus razones para entrar en el Cuerpo: concretas, tuyas. Léela cuando flaquees, no como frase motivadora, sino como recordatorio de lo que estás eligiendo.

### 8. Descansa de verdad

No todo es fuerza de voluntad. Dormir, comer bien, moverte y desconectar forman parte de la preparación. Si además entrenas, mira cómo encajarlo en [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil). Un día libre planificado a la semana no es perder el tiempo.

## Plan para un mal día concreto

| Situación | Alternativa realista |
| --- | --- |
| Sin energía | Solo tests cortos o repaso de fichas |
| Mala nota en un simulacro | Anotar los fallos y parar; analizar mañana |
| Cansancio acumulado varios días | Un día de descanso planificado y revisar horarios |
| Distracción total | Un bloque corto sin móvil y una recompensa pequeña después |
| Agobio por todo lo que falta | Escribir la lista de tareas de la semana y elegir solo la primera |

Sobre los simulacros, aprende a [analizar los resultados](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados) para no vivir cada nota mala como un fracaso: es información.

## Caso práctico

**Caso hipotético.** Javi lleva tres tardes sin estudiar. Al pararse a pensarlo, ve que no es cansancio: le bloquea el tema de Derecho Administrativo, que lleva dos semanas «a medias». Aplica tres cambios: parte el tema en cinco trozos de una sesión cada uno, escribe un plan «si… entonces» («si me siento y no arranco, empiezo por 10 preguntas del trozo anterior») y apunta cada trozo terminado en un papel pegado a la pared. La primera tarde solo cumple el mínimo; la segunda, un bloque entero. No ha recuperado las ganas de golpe, pero ha vuelto a la rutina.

## Cuándo no es solo falta de ganas

Si llevas semanas con desánimo persistente, has perdido interés por cosas que antes te gustaban, duermes mucho peor, la ansiedad te desborda o sientes que no puedes con nada, **no es un asunto de fuerza de voluntad ni lo puede resolver un artículo**. Habla con tu médico de cabecera o con un profesional de la salud mental. Pedir ayuda es una decisión sensata, no un fracaso.

Y si en algún momento tienes pensamientos de hacerte daño, llama al **024** (línea de atención a la conducta suicida) o, si hay peligro inmediato, al **112**.

## Errores frecuentes

- **Esperar a tener ganas** para empezar.
- **Fijar mínimos demasiado altos**, que se incumplen y desmoralizan.
- **Compensar un mal día con un «día heroico»** de diez horas que te deja agotado.
- **Compararte con lo que ves en redes:** lo que ves es una selección. Compárate con tu avance de hace un mes.
- **Castigarte por no estudiar** en lugar de entender qué ha pasado.
- **Repetir los [errores habituales al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil)**, como no planificar el repaso.

## Checklist para los días difíciles

- [ ] He identificado qué me frena hoy (cansancio, aburrimiento, miedo, tarea difusa).
- [ ] Tengo un mínimo diario definido y pequeño.
- [ ] Tengo escritos dos o tres planes «si… entonces».
- [ ] Sé qué tarea alternativa hago si no puedo con el temario.
- [ ] Apunto lo que termino cada día.
- [ ] Tengo un día de descanso a la semana.
- [ ] Si el desánimo dura semanas, sé a quién acudir.

Si necesitas una estructura que te acompañe, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te da un calendario ya organizado.

## Preguntas frecuentes

### ¿Es normal no tener ganas de estudiar algunos días?

Sí, le pasa a cualquiera en una preparación larga. Lo importante es tener un plan para esos días, como un mínimo reducido.

### ¿Cuánto debe durar el mínimo diario?

El que puedas cumplir siempre. Veinte minutos constantes suelen funcionar mejor que dos horas esporádicas.

### ¿Qué es un plan «si… entonces»?

Una decisión tomada por adelantado para una situación concreta: «si pasa X, entonces hago Y». Se basa en la investigación sobre intenciones de implementación y te ahorra decidir en el peor momento.

### ¿Debería tomarme un descanso largo si estoy desmotivado?

Un descanso corto y planificado puede ayudar. Si el desánimo persiste o empeora, consulta con un profesional.

### ¿Cómo sé si lo mío es ansiedad o depresión?

No se puede valorar desde un artículo. Si te preocupa o te limita en tu día a día, acude a tu médico o a un profesional de la salud mental.

### ¿Sirven las frases motivadoras?

Pueden animar un rato, pero no sustituyen a un plan. Un mínimo diario y una rutina suelen sostener más que la inspiración.',
   NULL, NULL, 'publicado', '2027-02-13T06:43:00.000Z', 'acceso-guardia-civil',
   ARRAY['motivación', 'hábitos', 'organización', 'opositor']::text[], '{"title":"Motivación para opositar: qué hacer cuando no te apetece","description":"Qué hacer los días que no te apetece estudiar la oposición a Guardia Civil: diagnóstico, mínimos diarios, planes si-entonces, rutinas y cuándo pedir ayuda."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('opositar-con-hijos-un-plan-de-estudio-realista-guardia-civil', 'articulo', 'Opositar con hijos: un plan de estudio realista', 'Estudiar una oposición con niños en casa es posible, pero exige renunciar al plan ideal. Cómo auditar tu tiempo real, qué tarea encaja en cada hueco, cómo repartir el cuidado y organizar los simulacros, y una semana tipo para adaptar.', 'Opositar con hijos pequeños, o con adolescentes que también necesitan tiempo y atención, obliga a cambiar el enfoque: **el plan que funciona no es el de las ocho horas seguidas, sino el que cabe en tu día real**. Y tu día real tiene interrupciones, imprevistos y noches cortas.

**Respuesta corta:** parte de una auditoría honesta de tu tiempo, usa bloques cortos y frecuentes para repasar y tests, protege uno o dos tramos largos a la semana para lo que exige concentración, pon el reparto del cuidado por escrito y ajusta la fecha objetivo a tu realidad. Sin compararte con quien no tiene tus cargas.

## Paso 1: audita tu día real, no el ideal

Durante una semana, apunta cuándo tienes tiempo de verdad libre: siestas, horario escolar, extraescolares, noches, ratos en los que otra persona se queda con los niños. No lo que crees que tienes, sino lo que pasa. Una plantilla sencilla:

| Franja | Lunes | Martes | Miércoles | Jueves | Viernes | Sábado | Domingo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Mañana | | | | | | | |
| Mediodía | | | | | | | |
| Tarde | | | | | | | |
| Noche | | | | | | | |

Marca cada hueco con su duración y con lo interrumpible que es (por ejemplo, «30 min, siesta, puede despertarse»). Muchas veces aparecen más huecos de los que creías, pero fragmentados. Si además trabajas, cruza esta tabla con [el plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando).

## Paso 2: cada hueco, su tarea

No todo el estudio necesita una hora ininterrumpida, pero tampoco todo cabe en diez minutos:

| Hueco | Tarea adecuada | Tarea que no encaja |
| --- | --- | --- |
| 10-20 min, interrumpible | Fichas, tanda de psicotécnico, vocabulario de inglés | Temario nuevo |
| 20-45 min | Test por tema, repaso activo con preguntas, ortografía | Simulacro |
| 1-2 h protegidas | Temario nuevo, esquemas, corrección a fondo | — |
| 140 min protegidos | Simulacro completo | — |

La regla de fondo: **lo que exige más concentración, a los tramos largos; lo que es recuperar y repasar, a los cortos**. Hacer preguntas sin mirar los apuntes, aunque sea en diez minutos, es una de las técnicas con más respaldo en la investigación sobre aprendizaje. Ideas para estructurar los bloques en [bloques de estudio y técnica Pomodoro](/blog/bloques-de-estudio-y-tecnica-pomodoro-para-opositores).

Un truco práctico: **ten el material de los huecos cortos siempre preparado** (fichas en el bolso, una aplicación de tests en el móvil, la lista de vocabulario en la nevera). Si tienes que buscar qué hacer, el hueco se va en decidir.

## Paso 3: según la edad de tus hijos

No hay reglas fijas, pero sí patrones que suelen repetirse:

- **Bebés y niños muy pequeños:** huecos cortos e imprevisibles. Prioriza tareas que se puedan interrumpir sin perder el hilo y protege los tramos largos con ayuda de otra persona.
- **Edad escolar:** el horario escolar da tramos fijos y previsibles; las tardes, menos. Un buen momento para estudiar puede ser mientras hacen sus deberes, en la misma mesa.
- **Adolescentes:** más autonomía, pero también necesitan tu tiempo. Explicarles lo que estás haciendo y por qué ayuda a que respeten tus bloques.

## Paso 4: reparte el cuidado, y ponlo por escrito

Si tienes pareja, acordad **franjas semanales** en las que el otro se hace cargo de los niños mientras estudias, y escribidlas en un calendario compartido. Hablarlo antes de empezar evita muchos conflictos: hay ideas en [opositar en pareja](/blog/opositar-en-pareja-como-compaginarlo-sin-que-se-resienta).

Si crías solo o sola, valora si algún familiar, amistad o recurso de tu zona puede cubrir uno o dos tramos fijos al mes, sobre todo para los simulacros. Las ayudas y servicios de conciliación varían según el lugar; pregunta en tu ayuntamiento o en los servicios sociales de tu zona.

## Paso 5: los simulacros, el reto de las condiciones de examen

La prueba de conocimientos teórico-prácticos dura **140 minutos seguidos** e incluye ortografía, gramática, las 100 preguntas de conocimientos y las 20 de inglés. Es justo lo más difícil de encajar con niños en casa, y lo que más conviene ensayar.

- **Planifícalos con semanas de antelación,** como una cita fija.
- **Busca un sitio sin interrupciones:** si en casa no es posible, una biblioteca o la casa de un familiar.
- **Si no puedes hacer 140 minutos,** haz al menos un simulacro de conocimientos completo cuando puedas y practica por separado ortografía, gramática e inglés; pero intenta llegar a hacer varios completos antes del examen.

Cada cuánto hacerlos y cómo sacarles partido: [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Una semana tipo, para adaptar

**Caso hipotético** de una madre con dos hijos en primaria, que trabaja por las mañanas y comparte el cuidado con su pareja:

| Día | Estudio | Quién cuida |
| --- | --- | --- |
| Lunes a jueves | 21:30-22:30, temario o test; 20 min de fichas mientras los niños hacen deberes | Ella acuesta; él recoge la cocina |
| Viernes | Descanso de estudio; entrenamiento físico | — |
| Sábado | 9:00-11:30, simulacro o bloque largo de temario | La pareja |
| Domingo | 17:00-18:00, repaso de errores de la semana | La pareja |

Son algo menos de 9 horas semanales: menos que las de alguien con dedicación completa, y por eso **el plazo será más largo**. Eso no es un fallo del plan, es el plan.

## Cómo medir si el plan funciona

Con pocas horas, cada una cuenta, así que conviene comprobar cada mes si estás avanzando. Tres datos sencillos: la nota de tus simulacros, calculada con la fórmula oficial (aciertos menos un tercio de los errores); cuántos temas puedes responder sin apuntes con pocos fallos, y cuántas semanas has cumplido tu mínimo. Si las horas son las mismas pero la nota no se mueve en un mes, cambia el método (más preguntas, menos lectura) antes de intentar sacar más horas de donde no las hay.

## Entrenamiento físico

Las pruebas físicas también necesitan tiempo. Parte del entrenamiento puede hacerse con los niños (paseos, parque, bici) y lo específico, en sesiones breves y bien planificadas. Ante cualquier duda sobre cargas o lesiones, consulta con un profesional. Cómo combinarlo con el estudio: [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Piensa también en el después

Si apruebas, la formación en la Academia de Baeza es, con carácter general, en régimen de internado según la normativa de los centros docentes, y después vienen las prácticas y un destino que no eliges libremente. Con hijos, conviene pensar desde el principio quién se haría cargo de ellos durante ese tiempo y qué opciones tendríais como familia.

## Cuida tu energía

Dormir mal por los niños y estudiar de noche puede pasar factura. Si notas agotamiento persistente, irritabilidad o desánimo que no remite, **consúltalo con tu médico o con un profesional de la salud mental**. No es un problema de organización que se arregle con otro horario.

## Errores frecuentes

- **Copiar el plan de alguien sin cargas familiares.**
- **Usar los huecos cortos para temario nuevo** y frustrarte porque no avanzas.
- **Dejar los simulacros para el final** porque «no hay tiempo».
- **No tener el material preparado** para los huecos.
- **Sacrificar siempre el sueño** para estudiar.
- **Sentirte culpable** por el tiempo de estudio o por el tiempo con tus hijos. Ambos son legítimos.

## Checklist

- [ ] He auditado una semana real de mi tiempo.
- [ ] Sé qué tarea va en cada tipo de hueco.
- [ ] Tengo el material de los huecos cortos siempre a mano.
- [ ] El reparto del cuidado está escrito.
- [ ] Tengo fechas para los simulacros y quién se queda con los niños.
- [ ] He ajustado mi fecha objetivo a las horas reales.
- [ ] Reviso cada mes si el plan es sostenible.

Si buscas una estructura ya organizada, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te evita diseñar el calendario desde cero.

## Preguntas frecuentes

### ¿Es posible opositar con hijos pequeños?

Sí, mucha gente lo hace, pero requiere reajustar tiempos y pedir apoyo. No hay una garantía de plazo.

### ¿Cuántas horas puedo estudiar al día?

Las que tu situación permita de forma sostenible. Es mejor una cantidad menor y constante que una semana intensa seguida de dos sin estudiar.

### ¿Sirven de algo los ratos de diez minutos?

Sí, si los usas para recuperar lo estudiado: fichas, preguntas, vocabulario. No sirven tanto para temario nuevo.

### ¿Cómo hago los simulacros de 140 minutos?

Planifícalos con antelación y con alguien que se quede con los niños, en casa o fuera. Intenta hacer varios completos antes del examen.

### ¿Debo esperar a que los niños sean mayores?

Es una decisión personal. Ten en cuenta la edad máxima: no cumplir 41 años en el año de la convocatoria. Revisa los [requisitos](/blog/requisitos-guardia-civil).

### ¿Y si tardo más que otros en estar preparado?

Es lo esperable si tienes menos horas. Mide tu avance con tus simulacros, no con el calendario de otros.',
   NULL, NULL, 'publicado', '2027-02-16T06:34:00.000Z', 'acceso-guardia-civil',
   ARRAY['conciliación', 'hijos', 'planificación', 'organización']::text[], '{"title":"Opositar con hijos: plan de estudio realista","description":"Cómo preparar la oposición a Guardia Civil con hijos: auditar tu tiempo, bloques cortos, reparto del cuidado, simulacros de 140 minutos y semana tipo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('opositar-en-pareja-como-compaginarlo-sin-que-se-resienta', 'articulo', 'Opositar en pareja: cómo organizarlo para cuidar la relación', 'Preparar una oposición cambia el ritmo de la casa y de la relación. Acuerdos prácticos para opositar con pareja: la conversación inicial, tiempos, tareas, dinero, qué pasa si apruebas y qué hacer si opositáis los dos.', 'La oposición no la prepara solo quien se sienta a estudiar: también la vive quien comparte casa con él o con ella. Fines de semana de simulacro, entrenamientos, planes cancelados y un estado de ánimo que sube y baja con los resultados afectan a la pareja, aunque no se hable de ello.

**Respuesta corta:** habla de la preparación antes de empezar y pacta cosas concretas: horarios de estudio, tiempo juntos que no se toca, reparto de tareas, dinero y qué haréis si se alarga o si apruebas y te toca irte. Lo que no se acuerda suele acabar en reproches. Revisad los acuerdos cada mes. Y no hay una fórmula única: cada pareja es distinta.

## Antes de empezar: una conversación con datos

Opositar no es un esfuerzo de un mes. Para que la conversación sea realista, conviene que los dos sepáis cómo es el proceso: lo tienes resumido en [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero), y la dedicación orientativa en [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil).

Un guion de preguntas para esa primera charla:

1. **¿Cuánto tiempo estimo que voy a necesitar?** ¿Qué pasa si no entro a la primera y hay que repetir convocatoria?
2. **¿Qué horarios voy a necesitar** para estudiar y entrenar, y cuáles chocan con los de la casa?
3. **¿Qué cambia en las tareas?** ¿Quién asume qué, y durante cuánto tiempo?
4. **¿Qué cambia en el dinero?** Si reduzco horas de trabajo o pago academia, ¿cómo lo cubrimos?
5. **¿Qué necesito de ti, y qué no?** Apoyo no es lo mismo que control de horas ni exigencia de resultados.
6. **¿Qué pasa si apruebo?** La formación y el destino implican cambios que conviene hablar antes.

No hace falta resolverlo todo el primer día. Hace falta que ninguna de estas preguntas os pille por sorpresa dentro de seis meses.

## Acuerdos prácticos que suelen ayudar

| Tema | Ejemplo de acuerdo |
| --- | --- |
| Tiempo de estudio | Franjas fijas, visibles en un calendario compartido |
| Tiempo juntos | Uno o dos momentos a la semana que no se tocan |
| Tareas del hogar | Reparto escrito y revisado cada mes, no improvisado |
| Fines de semana | Sábado de simulacro; domingo libre o ligero |
| Dinero | Presupuesto realista si se reducen ingresos o hay gastos de preparación |
| Señal de «ahora no» | Una forma acordada de pedir que no te interrumpan sin que suene a rechazo |

Que haya **tiempo juntos protegido** evita que la oposición se convierta en lo que se lo lleva todo. Y que haya **tiempo de estudio protegido** evita las interrupciones constantes. Es un trato de ida y vuelta: si tú pides respeto para tus bloques, el tiempo pactado juntos también se respeta.

### Ejemplo propio de semana compartida

**Caso hipotético** de una pareja en la que solo uno oposita y los dos trabajan:

| Día | Opositor | Tiempo juntos |
| --- | --- | --- |
| Lunes a jueves | Estudio de 17:00 a 20:00; entrenamiento 3 días | Cena juntos, sin temario |
| Viernes | Estudio corto, 1 hora | Plan juntos por la noche |
| Sábado | Simulacro y corrección por la mañana | Tarde libre |
| Domingo | Descanso o repaso ligero de 1 hora | Día compartido |

Las tareas de casa se reparten de forma que quien oposita asume más el fin de semana y menos entre semana. Al final de cada mes revisan qué ha funcionado.

## El dinero, sin tabúes

Preparar una oposición tiene costes: material o academia, quizá menos horas de trabajo, desplazamientos al examen. Algunos son pequeños (la tasa de examen de la convocatoria de 2026 fue de 11,66 €, con reducciones y exenciones en algunos supuestos), pero otros pesan. Hacer juntos un presupuesto mensual y decidir hasta cuándo es sostenible evita discusiones que en realidad no son sobre la oposición, sino sobre dinero.

## Si apruebas: lo que conviene hablar antes

Aprobar no es el final del cambio. Después de la oposición viene la formación en la Academia de Baeza (Jaén), donde la normativa establece con carácter general el **régimen de internado**; lo tienes explicado en [la vida en la Academia de Baeza](/blog/un-dia-en-la-academia-de-baeza-horarios-normas-y-permisos). Después vienen las prácticas y la asignación de destino, que no se elige libremente y puede estar lejos de casa.

No sabemos dónde os tocará ni cuánto tiempo estaréis separados, y nadie os lo puede asegurar de antemano. Por eso conviene hablar **antes** de empezar qué haríais si te toca irte: si la pareja se mudaría, si mantendríais la relación a distancia una temporada, qué pasa con el trabajo del otro.

## Lo que conviene que la pareja sepa

- **Las notas de un simulacro no miden quién eres.** Si cada resultado malo se vive como drama en casa, la presión se multiplica. Cómo leer esos resultados está en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).
- **El resultado depende de factores que no controla nadie,** como la nota de corte de cada año, que cambia mucho de una convocatoria a otra. Está explicado en [la nota de corte](/blog/nota-de-corte-guardia-civil).
- **Los días malos existen** y no significan que algo vaya mal en la relación.
- **Preguntar «¿cuánto has estudiado hoy?»** puede sonar a control aunque no lo sea. Mejor preguntar «¿cómo te ha ido?».

## Si opositáis los dos

Opositar a la vez tiene ventajas claras: os entendéis, compartís calendario y podéis haceros preguntas del temario el uno al otro, que es una forma sencilla de practicar la recuperación (intentar recordar sin mirar), una de las técnicas de estudio con más respaldo. También tiene riesgos:

- **Comparaciones.** Cada uno tiene su ritmo y su punto de partida; las notas no se comparan en la cena.
- **Un solo espacio para dos.** Alternad quién usa la mesa o la habitación tranquila y respetad los bloques del otro.
- **Resultados desiguales.** Las plazas no son una competición entre vosotros, pero uno puede aprobar y el otro no. Hablad antes de qué haréis en ese caso.
- **Destinos.** Que los dos aprobéis no garantiza que os destinen al mismo sitio; no lo deis por hecho. Más en [destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

## Caso práctico

**Caso hipotético.** Marta oposita y Dani trabaja a turnos. Los primeros dos meses discuten cada sábado: él quiere aprovechar su día libre y ella tiene simulacro. En lugar de discutir cada semana, se sientan con el calendario de turnos de él y fijan el simulacro en los sábados en que Dani trabaja, y los sábados libres de él, el simulacro pasa al domingo por la mañana. No han cambiado las horas de estudio; han cambiado cuándo.

## Señales para hablar a tiempo

Si discutís siempre por lo mismo, si uno de los dos se siente invisible o si el estrés de la oposición se contagia a todo, **no esperéis a que explote**. Parad, revisad los acuerdos y, si hace falta, buscad ayuda profesional (un psicólogo o terapia de pareja). No es un signo de debilidad, y cuanto antes, más fácil.

## Errores frecuentes

- **Empezar sin hablarlo,** dando por hecho que la pareja «ya lo entenderá».
- **Acuerdos de palabra que nadie recuerda.** Mejor por escrito y en un calendario compartido.
- **Cancelar siempre el tiempo juntos** porque «esta semana es importante».
- **Usar la oposición como excusa** para no hacer nada en casa durante meses.
- **No hablar de qué pasa si apruebas** hasta que llega la carta.

## Checklist para la pareja

- [ ] Hemos hablado de duración, horarios, tareas y dinero.
- [ ] Hay un calendario compartido con los bloques de estudio.
- [ ] Hay tiempo juntos protegido cada semana.
- [ ] El reparto de tareas está escrito y se revisa cada mes.
- [ ] Hemos hablado de qué pasa con Baeza y el destino si apruebo.
- [ ] Sabemos qué hacer si las discusiones se repiten.

Si te interesa un plan estructurado que podáis consultar los dos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye calendario.

## Preguntas frecuentes

### ¿Es compatible opositar con tener pareja?

Sí, mucha gente lo hace. Requiere acuerdos claros y revisarlos con el tiempo.

### ¿Cómo evito que la oposición lo ocupe todo?

Protege tiempos de ocio compartido y respeta tus descansos. Un calendario común ayuda a que los dos sepáis qué toca cada día.

### ¿Qué hago si mi pareja me presiona con los resultados?

Habladlo en un momento tranquilo y explica qué tipo de apoyo necesitas. Si la situación persiste, un profesional puede ayudaros.

### ¿Y si opositamos los dos a la vez?

Es posible y tiene ventajas, como preguntaros el temario. Evitad las comparaciones y acordad de antemano qué haréis según los resultados.

### ¿Nos destinarán juntos si aprobamos los dos?

No se puede dar por hecho. La asignación de destinos sigue su propio procedimiento; consulta la normativa vigente cuando llegue el momento.

### ¿Hay que irse de casa durante la formación?

Con carácter general, la formación en la Academia de Baeza es en régimen de internado, según la normativa de los centros docentes. Conviene hablarlo en pareja antes de empezar.',
   NULL, NULL, 'publicado', '2027-02-14T06:00:00.000Z', 'acceso-guardia-civil',
   ARRAY['pareja', 'conciliación', 'organización', 'opositor']::text[], '{"title":"Opositar en pareja: cómo organizarlo en casa","description":"Cómo compaginar la oposición a Guardia Civil con tu pareja: conversación inicial, tiempos, tareas, dinero, Baeza y qué hacer si opositáis los dos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('preguntas-trampa-del-examen-de-guardia-civil', 'articulo', 'Preguntas trampa del examen de Guardia Civil y cómo detectarlas', 'No hay una lista oficial de preguntas trampa, pero las reglas de la convocatoria crean situaciones que conviene dominar: la respuesta más completa, la penalización y los errores que cuentan igual en ortografía. Siete tipos, con ejemplos propios resueltos.', '**Respuesta corta:** la convocatoria no habla de «preguntas trampa» y no hay datos oficiales sobre cuáles aparecen ni con qué frecuencia. Lo que sí es oficial son las reglas del test, y de ellas salen las situaciones que más confunden: elegir **la respuesta más completa** cuando varias parecen correctas, saber cuándo **no contestar** por la penalización y entender que en ortografía y gramática **marcar de más cuenta igual que no marcar**. A eso se suman los despistes de siempre: negaciones, cifras parecidas y normas que se confunden entre sí.

Las reglas salen de las bases 6 y 7 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). **Todos los ejemplos de este artículo son propios**, redactados para practicar: no son preguntas oficiales ni pretenden predecir ninguna.

## Qué dice exactamente la convocatoria

Para la prueba de conocimientos generales, la base 6.1.1.c) establece que cada pregunta tiene **una única respuesta válida**; que, si el aspirante considera correctas varias opciones, **debe señalar la más completa**; que las contestadas incorrectamente **penalizan**, y que la no contestada **no se penaliza**. La misma instrucción aparece para el inglés (base 6.1.1.d) y para las aptitudes intelectuales del psicotécnico (base 6.1.2.a).

Con eso ya se ve que la «trampa» no es una mala intención del Tribunal, sino una forma de examinar: comprobar si sabes el dato **entero** y si sabes **cuándo no arriesgar**.

## Tipo 1: varias opciones verdaderas, solo una completa

Es la situación que la propia convocatoria prevé. Una opción es cierta pero incompleta; otra la contiene y añade lo que falta.

**Ejemplo propio:** ¿Cuáles son los valores superiores del ordenamiento jurídico según el artículo 1.1 de la Constitución?

a) Libertad y justicia
b) Libertad, justicia e igualdad
c) Libertad, justicia, igualdad y pluralismo político
d) Libertad, igualdad y pluralismo político

**Solución:** c). Todas las opciones mencionan valores que sí aparecen en el artículo, pero solo la c) los recoge todos. Quien marca la primera que le suena, falla.

**Variante con «todas las anteriores».** Según el artículo 7 de la Carta de las Naciones Unidas, son órganos principales: a) la Asamblea General; b) el Consejo de Seguridad; c) la Corte Internacional de Justicia; d) todas las anteriores son correctas. **Solución:** d). Las tres primeras son ciertas por separado; la d) es la más completa.

**Cómo detectarla:** si al leer la a) piensas «esto es verdad», no marques todavía. Lee las cuatro y pregúntate si alguna **incluye** a otra.

## Tipo 2: la negación y el «salvo»

«¿Cuál NO es…?», «señale la incorrecta», «todas son correctas excepto…». El fallo no es de temario, sino de lectura: sabes la respuesta, pero contestas a la pregunta contraria.

**Ejemplo propio:** ¿Cuál NO es un valor superior del ordenamiento jurídico según el artículo 1.1 de la Constitución? a) Libertad; b) Justicia; c) Igualdad; d) Solidaridad. **Solución:** d).

**Cómo detectarla:** rodea la negación con el bolígrafo antes de mirar las opciones. El método completo de lectura lo desarrollaremos en el próximo artículo.

## Tipo 3: cifras, plazos y mayorías casi iguales

Aquí se gana o se pierde por precisión. Las opciones cambian en una unidad o en una palabra.

**Ejemplo propio:** según el artículo 17.2 de la Constitución, la detención preventiva no podrá durar más del tiempo estrictamente necesario y, en todo caso, en el plazo máximo de: a) 24 horas; b) 48 horas; c) 72 horas; d) 5 días. **Solución:** c), 72 horas, tras las cuales el detenido debe ser puesto en libertad o a disposición judicial.

**Cómo detectarla:** no hay truco de lectura que sustituya al dato. Estudia las cifras con tarjetas o con preguntas sin mirar, no solo releyendo, y apúntalas en una hoja aparte de «números del temario».

## Tipo 4: la norma que pregunta no es la que recuerdas

Muchas confusiones vienen de mezclar lo que dice la Constitución con lo que desarrolla una ley, o una ley con otra.

**Ejemplo propio:** según la Constitución, el Congreso se compone de: a) 350 diputados; b) un mínimo de 300 y un máximo de 400 diputados; c) 4 diputados por provincia; d) un máximo de 350 diputados. **Solución:** b), artículo 68.1. La cifra de 350 la fija la ley electoral, no la Constitución, y los 4 por provincia son los senadores del artículo 69.

**Cómo detectarla:** fíjate en la fuente que cita el enunciado («según la Constitución», «según la Ley Orgánica 2/1986») y contesta solo con esa norma.

## Tipo 5: la penalización, o la trampa de la prisa

Los errores restan y los blancos no. Con la fórmula de la base 7.3 y cuatro alternativas, **cada error resta un tercio de acierto**.

**Ejemplo propio resuelto.** Si contestas las 100 preguntas, aciertas 60 y fallas 40: 60 − 40/3 ≈ **46,67**. No llegas al mínimo de 50. Si con el mismo conocimiento dejas 16 en blanco y fallas 24: 60 − 24/3 = **52**, y sí lo superas. Mismos aciertos, distinto resultado. Para hacer tus propias cuentas tienes [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil).

La lógica, en números:

| Situación | Probabilidad de acertar | Valor esperado de contestar |
| --- | --- | --- |
| No descartas ninguna opción | 1/4 | 0 |
| Descartas una | 1/3 | +0,11 |
| Descartas dos | 1/2 | +0,33 |

El valor esperado es una media a largo plazo, no una garantía en cada pregunta, y supone que las opciones que quedan son igual de probables. Comprueba en tus simulacros si arriesgar te suma o te resta.

## Tipo 6: ortografía y gramática, donde marcar de más es fallar

La convocatoria considera respuesta errónea **tanto no marcar una palabra con falta como marcar una correcta**, y con **6 o más errores** en ortografía, o 6 o más en gramática, quedas excluido (bases 7.4 y 7.5).

**Ejemplo propio:** en la frase «**Haber** si llegas pronto a la reunión», la forma correcta es «a ver». Quien marca solo lo que «suena raro» y se salta los homófonos acumula errores sin darse cuenta. Y quien marca palabras correctas «por si acaso» también. Para trabajar estas confusiones: [homófonos](/blog/homofonos-ortografia-guardia-civil) y [palabras trampa de ortografía](/blog/palabras-trampa-ortografia-guardia-civil).

## Tipo 7: el inglés y los falsos amigos

En inglés, el distractor típico es la palabra que se parece al español y significa otra cosa.

**Ejemplo propio:** «She was very *embarrassed* after the mistake». ¿Qué significa *embarrassed*? a) embarazada; b) avergonzada; c) enfadada; d) aburrida. **Solución:** b). «Embarazada» se dice *pregnant*. Otros casos clásicos: *actually* (en realidad), *library* (biblioteca), *sensible* (sensato). Tienes más en [falsos amigos en inglés](/blog/falsos-amigos-en-ingles-los-errores-tipicos-del-opositor).

## Caso práctico: analizar un simulacro por tipos de trampa

**Caso hipotético.** Un opositor hace un simulacro y obtiene 64 aciertos, 27 errores y 9 blancos: 64 − 9 = **55 puntos**. Al revisar los 27 fallos los clasifica así:

| Causa | Fallos | Qué hacer |
| --- | --- | --- |
| No sabía el dato | 11 | Repaso de esos temas |
| Cifra o plazo confundido (tipo 3) | 6 | Hoja de números y tarjetas |
| No leyó la negación (tipo 2) | 4 | Rodear la negación siempre |
| Eligió una opción incompleta (tipo 1) | 3 | Leer las cuatro antes de marcar |
| Arriesgó sin descartar nada (tipo 5) | 3 | Dejar en blanco si no descarta |

Solo 11 fallos eran de temario. Si los 7 de lectura (tipos 1 y 2) se convirtieran en aciertos, pasaría de 55 a 71 − 20/3 ≈ 64,3, sin estudiar nada nuevo. Y dejar en blanco los 3 arriesgados a ciegas le sumaría 1 punto más. Estas cifras son del ejemplo, no una promesa: sirven para ver dónde están los puntos baratos.

## Errores frecuentes

- **Marcar la primera opción verdadera** sin comparar con las demás.
- **Leer el enunciado a medias** y perder el «no» o el «excepto».
- **Contestarlo todo** por miedo a dejar huecos.
- **Dejarlo todo en blanco** por miedo a fallar, incluso cuando has descartado dos opciones.
- **Estudiar cifras solo leyendo**, sin preguntártelas.
- **En ortografía, marcar «por si acaso».**

## Checklist para tus simulacros

- [ ] Leo el enunciado entero antes de mirar las opciones.
- [ ] Rodeo negaciones y excepciones.
- [ ] Leo las cuatro opciones aunque la primera parezca buena.
- [ ] Compruebo si una opción incluye a otra.
- [ ] Miro qué norma cita el enunciado.
- [ ] Contesto si descarto al menos una opción y he comprobado que me compensa; si no, en blanco.
- [ ] Al corregir, clasifico cada fallo por su causa.

Practicarlo con cuestionarios completos y [simulacros bien analizados](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados) es lo que convierte estas reglas en reflejos. Si prefieres hacerlo con un método guiado, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este trabajo.

## Preguntas frecuentes

### ¿Hay preguntas trampa en el examen de la Guardia Civil?

La convocatoria no usa ese término ni hay datos oficiales sobre ellas. Lo oficial son las reglas del test: respuesta única, la más completa y penalización por error. De ahí salen las situaciones que más confunden.

### ¿Qué hago si dos opciones me parecen correctas?

La convocatoria dice que debes señalar la más completa. Comprueba si una contiene a la otra; normalmente esa es la que hay que marcar.

### ¿Qué hago si dudo entre dos opciones?

Si has descartado las otras dos, el valor esperado de contestar es positivo: un acierto suma uno y un error resta un tercio. Aun así, comprueba en tus simulacros cómo te funciona.

### ¿Restan las preguntas en blanco?

No. La convocatoria dice expresamente que no se penaliza la pregunta no contestada.

### ¿También hay «más completa» en el psicotécnico?

Sí. La base 6.1.2.a) repite la misma instrucción para las aptitudes intelectuales, y también penaliza los errores.

### ¿Cómo practico la «respuesta más completa»?

Al corregir cada test, no te quedes en por qué acertaste: explica por qué cada una de las otras opciones era falsa o incompleta.',
   NULL, NULL, 'publicado', '2027-02-10T06:52:00.000Z', 'acceso-guardia-civil',
   ARRAY['técnica de test', 'penalización', 'examen', 'estrategia']::text[], '{"title":"Preguntas trampa del examen de Guardia Civil: 7 tipos","description":"Cómo detectar las preguntas trampa del test de Guardia Civil: respuesta más completa, negaciones, cifras, penalización y ortografía. Con ejemplos propios."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('si-suspendes-como-replantear-la-siguiente-convocatoria', 'articulo', 'Si suspendes: cómo replantear la siguiente convocatoria', 'No entrar a la primera es frecuente. Cómo averiguar en qué fase y por qué quedaste fuera, cuánto te faltó frente a las notas de corte de 2022 a 2026, dónde están los puntos más baratos y cómo reorganizar la preparación para la siguiente convocatoria.', 'Si acabas de recibir una mala noticia, primero lo primero: **no entrar no te cierra la puerta**. Las bases de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) no limitan el número de veces que puedes presentarte; el límite que sí fijan es la edad: no cumplir 41 años en el año de la convocatoria (base 2.1.7). Consulta siempre las bases de la convocatoria vigente, porque cada una fija sus reglas.

**Respuesta corta:** averigua en qué fase y por qué quedaste fuera, calcula a cuántos puntos te quedaste de la nota de corte, identifica dónde están los puntos más baratos de conseguir y reorganiza la preparación alrededor de ese dato, no de la sensación. Y date unos días para digerirlo antes de decidir nada.

## Paso 0: antes de analizar, comprueba los plazos de revisión

Si el resultado acaba de publicarse, lo primero es saber si puedes pedir revisión:

- **Pruebas de ortografía, gramática, conocimientos, inglés y aptitudes intelectuales:** la base 7.11 permitía pedir la revisión de la calificación por escrito en **3 días hábiles** desde la publicación de las calificaciones.
- **Reconocimiento médico:** la calificación de «no apto» podía revisarse en **3 días hábiles**.
- **Entrevista personal:** el «no apto provisional» se revisa ante una Junta de psicólogos.

Los plazos son cortos y los fija cada convocatoria: compruébalos en la tuya en cuanto salgan las listas.

## Paso 1: descubre dónde se quedó el problema

Hay casos muy distintos, y cada uno pide un plan diferente:

| Qué pasó | Qué significa | Qué cambiar |
| --- | --- | --- |
| 6 o más errores en ortografía o en gramática | Excluido antes de que contara el resto | Entrenamiento diario de lengua |
| No llegaste a un mínimo (conocimientos 50/100, inglés 8/20, aptitudes 12/30) | Fuera por una prueba concreta | Reforzar esa prueba hasta tener margen |
| Superaste los mínimos, pero tu puntuación no alcanzó para ser convocado a las pruebas psicofísicas (1,5 aspirantes por plaza) o para obtener plaza | Faltaron puntos en conjunto | Subir nota global y revisar el concurso |
| No superaste las pruebas físicas | Fallo en una prueba apto/no apto | Plan de entrenamiento con margen sobre las marcas |
| «No apto» en reconocimiento médico o entrevista | Fallo en una prueba de aptitud | Informarte bien de la causa y, si procede, consultar con un profesional |

Los mínimos están en las bases 7.4 a 7.8. Si no sabes tu puntuación exacta, consulta las listas publicadas con tus resultados.

## Paso 2: compara con las notas de corte

La nota de corte, tal como la calculamos en ProLince a partir de las resoluciones de aspirantes propuestos, es la puntuación final del último aspirante que obtuvo plaza en el acceso libre, sobre **195 puntos** (oposición, hasta 150, más concurso, hasta 45). No existe una nota de corte oficial publicada como cifra aislada.

| Año | Nota de corte (acceso libre, sobre 195) |
| --- | --- |
| 2026 | 90,61 |
| 2025 | 95,80 |
| 2024 | 103,08 |
| 2023 | 95,75 |
| 2022 | 110,58 |

Varía mucho de un año a otro y **no se puede predecir** la siguiente. Qué es y por qué cambia está en [nota de corte de la Guardia Civil](/blog/nota-de-corte-guardia-civil). Úsala para medir tu distancia, no como una promesa: si te faltaron 3 puntos con la de 2026, con la de 2022 te habrían faltado más de 20.

## Paso 3: busca los puntos más baratos

No todos los puntos cuestan lo mismo. Algunas vías, de menos a más esfuerzo habitual:

| Vía | Cuánto puede sumar | Comentario |
| --- | --- | --- |
| Convertir errores de lectura en blancos o aciertos | Cada error evitado suma 1/3; cada error convertido en acierto, 4/3 | Técnica, no temario |
| Certificado de idiomas | B2 = 5, C1 = 7, C2 = 9 puntos de concurso | Solo cuenta el de mayor puntuación de cada idioma |
| Inglés | Hasta 20 puntos | Prueba corta; cada acierto vale lo mismo que en conocimientos |
| Aptitudes intelectuales | Hasta 30 puntos | Cada acierto vale 0,375; entrenable |
| Conocimientos | Hasta 100 puntos | El grueso, pero el más lento de mejorar |

Los méritos se explican en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos) y los certificados válidos, en [qué certificado de idiomas sacarte](/blog/certificados-de-idiomas-para-la-guardia-civil-cual-sacarte). Los méritos se valoran según el baremo de cada convocatoria: compruébalo cuando salga.

## Caso práctico: a 0,6 puntos

**Caso hipotético**, con la nota de corte de 2026. Un aspirante obtuvo 58 en conocimientos (64 aciertos, 18 errores), 10 en inglés y 16 en aptitudes: 84 puntos de oposición. Con 6 de concurso, sumó **90**, a 0,61 de la nota de corte.

Su diagnóstico:

- De los 18 errores de conocimientos, 5 fueron de lectura (negaciones y opciones incompletas). Si los hubiera dejado en blanco, habría sumado 5/3 ≈ 1,67 puntos; si los hubiera acertado, 5 × 4/3 ≈ 6,7.
- No tenía certificado de inglés. Un B2 le habría dado 5 puntos de concurso.
- En aptitudes, 16 sobre 30 equivale a unos 43 aciertos netos de 80: hay margen de mejora con entrenamiento regular.

Su plan para la siguiente convocatoria: técnica de lectura desde ya, preparar un certificado de inglés de nivel B2 y psicotécnico tres veces por semana, sin dejar de repasar el temario. Ninguna de estas medidas garantiza la plaza, porque la nota de corte cambia, pero ataca los puntos más accesibles primero.

## Paso 4: haz un diagnóstico sin dramatizar

Responde con datos, no con impresiones:

- ¿Cuántos simulacros hice y qué tendencia tenían?
- ¿Mis fallos eran de **temario**, de **lectura** o de **gestión del tiempo**? Para los de lectura, mira [cómo leer un enunciado tipo test](/blog/como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas).
- ¿Repasé de forma espaciada o dejé temas sin volver a ver?
- ¿Llegué a las físicas con margen o justo?
- ¿Mi horario era sostenible o acabé agotado?

## Paso 5: replantea el calendario

1. **Descansa unos días**, pero no semanas: reanudar cuesta más cuanto más tardas.
2. **Fija un objetivo de puntuación** a partir del histórico de notas de corte, con margen, y repártelo por pruebas.
3. **Corrige primero lo que más puntos te quitó**, no lo que más te gusta estudiar.
4. **Reserva simulacros periódicos** y analízalos.
5. **Mantén el contacto con el temario** aunque no haya convocatoria publicada: se olvida rápido.

Una distribución orientativa del primer mes tras el resultado:

| Semana | Foco |
| --- | --- |
| 1 | Descanso y análisis de resultados por escrito |
| 2 | Plan nuevo: objetivo por prueba y calendario |
| 3 | Vuelta al temario con tests de todo lo visto |
| 4 | Primer simulacro completo para medir el punto de partida |

Sobre la siguiente convocatoria, no hay fecha ni plazas garantizadas: lo que se sabe está en [qué se sabe de la convocatoria de 2027](/blog/convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra). Planifica con lo que sí controlas.

## Paso 6: cuida cómo te lo tomas

Es normal sentir frustración, rabia o tristeza. Hablarlo con alguien de confianza ayuda. Si el desánimo te bloquea durante semanas o notas ansiedad que te desborda, hablar con un profesional de la salud es una buena decisión; no es algo que un artículo pueda resolver. Hay ideas para los días sin ganas en [qué hacer cuando no te apetece estudiar](/blog/motivacion-que-hacer-los-dias-que-no-te-apetece-estudiar).

## Errores frecuentes

- **Volver a empezar igual,** con el mismo método y el mismo horario.
- **Empezar el temario desde cero** en lugar de repasar con tests lo que ya sabías.
- **Culpar solo a la nota de corte** sin mirar tus propios datos.
- **Olvidar el concurso:** un certificado puede valer más que semanas de temario.
- **Abandonar las físicas** hasta que salga la convocatoria.
- **Tardar meses en volver.**

## Checklist tras el resultado

- [ ] He comprobado si estoy en plazo para pedir revisión.
- [ ] Sé en qué fase quedé fuera y por qué.
- [ ] Sé a cuántos puntos me quedé frente a las notas de corte.
- [ ] He clasificado mis fallos (temario, lectura, tiempo).
- [ ] He revisado qué méritos puedo sumar.
- [ ] Tengo fecha para retomar el estudio.
- [ ] Sigo cumpliendo el requisito de edad para la próxima convocatoria.

Si quieres reorganizar la preparación con apoyo, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Puedo volver a presentarme si suspendo?

Las bases de 2026 no limitan el número de intentos; sí limitan la edad. Revisa las bases de la convocatoria vigente.

### ¿Cuánto tarda en salir la siguiente convocatoria?

No hay una fecha fija ni garantizada. Sigue las publicaciones del BOE y de la Guardia Civil.

### ¿Qué nota debería sacar para entrar?

No hay una cifra segura: la nota de corte cambia cada año. En los últimos cinco años osciló entre 90,61 y 110,58 sobre 195. Usa el histórico como referencia, con margen.

### ¿Conservo algo de un intento anterior?

Las bases de 2026 no prevén conservar notas de un año para otro. Lo que sí conservas son los méritos que tengas acreditados y lo que has aprendido. Consulta siempre las bases vigentes.

### ¿Puedo pedir que revisen mi examen?

Sí, dentro del plazo que fije la convocatoria; en la de 2026, 3 días hábiles desde la publicación de las calificaciones (base 7.11).

### ¿Es mejor cambiar de método o de academia?

Depende de tu diagnóstico. Si tus fallos eran de temario no repasado, quizá baste con cambiar el plan; si no tenías método, puede que necesites apoyo externo. Decide con tus datos.',
   NULL, NULL, 'publicado', '2027-02-15T06:17:00.000Z', 'acceso-guardia-civil',
   ARRAY['suspenso', 'nota de corte', 'planificación', 'convocatoria']::text[], '{"title":"Si suspendes la oposición a Guardia Civil: qué hacer","description":"Qué hacer si no apruebas la oposición a Guardia Civil: diagnostica el fallo, compárate con las notas de corte 2022-2026 y replantea la convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-saber-si-estas-preparado-para-aprobar-los-indicadores', 'articulo', 'Cómo saber si estás preparado: indicadores medibles frente a la nota de corte', 'Cómo traducir tus simulacros a puntos reales: la fórmula oficial, el margen sobre cada mínimo eliminatorio, tu total frente a las notas de corte de 2022 a 2026 y otros cuatro indicadores medibles. Con ejemplos resueltos y las cautelas necesarias.', '«¿Estoy preparado?» no se responde con la sensación, sino con **números comparables**. La sensación engaña en los dos sentidos: hay quien se ve mal con notas suficientes y quien se ve bien sin haber hecho nunca un simulacro completo. Eso sí, ningún indicador garantiza el resultado: te dice dónde estás, no lo que pasará.

**Respuesta corta:** calcula tus simulacros con la fórmula oficial (aciertos menos un tercio de los errores), comprueba que superas **todos** los mínimos eliminatorios con margen y a la vez, suma tu puntuación de oposición y de concurso y compárala con las notas de corte históricas. Completa el cuadro con la tendencia de tus últimos simulacros, el tiempo, el temario dominado y las marcas físicas.

## Indicador 1: la puntuación, calculada como en la convocatoria

Según la base 7.3 de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), la puntuación de cada prueba es Y × (A − E/(N − 1)) / T, donde Y es la puntuación máxima, T el número de preguntas, A los aciertos, E los errores y N las opciones (4). En la práctica, cada error resta un tercio de acierto y las preguntas en blanco no restan:

| Prueba | Preguntas | Puntuación | Cálculo práctico |
| --- | --- | --- | --- |
| Conocimientos | 100 | 0-100 | aciertos − errores/3 |
| Inglés | 20 | 0-20 | aciertos − errores/3 |
| Aptitudes intelectuales | 80 | 0-30 | (aciertos − errores/3) × 30 / 80 |

En aptitudes, cada acierto vale 0,375 y cada error resta 0,125. El desarrollo completo está en [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil).

**Ejemplo propio resuelto:** 72 aciertos y 21 errores en conocimientos dan 72 − 7 = **65**. En inglés, 14 aciertos y 3 errores dan 14 − 1 = **13**. En aptitudes, 58 aciertos y 12 errores dan (58 − 4) × 30 / 80 = **20,25**.

## Indicador 2: el margen sobre los mínimos eliminatorios

Los mínimos están en las bases 7.4 a 7.8:

| Prueba | Mínimo | Equivale a |
| --- | --- | --- |
| Ortografía | Menos de 6 errores | 5 errores como máximo |
| Gramática | Menos de 6 errores | 5 errores como máximo |
| Conocimientos | 50 sobre 100 | 50 aciertos netos |
| Inglés | 8 sobre 20 | 8 aciertos netos |
| Aptitudes intelectuales | 12 sobre 30 | 32 aciertos netos de 80 (12 × 80 / 30) |

Tu objetivo no es rozar el mínimo, sino superarlo **con margen en todas las pruebas a la vez**, porque basta con fallar una. El día del examen hay nervios y preguntas que no controlas. Un criterio **propio y orientativo** para leer tus simulacros:

| Prueba | Zona de riesgo | Zona razonable |
| --- | --- | --- |
| Ortografía y gramática | 4-5 errores | 2 errores o menos |
| Conocimientos | Menos de 55 | Más de 60 |
| Inglés | Menos de 10 | 12 o más |
| Aptitudes | Menos de 15 | 18 o más |

No son cifras oficiales ni garantizan nada: sirven para decidir dónde poner tus horas.

## Indicador 3: tu total frente a las notas de corte

La nota de corte, tal como la calculamos en ProLince con las resoluciones de aspirantes propuestos, es la puntuación final del último aspirante que obtuvo plaza en el acceso libre, sobre **195 puntos**: oposición (conocimientos + inglés + aptitudes, hasta 150) más concurso (méritos, hasta 45). No existe una nota de corte oficial publicada como cifra aislada.

| Año | Nota de corte (acceso libre, sobre 195) |
| --- | --- |
| 2022 | 110,58 |
| 2023 | 95,75 |
| 2024 | 103,08 |
| 2025 | 95,80 |
| 2026 | 90,61 |

Cómo funciona la cifra y por qué cambia, en [la nota de corte](/blog/nota-de-corte-guardia-civil).

### Cuánto necesitas en la oposición según tus méritos

Lo útil es restar tus puntos de concurso para saber qué puntuación de oposición te habría hecho falta cada año. **Ejemplo propio**, con 9 puntos de méritos:

| Año | Nota de corte | Oposición necesaria con 9 de concurso |
| --- | --- | --- |
| 2022 | 110,58 | 101,58 |
| 2023 | 95,75 | 86,75 |
| 2024 | 103,08 | 94,08 |
| 2025 | 95,80 | 86,80 |
| 2026 | 90,61 | 81,61 |

Con el simulacro del indicador 1 (65 + 13 + 20,25 = **98,25** de oposición) y 9 de concurso, el total sería **107,25**: por encima de las notas de corte de 2023 a 2026 y por debajo de la de 2022. Es una comparación ilustrativa, no una predicción. Qué méritos puedes sumar depende del baremo de cada convocatoria: compruébalo en la vigente.

## Indicador 4: la tendencia, no un simulacro suelto

Un simulacro aislado tiene mucho ruido. Mira lo que hacen **tus últimos cuatro o cinco**:

- ¿La media sube, se estanca o baja?
- ¿Cuánta diferencia hay entre el mejor y el peor? Una dispersión grande indica que tu nota depende mucho de las preguntas que te toquen.
- ¿Superas los mínimos en **todos** o solo en algunos?
- ¿Tus errores son de lectura, de confusión o de temario?

Apúntalos en una hoja con fecha, nota por prueba y número de errores. Cómo analizarlos en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Indicador 5: el tiempo

La prueba de conocimientos teórico-prácticos dura **140 minutos** para ortografía, gramática, conocimientos e inglés, y las aptitudes intelectuales, **55 minutos** para 80 preguntas. Pregúntate:

- ¿Termino el simulacro completo dentro de los 140 minutos, con tiempo para repasar?
- ¿Completo el psicotécnico o me quedan preguntas sin ver?
- ¿Mi nota baja en la última parte del simulacro? Si es así, el problema puede ser de resistencia o de ritmo, no de temario.

## Indicador 6: temario dominado, no leído

Haz una tabla con los 23 temas del programa y marca cada uno como **visto**, **repasado** o **dominado**. «Dominado» significa que respondes un test del tema, sin apuntes, con pocos fallos, y que lo has hecho al menos dos veces en días distintos. Si la mayoría está en «visto», tienes lectura, no preparación.

## Indicador 7: las pruebas físicas, con margen

Las pruebas físicas son de apto o no apto, y un «no apto» te excluye aunque tu nota sea excelente. Cronometra tus marcas en un día normal, sin preparación especial, y compáralas con las del apéndice II de la convocatoria. Para menores de 35 años:

| Prueba | Hombres | Mujeres |
| --- | --- | --- |
| Carrera de 2.000 m | 9:25 | 11:14 |
| Circuito de agilidad | 14,00 s | 16,00 s |
| Extensiones de brazos | 16 | 11 |
| Natación 50 m libre | 70 s | 81 s |

Las marcas de los demás tramos de edad y cómo entrenarlas están en [las pruebas físicas y sus marcas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento). Si tienes dolor o una lesión, consulta con un profesional antes de forzar.

## Caso práctico: leer el cuadro completo

**Caso hipotético.** Una opositora registra sus cinco últimos simulacros de conocimientos: 58, 61, 57, 63 y 64. En inglés: 9, 11, 10, 12, 11. En aptitudes, entre 17 y 19. Ortografía y gramática, entre 1 y 3 errores. Tiene 5 puntos de concurso por un B2.

- **Conocimientos:** tendencia al alza, en zona razonable.
- **Inglés:** por encima del mínimo, pero con una nota de 9 reciente: margen corto.
- **Total aproximado** con sus últimos resultados (64 + 11 + 18 + 5): **98**. Por encima de las notas de corte de 2023, 2025 y 2026, y por debajo de las de 2022 y 2024.

Su conclusión: no está «preparada» ni «sin preparar». Está en una zona competitiva, pero sin margen ante un año exigente. Decide subir el inglés, que es la prueba con más riesgo y la que más puntos le puede dar en poco tiempo, y seguir con un simulacro semanal. Así se usa el cuadro: para decidir, no para tranquilizarse.

## Cautelas importantes

- **Los simulacros no son el examen.** Su dificultad depende de quién los elabora; no los trates como una predicción.
- **La nota de corte no se conoce de antemano** y cambia mucho de un año a otro, como se ve en la tabla. Un margen amplio sobre el histórico da tranquilidad, pero no garantiza plaza.
- **Hay pruebas posteriores:** físicas, reconocimiento médico y entrevista personal.
- **Los números no miden tu bienestar.** Si la presión te desborda, habla con un profesional.

## Qué hacer con el resultado

- **Por debajo de algún mínimo:** esa prueba es tu única prioridad hasta tener margen.
- **Mínimos superados, total por debajo del histórico:** busca los puntos más baratos (errores de lectura, inglés, aptitudes, méritos).
- **Total por encima del histórico con margen:** mantén el ritmo, no cambies el método a última hora y cuida las físicas.

Si estás a pocos meses del examen, encaja estas decisiones en [el plan de repaso de los últimos tres meses](/blog/plan-de-repaso-para-los-ultimos-tres-meses-antes-del-examen). Y si no entraras, lo siguiente es [replantear la siguiente convocatoria](/blog/si-suspendes-como-replantear-la-siguiente-convocatoria). Para practicar con simulacros corregidos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye pruebas tipo test.

## Checklist: ¿estás preparado?

- [ ] Calculo mis simulacros con la fórmula oficial.
- [ ] Supero los cinco mínimos eliminatorios en mis últimos simulacros, con margen.
- [ ] Sé cuántos puntos de concurso tengo.
- [ ] Sé a qué distancia está mi total de las notas de corte de los últimos años.
- [ ] La tendencia de mis últimos cuatro o cinco simulacros es estable o al alza.
- [ ] Termino el examen completo dentro del tiempo.
- [ ] La mayoría de los temas están en «dominado».
- [ ] Supero las marcas físicas con margen.

## Preguntas frecuentes

### ¿Qué nota de simulacro garantiza el aprobado?

Ninguna. La nota de corte cambia cada año y los simulacros no coinciden con el examen real.

### ¿Cómo calculo el psicotécnico?

Aciertos menos errores/3, multiplicado por 30 y dividido entre 80. Necesitas 12 sobre 30 como mínimo, que equivale a 32 aciertos netos.

### ¿Cuántos simulacros necesito para valorar mi nivel?

No hay una cifra oficial. La tendencia de cuatro o cinco seguidos es más fiable que uno solo.

### ¿Cuenta el concurso en la nota de corte?

Sí: la puntuación final sobre 195 suma concurso (hasta 45) y oposición (hasta 150).

### ¿Qué pasa si empato con otro aspirante?

La base 7.10 desempata por mayor nota en conocimientos, luego en inglés, luego en aptitudes intelectuales y, por último, por mayor edad.

### ¿Cuenta la entrevista o el test de personalidad en la nota?

No suman puntos a la puntuación final. La entrevista se califica como apto o no apto, y el perfil de personalidad se utiliza en ella.

### ¿Hay una nota de corte oficial?

No se publica como cifra aislada. Las de este artículo las calculamos a partir de las resoluciones de aspirantes propuestos.',
   NULL, NULL, 'publicado', '2027-02-18T06:08:00.000Z', 'acceso-guardia-civil',
   ARRAY['nota de corte', 'simulacros', 'puntuación', 'preparación']::text[], '{"title":"Cómo saber si estás preparado: indicadores y nota de corte","description":"Siete indicadores para saber si estás preparado para la oposición de Guardia Civil: fórmula oficial, mínimos, simulacros y notas de corte de 2022 a 2026."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('plan-de-repaso-para-los-ultimos-tres-meses-antes-del-examen', 'articulo', 'Plan de repaso para los últimos tres meses antes del examen', 'Un plan de repaso semana a semana para los tres meses previos al examen de Guardia Civil: cerrar temario, simulacros y corrección, cuaderno de errores, mínimos de cada prueba y última semana. Orientativo, para adaptar a tu nivel y a la fecha que anuncie el Tribunal.', 'Los últimos tres meses no sirven para aprender todo de cero, sino para **consolidar lo que sabes, corregir lo que fallas y ensayar el examen**. Un buen plan pasa de «ver temas» a «recuperarlos y aplicarlos», y mide cada semana si va por buen camino.

**Respuesta corta:** divide las trece semanas en tres fases (cerrar y consolidar, simulacros y corrección, afinar) más una última semana de descarga. Asegura primero los mínimos eliminatorios de cada prueba, después sube nota, y revisa el plan cada semana con los datos de tus simulacros. Es un esquema orientativo y propio: ajústalo a tu punto de partida.

## Antes de empezar: cuenta hacia atrás desde una fecha

La convocatoria no fija la fecha del examen: la anuncia el Tribunal de Selección. Si todavía no la conoces, **fija una fecha provisional** y monta el plan hacia atrás; cuando se publique la fecha real, desplaza las fases. Lo importante es la secuencia, no el calendario exacto.

## Qué tienes que cubrir y qué te elimina

Según la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), la prueba de conocimientos teórico-prácticos dura **140 minutos** e incluye ortografía, gramática, conocimientos generales e inglés. Aparte va el psicotécnico. Estos son los umbrales que no puedes dejar de superar:

| Prueba | Formato | Te elimina |
| --- | --- | --- |
| Ortografía | 5 frases con 4 palabras subrayadas | 6 errores o más |
| Gramática | 20 frases | 6 errores o más |
| Conocimientos | 100 preguntas, 4 opciones | Menos de 50 sobre 100 |
| Inglés | 20 preguntas, 4 opciones | Menos de 8 sobre 20 |
| Aptitudes intelectuales | 80 preguntas en 55 minutos | Menos de 12 sobre 30 (32 aciertos netos) |

Después vienen las pruebas físicas, el reconocimiento médico y la entrevista. El detalle del examen está en [la estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## El orden de prioridades

1. **Primero, los mínimos.** Una prueba por debajo del mínimo te deja fuera aunque el resto sea excelente.
2. **Después, la nota global.** La puntuación final (oposición hasta 150 más concurso hasta 45) ordena a los aspirantes; con ella se convoca a las pruebas físicas y médicas a 1,5 aspirantes por plaza.
3. **En paralelo, las físicas.** No puntúan, pero un «no apto» te excluye.

## Reparto orientativo del tiempo semanal

Una propuesta propia para quien tiene el temario visto y los mínimos más o menos encarrilados. Si una prueba está en riesgo, súbele el porcentaje:

| Bloque | % del tiempo de estudio |
| --- | --- |
| Conocimientos (tests, repaso, simulacros) | 60 % |
| Inglés | 15 % |
| Psicotécnico | 10 % |
| Ortografía y gramática | 10 % |
| Revisión del plan y cuaderno de errores | 5 % |

El entrenamiento físico va aparte de estas horas.

## Fase 1 (semanas 1-4): cerrar temario y consolidar

- **Termina de ver los temas pendientes.** Si te faltan muchos, prioriza el repaso de lo ya visto y decide con realismo qué entra en tu plan.
- **Pasa del subrayado a las preguntas.** La práctica de recuperación (intentar recordar sin mirar) y la práctica distribuida (repartir los repasos en el tiempo) son las dos técnicas mejor valoradas en la revisión de [Dunlosky y colaboradores (2013)](https://doi.org/10.1177/1529100612453266). Aplicado a leyes: [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).
- **Abre un cuaderno de errores** (lo explicamos más abajo).
- **Semana 1: un simulacro completo** para tener un punto de partida. Semana 3: otro.

## Fase 2 (semanas 5-9): simulacros y análisis

Un simulacro completo cada semana o cada dos, con su corrección a fondo. Un esquema:

| Semana | Foco |
| --- | --- |
| 5 | Simulacro completo + corrección profunda |
| 6 | Reforzar los 3 o 4 temas con más fallos |
| 7 | Simulacro + bloque extra de inglés y psicotécnico |
| 8 | Tests mixtos de todos los temas + cuaderno de errores |
| 9 | Simulacro + revisión del plan |

En los tests de esta fase, **mezcla temas** en lugar de hacerlos siempre por bloques: en el examen no sabrás de qué tema viene cada pregunta. La corrección importa más que el simulacro: anota por qué fallaste (no lo sabía, lo confundí, leí mal, dudé y cambié). Método en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados), y para los errores de lectura, [cómo leer un enunciado tipo test](/blog/como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas).

## Fase 3 (semanas 10-12): afinar

- **Un simulacro por semana, en condiciones reales:** 140 minutos seguidos con ortografía, gramática, conocimientos e inglés, sin apuntes, con bolígrafo negro y reloj.
- **Una sesión de psicotécnico cronometrada** de 80 preguntas en 55 minutos cada semana.
- **Repaso del cuaderno de errores**, no de todo el temario por igual.
- **Fija tu estrategia de blancos:** con la penalización de un tercio por error, decide con tus datos cuándo contestas y cuándo no.
- **Mantén las pruebas físicas** sin sobrecargarte; si tienes dudas sobre cargas o lesiones, consulta con un profesional.

## Semana 13: la última semana

- **Baja el volumen.** No estrenes temas.
- **Repasa esquemas, cifras y errores recurrentes.**
- **Cuida el sueño y la rutina:** intenta estudiar a la misma hora a la que será el examen.
- **Organiza la logística:** documentación, desplazamiento, material permitido. Lo tienes en [qué llevar al examen y qué está prohibido](/blog/que-llevar-al-examen-de-la-guardia-civil-y-que-esta-prohibido), y compruébalo siempre en la convocatoria y en lo que publique el Tribunal.
- **Evita compararte** con otros opositores en los últimos días.

## El cuaderno de errores, paso a paso

1. **Cada fallo de simulacro o test va al cuaderno** con tres datos: tema, norma y artículo, y causa del fallo.
2. **Escribe la respuesta correcta como pregunta**, no como frase: «¿Plazo máximo de la detención preventiva?» en lugar de «La detención preventiva dura 72 horas».
3. **Repásalo con preguntas** al cabo de unos días y otra vez una o dos semanas después. Las investigaciones sobre espaciado, como el metaanálisis de Cepeda y colaboradores (2006), muestran que repartir los repasos ayuda a retener más, aunque el intervalo ideal depende de cuánto tiempo necesites recordarlo.
4. **Tacha lo que aciertes dos veces seguidas** en días distintos.

## Caso práctico

**Caso hipotético.** A trece semanas de la fecha provisional, un opositor hace su primer simulacro: 55 en conocimientos, 7 en inglés, 5 errores en gramática. Su diagnóstico: el inglés está por debajo del mínimo y la gramática, al límite. Ajusta el reparto: inglés pasa al 25 % del tiempo y la gramática se trabaja 15 minutos al día. En la semana 7 saca 9 en inglés y 3 errores en gramática; en la 9, 61 en conocimientos. A partir de ahí devuelve el inglés al 15 % y dedica más tiempo a subir nota en conocimientos. Ninguna cifra es una promesa: es cómo se usa el dato para decidir.

## Si vas justo

Si a tres meses ves que no llegarás a todo, no abandones el plan: **prioriza por puntos**. Primero asegura los mínimos de cada prueba; después sube nota en lo que más rinda. Cuántas horas puedes dedicar depende de tu situación: lo tienes en [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil). Si el agobio te supera, habla con un profesional.

En el próximo artículo veremos cómo traducir tus simulacros en indicadores medibles para saber si estás preparado.

## Errores frecuentes

- **Empezar temas nuevos en las últimas semanas.**
- **Hacer simulacros sin corregirlos a fondo.**
- **Repasar solo lo que te gusta** y no lo que te elimina.
- **Abandonar inglés y psicotécnico** porque «son pocas preguntas».
- **Hacer los simulacros sin ortografía, gramática e inglés,** y no entrenar los 140 minutos completos.
- **Dejar de entrenar las físicas** hasta conocer la nota.

## Checklist semanal

- [ ] He hecho el simulacro o los tests previstos.
- [ ] He corregido y clasificado cada fallo.
- [ ] Supero los cinco umbrales eliminatorios, con margen.
- [ ] He repasado el cuaderno de errores.
- [ ] He trabajado inglés, psicotécnico y lengua.
- [ ] He entrenado las físicas.
- [ ] He ajustado el plan de la semana siguiente con estos datos.

Si necesitas apoyo, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye simulacros y calendario.

## Preguntas frecuentes

### ¿Cuántos simulacros hacer en los últimos tres meses?

No hay una cifra oficial. Una referencia razonable es uno cada una o dos semanas al principio y uno por semana en el último mes, siempre bien corregidos.

### ¿Estudio temas nuevos la última semana?

Es mejor repasar lo que ya conoces y tus errores. Introducir temas nuevos suele generar inseguridad y quita tiempo al repaso.

### ¿Cómo reparto inglés y psicotécnico?

Con bloques fijos cada semana, porque tienen mínimos eliminatorios. Si alguno está en riesgo, súbele el tiempo hasta tener margen.

### ¿Y si no sé la fecha del examen?

La convocatoria no la fija: la anuncia el Tribunal. Pon una fecha provisional, monta el plan hacia atrás y desplázalo cuando se publique la real.

### ¿Tengo que seguir entrenando las físicas?

Sí. Las pruebas físicas llegan después del examen y son eliminatorias. Mantén el entrenamiento sin sobrecargarte.

### ¿Qué hago si en la semana 9 no llego a los mínimos?

Concentra el tiempo en la prueba que te elimina y aparca subir nota en las demás hasta tener margen.',
   NULL, NULL, 'publicado', '2027-02-17T06:51:00.000Z', 'acceso-guardia-civil',
   ARRAY['repaso', 'planificación', 'simulacros', 'examen']::text[], '{"title":"Plan de repaso de los últimos 3 meses antes del examen","description":"Plan de repaso de 13 semanas antes del examen de Guardia Civil: temario, simulacros, cuaderno de errores, inglés, psicotécnico, físicas y última semana."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

