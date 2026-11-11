-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('aptitud-espacial-psicotecnico-guardia-civil', 'articulo', 'Aptitud espacial en el psicotécnico: cómo resolver cubos, giros y figuras', 'Rotar figuras, desplegar cubos y contar piezas ocultas parece cosa de talento, pero se resuelve con reglas concretas. Los ejercicios espaciales más habituales, ejemplos resueltos paso a paso y cómo practicarlos sin necesidad de «verlo» todo.', 'La aptitud espacial es la parte del razonamiento que más gente da por perdida: «yo no tengo visión espacial». La respuesta corta: la mayoría de los ejercicios espaciales de práctica se resuelven con **reglas fijas de descarte**, no con intuición. Si sabes qué caras de un cubo son opuestas, cómo distinguir un giro de un reflejo y cómo contar bloques por columnas, puedes resolver muchos ejercicios sin «montar» nada en la cabeza.

Una precisión necesaria: la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 6.1.2) describe una batería de aptitudes intelectuales de **80 preguntas en 55 minutos** y **no detalla los tipos de ejercicio**. Los que siguen son formatos espaciales habituales en pruebas de este tipo; sirven para entrenar, pero no se puede asegurar cuáles aparecerán. El contexto de la prueba está en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

Los ejemplos son de elaboración propia y, como aquí no hay dibujos, los describimos con letras y esquemas de texto.

## 1. Rotación de figuras

Se muestra una figura y hay que decir cuál de las opciones es **la misma figura girada** y no su imagen en un espejo.

### La regla clave: el orden de giro se conserva

Imagina una figura con tres marcas que, recorridas en el sentido de las agujas del reloj, son **círculo → cuadrado → triángulo**. Gírala 90, 180 o 270 grados: el orden en el sentido de las agujas del reloj **sigue siendo círculo → cuadrado → triángulo**. Si en una opción el orden es círculo → triángulo → cuadrado, esa opción es un **reflejo**, no un giro, y puedes descartarla sin más.

Con una letra se ve igual de claro: una **R** girada 180 grados queda boca abajo, pero si le das la vuelta al papel vuelves a leer R. Su reflejo (la R «al revés», como Я) no se convierte en R por mucho que la gires.

### Giros de 90 grados

Para girar mentalmente, hazlo **por pasos de 90 grados** y sigue un solo rasgo. En un giro de 90 grados en el sentido de las agujas del reloj:

| Lo que estaba… | Pasa a estar… |
|---|---|
| Arriba | A la derecha |
| A la derecha | Abajo |
| Abajo | A la izquierda |
| A la izquierda | Arriba |

**Ejemplo resuelto.** Una flecha apunta hacia arriba y tiene una muesca en su lado izquierdo. Tras girarla 90 grados en el sentido de las agujas del reloj, la flecha apunta a la derecha y la muesca queda **arriba**. Si una opción muestra la flecha a la derecha con la muesca abajo, es un reflejo.

**Trucos:**

- **Elige un rasgo distintivo** (una esquina marcada, un punto, un saliente) y síguelo en cada opción.
- **Descarta primero los espejos**: suelen ser varias de las opciones incorrectas.
- **No te dejes llevar por lo llamativo**: el detalle grande suele estar igual en todas las opciones; la diferencia está en uno pequeño.

## 2. Desarrollos de cubos

Se muestra una plantilla plana con símbolos en cada cuadrado y hay que decir qué cubo resulta al doblarla, o cuál es imposible.

### Las reglas

- **En una fila recta de cuadrados, los que están separados por uno quedan en caras opuestas.** En una fila de cuatro, el primero es opuesto al tercero y el segundo al cuarto.
- **Dos caras opuestas nunca se ven a la vez** en un cubo dibujado en perspectiva (en esos dibujos solo se ven tres caras, que comparten una esquina).
- **Dos cuadrados que comparten un borde** en la plantilla quedan juntos en el cubo, unidos por ese borde.

### Ejemplo resuelto

Esta es la plantilla en forma de cruz:

```
    [A]
[B] [C] [D] [E]
    [F]
```

Aplicando las reglas:

- En la fila B-C-D-E: **B es opuesta a D** y **C es opuesta a E**.
- En la columna A-C-F: **A es opuesta a F**.

Si doblas la plantilla con C como base, A y F forman las paredes de delante y de detrás, B y D las de los lados, y E cierra el cubo por arriba: se confirma.

**Pregunta:** ¿cuál de estos cubos es imposible? a) se ven A, B y C; b) se ven A, C y F; c) se ven B, C y F; d) se ven D, E y F.

**Respuesta: b).** A y F son opuestas y no pueden verse a la vez. Las otras tres combinaciones son caras que comparten una esquina.

Has resuelto la pregunta **sin montar el cubo**: identificas las parejas opuestas y descartas cualquier opción que muestre dos caras de la misma pareja. Un dato que ayuda a practicar con un dado común: en los dados estándar las caras opuestas suman 7 (1-6, 2-5, 3-4), así que nunca verás el 1 y el 6 a la vez.

### Cuando las reglas no bastan

A veces las tres caras visibles son posibles, pero la **orientación** de un símbolo (por ejemplo, hacia dónde apunta una flecha) no cuadra. Entonces fíjate en qué borde comparte el símbolo con la cara vecina en la plantilla, y comprueba si en el cubo dibujado ese borde es el mismo.

## 3. Conteo de bloques

Se muestra una pila de cubos en perspectiva y hay que contar cuántos hay, incluidos los que no se ven.

### Método del mapa de alturas

1. **Mira la pila desde arriba** e imagina una cuadrícula.
2. **Escribe en cada casilla la altura** de la columna (cuántos cubos hay apilados).
3. **Suma todas las casillas.**

**Ejemplo resuelto.** Vista desde arriba, una pila tiene estas alturas:

```
3 2 1
2 1 0
1 0 0
```

Total: 3 + 2 + 1 + 2 + 1 + 1 = **10 cubos**.

Salvo que el enunciado diga otra cosa, **supón que no hay huecos**: si ves un cubo en lo alto, debajo hay otros que lo sostienen. Contar columna a columna evita contar dos veces el mismo cubo.

## 4. Papel doblado y agujereado

Se dobla una hoja varias veces, se hace un agujero y hay que decir cómo queda al desplegarla.

**Regla:** desdobla **en orden inverso** y, en cada pliegue, refleja el agujero como en un espejo respecto a la línea del doblez.

**Ejemplo resuelto.** Doblas una hoja cuadrada por la mitad, de izquierda a derecha, y haces un agujero cerca de la esquina superior, sin tocar el pliegue. Al desplegar hay **2 agujeros**, simétricos respecto a la línea vertical del centro. Si antes de perforar la doblas otra vez por la mitad, de arriba abajo, al desplegar habrá **4 agujeros**, simétricos respecto a las dos líneas centrales.

Cada doblez duplica los agujeros (siempre que el agujero atraviese todas las capas y no caiga justo sobre el pliegue).

## 5. Series de figuras

Una secuencia de figuras cambia según una regla y hay que elegir la siguiente.

**Ejemplo resuelto.** Una flecha apunta hacia arriba, luego en diagonal arriba-derecha, luego a la derecha. ¿Siguiente? Gira **45 grados** en el sentido de las agujas del reloj en cada paso, así que apuntará en diagonal **abajo-derecha**.

**Método:** identifica **qué cambia** (posición, giro, tamaño, número de elementos, relleno) y **cada cuánto**. A veces cambian dos cosas a la vez, por ejemplo, la figura gira y además alterna relleno blanco y negro: comprueba las dos.

## Tabla resumen de reglas

| Ejercicio | Regla que descarta más rápido |
|---|---|
| Rotación | El orden de los elementos en el sentido de las agujas del reloj se conserva; si cambia, es un reflejo |
| Desarrollo de cubos | Caras separadas por una en línea recta son opuestas y nunca se ven juntas |
| Conteo de bloques | Mapa de alturas desde arriba y suma |
| Papel doblado | Desdoblar en orden inverso, reflejando en cada pliegue |
| Series de figuras | Aislar qué cambia y cada cuánto |

## Errores frecuentes

- **Intentar resolver «de cabeza»** lo que una regla resuelve en segundos.
- **No comprobar los espejos**: muchas opciones incorrectas son la figura correcta reflejada.
- **Seguir el rasgo más llamativo** en lugar del más distintivo.
- **Contar cubos sin método** y repetir o saltarte alguno.
- **Atascarte.** Con unos 41 segundos de media por pregunta, conviene marcar y volver.

## Cómo practicarla

- **Recorta y dobla plantillas en papel.** Ver cómo se cierran las caras ayuda a interiorizar las reglas, y luego ya no necesitarás el papel.
- **Haz ejercicios cronometrados** y revisa solo los fallos: ¿qué regla no aplicaste?
- **Practica con un dado** para comprobar caras opuestas y contiguas.
- **Alterna con otros tipos de ejercicio**, como las [series numéricas](/blog/series-numericas-psicotecnico-guardia-civil) y el [razonamiento verbal](/blog/razonamiento-verbal-psicotecnico-guardia-civil), para que tu entrenamiento se parezca a una batería mixta.

Recuerda cómo puntúa: cada acierto vale 0,375 puntos, cada error resta 0,125 y hacen falta 12 puntos sobre 30. Si descartas al menos una opción con una regla, contestar compensa de media; lo explicamos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil). Y si quieres ejercicios corregidos con tiempo medido, los tienes en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Checklist

- [ ] Distingo un giro de un reflejo por el orden de los elementos.
- [ ] Localizo las parejas de caras opuestas en cualquier plantilla en cruz o en fila.
- [ ] Cuento bloques con el mapa de alturas.
- [ ] Desdoblo el papel en orden inverso.
- [ ] En las series de figuras busco qué cambia y cada cuánto, y compruebo si cambian dos cosas.
- [ ] Practico con cronómetro y reviso los fallos.

## Preguntas frecuentes

### ¿Es innata la aptitud espacial?

Tiene una parte de capacidad, pero mejora con práctica. Muchos ejercicios se resuelven con reglas que se aprenden.

### ¿Salen cubos en el psicotécnico de la Guardia Civil?

La convocatoria no detalla los tipos de ejercicio. Los desarrollos de cubos son un formato habitual en las baterías de aptitudes, por eso conviene entrenarlos.

### ¿Cómo distingo una rotación de un reflejo?

Una rotación conserva el orden de los elementos en el sentido de las agujas del reloj; un reflejo lo invierte. Sigue un rasgo distintivo para comprobarlo.

### ¿Qué caras de un cubo son opuestas en una plantilla?

En una fila recta de cuadrados, las que están separadas por un cuadrado. En la plantilla en cruz, además, las dos caras que quedan arriba y abajo del cuadrado central.

### ¿Cuánto tiempo tengo por ejercicio?

80 preguntas en 55 minutos, incluidas las instrucciones: unos 41 segundos de media.

### ¿Qué hago si no veo la solución?

Descarta opciones con las reglas (caras opuestas a la vez, reflejos) y, si quedan dos o tres, decide o salta. Con una opción descartada, contestar compensa de media.',
   '/blog/aptitud-espacial-psicotecnico-guardia-civil.jpg', 'Manos doblando el desarrollo de un cubo de papel junto a cubos de madera', 'publicado', '2026-11-27T06:37:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'aptitud espacial', 'cubos', 'figuras']::text[], '{"title":"Aptitud espacial psicotécnico: cubos, giros y figuras","description":"Aptitud espacial en el psicotécnico: reglas para resolver giros, desarrollos de cubos, conteo de bloques y papel doblado, con ejemplos resueltos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('competencias-entrevista-personal-guardia-civil', 'articulo', 'Las seis competencias de la entrevista personal de la Guardia Civil y cómo demostrarlas', 'La convocatoria enumera seis competencias que valora la entrevista personal. Qué significa cada una, cómo demostrarla con ejemplos propios, quién te entrevista, qué documentos llevar y cómo se revisa un «no apto provisional».', 'La entrevista personal es una de las tres pruebas de aptitud psicofísica, junto con las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) y el reconocimiento médico. **Respuesta corta:** no puntúa; se califica como «apto» o «no apto provisional», y la convocatoria dice exactamente qué se valora: **seis competencias**. Saberlas te permite prepararte con criterio, a partir de tu propia experiencia y sin inventar un personaje.

Todo lo que sigue sale de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), bases 6.1.3.b y 8.2. Los ejemplos y casos prácticos son nuestros y sirven solo para entrenar.

## Qué dice la convocatoria

Según la base 6.1.3.b, la entrevista evalúa «la capacidad de los aspirantes para adecuarse a las exigencias derivadas del desempeño profesional». Permite comprobar que tienes, «en grado adecuado», las competencias necesarias para superar el periodo académico y desempeñar después los cometidos de la Escala de Cabos y Guardias.

Tres rasgos de la prueba que conviene tener claros:

- Es una **prueba independiente** del resto.
- Consiste en la **recogida de información a través del diálogo y de los test** que consideren pertinentes los entrevistadores.
- Sigue un **desarrollo semiestructurado**: hay un guion, pero la conversación se adapta a lo que respondes.

Las competencias que se valoran son estas seis:

| N.º | Competencia | En pocas palabras |
|---|---|---|
| I | Adecuación a normas y código de conducta | Aceptas y cumples las reglas |
| II | Responsabilidad/madurez | Asumes tus actos y tus compromisos |
| III | Espíritu de sacrificio y abnegación | Antepones el objetivo y a los demás a tu comodidad |
| IV | Autocontrol | Mantienes la calma bajo presión |
| V | Habilidades sociales y de comunicación | Te expresas con claridad y te relacionas bien |
| VI | Adaptación | Te ajustas a cambios y entornos nuevos |

La columna de la derecha es nuestra síntesis; los nombres de las competencias son los de la convocatoria. El Jefe de la Jefatura de Enseñanza fija previamente los criterios con los que se valora cada una, y esos criterios no se publican en la convocatoria.

## Quién te entrevista y con qué información

La entrevista la realiza un **órgano de apoyo asesor especialista**, dependiente del Presidente del Tribunal de Selección, compuesto por personal titulado en Psicología y por Oficiales o Suboficiales de la Guardia Civil. En cada entrevista **debe estar presente, al menos, un psicólogo**.

Los entrevistadores no parten de cero. Cuentan con:

1. **El cuestionario BIODATA**, que rellenas antes de la entrevista. No puntúa: es solo un elemento de apoyo. Lo explicamos en el artículo sobre el [cuestionario BIODATA](/blog/cuestionario-biodata-guardia-civil).
2. **El informe de vida laboral** o, si eres militar, la **Hoja General de Servicios**, que debes aportar el día de la citación.
3. **Los datos de la prueba psicotécnica**, que pueden usarse de forma instrumental para orientar la conversación. La convocatoria aclara que el resultado de la entrevista **no depende de modo exclusivo** de esa prueba. Si quieres entender esa parte, lee el artículo sobre el [test de personalidad](/blog/test-personalidad-guardia-civil).

La consecuencia práctica es sencilla: **lo que digas tiene que cuadrar** con lo que escribiste en el BIODATA, con tu vida laboral y con tu perfil. No se trata de dar respuestas «correctas», sino coherentes y verdaderas.

## Cómo demostrar cada competencia

Declarar «soy responsable» no demuestra nada. Lo que funciona es **contar situaciones reales** y concretas. Para cada competencia te damos qué se busca, qué tipo de experiencia te sirve y una señal de alarma.

### I. Adecuación a normas y código de conducta

**Qué se busca:** que aceptas las reglas, incluso cuando no te gustan o nadie te vigila, y que entiendes por qué existen.

**Experiencias útiles:** normas de seguridad en un trabajo, reglamentos deportivos, horarios que respetaste aunque te costaran, una situación en la que dijiste que no a algo irregular.

**Señal de alarma:** presentar las normas como un estorbo o presumir de saltártelas «cuando no tienen sentido».

### II. Responsabilidad y madurez

**Qué se busca:** que asumes las consecuencias de tus actos, cumples tus compromisos y reconoces tus errores.

**Experiencias útiles:** un error que cometiste, cómo lo afrontaste y qué cambiaste después; personas que dependían de ti (familia, compañeros, un equipo).

**Señal de alarma:** culpar siempre a otros o afirmar que nunca te equivocas.

### III. Espíritu de sacrificio y abnegación

**Qué se busca:** disposición a renunciar a comodidades por un objetivo o por los demás.

**Experiencias útiles:** la propia preparación de la oposición (horarios, renuncias), cuidado de familiares, voluntariado, temporadas de trabajo duro.

**Señal de alarma:** dramatizar o convertir la respuesta en una lista de quejas.

### IV. Autocontrol

**Qué se busca:** que manejas la tensión, la frustración y la provocación sin perder la compostura.

**Experiencias útiles:** atención al público, conflictos en el trabajo o en el deporte, momentos de presión en los que mantuviste la calma.

**Señal de alarma:** relatos en los que «el otro se lo merecía». Si alguna vez perdiste el control, puedes contarlo, pero explica qué aprendiste.

### V. Habilidades sociales y de comunicación

**Qué se busca:** que te expresas con claridad, escuchas y te relacionas bien con compañeros, ciudadanos y mandos.

**Experiencias útiles:** trabajo en equipo, explicar algo complejo a otra persona, resolver un malentendido.

**Señal de alarma:** respuestas larguísimas que no contestan a la pregunta, o monosílabos. La propia entrevista es la prueba de esta competencia: escucha la pregunta entera y responde a lo que se te pregunta.

### VI. Adaptación

**Qué se busca:** capacidad de ajustarte a cambios, a entornos nuevos y a la vida fuera de tu zona habitual.

**Experiencias útiles:** cambios de ciudad, de trabajo, de grupo o de estudios; convivir con personas distintas.

**Señal de alarma:** decir que te da igual el destino sin haberlo pensado. La movilidad es una realidad de la profesión, y conviene que la hayas valorado de verdad. Puedes leer cómo funcionan [los destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

## El método para contar tus ejemplos

Una forma ordenada de relatar una experiencia es la estructura **situación, acción y resultado**:

1. **Situación:** qué pasó, dónde y cuál era tu papel.
2. **Acción:** qué hiciste tú, en concreto (no «hicimos»).
3. **Resultado:** cómo terminó y qué aprendiste.

### Ejemplo resuelto (caso hipotético)

Pregunta: «Cuéntame una situación en la que tuvieras que controlar tus nervios».

- **Respuesta floja:** «Soy una persona muy tranquila, no me altero nunca».
- **Respuesta sólida:** «Trabajaba de cajero en un supermercado. Un cliente empezó a gritarme porque una oferta no se aplicaba (situación). Le dejé terminar, le pedí el ticket, comprobé que la oferta era de otra marca y se lo enseñé; como seguía molesto, llamé a la encargada para que lo valorase ella (acción). Se marchó más calmado, y desde entonces reviso los carteles al empezar el turno para poder explicarlos (resultado)».

La segunda respuesta muestra autocontrol, comunicación y responsabilidad a la vez, y se puede comprobar con preguntas de seguimiento.

## Cómo preparar la entrevista paso a paso

1. **Relee tu solicitud y tu BIODATA** si conservas copia: fechas, trabajos, estudios.
2. **Haz una tabla de seis filas** (una por competencia) y busca dos experiencias para cada una. Una misma historia puede servir para varias.
3. **Escribe cada historia en tres frases** (situación, acción, resultado). No la memorices palabra por palabra: memoriza los hechos.
4. **Piensa en tu motivación**: por qué la Guardia Civil y no otro empleo, qué sabes de la profesión y de la formación en la [Academia de Baeza](/blog/academia-baeza-guardia-civil).
5. **Prepara tus puntos débiles** con honestidad: qué te cuesta y qué haces para mejorarlo.
6. **Ensaya en voz alta** con alguien que te haga preguntas de seguimiento («¿y qué hiciste tú?», «¿qué cambiarías?»).
7. **Revisa la logística**: citación, documentación (vida laboral u Hoja General de Servicios) y normas de la sala.

Sobre las normas: la base 5.3 prohíbe entrar en las salas de entrevistas con **teléfonos móviles, relojes o gafas inteligentes** o cualquier dispositivo que permita grabar, reproducir, transmitir o recibir datos, imágenes o sonidos. Incumplirlo supone la exclusión. Y la base 6.2 establece el **llamamiento único**: si no te presentas cuando se inicia tu turno, quedas excluido, salvo las excepciones que prevé el Reglamento.

## Cómo se califica y qué es el «no apto provisional»

Los miembros del órgano de apoyo emiten una **propuesta motivada e individualizada** y el Tribunal de Selección califica la entrevista como **«apto»** o **«no apto provisional»** (base 8.2.1). Las calificaciones se exponen en el lugar de la entrevista y en la web de la Guardia Civil.

El «no apto provisional» no es definitivo:

- **Puedes solicitar la revisión**, dirigida al Presidente del Tribunal de Selección, en el plazo que fije la resolución que publique la calificación (base 8.2.2).
- La revisión la hacen **Juntas de Revisión formadas por titulados en Psicología**, que estudian la documentación de la entrevista, **oyen al interesado** y emiten una propuesta motivada para la calificación definitiva (base 8.2.3).
- Si **no pides la revisión** en plazo, o si **se confirma** tras revisarla, pasas a «no apto» definitivo y quedas excluido (base 8.2.4).

La convocatoria no fija ese plazo en días: lo marca cada resolución. Por eso, si recibes un «no apto provisional», lo primero es **leer la resolución y no dejar pasar el plazo**.

## Errores frecuentes

| Error | Por qué perjudica | Qué hacer |
|---|---|---|
| Respuestas memorizadas | Suenan falsas y se desmontan con una repregunta | Memoriza hechos, no frases |
| Ejemplos genéricos | No demuestran nada | Situación concreta, con tu papel |
| Contradecir el BIODATA | Resta credibilidad | Repasa lo que declaraste |
| Hablar mal de otros | Sugiere conflicto o falta de autocontrol | Describe hechos sin juicios |
| No haber pensado la motivación | Parece una decisión improvisada | Prepárala con datos reales de la profesión |
| Fingir un perfil «ideal» | Choca con el psicotécnico y con tu historia | Sé tú, con tus límites y lo que haces con ellos |

## Checklist antes de la entrevista

- [ ] Sé nombrar las seis competencias sin mirar.
- [ ] Tengo al menos dos experiencias reales por competencia.
- [ ] Sé contar cada una en el formato situación, acción y resultado.
- [ ] Mis respuestas coinciden con mi BIODATA y mi vida laboral.
- [ ] Tengo pensada mi motivación y mi postura sobre la movilidad.
- [ ] Llevo la vida laboral (o la Hoja General de Servicios).
- [ ] No llevo móvil, reloj inteligente ni ningún dispositivo a la sala.

Si estás preparando todas las fases, en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) tienes el proceso completo ordenado.

## Preguntas frecuentes

### ¿Cuántas competencias valora la entrevista de la Guardia Civil?

Seis: adecuación a normas y código de conducta; responsabilidad/madurez; espíritu de sacrificio y abnegación; autocontrol; habilidades sociales y de comunicación, y adaptación (base 6.1.3.b).

### ¿Quién hace la entrevista?

Un órgano de apoyo asesor con titulados en Psicología y Oficiales o Suboficiales de la Guardia Civil. En cada entrevista está presente, al menos, un psicólogo.

### ¿Puntúa la entrevista?

No suma puntos a tu nota final. Se califica como «apto» o «no apto provisional», y el «no apto» definitivo excluye del proceso.

### ¿Qué pasa si me dan «no apto provisional»?

Puedes pedir la revisión en el plazo que indique la resolución. La estudia una Junta de Revisión de psicólogos, que te oye. Si no la pides o se confirma, quedas excluido.

### ¿Influye el test de personalidad en la entrevista?

Sus datos pueden usarse de forma instrumental para orientar la conversación, pero la convocatoria dice que el resultado de la entrevista no depende de forma exclusiva de esa prueba.

### ¿Qué documentación tengo que llevar?

El informe de vida laboral o, si eres militar, la Hoja General de Servicios, además de lo que indique la citación. El BIODATA se rellena antes de la entrevista.

### ¿Puedo entrar con el móvil apagado?

La base 5.3 prohíbe entrar en las salas de entrevistas con teléfonos móviles y otros dispositivos de grabación o transmisión, sin distinguir si están apagados. Déjalo fuera.',
   '/blog/competencias-entrevista-personal-guardia-civil.jpg', 'Aspirante ante una psicóloga y un oficial de la Guardia Civil en la entrevista personal', 'publicado', '2026-12-01T06:45:00.000Z', 'acceso-guardia-civil',
   ARRAY['entrevista', 'competencias', 'no apto provisional', 'revisión']::text[], '{"title":"Entrevista Guardia Civil: las 6 competencias que valoran","description":"Las seis competencias de la entrevista personal de la Guardia Civil: cómo demostrarlas, quién entrevista, qué llevar y cómo se revisa el no apto."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuestionario-biodata-guardia-civil', 'articulo', 'Cuestionario BIODATA de la Guardia Civil: qué es y cómo rellenarlo', 'Antes de la entrevista personal se rellena un cuestionario biográfico que no puntúa, pero sirve de apoyo al entrevistador. Qué dice la convocatoria, qué documentos hay que llevar, cómo preparar tu cronología y cómo contestar sin contradecirte.', 'Quien llega a la entrevista personal se encuentra antes con un cuestionario sobre su propia vida: estudios, trabajos, entorno, aficiones. Es el **BIODATA**. La respuesta corta: **no puntúa**, pero sirve de **apoyo para la entrevista**, y el mismo día de la citación tienes que aportar tu **informe de vida laboral** (y, si eres militar, la **Hoja General de Servicios**). Rellenarlo con exactitud y coherencia es fácil si has preparado antes tu propia cronología.

## Qué dice la convocatoria

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 6.1.3.b) lo recoge así: antes de la entrevista «se cumplimentará un cuestionario de información biográfica (BIODATA) el cual no tendrá carácter puntuable, sirviendo, únicamente, como elemento de apoyo para la realización de la misma, del mismo modo que el informe de vida laboral y/o, en el caso del personal militar, la Hoja General de Servicios, que se deberán aportar en la fecha de citación para la ejecución de la entrevista».

Traducido:

| Qué dice | Qué significa |
|---|---|
| «No tendrá carácter puntuable» | No suma ni resta puntos |
| «Elemento de apoyo» para la entrevista | El entrevistador lo usa como punto de partida para preguntar |
| Informe de vida laboral y, si eres militar, Hoja General de Servicios | Documentos que debes llevar el día de la citación |

La convocatoria no detalla el contenido del cuestionario ni su extensión, así que nadie puede asegurarte qué preguntas trae exactamente.

## Cómo es la entrevista a la que acompaña

Conviene saber dónde encaja el BIODATA. Según la misma base 6.1.3.b:

- La entrevista evalúa seis competencias: **adecuación a normas y código de conducta; responsabilidad y madurez; espíritu de sacrificio y abnegación; autocontrol; habilidades sociales y de comunicación; y adaptación**.
- Sigue un **desarrollo semiestructurado**: diálogo y los test que consideren pertinentes los entrevistadores.
- La realiza un órgano de apoyo formado por personal titulado en Psicología y por oficiales o suboficiales de la Guardia Civil, y en cada entrevista debe estar presente **al menos un psicólogo**.
- Los datos del psicotécnico pueden usarse de forma instrumental, sin que el resultado dependa exclusivamente de ellos.
- Se califica como **«apto» o «no apto provisional»**; el «no apto provisional» puede revisarse a petición del interesado ante Juntas de Revisión compuestas por titulados en Psicología (base 8.2).

El BIODATA, tu vida laboral, tu perfil del [test de personalidad](/blog/test-personalidad-guardia-civil) y lo que digas en la entrevista son piezas de un mismo puzle. Tienes la visión general de esta fase en [entrevista y reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil).

## Documentos que tienes que aportar

### Informe de vida laboral

Lo emite la Seguridad Social y puede solicitarse por sus canales electrónicos o presenciales. Recoge tus altas y bajas como trabajador, con empresas y fechas.

- **Pídelo con antelación**, pero no tanta como para que quede desfasado: lo razonable es tenerlo reciente cuando te citen.
- **Revísalo**: comprueba que las fechas y empresas coinciden con lo que recuerdas y con lo que vas a escribir.
- Si **no has trabajado nunca**, el informe lo reflejará; llévalo igualmente, porque la convocatoria lo pide.

### Hoja General de Servicios (solo personal militar)

Si te presentas siendo militar, solicítala en tu unidad con tiempo suficiente: no dependes solo de ti para obtenerla.

### Y siempre

- **El DNI**: puedes tener que acreditar tu identidad en cualquier momento (base 6.5).
- **Copias** de los documentos, por si acaso.
- **Nada de dispositivos**: la base 5.3 prohíbe entrar en las salas de entrevistas con móviles, relojes o gafas inteligentes o cualquier aparato de grabación o transmisión.

## Qué suele preguntar un cuestionario biográfico

Como la convocatoria no lo detalla, solo podemos hablar de lo habitual en este tipo de cuestionarios:

- **Formación**: estudios, centros, resultados, cambios y abandonos.
- **Trayectoria laboral**: empleos, funciones, duración y motivos de cada cambio.
- **Entorno personal y familiar.**
- **Intereses, aficiones y deporte.**
- **Experiencias relevantes**: situaciones difíciles y cómo las afrontaste.
- **Motivación** para ingresar en la Guardia Civil.

## Prepara tu cronología antes de la citación

Es el paso que más tranquilidad da. Con tu vida laboral y tus títulos delante, construye una tabla así:

| Periodo | Qué hacía | Por qué empecé | Por qué lo dejé o cambié | Qué aprendí |
|---|---|---|---|---|
| (fechas) | Estudios, trabajo, preparación, búsqueda de empleo… | | | |

**Ejemplo (hipotético).** Lucía estudió un ciclo formativo, trabajó dos años en hostelería, estuvo seis meses sin empleo y desde entonces combina un trabajo a media jornada con la oposición. En su tabla anota los seis meses sin empleo como lo que fueron: búsqueda de trabajo y comienzo de la preparación. En la entrevista, cuando le preguntan por ese periodo, lo explica en dos frases y sin incomodidad. Un hueco no es un problema; un hueco que no sabes explicar, o que explicas de forma distinta en el cuestionario y en la entrevista, sí lo puede ser.

## Cómo rellenarlo: cuatro reglas

### 1. Sé veraz y exacto

El entrevistador tiene tu vida laboral delante. Si escribes fechas o empresas que no coinciden, se nota. Además, la veracidad importa en todo el proceso: la convocatoria prevé la exclusión de quien no reúna o pierda los requisitos (base 2.2) y recuerda la responsabilidad en que se puede incurrir por falsedad en la solicitud o en la consignación de méritos (base 3.2.1).

### 2. Sé coherente

El cuestionario, la solicitud, la vida laboral, el test de personalidad y lo que digas en la entrevista **tienen que contar la misma historia**. Repasa fechas y motivos antes de escribir.

### 3. Sé concreto

Respuestas como «me gusta ayudar a la gente» o «soy responsable» no dicen nada por sí solas. Mejor un dato o un ejemplo: «durante dos años entrené a un equipo infantil los fines de semana».

### 4. Todo lo que escribas es material de preguntas

Si mencionas una afición, una experiencia o un logro, **prepárate para hablar de ello con detalle**. No incluyas nada que no puedas desarrollar con naturalidad.

## Cómo usa el entrevistador el BIODATA

Sirve para **orientar preguntas**. Si detecta un hueco en tu vida laboral, un cambio brusco de estudios o una afición llamativa, es probable que pregunte por ello. No es una trampa: es la base de una conversación semiestructurada. Por eso conviene tener claro:

- Por qué elegiste tus estudios y tus trabajos.
- Qué aprendiste en cada etapa.
- Por qué quieres ser guardia civil y por qué ahora.

## Practica en voz alta

Escribir la cronología es la mitad del trabajo; la otra mitad es saber contarla. Pide a alguien de confianza que, con tu tabla delante, te haga preguntas como lo haría un entrevistador: «¿por qué dejaste ese trabajo?», «¿qué hiciste esos meses?», «¿qué te aportó ese ciclo formativo?». Contesta en uno o dos minutos por pregunta, sin leer. Si en algún punto titubeas o tu respuesta cambia cada vez, ahí tienes lo que debes aclarar antes de la citación. No se trata de memorizar un discurso, sino de que tu propia historia te resulte fácil de explicar.

## Errores frecuentes

- **Dejar espacios en blanco** o contestar con vaguedades.
- **Adornar la trayectoria.** Es contraproducente y arriesgado.
- **Fechas que no cuadran** con la vida laboral.
- **Contradecir lo que dijiste en la solicitud** o lo que se desprende del test de personalidad.
- **Olvidar los documentos** el día de la citación.
- **Llegar sin haber repasado tu propia historia.**

## Checklist

- [ ] Tengo el informe de vida laboral reciente y lo he revisado.
- [ ] Si soy militar, he pedido la Hoja General de Servicios con tiempo.
- [ ] He preparado mi cronología: periodos, motivos y aprendizajes.
- [ ] Sé explicar en una o dos frases cualquier hueco o cambio.
- [ ] Puedo hablar con detalle de todo lo que voy a escribir.
- [ ] Llevo DNI y copias, y ningún dispositivo electrónico.

Si estás al principio del camino y quieres preparar el examen y todas las fases con un plan, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil). Y para repasar qué se exige en cada fase, [la convocatoria de 2026 explicada](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## Preguntas frecuentes

### ¿Puntúa el cuestionario BIODATA?

No. La convocatoria dice que no tiene carácter puntuable y que sirve solo como apoyo para la entrevista.

### ¿Qué documentos hay que llevar a la entrevista?

El informe de vida laboral y, en el caso del personal militar, la Hoja General de Servicios, que deben aportarse en la fecha de citación para la entrevista. Y, como en todas las pruebas, el DNI.

### ¿Qué pasa si no he trabajado nunca?

Nada en especial. Aporta igualmente el informe de vida laboral y explica con naturalidad a qué te has dedicado: estudios, preparación de la oposición, voluntariado, deporte.

### ¿Qué pasa si hay un hueco en mi vida laboral?

No es un problema en sí. Prepara una explicación sincera y breve, y asegúrate de que coincide con lo que escribas en el cuestionario.

### ¿Cuándo se rellena?

Con anterioridad a la entrevista personal, según indica la convocatoria.

### ¿Quién lee el cuestionario?

Lo utilizan los entrevistadores del órgano de apoyo, en el que hay personal titulado en Psicología y oficiales o suboficiales de la Guardia Civil.

### ¿Puedo suspender la entrevista por lo que ponga en el BIODATA?

El BIODATA no se califica. Lo que se califica es la entrevista, como «apto» o «no apto provisional», según las competencias que demuestres. Un cuestionario incoherente o inexacto, eso sí, puede dar lugar a preguntas difíciles.',
   '/blog/cuestionario-biodata-guardia-civil.jpg', 'Aspirante esperando con una carpeta en el pasillo de un edificio oficial', 'publicado', '2026-11-30T06:28:00.000Z', 'acceso-guardia-civil',
   ARRAY['entrevista', 'BIODATA', 'vida laboral', 'documentación']::text[], '{"title":"Cuestionario BIODATA Guardia Civil: qué es y cómo rellenarlo","description":"BIODATA de la Guardia Civil: qué es el cuestionario biográfico previo a la entrevista, qué documentos llevar y cómo rellenarlo con coherencia y sin errores."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('entrenar-psicotecnico-15-minutos-guardia-civil', 'guia', 'Cómo entrenar el psicotécnico en 15 minutos al día', 'El psicotécnico se entrena mejor en sesiones cortas y constantes que en maratones. Una rutina de quince minutos al día, la nota que necesitas de verdad (con los números de la convocatoria), un plan por fases y cómo medir tu progreso.', 'El psicotécnico es la prueba más fácil de abandonar, porque no da la sensación de avance que deja terminar un tema. Y, sin embargo, **es eliminatoria**: sin el mínimo, quedas fuera aunque tengas una nota excelente en conocimientos. La respuesta corta: no hace falta dedicarle horas; hace falta **constancia, cronómetro y revisar cada fallo**. Quince minutos diarios, bien organizados, dan para mucho.

## Qué nota necesitas de verdad

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), bases 6.1.2, 7.3 y 7.8) fija estas cifras para las aptitudes intelectuales:

- **80 preguntas** y **55 minutos** en total, **incluida la lectura de instrucciones**.
- Puntuación de **0 a 30**; **mínimo de 12** para no quedar excluido.
- Cuatro alternativas por pregunta; los **errores penalizan** y las preguntas en blanco no.

Con la fórmula de la base 7.3, cada acierto vale **0,375 puntos** y cada error resta **0,125**. Para llegar a 12 puntos necesitas **32 aciertos netos** (aciertos menos un tercio de los errores):

| Aciertos | Errores | Aciertos netos | Puntos | ¿Supera el mínimo? |
|---|---|---|---|---|
| 32 | 0 | 32 | 12,0 | Justo |
| 40 | 24 | 32 | 12,0 | Justo |
| 30 | 15 | 25 | 9,4 | No |
| 45 | 15 | 40 | 15,0 | Sí |
| 52 | 12 | 48 | 18,0 | Sí |
| 60 | 12 | 56 | 21,0 | Sí |

Fíjate en la segunda fila: con 40 aciertos, 24 errores te dejan en el límite. **Los errores cuestan caro.**

Y superar el mínimo no es el objetivo final: los puntos del psicotécnico (hasta 30) forman parte de la nota de oposición (hasta 150), que con el concurso decide quién pasa a las pruebas psicofísicas. Cada acierto neto suma. Te lo contamos en [la nota de corte](/blog/nota-de-corte-guardia-civil) y en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).

Un aviso: la convocatoria **no detalla qué tipos de ejercicio** componen la batería. La rutina que proponemos entrena los formatos habituales en pruebas de aptitudes (numéricos, verbales, espaciales), sin dar por hecho cuáles saldrán. El resumen de la prueba está en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

## Por qué quince minutos al día

- **La práctica repartida en el tiempo** funciona mejor para reconocer patrones que las sesiones largas y esporádicas.
- **Es sostenible.** Quince minutos caben en cualquier día, incluso con turnos o con hijos.
- **Evita el desgaste.** Los ejercicios de razonamiento cansan, y con la fatiga aumentan los errores por precipitación.

Si prefieres dos o tres sesiones semanales algo más largas, también funciona: lo que importa es la regularidad durante meses y que siempre haya cronómetro. Los quince minutos diarios son la forma más fácil de no fallar.

## La estructura de cada sesión

| Minutos | Qué hacer |
|---|---|
| 0-1 | Preparar cronómetro y hoja de registro |
| 1-11 | Bloque de ejercicios cronometrado |
| 11-15 | Corregir y anotar el tipo de cada fallo |

La corrección no es opcional: es la parte que más rinde.

## Una rutina semanal

| Día | Tipo de ejercicio | Cómo |
|---|---|---|
| Lunes | [Series numéricas](/blog/series-numericas-psicotecnico-guardia-civil) | 12-15 series; anota el patrón de cada fallo |
| Martes | [Razonamiento verbal](/blog/razonamiento-verbal-psicotecnico-guardia-civil) | 15 ejercicios entre sinónimos, antónimos y analogías |
| Miércoles | [Aptitud espacial](/blog/aptitud-espacial-psicotecnico-guardia-civil) | 10 ejercicios de giros, cubos o bloques |
| Jueves | Mixto | 15 preguntas variadas, a unos 40 segundos cada una |
| Viernes | Repaso de fallos | Rehaz solo las preguntas falladas de la semana |
| Sábado | Simulacro corto | 20 preguntas seguidas en unos 14 minutos |
| Domingo | Descanso | Sin ejercicios |

Una vez al mes, sustituye la sesión del sábado por **un simulacro completo de 80 preguntas en 55 minutos**, para medir tu resistencia y tu ritmo reales.

## Un plan por fases

Es orientativo: ajusta la duración de cada fase a tu punto de partida y al tiempo que quede.

| Fase | Objetivo | Qué cambia |
|---|---|---|
| 1. Conocer los formatos (primeras semanas) | Entender cada tipo de ejercicio y sus reglas | Tiempo más holgado; prioridad, entender por qué fallas |
| 2. Ganar ritmo | Bajar a unos 40 segundos por pregunta | Cronómetro estricto; empiezas a saltar preguntas |
| 3. Simular el examen | Sostener el ritmo 55 minutos | Más sesiones mixtas y simulacros completos mensuales |
| 4. Mantener (últimas semanas) | No perder lo ganado | Sesiones mixtas cortas; nada nuevo los últimos días |

## Cómo medir tu progreso

Anota, en una hoja o en el móvil, cinco datos por sesión:

1. **Fecha y tipo de ejercicio.**
2. **Aciertos, errores y blancos.**
3. **Aciertos netos** (aciertos − errores ÷ 3).
4. **Tiempo medio por pregunta.**
5. **Tipo de cada fallo**: no sabía hacerlo, me precipité o me quedé sin tiempo.

La última columna es la más útil, porque cada tipo de fallo tiene un remedio distinto:

| Tipo de fallo | Remedio |
|---|---|
| No sabía hacerlo | Teoría y ejemplos resueltos de ese formato |
| Me precipité | Leer el enunciado completo y comprobar la regla antes de marcar |
| Me quedé sin tiempo | Saltar antes las preguntas que se atascan |

**Ejemplo (hipotético).** En tres semanas, María registra 18 fallos: 4 por no saber, 11 por precipitación y 3 por tiempo. Su problema no es la teoría, sino la prisa. Durante dos semanas se obliga a comprobar cada serie en todos sus términos antes de marcar; sus errores bajan y sus aciertos netos suben, aunque contesta alguna pregunta menos.

## Dónde conseguir ejercicios

Para que la rutina funcione necesitas material variado y con soluciones. Algunas pautas para elegirlo:

- **Que tenga solución explicada**, no solo la letra correcta: sin saber por qué fallas, no corriges nada.
- **Que mezcle formatos** (numéricos, verbales, espaciales), porque en una batería real no te avisan de qué viene.
- **Que te obligue a cronometrar**: si es en papel, pon el cronómetro del móvil fuera de tu vista y apunta el tiempo al terminar.
- **Desconfía de quien asegure** que su material reproduce «el psicotécnico oficial»: la convocatoria no publica los tipos de ejercicio ni sus modelos.

## El ritmo el día del examen

Con 55 minutos para 80 preguntas, y teniendo en cuenta que las instrucciones consumen parte del tiempo, conviene llevar **puntos de control**:

| Preguntas | Tiempo orientativo |
|---|---|
| 20 | Unos 13 minutos |
| 40 | Unos 26 minutos |
| 60 | Unos 40 minutos |
| 80 | Con algún minuto para volver a las marcadas |

Si vas por detrás, no te bloquees: salta las que se atascan y asegura las que sabes hacer.

## Reglas para que funcione

- **Siempre con cronómetro.** Sin tiempo, estás entrenando otra prueba.
- **Corrige tus fallos el mismo día.** Un fallo sin revisar se repite.
- **Aprende a saltar.** Marca las que te atascan y vuelve al final.
- **Contesta si puedes descartar.** Contestar a ciegas no te da ventaja de media, pero con una opción descartada contestar compensa.
- **No lo dejes para el final.** Un intensivo el último mes rinde menos que meses de rutina corta.

## Errores frecuentes

- **Practicar solo el formato que se te da bien.** Es agradable, pero no mejora tu nota.
- **Contar aciertos y olvidar los errores.** Tu nota depende de los aciertos netos.
- **Hacer simulacros completos cada semana desde el principio.** Cansan y enseñan poco si aún no dominas los formatos.
- **Abandonar en las semanas de más temario.** Quince minutos siempre caben.

## Qué no se entrena con ejercicios

El **cuestionario de personalidad** no se entrena con baterías: se responde con sinceridad y coherencia. Lo tienes explicado en [el test de personalidad de la Guardia Civil](/blog/test-personalidad-guardia-civil). Si quieres baterías corregidas con tiempo medido, las tienes en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Checklist semanal

- [ ] He hecho al menos cinco sesiones con cronómetro.
- [ ] He corregido y clasificado todos los fallos.
- [ ] He calculado mis aciertos netos de la semana.
- [ ] He tocado los tres formatos: numérico, verbal y espacial.
- [ ] Sé cuál es mi tipo de fallo más frecuente y qué hago para corregirlo.

## Preguntas frecuentes

### ¿Cuánto tiempo hay que dedicar al psicotécnico?

No hay una cifra oficial. Quince minutos al día durante meses permiten reconocer los formatos y ganar ritmo; si partes de cero, empieza cuanto antes.

### ¿Cuántos aciertos hacen falta para aprobar?

Para el mínimo de 12 puntos hacen falta 32 aciertos netos sobre 80, es decir, aciertos menos un tercio de los errores.

### ¿Hay que contestar todas las preguntas?

No es obligatorio. Las preguntas en blanco no restan y los errores sí. Contesta cuando puedas descartar alguna opción.

### ¿Cuándo hago el primer simulacro completo?

Cuando lleves unas semanas de rutina y conozcas los formatos. Sirve para medir tu ritmo y tu resistencia, no solo para sacar nota.

### ¿Es mejor entrenar todos los días o dos días a la semana más tiempo?

Las dos opciones funcionan si se mantienen durante meses. La sesión diaria corta es más fácil de sostener y repite más a menudo el reconocimiento de patrones.

### ¿Qué hago si me estanco?

Revisa tu registro de fallos. Casi siempre el estancamiento se explica por un formato concreto o por un tipo de fallo (normalmente, la precipitación) que se repite.',
   '/blog/entrenar-psicotecnico-15-minutos-guardia-civil.jpg', 'Opositora resolviendo ejercicios de psicotécnico en la cocina con un temporizador en el móvil', 'publicado', '2026-11-29T06:11:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'rutina', 'entrenamiento', 'aptitudes']::text[], '{"title":"Entrenar el psicotécnico en 15 minutos al día: rutina","description":"Rutina de 15 minutos diarios para el psicotécnico de la Guardia Civil: nota que necesitas, qué practicar cada día, plan por fases y cómo medir tu progreso."}'::jsonb, '{"duracion":"15 minutos al día"}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('razonamiento-verbal-psicotecnico-guardia-civil', 'articulo', 'Razonamiento verbal en el psicotécnico: sinónimos, antónimos y analogías', 'Sinónimos, antónimos, analogías y palabras intrusas son formatos verbales muy comunes en las baterías de aptitudes. Cómo se resuelve cada uno, con ejemplos y ejercicios corregidos, y cómo ampliar vocabulario sin pasarte la vida con el diccionario.', 'El razonamiento verbal mide cómo manejas las palabras y las relaciones entre ellas: si captas matices de significado, si ves la lógica que une dos conceptos y si detectas lo que no encaja. La respuesta corta: los formatos más comunes (sinónimos, antónimos, analogías, palabra intrusa y completar frases) se resuelven con un **método de descarte** y mejoran mucho con **vocabulario y práctica cronometrada**.

Como en los demás artículos sobre el psicotécnico, una precisión: la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 6.1.2) habla de una batería de aptitudes intelectuales de **80 preguntas en 55 minutos** que mide «capacidad de aprendizaje, análisis, razonamiento y potencial cognitivo», pero **no detalla los tipos de ejercicio**. Lo que sigue son formatos verbales frecuentes en pruebas de este tipo, útiles para entrenar aunque no se pueda saber con certeza cuáles aparecerán. El resumen de la prueba está en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

Todos los ejemplos de este artículo son de elaboración propia.

## Una regla de la convocatoria que debes recordar

La base 6.1.2 dice que cada pregunta tiene una única respuesta válida y que, si consideras correctas varias opciones, **debes señalar la más completa**. En razonamiento verbal esto ocurre a menudo: dos palabras pueden parecerse a la del enunciado, pero una recoge el significado con más precisión. No te quedes con la primera que «más o menos» vale.

## Sinónimos

Se te da una palabra y eliges la de significado igual o más próximo.

> **Ecuánime** → a) violento b) imparcial c) tímido d) lento

Respuesta: **b) imparcial**. Ecuánime es quien juzga con serenidad y sin favorecer a nadie.

> **Exiguo** → a) escaso b) estrecho c) exigente d) excesivo

Respuesta: **a) escaso**. Fíjate en las trampas: «exigente» y «excesivo» empiezan igual, y «estrecho» se le acerca en la idea de «poco», pero exiguo significa insuficiente, escaso.

**Cómo resolverlos:**

- Si no conoces la palabra, **busca su raíz o su familia**: «ecuánime» comparte origen con «ecuanimidad» y con la idea latina de «igual».
- **Descarta las opciones que no encajan**, aunque no sepas la correcta.
- Desconfía de las opciones que **se parecen por la forma** (empiezan o suenan igual) pero no por el significado.
- **Sustituye en una frase**: «un juez ecuánime» / «un juez imparcial». Si la frase conserva el sentido, vas bien.

## Antónimos

Se pide la palabra de significado contrario.

> **Efímero** → a) breve b) duradero c) frágil d) veloz

Respuesta: **b) duradero**. Efímero es lo que dura poco; «breve» es un sinónimo puesto como cebo.

> **Pródigo** → a) generoso b) derrochador c) tacaño d) hijo

Respuesta: **c) tacaño**. Pródigo es quien gasta sin medida; «derrochador» y «generoso» van en la misma dirección.

**Cómo resolverlos:**

- **Primero define la palabra** y luego busca su contrario. Muchos errores vienen de marcar un sinónimo, que suele estar entre las opciones a propósito.
- **Lee el enunciado dos veces**: con prisa, «antónimo» y «sinónimo» se confunden.
- Si dudas entre dos contrarios, aplica la regla de la **opción más completa**: el antónimo más exacto, no el aproximado.

## Analogías

Se da una pareja de palabras con una relación y hay que encontrar la que completa otra pareja con **la misma relación**.

> **Médico es a hospital como profesor es a…** a) examen b) colegio c) libro d) alumno

Respuesta: **b) colegio**. La relación es «profesional → lugar donde trabaja».

**Cómo resolverlas:**

1. **Nombra la relación con una frase concreta**: «un médico trabaja en un hospital».
2. **Aplica la misma frase** a cada opción: «un profesor trabaja en un examen» no tiene sentido; «en un colegio», sí.
3. Si varias encajan, **afina la frase**: cuanto más precisa, menos opciones sobreviven.

Las relaciones más habituales:

| Relación | Ejemplo |
|---|---|
| Profesional y lugar | Médico : hospital :: profesor : colegio |
| Profesional e instrumento | Pintor : pincel :: cirujano : bisturí |
| Instrumento y función | Cuchillo : cortar :: lápiz : escribir |
| Parte y todo | Página : libro :: hoja : árbol |
| Animal y vivienda | Abeja : colmena :: hormiga : hormiguero |
| Medio | Pez : agua :: ave : aire |
| Grado o intensidad | Caliente : hirviendo :: frío : helado |
| Contrarios | Alto : bajo :: ancho : estrecho |
| Necesidad y acción | Sed : beber :: sueño : dormir |

Una trampa habitual es **invertir el orden**. En «página es a libro como árbol es a hoja», la relación se ha dado la vuelta (parte → todo frente a todo → parte), así que no es una analogía correcta. Comprueba siempre que el orden se mantiene.

## La palabra intrusa

Hay que encontrar la que no pertenece al grupo.

> **Madrid, Sevilla, París, Valencia**

Respuesta: **París**, la única que no es una ciudad española.

> **Martillo, destornillador, sierra, clavo**

Respuesta: **clavo**: los otros tres son herramientas; el clavo es el material sobre el que se trabaja.

**Cómo resolverlo:** busca la **categoría común** a tres de ellas y comprueba que la cuarta no la cumple. Si se te ocurren dos criterios (por ejemplo, tamaño y función), elige el más claro y general: es el que suele buscar quien diseña la pregunta.

## Completar oraciones

Se pide la palabra o expresión que da sentido a una frase. Aquí mandan las **pistas gramaticales y los conectores**.

> El acusado no mostró arrepentimiento; ______, el juez le impuso la pena máxima. a) sin embargo b) por consiguiente c) aunque d) no obstante

Respuesta: **b) por consiguiente**. La segunda parte es consecuencia de la primera, así que hace falta un conector consecutivo. «Sin embargo» y «no obstante» indican oposición, y «aunque» no encaja tras el punto y coma.

Un repaso rápido de conectores:

| Tipo | Ejemplos |
|---|---|
| Oposición | sin embargo, no obstante, aunque, en cambio |
| Consecuencia | por tanto, por consiguiente, así que, por eso |
| Causa | porque, ya que, puesto que |
| Adición | además, asimismo, también |

En otros formatos se pide **ordenar frases** para formar un texto coherente. Busca la frase que introduce el tema (la que no depende de ninguna anterior) y sigue el hilo de pronombres y conectores.

## Practica: seis ejercicios con solución

Date 30 segundos para cada uno.

1. Sinónimo de **inocuo**: a) peligroso b) inofensivo c) inútil d) ingenuo
2. Antónimo de **diáfano**: a) claro b) transparente c) opaco d) limpio
3. Pincel es a pintor como bisturí es a: a) hospital b) cirujano c) enfermo d) corte
4. Intrusa: triángulo, cuadrado, cubo, círculo
5. Llovía a cántaros; ______, el partido se suspendió: a) no obstante b) por eso c) aunque d) sin embargo
6. Abeja es a colmena como hormiga es a: a) insecto b) reina c) hormiguero d) tierra

**Soluciones:** 1) **b**, inocuo es lo que no hace daño; «inútil» e «ingenuo» son cebos de forma. 2) **c**, diáfano es claro o transparente. 3) **b**, relación instrumento → profesional. 4) **cubo**, el único cuerpo tridimensional. 5) **b**, conector de consecuencia. 6) **c**, animal → vivienda.

## Cómo ampliar vocabulario sin obsesionarte

- **Lee a diario**, aunque sean quince minutos: prensa, ensayo o novela. Subraya las palabras que no conoces y búscalas en el [Diccionario de la lengua española](https://dle.rae.es/).
- **Lleva un cuaderno de palabras** con su significado, un sinónimo, un antónimo y una frase de ejemplo.
- **Repásalo de forma espaciada**: a los dos días, a la semana y al mes.
- **Aprende por familias**: los prefijos y sufijos te dan el significado de muchas palabras a la vez. Por ejemplo, *a-* o *an-* (negación: amoral, anómalo), *hiper-* (exceso) frente a *hipo-* (debajo, escasez), *-cida* (que mata: homicida, insecticida), *-logía* (estudio o tratado).
- **Úsalas**: escribir o decir una palabra nueva en contexto ayuda a fijarla.

Ojo con los **parónimos**, palabras que se parecen pero significan cosas distintas: *actitud* y *aptitud*, *prever* y *proveer*, *infligir* e *infringir*. Además de las preguntas verbales, te ayudan en la prueba de [ortografía y gramática](/blog/ortografia-gramatica-examen-guardia-civil).

## Errores frecuentes

- **Elegir la opción más familiar** sin comprobar el significado.
- **No leer todas las opciones**: la segunda puede valer, pero la cuarta ser «la más completa».
- **Confundir sinónimo y antónimo** por leer deprisa.
- **Invertir la relación** en las analogías.
- **Quedarse atascado en una palabra desconocida.** Con unos 41 segundos de media por pregunta, descarta lo que puedas y decide.

## Contestar o dejar en blanco

Los errores penalizan y las preguntas en blanco no. Con cuatro alternativas, cada error resta un tercio del valor de un acierto: contestar a ciegas no te da ventaja de media, pero **si descartas al menos una opción, contestar compensa**. Lo explicamos con números en [las series numéricas](/blog/series-numericas-psicotecnico-guardia-civil) y en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).

## Checklist

- [ ] Defino la palabra antes de mirar las opciones.
- [ ] En analogías, formulo la relación con una frase y compruebo el orden.
- [ ] Busco la opción más completa, no la primera aceptable.
- [ ] Domino los conectores de oposición, causa y consecuencia.
- [ ] Llevo un cuaderno de vocabulario y lo repaso de forma espaciada.
- [ ] Practico siempre con cronómetro.

Si quieres practicar con ejercicios corregidos y tiempo medido, los tienes en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Qué tipos de razonamiento verbal pueden salir en el psicotécnico?

La convocatoria no los detalla. Los formatos habituales en baterías de aptitudes son sinónimos, antónimos, analogías, palabra intrusa, completar oraciones y ordenar frases.

### ¿Cómo mejoro mi vocabulario rápidamente?

Con lectura diaria, un cuaderno de palabras nuevas repasado de forma espaciada, el estudio de prefijos y sufijos, y práctica de ejercicios.

### ¿Penalizan los errores en el psicotécnico?

Sí. Con cuatro alternativas, cada error resta un tercio del valor de un acierto (0,125 frente a 0,375 puntos). Las preguntas en blanco no restan.

### ¿Es mejor dejar en blanco o arriesgar?

Si puedes descartar al menos una opción, contestar compensa de media. A ciegas, ni ganas ni pierdes.

### ¿Qué hago si dos opciones me parecen correctas?

La convocatoria dice que señales la más completa: la que recoge el significado o la relación con más precisión.

### ¿Sirve leer novelas para el psicotécnico?

Sí, como base de vocabulario y comprensión. Pero combínalo con ejercicios cronometrados: leer no entrena el ritmo de 41 segundos por pregunta.',
   '/blog/razonamiento-verbal-psicotecnico-guardia-civil.jpg', 'Opositora subrayando un libro en una biblioteca con luz de ventana', 'publicado', '2026-11-26T06:20:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'razonamiento verbal', 'analogías', 'vocabulario']::text[], '{"title":"Razonamiento verbal psicotécnico: tipos y ejemplos","description":"Razonamiento verbal para el psicotécnico: sinónimos, antónimos, analogías e intrusos con ejemplos resueltos, ejercicios y cómo ganar vocabulario."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('series-numericas-psicotecnico-guardia-civil', 'articulo', 'Series numéricas del psicotécnico: los patrones que más se repiten', 'Las series numéricas se resuelven reconociendo patrones, no a base de cálculo. Los esquemas que explican la mayoría de ejercicios, con ejemplos resueltos, una batería de práctica con soluciones y un método para no perder más de unos segundos en cada una.', 'En el psicotécnico de la Guardia Civil tienes **80 preguntas en 55 minutos**, unos **41 segundos por pregunta** de media, y ese tiempo incluye la lectura de instrucciones. Con ese ritmo no puedes «pensar» cada serie desde cero: tienes que **reconocer el patrón de un vistazo**. La respuesta corta de este artículo: casi todas las series que encontrarás en una batería de práctica se explican con una docena de patrones, y se aprenden con un método fijo y mucha repetición cronometrada.

Una aclaración honesta antes de empezar: la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 6.1.2) describe la prueba como «test de inteligencia general y/o escalas específicas que midan la capacidad de aprendizaje, análisis, razonamiento y potencial cognitivo», y **no detalla qué tipos de ejercicio incluye**. Las series numéricas son un formato muy habitual en este tipo de baterías y sirven para entrenar el razonamiento, pero no se puede asegurar que aparezcan ni en qué forma. Cómo está montada la prueba lo tienes en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

## Un método de cuatro pasos

1. **Mira la tendencia.** ¿Crece despacio, se dispara, baja, sube y baja? Eso ya te orienta (ver la tabla de señales más abajo).
2. **Calcula las diferencias** entre términos consecutivos. Si son constantes o siguen una regla, ya la tienes. Si no, mira las **diferencias de las diferencias**.
3. **Prueba con cocientes.** Si cada número es el anterior multiplicado por algo, es una serie geométrica.
4. **Si nada encaja, separa posiciones pares e impares.** Muchas series son dos series entrelazadas o dos operaciones alternas.

Y una regla de oro: **comprueba la regla en todos los términos**, no solo en los dos primeros. Si a los 20 o 25 segundos no ves nada, **marca la pregunta y salta**.

## Los patrones, con ejemplos resueltos

Todos los ejemplos son de elaboración propia.

### 1. Suma o resta constante

3, 7, 11, 15, **?** → se suma 4 cada vez. Respuesta: **19**.

### 2. Multiplicación o división constante

2, 6, 18, 54, **?** → se multiplica por 3. Respuesta: **162**.
100, 50, 25, 12,5, **?** → se divide entre 2. Respuesta: **6,25**.

### 3. Diferencias que crecen de forma regular

1, 2, 4, 7, 11, **?** → las diferencias son 1, 2, 3, 4; la siguiente es 5. Respuesta: 11 + 5 = **16**.

### 4. Diferencias que se multiplican

2, 3, 5, 9, 17, **?** → diferencias 1, 2, 4, 8: cada una es el doble de la anterior. La siguiente es 16. Respuesta: 17 + 16 = **33**.

### 5. Multiplicar y sumar (o restar)

1, 3, 7, 15, 31, **?** → cada término es el anterior por 2 más 1. Respuesta: 31 × 2 + 1 = **63**.

Fíjate en que esta serie también se puede leer como diferencias que se duplican (2, 4, 8, 16, y la siguiente 32). Ambas lecturas llevan a 63. Es frecuente que una serie admita dos explicaciones coherentes; si coinciden en el resultado, no pierdas tiempo decidiendo cuál es «la buena».

### 6. Cuadrados y cubos

1, 4, 9, 16, 25, **?** → cuadrados de 1 a 5. Respuesta: **36**.
2, 5, 10, 17, 26, **?** → cuadrados más 1 (1+1, 4+1, 9+1…). Respuesta: 36 + 1 = **37**.
1, 8, 27, 64, **?** → cubos. Respuesta: **125**.

Memoriza los cuadrados hasta el 15 (225) y los cubos hasta el 6 (216): reconocerlos al instante ahorra mucho tiempo.

### 7. Suma de los dos anteriores

2, 3, 5, 8, 13, **?** → cada número es la suma de los dos anteriores. Respuesta: **21**.

### 8. Multiplicadores que crecen

1, 2, 6, 24, 120, **?** → se multiplica por 2, por 3, por 4, por 5; toca por 6. Respuesta: **720**.

### 9. Dos operaciones alternas

2, 4, 3, 6, 5, 10, **?** → se alterna «por 2» y «menos 1»: 2→4 (×2), 4→3 (−1), 3→6 (×2), 6→5 (−1), 5→10 (×2). Toca −1. Respuesta: **9**.

### 10. Dos series entrelazadas

3, 10, 6, 20, 9, 40, **?** → los términos en posiciones impares (3, 6, 9) suben de 3 en 3, y los de posiciones pares (10, 20, 40) se duplican. El siguiente ocupa una posición impar. Respuesta: **12**.

### 11. Números primos

2, 3, 5, 7, 11, 13, **?** → números primos consecutivos. Respuesta: **17**.

### 12. Series de letras

En algunas baterías aparecen series de letras o mixtas. A, C, E, G, **?** → se salta una letra cada vez. Respuesta: **I**.

Atención a un detalle propio del español: según el test, **la Ñ puede contar o no** en el abecedario. Si las instrucciones no lo aclaran, comprueba si alguna opción solo cuadra contando la Ñ. Pasar las letras a números (A = 1, B = 2…) ayuda a ver los saltos.

## Señales para identificar rápido el tipo

| Lo que ves | Piensa primero en |
|---|---|
| Números que crecen despacio y con regularidad | Suma constante o diferencias crecientes |
| Números que se disparan | Multiplicación, potencias o multiplicadores crecientes |
| Números que bajan a la mitad, tercio… | División constante |
| Resultados que suben y bajan | Dos operaciones alternas o dos series entrelazadas |
| Cuadrados perfectos (1, 4, 9, 16…) o casi | Potencias, o potencias más o menos algo |
| 2, 3, 5, 7, 11, 13… | Primos |
| Cada término parece la suma de otros | Suma de los dos anteriores |

## Estimar para descartar: un ejemplo

No siempre hace falta calcular. En la serie 2, 6, 18, 54, **?**, con las opciones a) 108, b) 160, c) 162 y d) 164: como se multiplica por 3, el resultado debe ser múltiplo de 3 y bastante mayor que 108. Solo **162** lo cumple. Has resuelto la pregunta sin hacer la multiplicación.

## Practica: seis series con solución

Intenta resolverlas con un límite de 40 segundos cada una antes de mirar las soluciones.

1. 5, 9, 17, 33, **?**
2. 81, 27, 9, 3, **?**
3. 4, 6, 9, 13, 18, **?**
4. 7, 14, 10, 20, 16, **?**
5. 2, 12, 4, 15, 6, 18, **?**
6. 3, 4, 7, 11, 18, **?**

**Soluciones:**

1. **65**. Cada término es el anterior por 2 menos 1 (o diferencias 4, 8, 16 → 32).
2. **1**. Se divide entre 3.
3. **24**. Diferencias 2, 3, 4, 5 → toca 6.
4. **32**. Alterna «por 2» y «menos 4»: 16 × 2 = 32.
5. **8**. Posiciones impares: 2, 4, 6 → 8; las pares (12, 15, 18) suben de 3 en 3.
6. **29**. Cada término es la suma de los dos anteriores: 11 + 18 = 29.

Si fallaste alguna, no basta con mirar la solución: apunta **qué patrón era** y por qué no lo viste. Es lo que hará que la próxima vez lo reconozcas en segundos.

## Errores frecuentes

- **Calcular con detalle lo que se puede estimar.** A veces basta ver que la respuesta ha de ser par, múltiplo de algo o mayor que cierto valor.
- **Obsesionarse con una serie.** Con 41 segundos de media, una pregunta atascada te cuesta varias fáciles al final.
- **Dar por buena la primera regla que encaja** en los dos primeros términos sin comprobar el resto.
- **Olvidar las posiciones pares e impares** cuando la serie sube y baja.
- **Equivocarse en la posición del término pedido** en series entrelazadas: cuenta si el hueco es par o impar.

## ¿Contestar o dejar en blanco?

Las respuestas incorrectas penalizan y las preguntas en blanco no. Con la fórmula de la base 7.3 y cuatro alternativas, cada acierto vale **0,375 puntos** y cada error resta **0,125** (un tercio de acierto). Hecha la cuenta del valor esperado:

| Opciones que quedan tras descartar | Valor medio de contestar al azar |
|---|---|
| 4 (no descartas ninguna) | 0 puntos: ni ganas ni pierdes de media |
| 3 | +0,04 puntos por pregunta |
| 2 | +0,125 puntos por pregunta |

Es decir: contestar a ciegas no mejora tu nota de media, pero **si descartas al menos una opción con seguridad, contestar compensa**. Para superar la prueba necesitas **12 puntos sobre 30**, que equivalen a **32 aciertos netos**. Lo desarrollamos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil), y cómo influye esta nota en el total, en [la nota de corte](/blog/nota-de-corte-guardia-civil).

## Cómo entrenarlas

- **Siempre con cronómetro.** Sin presión de tiempo estás practicando otra prueba.
- **En sesiones cortas y frecuentes**, mejor que un atracón semanal.
- **Con un cuaderno de patrones**: cada vez que falles, apunta el patrón con un ejemplo.
- **Mezclando tipos**: en el examen no te avisan de qué viene, así que no entrenes siempre bloques del mismo patrón.

En los próximos días organizaremos todo esto en una rutina de quince minutos diarios que combina series con otros tipos de ejercicio. Si quieres practicar con baterías corregidas y tiempo medido, las tienes en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Checklist

- [ ] Aplico el método: tendencia, diferencias, cocientes, pares e impares.
- [ ] Me sé los cuadrados hasta el 15 y los cubos hasta el 6.
- [ ] Compruebo la regla en todos los términos.
- [ ] Salto la pregunta si a los 20-25 segundos no veo nada.
- [ ] Solo contesto al azar si he descartado alguna opción.
- [ ] Llevo un cuaderno con los patrones que he fallado.

## Preguntas frecuentes

### ¿Salen series numéricas en el psicotécnico de la Guardia Civil?

La convocatoria no detalla los tipos de ejercicio; solo dice que es una batería de aptitudes intelectuales que mide aprendizaje, análisis, razonamiento y potencial cognitivo. Las series numéricas son un formato habitual en estas baterías, por eso conviene entrenarlas.

### ¿Cuánto tiempo hay por pregunta?

80 preguntas en 55 minutos, incluida la lectura de instrucciones: unos 41 segundos de media.

### ¿Se puede usar calculadora?

No. La base 5.3 prohíbe calculadoras y cualquier otro tipo de ayuda, salvo que lo determine el Tribunal.

### ¿Qué hago si no veo el patrón?

Salta a la siguiente y vuelve al final si te sobra tiempo. Una pregunta atascada cuesta varias fáciles.

### ¿Compensa contestar al azar?

Sin descartar ninguna opción, de media no ganas ni pierdes. Si descartas al menos una, contestar compensa.

### ¿Qué hago si una serie admite dos soluciones?

Comprueba cuál aparece entre las opciones. Si solo una de las dos está, esa es la respuesta; si ambas lecturas dan el mismo número, no pierdas tiempo.

### ¿Cuánto tiempo necesito para dominarlas?

Depende de tu punto de partida. Lo que marca la diferencia es practicar con regularidad y revisar cada fallo, más que el número total de horas.',
   '/blog/series-numericas-psicotecnico-guardia-civil.jpg', 'Aspirante mirando con el ceño fruncido un cuadernillo de series numéricas en un examen', 'publicado', '2026-11-25T06:03:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'series numéricas', 'aptitudes', 'razonamiento']::text[], '{"title":"Series numéricas psicotécnico: patrones y ejemplos","description":"Series numéricas para el psicotécnico de la Guardia Civil: patrones habituales, ejemplos resueltos, ejercicios con solución y método rápido."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('test-personalidad-guardia-civil', 'articulo', 'Test de personalidad de la Guardia Civil: cómo responder con coherencia', 'El cuestionario de personalidad no se aprueba memorizando, pero sí se puede llegar mejor o peor preparado. Qué dice la convocatoria, cómo funcionan estos test, cómo se conectan con la entrevista y qué errores cometen quienes intentan quedar bien.', 'Entre las pruebas del proceso, el cuestionario de personalidad es la que más mitos genera. Hay quien busca «las respuestas correctas» y quien se presenta sin haberlo pensado. La respuesta corta: **no hay respuestas correctas**, no se puntúa de 0 a 30 como las aptitudes, y lo que de verdad importa es **responder con sinceridad y coherencia**, porque sus resultados pueden usarse para valorar tu adecuación al perfil y para orientar la entrevista personal. Lo que sí puedes preparar es conocerte bien.

## Qué dice la convocatoria

La prueba psicotécnica tiene dos partes (base 6.1.2 de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)): las **aptitudes intelectuales** y el **perfil de personalidad**, que se evalúa «mediante test que exploren las características de personalidad, actitudinales y motivacionales».

Cuatro ideas de la propia convocatoria que conviene tener claras:

| Qué dice | Qué significa para ti |
|---|---|
| La puntuación de 0 a 30 y el mínimo de 12 (base 7.8) se refieren a las aptitudes intelectuales | El perfil de personalidad no tiene esa nota ni ese mínimo |
| Los resultados del psicotécnico «podrán ser tenidos en cuenta para determinar la adecuación del candidato al perfil profesional de la Guardia Civil» | No es un trámite: lo que respondas cuenta |
| Los datos del psicotécnico «podrán ser utilizados instrumentalmente en la valoración de la entrevista personal» | El entrevistador puede tener tu perfil delante |
| El resultado de la entrevista no viene condicionado «de modo exclusivo» por el psicotécnico | El test orienta la entrevista, pero no la decide por sí solo |

Además, la base 13.1 indica que los datos de las pruebas psicotécnicas y de la entrevista se incorporan al tratamiento de datos «PSICOLOGÍA», separado del resto.

La convocatoria **no dice qué cuestionario concreto se usa**, ni cuántas preguntas tiene, ni cuánto dura. Desconfía de quien te asegure lo contrario.

## Cómo funcionan, en general, estos cuestionarios

Sin poder hablar de uno en particular, los inventarios de personalidad suelen compartir rasgos:

- **Afirmaciones sobre ti**: cómo eres, cómo reaccionas, qué te importa, cómo actúas en situaciones concretas.
- **Respuestas en una escala** (por ejemplo, de «totalmente en desacuerdo» a «totalmente de acuerdo») o de tipo sí/no o verdadero/falso.
- **Temas que se repiten con distintas formulaciones**, a veces en sentido inverso, para comprobar si respondes de forma consistente.
- **Escalas de control o de «deseabilidad social»**, que intentan detectar a quien se presenta mejor de lo que es o responde al azar.

### Un ejemplo de cómo se detecta la incoherencia (ítems inventados)

Imagina estas tres afirmaciones, separadas a lo largo del cuestionario:

1. «Me pongo nervioso cuando tengo que hablar en público».
2. «Me siento cómodo exponiendo mis ideas delante de un grupo».
3. «Nunca me he puesto nervioso ante una situación nueva».

Si contestas «totalmente en desacuerdo» a la 1 y también a la 2, has dicho dos cosas difíciles de compatibilizar. Y si contestas «totalmente de acuerdo» a la 3, te describes como alguien que no ha sentido nervios jamás, algo muy poco creíble. Ninguna respuesta aislada es «mala»; lo que llama la atención es el **patrón**.

Por eso quien intenta responder «lo que quieren oír» suele dejar huella: se contradice entre ítems parecidos o se describe como alguien sin defectos.

## Qué hacer: cinco normas sencillas

### 1. Responde con sinceridad

No hay una personalidad «correcta» única. Si respondes como alguien que no eres, es muy difícil mantener la coherencia a lo largo de todo el cuestionario y, después, en la entrevista.

### 2. No le des demasiadas vueltas a cada ítem

La primera respuesta suele ser la más auténtica. Si analizas cada frase buscando la intención oculta, acabas «construyendo» respuestas y pierdes coherencia.

### 3. Usa toda la escala con naturalidad

Responder siempre en el punto medio («ni de acuerdo ni en desacuerdo») o siempre en los extremos genera patrones poco naturales. Usa el punto que de verdad te describa en cada caso.

### 4. Lee cada afirmación entera

Palabras como «nunca», «siempre» o «a veces» cambian el sentido de una frase. «A veces me enfado» y «nunca me enfado» no se contestan igual.

### Responder por cómo eres, no por cómo deberías ser

Hay una diferencia sutil que conviene tener presente. Ante «Cumplo siempre los horarios», puedes pensar en cómo te gustaría ser o en cómo eres de verdad. Contesta lo segundo. Si sueles ser puntual pero alguna vez llegas tarde, «siempre» no te describe con exactitud, y elegir el extremo solo porque suena mejor es justo el tipo de respuesta que, acumulada, dibuja un perfil poco creíble. Piensa en tu comportamiento habitual de los últimos años, no en tu mejor día ni en el peor.

### 5. Llega descansado

Un cuestionario contestado con cansancio o con prisa no refleja cómo eres. Cuida el sueño la noche anterior, sobre todo si ese mismo día haces también la batería de aptitudes.

## Lo que no hay que hacer

- **Intentar adivinar el perfil buscado.** Es imposible acertarlo con precisión, y tus respuestas pierden coherencia.
- **Presentarte como alguien sin defectos.** Todo el mundo se ha enfadado, se ha equivocado o ha dudado alguna vez.
- **Seguir «trucos» de internet** para pasar el test: suelen ser contraproducentes, y la entrevista contrasta lo que contestaste.
- **Entrar con dispositivos electrónicos.** La base 5.3 prohíbe acceder a las aulas y salas de examen con móviles, relojes o gafas inteligentes o cualquier dispositivo de grabación o transmisión. Incumplirlo supone la exclusión.

## Caso práctico (hipotético)

Andrés quiere parecer el aspirante perfecto. En el cuestionario marca que nunca pierde los nervios, que siempre cumple las normas sin excepción y que nunca ha tenido un conflicto con nadie. En la entrevista le preguntan por una discusión que mencionó en su trayectoria laboral, y su relato no encaja con el perfil de alguien que «nunca ha tenido un conflicto».

¿Qué habría sido mejor? Responder con sinceridad que alguna vez ha perdido los nervios y, en la entrevista, explicar cómo lo gestionó y qué aprendió. Un fallo reconocido y bien explicado transmite madurez; un perfil perfecto e incoherente, lo contrario.

## La conexión con la entrevista

Después viene la entrevista personal, que valora seis competencias recogidas en la convocatoria: adecuación a normas y código de conducta, responsabilidad y madurez, espíritu de sacrificio y abnegación, autocontrol, habilidades sociales y de comunicación, y adaptación. La tienes resumida en [entrevista y reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil), y la desarrollaremos competencia por competencia en un artículo propio.

Si el perfil del cuestionario y la persona que habla en la entrevista no coinciden, se nota. Por eso la mejor preparación es **conocerte bien**.

## Ejercicio de autoconocimiento (para hacer en casa)

Dedica una tarde a responder por escrito, con ejemplos reales:

| Pregunta | Para qué te sirve |
|---|---|
| ¿Por qué quiero ser guardia civil? ¿Desde cuándo? | Motivación coherente y concreta |
| ¿Cómo reacciono cuando algo sale mal o me corrigen? | Autocontrol y madurez |
| ¿Cómo me llevo con la autoridad y con las normas? | Adecuación a normas |
| ¿Qué he sacrificado por un objetivo? | Espíritu de sacrificio |
| ¿Cómo resuelvo un conflicto con un compañero? | Habilidades sociales |
| ¿Cómo me adapté a un cambio importante (mudanza, trabajo, estudios)? | Adaptación |
| ¿Qué error he cometido y qué aprendí? | Responsabilidad y sinceridad |

No es para memorizar respuestas, sino para que, cuando te pregunten, tengas claros tus propios ejemplos.

## Qué sí puedes preparar

- **Tu motivación**, con ejemplos concretos.
- **Tu trayectoria**: estudios, trabajos y por qué cambiaste.
- **Tu forma de reaccionar** ante la presión, la crítica y el conflicto.
- **Tu estado el día de la prueba**: sueño, comida y nervios.

Y, en paralelo, sí conviene entrenar la otra mitad de la prueba, la de aptitudes, que tiene nota mínima: [series numéricas](/blog/series-numericas-psicotecnico-guardia-civil), [razonamiento verbal](/blog/razonamiento-verbal-psicotecnico-guardia-civil) y [aptitud espacial](/blog/aptitud-espacial-psicotecnico-guardia-civil). El resumen de toda la prueba está en [el artículo sobre el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad). Si quieres preparar el proceso completo, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Checklist del día de la prueba

- [ ] He dormido bien la noche anterior.
- [ ] No llevo móvil, reloj inteligente ni ningún dispositivo al aula.
- [ ] Llevo el DNI.
- [ ] Voy a leer cada afirmación entera, fijándome en «nunca», «siempre» y «a veces».
- [ ] Voy a responder con sinceridad, sin buscar la intención oculta de cada ítem.

## Preguntas frecuentes

### ¿Se puede aprobar o suspender el test de personalidad?

La convocatoria no lo califica con una nota ni un mínimo como las aptitudes. Sus resultados pueden tenerse en cuenta para determinar la adecuación al perfil profesional y usarse en la valoración de la entrevista.

### ¿Hay respuestas correctas?

No. Lo relevante es la coherencia y la adecuación al perfil, no un resultado único.

### ¿Cuántas preguntas tiene y cuánto dura?

La convocatoria no lo indica. Las 80 preguntas y los 55 minutos se refieren solo a las aptitudes intelectuales.

### ¿Detectan si miento?

Estos cuestionarios suelen incluir ítems repetidos y escalas de control que detectan patrones incoherentes o una imagen demasiado perfecta. Además, la entrevista contrasta lo que respondiste.

### ¿Qué hago si dudo entre dos respuestas?

Elige la que mejor te describa en general, no en un caso excepcional, y sigue adelante sin darle más vueltas.

### ¿Cómo me preparo?

Respondiendo con sinceridad, sin pensar demasiado cada ítem y habiendo descansado. Lo demás es conocerte bien para la entrevista posterior.',
   '/blog/test-personalidad-guardia-civil.jpg', 'Aspirante rellenando una hoja de respuestas en una sala de examen llena', 'publicado', '2026-11-28T06:54:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'personalidad', 'entrevista', 'coherencia']::text[], '{"title":"Test de personalidad Guardia Civil: cómo responder bien","description":"Test de personalidad de la Guardia Civil: qué dice la convocatoria, cómo funcionan estos cuestionarios, su relación con la entrevista y errores."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

