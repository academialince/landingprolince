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
   NULL, NULL, 'publicado', '2027-01-29T06:28:00.000Z', 'acceso-guardia-civil',
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
   NULL, NULL, 'publicado', '2027-01-31T06:02:00.000Z', 'acceso-guardia-civil',
   ARRAY['test', 'técnica de examen', 'lectura', 'penalización']::text[], '{"title":"Cómo leer un enunciado tipo test: método en 5 pasos","description":"Cómo leer los enunciados del test de Guardia Civil: absolutos, dobles negaciones, «excepto», la opción más completa y la gestión del tiempo. Con ejemplos."}'::jsonb, '{}'::jsonb)
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
   NULL, NULL, 'publicado', '2027-01-27T06:54:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'falsos amigos', 'vocabulario', 'examen']::text[], '{"title":"Falsos amigos en inglés para el examen de la Guardia Civil","description":"Los falsos amigos en inglés más conocidos, con significado y ejemplo, los parciales y cómo evitar caer en ellos en un test de cuatro opciones."}'::jsonb, '{}'::jsonb)
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
   NULL, NULL, 'publicado', '2027-02-02T06:36:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'nota mínima', 'penalización', 'examen']::text[], '{"title":"Inglés Guardia Civil: cómo llegar a los 8 puntos mínimos","description":"Cómo se puntúa el inglés de la Guardia Civil: 20 preguntas, el error resta un tercio y el mínimo es 8. Combinaciones, cuándo arriesgar y ejemplos."}'::jsonb, '{}'::jsonb)
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
   '/blog/plan-de-repaso-para-los-ultimos-tres-meses-antes-del-examen.jpg', 'Opositor repasando fichas ante una pared con un calendario de tres meses y esquemas', 'publicado', '2027-02-01T06:19:00.000Z', 'acceso-guardia-civil',
   ARRAY['repaso', 'planificación', 'simulacros', 'examen']::text[], '{"title":"Plan de repaso de los últimos 3 meses antes del examen","description":"Plan de repaso de 13 semanas antes del examen de Guardia Civil: temario, simulacros, cuaderno de errores, inglés, psicotécnico, físicas y última semana."}'::jsonb, '{}'::jsonb)
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
   NULL, NULL, 'publicado', '2027-01-28T06:11:00.000Z', 'acceso-guardia-civil',
   ARRAY['técnica de test', 'penalización', 'examen', 'estrategia']::text[], '{"title":"Preguntas trampa del examen de Guardia Civil: 7 tipos","description":"Cómo detectar las preguntas trampa del test de Guardia Civil: respuesta más completa, negaciones, cifras, penalización y ortografía. Con ejemplos propios."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('que-llevar-al-examen-de-la-guardia-civil-y-que-esta-prohibido', 'articulo', 'Qué llevar al examen de la Guardia Civil y qué está prohibido', 'Bolígrafo negro y DNI sí; móviles, relojes o gafas inteligentes, diccionarios y calculadoras no. Lo que dice la convocatoria de 2026 para cada prueba, qué pasa si lo incumples y una lista para la víspera.', 'La respuesta corta: **lleva bolígrafo de tinta negra y tu documento de identidad, y deja fuera móviles, relojes o gafas inteligentes, diccionarios, libros, apuntes y calculadoras**. Incumplirlo no es una falta menor: la convocatoria prevé la exclusión del proceso y la pérdida de los derechos de examen.

Todo lo que sigue sale de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), en concreto de las bases 5.3, 6.1, 6.2 y 6.5. Si en tu convocatoria cambia algo, manda la que esté vigente, y el Tribunal de Selección puede dar instrucciones concretas el día de la prueba: escúchalas.

## Lo que dice la base 5.3, palabra por palabra

La norma central es breve y conviene leerla entera:

> «Salvo que lo determine el Tribunal de Selección, en ningún caso, se permitirá el uso de diccionarios, libros, apuntes, calculadoras o cualquier otro tipo de ayudas. Además, está prohibida la entrada en las aulas y salas de examen y en las de entrevistas personales con teléfonos móviles, relojes o gafas inteligentes o con cualquier dispositivo que permita la grabación, reproducción, transmisión o recepción de datos, imágenes o sonidos.»

Y el párrafo siguiente fija la consecuencia: «El incumplimiento de estas normas llevará consigo la exclusión del aspirante del proceso de selección y la pérdida de los derechos de examen».

Fíjate en tres matices:

1. **Hay dos prohibiciones distintas.** Una es de **uso** (diccionarios, libros, apuntes, calculadoras, cualquier ayuda). La otra es de **entrada** (móviles, relojes o gafas inteligentes y dispositivos que graben, reproduzcan, transmitan o reciban). Con los dispositivos no basta con no usarlos: no pueden entrar contigo.
2. **Alcanza a la entrevista personal**, no solo a las aulas de examen.
3. **La única excepción** es que el Tribunal de Selección determine otra cosa. Si no lo dice expresamente, no se permite.

## Qué llevar según la prueba

| Prueba | Qué exige la convocatoria | Base |
|---|---|---|
| Ortografía, gramática, conocimientos generales e inglés | Bolígrafo de tinta de color negro | 6.1.1 |
| Psicotécnica | Lo que indique el Tribunal (la convocatoria no detalla material) | 6.1.2 |
| Pruebas físicas | Atuendo deportivo adecuado y certificado médico oficial expedido en los 20 días anteriores (o la ficha médica que admite la base) | 6.1.3 a) |
| Entrevista personal | Informe de vida laboral (o, si eres militar, la Hoja General de Servicios); antes se rellena el cuestionario BIODATA | 6.1.3 b) |
| Reconocimiento médico | Presentarse en ayunas y con retención de orina | 6.1.3 c) |
| Todas | DNI u otro documento legal que lo sustituya | 6.5 |

### El bolígrafo negro
La base 6.1.1 lo dice para las cuatro pruebas de conocimientos: «irán provistos de bolígrafo de tinta de color negro». Lleva **al menos dos o tres**. La convocatoria no habla de repuestos, pero un bolígrafo que se seca a mitad de los 140 minutos no tiene arreglo rápido. Practica en casa con el mismo modelo que vayas a llevar: si marcas en simulacros con lápiz, el día del examen notarás la diferencia.

### El documento de identidad
Según la base 6.5, el Tribunal, sus colaboradores y auxiliares pueden pedirte que acredites tu identidad **en cualquier momento**, y para eso debes ir con el DNI «o cualquier otro documento legal que lo sustituya». **No acreditarla supone la exclusión.** Revisa la fecha de caducidad semanas antes: renovar el DNI requiere cita y no siempre la hay de un día para otro.

### Certificado médico y ropa deportiva
Para las pruebas físicas debes entregar, antes de empezar, el certificado médico oficial con la frase literal que exige la base, en los modelos de los apéndices III y IV. No presentarlo en esos términos supone la exclusión. Lo explicamos con detalle en [certificado médico de las pruebas físicas](/blog/certificado-medico-pruebas-fisicas-guardia-civil).

### Documentación para la entrevista
La vida laboral (o la Hoja General de Servicios) se aporta en la fecha de citación de la entrevista. El BIODATA no puntúa, pero sirve de apoyo a los entrevistadores. Tienes el proceso en [entrevista y reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil).

## Qué no debes llevar (o debes dejar fuera)

- **Teléfono móvil**, aunque esté apagado: la prohibición es de entrada en el aula.
- **Reloj inteligente o pulsera con conexión**, y **gafas inteligentes**.
- **Auriculares**, incluidos los inalámbricos: son dispositivos que reproducen o reciben sonido.
- **Cualquier aparato que grabe, reproduzca, transmita o reciba** datos, imágenes o sonidos.
- **Diccionarios, libros, apuntes, calculadoras** y «cualquier otro tipo de ayudas».

### ¿Y un reloj normal?
La base prohíbe expresamente los relojes **inteligentes**. No dice nada específico de los relojes analógicos o digitales sin conexión, ni garantiza que haya un reloj en el aula. Ese detalle lo concreta el Tribunal, así que no lo des por supuesto: si quieres controlar el tiempo, lleva preparado un reparto de minutos por partes que puedas seguir aunque no tengas reloj, y atiende a las indicaciones del día. Cómo repartir los 140 minutos lo tienes en [la estructura del examen](/blog/examen-conocimientos-guardia-civil-estructura).

### ¿Dónde dejo el móvil?
La convocatoria no prevé consignas ni taquillas. Lo más seguro es no llevarlo, o dejarlo en el coche o con un acompañante. Si el Tribunal habilita algún sistema para depositarlo, sigue sus instrucciones, pero no cuentes con ello.

## El único llamamiento: llegar tarde también excluye

La base 6.2 establece que se te convoca a cada prueba en **único llamamiento**. Si no estás presente cuando el Presidente del Tribunal declara el inicio de la prueba o de tu turno, quedas excluido, «sea cual fuere la causa que al respecto pueda alegarse», salvo los supuestos del capítulo V del Reglamento de ordenación de la enseñanza en la Guardia Civil. Si la prueba se hace en varios días, el Tribunal puede autorizar un cambio de día o tanda **por causas justificadas y antes de que empiecen**.

Hay otra regla que mucha gente no conoce: una vez que haces la primera prueba del día, debes hacer **todas las previstas para esa fecha**, en el orden establecido. Si abandonas o no superas alguna, quedas excluido.

El lugar, la fecha y la hora los anuncia el Tribunal (base 5.4). Y cuando hay que ordenar a los aspirantes, en 2026 se empieza por el primer apellido que comienza por la letra **«U»** (base 6.4).

## Casos prácticos (hipotéticos)

**Caso 1. Laura llega con el reloj inteligente puesto.** Se da cuenta en la puerta del aula. Lo correcto es no entrar con él: dejarlo fuera según indique el personal o volver a dejarlo en el coche si hay tiempo. Entrar con él ya incumple la base 5.3, aunque no lo use.

**Caso 2. Javier no encuentra el DNI la mañana del examen, pero tiene el pasaporte en vigor.** La base 6.5 admite «cualquier otro documento legal que lo sustituya». Un documento oficial en vigor que acredite la identidad debería servir, pero si tienes dudas sobre un documento concreto, resuélvelas antes con la información del Tribunal, no en la puerta.

**Caso 3. A Marta se le acaba la tinta a mitad de la prueba de conocimientos.** Si llevaba un segundo bolígrafo negro, pierde diez segundos. Si no, depende de lo que pueda resolver el personal del aula, y pierde tiempo y calma. Por eso se llevan varios.

**Caso 4. Pedro se queda dormido y llega cuando ya ha empezado su turno.** El único llamamiento no admite excusas: la base dice «sea cual fuere la causa». Queda excluido. Duerme cerca si el examen es lejos y calcula el viaje con margen.

## Errores frecuentes

- **Pensar que el móvil apagado no cuenta.** Cuenta: se prohíbe la entrada.
- **Olvidar que la prohibición alcanza a la entrevista.** Lo dice la base 5.3.
- **Llevar un solo bolígrafo**, o uno azul. La convocatoria pide tinta negra.
- **No mirar la caducidad del DNI** hasta la víspera.
- **Llegar justo.** Con colas de identificación y cientos de aspirantes, llegar a la hora exacta es llegar tarde.
- **Ensayar con condiciones distintas.** Si en tus [simulacros](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados) consultas el móvil o paras el cronómetro, el día del examen te faltará el hábito de trabajar 140 minutos seguidos.

## Lista para la víspera

1. DNI (u otro documento legal que lo sustituya) en vigor, en la cartera o en la mochila.
2. Tres bolígrafos de tinta negra, probados.
3. Lugar, fecha, hora y turno anotados en papel, por si no puedes mirar el móvil.
4. Ruta y tiempo de viaje calculados, con margen para aparcar y hacer cola.
5. Móvil, reloj inteligente y auriculares fuera del aula.
6. Ropa cómoda por capas: la temperatura de un aula grande es impredecible.
7. Para las físicas: certificado médico con la fecha bien calculada y ropa deportiva. Para el reconocimiento: ayunas y retención de orina. Para la entrevista: vida laboral.

Si es tu primera oposición, [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) te da el contexto general, y el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) de ProLince incluye simulacros para ensayar en condiciones parecidas a las reales.

## Preguntas frecuentes

### ¿Puedo llevar el móvil apagado en la mochila?
La base 5.3 prohíbe la **entrada** en las aulas y salas de examen con teléfonos móviles, sin distinguir si están encendidos o apagados. Lo más seguro es no llevarlo.

### ¿Vale un bolígrafo azul?
La convocatoria pide bolígrafo de tinta de color negro para ortografía, gramática, conocimientos generales e inglés. Usa negro.

### ¿Qué pasa si se me olvida el DNI?
La base 6.5 admite el DNI «o cualquier otro documento legal que lo sustituya». Sin acreditar la identidad, la consecuencia es la exclusión.

### ¿Se aplican las mismas normas en la entrevista personal?
Sí. La prohibición de entrar con móviles, relojes o gafas inteligentes y dispositivos de grabación o transmisión menciona expresamente las salas de entrevistas personales.

### ¿Puedo llevar calculadora a la psicotécnica?
No, salvo que el Tribunal lo determine. La base 5.3 prohíbe con carácter general las calculadoras y cualquier otra ayuda.

### ¿Puedo cambiar de día si coincide con algo importante?
Solo si la prueba se celebra en más de un día, por causas justificadas y pidiéndolo antes de su inicio; lo decide el Tribunal (base 6.2).

### ¿Puedo llevar agua o comida?
La convocatoria no lo regula. Lo decide el Tribunal o la organización de la sede, así que sigue sus indicaciones y no dependas de ello: come bien antes de entrar.',
   NULL, NULL, 'publicado', '2027-01-30T06:45:00.000Z', 'acceso-guardia-civil',
   ARRAY['examen', 'normas del examen', 'material permitido', 'convocatoria']::text[], '{"title":"Qué llevar al examen de la Guardia Civil y qué no","description":"Material permitido y prohibido en el examen de la Guardia Civil según la convocatoria de 2026: bolígrafo negro, DNI, móviles y relojes inteligentes."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

