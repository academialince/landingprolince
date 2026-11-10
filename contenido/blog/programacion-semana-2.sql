-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('carrera-2000-metros-guardia-civil', 'articulo', 'Carrera de 2.000 metros en la Guardia Civil: plan para bajar tu marca', 'La carrera de 2.000 metros se hace con un solo intento y se supera o se queda uno fuera. Las marcas oficiales por sexo y edad, a qué ritmo tienes que correr y un plan de ocho semanas para llegar con margen.', 'De las cuatro pruebas físicas, la carrera suele ser la que más aspirantes subestiman: «son solo dos kilómetros». Pero tiene una particularidad que la hace peligrosa: **hay un único intento**. Si el día de la prueba no sale, no hay segunda oportunidad.

## Las marcas oficiales

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), apéndice II) exige cubrir 2.000 metros lisos, con salida de pie, en un tiempo **no superior** a estos:

| | Menor de 35 años | De 35 a 39 años | 40 años o más |
|---|---|---|---|
| Hombres | 9 min 25 s | 9 min 48 s | 10 min 33 s |
| Mujeres | 11 min 14 s | 11 min 35 s | 12 min 49 s |

Es una prueba de **apto o no apto**: ir más rápido que la marca no suma puntos, pero no cumplirla te deja fuera del proceso. Por eso el objetivo no es la marca justa, sino llegar con margen.

## ¿A qué ritmo hay que correr?

Dividiendo la marca entre la distancia:

| Marca | Ritmo medio por km | Cada 400 metros |
|---|---|---|
| 9 min 25 s (hombres, menores de 35) | 4 min 43 s | 1 min 53 s |
| 11 min 14 s (mujeres, menores de 35) | 5 min 37 s | 2 min 15 s |

Si corres en pista, los 2.000 metros son cinco vueltas. Anota tu tiempo en cada vuelta: la regularidad pesa mucho más que un arranque rápido.

## Cómo saber dónde estás

Antes de planificar nada, haz **un test de 2.000 metros**, en pista o en un tramo medido, tras un calentamiento suave y con un descanso previo. Compara el resultado con tu marca:

- **Dentro de la marca:** céntrate en mantenerla con margen y en la regularidad.
- **Hasta 30-40 segundos por encima:** es un objetivo alcanzable en pocas semanas con un entrenamiento ordenado.
- **Más de un minuto por encima o no corres habitualmente:** empieza por construir una base de carrera continua antes de trabajar el ritmo.

## Plan de ocho semanas (orientativo)

Es un esquema general para alguien sano que ya sale a correr de forma regular. No sustituye a un entrenador, y si no estás acostumbrado al ejercicio, consulta antes a tu médico.

**Semanas 1 y 2: base.** Tres salidas semanales de carrera continua suave de 25 a 35 minutos, a un ritmo con el que puedas hablar.

**Semanas 3 a 5: ritmo.** Mantén una salida larga y suave, y sustituye otra por **series a ritmo de marca**: por ejemplo, 4 × 500 metros al ritmo de la prueba, con 90 segundos de recuperación. La tercera salida es de rodaje suave.

**Semanas 6 y 7: específico.** Series más largas: 3 × 800 metros al ritmo de la prueba, o 2 × 1.000 metros algo por debajo de la marca. Una salida de rodaje y una de series, y una tercera suave.

**Semana 8: afinar.** Reduce el volumen. Una sesión corta de ritmo (por ejemplo, 2 × 500 metros) a mitad de semana, y descanso los dos días anteriores a la prueba.

Si estás empezando desde cero, alarga la fase de base: es mejor llegar con más semanas que forzar el ritmo antes de tiempo.

## Cómo correr la prueba

1. **Calienta bien.** Trote suave, movilidad y unas progresiones cortas.
2. **Sal a tu ritmo, no al de los demás.** Es el error más común: salir rápido, vaciarse en la segunda vuelta y arrastrarse el resto.
3. **Reparte el esfuerzo.** Si vas a ir justo, es preferible llevar un ritmo parejo que arrancar fuerte y frenar.
4. **Reserva para el final.** Los últimos 400 metros son los de apretar.

## Errores frecuentes

- **Entrenar solo rodajes lentos.** Sin trabajo a ritmo de marca, el cuerpo no sabe qué se le pide.
- **Correr siempre el mismo día y el mismo recorrido.** Varía las sesiones para progresar.
- **Dejar la carrera para el final.** Las cuatro pruebas se hacen el mismo día: si llegas con las otras tres dominadas pero sin base de carrera, no compensas. Consulta [las cuatro pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) para ver cómo se encadenan.
- **Ignorar los dolores.** Si algo duele más de un par de días, descansa y consulta a un profesional.

## Preguntas frecuentes

### ¿Cuánto hay que correr los 2.000 metros en la Guardia Civil?

En la convocatoria de 2026, los hombres menores de 35 años, en 9 minutos y 25 segundos o menos, y las mujeres de la misma edad, en 11 minutos y 14 segundos o menos. Los tiempos aumentan a partir de los 35 y de los 40 años.

### ¿Cuántos intentos hay en la carrera?

Uno solo. A diferencia del circuito de agilidad o de las extensiones de brazos, no se repite.

### ¿Puntúa correr más rápido?

No. Las pruebas físicas son apto o no apto: basta con cumplir la marca.

### ¿Cuánto tiempo necesito para prepararla?

Depende de tu punto de partida. Con una base de carrera, ocho semanas de trabajo específico suelen bastar para afinar; si partes de cero, conviene dedicarle varios meses.',
   NULL, NULL, 'publicado', '2026-11-18T06:04:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'carrera', '2000 metros', 'entrenamiento']::text[], '{"title":"Carrera 2.000 m Guardia Civil: marcas y plan","description":"Marcas de la carrera de 2.000 metros de la Guardia Civil por sexo y edad, ritmo por kilómetro y plan de entrenamiento de ocho semanas para superarla."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('certificado-medico-pruebas-fisicas-guardia-civil', 'articulo', 'Certificado médico para las pruebas físicas: qué debe decir y cuándo pedirlo', 'Sin el certificado médico no puedes hacer las pruebas físicas, y no presentarlo te excluye del proceso. Qué texto debe constar, el plazo de los 20 días, la alternativa de la ficha médica y los errores que dejan fuera a aspirantes.', 'Hay aspirantes que llegan a las pruebas físicas perfectamente entrenados y se quedan fuera en la puerta, **por un papel**. Es un trámite sencillo, pero con condiciones concretas, y la convocatoria es tajante: si no se presenta en los términos exigidos, la consecuencia es la exclusión.

## Qué dice la convocatoria

En la base 6.1.3.a de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), los admitidos deben entregar al Tribunal de Selección, antes de empezar las pruebas, un **certificado médico oficial expedido dentro de los veinte días anteriores**.

Ese certificado debe hacer constar expresamente que el aspirante se encuentra capacitado físicamente para realizar las pruebas consistentes en estos ejercicios:

- **resistencia** (carrera de 2.000 metros),
- **coordinación** (circuito de agilidad y coordinación),
- **potencia del tren superior** (extensiones de brazos) y
- **soltura acuática** (50 metros),

«sin que ello suponga un riesgo para su salud». Los modelos están publicados en los apéndices III y IV de la propia convocatoria, así que no tienes que inventar la redacción: **lleva el modelo a tu médico**.

## La alternativa: la ficha médica

La convocatoria admite también la **ficha médica válida** que establece la Instrucción Técnica 01/2015, de 19 de febrero de 2015, de la Inspección General de Sanidad de la Defensa, sobre reconocimientos médicos para la realización de pruebas físicas.

Si aportas la ficha en lugar del certificado, comprueba que cumple lo que exige la convocatoria.

## El plazo de veinte días

Este es el punto en el que más aspirantes se equivocan.

- El certificado debe haberse expedido **en los veinte días anteriores** a las pruebas.
- Si la ficha médica es **más antigua de veinte días** respecto a la fecha de las pruebas, hay que acompañarla de una **declaración del interesado** donde conste que no se ha padecido ningún proceso patológico desde el reconocimiento hasta la realización de las pruebas.
- En ningún caso puede constar en la ficha una **fecha anterior a la de la publicación** de la convocatoria.

Y un detalle que se pasa por alto: en el certificado **debe constar la identidad del aspirante**.

## Cuándo pedirlo

Pedirlo demasiado pronto es tan arriesgado como demasiado tarde: si lo pides con mucha antelación, puede caducar; si lo dejas para el último día, puede que no encuentres cita.

Un criterio práctico:

1. **Revisa la fecha de citación.** El Tribunal anuncia el lugar, la fecha y la hora de las pruebas.
2. **Calcula hacia atrás veinte días** y pide cita en tu médico para una fecha **dentro de esa ventana**, con margen.
3. **Lleva el modelo oficial** de la convocatoria impreso y pídele que lo cumplimente.
4. **Revisa el documento antes de salir de la consulta:** que figuren tu nombre, la fecha, la frase exigida, la firma y el sello.

## Errores que causan la exclusión

La convocatoria dice que la no presentación de cualquiera de los documentos citados en los términos exigidos supone la exclusión. Son estos los errores más habituales:

- **Presentar un certificado caducado**, de hace más de veinte días, sin la declaración complementaria.
- **Un certificado genérico** que dice «apto para el deporte» pero no menciona los cuatro ejercicios.
- **Falta de identificación** del aspirante.
- **Una fecha anterior** a la publicación de la convocatoria.
- **No llevarlo el día de la prueba.** Pon una copia en la mochila la noche anterior.

## ¿Y si me lesiono entre la cita y las pruebas?

Si ha pasado más de veinte días con la ficha y has tenido alguna dolencia, consulta de nuevo a tu médico. Si el certificado está dentro de plazo pero ha cambiado tu estado de salud, no hagas la prueba sin que un médico te lo autorice: tu salud va por delante de la oposición.

Si necesitas adaptar las pruebas por una situación especial, la convocatoria remite a las medidas del capítulo V del Reglamento de ordenación de la enseñanza en la Guardia Civil. Es un caso específico que conviene consultar con el Tribunal.

## Resumen rápido

| Qué | Cómo |
|---|---|
| Documento | Certificado médico oficial (modelo de los apéndices III y IV) o ficha médica válida |
| Plazo | Expedido en los 20 días anteriores a las pruebas |
| Contenido | Que estás capacitado para carrera, circuito, extensiones y natación, sin riesgo para la salud |
| Identidad | Debe constar la del aspirante |
| Si no lo presentas bien | Exclusión del proceso |

Para saber qué te va a exigir cada ejercicio, empieza por [las cuatro pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Preguntas frecuentes

### ¿Es obligatorio el certificado médico para las pruebas físicas de la Guardia Civil?

Sí. Debe entregarse al Tribunal antes de empezar las pruebas, y no presentarlo en los términos exigidos supone la exclusión.

### ¿Cuántos días antes de las pruebas debo pedirlo?

Debe estar expedido dentro de los veinte días anteriores a las pruebas.

### ¿Qué pasa si mi ficha médica tiene más de veinte días?

Hay que acompañarla de una declaración donde conste que no has padecido ningún proceso patológico desde el reconocimiento.

### ¿Dónde está el modelo de certificado?

En los apéndices III y IV de la convocatoria, publicada en el BOE.',
   NULL, NULL, 'publicado', '2026-11-22T06:12:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'certificado médico', 'requisitos', 'documentación']::text[], '{"title":"Certificado médico pruebas físicas Guardia Civil","description":"Certificado médico para las pruebas físicas de la Guardia Civil: qué debe decir, plazo de 20 días, ficha médica alternativa y errores que causan la exclusión."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('circuito-agilidad-coordinacion-guardia-civil', 'articulo', 'Circuito de agilidad y coordinación de la Guardia Civil: técnica paso a paso', 'Un recorrido con vallas y banderines que se hace contra el reloj. Las marcas oficiales, qué lo anula, cuántos intentos tienes y cómo entrenarlo aunque no tengas el circuito montado.', 'El circuito de agilidad y coordinación es la prueba más técnica de las cuatro. No depende solo de estar en forma: depende de **hacer el recorrido bien y limpio**, y un error de ejecución puede costarte un intento.

## Las marcas oficiales

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), apéndice II) exige completar el recorrido en un tiempo **no superior** a:

| | Menor de 35 años | De 35 a 39 años | 40 años o más |
|---|---|---|---|
| Hombres | 14,00 s | 14,40 s | 15,10 s |
| Mujeres | 16,00 s | 16,40 s | 17,90 s |

Como las demás, es una prueba de apto o no apto.

## Cómo se mide

La salida es de pie, detrás de la línea de partida, y se puede iniciar desde cualquiera de los dos lados de la valla de inicio. Si empiezas por la izquierda, el recorrido es el mismo pero invirtiendo derecha e izquierda en banderines y bases de las vallas.

El tiempo se cuenta desde el inicio hasta que tocas el suelo con uno o los dos pies **después de superar con todo el cuerpo la última valla**. Es importante: no vale con pasar la última valla con medio cuerpo.

## Cuántos intentos tienes

Se permiten **dos intentos**, espaciados para que te recuperes, en estos casos:

- si el primero se declara **nulo**, o
- si superas el tiempo máximo establecido.

Es la diferencia con la carrera y la natación, que tienen un solo intento. Pero no te lo tomes como un colchón: el segundo intento llega con el cansancio del primero.

## Qué hace nulo un intento

La convocatoria lo dice con claridad. Es nulo todo intento en el que el aspirante:

- **modifique el recorrido** señalado en el gráfico, o
- **derribe o desplace** cualquiera de los elementos.

Es decir: una valla tirada o un banderín movido invalida el intento, por rápido que seas. Muchos aspirantes pierden su primer intento por querer ir demasiado deprisa en las zonas de giro.

## Técnica: lo que más tiempo ahorra

Sin ver el circuito delante, estas ideas generales sirven para cualquier recorrido de vallas y giros:

1. **Aprende el recorrido de memoria** antes de hacerlo, con el gráfico de la convocatoria en la mano. Dudar en un giro cuesta más que ir más despacio.
2. **Mira un elemento por delante.** Mientras superas una valla, tu mirada ya tiene que estar en la siguiente.
3. **Reduce el cuerpo en los giros.** Pasos cortos, centro de gravedad bajo y empuje con el pie exterior para salir rápido.
4. **No sacrifiques la limpieza por la velocidad.** Un intento nulo te cuesta más que unas décimas.
5. **Corre el final entero.** El tiempo se para cuando tocas el suelo tras la última valla: no frenes antes.

## Cómo entrenarlo si no tienes el circuito

No hace falta el circuito oficial para preparar lo que importa:

- **Agilidad de pies:** escalera de coordinación, saltos laterales y cambios de dirección con conos.
- **Saltos de valla:** vallas bajas o elementos seguros de altura similar, con aterrizajes controlados.
- **Cambios de dirección a ritmo:** circuitos con conos que te obliguen a girar a derecha e izquierda.
- **Simulación:** cuando puedas, practica el recorrido completo, cronometrado y con la misma ropa y calzado que usarás.

Entrénalo dos veces por semana, con descanso entre series, y siempre con calentamiento previo. Si tienes alguna lesión en tobillo, rodilla o espalda, consúltala antes con un profesional.

## No lo dejes para el final

El circuito se hace el mismo día que las otras tres pruebas. Si llegas con las piernas castigadas por la [carrera de 2.000 metros](/blog/carrera-2000-metros-guardia-civil), la coordinación empeora. Entrénalo también en condiciones de cansancio, para saber cómo respondes.

## Preguntas frecuentes

### ¿Cuánto hay que hacer en el circuito de agilidad de la Guardia Civil?

En 2026, 14,00 segundos o menos los hombres menores de 35 años y 16,00 segundos o menos las mujeres de esa edad. Hay tiempos algo mayores a partir de los 35 y de los 40 años.

### ¿Cuántos intentos hay?

Dos, si el primero es nulo o supera el tiempo máximo.

### ¿Qué anula el circuito?

Modificar el recorrido o derribar o desplazar cualquier elemento.

### ¿Se puede empezar por el lado que prefiera?

Sí, por cualquiera de los dos lados de la valla de inicio, invirtiendo el orden de banderines y bases si empiezas por la izquierda.',
   NULL, NULL, 'publicado', '2026-11-19T06:21:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'circuito de agilidad', 'coordinación', 'entrenamiento']::text[], '{"title":"Circuito de agilidad Guardia Civil: marcas y técnica","description":"Circuito de agilidad y coordinación de la Guardia Civil: marcas por sexo y edad, qué lo anula, intentos permitidos y cómo entrenarlo con técnica."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil', 'articulo', 'Entrenar y estudiar a la vez: cómo organizar la semana para rendir en las dos cosas', 'La oposición a Guardia Civil exige cabeza y cuerpo al mismo tiempo. Cómo repartir las horas de estudio y entrenamiento, qué cuidar en el sueño y la comida, y una semana tipo que se puede mantener durante meses.', 'Lo difícil de esta oposición no es estudiar ni entrenar: es **hacer las dos cosas a la vez durante meses** sin quemarte. Muchos aspirantes empiezan con un plan que es imposible de mantener y lo abandonan al mes.

Este artículo no es un manual de nutrición ni de entrenamiento, que dependen de cada persona. Es una guía de **organización**: cómo repartir el tiempo y la energía para que las dos cosas avancen.

## Primero: cuánto tiempo necesitas de cada cosa

Una preparación completa de esta oposición suele requerir entre 25 y 40 horas semanales de estudio, además del entrenamiento específico de las pruebas físicas. Si trabajas, no vas a llegar a esas cifras de golpe: lo importante es **empezar por lo que puedes sostener** y subir poco a poco.

Hay una regla útil para repartir: **estudio todos los días, entrenamiento tres o cuatro**, con al menos un día de descanso real a la semana.

## Una semana tipo (orientativa)

Es un esquema para alguien que trabaja por la mañana. Adáptalo a tus turnos.

| Día | Estudio | Entrenamiento |
|---|---|---|
| Lunes | 2 h de temario | Carrera de ritmo |
| Martes | 2 h de test + repaso | Fuerza (brazos y core) |
| Miércoles | 2 h de temario | Descanso o paseo |
| Jueves | 2 h de test + repaso | Carrera suave o natación |
| Viernes | 1,5 h de repaso | Circuito y agilidad |
| Sábado | 4 h: simulacro + corrección | Carrera larga y suave |
| Domingo | Descanso o repaso ligero | Descanso |

Es solo un ejemplo: lo que importa es la **regularidad**, no las horas exactas.

## Qué hacer primero: ¿estudio o entreno?

Depende de tu momento del día:

- Si estudias mejor por la mañana, **deja lo que exige más concentración para entonces** y entrena por la tarde.
- Si el entrenamiento te despeja, puedes hacerlo antes de ponerte a estudiar.
- **Evita entrenar fuerte justo antes de un simulacro** o de una sesión de estudio importante: llegar agotado se nota.

## Sueño: el pilar que se sacrifica primero

Cuando el tiempo aprieta, lo primero que se recorta es dormir. Es un error porque el sueño es cuando se consolida lo que estudias y cuando se recupera el cuerpo.

- **Mantén un horario regular** para acostarte y levantarte, incluidos los fines de semana.
- **No estudies hasta la madrugada** la víspera del entrenamiento duro.
- **Descansa el día antes** de las pruebas importantes y de los simulacros.

Si duermes poco de forma sostenida, tu rendimiento y tu salud lo notarán: consúltalo con tu médico.

## Comer y beber: lo básico

No hay una dieta oficial para opositores, y las necesidades cambian de una persona a otra. Pero algunas ideas generales sirven:

- **Haz comidas regulares** y no te saltes el desayuno los días de examen o entrenamiento.
- **Hidrátate** a lo largo del día, también cuando estudias.
- **Evita probar cosas nuevas** el día de una prueba o de un simulacro.
- **Cuida el peso**: el reconocimiento médico exige un IMC entre 17 y 30, como contamos en [el cuadro médico de exclusiones](/blog/cuadro-medico-exclusiones-guardia-civil).

Si quieres un plan de alimentación o tienes alguna condición de salud, consulta con un dietista o médico.

## Señales de que te estás pasando

- **Cansancio que no se va** tras dormir y descansar.
- **Bajo rendimiento**: marcas que empeoran o retención de lo estudiado que baja.
- **Dolores persistentes** que no mejoran con descanso. Si aparecen, para y consulta a un profesional.
- **Irritabilidad y desmotivación** sostenidas.

Si aparecen, reduce la carga una semana. Es mejor frenar a tiempo que parar un mes.

## Cómo mantenerlo en el tiempo

1. **Planifica la semana el domingo**, con horas concretas.
2. **Haz un seguimiento sencillo**: horas de estudio, tests hechos, entrenamientos. Lo que se mide, mejora.
3. **Descansa sin culpa.** Un día libre no es un día perdido.
4. **Ajusta cuando haga falta.** Los turnos, las exigencias del trabajo o una lesión cambian el plan: cámbialo, no lo abandones.

Si compaginas la oposición con un trabajo, te ayudará leer [cómo preparar la Guardia Civil trabajando](/blog/plan-estudio-guardia-civil-trabajando).

## Preguntas frecuentes

### ¿Se puede estudiar y entrenar a la vez para la Guardia Civil?

Sí, y es lo habitual. La clave es repartir bien el tiempo y mantener la regularidad, no hacer jornadas heroicas.

### ¿Cuántos días a la semana hay que entrenar?

Depende de tu nivel, pero lo habitual es entre tres y cuatro sesiones, con al menos un día de descanso completo.

### ¿Es mejor entrenar antes o después de estudiar?

Lo que te resulte más sostenible. Deja el estudio más exigente para tu mejor momento mental y evita entrenar duro justo antes de un simulacro.

### ¿Hay una dieta para opositar?

No hay una oficial. Lo básico: comidas regulares, buena hidratación y cuidar el peso. Para un plan personalizado, consulta a un profesional.',
   NULL, NULL, 'publicado', '2026-11-23T06:29:00.000Z', 'acceso-guardia-civil',
   ARRAY['organización', 'entrenamiento', 'descanso', 'planificación']::text[], '{"title":"Estudiar y entrenar a la vez: plan para opositar","description":"Cómo compaginar estudio y entrenamiento en la oposición a Guardia Civil: reparto de horas, sueño, alimentación básica y una semana tipo para mantener meses."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('extensiones-de-brazos-guardia-civil', 'articulo', 'Extensiones de brazos en la Guardia Civil: de cero a la marca', 'Dieciséis para ellos y once para ellas, sin parar y tocando el suelo con la barbilla. Las marcas oficiales, las reglas que hacen válida una repetición y una progresión para llegar a la marca partiendo de cero.', 'Las extensiones de brazos parecen la prueba más simple: una flexión de las de siempre. Pero la forma en que se miden es más exigente que la del gimnasio, y **muchas repeticiones que tú das por buenas no se cuentan**.

## Las marcas oficiales

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), apéndice II) exige un número de repeticiones **no inferior** a:

| | Menor de 35 años | De 35 a 39 años | 40 años o más |
|---|---|---|---|
| Hombres | 16 | 16 | 14 |
| Mujeres | 11 | 11 | 9 |

Es apto o no apto: más repeticiones no puntúan, pero menos de la marca te dejan fuera.

## Cuándo cuenta una repetición

La convocatoria describe el ejercicio con detalle. Se parte desde la posición de tierra inclinada: palmas de las manos en el suelo, brazos perpendiculares al suelo y a la anchura de los hombros. Desde ahí se hacen las flexiones-extensiones **sin detención**.

Cuenta como efectuada una repetición cuando **tocas con la barbilla en el suelo y vuelves a la posición de partida**, manteniendo en todo momento cabeza, hombros, espalda y piernas en prolongación.

No es válida una repetición:

- que **no sea simultánea** (un brazo antes que el otro), o
- en la que se apoye en el suelo **una parte distinta** de la barbilla, las puntas de los pies y las manos.

Es decir: tocar con el pecho o con la nariz en lugar de con la barbilla, o dejar caer la cadera, no cuenta. Tampoco vale hacerlas con la espalda arqueada.

La zona de contacto de la barbilla con el suelo **puede almohadillarse** con un grosor máximo de seis centímetros.

## ¿Se puede descansar?

Sí, con una condición. Durante el ejercicio se permite un descanso en cualquier momento, **siempre que se haga en posición de tierra inclinada hacia delante**, sin mover ni separar las partes del cuerpo que están en contacto con el suelo.

Eso significa que no puedes apoyar las rodillas ni sentarte a descansar: el descanso es con los brazos extendidos, en la posición inicial.

Tienes **dos intentos**, espaciados para recuperarte.

## De cero a la marca: una progresión

Si hoy haces pocas o ninguna, esto es un esquema general. Entrena tres días por semana, con descanso entre ellos.

**Fase 1: construir la base.** Flexiones inclinadas con las manos apoyadas en un banco o una pared, que son más fáciles, en 4 series de las repeticiones que puedas con buena técnica. Cuando llegues a 15 repeticiones con facilidad, baja la altura de apoyo.

**Fase 2: el movimiento completo.** Flexiones en el suelo con las rodillas apoyadas, y negativas: bajar muy despacio, en tres o cuatro segundos, y subir con ayuda de las rodillas. Cuando domines las negativas, pasa al siguiente nivel.

**Fase 3: flexiones completas.** Series de las que puedas con técnica perfecta, aunque sean pocas, y aumenta una repetición por sesión. Combínalas con series al fallo técnico (cuando la forma empieza a romperse, para).

**Fase 4: la marca.** Haz series de simulación: la serie completa de la marca, sin parar y con barbilla al suelo. Cuando la consigas una vez, practica hacerla dos o tres veces con descansos largos.

Para pasar de 8 a 16 hace falta, sobre todo, **constancia y técnica**, no horas en el gimnasio.

## Errores frecuentes

- **Entrenar con una técnica distinta a la oficial.** Practica siempre con barbilla al suelo, aunque sea en menos repeticiones.
- **Hacer las series demasiado rápido.** Se hacen mejores marcas con un ritmo regular.
- **No entrenar el core.** La espalda recta depende del abdomen y los glúteos. Añade planchas.
- **Llegar fatigado.** Esta prueba se hace el mismo día que la carrera y las demás: entrénala también con el cuerpo cansado.

Si tienes dolor en muñecas, hombros o codos, para y consúltalo con un profesional antes de seguir.

Tienes las cuatro pruebas juntas en [las pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Preguntas frecuentes

### ¿Cuántas extensiones de brazos hay que hacer en la Guardia Civil?

En 2026, 16 los hombres menores de 40 años y 11 las mujeres de esa edad, con descenso a 14 y 9 a partir de los 40.

### ¿Hay que tocar con el pecho o con la barbilla?

Con la barbilla. Es la que debe tocar el suelo en cada repetición.

### ¿Se puede parar a descansar?

Sí, pero solo en posición de tierra inclinada hacia delante, sin separar ninguna parte del cuerpo del suelo.

### ¿Cuántos intentos hay?

Dos, espaciados para que te recuperes.',
   NULL, NULL, 'publicado', '2026-11-20T06:38:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'extensiones de brazos', 'flexiones', 'entrenamiento']::text[], '{"title":"Extensiones de brazos Guardia Civil: marcas y plan","description":"Marcas de las extensiones de brazos de la Guardia Civil por sexo y edad, reglas para que cuente cada repetición y progresión de entrenamiento desde cero."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('lesiones-pruebas-fisicas-guardia-civil', 'articulo', 'Lesiones típicas al preparar las pruebas físicas de la Guardia Civil y cómo evitarlas', 'Una lesión a pocas semanas de las pruebas puede echar por tierra meses de preparación. Cómo progresar sin pasarte, qué señales no ignorar, cómo calentar y cuándo parar, además de qué hacer si te lesionas con la convocatoria en marcha.', 'Muchos aspirantes no se quedan fuera de las físicas por no estar en forma, sino por **llegar lesionados**. El entusiasmo de empezar, sumado a las ganas de llegar a la marca cuanto antes, es el caldo de cultivo de las lesiones por sobrecarga.

Este artículo es información general, no un diagnóstico: ante cualquier dolor que dure o que te limite, **consulta a un médico o fisioterapeuta**.

## Por qué se lesionan los opositores

Casi siempre por las mismas causas:

- **Subir la carga demasiado deprisa.** Pasar de correr poco a correr mucho en pocas semanas.
- **Entrenar sin descanso**, sin días libres ni sueño suficiente.
- **Calentar poco o nada.**
- **Mala técnica** al repetir muchas veces un gesto defectuoso, como flexiones con la espalda hundida.
- **Calzado inadecuado o gastado.**
- **Entrenar con dolor** en lugar de pararse a tiempo.

## Las zonas que más sufren, según la prueba

| Prueba | Zonas habituales de molestia |
|---|---|
| Carrera de 2.000 m | Espinillas, rodillas, tobillos y gemelos |
| Circuito de agilidad | Tobillos y rodillas, por giros y saltos |
| Extensiones de brazos | Muñecas, hombros y zona lumbar |
| Natación | Hombros |

No son lesiones inevitables: la mayoría están ligadas a la progresión y la técnica.

## Cómo prevenirlas

### 1. Progresa poco a poco

Una regla muy citada es no aumentar la carga semanal más de un diez por ciento de una semana a otra. No es una ley, pero ayuda a no dar saltos bruscos.

### 2. Calienta siempre

Cinco a diez minutos de movilidad articular y de trote suave antes de cualquier sesión fuerte. En las extensiones, dedica un minuto a movilizar muñecas y hombros.

### 3. Alterna días fuertes y suaves

Entre dos sesiones intensas, deja un día de descanso o de actividad ligera. Si haces fuerza, no trabajes el mismo grupo muscular dos días seguidos.

### 4. Trabaja la fuerza y el core

Los músculos fuertes protegen las articulaciones. Añade dos sesiones de fuerza general a la semana, con ejercicios básicos y técnica correcta.

### 5. Cuida el calzado

Unas zapatillas gastadas castigan las articulaciones. Cámbialas cuando notes que han perdido amortiguación.

### 6. Duerme y descansa

El cuerpo se recupera cuando descansa. Si te interesa organizar la semana, mira [cómo compaginar estudio y entrenamiento](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Señales que no debes ignorar

Para de entrenar y consulta con un profesional si notas:

- **Dolor que aparece al apoyar o que va a más** durante la sesión.
- **Dolor que persiste varios días** sin mejorar con reposo.
- **Hinchazón, inestabilidad o bloqueo** de una articulación.
- **Dolor nocturno** o que te despierta.
- **Hormigueo o pérdida de fuerza** en brazos o piernas.

La molestia muscular tras un entrenamiento duro es normal. Pero no lo es el dolor agudo o localizado.

## Qué hacer si te lesionas

1. **Reduce o suspende la carga** de la zona afectada y busca diagnóstico médico.
2. **Entrena lo que sí puedes.** Con una lesión de pierna, puedes trabajar tren superior, y viceversa, si tu médico te lo permite.
3. **Aplaza el reinicio hasta tener el alta** o el visto bueno del profesional.
4. **Vuelve de forma progresiva**, con la mitad de carga, y sube poco a poco.
5. **Guarda los informes médicos.** Pueden ser importantes si tu situación coincide con la convocatoria.

### ¿Y si me lesiono con la convocatoria en marcha?

La convocatoria prevé medidas para algunos supuestos concretos, remitiéndose al capítulo V del Reglamento de ordenación de la enseñanza en la Guardia Civil, y cita la posibilidad de una fecha alternativa para las pruebas físicas fijada por el Tribunal. Se trata de situaciones específicas y condicionadas, así que **si te pasa, consulta cuanto antes las bases y habla con el Tribunal** a través de los medios que indique la convocatoria.

No conviene presentarse a las pruebas lesionado: además de agravar el problema, el certificado médico que hay que entregar acredita que estás capacitado para los ejercicios. Tienes cómo funciona en [el certificado médico de las pruebas físicas](/blog/certificado-medico-pruebas-fisicas-guardia-civil).

## Resumen: cinco ideas

1. Aumenta la carga poco a poco.
2. Calienta siempre.
3. Descansa de verdad, con días libres y sueño.
4. Trabaja la fuerza y la técnica.
5. Para a tiempo y consulta a un profesional.

Y no olvides que las cuatro pruebas se hacen el mismo día: llegar sano vale más que llegar entrenado a medias. Repásalas en [las pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Preguntas frecuentes

### ¿Cuáles son las lesiones más comunes al preparar las pruebas físicas?

Las de sobrecarga en piernas por la carrera, los tobillos y rodillas por el circuito, y muñecas y hombros por las extensiones de brazos y la natación.

### ¿Cuánto debo subir la carga cada semana?

Una referencia habitual es no pasar de un diez por ciento de aumento semanal, aunque es orientativa y depende de cada persona.

### ¿Puedo seguir entrenando con una molestia?

Si es leve y mejora con el movimiento, puede ser normal; si es aguda, localizada o va a más, para y consulta a un profesional.

### ¿Qué pasa si me lesiono antes de las pruebas?

Habla con un médico y consulta las bases de la convocatoria: prevé medidas para algunos casos concretos, pero conviene consultarlo cuanto antes con el Tribunal.',
   NULL, NULL, 'publicado', '2026-11-24T06:46:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'lesiones', 'prevención', 'entrenamiento']::text[], '{"title":"Lesiones al preparar las pruebas de Guardia Civil","description":"Cómo evitar lesiones al preparar las pruebas físicas de la Guardia Civil: progresión, calentamiento, señales de alarma y qué hacer si te lesionas."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('natacion-50-metros-guardia-civil', 'articulo', 'Natación 50 metros Guardia Civil: aprender a nadar para la oposición desde cero', 'Cincuenta metros estilo libre, un solo intento y marcas de 70 segundos para ellos y 81 para ellas. Qué dice la convocatoria, qué reglas hay que respetar y cómo prepararte si no has nadado nunca.', 'La natación es la prueba que más ansiedad genera entre los aspirantes que no vienen del deporte. No es tanto una cuestión de fuerza como de **técnica y de perder el miedo al agua**, y eso se entrena con tiempo, no en el último mes.

## Las marcas oficiales

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), apéndice II) pide completar 50 metros de natación estilo libre en un tiempo **no superior** a:

| | Menor de 35 años | De 35 a 39 años | 40 años o más |
|---|---|---|---|
| Hombres | 70 s | 71 s | 73 s |
| Mujeres | 81 s | 83 s | 88 s |

Es apto o no apto, y se hace con **un solo intento**.

## Las reglas de la prueba

- **Estilo libre.** No hay un estilo obligatorio: lo habitual es el crol, que es el más rápido.
- **En piscina.** Cincuenta metros.
- **Sin agarrarte a la calle.** No se permite el contacto con los elementos que delimitan la calle, salvo lo **imprescindible para realizar el viraje** cuando haga falta.

Es decir, no puedes apoyarte en las corcheras para descansar ni para impulsarte. El único contacto admitido es el del viraje.

## ¿Es una marca difícil?

Para quien sabe nadar con algo de soltura, no. Con 70 segundos hay margen para nadar a ritmo cómodo. Para quien no domina el crol o se cansa a los 25 metros, hay que construir la técnica desde la base. La dificultad real está en **no ahogarse a mitad de recorrido**: el que llega agotado pierde el ritmo y se pasa de tiempo.

## Cómo aprender desde cero: un plan por fases

Es un esquema general. Si no sabes nadar, lo ideal es empezar con un monitor, aunque sean pocas sesiones: corregirte a tiempo ahorra meses.

**Fase 1: confianza en el agua.** Respiración con la cara dentro, flotación y deslizamientos tras el impulso en la pared. Si el agua te impone, empieza aquí sin prisa.

**Fase 2: técnica de crol.** Patada, brazada y respiración por separado, y luego juntas. Practica con material auxiliar: tabla para la patada y pull buoy para trabajar la brazada.

**Fase 3: continuidad.** Nadar 25 metros sin parar con buena técnica, luego 50 y luego varios 50 seguidos con descanso corto.

**Fase 4: la marca.** Series de 50 metros al ritmo de la prueba, con recuperaciones largas. Cronométralos siempre.

## Errores frecuentes

- **Ir muy rápido al principio.** Los primeros 25 metros marcan el resto: sal a un ritmo que puedas sostener.
- **Respirar poco.** Aguantar la respiración agota. Respira cada dos o tres brazadas, de forma regular.
- **Patada excesiva.** Una patada exagerada gasta energía sin avanzar. En los 50 metros importa más la brazada.
- **No practicar el viraje.** Si la piscina del examen exige girar, hazlo con naturalidad, sin agarrarte a la calle.
- **Entrenar solo, sin cronómetro.** Sin medir, no sabes si vas bien.

## Practica en una piscina de longitud parecida

Si puedes, entrena en una piscina de la longitud que se utilizará, porque cambia dónde haces el viraje. Si no lo sabes, practica ambas modalidades.

## El certificado médico, imprescindible

Antes de las pruebas físicas hay que entregar un certificado médico que acredite la aptitud para los ejercicios, incluida la soltura acuática. Pídelo con margen y dentro del plazo que marca la convocatoria: lo desarrollamos en un artículo propio de esta serie.

Puedes ver todas las pruebas en [las cuatro pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Preguntas frecuentes

### ¿Cuánto hay que tardar en los 50 metros de natación de la Guardia Civil?

En la convocatoria de 2026, 70 segundos o menos los hombres menores de 35 años y 81 segundos o menos las mujeres de esa edad.

### ¿Qué estilo hay que nadar?

Estilo libre. Lo más habitual es el crol.

### ¿Cuántos intentos hay en la natación?

Uno solo.

### ¿Puedo agarrarme a la corchera?

No. Solo se permite el contacto imprescindible para el viraje.',
   NULL, NULL, 'publicado', '2026-11-21T06:55:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'natación', '50 metros', 'entrenamiento']::text[], '{"title":"Natación Guardia Civil: marcas de 50 m y cómo prepararla","description":"Marcas de los 50 metros de natación de la Guardia Civil por sexo y edad, reglas de la prueba y cómo prepararla desde cero con un plan por fases."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

