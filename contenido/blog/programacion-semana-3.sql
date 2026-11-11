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
   '/blog/aptitud-espacial-psicotecnico-guardia-civil.jpg', 'Manos doblando el desarrollo de un cubo de papel junto a cubos de madera', 'publicado', '2026-11-25T06:03:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'aptitud espacial', 'cubos', 'figuras']::text[], '{"title":"Aptitud espacial psicotécnico: cubos, giros y figuras","description":"Aptitud espacial en el psicotécnico: reglas para resolver giros, desarrollos de cubos, conteo de bloques y papel doblado, con ejemplos resueltos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('certificado-medico-pruebas-fisicas-guardia-civil', 'articulo', 'Certificado médico para las pruebas físicas: qué debe decir y cuándo pedirlo', 'Sin el certificado médico no haces las pruebas físicas: no presentarlo en los términos exigidos te excluye. La frase que debe constar, la ventana de 20 días, la ficha médica alternativa y los errores que dejan fuera a aspirantes.', 'Hay aspirantes que llegan a las pruebas físicas perfectamente entrenados y se quedan fuera en la puerta, **por un papel**. La respuesta corta: antes de empezar las pruebas tienes que entregar al Tribunal un **certificado médico oficial expedido dentro de los 20 días anteriores**, con una frase concreta que menciona los cuatro ejercicios, y en el que conste tu identidad. Si no lo presentas en esos términos, **quedas excluido del proceso**. Es un trámite sencillo, pero con condiciones muy concretas.

## Qué dice exactamente la convocatoria

La base 6.1.3.a de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) establece que los admitidos, antes del inicio de las pruebas físicas, entregarán al Tribunal de Selección un **Certificado Médico Oficial expedido dentro de los veinte (20) días anteriores** en el que se haga constar expresamente:

> «que el aspirante se encuentra capacitado físicamente para la realización de las pruebas físicas consistentes en los ejercicios de: resistencia (carrera de 2000 metros); coordinación (circuito de agilidad y coordinación); potencia del tren superior (extensiones de brazos) y soltura acuática (50 metros) sin que ello suponga un riesgo para su salud».

Los modelos se publican como **apéndices III y IV** de la convocatoria. Y la misma base cierra con una frase que conviene no olvidar: «La no presentación de cualquiera de los documentos citados en los términos expuestos supondrá la exclusión del aspirante del proceso selectivo».

De ahí salen los cuatro elementos que tu certificado tiene que reunir:

| Elemento | Qué exige la convocatoria |
|---|---|
| Tipo de documento | Certificado Médico Oficial (modelos de los apéndices III y IV) o ficha médica válida |
| Fecha | Expedido dentro de los 20 días anteriores a las pruebas |
| Contenido | La frase literal que menciona los cuatro ejercicios y «sin que ello suponga un riesgo para su salud» |
| Identidad | Debe constar la identidad del aspirante |

## La frase, palabra por palabra

El error más frecuente no es la fecha, sino el contenido. Un certificado que diga «apto para la práctica deportiva» o «no presenta contraindicaciones para el ejercicio físico» **no es lo que pide la convocatoria**. La exigencia es que se haga constar «expresamente» la capacidad para esos cuatro ejercicios concretos.

La forma más segura de acertar:

1. Descarga la convocatoria del BOE y localiza los apéndices III y IV.
2. Imprime el modelo o copia literalmente la frase entrecomillada de la base 6.1.3.a.
3. Pide al médico que la incluya **tal cual**, sin resumirla.

No hace falta que inventes nada: el texto ya está escrito. Tu trabajo es que llegue íntegro al certificado.

## Quién lo firma y en qué impreso

La convocatoria habla de «Certificado Médico Oficial» y no concreta más sobre el médico que debe expedirlo. En la práctica, conviene tener en cuenta dos cosas:

- **El soporte.** En España, la expresión «certificado médico oficial» se asocia al impreso oficial que editan los colegios de médicos. Pregunta a tu médico en qué impreso lo extenderá y, si te surge la duda de si un formato concreto es válido, consúltalo con antelación a través de los medios de contacto que indique el Tribunal.
- **El médico.** No todos los centros de salud expiden certificados para oposiciones. Infórmate con tiempo en tu centro; si no lo hacen, tendrás que acudir a una consulta privada o a un centro de reconocimientos, lo que puede tener coste.

Sea quien sea, el certificado debe llevar tu identificación, la fecha, la firma y los datos del médico que lo expide.

## La alternativa: la ficha médica

La convocatoria admite, en lugar del certificado, la **ficha médica válida** que establece la Instrucción Técnica 01/2015, de 19 de febrero de 2015, de la Inspección General de Sanidad de la Defensa, sobre «Reconocimientos médicos para la realización de pruebas físicas». Al tratarse de un documento del ámbito de la Sanidad Militar, suele interesar sobre todo a quienes optan desde las Fuerzas Armadas.

Para la ficha, la convocatoria añade dos reglas específicas:

- **No puede constar una fecha anterior a la publicación** de la convocatoria en el BOE.
- Si su fecha es **más de 20 días anterior** a las pruebas, debe ir acompañada de una **declaración del interesado** donde se especifique que no ha padecido ningún proceso patológico desde el reconocimiento hasta el momento de hacer las pruebas.

Ojo: esa declaración complementaria está prevista para la **ficha médica**. Para el certificado médico la regla es directa: expedido dentro de los 20 días anteriores.

## El plazo de 20 días: cómo calcularlo sin sustos

La convocatoria dice «dentro de los veinte (20) días anteriores», pero no especifica si son naturales o hábiles. La interpretación prudente es contar **días naturales**, porque es la ventana más corta: si aciertas con ella, cumples con cualquier lectura.

**Ejemplo resuelto (caso hipotético).** Te citan a las pruebas físicas el día 24 de un mes. Contando 20 días naturales hacia atrás, tu ventana empieza alrededor del día 4. Un certificado del día 3 o anterior te pondría en riesgo. Lo razonable es pedir cita para **una o dos semanas antes** de las pruebas: lejos del límite inicial y con margen por si el médico te da cita más tarde o hay que repetir el documento.

Un criterio práctico, paso a paso:

1. **Vigila la citación.** El Tribunal anuncia el lugar, la fecha y la hora de las pruebas en la [web de ingreso de la Guardia Civil](https://web.guardiacivil.es/es/tramites/ingresos/ingresocuerpo/) (base 4.11).
2. **Calcula hacia atrás** y marca en el calendario el primer día válido.
3. **Pide cita** para una fecha dentro de la ventana, con margen por los dos lados.
4. **Lleva la frase o el modelo impreso** a la consulta.
5. **Revísalo antes de salir**: nombre y DNI, fecha, frase completa, firma y datos del médico.
6. **Haz una foto o fotocopia** por si se extravía, y guarda el original en la carpeta de la prueba.

Pedirlo demasiado pronto es tan arriesgado como demasiado tarde: con mucha antelación caduca; el último día, puede que no haya cita.

## Errores que causan la exclusión

- **Certificado fuera de plazo**: expedido más de 20 días antes de las pruebas.
- **Certificado genérico**, sin la mención expresa a los cuatro ejercicios.
- **Frase incompleta**: falta un ejercicio (lo más habitual, la natación) o la coletilla «sin que ello suponga un riesgo para su salud».
- **Falta la identidad** del aspirante, o es ilegible.
- **Ficha médica con fecha anterior** a la publicación de la convocatoria, o con más de 20 días y sin la declaración complementaria.
- **No llevarlo el día de la prueba.** Debe entregarse antes del inicio; prepáralo en la mochila la noche anterior junto al DNI.

## ¿Y si me lesiono o me pongo enfermo antes de las pruebas?

Tu salud va por delante de la oposición. Si tu estado cambia después de obtener el certificado, **no hagas las pruebas sin que un médico te lo autorice**: el certificado acredita que no supone un riesgo para tu salud, y eso deja de ser cierto si has tenido una lesión o una enfermedad.

Lo que conviene saber de las bases:

- **No hay una fecha alternativa general por lesión.** La base 6.2 establece un único llamamiento: no presentarse supone la exclusión «sea cual fuere la causa». La excepción son las medidas del capítulo V del Reglamento de ordenación de la enseñanza en la Guardia Civil ([Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)), que protegen la maternidad: embarazo, parto o posparto, y lactancia en los términos del reglamento. Para esos casos, la base 6.3 prevé acreditarlo con informe médico oficial y una fecha alternativa fijada por el Tribunal.
- **Cambio de día o tanda.** Si las pruebas se reparten en más de un día, el Tribunal **puede** autorizar el cambio a quien lo solicite por causas justificadas, antes del inicio de las pruebas (base 6.2). Es una posibilidad, no un derecho: si te ocurre, solicítalo cuanto antes por los medios que indique la convocatoria.

## Checklist del certificado

- [ ] Tengo la frase literal de la base 6.1.3.a o el modelo de los apéndices III y IV.
- [ ] Sé qué médico me lo expide y si tiene coste.
- [ ] He calculado la ventana de 20 días contando días naturales.
- [ ] Tengo cita dentro de esa ventana, con margen.
- [ ] El documento incluye mi identidad, la fecha, la frase completa, la firma y los datos del médico.
- [ ] Tengo una copia y el original está en la mochila de la prueba, con el DNI.
- [ ] Si uso la ficha médica: fecha posterior a la publicación de la convocatoria y, si tiene más de 20 días, declaración complementaria.

## Dónde encaja en el proceso

Las pruebas físicas forman parte de la prueba de aptitud psicofísica, a la que se convoca a 1,5 aspirantes por plaza según la puntuación de concurso y oposición. Es decir, cuando te pidan el certificado ya habrás superado el examen y el psicotécnico. Para no llegar a ese punto con prisas, repasa con tiempo qué te exige cada ejercicio en [las cuatro pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) y, en concreto, la que más preparación exige si partes de cero: [la natación de 50 metros](/blog/natacion-50-metros-guardia-civil).

No confundas este certificado con el **reconocimiento médico** posterior, que hacen los facultativos designados por el Tribunal con el cuadro de exclusiones de la Orden PCI/155/2019. Lo tienes explicado en [el cuadro médico de exclusiones](/blog/cuadro-medico-exclusiones-guardia-civil) y en [la entrevista y el reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil). Si quieres preparar todo el proceso con un plan, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Es obligatorio el certificado médico para las pruebas físicas de la Guardia Civil?

Sí. Debe entregarse al Tribunal antes de empezar las pruebas, y no presentarlo en los términos exigidos supone la exclusión del proceso.

### ¿Con cuántos días de antelación debo pedirlo?

Debe estar expedido dentro de los 20 días anteriores a las pruebas. Lo prudente es contar días naturales y pedir cita una o dos semanas antes.

### ¿Vale un certificado de «apto para el deporte»?

No, si no menciona expresamente los cuatro ejercicios (carrera de 2.000 metros, circuito de agilidad, extensiones de brazos y natación de 50 metros) y que no suponen un riesgo para tu salud.

### ¿Qué pasa si mi ficha médica tiene más de 20 días?

Si usas la ficha médica de la Instrucción Técnica 01/2015, debe acompañarse de una declaración tuya de que no has padecido ningún proceso patológico desde el reconocimiento. Y nunca puede tener fecha anterior a la publicación de la convocatoria.

### ¿Dónde está el modelo?

En los apéndices III y IV de la convocatoria publicada en el BOE.

### ¿Es lo mismo que el reconocimiento médico?

No. El certificado lo aporta el aspirante antes de las pruebas físicas; el reconocimiento médico lo hacen después los facultativos del Tribunal conforme al cuadro de exclusiones.

### ¿Puedo cambiar el día de las pruebas si estoy lesionado?

No hay una fecha alternativa general por lesión. Si las pruebas duran más de un día, el Tribunal puede autorizar un cambio de día o tanda por causa justificada, solicitado antes del inicio. Las medidas del capítulo V del reglamento de enseñanza se refieren a la protección de la maternidad.',
   '/blog/certificado-medico-pruebas-fisicas-guardia-civil.jpg', 'Médica firmando y sellando un certificado mientras un aspirante espera en la consulta', 'publicado', '2026-11-28T06:54:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'certificado médico', 'requisitos', 'documentación']::text[], '{"title":"Certificado médico pruebas físicas Guardia Civil: guía","description":"Certificado médico para las pruebas físicas de la Guardia Civil: frase exigida, plazo de 20 días, ficha médica alternativa y errores que excluyen."}'::jsonb, '{}'::jsonb)
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
   '/blog/competencias-entrevista-personal-guardia-civil.jpg', 'Aspirante ante una psicóloga y un oficial de la Guardia Civil en la entrevista personal', 'publicado', '2026-11-30T06:28:00.000Z', 'acceso-guardia-civil',
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
   '/blog/cuestionario-biodata-guardia-civil.jpg', 'Aspirante esperando con una carpeta en el pasillo de un edificio oficial', 'publicado', '2026-11-29T06:11:00.000Z', 'acceso-guardia-civil',
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
   '/blog/entrenar-psicotecnico-15-minutos-guardia-civil.jpg', 'Opositora resolviendo ejercicios de psicotécnico en la cocina con un temporizador en el móvil', 'publicado', '2026-11-27T06:37:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'rutina', 'entrenamiento', 'aptitudes']::text[], '{"title":"Entrenar el psicotécnico en 15 minutos al día: rutina","description":"Rutina de 15 minutos diarios para el psicotécnico de la Guardia Civil: nota que necesitas, qué practicar cada día, plan por fases y cómo medir tu progreso."}'::jsonb, '{"duracion":"15 minutos al día"}'::jsonb)
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
   '/blog/test-personalidad-guardia-civil.jpg', 'Aspirante rellenando una hoja de respuestas en una sala de examen llena', 'publicado', '2026-11-26T06:20:00.000Z', 'acceso-guardia-civil',
   ARRAY['psicotécnico', 'personalidad', 'entrevista', 'coherencia']::text[], '{"title":"Test de personalidad Guardia Civil: cómo responder bien","description":"Test de personalidad de la Guardia Civil: qué dice la convocatoria, cómo funcionan estos cuestionarios, su relación con la entrevista y errores."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('tildes-reglas-oposicion-guardia-civil', 'articulo', 'Tildes en la oposición a Guardia Civil: las reglas que más fallan los opositores', 'La prueba de ortografía excluye con seis errores, y las tildes son una fuente constante de fallos. Reglas generales, diptongos e hiatos, tilde diacrítica, «solo» y «aún», casos especiales y un ejercicio resuelto como el del examen.', 'La prueba de ortografía no suma puntos: es **apto o no apto**. Pero con **seis o más respuestas erróneas** quedas excluido del proceso (base 7.4 de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). **Respuesta corta:** casi todos los fallos de tildes se evitan con cuatro bloques bien aprendidos: las reglas generales, los hiatos, la tilde diacrítica y los interrogativos. Aquí los tienes con ejemplos y un ejercicio resuelto.

Las reglas siguen la *Ortografía de la lengua española* de la RAE y la ASALE (2010). Los ejercicios son nuestros, no preguntas oficiales.

## Cómo es la prueba

Son **cinco frases con cuatro palabras o expresiones subrayadas cada una**, más una frase de reserva, y tienes que señalar las que presenten falta de ortografía (base 6.1.1.a). Cuenta como **respuesta errónea** tanto dejar sin marcar una palabra con falta como **marcar una que es correcta**. Es decir, de 20 palabras puedes fallar como máximo cinco, y tan grave es dejar pasar una falta como «corregir» algo que estaba bien.

Además, se hace dentro de los **140 minutos** de la prueba de conocimientos teórico-prácticos, junto con la gramática, los conocimientos generales y el inglés. Lo tienes todo encuadrado en [ortografía y gramática en el examen](/blog/ortografia-gramatica-examen-guardia-civil) y en la [estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Paso previo: la sílaba tónica

Antes de aplicar ninguna regla, separa la palabra en sílabas y localiza la que suena más fuerte. Un truco: pronúnciala alargando cada sílaba por turnos («caaanción», «canciooón»); la que suena natural es la tónica.

## Las reglas generales

| Tipo | Sílaba tónica | Lleva tilde si… | Con tilde | Sin tilde |
|---|---|---|---|---|
| Aguda | Última | termina en vocal, **-n** o **-s** | canción, café, además, sofá | ciudad, reloj, papel, feliz |
| Llana | Penúltima | **no** termina en vocal, -n ni -s | árbol, cárcel, lápiz, césped | examen, casa, joven, lunes |
| Esdrújula | Antepenúltima | **siempre** | médico, teléfono, sábado | — |
| Sobresdrújula | Anterior a la antepenúltima | **siempre** | cuéntamelo, dígaselo | — |

### Tres matices que confunden

- **Aguda terminada en -s precedida de otra consonante:** no lleva tilde (*robots*, *zigzags*). Y la **llana** en ese caso **sí** la lleva: *bíceps*, *fórceps*, *cómics*.
- **Terminación en -y:** a efectos de tilde, la *y* final cuenta como consonante. Por eso *virrey*, *convoy* o *estoy* (agudas) no llevan tilde.
- **«Examen» no lleva tilde, pero «exámenes» sí.** Lo veremos en los plurales.

## Diptongos, triptongos e hiatos

### Diptongos

Son dos vocales en la misma sílaba: una abierta (*a, e, o*) con una cerrada átona (*i, u*), o dos cerradas distintas. Siguen las reglas generales: *camión* (aguda en -n), *después* (aguda en -s), *murciélago* (esdrújula). Si la tilde cae en un diptongo de abierta y cerrada, va sobre la abierta (*camión*); en *ui* o *iu*, sobre la segunda vocal (*cuídate*, *interviú*).

*Jesuita*, *construir* o *destruido* no llevan tilde: son llanas o agudas que no la piden por la regla general.

### Triptongos

Tres vocales en una sílaba. También siguen las reglas generales: *averiguáis* (aguda en -s), *buey* (monosílabo).

### Hiatos

Dos vocales seguidas que pertenecen a sílabas distintas.

- **Dos vocales abiertas** (*poeta*, *caótico*, *aéreo*, *héroe*): siguen las reglas generales. *Poeta* es llana en vocal, sin tilde; *aéreo* y *héroe* la llevan por ser esdrújulas.
- **Vocal cerrada tónica junto a una abierta:** la cerrada **siempre** lleva tilde, aunque la regla general no lo pida: *país*, *día*, *río*, *baúl*, *maíz*, *oído*, *reír*. La *h* intercalada no lo impide: *búho*, *prohíbe*, *rehúsa*, *ahínco*.

Esta regla explica una trampa clásica: *río* (sustantivo, dos sílabas: *rí-o*) lleva tilde, mientras que *rio* (de *reír*: «se rio») no la lleva, como verás en el apartado siguiente.

## Monosílabos: sin tilde salvo la diacrítica

Las palabras de una sola sílaba **no llevan tilde**: *fe, fue, fui, vio, dio, pie, sol, mar, dos*. La Ortografía de 2010 considera monosílabos, a efectos de tilde, palabras como **guion, truhan, hui, rio, lio, crio o fie**. Así que «se rio», «el guion» o «menudo lio» se escriben sin tilde.

## La tilde diacrítica

Distingue palabras que se escriben igual pero tienen distinta función: la forma tónica lleva tilde y la átona no.

| Con tilde | Sin tilde |
|---|---|
| **tú** (pronombre): «tú vienes» | **tu** (posesivo): «tu casa» |
| **él** (pronombre): «él lo dijo» | **el** (artículo): «el libro» |
| **mí** (pronombre): «para mí» | **mi** (posesivo o nota musical): «mi coche» |
| **sí** (afirmación o pronombre): «sí, lo sé»; «lo quiere para sí» | **si** (conjunción o nota): «si vienes» |
| **té** (infusión) | **te** (pronombre): «te lo dije» |
| **dé** (verbo *dar*): «que me dé» | **de** (preposición): «de Madrid» |
| **sé** (verbo *saber* o *ser*): «yo sé»; «sé prudente» | **se** (pronombre): «se fue» |
| **más** (cantidad): «más tiempo» | **mas** (= *pero*): «quiso, mas no pudo» |

Dos cambios de 2010 que conviene recordar: la conjunción **o** ya **no** lleva tilde entre cifras («3 o 4») y **guion**, **truhan** o **hui** pierden la tilde, como has visto.

## Interrogativos y exclamativos

*Qué, quién, cuál, cómo, cuándo, cuánto, dónde* y *adónde* llevan tilde cuando preguntan o exclaman, **también en las preguntas indirectas** (sin signos de interrogación):

- «¿**Cuándo** llegas?» / «Le pregunté **cuándo** llegaba» (pregunta indirecta: tilde).
- «Avísame **cuando** llegues» (no pregunta: sin tilde).
- «No sé **qué** hacer» / «Lo **que** quieras».
- «¡**Cómo** corre!» (exclamación).

Un caso fino de la propia Ortografía: «No tengo **qué** comer» (no tengo nada para comer) frente a «No tengo **que** comer» (no estoy obligado a comer). Las dos son correctas y significan cosas distintas.

## «Solo», los demostrativos y «aún»

- **«Solo»** (adverbio o adjetivo) y los demostrativos **este, ese, aquel** (con sus femeninos y plurales) **se escriben sin tilde**. En 2023 la RAE aclaró que la tilde en el adverbio *solo* es **optativa únicamente cuando quien escribe aprecia riesgo de ambigüedad**, y que fuera de esos casos debe omitirse. Lo más seguro, y lo que la RAE considera aconsejable, es no tildarlo nunca. En el examen, «solo» sin tilde nunca es falta.
- **«Aún»** lleva tilde cuando equivale a *todavía* («aún no ha llegado», «es aún más alto»). **«Aun»** se escribe sin tilde cuando equivale a *incluso, hasta* o *siquiera* («aun así», «aun cuando llueva», «ni aun con ayuda»).

## Plurales que ganan o pierden tilde

Al pasar al plural se añade una sílaba y la palabra puede cambiar de tipo:

| Singular | Plural | Por qué |
|---|---|---|
| examen (llana en -n) | exámenes (esdrújula) | La esdrújula siempre lleva tilde |
| joven | jóvenes | Igual |
| orden | órdenes | Igual |
| canción (aguda en -n) | canciones (llana en -s) | La llana en -s no la lleva |
| inglés | ingleses | Igual |
| carácter | caracteres | Cambia la sílaba tónica (*rac*) |
| régimen | regímenes | Cambia la sílaba tónica (*gí*) |
| espécimen | especímenes | Cambia la sílaba tónica (*cí*) |

## Otros casos especiales

- **Adverbios en -mente:** conservan la tilde del adjetivo del que derivan: *fácil* → *fácilmente*, *cortés* → *cortésmente*, *común* → *comúnmente*. Si el adjetivo no la lleva, el adverbio tampoco: *lento* → *lentamente*.
- **Compuestos sin guion:** se acentúan como una sola palabra: *décimo + séptimo* → *decimoséptimo*; *río + platense* → *rioplatense*; *así + mismo* → *asimismo*.
- **Compuestos con guion:** cada parte conserva su tilde: *histórico-artístico*, *teórico-práctico*.
- **Verbos con pronombres pospuestos:** desde 2010 siguen las reglas generales: *dame*, *deme*, *estate* (llanas, sin tilde); *mírame*, *dígaselo* (esdrújula y sobresdrújula, con tilde).
- **Mayúsculas:** llevan tilde igual que las minúsculas: *África*, *Álvaro*, *ÓRDENES*.

## Ejercicio resuelto (propio, con el formato del examen)

Las palabras subrayadas en el examen aquí van en **negrita**. Decide cuáles tienen falta.

1. «**Aún** no **sé** **por qué** el **examen** dura ciento cuarenta minutos».
2. «El **guión** de la **película** **fué** muy aplaudido por el **público**».
3. «Le pregunté **cuando** **vendría** y me dijo que **mas** tarde, **despues** de comer».
4. «Los **exámenes** de este año fueron **mas** **dificiles** que los de 2025, aunque **solo** un poco».
5. «**Dígame** **donde** vive y **porqué** ha venido; **aun** así, le atenderé».

**Soluciones:**

1. **Ninguna falta.** *Aún* = todavía; *sé* es verbo; *por qué* introduce una pregunta indirecta; *examen* es llana en -n. Una frase sin faltas también es posible: si marcas algo, sumas un error.
2. **Dos faltas:** *guion* y *fue* van sin tilde. *Película* (esdrújula) y *público* (esdrújula) son correctas.
3. **Tres faltas:** *cuándo* (pregunta indirecta), *más* (cantidad) y *después* (aguda en -s). *Vendría* es correcta (hiato con *í* tónica).
4. **Dos faltas:** *más* y *difíciles*. *Exámenes* y *solo* son correctas.
5. **Dos faltas:** *dónde* (pregunta indirecta) y *por qué* (pregunta indirecta, en dos palabras). *Dígame* y *aun* (= incluso) son correctas.

En total hay nueve faltas en veinte palabras. Si hubieras dejado pasar *cuándo* y *dónde* y además hubieras marcado *aun* y *solo*, ya llevarías cuatro errores: así de rápido se llega al límite.

## Errores frecuentes

- **Tildar monosílabos:** *fué*, *dió*, *vió*, *guión*.
- **Olvidar la tilde de las preguntas indirectas:** «no sé cuando…».
- **Confundir *aun* y *aún*:** pregúntate si puedes decir *todavía*.
- **Marcar como falta «solo» sin tilde:** es la forma recomendada.
- **No aplicar la regla del hiato:** *pais*, *baul*, *oido* sin tilde son faltas.
- **Olvidar los plurales:** *examenes* o *jovenes* sin tilde son faltas, y también *carácteres* o *regimenes*: lo correcto es *exámenes*, *jóvenes*, *caracteres* y *regímenes*.

## Checklist de repaso

- [ ] Sé localizar la sílaba tónica y clasificar la palabra.
- [ ] Domino las tres reglas generales y sus matices (-s tras consonante, -y final).
- [ ] Aplico la regla del hiato con *i* o *u* tónicas.
- [ ] Me sé la tabla de la tilde diacrítica de memoria.
- [ ] Reconozco las preguntas indirectas.
- [ ] Distingo *aun* y *aún*, y escribo *solo* sin tilde.
- [ ] Conozco los plurales que cambian.

## Cómo repasarlas

1. **Memoriza la tabla diacrítica** y la de plurales: son reglas cerradas.
2. **Practica con frases**, no con palabras sueltas: en el examen todo está en contexto.
3. **Haz tu lista de fallos** y repásala a intervalos. Si estudias a la vez que trabajas, encájalo como te contamos en [cómo preparar la oposición trabajando](/blog/plan-estudio-guardia-civil-trabajando).
4. **Haz tests cronometrados** de cinco frases con cuatro palabras, y anota no solo las faltas que no ves, sino también las palabras correctas que marcas por miedo.

En próximos artículos veremos las palabras trampa con B/V, G/J y H y los homófonos. Si quieres practicar con corrección explicada, en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) tienes ejercicios de ortografía con el formato del examen.

## Preguntas frecuentes

### ¿Cuántos errores de ortografía se permiten en la Guardia Civil?

Hasta cinco. Con seis o más respuestas erróneas eres declarado «no apto» y quedas excluido (base 7.4).

### ¿Cuenta como error marcar una palabra correcta?

Sí. Es respuesta errónea tanto no marcar una palabra con falta como marcar una que está bien.

### ¿«Solo» lleva tilde?

Como norma, no. Desde 2023 la RAE admite tildarlo solo si quien escribe aprecia ambigüedad, pero lo aconsejable es no tildarlo nunca. Sin tilde siempre es correcto.

### ¿Cómo distingo «aún» de «aun»?

Con tilde cuando significa *todavía* («aún no»); sin tilde cuando significa *incluso* («aun así»).

### ¿«Guion» lleva tilde?

No. Desde la Ortografía de 2010 se considera monosílabo a efectos de tilde, igual que *truhan*, *hui* o *rio* (de *reír*).

### ¿Por qué «examen» no lleva tilde y «exámenes» sí?

*Examen* es llana terminada en -n; *exámenes* es esdrújula, y las esdrújulas llevan siempre tilde.

### ¿La «o» entre números lleva tilde?

No. Desde 2010 se escribe sin tilde: «3 o 4».',
   '/blog/tildes-reglas-oposicion-guardia-civil.jpg', 'Hoja de examen con palabras subrayadas y un bolígrafo negro', 'publicado', '2026-12-01T06:45:00.000Z', 'acceso-guardia-civil',
   ARRAY['ortografía', 'tildes', 'acentuación', 'examen']::text[], '{"title":"Tildes en la oposición a Guardia Civil: reglas y ejercicios","description":"Reglas de acentuación para la prueba de ortografía de la Guardia Civil: agudas, llanas, hiatos, tilde diacrítica, solo y aún, con ejercicio resuelto."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

