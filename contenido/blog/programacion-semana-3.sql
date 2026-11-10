-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('aptitud-espacial-psicotecnico-guardia-civil', 'articulo', 'Aptitud espacial en el psicotécnico: cómo resolver cubos, giros y figuras', 'Rotar figuras, desplegar cubos y contar piezas ocultas parece cosa de talento, pero se aprende con trucos concretos. Los ejercicios espaciales más habituales y las reglas que los resuelven sin dibujar nada.', 'La aptitud espacial es la parte del razonamiento que más gente da por perdida: «yo no tengo visión espacial». Pero la mayoría de los ejercicios se resuelven con **reglas fijas**, no con intuición.

Una precisión: la convocatoria describe una batería de aptitudes intelectuales y no detalla los tipos de ejercicio. Estos son los formatos espaciales habituales en pruebas de este tipo; sirven para entrenar aunque no se pueda asegurar cuáles aparecerán. El contexto de la prueba está en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

## 1. Rotación de figuras

Se muestra una figura y hay que decir cuál de las opciones es **la misma figura girada**, no su reflejo.

**La regla clave:** una rotación nunca invierte el sentido. Si en la original la parte superior tiene un saliente a la derecha, en la rotada ese saliente **seguirá estando a la derecha respecto al propio dibujo**, aunque la figura esté boca abajo.

**Trucos:**
- **Fíjate en un rasgo distintivo** (un ángulo, una esquina marcada) y síguelo en cada opción.
- **Descarta los espejos primero**: son opciones con el mismo contenido pero en orden inverso. Suelen estar puestas a propósito.
- Haz el giro **mentalmente por pasos de 90 grados**.

## 2. Desarrollos de cubos

Se muestra una plantilla plana (por ejemplo, una cruz) con símbolos en cada cuadrado y hay que decir qué cubo resulta al doblarla.

**Reglas que se pueden aplicar sin dibujar:**
- **Caras opuestas.** En una fila de cuatro cuadrados, los que están separados por uno (el primero y el tercero, el segundo y el cuarto) **quedan en caras opuestas** del cubo. Dos caras opuestas **nunca se ven a la vez**.
- **Caras contiguas.** Dos cuadrados que comparten un borde en la plantilla estarán juntos en el cubo, con ese lado en común.
- **Elimina opciones imposibles.** Si una opción muestra a la vez dos caras que son opuestas, **es falsa**.

Es la forma más rápida: en lugar de montar el cubo en la cabeza, aplicas dos reglas y descartas opciones.

## 3. Conteo de cubos en un montón

Se muestra una pila de cubos en perspectiva y hay que contar cuántos hay, incluidos los que no se ven.

**Método:**
1. **Cuenta por columnas o por capas**, de abajo arriba.
2. **Supón que no hay huecos** bajo un cubo visible: si ves uno en lo alto, debajo hay otros que lo sostienen.
3. **Anota el resultado por filas** para no contar dos veces.

## 4. Papel doblado y agujereado

Se dobla una hoja varias veces, se hace un agujero y hay que decir cómo queda al desplegarla.

**Regla:** desdobla **en orden inverso** y refleja el agujero en cada pliegue, como en un espejo. Cada doblez duplica los agujeros respecto a la línea del pliegue.

## 5. Series de figuras

Una secuencia de figuras que giran, cambian de tamaño o suman elementos, y hay que adivinar la siguiente. **Identifica qué cambia y cómo** (giro de 45 grados por paso, se añade un trazo, cambia el color) y aplica el mismo cambio otra vez.

## Errores frecuentes

- **Resolver «de cabeza» cuando hay una regla que lo evita.** Es más lento y falla más.
- **No comprobar los espejos.** Muchas opciones incorrectas son la figura correcta invertida.
- **Dejarse llevar por el detalle más llamativo** y no por el rasgo distintivo.
- **Atascarse.** Con unos 41 segundos de media por pregunta, conviene saltar y volver.

## Cómo practicarla

- **Dibuja las plantillas en papel**, recórtalas y dóblalas: tocar el cubo ayuda a interiorizar las reglas.
- **Haz ejercicios cronometrados** y revisa solo los fallos: qué regla no aplicaste.
- **Alterna con otros tipos de ejercicio**, como las [series numéricas](/blog/series-numericas-psicotecnico-guardia-civil) y el [razonamiento verbal](/blog/razonamiento-verbal-psicotecnico-guardia-civil), para no cansarte de uno solo.

Integra estos ejercicios en una rutina corta y diaria: lo mejor es un rato breve cada día, no una sesión larga a la semana.

## Preguntas frecuentes

### ¿Es innata la aptitud espacial?

Tiene una parte de capacidad, pero mejora con práctica. La mayoría de ejercicios se resuelven con reglas que se aprenden.

### ¿Cómo distingo una rotación de un reflejo?

Una rotación conserva el orden de los elementos; un reflejo lo invierte, como en un espejo. Sigue un rasgo distintivo de la figura para comprobarlo.

### ¿Cuánto tiempo tengo por ejercicio?

En el psicotécnico hay 80 preguntas en 55 minutos, de media unos 41 segundos por pregunta.

### ¿Qué hago si no veo la solución?

Descarta opciones con reglas sencillas (por ejemplo, caras opuestas imposibles) y avanza.',
   NULL, NULL, 'publicado', '2026-11-27T06:37:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'aptitud espacial', 'cubos', 'figuras']::text[], '{"title":"Aptitud espacial psicotécnico: cubos, giros y figuras","description":"Aptitud espacial en el psicotécnico: cómo resolver giros de figuras, desarrollos de cubos y conteo de piezas con reglas y trucos, y cómo practicarla."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('competencias-entrevista-personal-guardia-civil', 'articulo', 'Las seis competencias de la entrevista personal de la Guardia Civil y cómo demostrarlas', 'La convocatoria enumera seis competencias que valora la entrevista. Qué significa cada una, cómo se demuestra con ejemplos reales, quién te entrevista, qué es el «no apto provisional» y cómo se revisa.', 'La entrevista personal es una de las pruebas de aptitud psicofísica, junto con las físicas y el reconocimiento médico. La convocatoria es poco habitual en un detalle: **enumera las competencias que se valoran**. Eso te permite preparar con criterio, sin inventar un personaje.

## Qué dice la convocatoria

En la base 6.1.3.b de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), la entrevista busca evaluar «la capacidad de los aspirantes para adecuarse a las exigencias derivadas del desempeño profesional». Es una conversación de desarrollo **semiestructurado**, con la «recogida de información a través del diálogo y los test que consideren pertinentes los entrevistadores».

Las competencias son seis:

| # | Competencia |
|---|---|
| I | Adecuación a normas y código de conducta |
| II | Responsabilidad y madurez |
| III | Espíritu de sacrificio y abnegación |
| IV | Autocontrol |
| V | Habilidades sociales y de comunicación |
| VI | Adaptación |

Además, el Jefe de la Jefatura de Enseñanza establece previamente los criterios con los que se valora cada una.

## Quién te entrevista

La entrevista la realiza un **órgano de apoyo asesor** compuesto por personal titulado en Psicología y por Oficiales o Suboficiales de la Guardia Civil. En cada entrevista **debe estar presente, al menos, un psicólogo**.

Antes, se rellena el [cuestionario BIODATA](/blog/cuestionario-biodata-guardia-civil), que no puntúa y sirve de apoyo. Y los datos del [test de personalidad](/blog/test-personalidad-guardia-civil) pueden usarse como instrumento, aunque el resultado de la entrevista no depende solo de ellos.

## Cómo demostrar cada competencia

La mejor forma no es declarar que tienes cada cualidad, sino **contar situaciones reales**. Prepara un ejemplo para cada una.

### I. Adecuación a normas y código de conducta

**Qué se busca:** que aceptas y cumples reglas, incluso cuando no te gustan o nadie te mira.

**Cómo prepararla:** piensa en una situación en la que seguiste una norma que te suponía un coste (en el trabajo, en el estudio, en el deporte) y por qué lo hiciste. Evita presentar las normas como un obstáculo.

### II. Responsabilidad y madurez

**Qué se busca:** que asumes las consecuencias de tus actos, cumples compromisos y reconoces tus errores.

**Cómo prepararla:** un error que cometiste, cómo lo afrontaste y qué cambiaste. Los ejemplos con errores propios resultan creíbles; los de «nunca me equivoco», no.

### III. Espíritu de sacrificio y abnegación

**Qué se busca:** disposición a renunciar a comodidades por un objetivo o por los demás.

**Cómo prepararla:** esta oposición ya es un ejemplo. Cuenta qué has dejado de hacer por prepararla, sin dramatizar, y otras situaciones en las que antepusiste algo importante a lo cómodo.

### IV. Autocontrol

**Qué se busca:** manejar la tensión, la frustración y la provocación sin perder la compostura.

**Cómo prepararla:** una situación de conflicto o de presión en la que mantuviste la calma y cómo lo hiciste. Si perdiste el control alguna vez, explica qué aprendiste.

### V. Habilidades sociales y de comunicación

**Qué se busca:** que te expresas con claridad, escuchas y te relacionas bien con compañeros y con la autoridad.

**Cómo prepararla:** practica explicarte de forma ordenada y breve. Mira a quien te habla, escucha la pregunta entera y responde a lo que se pregunta.

### VI. Adaptación

**Qué se busca:** capacidad de adaptarte a cambios, a entornos nuevos y a la vida fuera de tu zona habitual.

**Cómo prepararla:** una vez que cambiaste de entorno (de ciudad, de trabajo, de grupo) y cómo lo viviste. La movilidad geográfica es una realidad de la profesión, y conviene que lo hayas pensado de verdad.

## Cómo estructurar tus ejemplos

Una forma ordenada de contar una experiencia es la estructura **situación, acción y resultado**:

1. **Situación:** qué pasó y qué papel tenías.
2. **Acción:** qué hiciste tú, en concreto.
3. **Resultado:** qué ocurrió y qué aprendiste.

Es corta, clara y evita las divagaciones.

## Cómo se califica y qué es el «no apto provisional»

Los miembros del órgano de apoyo hacen una propuesta motivada e individualizada, y el Tribunal califica la entrevista como **«apto»** o **«no apto provisional»** (base 8.2).

El «no apto provisional» no es definitivo:

- **Puedes solicitar la revisión** en el plazo que fije la resolución que publique las calificaciones.
- La revisión la hace una **Junta de Revisión formada por titulados en Psicología**, que estudia la documentación de las entrevistas y **oye al interesado**, y emite una propuesta motivada al Tribunal.
- Si **no pides la revisión** en plazo, o si se **confirma** tras revisarla, pasas a «no apto» definitivo y quedas excluido del proceso.

Por eso, si recibes un «no apto provisional», lo más importante es **no dejar pasar el plazo**.

## Errores frecuentes

- **Preparar respuestas memorizadas.** Suenan falsas y se desmontan con una pregunta de seguimiento.
- **Dar ejemplos genéricos** sin una situación concreta detrás.
- **Contradecir tu cuestionario o tu solicitud.**
- **Hablar mal de empleos o personas anteriores.**
- **Llegar sin haber pensado tu motivación.**

## Preguntas frecuentes

### ¿Cuántas competencias valora la entrevista de la Guardia Civil?

Seis: adecuación a normas y código de conducta, responsabilidad y madurez, espíritu de sacrificio y abnegación, autocontrol, habilidades sociales y de comunicación, y adaptación.

### ¿Quién hace la entrevista?

Un órgano de apoyo con titulados en Psicología y Oficiales o Suboficiales de la Guardia Civil; en cada entrevista hay al menos un psicólogo.

### ¿Qué pasa si me dan «no apto provisional»?

Puedes solicitar la revisión en el plazo que se indique. La resuelve una Junta de Revisión de psicólogos y, si no la solicitas o se confirma, quedas excluido.

### ¿Puntúa la entrevista?

No como las pruebas de conocimientos: se califica como apto o no apto provisional.',
   NULL, NULL, 'publicado', '2026-12-01T06:45:00.000Z', 'acceso-guardia-civil',
   ARRAY['entrevista', 'competencias', 'no apto provisional', 'revisión']::text[], '{"title":"Entrevista Guardia Civil: las 6 competencias","description":"Las seis competencias que valora la entrevista de la Guardia Civil, cómo demostrarlas con ejemplos, quién entrevista y cómo funciona el no apto provisional."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuestionario-biodata-guardia-civil', 'articulo', 'Cuestionario BIODATA de la Guardia Civil: qué es y cómo rellenarlo', 'Antes de la entrevista personal se rellena un cuestionario biográfico que no puntúa, pero sirve de guion al entrevistador. Qué dice la convocatoria, qué documentos hay que llevar y cómo contestar sin contradecirte.', 'Quien llega a la entrevista personal se encuentra, antes de entrar, con un cuestionario sobre su vida: estudios, trabajos, familia, aficiones. Es el **BIODATA**. No puntúa, pero **condiciona cómo será la conversación**.

## Qué dice la convocatoria

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 6.1.3.b) lo recoge así: antes de la entrevista, se cumplimentará «un cuestionario de información biográfica (BIODATA) el cual no tendrá carácter puntuable, sirviendo, únicamente, como elemento de apoyo para la realización de la misma».

Es decir:

- **No tiene nota.** No suma ni resta puntos.
- **Es un apoyo para el entrevistador**, que lo usa como punto de partida.
- Se acompaña del **informe de vida laboral** y, si eres personal militar, de la **Hoja General de Servicios**.

## Documentos que tienes que aportar

La convocatoria indica que el informe de vida laboral y, en su caso, la Hoja General de Servicios, **se deben aportar en la fecha de citación para la ejecución de la entrevista**.

Para no llegar con prisas:

1. **Solicita la vida laboral con antelación.** Se pide a la Seguridad Social y suele poder obtenerse por vía electrónica, pero evita dejarlo para el día antes.
2. **Revisa que esté actualizada** y que coincida con lo que declaraste en la solicitud.
3. **Si eres militar**, solicita la Hoja General de Servicios en tu unidad con tiempo.
4. **Lleva copias** por si acaso.

## Qué suele preguntar un cuestionario biográfico

La convocatoria no detalla el contenido, así que no se puede asegurar qué preguntas habrá. En general, estos cuestionarios recogen datos como:

- **Formación y trayectoria**: estudios, trabajos, motivos de cambio.
- **Entorno personal y familiar.**
- **Intereses, aficiones y deporte.**
- **Experiencias relevantes**: situaciones difíciles y cómo las afrontaste.
- **Motivación** para ingresar en la Guardia Civil.

## Cómo rellenarlo: tres reglas

### 1. Sé veraz y exacto

El entrevistador tiene tu vida laboral y tu solicitud delante. Si escribes algo distinto, se nota. Y presentar datos falsos puede tener consecuencias: la propia convocatoria advierte de la exclusión y de la responsabilidad por falsedad en la solicitud.

### 2. Sé coherente

El cuestionario, la solicitud, el [test de personalidad](/blog/test-personalidad-guardia-civil) y lo que digas en la entrevista **tienen que contar la misma historia**. Revisa las fechas y los motivos de tus cambios de trabajo o estudios.

### 3. Prepara lo que escribas

Todo lo que pongas es material para preguntas. Si mencionas una experiencia o una afición, **prepárate para hablar de ella con detalle**.

## Cómo usa el entrevistador el BIODATA

Sirve para **orientar preguntas**: si detecta un hueco en tu vida laboral, un cambio brusco de estudios o una afición llamativa, preguntará por ellos. No es una trampa, es una conversación semiestructurada. Para eso, conviene tener claro tu relato:

- Por qué elegiste tus estudios y tus trabajos.
- Qué aprendiste de ellos.
- Por qué quieres ser guardia civil ahora.

## Errores frecuentes

- **Dejar espacios en blanco** o contestar de forma vaga.
- **Adornar la trayectoria.** Es contraproducente y arriesgado.
- **Contradecir lo que dijiste en la solicitud.**
- **Olvidar los documentos** de la fecha de citación.
- **Llegar sin haber repasado tu propia historia.**

## Qué hacer en la práctica

1. **Haz un resumen cronológico de tu vida**: estudios, trabajos, hitos.
2. **Anota, para cada etapa, qué aprendiste y por qué cambiaste.**
3. **Practica explicarlo en voz alta** en uno o dos minutos.
4. **Revisa las competencias que se valoran** en [la entrevista personal](/blog/entrevista-reconocimiento-medico-guardia-civil).

## Preguntas frecuentes

### ¿Puntúa el cuestionario BIODATA?

No. La convocatoria dice que no tiene carácter puntuable y que sirve solo como apoyo para la entrevista.

### ¿Qué documentos hay que llevar a la entrevista?

El informe de vida laboral y, en el caso del personal militar, la Hoja General de Servicios, en la fecha de citación para la entrevista.

### ¿Qué pasa si hay un hueco en mi vida laboral?

No es un problema en sí. Prepara una explicación sincera y breve.

### ¿Cuándo se rellena?

Antes de la entrevista personal, según indica la convocatoria.',
   NULL, NULL, 'publicado', '2026-11-30T06:28:00.000Z', 'acceso-guardia-civil',
   ARRAY['entrevista', 'BIODATA', 'vida laboral', 'documentación']::text[], '{"title":"Cuestionario BIODATA Guardia Civil: qué es y cómo rellenarlo","description":"BIODATA de la Guardia Civil: qué es el cuestionario biográfico previo a la entrevista, qué documentos llevar (vida laboral) y cómo rellenarlo con coherencia."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('entrenar-psicotecnico-15-minutos-guardia-civil', 'guia', 'Cómo entrenar el psicotécnico en 15 minutos al día', 'El psicotécnico se entrena mejor en sesiones cortas y constantes que en maratones. Una rutina de quince minutos al día, qué nota necesitas de verdad (los números salen de la convocatoria) y cómo medir tu progreso.', 'El psicotécnico es la prueba más fácil de abandonar, porque no da la sensación de avance de terminar un tema del temario. Y, sin embargo, **es eliminatoria**: sin el mínimo, quedas fuera aunque tengas el resto de pruebas bien.

La buena noticia es que no hace falta dedicarle horas. Hace falta **constancia y cronómetro**.

## Qué nota necesitas de verdad

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) fija estas cifras para las aptitudes intelectuales:

- **80 preguntas** y **55 minutos** en total, incluida la lectura de instrucciones.
- Puntuación de **0 a 30**; **mínimo de 12** para no quedar excluido.
- Cuatro alternativas por pregunta; los **errores penalizan** y las preguntas en blanco no.

Con la fórmula de la base 7.3, cada acierto vale 0,375 puntos y cada error resta 0,125. Para llegar a 12 puntos necesitas **32 aciertos netos**, es decir, aciertos menos un tercio de los errores:

| Aciertos | Errores | Aciertos netos | Puntos | ¿Supera el mínimo? |
|---|---|---|---|---|
| 40 | 24 | 32 | 12,0 | Justo |
| 45 | 15 | 40 | 15,0 | Sí |
| 32 | 0 | 32 | 12,0 | Justo |
| 30 | 15 | 25 | 9,4 | No |

Esos 12 puntos te mantienen en esta prueba, pero la nota cuenta para el total: la puntuación final suma tus 30 posibles puntos del psicotécnico a las demás pruebas. Te lo contamos en [la nota de corte](/blog/nota-de-corte-guardia-civil).

## Por qué quince minutos al día

- **La práctica espaciada funciona mejor** que las sesiones largas para reconocer patrones.
- **Es sostenible.** Quince minutos caben en cualquier día, incluso con turnos.
- **Evita el desgaste.** Los ejercicios de razonamiento cansan, y rendir pierde sentido tras mucho rato.

## Una rutina semanal

Cada día, 15 minutos **con cronómetro** y un tema distinto:

| Día | Tipo de ejercicio | Cómo |
|---|---|---|
| Lunes | [Series numéricas](/blog/series-numericas-psicotecnico-guardia-civil) | 10 series; anota el patrón de cada una |
| Martes | [Razonamiento verbal](/blog/razonamiento-verbal-psicotecnico-guardia-civil) | 12 ejercicios entre sinónimos, antónimos y analogías |
| Miércoles | [Aptitud espacial](/blog/aptitud-espacial-psicotecnico-guardia-civil) | 8 ejercicios de giros o cubos |
| Jueves | Mixto | 15 preguntas variadas, con 41 segundos como máximo cada una |
| Viernes | Repaso de fallos | Rehaz solo las preguntas falladas de la semana |
| Sábado | Simulacro corto | 20 preguntas seguidas, como si fueras a examen |
| Domingo | Descanso | Sin ejercicios |

Una vez al mes, haz **un simulacro completo de 80 preguntas en 55 minutos**, para ver tu resistencia y tu ritmo reales.

## Cómo medir tu progreso

Anota, en una hoja o en el móvil, tres datos por sesión:

1. **Aciertos, errores y blancos.**
2. **Tiempo medio por pregunta.** Tu objetivo: unos 41 segundos.
3. **Tipo de fallo**: no sabía hacerlo, me precipité o me quedé sin tiempo.

Esta clasificación es lo más útil: el primer problema se arregla con teoría, el segundo con calma y el tercero con ritmo.

## Reglas para que funcione

- **Siempre con cronómetro.** Sin tiempo, entrenas otra prueba.
- **Corrige tus fallos a diario.** Un fallo sin revisar es un fallo que se repetirá.
- **Aprende a saltar.** Marca las que te atascan y vuelve al final.
- **Contesta si puedes descartar.** Con una opción descartada, contestar suele compensar, como explicamos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).
- **No lo dejes para el final.** Un bloque intensivo el último mes rinde menos que meses de rutina corta.

## Qué no entrenar

El **cuestionario de personalidad** no se entrena con ejercicios: se responde con sinceridad. Lo tienes explicado en [el test de personalidad de la Guardia Civil](/blog/test-personalidad-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto tiempo hay que dedicar al psicotécnico?

Con quince minutos al día durante meses suele bastar para reconocer los tipos de ejercicio y ganar ritmo. Si partes de cero, empieza antes.

### ¿Cuántos aciertos hacen falta para aprobar?

Para el mínimo de 12 puntos hacen falta 32 aciertos netos sobre 80, es decir, aciertos menos un tercio de los errores.

### ¿Hay que contestar todas las preguntas?

No es obligatorio. Las preguntas en blanco no restan, pero los errores sí.

### ¿Cuándo hago el primer simulacro completo?

Cuando llevas unas semanas de rutina. Sirve para medir tu ritmo real, no para sacar nota.',
   NULL, NULL, 'publicado', '2026-11-29T06:11:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'rutina', 'entrenamiento', 'aptitudes']::text[], '{"title":"Entrenar el psicotécnico en 15 minutos al día","description":"Rutina de 15 minutos diarios para entrenar el psicotécnico de la Guardia Civil: cuánta nota necesitas, qué practicar cada día y cómo medir el progreso."}'::jsonb, '{"duracion":"15 minutos al día"}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('razonamiento-verbal-psicotecnico-guardia-civil', 'articulo', 'Razonamiento verbal en el psicotécnico: sinónimos, antónimos y analogías', 'Sinónimos, antónimos, analogías y palabras intrusas son los ejercicios verbales más comunes en las baterías de aptitudes. Cómo se resuelve cada uno, con ejemplos, y cómo ampliar vocabulario sin pasarte la vida con el diccionario.', 'El razonamiento verbal mide cómo manejas las palabras y las relaciones entre ellas. En una batería de aptitudes intelectuales como la del psicotécnico de la Guardia Civil, es un tipo de ejercicio muy habitual.

Como en otros artículos de esta serie, una precisión: la convocatoria **no detalla los tipos de ejercicio** de la batería. Lo que sigue son los formatos verbales más frecuentes en pruebas de este tipo, útiles para entrenar aunque no sepas con certeza cuáles saldrán. El resumen de la prueba está en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

## Sinónimos

Se te da una palabra y hay que elegir la que significa lo mismo.

> **Ecuánime** → a) violento b) imparcial c) tímido d) lento

Respuesta: **imparcial**. Ecuánime es quien juzga con serenidad y sin favorecer a nadie.

**Cómo resolverlos:**
- Si no conoces la palabra, **busca su raíz o su familia**: «ecuánime» recuerda a «ecuanimidad» o a «igual».
- **Descarta las opciones que claramente no encajan**, aunque no sepas la correcta.
- Cuidado con las opciones que **suenan parecido** pero significan otra cosa.

## Antónimos

Se pide la palabra de significado contrario.

> **Efímero** → a) breve b) duradero c) frágil d) veloz

Respuesta: **duradero**. Efímero es lo que dura poco.

**Cómo resolverlos:**
- Primero **piensa qué significa la palabra**, y luego busca su contrario. Muchos errores vienen de contestar un sinónimo por error, porque aparece entre las opciones a propósito.
- Lee bien el enunciado: «busca el antónimo» o «busca el sinónimo» no es lo mismo.

## Analogías

Se da una pareja de palabras y hay que encontrar otra pareja con la misma relación.

> **Médico es a hospital como profesor es a…** a) examen b) colegio c) libro d) alumno

Respuesta: **colegio**. La relación es «profesional → lugar donde trabaja».

**Cómo resolverlas:** 
1. **Nombra la relación con una frase** («un médico trabaja en un hospital»).
2. **Aplica la misma frase** a cada opción.
3. Las relaciones habituales son: profesión y lugar, herramienta y función («cuchillo es a cortar como lápiz es a escribir»), parte y todo, causa y efecto, y grado («caliente es a hirviendo como frío es a helado»).

## La palabra intrusa

Hay que encontrar la que no pertenece al grupo.

> **Madrid, Sevilla, París, Valencia** → ¿cuál sobra?

Respuesta: **París**, porque las demás son ciudades españolas.

**Cómo resolverlo:** busca la **categoría común** a tres de ellas y comprueba que la cuarta no la cumple. A veces hay más de una categoría posible (por ejemplo, tamaño o ubicación): elige la más clara.

## Completar oraciones y ordenar frases

En otros formatos se pide **completar una frase** con la palabra que le da sentido, o **ordenar** frases para formar un texto coherente. Aquí funciona buscar las **pistas gramaticales** (género, número, conectores como «sin embargo» o «por tanto») que acotan las opciones.

## Cómo ampliar vocabulario sin obsesionarte

- **Lee a diario**, aunque sean quince minutos: prensa, ensayo o novela. Subraya las palabras que no conoces.
- **Apunta las palabras nuevas** con su significado y un ejemplo. Repásalas con espaciado: a los dos días, a la semana, al mes.
- **Aprende por familias**: raíces, prefijos y sufijos te dan significado de muchas palabras a la vez.
- **Usa las palabras que aprendes** al escribir o hablar para fijarlas.

Esto te ayuda también en otras partes del proceso, como la prueba de [ortografía y gramática](/blog/ortografia-gramatica-examen-guardia-civil).

## Errores frecuentes

- **Elegir la opción más «bonita» o familiar** sin comprobar el significado.
- **No leer todas las opciones.** A veces la segunda parece correcta, pero la cuarta lo es más.
- **Gastar demasiado tiempo en una palabra desconocida.** Con unos 41 segundos por pregunta, mejor descartar y avanzar.

Combínalo con las [series numéricas](/blog/series-numericas-psicotecnico-guardia-civil) y la práctica de ejercicios cronometrados.

## Preguntas frecuentes

### ¿Qué tipos de razonamiento verbal pueden salir en el psicotécnico?

La convocatoria no los detalla. Los formatos habituales en baterías de aptitudes son sinónimos, antónimos, analogías, palabras intrusas y comprensión de frases.

### ¿Cómo mejoro mi vocabulario rápidamente?

Con lectura diaria, un cuaderno de palabras nuevas repasadas de forma espaciada y práctica de ejercicios.

### ¿Penalizan los errores en el psicotécnico?

Sí. Con cuatro alternativas, cada error resta un tercio del valor de un acierto. Las preguntas en blanco no restan.

### ¿Es mejor dejar en blanco o arriesgar?

Si puedes descartar al menos una opción, suele compensar contestar. Lo explicamos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).',
   NULL, NULL, 'publicado', '2026-11-26T06:20:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'razonamiento verbal', 'analogías', 'vocabulario']::text[], '{"title":"Razonamiento verbal psicotécnico: tipos y ejemplos","description":"Razonamiento verbal en el psicotécnico: sinónimos, antónimos, analogías e intrusos con ejemplos resueltos, método para resolverlos y cómo ampliar vocabulario."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('series-numericas-psicotecnico-guardia-civil', 'articulo', 'Series numéricas del psicotécnico: los patrones que más se repiten', 'Las series numéricas se resuelven reconociendo patrones, no con cálculo. Los siete esquemas que explican la mayoría de ejercicios, con ejemplos resueltos y un método para no perder más de unos segundos en cada una.', 'En el psicotécnico de la Guardia Civil tienes **80 preguntas en 55 minutos**, es decir, unos 41 segundos por pregunta. En ese tiempo no se puede «pensar» cada serie desde cero: hay que **reconocer el patrón de un vistazo**.

Una aclaración honesta: la convocatoria describe la prueba como una batería de aptitudes intelectuales («test de inteligencia general y/o escalas específicas») y **no detalla qué tipos de ejercicio incluye**. Lo que sigue son los patrones numéricos habituales en este tipo de baterías, que sirven para entrenar el razonamiento, pero no garantizan que aparezcan tal cual. Cómo está montada la prueba lo tienes en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

## Un método de tres pasos

1. **Mira las diferencias entre términos consecutivos.** Si son constantes o siguen una regla, ya la tienes.
2. **Mira los cocientes.** Si cada número es el anterior multiplicado por algo, es una serie geométrica.
3. **Si no sale, separa posiciones pares e impares.** Muchas series son dos series entrelazadas.

Si pasados unos segundos no ves nada, **salta y vuelve después**.

## Los siete patrones

### 1. Suma o resta constante

3, 7, 11, 15, **?** → se suma 4 cada vez. Respuesta: **19**.

### 2. Multiplicación constante

2, 6, 18, 54, **?** → se multiplica por 3. Respuesta: **162**.

### 3. Diferencias que crecen

1, 2, 4, 7, 11, **?** → las diferencias son 1, 2, 3, 4, así que la siguiente es 5. Respuesta: 11 + 5 = **16**.

### 4. Cuadrados y cubos

1, 4, 9, 16, 25, **?** → son los cuadrados de 1, 2, 3, 4, 5. Respuesta: **36**. Memoriza los cuadrados hasta 15 y los cubos hasta 6: te ahorran mucho tiempo.

### 5. Suma de los dos anteriores

2, 3, 5, 8, 13, **?** → cada número es la suma de los dos anteriores. Respuesta: **21**.

### 6. Dos operaciones alternas

2, 4, 3, 6, 5, 10, **?** → se alterna «por 2» y «menos 1»: 2→4 (×2), 4→3 (−1), 3→6 (×2), 6→5 (−1), 5→10 (×2). La siguiente operación es −1. Respuesta: **9**.

### 7. Dos series entrelazadas

3, 10, 6, 20, 9, 40, **?** → los términos en posiciones impares (3, 6, 9) suben de 3 en 3, y los pares (10, 20, 40) se duplican. Estamos en una posición impar. Respuesta: **12**.

## Señales para identificar rápido el tipo

| Lo que ves | Piensa en |
|---|---|
| Números que crecen despacio y de forma regular | Suma constante o diferencias crecientes |
| Números que se disparan | Multiplicación o potencias |
| Resultados que suben y bajan | Dos operaciones alternas o dos series |
| Muchos cuadrados perfectos (1, 4, 9, 16…) | Potencias |
| Números primos (2, 3, 5, 7, 11, 13…) | Serie de primos |

## Errores frecuentes

- **Calcular con lápiz lo que se puede estimar.** A veces basta ver que la respuesta tiene que ser par o mayor que cierto valor para descartar opciones.
- **Obsesionarse con una sola serie.** Con 41 segundos de media, una pregunta que se atasca te cuesta varias fáciles.
- **Dar por buena la primera regla que encaja.** Comprueba que funciona en **todos** los términos, no solo en los dos primeros.

## Cómo entrenarlas

Es una habilidad que mejora mucho con la práctica. Haz series **siempre con cronómetro**, y cuando falles, escribe qué patrón era para reconocerlo la próxima vez. En los próximos días de esta serie lo organizamos en una rutina de quince minutos diarios.

Y cuando practiques, ten presente cómo se puntúa: con cuatro alternativas, cada acierto vale 0,375 puntos y cada error resta 0,125, y hace falta llegar a 12 puntos sobre 30 para no quedar excluido. Lo calculamos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).

## Preguntas frecuentes

### ¿Salen series numéricas en el psicotécnico de la Guardia Civil?

La convocatoria no detalla los tipos de ejercicio, solo que es una batería de aptitudes intelectuales. Las series numéricas son un tipo habitual en estas pruebas, por eso conviene entrenarlas.

### ¿Cuánto tiempo hay por pregunta?

80 preguntas en 55 minutos, unos 41 segundos por pregunta de media.

### ¿Se puede usar calculadora?

No. La convocatoria prohíbe calculadoras y otras ayudas, salvo que lo determine el Tribunal.

### ¿Qué hago si no veo el patrón?

Salta a la siguiente y vuelve si te sobra tiempo. Una pregunta atascada cuesta varias fáciles.',
   NULL, NULL, 'publicado', '2026-11-25T06:03:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'series numéricas', 'aptitudes', 'razonamiento']::text[], '{"title":"Series numéricas psicotécnico: patrones y ejemplos","description":"Series numéricas del psicotécnico de la Guardia Civil: los patrones más habituales con ejemplos resueltos y un método para resolverlas en pocos segundos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('test-personalidad-guardia-civil', 'articulo', 'Test de personalidad de la Guardia Civil: cómo responder con coherencia', 'El cuestionario de personalidad no se estudia ni se aprueba memorizando, pero sí se puede llegar mejor o peor preparado. Qué dice la convocatoria, cómo se usa después en la entrevista y qué errores cometen quienes intentan quedar bien.', 'Entre las pruebas del proceso, el cuestionario de personalidad es la que más mitos genera. Hay quien busca «las respuestas correctas» y quien se presenta sin haberlo pensado. Ni lo uno ni lo otro ayuda.

Qué dice la convocatoria y cómo comportarte con él, sin trucos.

## Qué dice la convocatoria

La prueba psicotécnica tiene dos partes (base 6.1.2 de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)): las aptitudes intelectuales y el **perfil de personalidad**, que se evalúa «mediante test que exploren las características de personalidad, actitudinales y motivacionales».

Tres ideas de la propia convocatoria que conviene tener claras:

- **No puntúa como las demás pruebas.** La puntuación de 0 a 30 y el mínimo de 12 corresponden a las aptitudes intelectuales, no al perfil de personalidad.
- **Se tiene en cuenta para la adecuación al perfil.** Los resultados de la prueba psicotécnica «podrán ser tenidos en cuenta para determinar la adecuación del candidato al perfil profesional de la Guardia Civil».
- **Se usa en la entrevista.** Los datos del psicotécnico «podrán ser utilizados instrumentalmente en la valoración de la entrevista personal», aunque el resultado de la entrevista no depende de forma exclusiva de ellos.

## Cómo funcionan estos cuestionarios

La convocatoria no dice qué cuestionario concreto se usa, así que no se puede hablar de uno en particular. Pero, en general, los inventarios de personalidad comparten rasgos:

- **Muchas afirmaciones** sobre cómo eres, cómo reaccionas, qué te importa o cómo actúas en ciertas situaciones.
- **Respuestas en una escala** (por ejemplo, de «totalmente en desacuerdo» a «totalmente de acuerdo») o de tipo sí/no.
- **Repetición de temas con distintas formulaciones**, para comprobar si respondes de forma consistente.
- **Escalas de «deseabilidad social»**, que intentan detectar a quien se presenta mejor de lo que es.

Por eso quien intenta responder «lo que quieren oír» suele dejar huellas: se contradice entre ítems parecidos o se describe como alguien sin defectos, lo que resulta poco creíble.

## Qué hacer: tres normas sencillas

### 1. Responde con sinceridad

No hay una personalidad «correcta». Lo que se valora es la **adecuación al perfil** y la **coherencia**. Si respondes como alguien que no eres, es difícil mantener la farsa durante cientos de preguntas.

### 2. No pienses demasiado cada ítem

Las primeras respuestas suelen ser las más auténticas. Dar muchas vueltas a cada afirmación te lleva a «construir» respuestas.

### 3. Llega descansado

Un cuestionario largo, contestado con cansancio o con prisa, no refleja cómo eres. Cuida el sueño la noche anterior.

## Lo que no hay que hacer

- **Evitar extremos por sistema.** Responder siempre «indiferente» o siempre en los extremos genera patrones raros.
- **Intentar adivinar el perfil buscado.** Es imposible acertar con precisión, y tus respuestas pierden coherencia.
- **Entrenar con trucos de internet.** Los «consejos para pasar el test» suelen ser contraproducentes, y además la entrevista contrasta lo que contestaste.
- **Llevar dispositivos electrónicos.** La convocatoria prohíbe móviles, relojes o gafas inteligentes y cualquier aparato de grabación o transmisión en las salas de examen (base 5.3).

## La conexión con la entrevista

Después viene la entrevista personal, que valora competencias concretas (te las contamos en [entrevista y reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil), y las desarrollamos una a una en un artículo propio de esta serie). Si el perfil del cuestionario y la persona que habla en la entrevista no coinciden, se nota.

Por eso la mejor «preparación» es conocerte bien: qué te motiva, cómo reaccionas bajo presión, cómo te llevas con la autoridad y con los compañeros, qué errores has cometido y qué aprendiste de ellos.

## Qué sí puedes preparar

- **Tu motivación**: por qué quieres ser guardia civil, con ejemplos reales.
- **Tu estilo de trabajo**: cómo te organizas y reaccionas cuando algo sale mal.
- **Tu forma de relacionarte**: con la autoridad, con los compañeros y en situaciones de conflicto.
- **Tu estado el día de la prueba**: sueño, comida y nervios.

## Preguntas frecuentes

### ¿Se puede aprobar o suspender el test de personalidad?

La convocatoria no lo califica como las demás pruebas. Los resultados pueden tenerse en cuenta para determinar la adecuación al perfil profesional y usarse en la valoración de la entrevista.

### ¿Hay respuestas correctas?

No. Se valora la adecuación al perfil y la coherencia, no un resultado único.

### ¿Cuántas preguntas tiene?

La convocatoria no lo indica. Fija las 80 preguntas y los 55 minutos solo para las aptitudes intelectuales.

### ¿Cómo me preparo?

Respondiendo con sinceridad, sin darle demasiadas vueltas y habiendo descansado. Lo demás es conocerte bien para la entrevista posterior.',
   NULL, NULL, 'publicado', '2026-11-28T06:54:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'personalidad', 'entrevista', 'coherencia']::text[], '{"title":"Test de personalidad Guardia Civil: cómo responder","description":"Test de personalidad de la Guardia Civil: qué dice la convocatoria, cómo se usa en la entrevista y por qué responder con sinceridad y coherencia importa."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

