-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('academia-online-o-por-libre-como-preparar-la-guardia-civil', 'articulo', 'Academia, online o por libre: cómo preparar la Guardia Civil', 'Tres formas de preparar la oposición, con sus ventajas e inconvenientes reales: academia presencial, curso online y estudio por libre. Cómo elegir según tu tiempo, tu disciplina y tu presupuesto.', 'No existe una opción mejor para todos. La respuesta corta: **depende de tu disciplina, de tu tiempo y de cuánto necesites que alguien te marque el ritmo**. Aprobar depende en último término de cuánto y cómo estudies, sea cual sea el formato.

## La comparación en una tabla

| | Academia presencial | Curso online | Por libre |
|---|---|---|---|
| Estructura y calendario | Fijos, te los marcan | Flexible o guiado según el curso | Los pones tú |
| Corrección y dudas | Cara a cara | Por plataforma, foro o mensajes | Dependes de ti |
| Horarios | Rígidos | Los eliges | Los eliges |
| Coste | Normalmente el más alto | Intermedio | El más bajo |
| Desplazamientos | Sí | No | No |
| Riesgo principal | No poder adaptarte al horario | Falta de seguimiento si no te lo exigen | Desorden y falta de método |

Los costes concretos varían mucho de una opción a otra: compara siempre precio y qué incluye cada una.

## Academia presencial

**Ventajas.** Calendario y rutina impuestos, contacto con otros opositores y un docente a quien preguntar. Para quien necesita un compromiso externo, es una gran ayuda.

**Inconvenientes.** Horarios fijos que chocan con un trabajo, desplazamientos y un coste mayor. Además, depende de que haya una cerca.

## Curso online

**Ventajas.** Estudias a tu hora y desde cualquier lugar, repites lo que no entiendes y, si trabajas o vives lejos, es muchas veces la única opción realista. Suele incluir tests y simulacros corregidos al momento.

**Inconvenientes.** Exige autodisciplina. Sin un compromiso externo, hay quien abandona. Y la calidad varía: mira qué incluye (temario, tests, simulacros, tutor) antes de pagar.

## Preparar la oposición por libre

**Ventajas.** Es lo más barato y lo más flexible. Hay mucho material oficial gratuito: [la convocatoria, el temario y cuestionarios de exámenes anteriores](/blog/recursos-oficiales-gratuitos-para-preparar-la-guardia-civil), y el texto de las leyes en el BOE.

**Inconvenientes.** Debes decidir qué estudiar y en qué orden, resumir tú el temario, buscar tests y corregirte. Es fácil estudiar sin método o perder tiempo en lo que no entra. Si eliges esta vía, un [plan de estudio](/plan-de-estudio) con calendario es casi obligatorio.

## Cómo elegir: cinco preguntas

1. **¿Cumples calendarios por tu cuenta?** Si sí, por libre u online funcionan; si necesitas presión externa, la academia presencial ayuda.
2. **¿Cuántas horas reales tienes?** Si trabajas, mira [cómo estudiar la oposición trabajando](/blog/plan-estudio-guardia-civil-trabajando).
3. **¿Necesitas explicaciones o te basta con leer?** Si tiendes a atascarte, valora un formato con tutor.
4. **¿Qué presupuesto tienes?** Y qué incluye: temario, tests, simulacros, correcciones y actualizaciones.
5. **¿Vives cerca de una academia?** Si no, el online amplía opciones.

También puedes **combinar**: por ejemplo, temario por libre y simulacros corregidos de pago, o un curso online con refuerzo presencial para las pruebas físicas. Las pruebas físicas, por cierto, se entrenan en cualquier caso fuera del temario: mira [pruebas físicas: marcas y entrenamiento](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Qué mirar antes de pagar

- Que el temario esté **actualizado** a la convocatoria vigente.
- Que incluya **tests y simulacros** con corrección.
- Que cubra **todas** las pruebas, no solo el temario: [ortografía y gramática](/blog/ortografia-gramatica-examen-guardia-civil), inglés y psicotécnico.
- Que no prometa aprobar: **nadie puede garantizarlo**. Desconfía de cualquier promesa de resultado.
- Que puedas ver una muestra antes de comprometerte.

## Una opción más

Si te inclinas por el formato online, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) de ProLince es una de las opciones. Incluye temario, test y exámenes de 2017 a 2026 (recopilados por el curso, no como dato oficial). Compáralo con lo que necesitas tú, como con cualquier otra.

## Preguntas frecuentes

### ¿Se puede aprobar la Guardia Civil por libre?
Sí, es posible, y mucha gente lo intenta. Exige método, constancia y un buen plan de estudio.

### ¿Es obligatorio ir a una academia?
No. La convocatoria no exige ninguna preparación concreta; el acceso se decide por las pruebas.

### ¿Qué es mejor si trabajo?
Un formato flexible (online o por libre) suele encajar mejor, pero lo decisivo es tu constancia.

### ¿Cuánto cuesta preparar la oposición?
Varía según el formato y lo que incluya. Compara siempre el precio con lo que ofrece cada opción.',
   NULL, NULL, 'publicado', '2027-01-12T06:39:00.000Z', 'acceso-guardia-civil',
   ARRAY['academia', 'online', 'por libre', 'preparación']::text[], '{"title":"Academia, online o por libre para Guardia Civil","description":"Comparación honesta entre academia presencial, curso online y preparar la Guardia Civil por libre: ventajas, inconvenientes y cómo elegir según tu caso."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('agrupacion-de-trafico-que-hace-y-como-se-entra-guardia-civil', 'articulo', 'Agrupación de Tráfico: qué hace y cómo se entra', 'Tráfico no es un destino al que se vaya directo desde Baeza: es una especialidad con tres modalidades que exige una cualificación específica y un puesto que la requiera. Qué hace, cómo se organiza y qué dice la Orden PCM/509/2020.', 'Respuesta corta: la Agrupación de Tráfico se dedica a la vigilancia, regulación, auxilio y control del tráfico y del transporte en las vías interurbanas. **No se entra directamente desde la oposición**: es una especialidad, y para ejercerla hace falta obtener una cualificación específica y ocupar un puesto que la exija. Lo que no he podido verificar son los requisitos concretos y las convocatorias de cada año, que no están en las normas generales.

## Qué hace la Agrupación de Tráfico

Según la [página oficial de la especialidad](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/Seguridad_Vial/), su personal tiene como misión la «vigilancia, regulación, auxilio y control del tráfico y del transporte», y garantizar la seguridad en las carreteras fuera de las ciudades. Las funciones que enumera son:

- Proteger y auxiliar a los usuarios de las vías públicas.
- Vigilar la disciplina del tráfico en las vías interurbanas y denunciar las infracciones.
- Investigar los accidentes de tráfico e instruir las diligencias.
- Controlar el cumplimiento de la normativa sobre transporte por carretera.

La Agrupación se creó el 26 de agosto de 1959, según esa misma web. Opera en todo el territorio excepto Cataluña y el País Vasco, donde la competencia está transferida a las comunidades autónomas.

## Cómo se organiza

- **Órgano central**, con jefaturas de Operaciones, de Recursos Humanos y de Recursos Materiales, y la **Escuela de Tráfico**, que forma al personal.
- **Organización periférica**: sectores (coordinación e inspección de servicios en una o varias comunidades), subsectores (planificación y ejecución en el ámbito provincial) y destacamentos (ejecución del servicio en una parte de la red viaria).

Si te interesa saber cómo encaja con el resto de cuerpos, repasa [las competencias de cada fuerza de seguridad](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada).

## Las tres modalidades

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900), que regula las especialidades, recoge Tráfico como la especialidad E18, con tres modalidades:

| Modalidad | Código |
|---|---|
| Dirección | TRD |
| Motorista | TRM |
| Atestados | TRA |

La orden derogó la anterior regulación de la especialidad, la Orden INT/574/2003. Entró en vigor un año después de su publicación (disposición final segunda), es decir, en junio de 2021.

## Cómo se accede a la especialidad

La orden fija el marco general (artículo 7):

1. **El requisito fundamental** es acreditar la cualificación específica necesaria. Esa cualificación se adquiere según lo que establezca la normativa de enseñanza.
2. Para ejercer como especialista hace falta además **ocupar un puesto orgánico** que exija esa cualificación.
3. La asignación de esos puestos puede condicionarse a la escala, categoría o empleo, la edad, condiciones psicofísicas especiales, titulaciones o aptitudes previas, o un nivel de idiomas.

Los requisitos concretos de cada modalidad, las pruebas y los cursos se desarrollan en la regulación específica de cada especialidad, que aprueba el Director General (disposición final primera), y en las convocatorias de los cursos. **Esas condiciones concretas no las he encontrado en una fuente oficial pública, así que no doy edades, años de servicio ni pruebas.** Si ves cifras cerradas en un foro, trátalas con prudencia.

Lo que sí es cierto: no se trata de una vía de acceso a la oposición. Primero ingresas como guardia civil y haces el recorrido que describimos en [qué pasa en Baeza](/blog/academia-baeza-guardia-civil) y en [los destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

## Qué puedes hacer ya

- Entiende el punto de partida: el recorrido empieza por [cómo se asignan los primeros destinos](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).
- Si te atraen las modalidades de motorista o atestados, ve a la página oficial de la especialidad para ver cómo se describe.
- Y primero, aprueba: en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) trabajamos el temario y el plan de estudio.

## Preguntas frecuentes

### ¿Puedo entrar directamente en Tráfico al salir de Baeza?
La normativa exige la cualificación específica y un puesto que la requiera. En lo que he podido verificar, no existe un acceso directo desde la oposición; lo habitual es obtenerla más adelante, con los cursos que se convoquen.

### ¿Cuántas modalidades tiene la especialidad de Tráfico?
Tres: dirección, motorista y atestados (Orden PCM/509/2020).

### ¿Dónde se forma el personal de Tráfico?
La web oficial indica que la Escuela de Tráfico forma al personal de la Agrupación. Los requisitos de cada curso se publican en su convocatoria.

### ¿Hay Agrupación de Tráfico en Cataluña y País Vasco?
La web oficial explica que la organización periférica se extiende a todo el territorio excepto esas dos comunidades, por tener transferida la competencia.',
   NULL, NULL, 'publicado', '2027-01-25T06:20:00.000Z', 'acceso-guardia-civil',
   ARRAY['tráfico', 'especialidades', 'motoristas', 'atestados']::text[], '{"title":"Agrupación de Tráfico Guardia Civil: funciones y acceso","description":"Qué hace la Agrupación de Tráfico de la Guardia Civil, sus tres modalidades (dirección, motorista, atestados) y cómo se accede según la Orden PCM/509/2020."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('altura-minima-guardia-civil', 'articulo', 'Altura mínima Guardia Civil: por qué ya no se exige', 'Desde octubre de 2023 no hay estatura mínima ni máxima para entrar en la Guardia Civil. Qué se exigía antes, qué norma lo cambió, por qué, y qué sí se sigue midiendo en el reconocimiento médico.', 'Durante años, la estatura fue uno de los requisitos que más aspirantes dejaba fuera antes incluso de empezar a estudiar. Hoy ya no es así, pero en internet siguen circulando cifras antiguas.

La respuesta corta: **para ingresar en la Escala de Cabos y Guardias de la Guardia Civil no hay altura mínima ni máxima desde octubre de 2023.**

## ¿Qué se exigía antes?

La redacción original del cuadro médico de exclusiones (Orden PCI/155/2019) excluía a quien midiera:

- menos de **160 cm** en el caso de los hombres,
- menos de **155 cm** en el caso de las mujeres, o
- más de **203 cm**, en ambos casos.

Si en algún sitio ves esas cifras como requisito actual, la información está desfasada.

## ¿Qué norma eliminó la altura mínima?

La **Orden PCM/1133/2023, de 17 de octubre** ([BOE-A-2023-21528](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-21528)), en vigor desde el 19 de octubre de 2023. Su único artículo cambia el apartado de talla del cuadro médico, que queda así:

> «1. Talla. En bipedestación: sin límite.»

Es la redacción que sigue vigente en el [texto consolidado de la Orden PCI/155/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291) y la que se aplica en la convocatoria de 2026.

## ¿Por qué se eliminó?

La propia orden lo explica en su preámbulo. Se apoya en una sentencia del Tribunal Supremo de 14 de julio de 2022 que razonaba que tener una estatura inferior a la fijada no parecía relacionado con la falta de una aptitud física concreta, y que esa aptitud ya queda garantizada con las pruebas físicas y médicas del proceso.

Con esa idea, y con el objetivo declarado de avanzar en la igualdad de oportunidades entre hombres y mujeres y atraer talento, se suprimieron con carácter general los límites de estatura para el ingreso.

## ¿Puede pedirse una altura para algún destino?

Sí, y es un matiz importante. La orden elimina la altura **para ingresar en los centros de formación**, pero deja a salvo los requisitos que puedan exigirse después:

- para ocupar **determinados destinos**, según el Reglamento de destinos del personal de la Guardia Civil, y
- para acceder a la **enseñanza de especialización**, según el Reglamento de ordenación de la enseñanza.

Es decir: tu estatura no te impide entrar, pero en el futuro podría contar para alguna especialidad o destino concreto si su normativa lo exige.

## Lo que sí se sigue midiendo: el IMC

Que no haya límite de altura no significa que la talla no se mida. Se usa para calcular el **índice de masa corporal**, que debe estar **entre 17 y 30**:

> IMC = peso (kg) / talla (m)²

Por ejemplo, una persona de 1,58 m supera el límite de 30 a partir de unos 75 kg. Se admite un IMC superior a 30 si se debe claramente a masa muscular, sin otra patología ni factores de riesgo.

Tienes el resto de parámetros del reconocimiento en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Si mides poco, donde tienes que fijarte es en las físicas

La altura ya no te deja fuera, pero las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) son iguales para todos los aspirantes de cada sexo y tramo de edad. En la natación o en las extensiones de brazos, la técnica cuenta tanto como la fuerza. Entrénalas con tiempo, porque basta con no superar una para quedar fuera del proceso.

## Preguntas frecuentes

### ¿Cuál es la altura mínima para ser Guardia Civil?

Ninguna. Desde la Orden PCM/1133/2023, el cuadro médico establece la talla «sin límite» para ingresar en la Escala de Cabos y Guardias.

### ¿Hay altura máxima en la Guardia Civil?

Tampoco. El antiguo límite de 203 cm desapareció con la misma orden.

### ¿Cuánto había que medir antes?

160 cm los hombres y 155 cm las mujeres, según la redacción original de la Orden PCI/155/2019.

### ¿Se mide la altura en el reconocimiento médico?

Sí, para calcular el índice de masa corporal, que debe estar entre 17 y 30.',
   NULL, NULL, 'publicado', '2026-11-13T06:39:00.000Z', 'acceso-guardia-civil',
   ARRAY['altura', 'estatura', 'cuadro médico', 'requisitos']::text[], '{"title":"Altura mínima Guardia Civil: ya no se exige (2026)","description":"¿Hay altura mínima para la Guardia Civil? No desde la Orden PCM/1133/2023. Qué se exigía antes (160 y 155 cm), por qué se eliminó y qué se sigue midiendo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

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
  ('armas-y-explosivos-en-el-temario-de-la-guardia-civil', 'articulo', 'Armas y explosivos en el temario de la Guardia Civil', 'El tema 22 se apoya en dos reglamentos: el de Armas (RD 137/1993) y el de Explosivos (RD 130/2017). Categorías de armas, licencias, guías de pertenencia y claves del control de explosivos, con los artículos clave.', 'El **tema 22** del programa de la Escala de Cabos y Guardias, «Armas y explosivos», cita dos normas: el **Real Decreto 137/1993, Reglamento de Armas**, y el **Real Decreto 130/2017, Reglamento de Explosivos**. Su resumen habla de clasificación de las armas, licencias, guías de pertenencia, tenencia y control de explosivos (consulta el [temario](/temario-guardia-civil)).

La respuesta corta: aprende **la clasificación por categorías, qué documento exige cada arma y qué Administración interviene**. Y recuerda por qué lo estudia un guardia civil: la LO 2/1986 le atribuye «las derivadas de la legislación vigente sobre armas y explosivos» (art. 12.1.B.a, que ya vimos en [competencias de cada cuerpo](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada)).

## Reglamento de Armas (RD 137/1993)

Está publicado en el [BOE-A-1993-6202](https://www.boe.es/buscar/act.php?id=BOE-A-1993-6202), con texto consolidado actualizado, entre otros, por el Real Decreto 726/2020. Estudia siempre el texto vigente.

### Categorías (art. 3)

Tras la reforma de 2020, el artículo 3 clasifica las armas reglamentadas en **nueve categorías**:

| Categoría | Armas |
|---|---|
| 1.ª | Armas de fuego cortas: pistolas y revólveres |
| 2.ª | Armas de fuego largas para vigilancia y guardería y armas largas rayadas (caza mayor) |
| 3.ª | Armas largas rayadas deportivas de calibre 5,6 mm, escopetas y armas de ánima lisa, y armas de aire u otro gas comprimido de energía superior a 24,2 julios |
| 4.ª | Carabinas y pistolas, y revólveres, de aire u otro gas comprimido no asimiladas a escopetas |
| 5.ª | Armas blancas |
| 6.ª | Armas antiguas, históricas o de avancarga |
| 7.ª | Armas de inyección anestésica, ballestas, arcos y fusiles de pesca submarina, armas de alarma y señales, entre otras |
| 8.ª | Armas acústicas y de salvas |
| 9.ª | Armas inutilizadas |

El reglamento regula además las **armas prohibidas** (art. 4) y las **armas de guerra** (sección 5).

### Documentación: licencias, tarjetas y guías

- **Licencias** (art. 96): la tenencia y el uso de armas de las categorías 1.ª, 2.ª y 3.ª precisa licencia. Las principales: **A** (personal de las Fuerzas Armadas, de las Fuerzas y Cuerpos de Seguridad y del Servicio de Vigilancia Aduanera), **B** (armas cortas de particulares), **C** (dotación del personal de vigilancia y seguridad), **D** (arma larga rayada para caza mayor), **E** (armas de la 3.ª categoría y algunas de la 7.ª) y **F** (armas de concurso de tiro deportivo de federados).
- **Tarjeta de armas** (art. 96.6): para llevar y usar armas de la 4.ª categoría.
- **Guía de pertenencia** (arts. 88 y 89): cada arma de las categorías que enumera el artículo 88 debe estar documentada con su guía, que expiden las Intervenciones de Armas y que debe acompañar siempre al arma en los casos de uso, depósito y transporte.

### Quién interviene y qué se exige

La solicitud de licencia se presenta en la **Intervención de Armas de la Guardia Civil** del domicilio, con certificado de antecedentes penales, DNI e informe de aptitudes psicofísicas (art. 97). El artículo 98 impide ser titular a quienes sus condiciones psíquicas o físicas les impidan usar armas o supongan un riesgo propio o ajeno; el personal en activo de las Fuerzas Armadas y de las Fuerzas y Cuerpos de Seguridad está exceptuado de presentar el informe de aptitud.

La licencia **B** solo se concede a quien tenga necesidad de obtenerla, y la defensa de personas o bienes, por sí sola, no la justifica (art. 99). Si quieres relacionar normas, recuerda que la [LO 1/2004](/blog/violencia-de-genero-lo-1-2004-claves-para-el-examen) permite suspender el derecho a la tenencia, porte y uso de armas como medida judicial.

## Reglamento de Explosivos (RD 130/2017)

Se aprobó el 24 de febrero de 2017 ([BOE-A-2017-2313](https://www.boe.es/buscar/act.php?id=BOE-A-2017-2313)) y derogó el RD 230/1998.

- **Objeto (art. 1)**: regular los explosivos con fines civiles en lo relativo a seguridad ciudadana (fabricación, almacenamiento, distribución, comercio, transporte, adquisición, tenencia y uso), a seguridad industrial y a seguridad y salud en el trabajo, e incorporar la Directiva 2014/28/UE.
- **Exclusiones**: entre otras, las Fuerzas Armadas y las Fuerzas y Cuerpos de Seguridad con unidades de desactivación, en el ejercicio de sus competencias, y los artículos pirotécnicos y cartuchería (RD 989/2015).
- **Competencias (art. 2)**: intervienen varios departamentos; el Ministerio del Interior, a través de la Dirección General de la Guardia Civil, controla e inspecciona fabricación, almacenamiento, circulación, comercio, adquisición, transporte, medidas de seguridad, tenencia y uso.
- **Clasificación (arts. 8 y 9)**: divisiones de riesgo del 1.1 al 1.6, y tipos como dinamitas (A), nafos (B), explosivos plásticos (C), hidrogeles (E-a) y emulsiones (E-b), pólvoras y objetos explosivos.
- **Estructura**: diez títulos (ordenación preliminar, fábricas, depósitos, envases, comercialización, control de mercado, uso, importación y exportación, transporte y régimen sancionador).

## Cómo estudiarlo

Empieza por los dos cuadros de clasificación, memoriza qué licencia corresponde a cada categoría y entiende el papel de las Intervenciones de Armas. Después ve a los reglamentos para detalles, que son extensos: el programa dice «Reglamento de Armas» y «Reglamento de Explosivos» sin indicar artículos, así que consulta la convocatoria vigente. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) estructura este tema.

Si necesitas gestionar una licencia real, acude a la Intervención de Armas: este artículo es material de estudio, no asesoramiento.

## Preguntas frecuentes

### ¿Cuántas categorías de armas hay?

Nueve en el texto vigente tras el RD 726/2020 (art. 3 del Reglamento de Armas).

### ¿Qué es la guía de pertenencia?

El documento que acredita cada arma de las categorías previstas en el artículo 88 y que la acompaña siempre en uso, depósito y transporte.

### ¿Quién controla los explosivos?

Varias administraciones; en seguridad ciudadana, el Ministerio del Interior a través de la Dirección General de la Guardia Civil (art. 2 del RD 130/2017).

### ¿Se estudian los dos reglamentos enteros?

El programa cita los dos reales decretos sin precisar artículos concretos; revisa la convocatoria vigente.',
   NULL, NULL, 'publicado', '2026-12-29T06:41:00.000Z', 'acceso-guardia-civil',
   ARRAY['armas', 'explosivos', 'tema 22', 'reglamentos']::text[], '{"title":"Armas y explosivos: temario Guardia Civil (tema 22)","description":"Tema 22 de Guardia Civil: categorías de armas, licencias, guías de pertenencia del RD 137/1993 y claves del Reglamento de Explosivos (RD 130/2017)."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('ascenso-a-cabo-cuando-puedes-presentarte', 'articulo', 'Ascenso a cabo: cuándo puedes presentarte y cómo es la promoción interna', 'El ascenso a cabo se logra por concurso-oposición y curso de capacitación. Qué exige la Ley 29/2014, qué pruebas fija la orden de 2024, cuántas convocatorias tienes y qué puntos dependen de cada convocatoria.', 'Antes de pensar en ser cabo conviene tener claro cómo es el camino: no se asciende solo por antigüedad. **El empleo de cabo se alcanza por concurso-oposición y tras superar un curso de capacitación, y pueden optar los guardias civiles con al menos dos años de tiempo de servicios.** Lo explicamos con la normativa, sin inventar fechas ni plazas.

Es un tema que interesa a quien opositó y también a quien está empezando y quiere saber hacia dónde va la carrera. Si estás en el primer caso, repasa antes [la Academia de Baeza](/blog/academia-baeza-guardia-civil) y [cómo funcionan los destinos](/blog/destinos-especialidades-guardia-civil).

## Qué dice la ley

La [Ley 29/2014, de Régimen del Personal de la Guardia Civil](https://www.boe.es/buscar/act.php?id=BOE-A-2014-12408), establece:

- **Sistema:** los ascensos al empleo de cabo se hacen por concurso-oposición (artículo 64.2).
- **Curso:** es requisito superar un curso de capacitación (artículo 71.1).
- **Quién puede optar:** las plazas se ofertan con carácter general a los guardias civiles con, al menos, dos años de tiempo de servicios en el Cuerpo (artículo 71.1).
- **Orden:** el ascenso se produce con ocasión de vacante, según el orden resultante de las puntuaciones del concurso-oposición y del curso (artículo 71.3).
- **Después:** el ascenso a cabo otorga la aptitud para cabo primero, que es un ascenso por antigüedad.

Además, quien tenga el título de Bachiller o equivalente puede obtener, con el nombramiento de cabo, la equivalencia con el título de Técnico Superior de Formación Profesional a efectos académicos y de acceso directo a la universidad (artículo 71.4).

## Cuándo puedes presentarte

El Reglamento de evaluaciones y ascensos ([Real Decreto 512/2017, BOE-A-2017-5862](https://www.boe.es/buscar/act.php?id=BOE-A-2017-5862)) concreta que hay que tener cumplidos al menos dos años de tiempo de servicios en el Cuerpo **en la fecha de inicio del curso de capacitación**, estar en alguna de las situaciones administrativas que permiten ascender y reunir los requisitos de la normativa de enseñanza.

No podemos darte una fecha: las convocatorias se publican en el Boletín Oficial de la Guardia Civil, tras su aprobación por la Jefatura de Enseñanza, y deben incluir plazas, requisitos, procedimiento, temario, méritos y baremos, y lugar y fechas del curso, entre otros apartados.

## Requisitos de la orden de bases

La [Orden PJC/325/2024](https://www.boe.es/buscar/act.php?id=BOE-A-2024-7480) aprueba las bases generales del proceso selectivo. Sin que sustituya a lo que diga cada convocatoria, estos son sus requisitos adicionales:

- No tener anotadas y sin cancelar en la hoja de servicios penas o sanciones por faltas graves o muy graves.
- Carecer de antecedentes penales.
- No estar de baja por motivos de salud en los días de las pruebas.
- No estar privado de derechos civiles.
- No estar procesado, investigado judicialmente o acusado con apertura de juicio oral por delito doloso.
- **No superar cinco convocatorias.** Se consume una convocatoria cuando se alcanza la condición de aspirante admitido.

## Cómo es el proceso

El proceso consta de **fase de concurso** (valoración de méritos) y **fase de oposición**, que hay que superar. Esta última incluye:

1. **Prueba de conocimientos profesionales**, con cuestionario escrito de materias jurídicas, socioculturales, técnico-científicas y lengua inglesa. El temario lo fija cada convocatoria.
2. **Prueba psicotécnica**, con aptitudes intelectuales y perfil de personalidad. La puntuación de aptitudes intelectuales tiene una incidencia del 20 % sobre la fase de oposición.
3. **Prueba de aptitud psicofísica**, que incluye pruebas físicas, reconocimiento médico y entrevista personal. Es eliminatoria y se califica como apto o no apto.

La fase de concurso tiene una incidencia del 23 % sobre la puntuación final que da el orden de prelación para el ascenso, según la disposición adicional de esa orden, que modifica la Orden PCI/346/2019. La orden no permite usar la puntuación del concurso para superar los mínimos de la oposición.

## El curso de capacitación

El plan de estudios aprobado en la Orden PJC/325/2024 tiene una duración de 340 horas: 90 de fase no presencial, 190 de fase presencial y 60 de periodo de prácticas. El orden de ascenso lo determina la combinación del proceso selectivo y del curso, según el Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)). En la selección para el curso, la orden de bases resuelve los empates por la nota de conocimientos profesionales y, después, por el número en el escalafón.

## Lo que depende de cada convocatoria

No damos cifras de plazas, calendario, notas de corte ni temario concreto: **cada convocatoria los establece** y pueden cambiar. Lo más útil es leer la convocatoria vigente en el Boletín Oficial de la Guardia Civil.

## Qué hacer si aún estás opositando

Ser cabo está lejos, pero hay una conclusión práctica: la base de todo es entrar bien. El inglés, que aparece en la prueba de conocimientos del ascenso, es también una prueba de la oposición actual: repasa la [prueba de inglés](/blog/ingles-oposicion-guardia-civil). Y para saber cuánto cobra un guardia civil, tienes [el sueldo](/blog/sueldo-guardia-civil). Todo empieza por aprobar: en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos a conseguirlo.

## Preguntas frecuentes

### ¿Cuántos años hay que tener de servicio para ser cabo?

Al menos dos años de tiempo de servicios en el Cuerpo, que el Reglamento de evaluaciones exige cumplidos en la fecha de inicio del curso de capacitación.

### ¿Se asciende por antigüedad?

No. El ascenso a cabo es por concurso-oposición y curso de capacitación. El de cabo primero, después, es por antigüedad.

### ¿Cuántas veces puedo presentarme?

Las bases generales fijan un máximo de cinco convocatorias, con el criterio de cómputo descrito arriba.

### ¿Dónde se publican las convocatorias?

En el Boletín Oficial de la Guardia Civil, tras su aprobación por la Jefatura de Enseñanza.',
   NULL, NULL, 'publicado', '2027-02-02T06:36:00.000Z', 'acceso-guardia-civil',
   ARRAY['ascenso a cabo', 'promoción interna', 'concurso-oposición', 'carrera']::text[], '{"title":"Ascenso a cabo Guardia Civil: requisitos y sistema","description":"Ascenso a cabo en la Guardia Civil: dos años de servicios, concurso-oposición y curso de capacitación. Qué dice la ley y qué fija cada convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('balance-del-ano-como-saber-si-vas-bien-en-la-oposicion', 'articulo', 'Balance del año: cómo saber si vas bien en la oposición', 'Antes de que acabe el año, mide tu preparación con indicadores honestos: simulacros corregidos, temas dominados, marcas físicas y constancia. Cómo interpretarlos con los mínimos oficiales y las notas de corte.', '**Respuesta corta:** sabes si vas bien cuando puedes medirlo con algo que no depende de cómo te sientes. Las sensaciones engañan en los dos sentidos; un simulacro corregido, no. En este artículo tienes cinco indicadores propios para hacer balance antes del 31 de diciembre y qué hacer con cada resultado.

Ninguna cifra de aquí es una predicción: nadie puede asegurarte con una nota concreta que tendrás plaza, porque depende de cuánta gente se presente y de cómo lo haga ese año.

## Indicador 1: tu nota en simulacros corregidos

Es el más útil. En la prueba de conocimientos hay 100 preguntas de 4 opciones, **cada error resta un tercio de acierto** y las respuestas en blanco no restan. Hay que sacar al menos **50 sobre 100** para no quedar excluido. Si no recuerdas el cálculo, lo tienes en [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil) y en la [calculadora](/calculadora-nota-guardia-civil).

Ejemplo propio: 70 aciertos, 21 errores y 9 en blanco dan 70 − 21/3 = **63 puntos**.

Lo importante no es un simulacro suelto, sino la **tendencia de los últimos cuatro o cinco**. Apúntalos en una hoja con fecha, nota y número de errores. Si la línea sube, vas bien aunque la cifra aún no te guste. Si está plana durante un mes, algo del método hay que cambiar.

## Indicador 2: margen sobre los mínimos

Cada prueba tiene un mínimo eliminatorio según la convocatoria 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)):

| Prueba | Mínimo |
| --- | --- |
| Conocimientos | 50 sobre 100 |
| Inglés | 8 sobre 20 |
| Psicotécnico | 12 sobre 30 |
| Ortografía y gramática | 6 errores o más excluyen |

Pregúntate en cuál de ellas estás más cerca del mínimo. Esa es tu prioridad de enero, no la que más te gusta estudiar. Quien domina el temario pero ignora el inglés se juega el proceso en una prueba de 20 preguntas.

## Indicador 3: comparación con las notas de corte (con cuidado)

La nota de corte es la puntuación final, sobre 195, del último aspirante propuesto del cupo libre. Calculadas a partir del BOE, fueron 110,58 en 2022, 95,75 en 2023, 103,08 en 2024, 95,8 en 2025 y 90,61 en 2026 (propuestos: [BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936)). Tienes el detalle en [la nota de corte](/blog/nota-de-corte-guardia-civil).

Dos advertencias:

- Esa nota suma **concurso (hasta 45 puntos) y oposición (hasta 150)**. Tu simulacro de conocimientos es solo una parte.
- Cambia mucho de un año a otro, así que sirve como orden de magnitud, no como objetivo exacto.

## Indicador 4: temario dominado, no leído

Haz una tabla con los 23 temas y marca cada uno como **visto**, **repasado** o **dominado**. «Dominado» significa que respondes un test del tema sin apuntes y con pocos fallos. Si la mayoría está en «visto», tienes lectura, no preparación. Lo veremos con más calma al hablar del repaso espaciado.

## Indicador 5: marcas físicas y constancia

Cronometra los 2.000 metros, cuenta tus extensiones de brazos y nada los 50 metros un día cualquiera, sin preparación especial. Compara con [las marcas de entrenamiento](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento). Y cuenta cuántas semanas de las últimas ocho cumpliste tu plan: la constancia pesa más que cualquier semana heroica.

Si tienes dolor o una lesión, consulta con un profesional sanitario antes de forzar.

## Qué hacer con el resultado

- **Vas por encima de lo previsto:** mantén el ritmo y sube la dificultad, con simulacros completos y a tiempo real.
- **Vas justo:** elige un único punto débil y trabájalo todo enero.
- **Vas por debajo:** no es una condena; revisa horas reales, método y [errores típicos al preparar](/blog/errores-preparar-oposicion-guardia-civil) antes de decidir nada.

Si quieres un seguimiento ordenado, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye temario y simulacros.

## Preguntas frecuentes

### ¿Cuántos simulacros necesito para saber cómo voy?
No hay un número oficial. Con cuatro o cinco corregidos y registrados ya se ve una tendencia razonable.

### ¿Es malo suspender un simulacro?
No: es información. Lo malo es no corregirlo y repetir el mismo error.

### ¿Puedo compararme con la nota de corte del año pasado?
Solo como referencia. Suma concurso y oposición, y cambia cada convocatoria.

### ¿Y si voy mal en diciembre?
Quedan meses antes de la próxima convocatoria. Ajusta método y horas, y vuelve a medirte en cuatro semanas.',
   NULL, NULL, 'publicado', '2026-12-30T06:58:00.000Z', 'acceso-guardia-civil',
   ARRAY['balance', 'planificación', 'simulacros', 'nota de corte']::text[], '{"title":"Cómo saber si vas bien en la oposición a Guardia Civil","description":"Indicadores propios para el balance de fin de año en tu oposición: simulacros, mínimos oficiales, notas de corte 2022-2026, marcas físicas y constancia."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('bloques-de-estudio-y-tecnica-pomodoro-para-opositores', 'articulo', 'Bloques de estudio y técnica Pomodoro para opositores', 'Cómo dividir tu día en bloques de estudio, qué es la técnica Pomodoro y qué se puede decir de ella con honestidad. Una estructura sencilla de sesión con práctica de recuperación y descansos, adaptable a tu horario.', 'Sentarse cuatro horas «a estudiar» y levantarse sin saber qué has aprendido es una de las formas más comunes de perder el tiempo. Dividir el día en **bloques con un objetivo concreto** ayuda a que cada hora cuente.

La respuesta corta: **un bloque de estudio es un tramo de tiempo con una tarea definida (qué vas a estudiar y cómo vas a comprobarlo) y un descanso al final**. La técnica Pomodoro es una forma popular de hacerlo, pero no es obligatoria ni mágica.

## Qué es la técnica Pomodoro

La propuso Francesco Cirillo a finales de los años ochenta: trabajar en intervalos cortos, tradicionalmente de 25 minutos, separados por pausas breves, y una pausa más larga cada cuatro intervalos. Es una **convención de organización del tiempo**, no un resultado de laboratorio.

Conviene ser honestos: no conozco evidencia sólida que demuestre que 25 minutos sea la duración ideal para aprender. Lo que sí tiene sentido es lo que hay detrás: **empezar es más fácil si el compromiso es corto**, y los descansos evitan seguir leyendo sin enterarte. Si 25 minutos se te quedan cortos, usa 40 o 50.

## Cómo montar un bloque que funcione

Un esquema sencillo para una sesión de unas dos horas:

| Tramo | Qué haces |
|---|---|
| 0-5 min | Objetivo del bloque: «hoy, artículos 14 a 29 de la Constitución» |
| 5-35 min | Lectura activa o esquema del tema |
| 35-40 min | Pausa corta (levántate, agua, sin móvil) |
| 40-70 min | **Preguntas** sobre lo que acabas de ver, sin mirar los apuntes |
| 70-75 min | Pausa |
| 75-105 min | Repaso de errores y fichas |

La clave es la parte de preguntas: no basta con leer.

## Lo que dice la investigación sobre aprender

Una revisión muy citada de técnicas de estudio, [Dunlosky y colaboradores (2013)](https://doi.org/10.1177/1529100612453266), valoró varias estrategias. Entre las que mejor salieron paradas figuran la **práctica de recuperación** (intentar recordar sin mirar) y el **estudio espaciado** (repartir el repaso en el tiempo en vez de concentrarlo). Subrayar y releer, en cambio, salían peor valoradas. No cito cifras porque dependen del contexto del estudio, y recomiendo leer la fuente.

Para aplicar el espaciado a leyes, te servirá [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).

## Cuántos bloques al día

Depende de tu vida. Si trabajas, mira [cómo organizar un plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando) y [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil). Un criterio práctico es **contar bloques completos, no horas sentado**: tres bloques de calidad valen más que cuatro horas con el móvil al lado.

## Errores frecuentes

- **Bloques sin objetivo.** «Estudiar el tema 5» es vago; «resumir el tema 5 y hacer 15 preguntas» es medible.
- **Descansos que se alargan.** Si la pausa es de redes sociales, cuesta volver. Mejor caminar o estirar.
- **Interrumpirte por cada notificación.** Pon el teléfono en otra habitación.
- **No planificar el repaso.** Cada semana, dedica un bloque a revisar lo anterior.

## Una semana tipo, adaptable

- Lunes a viernes: 2 o 3 bloques (uno de temario nuevo, uno de test, uno de repaso).
- Sábado: un bloque largo con simulacro y su corrección.
- Domingo: descanso o un bloque ligero.

Si compaginas con entrenamiento, mira [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil). Y si quieres que alguien te estructure los bloques, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye planificación.

## Preguntas frecuentes

### ¿Son obligatorios los 25 minutos del Pomodoro?
No. Es la propuesta original, pero puedes ajustar los tiempos a tu concentración.

### ¿Hay estudios que prueben que el Pomodoro funciona?
No he verificado evidencia concluyente específica sobre esta técnica. Sí hay respaldo para la práctica de recuperación y el espaciado, que puedes combinar con los bloques.

### ¿Qué hago si no consigo concentrarme ni 25 minutos?
Empieza con bloques más cortos y ve subiendo. Si es un problema persistente que te preocupa, consúltalo con un profesional.

### ¿Estudio mejor por la mañana o por la tarde?
Depende de cada persona. Coloca el trabajo más exigente en tu franja de más energía.',
   NULL, NULL, 'publicado', '2027-02-12T06:26:00.000Z', 'acceso-guardia-civil',
   ARRAY['técnica de estudio', 'pomodoro', 'organización', 'planificación']::text[], '{"title":"Técnica Pomodoro para opositores: bloques de estudio","description":"Cómo organizar bloques de estudio con la técnica Pomodoro en la oposición a Guardia Civil: estructura de sesión, descansos y qué evidencia hay detrás."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

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
  ('casas-cuartel-como-es-vivir-en-un-pabellon-de-la-guardia-civil', 'articulo', 'Casas cuartel y pabellones de la Guardia Civil: qué son y cómo funcionan', 'Vivir en una casa cuartel no es obligatorio ni automático. Qué dice el Real Decreto 274/2018 sobre residencia y pabellones oficiales, qué no está publicado (condiciones, plazos, cuotas) y dónde preguntarlo antes de decidir.', 'Es una de las dudas que más se repite entre quienes se plantean la oposición: «¿tendré que vivir en un cuartel?». La respuesta corta es que **no hay una obligación general de vivir en una casa cuartel**, pero sí unas reglas sobre dónde puedes fijar tu residencia. Y hay mucho que contar que no puedo verificar: no he encontrado una norma pública y vigente con las condiciones de adjudicación, uso o coste de los pabellones. Prefiero decirlo y quedarme con lo comprobado.

## De dónde parte la regla: la residencia oficial

El [Real Decreto 274/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-6895) regula la residencia, los desplazamientos y la localización del personal de la Guardia Civil. Su artículo 3 dice, en lo esencial:

- La **residencia habitual** es, con carácter general, el término municipal donde está tu **residencia oficial**, es decir, donde radica tu destino.
- Puedes fijar tu residencia habitual **en otro municipio**, previa comunicación, siempre que cumplas **todas** estas condiciones: que sea en territorio nacional, que puedas cumplir tus obligaciones profesionales (incluida la disponibilidad permanente para el servicio), que no genere una incompatibilidad manifiesta con tu jornada y que el desplazamiento no pase, en condiciones normales, de **una hora y media**. Algunos mandos pueden fijar un plazo inferior en determinadas unidades.

Es decir: el sistema ya te permite vivir fuera del municipio del destino, dentro de ciertos límites. No te obliga a pasar por una casa cuartel.

## Qué dice de los pabellones oficiales

La única referencia directa que he podido contrastar en el BOE está en el artículo 3.3: **cuando se acepte la adjudicación de un pabellón oficial, la residencia habitual se fija en ese pabellón**, con independencia del municipio en que esté.

Dos ideas que se leen de ahí, sin añadir nada:

1. **Se «acepta»**: la norma habla de aceptar una adjudicación, no de una asignación forzosa.
2. **Aceptarlo implica residir allí**: tu residencia habitual queda fijada en el pabellón.

## Qué NO he podido verificar

Esto es lo que suele contar la gente y que, sin una fuente oficial, no voy a dar por bueno:

- Quién tiene prioridad para que le adjudiquen un pabellón.
- Si se paga alquiler o cuota y cuánto.
- Cómo son las viviendas, su estado o su tamaño, que varía mucho de un acuartelamiento a otro.
- Las normas internas de convivencia y de servicio en el cuartel.
- Cuánto tiempo puedes permanecer en él.

Si estas condiciones te influyen para decidir, pregunta en la **unidad de destino** cuando lo tengas o a través de los canales oficiales de la Guardia Civil. No las doy aquí porque cambian y no están en la normativa que he revisado.

## No lo confundas con las residencias

La Guardia Civil tiene también **residencias**, alojamientos temporales con precios públicos. Las regula otra norma: la [Orden INT/126/2021](https://www.boe.es/buscar/doc.php?id=BOE-A-2021-2289), que establece su clasificación, usuarios y precios. Son una figura distinta de un pabellón.

Y en Baeza ocurre algo diferente: durante la formación, los alumnos están en [régimen de internado](/blog/un-dia-en-la-academia-de-baeza-horarios-normas-y-permisos), con el alojamiento a cargo del Estado. No es una casa cuartel.

## Qué te conviene saber ya

- El destino con el que sales de Baeza se asigna según las vacantes que se oferten: [lo vemos aquí](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil). El lugar donde vivirás es posterior a eso.
- Si tienes pareja guardia civil e hijos, el Reglamento de destinos prevé un derecho preferente de agrupamiento familiar, que se explica en ese mismo artículo.
- La disponibilidad para el servicio es una de las obligaciones del cuerpo, y por eso la norma habla de desplazamientos razonables. Puedes repasar el marco en [derechos y deberes](/blog/derechos-deberes-y-regimen-disciplinario-del-guardia-civil).

Si estás empezando la oposición, no es lo que decide si te presentas. Antes está el temario, y en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) vamos paso a paso.

## Preguntas frecuentes

### ¿Es obligatorio vivir en una casa cuartel?
No hay una obligación general en la normativa que he revisado. Si aceptas la adjudicación de un pabellón oficial, tu residencia habitual pasa a ser ese pabellón.

### ¿Puedo vivir en otro pueblo distinto al de mi destino?
Sí, con comunicación previa y cumpliendo todas las condiciones del artículo 3.2 del Real Decreto 274/2018, incluido un desplazamiento máximo de hora y media en condiciones normales.

### ¿Cuánto se paga por un pabellón?
No he encontrado una fuente oficial pública con esa información, así que no doy cifras. Consúltalo en tu unidad.

### ¿Los alumnos de Baeza viven en casas cuartel?
No: los alumnos están, con carácter general, en régimen de internado en el centro docente.',
   NULL, NULL, 'publicado', '2027-01-23T06:46:00.000Z', 'acceso-guardia-civil',
   ARRAY['casas cuartel', 'pabellones', 'residencia', 'destinos']::text[], '{"title":"Casas cuartel de la Guardia Civil: qué dice la norma","description":"Casas cuartel y pabellones de la Guardia Civil: qué regula el Real Decreto 274/2018 sobre residencia, qué no está publicado y dónde consultar tu caso."}'::jsonb, '{}'::jsonb)
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
  ('certificados-de-idiomas-para-la-guardia-civil-cual-sacarte', 'articulo', '"Certificados de idiomas para la Guardia Civil: cuál sacarte y cuánto suma"', 'El baremo de la convocatoria de 2026 puntúa certificados de idiomas con 5, 7 o 9 puntos según el nivel. Qué títulos de inglés se admiten, qué condiciones exige el apéndice I y por qué no se suman dos del mismo idioma.', '**Respuesta corta:** según el apéndice I de la convocatoria de 2026, un certificado de nivel B2 suma **5 puntos**, uno de C1 suma **7** y uno de C2 suma **9**. Por cada idioma solo cuenta uno: el de mayor puntuación. Todo esto cambia entre convocatorias, así que comprueba el baremo de la que se publique.

Las cifras de este artículo salen del apéndice I de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). Para ver cómo encaja en el conjunto de la fase de concurso, mira [los 45 puntos de méritos](/blog/fase-concurso-guardia-civil-meritos).

## Las reglas generales

- Los idiomas están dentro de los **méritos académicos**, que tienen un tope de **27 puntos** en total.
- **Por cada idioma** solo se contabiliza una acreditación (SLP, título o certificado oficial): la de mayor puntuación. Un B2 y un C1 de inglés no suman entre sí.
- Los méritos deben haberse **alegado en la inscripción telemática** y **poseerse en el plazo de presentación de solicitudes**.
- Se justifican con la documentación que el Tribunal de Selección indique.
- Los idiomas de interés son: alemán, árabe, francés, inglés, italiano, portugués y ruso. Como el límite es por idioma, certificados en idiomas distintos pueden sumar, siempre dentro del tope académico.

## Certificados de inglés que puntúan

### Escuela Oficial de Idiomas
Certificado oficial de idiomas según el artículo 7.9 del Real Decreto 1041/2017:

| Nivel | Puntos |
| --- | --- |
| Avanzado C2 | 9 |
| Avanzado C1 | 7 |
| Intermedio B2 | 5 |

### Certificados no nacionales (otras entidades)
Se aceptan los títulos y entidades incluidos explícitamente en el apéndice, siempre que **todas las pruebas sean 100 % presenciales**:

| Entidad | 9 puntos | 7 puntos | 5 puntos |
| --- | --- | --- | --- |
| Trinity (ISE) | ISE IV (C2), aprobado | ISE III (C1), aprobado | ISE II (B2), aprobado |
| Cambridge | CPE (C2), grado A, B o C | CAE (C1), grado A, B o C | FCE (B2), grado A, B o C |
| IELTS (Academic o General Training) | 8 o más en cada rasgo | de 7 a menos de 8 en cada rasgo | de 5,5 a menos de 7 en cada rasgo |
| CertAcles (ACLES) | C2 | C1 | B2 |

CertAcles exige expresamente pruebas presenciales. En IELTS, la puntuación se mide en **cada uno de los rasgos de la nota final**, no en la media.

### Otras vías
- **Perfil lingüístico SLP del STANAG 6001**: 4.4.4.4 o superior, 9 puntos; 3.3.3.3, 7 puntos; 2.2.2.2, 5 puntos. Solo lo pueden invocar quienes pertenezcan o hayan pertenecido a las Fuerzas Armadas, y debe estar en vigor.
- **Licenciatura o Grado en Filología** (o equivalente) en un idioma de interés: 9 puntos. También **Traducción e Interpretación** en el idioma B. En estos casos, la titulación no puede baremarse además en el apartado de nivel académico (2.1).

Lo que no aparece en el apéndice no puntúa. En el texto de la convocatoria no figuran otros exámenes de inglés distintos de los listados; si tienes un certificado que no está en la tabla, consulta la convocatoria vigente.

## ¿Cuál sacarte?

La decisión depende de tu nivel real y de cuánto tiempo tienes:

- Si ya tienes un título, **localízalo y alégalo**: es puntuación que no cuesta más trabajo.
- **B2 son 5 puntos; C1, 7.** Pasar de uno a otro suma 2 puntos, y a C2, 4 más, pero cada salto exige mucho más nivel.
- Comprueba que el certificado esté **dentro de la lista y que sea presencial**.
- Mira las fechas de convocatoria del examen que elijas: debes tenerlo antes de que acabe el plazo de solicitudes.
- No sustituye al examen: aprobar la prueba de inglés de la oposición sigue siendo obligatorio, con [mínimo de 8 sobre 20](/blog/ingles-como-llegar-a-los-8-puntos-minimos-sin-ser-bilingue).

Piensa también en el tope: los méritos académicos suman como máximo 27 puntos, y dentro de ellos el idioma es una partida más, junto al nivel académico. Cuánto pesa en la clasificación final depende de cada convocatoria.

## Preguntas frecuentes

### ¿Puedo sumar un B2 de inglés y un C1 de inglés?
No. Por cada idioma solo cuenta una acreditación, la de mayor puntuación.

### ¿Valen los exámenes online?
Para los certificados no nacionales, el apéndice exige que todas las pruebas sean 100 % presenciales. CertAcles también debe ser presencial.

### ¿Y si me saco el título después de enviar la solicitud?
El apéndice exige poseer el mérito dentro del plazo de presentación de solicitudes, y haberlo alegado en la inscripción telemática.

### ¿Cuántos puntos máximos puedo sacar por idiomas?
El apéndice da hasta 9 por idioma, con el tope de 27 de los méritos académicos en su conjunto. Si preparas la oposición con [el curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil), recuerda revisar el baremo de cada convocatoria.',
   NULL, NULL, 'publicado', '2027-01-18T06:21:00.000Z', 'acceso-guardia-civil',
   ARRAY['idiomas', 'certificados', 'fase de concurso', 'baremo']::text[], '{"title":"Certificados de idiomas Guardia Civil: puntos que suman","description":"Qué certificados de idiomas puntúan en la fase de concurso de la Guardia Civil 2026: EOI, Cambridge, IELTS, Trinity y CertAcles, con 5, 7 o 9 puntos."}'::jsonb, '{}'::jsonb)
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
  ('colegio-de-guardias-jovenes-requisitos-de-edad', 'articulo', 'Colegio de Guardias Jóvenes: requisitos de edad y cómo prepararlo', 'La oferta de plazas del curso 2026/2027 pedía haber nacido entre el 1 de enero de 2003 y el 31 de mayo de 2008 y, además, ser huérfano o hijo de personal de la Guardia Civil. Requisitos, plazo y cómo preparar el acceso.', '**Respuesta corta:** en la oferta de plazas del curso 2026/2027, el requisito de edad era **haber nacido entre el 1 de enero de 2003 y el 31 de mayo de 2008, ambas fechas incluidas**. Pero hay otro requisito que decide más que la edad y que no se ve en muchas guías: ser **persona huérfana o hijo del personal del Cuerpo** socio de la Asociación Pro-Huérfanos de la Guardia Civil. Antes de preparar nada, comprueba los dos.

Esto procede de la oferta de plazas publicada en el **Boletín Oficial de la Guardia Civil (BOGC) núm. 41, de 19 de mayo de 2026**. No sale en el BOE: la oferta del Colegio la publica la propia Guardia Civil. Los requisitos pueden cambiar en cada oferta, así que lo siguiente es lo que dijo la de 2026/2027. Para entender qué es el Colegio y cómo se relaciona con el acceso ordinario, empieza por [qué es el Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil).

## Los requisitos, según la oferta 2026/2027

Se debían cumplir al terminar el plazo de solicitudes y mantenerse durante el proceso y la formación (base 2.1). Los principales:

- **Nacionalidad española** y no estar privado de derechos civiles.
- **Ser persona huérfana o hijo del personal del Cuerpo** socio de la Asociación Pro-Huérfanos, en cualquier situación administrativa o retirado.
- **Haber nacido entre el 1 de enero de 2003 y el 31 de mayo de 2008.**
- **Estudios:** cumplir alguno de los requisitos de acceso a un ciclo de grado medio de FP, por ejemplo el título de Graduado en ESO o superior, el de Técnico Básico o el de Técnico.
- **Carecer de antecedentes penales**, no estar procesado por delito doloso, no haber sido separado de ninguna Administración Pública ni estar inhabilitado.
- **No haber sido antes alumno del Colegio.**
- **Aptitud psicofísica** (reconocimiento médico) y las condiciones sobre tatuajes que recoge la propia oferta.
- **Permiso de conducción B en vigor**, como máximo hasta el día de las pruebas físicas.

La edad cuenta con fechas concretas de nacimiento, no con «años cumplidos en el año». Si la fecha de un candidato queda un día fuera, queda fuera. La edad del acceso ordinario a la Guardia Civil es otra cosa: la explicamos en [edad máxima y cómo se cuenta](/blog/edad-maxima-guardia-civil).

## Cómo se pide: plazo y documentos

- **Plazo:** 10 días hábiles desde el día siguiente a la publicación en el BOGC. Es corto.
- **Medio:** solicitud electrónica en la sede electrónica de la Guardia Civil, con Cl@ve o certificado, y declaración jurada de cumplir los requisitos.
- **Documentos,** cuando se llega a la primera prueba física: título o certificación académica, DNI, permiso de conducción, el **certificado de la unidad del progenitor** que acredita la condición de huérfano o hijo del personal del Cuerpo, y el justificante de estar al corriente de los pagos a la Asociación Pro-Huérfanos (no lo aportan los hijos de personal en activo, reserva o retirado por edad).

## Qué cuesta cursarlo

La oferta fija una **matrícula única de 600 euros** y **cuotas mensuales de 410 euros** por gastos de manutención, plataformas, profesorado y otros conceptos. El curso se desarrolla preferentemente de forma presencial y en régimen de **internado**, y en la oferta 2026/2027 terminaba en junio de 2027. Las cuantías pueden cambiar en cada oferta: comprueba la vigente.

## Cómo prepararlo

El proceso (lo desarrollamos en el siguiente artículo, sobre el examen del Colegio) tiene cuatro bloques: lengua española, conocimientos de diez temas, inglés y psicotécnico, más las pruebas físicas y el reconocimiento médico. Un plan razonable:

1. **Primero, los requisitos.** Si no cumples la fecha de nacimiento o el vínculo con el Cuerpo, no sigas.
2. **Conocimientos:** son 80 preguntas de test con penalización. Trabaja un tema cada vez y haz tests desde el principio.
3. **Lengua e inglés:** ortografía y gramática se entrenan en sesiones cortas y constantes; con 11 errores o más en esa parte te eliminan.
4. **Físicas:** las marcas mínimas de la oferta eran, para chicos y chicas respectivamente, circuito de coordinación 15 y 18 segundos, 2.000 metros en 10 y 12 minutos, 14 y 10 extensiones de brazos y 50 metros de natación en 77 y 89 segundos. Hace falta además un certificado médico emitido en los 20 días previos. Para entrenarlas, mira [las pruebas físicas y sus marcas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).
5. **Comprueba cada año** si hay oferta: la de este curso no garantiza la siguiente.

Entrar en el Colegio no garantiza ser Guardia Civil: después hay que superar el proceso de ingreso, con las plazas reservadas a su alumnado. Para preparar el acceso con ayuda, tienes el [curso de acceso al Colegio de Guardias Jóvenes](/cursos/colegio-guardias-jovenes).

## Preguntas frecuentes

### ¿Qué edad hay que tener para entrar al Colegio de Guardias Jóvenes?

En la oferta 2026/2027, haber nacido entre el 1 de enero de 2003 y el 31 de mayo de 2008. La oferta no habla de años cumplidos, sino de esas fechas de nacimiento.

### ¿Puede presentarse cualquier joven que cumpla la edad?

Según esa oferta, no: también había que ser huérfano o hijo del personal de la Guardia Civil. Es el requisito que hay que mirar primero.

### ¿Hay oferta de plazas para el próximo curso?

No lo sabemos: cada año se publica una oferta con sus requisitos. Para el curso 2027/2028 no tenemos texto oficial en el momento de escribir esto.

### ¿Cuántas plazas había?

300 plazas para el curso 2026/2027, según la base 1 de la oferta.',
   NULL, NULL, 'publicado', '2027-02-08T06:18:00.000Z', 'colegio-guardias-jovenes',
   ARRAY['Colegio de Guardias Jóvenes', 'requisitos', 'edad', 'Valdemoro', 'preparación']::text[], '{"title":"Colegio de Guardias Jóvenes: requisitos de edad","description":"Requisitos del Colegio de Guardias Jóvenes en la oferta 2026/2027: nacidos entre 2003 y 2008, ser huérfano o hijo de la Guardia Civil, plazo y coste."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-aprobar-el-ingles-de-la-guardia-civil-partiendo-de-cero', 'articulo', '"Cómo aprobar el inglés de la Guardia Civil partiendo de cero"', 'Si tu inglés es casi inexistente, la prueba de 20 preguntas de nivel ESO sigue siendo alcanzable con constancia y un orden de trabajo claro. Un plan por fases, qué priorizar y cómo medir tu avance sin promesas milagrosas.', '**Respuesta corta:** sí se puede llegar desde cero, porque la prueba pide un nivel compatible con la ESO y un mínimo de 8 puntos sobre 20. Pero requiere constancia: el idioma se aprende con frecuencia, no con atracones, y conviene empezar cuanto antes. Nadie puede prometerte cuánto tardarás; depende de tu punto de partida y del tiempo que le dediques.

## Qué hay que conseguir exactamente

Según la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982):

- 20 preguntas tipo test, más una de reserva que solo se valora si el Tribunal anula alguna.
- Cuatro opciones por pregunta; una sola válida.
- Nivel compatible con la ESO (Real Decreto 217/2022).
- Cada error penaliza (un tercio de acierto); en blanco no resta.
- Mínimo de **8 puntos sobre 20** para no quedar excluido.

Es decir: no se te pide hablar ni escribir, solo reconocer la opción correcta en frases y textos cortos.

## Fase 0: mide dónde estás

Antes de estudiar nada, haz una prueba de nivel con **20 preguntas de cuatro opciones** y corrígela. Sirve el [test del curso](/cursos/acceso-guardia-civil) o cualquier cuestionario de nivel básico. No importa que salga mal: es tu punto de partida y te dice si necesitas empezar por la base o ir a práctica.

## Fase 1: la base (el verbo y las frases simples)

Aquí está el mayor rendimiento si partes de cero:

1. **Verbos *to be* y *to have***, presente simple y sus formas negativas e interrogativas.
2. **Pasado simple**, regulares e irregulares comunes.
3. **Vocabulario cotidiano**: familia, casa, trabajo, comida, tiempo, transporte.
4. **Pronombres, posesivos y artículos**.

No avances de fase hasta que aciertes con holgura los ejercicios de la actual.

## Fase 2: estructuras que cuestan

Cuando la base aguante, añade lo que se confunde más:

- *Present perfect* y su diferencia con el pasado simple.
- *Will* y *going to*.
- Comparativos y superlativos, cuantificadores (*much/many*, *few/a few*).
- Condicionales de primer y segundo tipo.

Tienes un repaso con ejemplos en [los tiempos verbales](/blog/gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales) y otro de [vocabulario y phrasal verbs](/blog/vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles). Ambos usan ejemplos propios, no preguntas oficiales.

## Fase 3: formato de examen

El idioma te lo juegas en 20 preguntas contestadas al final de una jornada larga, tal y como explicamos en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil). Desde esta fase:

- Trabaja con **tests de cuatro opciones** y cronómetro.
- Haz los simulacros completos con el inglés **al final**, para acostumbrarte a responder cansado.
- Lleva un cuaderno con tus fallos y relee cada semana los de las últimas cuatro.

## Cómo encajarlo en tu semana

El inglés es la parte que menos tolera los atracones. Una rutina que cabe en casi cualquier agenda:

| Momento | Tarea | Tiempo orientativo |
| --- | --- | --- |
| Diario | Tests cortos con corrección inmediata | 10 minutos |
| Diario | Vocabulario con repaso espaciado | 5 minutos |
| 2-3 veces por semana | Lectura o escucha sencilla que te guste | 10 minutos |
| Semanal | Repaso del cuaderno de fallos | 15 minutos |

Los tiempos son una propuesta, no una cifra oficial. Si trabajas, el [plan de estudio compatible con un empleo](/blog/plan-estudio-guardia-civil-trabajando) te ayuda a colocarlo.

## Errores típicos al empezar desde cero

- **Aprender reglas sin practicar tests.** El examen no pide explicar la gramática, sino elegir una opción.
- **Saltar de nivel demasiado pronto**, sin tener asentada la base.
- **Dejarlo para el final.** Es la parte que peor responde a las prisas.
- **Dar por perdido el inglés y confiar solo en el temario.** Quedar por debajo de 8 excluye aunque el resto vaya bien.

## Preguntas frecuentes

### ¿Es realista aprobar partiendo de cero?
El nivel exigido es el de la ESO, y el mínimo es 8 sobre 20. Con práctica regular es un objetivo razonable, aunque no se puede garantizar el resultado.

### ¿Cuánto tiempo necesito?
No hay una cifra válida para todos. Haz la prueba de nivel y ajusta: cuanta más distancia al nivel ESO, antes debes empezar.

### ¿Necesito un certificado de idiomas?
Para aprobar la prueba, no. Un certificado sirve para sumar puntos en la fase de concurso, como veremos en otro artículo.

### ¿Qué hago si fallo muchas preguntas de gramática?
Vuelve a la fase 1 o 2 con ejercicios cortos de esa estructura y repite un test de 20 preguntas pasada una semana.',
   NULL, NULL, 'publicado', '2027-01-15T06:30:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'desde cero', 'plan de estudio', 'examen']::text[], '{"title":"Aprobar el inglés de la Guardia Civil desde cero","description":"Plan por fases para aprobar el inglés de la oposición a Guardia Civil partiendo de cero: qué priorizar, cómo practicar con tests y cómo medir tu avance."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-estudiar-la-oposicion-en-navidad-sin-perder-el-ritmo', 'articulo', 'Cómo estudiar la oposición en Navidad sin perder el ritmo', 'Las fiestas rompen horarios, llenan la agenda y tientan a dejarlo todo hasta enero. Un método sencillo para mantener el hábito de estudio sin renunciar a las cenas, sin agotarte y sin que el temario se enfríe.', 'La respuesta corta: **en Navidad no hace falta estudiar como en octubre, pero sí hace falta estudiar**. Lo que más pesa en estas fechas no es la cantidad de horas, sino que el hábito no se rompa. Retomar después de dos semanas en blanco cuesta bastante más que mantener un ritmo pequeño.

No hay datos oficiales que midan cuánto se pierde por parar; lo que sigue es organización razonable, no una cifra mágica.

## Por qué las fiestas son un riesgo para el hábito

- **Se rompen las rutinas**: horarios de comidas, viajes, visitas y cenas que antes no existían.
- **Desaparece la señal de «hoy toca estudiar»**: sin horario fijo, el estudio pasa a depender de la fuerza de voluntad.
- **Aparece la culpa**: quien estudia, siente que se pierde las fiestas; quien no estudia, siente que se pierde la oposición.

La solución no es endurecerse, sino **decidir de antemano** qué vas a hacer y qué no.

## Paso 1: fija un mínimo innegociable

Define un mínimo tan pequeño que puedas cumplirlo incluso el peor día. Por ejemplo, **una sola sesión corta al día**, a la hora en que menos te molesten. El mínimo es lo que protege el hábito; lo que añadas por encima es un extra.

Ejemplos de mínimo válido (son ideas propias, ajústalas a tu caso):

- Un bloque de lectura activa de un tema.
- Una tanda de preguntas test sobre lo estudiado esta semana.
- Un repaso de tus esquemas o tarjetas.

## Paso 2: reparte los días en tres tipos

| Tipo de día | Qué haces | Cuándo |
|---|---|---|
| **Día normal** | Tu mínimo más una sesión de estudio nuevo | Mañanas tranquilas, tardes sin compromisos |
| **Día de fiesta** (24, 25, 31, 1, 6) | Solo el mínimo, a primera hora | Antes de que empiece el día |
| **Día de viaje** | Repaso ligero o test en el móvil | Trayectos y esperas |

Marca en un calendario cuáles son de cada tipo **antes** de que empiecen las fiestas. Si lo decides cada mañana, ganará siempre el sofá.

## Paso 3: dedica estas semanas a consolidar

Estas fechas son buenas para **repasar y fijar** más que para abrir temas nuevos y densos:

1. **Repasa lo que ya has visto.** Sin repaso, lo estudiado se olvida; es una de las razones por las que conviene espaciarlo.
2. **Practica con test.** Responder preguntas obliga a recuperar lo que sabes y te muestra los huecos. Los de este blog son propios, no oficiales.
3. **Haz esquemas.** Un buen cuadro de una ley te sirve durante meses. Si necesitas ideas de organización, tienes el artículo sobre [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero).
4. **Deja para enero lo más pesado**, si es posible, y avanza ahora en temas más ligeros.

En el [programa oficial de 23 temas](/temario-guardia-civil) encontrarás qué normas entran en cada uno, para decidir qué repasar.

## Si trabajas o tienes otras obligaciones

Para algunas personas la Navidad significa más trabajo, no menos. Si es tu caso, dos recursos del blog te vendrán bien: el [plan de estudio compatible con el trabajo](/blog/plan-estudio-guardia-civil-trabajando) y el artículo sobre [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil). Y no te olvides de que las pruebas físicas también necesitan constancia: no abandones del todo el entrenamiento.

## Errores típicos en estas fechas

- **Proponerte el doble «para compensar»** y abandonar al tercer día.
- **No decir nada en casa.** Avisa de tus bloques de estudio: es más fácil que los respeten si los conocen.
- **Estudiar de madrugada tras las cenas.** Dormir mal empeora todo lo demás.
- **Dejar el móvil al lado.** Silenciarlo durante tu bloque es tan importante como el propio bloque. Si quieres más, mira los [errores más comunes al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil).

## Cómo cerrar las fiestas

Al acabar, revisa qué has cumplido y qué no, sin dramatizar, y vuelve a tu horario normal. Comprueba también las fechas de la convocatoria en vigor: no las deduzcas de memoria. Si todavía no tienes un método, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) organiza el temario por semanas.

## Preguntas frecuentes

### ¿Puedo tomarme unos días completos de descanso?

Sí, y descansar bien también forma parte del plan. Lo importante es que sea una decisión consciente, con fecha de regreso, y no un abandono que se alarga. Si te preocupa perder el hilo, conserva al menos un repaso breve el día anterior a retomar.

### ¿Es mejor estudiar temas nuevos o repasar?

Depende de dónde estés, pero en fechas de poca disponibilidad suele compensar repasar y practicar con test lo ya visto, y reservar los temas nuevos y largos para cuando recuperes tus horarios.

### ¿Cuántas horas debo estudiar en Navidad?

No hay una cifra oficial ni universal. Fija un mínimo que puedas cumplir todos los días y trata el resto como extra. Lo valioso es la regularidad, no el número.

### ¿Y si me salto un día?

Ocurre. No lo compenses con el doble al día siguiente: retoma tu mínimo y sigue. Un día perdido pesa mucho menos que renunciar a todo por haberlo perdido.',
   NULL, NULL, 'publicado', '2026-12-23T06:59:00.000Z', 'acceso-guardia-civil',
   ARRAY['organización', 'navidad', 'planificación', 'constancia']::text[], '{"title":"Estudiar la oposición en Navidad: plan realista","description":"Cómo estudiar la oposición de Guardia Civil en Navidad: mínimos diarios, repaso, horarios flexibles y descanso para llegar a enero sin perder el ritmo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas', 'articulo', 'Cómo leer un enunciado tipo test para reducir los errores de lectura', 'Muchos fallos del test no son de temario, sino de lectura: un «excepto» pasado por alto, una doble negación o una opción más completa que otra. Un método de lectura en cuatro pasos y ejemplos propios para practicarlo.', 'Hay preguntas que fallas aunque sepas la respuesta. Lees deprisa, marcas la primera opción que suena bien y, al corregir, ves que el enunciado pedía **lo contrario**. Ese tipo de error es el más barato de corregir, porque no depende de cuánto temario sabes, sino de cómo lees.

La respuesta corta: **lee el enunciado entero antes de mirar las opciones, localiza qué se pide exactamente (lo correcto, lo incorrecto, lo más completo) y desconfía de las palabras absolutas**. Y recuerda que en esta oposición cada error resta.

## Por qué importa leer bien: el error cuesta

La prueba de conocimientos tiene 100 preguntas con 4 opciones, y según las bases de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982) las contestadas incorrectamente penalizan y las no contestadas no. En [calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil) tienes la fórmula: cada error resta un tercio de acierto. Un fallo de lectura no solo no suma, sino que te quita puntos.

## Método de lectura en cuatro pasos

1. **Lee el enunciado completo, sin mirar las opciones.** Intenta responder mentalmente.
2. **Subraya mentalmente la orden.** ¿Pide la opción correcta, la incorrecta, la que *no* se cumple, la «más completa»?
3. **Marca los términos clave**: números, plazos, órganos, «siempre», «solo», «al menos».
4. **Lee las cuatro opciones hasta el final** antes de elegir, aunque la primera te parezca buena.

## Trampa 1: el «excepto», el «no» y las dobles negaciones

Un enunciado como «Señala la opción **incorrecta**» invierte todo. Si lo pasas por alto, acabarás marcando la que sí es verdadera.

Las dobles negaciones son peores: «No es cierto que la afirmación X no sea aplicable». Una técnica útil es **traducirlas a una frase afirmativa** antes de mirar las opciones: negar dos veces equivale a afirmar. Si te pierdes, reescribe la frase con tus palabras.

## Trampa 2: los absolutos

Palabras como *siempre, nunca, todos, ninguno, únicamente, exclusivamente* hacen una afirmación más fácil de refutar: basta un solo caso en contra.

Un ejemplo **propio, no es una pregunta oficial**:

> Los derechos fundamentales nunca pueden limitarse en ninguna circunstancia.

Es falsa, porque la Constitución prevé supuestos de suspensión de ciertos derechos en situaciones excepcionales. Pero cuidado: **un absoluto no es siempre falso**. «La soberanía nacional reside en el pueblo español» (art. 1.2 CE) no lleva absoluto, pero otras afirmaciones con «solo» o «únicamente» pueden ser verdaderas. La palabra absoluta es una **señal para releer con atención**, no una regla para descartar.

## Trampa 3: «la más completa»

La convocatoria dice, en la base 6.1.1.c, que cada pregunta tiene una única respuesta válida y que, si el aspirante considera correctas varias opciones, **debe señalar la más completa**. Es la misma instrucción que aparece para inglés y para el psicotécnico.

Ejemplo **propio, no oficial**:

> Según el artículo 1.1 de la Constitución, son valores superiores del ordenamiento jurídico:
> a) La libertad y la justicia.
> b) La libertad, la justicia y la igualdad.
> c) La libertad, la justicia, la igualdad y el pluralismo político.
> d) La justicia, la igualdad y la solidaridad.

Las tres primeras contienen valores que sí aparecen en el artículo, pero solo la c) los recoge todos. Por eso, cuando varias opciones te parezcan correctas, **no te quedes con la primera: compara cuál incluye a las demás**.

## Trampa 4: números y listas casi iguales

Plazos, mayorías o cifras que cambian en una unidad entre opciones. Aquí no hay truco de lectura: hay que saberse el dato. Pero sí ayuda **comparar las opciones entre sí** para ver qué es exactamente lo que cambia.

## Qué hacer cuando dudas: la matemática del tercio

Con 4 opciones y una penalización de un tercio, responder a ciegas tiene un valor esperado de cero: un cuarto de probabilidad de sumar 1 y tres cuartos de restar un tercio. Si logras **descartar al menos una opción**, el valor esperado pasa a ser positivo. Es aritmética, no una garantía: decide con tu propio criterio de riesgo y ajusta con tus [simulacros](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Cómo entrenarlo

- Al corregir un simulacro, clasifica cada fallo: **«no lo sabía»** o **«lo sabía y leí mal»**. Solo el segundo se arregla con técnica de lectura.
- Reescribe con tus palabras los enunciados que te hicieron fallar.
- Repasa [las preguntas trampa más habituales](/blog/preguntas-trampa-del-examen-de-guardia-civil) y la [estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

Si quieres practicar con tests corregidos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye simulacros.

## Preguntas frecuentes

### ¿Debo descartar siempre las opciones con «siempre» o «nunca»?
No. Son una señal para desconfiar y comprobar, no una regla. Hay afirmaciones absolutas verdaderas.

### ¿Qué hago si dos opciones parecen correctas?
La convocatoria indica que debes señalar la más completa. Compara cuál engloba a la otra.

### ¿Contestar en blanco resta?
Según la convocatoria de 2026, no: solo penalizan las preguntas contestadas incorrectamente.

### ¿Los ejemplos de este artículo son preguntas oficiales?
No. Son ejemplos propios, creados para practicar la lectura. Consulta siempre la convocatoria vigente.',
   NULL, NULL, 'publicado', '2027-02-11T06:09:00.000Z', 'acceso-guardia-civil',
   ARRAY['test', 'técnica de examen', 'lectura', 'penalización']::text[], '{"title":"Cómo leer un enunciado tipo test: método en 4 pasos","description":"Cómo leer los enunciados del test de Guardia Civil: absolutos, dobles negaciones, «excepto» y la opción más completa que indica la convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-memorizar-leyes-repaso-espaciado-aplicado-al-temario', 'articulo', 'Cómo memorizar leyes: repaso espaciado aplicado al temario', 'Releer subrayando es lo menos eficaz. Qué dice la investigación sobre la curva del olvido, la práctica de recuperación y el repaso espaciado, y cómo montar un calendario de repasos para tus 23 temas.', '**Respuesta corta:** para retener mucho temario durante meses, lo que mejor funciona según la investigación es **recuperar lo aprendido sin mirar** (tests, preguntas, esquemas de memoria) y **repartir los repasos en el tiempo** en vez de acumularlos. Releer y subrayar, que es lo que casi todos hacemos, rinde menos.

## La curva del olvido

En 1885, Hermann Ebbinghaus describió que olvidamos rápido al principio y cada vez más despacio con el tiempo. Hoy se discute cuánto olvida cada persona y en qué condiciones, pero la idea central se mantiene: **sin repasar, la memoria se desvanece, y cada repaso ayuda a que dure más**. No hay una cifra universal que valga para todos, y por eso evitamos dar porcentajes.

## Práctica de recuperación

Intentar recordar algo sin mirar fortalece la memoria más que volver a leerlo. Es el llamado *efecto del test*, estudiado por Roediger y Karpicke (2006, *Psychological Science*): quienes se autoevaluaban recordaban más a largo plazo que quienes releían, aunque estos últimos se sentían más seguros.

Cómo aplicarlo a las leyes:

- Tapa el artículo y **escribe de memoria** lo que dice.
- Convierte cada epígrafe en una **pregunta** y respóndela en voz alta.
- Haz tests por tema [en el test online](/test-guardia-civil) y corrígelos.
- Usa fichas con la pregunta delante y la respuesta detrás.

## Repaso espaciado

Repasar repartido en el tiempo funciona mejor que hacerlo todo de golpe. La revisión de Cepeda y colaboradores (2006, *Psychological Bulletin*) concluye que el intervalo ideal depende de cuánto tiempo quieres recordar: cuanto más largo el plazo, mayor conviene que sea el espacio entre repasos. Y Dunlosky y colaboradores (2013, *Psychological Science in the Public Interest*) valoraron la práctica espaciada y los tests entre las técnicas más útiles, y el subrayado y la relectura entre las menos.

### Un calendario de ejemplo (propio)

No es una norma científica, es una propuesta práctica que puedes ajustar:

| Repaso | Cuándo |
| --- | --- |
| Primer contacto | Día 0 |
| Repaso 1 | Al día siguiente |
| Repaso 2 | A los 3 días |
| Repaso 3 | A la semana |
| Repaso 4 | A las 2 semanas |
| Repaso 5 | Al mes |

En cada uno, **primero recuerdas, luego compruebas**, y solo vuelves a leer lo que falló.

## Aplicarlo a leyes concretas

- **Plazos y cifras** (las 72 horas máximas de la detención preventiva, por ejemplo): fichas de recuperación, porque su error cuesta puntos. Tienes la Constitución explicada en [este artículo](/blog/constitucion-oposicion-guardia-civil).
- **Listas y estructuras:** haz un esquema en blanco y rellénalo de memoria.
- **Artículos largos:** divide en bloques y recupera cada uno.
- **Conceptos:** explícalos con tus palabras, como si se lo contaras a otra persona.

## Errores frecuentes

- **Repasar todo igual.** Dedica más repasos a lo que fallas.
- **Esperar a «sabérmelo» para hacer tests.** Haz tests desde el primer día: fallar también enseña.
- **Acumular repasos en la víspera.** El sueño ayuda a consolidar, y no es negociable; [más sobre descanso](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).
- **Medir solo horas.** Mide aciertos.

## Cómo encaja con tu plan

Con 23 temas, el calendario crece rápido. Empieza por un cuaderno donde apuntes la fecha de cada repaso, o usa una aplicación de tarjetas con repetición espaciada. Y revisa [los errores típicos al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) organiza temario, test y repasos.

## Preguntas frecuentes

### ¿Cada cuánto debo repasar?
No hay intervalo único. Empieza con repasos cercanos y ve espaciándolos; ajusta con tus fallos.

### ¿Subrayar sirve de algo?
Ayuda a una primera lectura, pero no basta para retener. Complétalo con recuperación.

### ¿Tengo que usar aplicaciones?
No. Un cuaderno y un calendario bastan.

### ¿Esto garantiza aprobar?
No: mejora la retención, pero el resultado depende de muchas cosas.',
   NULL, NULL, 'publicado', '2027-01-04T06:23:00.000Z', 'acceso-guardia-civil',
   ARRAY['memorización', 'repaso espaciado', 'técnicas de estudio', 'temario']::text[], '{"title":"Memorizar leyes: repaso espaciado para oposiciones","description":"Cómo memorizar leyes con repaso espaciado y práctica de recuperación: qué dice la evidencia, un calendario de repasos y errores comunes al estudiar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-rellenar-la-solicitud-de-la-guardia-civil-paso-a-paso', 'articulo', 'Cómo rellenar la solicitud de la Guardia Civil paso a paso', 'La solicitud es solo telemática, tiene un plazo de 15 días hábiles y en ella se declaran los méritos que luego puntúan. Así lo regula la base 3 de la convocatoria de 2026, paso a paso y con los errores que conviene evitar.', '**Respuesta corta:** la solicitud se presenta únicamente por vía electrónica, en la sede electrónica de la Guardia Civil, dentro de un plazo de 15 días hábiles desde el día siguiente a la publicación de la convocatoria en el BOE. No se aporta casi documentación al inscribirte, pero lo que declares en ese momento (méritos incluidos) es lo que después te pueden pedir que acredites.

Todo lo que sigue sale de la base 3 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). La de 2027 puede cambiar detalles, así que comprueba su texto cuando se publique.

## 1. El plazo

**Quince días hábiles**, contados desde el día siguiente al de la publicación en el BOE (base 3.1). Es poco tiempo: conviene tenerlo todo preparado antes de que se publique.

## 2. El medio: solo telemático

La base 3.2 lo dice sin matices: la presentación es **obligatoriamente telemática**, a través de la sede electrónica de la Guardia Civil. Se elige el procedimiento «Solicitud de Ingreso en la Escala de Cabos y Guardias» y, dentro de él, la modalidad que corresponda según el pago de la tasa: sin reducción, con bonificación o con exención. Elegir mal la modalidad es un error fácil, y las cuantías las explicamos en el artículo sobre las tasas de examen.

Para identificarte sirve cualquier método de Cl@ve: DNI electrónico o certificado electrónico en vigor, Cl@ve móvil o Cl@ve permanente. **Prepáralo antes**: si dependes de un certificado caducado, el plazo corre igual.

La misma vía permite hacer la inscripción íntegramente electrónica, pagar la tasa, firmar la solicitud, obtener el justificante de registro y consultar el estado del expediente.

## 3. Los datos que te pedirán

- **Número de la Seguridad Social (NSS/NAF).** La convocatoria lo exige y recuerda que es único para cada persona. Si no lo tienes, se solicita en la Tesorería General de la Seguridad Social, y conviene hacerlo antes de que empiece el plazo.
- **Domicilio.** Sirve para las notificaciones y, además, **para adjudicarte sede de examen** en la fase de oposición (base 3.2.2.a). No lo rellenes a la ligera.
- **Los méritos de la fase de concurso.** Solo puntúan los que alegues en la inscripción telemática y poseas dentro del plazo de presentación de solicitudes. Si no lo declaras, no cuenta. El detalle del baremo, con un máximo de 45 puntos, lo tienes en [la fase de concurso y los méritos](/blog/fase-concurso-guardia-civil-meritos).

Un detalle del baremo: por titulación académica solo se refleja una (la que acredite tu nivel), y por cada idioma solo cuenta una acreditación, la de mayor puntuación.

## 4. La documentación: casi toda, después

Esto sorprende a mucha gente. Al inscribirte no subes títulos ni certificados. La base 3.2.1 dice que los presentarás **cuando lo indique el Tribunal de Selección**:

- Original o copia auténtica del título que acredite el requisito de estudios (base 2.1.9). Si es extranjero, también la credencial de homologación.
- Original o copia auténtica de los documentos que justifiquen **los méritos que consignaste**. Si no los presentas en el momento indicado, **te restan los puntos**, sin perjuicio de la responsabilidad por falsedad.
- Si **no autorizas** la consulta de datos a otras administraciones, o hay fallos técnicos: copia auténtica del DNI y del permiso de conducción B, certificado del Registro Central de Penados y, según el caso, la certificación de servicios en las Fuerzas Armadas, el título de familia numerosa, la certificación de demandante de empleo con declaración de rentas, o la resolución de víctima del terrorismo.

La solicitud lleva implícita la autorización para que la Jefatura de Enseñanza consulte de oficio estos datos (base 2.3), salvo que indiques lo contrario. Por eso es tan importante que lo que declares sea exacto: se comprueba.

Los documentos pueden ser originales o copias, pero **no se admiten los enviados por telefax** u otros sistemas análogos, salvo los emitidos por Administraciones Públicas.

## 5. Después de enviarla

Terminado el plazo, la Jefatura de Enseñanza tiene hasta **sesenta días** para aprobar la lista de admitidos, excluidos y excluidos condicionales, con la nota provisional de la fase de concurso. Tienes **diez días hábiles** para subsanar el motivo de la exclusión o reclamar errores en la puntuación (base 3.4).

## Errores que conviene evitar

- Dejar la solicitud para el último día: si falla el acceso o la pasarela de pago, te quedas sin margen.
- Elegir la modalidad de pago equivocada.
- Declarar méritos que no puedes acreditar después.
- No comprobar que cumples [los requisitos](/blog/requisitos-guardia-civil) en la fecha en que termina el plazo. Deben mantenerse durante todo el proceso.

Si quieres preparar la oposición con un calendario ordenado, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Puedo presentar la solicitud en papel o en una oficina de registro?

Según la base 3.2 de la convocatoria de 2026, no: es obligatoriamente telemática.

### ¿Tengo que adjuntar mi título al inscribirme?

No. La documentación se presenta cuando el Tribunal lo indique. Quien no la presente en ese momento no podrá ser propuesto para ingresar como alumno.

### ¿Con quién resuelvo dudas sobre la inscripción o los méritos?

Con la Jefatura de Enseñanza de la Guardia Civil, que es el único órgano que las resuelve. La convocatoria de 2026 da su teléfono y su correo electrónico en la base 4.10.

### ¿Se puede corregir un error después de enviar la solicitud?

La convocatoria prevé un plazo de subsanación de diez días hábiles tras la lista provisional, sobre todo para defectos que motiven la exclusión y errores en la puntuación del concurso.',
   NULL, NULL, 'publicado', '2027-02-05T06:27:00.000Z', 'acceso-guardia-civil',
   ARRAY['solicitud', 'inscripción', 'sede electrónica', 'convocatoria']::text[], '{"title":"Solicitud Guardia Civil: cómo rellenarla paso a paso","description":"Cómo presentar la solicitud de ingreso en la Guardia Civil: sede electrónica, Cl@ve, plazo de 15 días hábiles, méritos y documentos (convocatoria 2026)."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-saber-si-estas-preparado-para-aprobar-los-indicadores', 'articulo', 'Cómo saber si estás preparado: indicadores medibles frente a la nota de corte', 'Cómo traducir tus simulacros a puntos reales: la fórmula de puntuación, los mínimos eliminatorios y las notas de corte de 2022 a 2026. Indicadores medibles para saber dónde estás, con las cautelas necesarias.', '«¿Estoy preparado?» no se responde con la sensación, sino con **números comparables**. Eso sí, ningún indicador garantiza el resultado: te dice dónde estás, no lo que pasará.

La respuesta corta: **calcula tu nota de simulacro con la fórmula oficial (aciertos menos un tercio de los errores), comprueba que superas los mínimos de cada prueba con margen y compara tu puntuación total con las notas de corte históricas**.

## Indicador 1: la puntuación, calculada como en la convocatoria

Según las bases de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982) (base 7.3), cada error resta un tercio de acierto y las preguntas en blanco no restan:

- **Conocimientos:** 100 preguntas, 4 opciones. Nota = aciertos − errores/3 (sobre 100).
- **Inglés:** 20 preguntas, nota sobre 20 con la misma regla.
- **Psicotécnico:** 80 preguntas, nota sobre 30. La puntuación neta (aciertos − errores/3) se escala: 30 × neta / 80.

Puedes hacer las cuentas en la [calculadora de nota](/calculadora-nota-guardia-civil) y en [calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil).

## Indicador 2: los mínimos eliminatorios

Son pruebas con mínimo (bases 7.6 a 7.8):

| Prueba | Mínimo | Equivale a una puntuación neta de |
|---|---|---|
| Conocimientos | 50 sobre 100 | 50 (aciertos − errores/3) |
| Inglés | 8 sobre 20 | 8 |
| Psicotécnico | 12 sobre 30 | 32 sobre 80 (12 × 80 / 30) |

Y en ortografía y gramática, **6 errores o más** en cada una excluyen. Tu objetivo no es rozar el mínimo: es superarlo **con margen en todas las pruebas a la vez**, porque basta con fallar una.

## Indicador 3: tu nota frente a las notas de corte

La nota de corte es la puntuación final (concurso + oposición, sobre 195) del último aspirante propuesto del cupo libre. Según los datos oficiales:

| Año | Nota de corte |
|---|---|
| 2022 | 110,58 |
| 2023 | 95,75 |
| 2024 | 103,08 |
| 2025 | 95,80 |
| 2026 | 90,61 |

Para comparar, suma tus puntos de oposición (conocimientos + inglés + psicotécnico, máximo 150) y los del concurso (máximo 45). Un ejemplo **ilustrativo, no una referencia**: 68 + 13 + 20 = 101 puntos de oposición, a los que sumarías los méritos que tengas ([fase de concurso](/blog/fase-concurso-guardia-civil-meritos)). Comparado con el histórico, ese total quedaría por encima de algunos años y por debajo de otros. Cómo funciona la cifra, en [nota de corte](/blog/nota-de-corte-guardia-civil).

## Indicador 4: la tendencia, no un solo simulacro

Un simulacro suelto es ruido. Mira lo que hacen **tus últimos cuatro o cinco**:

- ¿La media sube, se estanca o baja?
- ¿Cuánta dispersión hay entre el mejor y el peor?
- ¿Superas los mínimos en todos o solo en algunos?
- ¿Tus errores son de lectura o de temario? Mira [cómo leer un enunciado](/blog/como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas).

Cómo analizarlos en [simulacros](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Cautelas importantes

- **Los simulacros no son el examen.** Su dificultad depende de quién los hace; no los trates como una predicción.
- **La nota de corte no se conoce de antemano** y cambia de un año a otro, como se ve en la tabla. Un margen amplio sobre el histórico da más tranquilidad, pero no garantiza plaza.
- **Hay pruebas posteriores:** físicas, médicas y entrevista. Revisa [las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) y los [requisitos](/blog/requisitos-guardia-civil).
- **Los números no miden tu bienestar.** Si la presión te desborda, habla con un profesional.

## Qué hacer con el resultado

Si estás por debajo, identifica la prueba que más te frena y trabaja ahí. Si estás por encima, mantén el ritmo y no cambies el método a última hora. Si no entraras, lo siguiente es [replantear la convocatoria](/blog/si-suspendes-como-replantear-la-siguiente-convocatoria). Para practicar con simulacros corregidos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye pruebas tipo test.

## Preguntas frecuentes

### ¿Qué nota de simulacro garantiza el aprobado?
Ninguna. La nota de corte cambia cada año y los simulacros no coinciden con el examen real.

### ¿Cómo calculo el psicotécnico?
Aciertos menos errores/3, multiplicado por 30 y dividido entre 80. Necesitas 12 sobre 30 como mínimo.

### ¿Cuántos simulacros necesito para valorar mi nivel?
No hay una cifra oficial; la tendencia de varios seguidos es más fiable que uno solo.

### ¿Cuenta el concurso en la nota de corte?
Sí: la puntuación final sobre 195 suma concurso y oposición.',
   NULL, NULL, 'publicado', '2027-02-18T06:08:00.000Z', 'acceso-guardia-civil',
   ARRAY['simulacros', 'nota de corte', 'puntuación', 'preparación']::text[], '{"title":"Cómo saber si estás preparado: indicadores y nota de corte","description":"Indicadores medibles para saber si estás preparado en la oposición de Guardia Civil: fórmula de puntuación, mínimos, simulacros y notas de corte 2022-2026."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil', 'articulo', 'Cómo se asignan los primeros destinos al salir de Baeza: lo que dice el reglamento', 'No existe un «reparto de plazas por nota» descrito como tal en el Reglamento de destinos. Sí hay un procedimiento: vacantes anunciadas, solicitudes y asignación por escalafón. Qué se puede afirmar con el BOE y qué no.', 'Respuesta corta: **no eliges libremente**, y el Reglamento de destinos no describe un acto de «adjudicación por nota» con esas palabras. Lo que dice es que las vacantes se anuncian, los interesados las solicitan y los destinos de provisión por antigüedad se asignan por **orden de escalafón**. Tu puesto en la clasificación final del curso es el dato que la normativa de enseñanza usa para ordenarte. Lo que no puedo darte, porque no está publicado en las normas que he revisado, es una tabla de «con esta nota, este destino».

Antes de seguir, conviene tener claro el contexto: tras las prácticas [permaneces en tu unidad hasta el primer destino](/blog/las-practicas-despues-de-baeza-que-te-espera-guardia-civil), y la base de todo es el [Real Decreto 470/2019, Reglamento de destinos](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398).

## Los tres tipos de destino

El Reglamento clasifica los destinos según su forma de asignación:

- **Libre designación**: puestos de especial confianza y responsabilidad, como los de mando de unidad en los empleos altos (artículo 8).
- **Concurso de méritos**: gana quien acredita mayor puntuación según sus méritos (artículo 28).
- **Provisión por antigüedad**: «se asignan por el orden de escalafón de los interesados que cumplan los requisitos» (artículo 10). Es el criterio que se apoya en tu posición en el escalafón, no en méritos acumulados.

La asignación con carácter voluntario se hace al peticionario de mayor empleo y antigüedad (artículo 29). Quedan los modos **anuente** y **forzoso**: lo no cubierto de forma voluntaria se asigna a quienes lo hubieran solicitado como anuente y, si sobra, con carácter forzoso por orden de publicación (artículos 29 y 30).

## Qué dice sobre quienes acaban de salir de la academia

Tres previsiones concretas del Reglamento:

1. **Solicitar antes de ingresar en la escala.** Si la resolución de anuncio de vacantes lo especifica, quien esté previsto que acceda a una escala en el plazo de dos meses, una vez terminado su periodo de formación, puede solicitar las vacantes publicadas. Los destinos no se asignan antes del ingreso en la escala (artículo 17.3).
2. **Vacantes sin publicar.** Al personal de nuevo acceso, excepcionalmente, se le puede asignar destino sin publicación previa, entre las que hayan resultado desiertas en anuncios anteriores para el primer empleo (artículo 14.2).
3. **Alumnos como destinables.** Los alumnos próximos a ingresar en la escala pueden recibir destino «en las formas previstas en este reglamento» (artículo 30.3).

Las vacantes se anuncian al menos una vez cada semestre natural, en el «Boletín Oficial de la Guardia Civil» (artículo 13.1). Ese es el sitio donde mirar, no los foros.

## Y la nota, ¿qué papel tiene?

Aquí hay que ser precisos. La [Orden PCM/576/2021](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2021-9632) establece que la **calificación final** del plan de estudios sirve de base para la ordenación del alumnado, que se publica en una única resolución (artículo 29). Quien entra por distintas vías o centros se integra en una única clasificación mediante la puntuación típica y, en caso de empate, tiene prioridad el de mayor edad.

Lo razonable es pensar que esa clasificación determina tu número en el escalafón y, por tanto, tu turno cuando una vacante se asigna por antigüedad. Pero **esa conexión, tal cual, no la he encontrado escrita en las normas revisadas**. Por eso conviene tratarla como lo más probable y comprobarla en la resolución de vacantes que se publique para tu promoción.

## Qué sí puedes esperar

- **Qué se oferta para tu promoción** lo marca cada resolución de vacantes. En las de provisión por antigüedad, el criterio es el escalafón.
- **Tiempo mínimo de permanencia.** La [Orden INT/26/2021](https://www.boe.es/buscar/act.php?id=BOE-A-2021-897) (artículo 35) fija con carácter general dos años en destinos asignados de forma voluntaria y un año en el resto, con posibles ampliaciones.
- **Agrupamiento familiar.** El guardia civil con hijos menores de doce años o con discapacidad del 33 % o más tiene derecho preferente para vacantes de antigüedad en la provincia del cónyuge guardia civil (artículo 50.3.b del Reglamento).

Para el panorama posterior (especialidades, cursos, cómo cambian las opciones con los años), lee [destinos y especialidades tras Baeza](/blog/destinos-especialidades-guardia-civil).

## Cómo prepararte

Aprobar la oposición es entrar; lo que pasa después se juega en Baeza y en las prácticas, y tu nota allí te acompaña. Quien llega con el temario fresco y una rutina de estudio hecha parte con ventaja. Si estás en esa fase, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayuda a asentar la base.

## Preguntas frecuentes

### ¿Se elige el destino por nota en la Guardia Civil?
El Reglamento no lo describe así. Los destinos de antigüedad se asignan por escalafón y la nota del curso sirve para ordenar la promoción; consulta la resolución de vacantes de tu promoción.

### ¿Puedo pedir la provincia que quiera?
Puedes solicitar vacantes publicadas, pero la asignación depende de lo ofertado y de tu orden. No hay garantía de obtener la que prefieras.

### ¿Cuándo se publican las vacantes?
Al menos una vez cada semestre natural, en el Boletín Oficial de la Guardia Civil (artículo 13.1 del Reglamento).

### ¿Puedo cambiar de destino enseguida?
Existen tiempos mínimos de permanencia: con carácter general, dos años en destinos voluntarios y uno en el resto, según la Orden INT/26/2021.',
   NULL, NULL, 'publicado', '2027-01-22T06:29:00.000Z', 'acceso-guardia-civil',
   ARRAY['destinos', 'primer destino', 'escalafón', 'reglamento']::text[], '{"title":"Primer destino en la Guardia Civil: cómo se asigna","description":"Cómo se asigna el primer destino al salir de Baeza: vacantes, solicitud, provisión por antigüedad y escalafón, según el Reglamento de destinos de 2019."}'::jsonb, '{}'::jsonb)
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
  ('convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra', 'articulo', 'Convocatoria Guardia Civil 2027: qué se sabe y cómo seguirla', 'De la convocatoria de 2027 no hay nada oficial publicado en el momento de escribir esto. Repasamos las fechas verificadas en el BOE de las últimas cuatro convocatorias y cómo seguir el proceso sin depender de rumores.', '**Respuesta corta:** de la convocatoria de 2027 no hay, en el momento de redactar este artículo (noviembre de 2026), nada oficial: ni oferta de empleo público ni resolución de convocatoria. Cualquier fecha que veas anunciada es una suposición. Lo que sí podemos darte son las fechas reales de las convocatorias anteriores, para que sepas cómo funciona el calendario sin que nadie te prometa un día.

## Qué hay de oficial sobre 2027

Una convocatoria necesita antes una [oferta de empleo público](/blog/oferta-de-empleo-publico-2027-que-es-y-que-significa-para-ti), y las convocatorias solo pueden publicarse en el año al que se refiere esa oferta. A fecha de redacción no hemos localizado ninguna oferta para 2027 en el BOE ni en la relación de ofertas de la Administración General del Estado.

Por tanto, ahora mismo no se sabe oficialmente ni el número de plazas, ni el reparto entre cupos, ni el plazo, ni los requisitos concretos de 2027. Si cuando leas esto ya hay algo publicado, manda lo que diga el BOE.

## Cómo fueron las convocatorias anteriores

Todas las fechas y cifras de esta tabla están tomadas del BOE:

| Año | Oferta de empleo público (BOE) | Convocatoria (BOE) | Plazas |
| --- | --- | --- | --- |
| 2023 | Real Decreto 627/2023, 12 de julio | 16 de agosto de 2023 ([BOE-A-2023-18485](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-18485)) | 2.520 |
| 2024 | Real Decreto 562/2024, 12 de junio | 25 de junio de 2024 ([BOE-A-2024-12818](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2024-12818)) | 2.721 |
| 2025 | Real Decreto 341/2025, 16 de abril | 28 de mayo de 2025 ([BOE-A-2025-10521](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2025-10521)) | 3.118 |
| 2026 | Real Decreto 206/2026, 13 de marzo | 8 de mayo de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) | 3.240 |

Qué se puede decir con honestidad de estos datos:

- **Hay un orden fijo:** primero la oferta y después la convocatoria.
- **El calendario no es regular.** Los días entre una y otra fueron muy distintos y cada año cayó en un mes diferente. Con cuatro ejemplos no se puede deducir cuándo saldrá la próxima, y no vamos a hacer como que sí.
- **El plazo de solicitud fue de 15 días hábiles** desde el día siguiente a la publicación en las cuatro convocatorias comprobadas.
- **La incorporación a los centros también cambia.** La de 2026 preveía la presentación en Baeza (Jaén) y en Valdemoro (Madrid) el 13 de octubre de 2026.

Para ver cómo se estructuró el proceso de este año, tienes la [convocatoria de 2026 explicada](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## Cómo seguirla sin depender de rumores

Pon las fuentes oficiales en tu rutina:

1. **BOE, sección II.B (Oposiciones y concursos), Ministerio de Defensa.** Ahí aparece la resolución de convocatoria. Para la oferta, sección III («Otras disposiciones»).
2. **La web de la Guardia Civil**, en el apartado de ingreso en el Cuerpo, donde la propia convocatoria dice que el Tribunal publicará sus resoluciones.
3. **La web del Ministerio del Interior**, que debe recoger un apartado de procesos selectivos con cada convocatoria, según el Real Decreto 206/2026.
4. **La sede electrónica de la Guardia Civil**, donde se presenta la solicitud, que es siempre telemática.

Una alerta en el buscador del BOE con «Guardia Civil» y «Escala de Cabos y Guardias» te ahorra mirar cada día.

## Qué conviene tener listo antes de que salga

Como el plazo es de 15 días hábiles, lo que no puedes improvisar es lo siguiente:

- **Acceso electrónico:** tener Cl@ve o certificado digital funcionando, y tu número de la Seguridad Social a mano.
- **Requisitos:** revisar [edad y requisitos](/blog/requisitos-guardia-civil) con la fecha de la convocatoria en la mano.
- **Estudio:** si esperas a la publicación para empezar, llegas tarde. Un [plan de estudio compatible con trabajar](/blog/plan-estudio-guardia-civil-trabajando) se construye con meses de antelación.

Para tener el temario ordenado desde ya, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Hay ya fecha para la convocatoria de 2027?

No hay fecha oficial en el momento de escribir esto. Cualquier fecha que circule es una suposición.

### ¿Saldrán más plazas que en 2026?

No se sabe. La cifra la fija la oferta de empleo público, y la de 2027 no estaba publicada. Que subiera en los últimos años no permite asegurar lo que ocurrirá.

### ¿Puedo empezar a prepararme sin convocatoria?

Sí. El programa de la oposición lo fija cada convocatoria, así que lo prudente es estudiar con el de la última publicada y comprobar el de 2027 en cuanto salga.

### ¿La convocatoria del Colegio de Guardias Jóvenes es la misma?

No. Es una oferta de plazas distinta, que se publica en el Boletín Oficial de la Guardia Civil. La de 2026/2027 salió el 19 de mayo de 2026.',
   NULL, NULL, 'publicado', '2027-02-04T06:10:00.000Z', 'acceso-guardia-civil',
   ARRAY['convocatoria 2027', 'BOE', 'calendario', 'plazas']::text[], '{"title":"Convocatoria Guardia Civil 2027: qué se sabe oficial","description":"Convocatoria Guardia Civil 2027: qué hay de oficial, fechas del BOE de las convocatorias de 2023 a 2026 y dónde seguir su publicación sin rumores."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('corona-cortes-generales-guardia-civil', 'articulo', 'La Corona y las Cortes Generales en el examen: los datos que hay que saberse', 'Los Títulos II y III de la Constitución están llenos de cifras, plazos y atribuciones fáciles de confundir. Las funciones del Rey, la sucesión, el refrendo y la composición, el mandato y las reglas de las Cortes Generales, en un esquema para memorizar.', 'El Título II (De la Corona, artículos 56 a 65) y el Título III (De las Cortes Generales, artículos 66 a 96) son terreno de **cifras y atribuciones**: cuántos diputados, cuántos senadores, quién hace qué. Justo lo que se confunde cuando se estudia deprisa.

Todo lo que sigue sale del texto de la Constitución ([BOE-A-1978-31229](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)). Si vienes del tema anterior, repasa antes [los derechos fundamentales](/blog/derechos-fundamentales-libertades-publicas-guardia-civil).

## La Corona (arts. 56 a 65)

### Quién es el Rey (art. 56)

- Es el **Jefe del Estado**, símbolo de su unidad y permanencia.
- **Arbitra y modera** el funcionamiento regular de las instituciones y asume la más alta representación del Estado en las relaciones internacionales.
- Su título es el de **Rey de España**.
- Su persona es **inviolable y no está sujeta a responsabilidad**. Sus actos están **siempre refrendados** (art. 64) y carecen de validez sin ese refrendo.

### La sucesión (art. 57)

La Corona es hereditaria en los sucesores de Juan Carlos I. La sucesión sigue el orden regular de **primogenitura y representación**:

1. Se prefiere **la línea anterior** a las posteriores.
2. En la misma línea, **el grado más próximo** al más remoto.
3. En el mismo grado, **el varón a la mujer**.
4. En el mismo sexo, **la persona de más edad**.

El heredero tiene la dignidad de **Príncipe de Asturias**.

### Regencia (art. 59)

Cuando el Rey sea **menor de edad**, ejerce la Regencia el padre o la madre y, en su defecto, el pariente mayor de edad más próximo a suceder en la Corona.

### Funciones del Rey (art. 62)

| Letra | Función |
|---|---|
| a | Sancionar y promulgar las leyes |
| b | Convocar y disolver las Cortes Generales y convocar elecciones |
| c | Convocar a referéndum |
| d | Proponer el candidato a Presidente del Gobierno y nombrarlo |
| e | Nombrar y separar a los miembros del Gobierno, a propuesta de su Presidente |
| f | Expedir los decretos acordados en el Consejo de Ministros, conferir empleos civiles y militares y conceder honores y distinciones |
| g | Ser informado de los asuntos de Estado y presidir el Consejo de Ministros cuando lo estime oportuno, a petición del Presidente del Gobierno |
| h | **El mando supremo de las Fuerzas Armadas** |
| i | Ejercer el **derecho de gracia** con arreglo a la ley, que no podrá autorizar indultos generales |
| j | El Alto Patronazgo de las Reales Academias |

### El refrendo (art. 64)

- Los actos del Rey son refrendados por el **Presidente del Gobierno** y, en su caso, por los **Ministros competentes**.
- La **propuesta y nombramiento del Presidente del Gobierno** y la **disolución del artículo 99** los refrenda el **Presidente del Congreso**.
- De los actos del Rey **son responsables las personas que los refrenden**.

### La Casa del Rey (art. 65)

El Rey recibe de los Presupuestos del Estado una cantidad global para el sostenimiento de su Familia y Casa, que distribuye libremente. Nombra y releva libremente a los miembros civiles y militares de su Casa.

## Las Cortes Generales (arts. 66 a 96)

### Qué son (art. 66)

- **Representan al pueblo español** y están formadas por el **Congreso de los Diputados** y el **Senado**.
- Ejercen la **potestad legislativa**, aprueban los **Presupuestos**, **controlan la acción del Gobierno** y tienen las demás competencias que les atribuye la Constitución.
- Son **inviolables**.

### Reglas comunes

- Nadie puede ser miembro de las dos Cámaras simultáneamente (art. 67.1).
- **Los parlamentarios no están ligados por mandato imperativo** (art. 67.2).

### Congreso de los Diputados (art. 68)

| Dato | Valor |
|---|---|
| Composición | Mínimo **300**, máximo **400** Diputados |
| Elección | Sufragio universal, libre, igual, directo y secreto |
| Circunscripción | La **provincia** (Ceuta y Melilla, un diputado cada una) |
| Sistema | Representación **proporcional** |
| Mandato | **Cuatro años** (o hasta la disolución de la Cámara) |

### Senado (art. 69)

- Es la **Cámara de representación territorial**.
- En cada provincia se eligen **cuatro Senadores** por sufragio universal, libre, igual, directo y secreto.
- En las provincias insulares, cada isla con Cabildo o Consejo Insular constituye una circunscripción: **tres** senadores a las islas mayores (Gran Canaria, Mallorca y Tenerife) y **uno** a las demás que cita el artículo.
- Las Comunidades Autónomas designan además un Senador y otro más por cada millón de habitantes de su territorio.
- Mandato de **cuatro años**.

## Cómo memorizarlo

1. **Haz una ficha de cifras**: 300-400 diputados, 4 senadores por provincia, 4 años de mandato.
2. **Memoriza la tabla de funciones del Rey** por letras: lo que más se pregunta es qué **no** hace el Rey (por ejemplo, gobernar) y quién refrenda cada acto.
3. **Repasa con tests**: en el [test de 20 preguntas](/blog/test-constitucion-20-preguntas-guardia-civil) tienes varias de estos títulos.

Si lo que buscas es entender cómo preparar este tema en el contexto de la oposición, tienes también [la Constitución en la oposición](/blog/constitucion-oposicion-guardia-civil).

## Preguntas frecuentes

### ¿Quién tiene el mando supremo de las Fuerzas Armadas?

El Rey (art. 62.h).

### ¿Quién refrenda los actos del Rey?

El Presidente del Gobierno y, en su caso, los Ministros competentes. El Presidente del Congreso refrenda la propuesta y el nombramiento del Presidente del Gobierno y la disolución del artículo 99.

### ¿Cuántos diputados tiene el Congreso?

Entre 300 y 400, según la Constitución. El número exacto lo fija la ley.

### ¿Cuántos senadores se eligen por provincia?

Cuatro, con reglas especiales para las islas, Ceuta y Melilla.',
   NULL, NULL, 'publicado', '2026-12-08T06:44:00.000Z', 'acceso-guardia-civil',
   ARRAY['Constitución', 'Corona', 'Cortes Generales', 'Congreso', 'Senado']::text[], '{"title":"Corona y Cortes Generales: datos para el examen","description":"Corona (arts. 56-65) y Cortes Generales (arts. 66-80) de la Constitución: funciones del Rey, sucesión, refrendo, Congreso, Senado y reglas clave, en esquema."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuadro-medico-exclusiones-guardia-civil', 'articulo', 'Cuadro médico de exclusiones de la Guardia Civil explicado', 'El reconocimiento médico es la última prueba y se aplica con el cuadro de exclusiones de la Orden PCI/155/2019. Qué norma está vigente, qué cambió en 2021 y 2023, y las exclusiones que más dudas generan, explicadas sin tecnicismos.', 'Hay aspirantes que aprueban el examen, superan las físicas y la entrevista, y se quedan fuera en la última puerta: el reconocimiento médico. Casi siempre por algo que podrían haber comprobado meses antes.

En este artículo te explicamos **qué norma se aplica, qué ha cambiado y qué exclusiones conviene revisar con tiempo**. No sustituye a un médico: es un mapa para saber qué preguntarle.

## ¿Qué norma regula el cuadro médico?

El cuadro médico de exclusiones está en el **anexo I de la Orden PCI/155/2019, de 19 de febrero** ([texto consolidado en el BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291)). La convocatoria de 2026 se remite a él en su base 6.1.3.c, y añade que se aplicará conforme a la sentencia del Tribunal Supremo de 21 de febrero de 2023.

Desde su aprobación, el cuadro ha cambiado tres veces:

| Norma | Qué cambió |
|---|---|
| Orden PCM/521/2021 | Reescribió la introducción y varios apartados (parámetros generales, piel, aparato digestivo, endocrino y sangre) |
| Sentencia del Tribunal Supremo de 21-2-2023 | Anuló la frase «En ningún caso se admitirán lentes fáquicas» |
| Orden PCM/1133/2023 | Eliminó los límites de estatura: la talla pasó a ser «sin límite» |

Si lees una lista de exclusiones anterior a 2023, probablemente está desactualizada en altura y en lentes.

## Cómo se aplica: no basta con tener un diagnóstico

El cuadro empieza con una regla importante. Las exclusiones se aplican cuando hay:

- procesos que hagan prever que **no podrás completar la formación**, o
- procesos que en el futuro **puedan impedirte desempeñar el servicio** o supongan una insuficiencia permanente.

Además, la valoración debe adaptarse a la evidencia científica del momento y **motivarse de forma individual** mediante un informe técnico del servicio médico. En muchos apartados la norma no excluye por el nombre de la enfermedad, sino por su repercusión: si limita o no las funciones del servicio.

## Las exclusiones que más dudas generan

El cuadro es largo (de la letra A a la M). Estas son las partes que más aspirantes preguntan:

### Peso: el IMC entre 17 y 30

El índice de masa corporal debe estar entre 17 y 30. Se admite un IMC por encima de 30 si se debe claramente a masa muscular y no a grasa, sin otra patología ni factores de riesgo.

### Estatura: ya no hay mínimo

Desde octubre de 2023 la talla es «sin límite». Antes se exigían 160 cm a los hombres y 155 cm a las mujeres, con un máximo de 203 cm.

### Vista

Es el bloque con más causas concretas:

- **Agudeza visual** superior a 0,7 en ambos ojos, con o sin corrección.
- **Refracción** máxima: miopía −3, hipermetropía +3 y astigmatismo ±2 dioptrías.
- **Visión de los colores normal.** El daltonismo es causa de exclusión.
- Campo visual sin reducciones de más de 15 grados.
- Queratocono, trasplante de córnea, glaucoma o desprendimiento de retina, entre otras.

Lo desarrollaremos en artículos específicos sobre gafas y operaciones de vista, y sobre lentes intraoculares.

### Oído

Excluye una pérdida de audición superior al 25 % en un oído o al 18 % bilateral, medida según norma internacional.

### Tensión arterial

No puede superar en reposo 140 de máxima y 90 de mínima. Se mide sin medicación y, si hace falta, se repite en ayunas y tras diez minutos tumbado.

### Espalda y aparato locomotor

Algunas cifras concretas: escoliosis de más de 15 grados, cifosis de más de 45 grados o una diferencia de longitud entre piernas de dos centímetros o más. También el material de osteosíntesis voluminoso (placas, tornillos) que altere la biomecánica de la articulación.

### Psiquiatría

Incluye, entre otros, los trastornos de ansiedad y los trastornos del humor, estos últimos **incluso en situación asintomática o de remisión**. Es uno de los apartados en los que más pesa el historial clínico.

### Consumo de sustancias

Excluye la evidencia de consumo de drogas o psicotrópicos, incluido el alcohol, o su detección en la analítica del reconocimiento, así como medicación que reduzca la capacidad de reacción.

### Lo que no es causa de exclusión

El propio cuadro aclara algunos casos que mucha gente teme: la **tartamudez** o la disartria no excluyen, la **enfermedad celíaca** está expresamente fuera de las exclusiones digestivas, y ciertos bloqueos cardiacos leves sin cardiopatía de base tampoco.

## ¿Cuándo es el reconocimiento médico?

Es la última de las [pruebas de aptitud psicofísica](/blog/entrevista-reconocimiento-medico-guardia-civil), junto con las físicas y la entrevista. A ella llegan los aspirantes con mejor nota, en un número de 1,5 por plaza. La convocatoria pide presentarse **en ayunas y con retención de orina**.

## Qué hacer antes, con meses de margen

1. **Hazte una revisión por tu cuenta** con este cuadro delante: vista (incluida la de los colores), tensión, audición, IMC y espalda.
2. **Si tienes un diagnóstico previo**, pide informes actualizados a tu especialista que expliquen la repercusión funcional, que es lo que valora el cuadro.
3. **No dejes una operación para el último mes.** Cualquier intervención necesita tiempo de recuperación y revisiones.
4. **Revisa la medicación.** Algunos tratamientos pueden influir en la valoración.

Y si todavía no has comprobado el resto de requisitos, empieza por [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil).

## Preguntas frecuentes

### ¿Dónde está el cuadro médico de exclusiones de la Guardia Civil?

En el anexo I de la Orden PCI/155/2019, de 19 de febrero, modificado por la Orden PCM/521/2021, la sentencia del Tribunal Supremo de 21 de febrero de 2023 y la Orden PCM/1133/2023. La versión consolidada está en el BOE.

### ¿El daltonismo excluye de la Guardia Civil?

Sí. El cuadro exige visión cromática normal.

### ¿Qué IMC se pide en la Guardia Civil?

Entre 17 y 30. Se admite por encima de 30 si se debe a desarrollo muscular y no hay otra patología.

### ¿La tartamudez excluye?

No. El cuadro dice expresamente que la disartria o la tartamudez no son causa de exclusión.',
   NULL, NULL, 'publicado', '2026-11-12T06:22:00.000Z', 'acceso-guardia-civil',
   ARRAY['cuadro médico', 'reconocimiento médico', 'requisitos', 'exclusiones']::text[], '{"title":"Cuadro médico Guardia Civil: exclusiones vigentes","description":"Cuadro médico de exclusiones de la Guardia Civil vigente: norma, cambios de 2021 y 2023, IMC, vista, oído, tensión, espalda y cómo prepararte."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil', 'articulo', 'Cuántas horas al día hay que estudiar para la Guardia Civil', 'No existe una cifra oficial de horas. Te damos una orientación (25 a 40 horas semanales como referencia), cómo repartirlas según tu situación y por qué importa más lo que haces en cada hora que cuántas sumas.', '**Respuesta corta:** no hay un número oficial ni mágico. Como **orientación**, el curso de ProLince plantea entre **25 y 40 horas semanales** en su web, es decir, de unas 4 a 6 horas diarias si repartes en seis días. Es una referencia de academia, no un dato de la convocatoria ni una garantía de nada.

## Por qué no hay una cifra universal

La convocatoria ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) fija pruebas y mínimos, no horas de estudio. Las que necesitas dependen de:

- Tu punto de partida en temario, inglés y lengua.
- Tu facilidad personal para memorizar y comprender.
- La nota que pretendas: pasar los mínimos no es lo mismo que competir por plaza, como se ve en [la nota de corte](/blog/nota-de-corte-guardia-civil).
- El tiempo que tengas hasta la prueba.

## Tres perfiles orientativos

| Perfil | Horas semanales realistas | Idea de reparto |
| --- | --- | --- |
| Dedicación completa | Dentro de la horquilla de 25 a 40 | 4-6 h al día, con un día libre |
| Trabajas a media jornada | Algo menos, durante más meses | 2-4 h al día |
| Trabajas a jornada completa | Menos horas, con plazos más largos | 1,5-2,5 h entre semana y más el fin de semana |

La tabla es una guía propia, no un estándar. Si trabajas, en [plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando) tienes un reparto detallado.

## Más horas no es siempre mejor

Cuatro horas con el móvil al lado rinden menos que dos concentradas. Algunas ideas prácticas:

- **Bloques de 45 a 90 minutos** con pausas cortas. No es una ley científica, es un punto de partida: ajusta según cuándo notes que decae tu atención.
- **Lo difícil, a tu mejor hora del día.**
- **Mezcla leer con recuperar:** a menudo es más útil hacer un test sin apuntes que releer. Lo desarrollaremos en el artículo sobre repaso espaciado.
- **Registra lo hecho,** no lo planificado.

## Cómo se reparten las horas

Una distribución orientativa, que debes adaptar al peso de tus puntos débiles:

- **Temario y tests:** el grueso, porque son 100 preguntas del examen de conocimientos.
- **Inglés, lengua y psicotécnico:** menos horas, pero con mínimo eliminatorio, así que no se descuidan. Ver [la estructura del examen](/blog/examen-conocimientos-guardia-civil-estructura).
- **Físicas:** aparte de las horas de estudio, según [la organización de la semana](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Cómo empezar si hoy estudias poco

Si ahora mismo no llegas ni a una hora diaria, no saltes de golpe a seis. Sube de media hora en media hora cada una o dos semanas, fija siempre la misma franja horaria y respeta un día de descanso. Sostener un ritmo modesto durante meses suele ser más útil que un arranque brillante que dura dos semanas.

## Señales de que te estás pasando

Dormir poco, perder la concentración de forma continuada, irritabilidad o lesiones por entrenar cansado son señales de que debes bajar carga. Si persisten, consulta con tu médico.

## Cómo saber si tus horas funcionan

Mide resultados, no tiempo: la tendencia de tus simulacros, tus fallos por tema y tu constancia semanal. Si subes horas y no mejora nada, cambia el método antes que el horario. Encuentras los indicadores en el [balance de fin de año](/blog/balance-del-ano-como-saber-si-vas-bien-en-la-oposicion).

Para una planificación ya montada, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) la incluye.

## Preguntas frecuentes

### ¿Se puede aprobar estudiando 2 horas al día?
Puede ser, si tienes meses por delante y las aprovechas bien. No hay garantías: depende del nivel y de la competencia.

### ¿Hay que estudiar los fines de semana?
Muchos opositores usan el sábado para simulacros y repaso. Un día libre a la semana es sano.

### ¿Las 25-40 horas son oficiales?
No. Son la referencia que da ProLince en su web.

### ¿Cuenta el entrenamiento físico en esas horas?
No: se suma aparte.',
   NULL, NULL, 'publicado', '2027-01-02T06:49:00.000Z', 'acceso-guardia-civil',
   ARRAY['horas de estudio', 'organización', 'método', 'planificación']::text[], '{"title":"Horas al día para estudiar Guardia Civil: orientación","description":"Cuántas horas estudiar al día para Guardia Civil: orientación de 25 a 40 horas semanales, reparto según tu situación y cómo aprovecharlas mejor."}'::jsonb, '{}'::jsonb)
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
  ('deontologia-profesional-el-codigo-de-conducta-que-entra', 'articulo', 'Deontología profesional en la Guardia Civil: el Código de Conducta (RD 176/2022)', 'El tema 19 del programa junta los Principios Básicos de la ONU sobre el uso de la fuerza y el Código de Conducta de la Guardia Civil. Qué contiene cada uno, cómo se organiza el Real Decreto 176/2022 y cómo estudiarlo.', 'En el programa de la Escala de Cabos y Guardias, el tema 19, «Deontología profesional», se resume en dos textos: los **Principios Básicos sobre el Empleo de la Fuerza y de Armas de Fuego** de Naciones Unidas (La Habana, 1990) y el **Real Decreto 176/2022, por el que se aprueba el Código de Conducta del personal de la Guardia Civil** (consulta el [temario](/temario-guardia-civil)).

La respuesta corta: no hay un «Código Ético» aparte en el programa; el texto que debes estudiar se llama **Código de Conducta**, está en el [BOE-A-2022-3477](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2022-3477) y se organiza en dos títulos, 50 artículos y un Decálogo.

## Un matiz sobre otras normas

La Ley Orgánica 11/2007 (derechos y deberes) y la Ley 29/2014 (régimen del personal) **no pertenecen al tema 19, sino al tema 15**, junto con la [LO 2/1986](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada) y la [historia del Cuerpo](/blog/historia-de-la-guardia-civil-del-duque-de-ahumada-a-hoy). Aun así, el propio Código de Conducta se apoya en ellas: cita el artículo 36 de la LO 11/2007 (fomento de la deontología por las asociaciones profesionales).

## El Real Decreto 176/2022

Se aprobó el 4 de marzo de 2022, se publicó en el BOE del 5 de marzo y entró en vigor el 25 de marzo de 2022. Su parte dispositiva tiene seis artículos, entre ellos:

- **Art. 3**: se aplica al personal de la Guardia Civil sujeto al régimen de derechos y deberes y al alumnado de los centros de formación de las escalas de Oficiales y de Cabos y Guardias.
- **Art. 5**: los procesos selectivos de acceso directo «contemplarán, en sus correspondientes convocatorias y en su desarrollo, el contenido de este Código de Conducta».

Su preámbulo enlaza con la *Cartilla del Guardia Civil* y con el artículo 5 de la LO 2/1986.

## Estructura del Código

| Parte | Artículos | Contenido |
|---|---|---|
| Título I, capítulo I | 1 a 9 | Valores: honor, integridad, lealtad, valor, sentido de la justicia, imparcialidad y neutralidad, responsabilidad, dignidad, espíritu de sacrificio |
| Título I, capítulo II | 10 a 23 | Principios institucionales: defensa de la Constitución, derechos fundamentales, igualdad, neutralidad política, jerarquía, disciplina, subordinación, etc. |
| Título II, capítulo I | 24 a 32 | Normas generales: disponibilidad, serenidad y prudencia, reserva, uniforme, saludo militar, salud… |
| Título II, capítulo II | 33 a 50 | Normas durante el servicio: ciudadanía, autoridades, justicia, empleo de la fuerza, víctimas, detenidos… |
| Anexo | — | Decálogo |

### Preceptos que conviene leer despacio

- **Art. 16.2 (subordinación)**: si una orden entraña actos que manifiestamente constituyan delito o sean contrarios a la Constitución o a las leyes, **se abstendrán de obedecerla** y lo comunicarán por el medio más rápido a la autoridad superior.
- **Art. 22.2**: un compañerismo mal entendido no puede dar cabida al encubrimiento de conductas que incumplan las leyes.
- **Art. 43 (empleo de la fuerza)**: persuasión y fuerza moral primero; fuerza gradual conforme a congruencia, oportunidad y proporcionalidad; armas de fuego solo ante un riesgo racionalmente grave para la vida o la integridad, o para la seguridad ciudadana.
- **Art. 44**: trato respetuoso a víctimas y testigos, con especial sensibilidad hacia las víctimas de violencia de género.
- **Art. 45**: la detención ha de ser lo más respetuosa posible con la reputación y la dignidad, sin vejación, maltrato ni injuria. Relaciónalo con [detención y habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre).

### El Decálogo

El anexo resume en diez «virtudes»: honor; defensa de España y de la Constitución; dignidad; respeto a los derechos y libertades; integridad; vocación de servicio; espíritu benemérito; lealtad y espíritu de cuerpo; disciplina; serenidad y empleo de la fuerza.

## Principios Básicos de la ONU (1990)

Fueron adoptados en el Octavo Congreso de las Naciones Unidas sobre Prevención del Delito y Tratamiento del Delincuente, celebrado en La Habana del 27 de agosto al 7 de septiembre de 1990. Se agrupan en: disposiciones generales (1 a 8), disposiciones especiales (9 a 11), reuniones ilícitas (12 a 14), personas bajo custodia (15 a 17), calificaciones y capacitación (18 a 21) y procedimientos de informes y recursos (22 a 26). Tres ideas clave:

- **Principio 4**: usar, en lo posible, medios no violentos antes de recurrir a la fuerza o a las armas de fuego.
- **Principio 9**: las armas de fuego contra personas solo en defensa propia o de otras personas ante peligro inminente de muerte o lesiones graves, entre otros supuestos tasados; el uso intencional de armas letales, solo cuando sea estrictamente inevitable para proteger una vida.
- **Principio 10**: identificarse y advertir claramente de la intención de disparar, salvo excepciones.

Compara estas ideas con el artículo 5 de la LO 2/1986 y con los [derechos fundamentales](/blog/derechos-fundamentales-libertades-publicas-guardia-civil): verás que comparten la misma lógica de proporcionalidad.

## Cómo estudiarlo

Lee el texto completo una vez y después elabora una tabla de valores y otra de normas por servicio. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) integra ambos textos. Comprueba siempre la convocatoria vigente por si cambia el programa.

## Preguntas frecuentes

### ¿Cuál es el código que se estudia en deontología?

El Código de Conducta del personal de la Guardia Civil, aprobado por el RD 176/2022. El programa lo cita junto con los Principios Básicos de la ONU de 1990.

### ¿Cuántos artículos tiene?

El Código tiene 50 artículos, más el Decálogo en anexo; el real decreto que lo aprueba tiene seis artículos dispositivos.

### ¿Se aplica a los aspirantes?

El artículo 3 incluye al alumnado de los centros docentes de formación. Y el artículo 5 dispone que los procesos selectivos de acceso directo contemplen su contenido.

### ¿Se debe obedecer una orden manifiestamente delictiva?

No. El artículo 16.2 establece que, ante órdenes que manifiestamente constituyan delito o sean contrarias a la Constitución o a las leyes, se abstendrán de obedecerlas y lo comunicarán.',
   NULL, NULL, 'publicado', '2026-12-26T06:50:00.000Z', 'acceso-guardia-civil',
   ARRAY['deontología', 'código de conducta', 'rd 176/2022', 'uso de la fuerza']::text[], '{"title":"Deontología Guardia Civil: Código de Conducta RD 176/2022","description":"Deontología de la Guardia Civil: estructura del Código de Conducta (RD 176/2022), el Decálogo y los Principios Básicos de la ONU sobre el uso de la fuerza."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derecho-civil-en-la-oposicion-a-guardia-civil', 'articulo', 'Derecho Civil en la oposición a Guardia Civil: lo que conviene saber', 'El tema 7 del programa es el Título Preliminar y el Libro I del Código Civil. Te lo ordenamos: fuentes del Derecho, vigencia de las leyes, nacionalidad, personalidad, domicilio, matrimonio, filiación, patria potestad, mayoría de edad y medidas de apoyo.', 'El tema 7 del programa de la Escala de Cabos y Guardias es «Derecho Civil» y comprende, según nuestro [temario](/temario-guardia-civil), el **Título Preliminar y los Títulos I a XII del Libro I del Código Civil**: personas, nacionalidad, vecindad, domicilio, matrimonio, filiación, tutela y apoyos. **Respuesta corta:** estudia el Código Civil sobre su texto consolidado, porque el Libro I se ha reformado mucho (por ejemplo, en 2021 para las personas con discapacidad) y los apuntes antiguos dan numeraciones y conceptos que ya no valen.

Todos los artículos de este texto se han comprobado en el [Código Civil consolidado (BOE-A-1889-4763)](https://www.boe.es/buscar/act.php?id=BOE-A-1889-4763). El programa viene de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Para el temario del Colegio de Guardias Jóvenes, el alcance es más corto (solo el Título Preliminar).

## Título Preliminar: las normas jurídicas

### Fuentes del ordenamiento (art. 1)
- Son **la ley, la costumbre y los principios generales del derecho**.
- Carecen de validez las disposiciones que contradigan otra de rango superior.
- Los principios generales se aplican en defecto de ley o costumbre.
- Las normas de los tratados internacionales no son de aplicación directa mientras no se publiquen íntegramente en el BOE.
- La jurisprudencia complementa el ordenamiento con la doctrina reiterada del Tribunal Supremo.

### Vigencia de las leyes (art. 2)
- Las leyes entran en vigor a los **veinte días** de su completa publicación en el BOE, si no se dispone otra cosa.
- Solo se derogan por otras posteriores.
- No tienen efecto retroactivo, si no dispusieren lo contrario.

### Interpretación, analogía y plazos
| Art. | Contenido |
|---|---|
| 3 | Interpretación según el sentido propio de las palabras, el contexto, los antecedentes históricos y legislativos y la realidad social, atendiendo al espíritu y finalidad de la norma; la equidad se pondera, pero solo fundamenta por sí sola una resolución si la ley lo permite |
| 4 | Analogía cuando falte un supuesto específico pero haya otro semejante con identidad de razón; no procede en leyes penales, excepcionales o temporales |
| 6 | La ignorancia de las leyes no excusa de su cumplimiento; los actos contrarios a normas imperativas o prohibitivas son nulos de pleno derecho; el fraude de ley |
| 7 | Buena fe en el ejercicio de los derechos y no amparo del abuso del derecho |
| 8 | Las leyes penales, las de policía y las de seguridad pública obligan a todos los que se hallen en territorio español |
| 9 | La ley personal es la determinada por la nacionalidad |

El artículo 8 conecta directamente con tu futura profesión. Los capítulos IV y V (arts. 8 a 16) regulan además las normas de Derecho internacional privado, el ámbito territorial del Código (art. 13, aplicación supletoria respecto de los derechos forales) y la **vecindad civil** (art. 14: la sujeción al derecho civil común o foral se determina por ella).

## Libro I: de las personas

### Nacionalidad (Título I, arts. 17 a 28)
- **Españoles de origen (art. 17):** nacidos de padre o madre españoles; nacidos en España de padres extranjeros si al menos uno nació también en España (salvo hijos de diplomáticos); nacidos en España de padres apátridas o sin nacionalidad atribuible; y nacidos en España con filiación no determinada.
- **Opción (art. 20), carta de naturaleza y residencia (art. 21):** la carta de naturaleza se otorga discrecionalmente mediante Real Decreto por circunstancias excepcionales; por residencia, mediante concesión del Ministro de Justicia.
- **Residencia (art. 22):** diez años con carácter general; cinco para refugiados; dos para nacionales de origen de países iberoamericanos, Andorra, Filipinas, Guinea Ecuatorial o Portugal y sefardíes; un año en los supuestos del apartado 2 (por ejemplo, nacido en territorio español).
- **Requisitos comunes (art. 23):** jurar o prometer fidelidad al Rey y obediencia a la Constitución y a las leyes, renunciar a la nacionalidad anterior (salvo excepciones) e inscribir la adquisición en el Registro Civil.

### Personalidad (Título II)
- **Art. 29:** el nacimiento determina la personalidad, pero el concebido se tiene por nacido para los efectos favorables.
- **Art. 30:** se adquiere en el momento del nacimiento con vida, una vez producido el entero desprendimiento del seno materno.

### Domicilio (Título III, arts. 40 y 41)
El domicilio de las personas naturales es el lugar de su **residencia habitual**.

### Matrimonio (Título IV)
- **Art. 44:** toda persona tiene derecho a contraer matrimonio; tendrá los mismos requisitos y efectos cuando ambos contrayentes sean del mismo o de diferente sexo.
- **Art. 45:** no hay matrimonio sin consentimiento matrimonial.
- **Art. 46:** no pueden contraer matrimonio los menores de edad no emancipados y los que estén ligados con vínculo matrimonial.
- **Art. 47:** tampoco pueden contraerlo entre sí los parientes en línea recta por consanguinidad o adopción, los colaterales por consanguinidad hasta el tercer grado y los condenados por participar en la muerte dolosa del cónyuge o pareja.

### Filiación y alimentos (Títulos V y VI)
- **Art. 108:** puede tener lugar por naturaleza (matrimonial y no matrimonial) y por adopción; surten los mismos efectos.
- **Art. 142:** los alimentos comprenden lo indispensable para sustento, habitación, vestido y asistencia médica, y también educación e instrucción mientras el alimentista sea menor y aun después si no ha terminado su formación por causa no imputable.

### Patria potestad, tutela, mayoría de edad y apoyos (Títulos VII, IX a XI)
- **Patria potestad (art. 154):** los hijos no emancipados están bajo la patria potestad de los progenitores, que se ejerce siempre en interés de los hijos.
- **Tutela y guarda de los menores (Título IX):** están sujetos a tutela los menores no emancipados en situación de desamparo y los no sujetos a patria potestad (art. 199).
- **Mayor edad y emancipación (Título X):** la emancipación tiene lugar por la mayor edad, por concesión de quienes ejerzan la patria potestad o por concesión judicial (art. 239). La mayor edad empieza a los **dieciocho años** cumplidos (art. 240). La concesión paterna exige dieciséis años cumplidos y consentimiento del menor (art. 241).
- **Medidas de apoyo a las personas con discapacidad (Título XI):** además de las voluntarias, la guarda de hecho, la curatela y el defensor judicial (art. 250).

## Cómo estudiarlo

1. **Estudia el texto actual.** La reforma de 2021 sobre capacidad jurídica y otras posteriores (el texto consolidado indica cada modificación) cambiaron artículos. Si usas apuntes de hace años, contrástalos.
2. **Aprende las cifras:** veinte días (vigencia), diez, cinco, dos y un año (residencia), dieciséis años (emancipación), dieciocho (mayor edad).
3. **Relaciónalo con la Constitución:** las fuentes del Derecho y la publicación de los tratados enlazan con lo que ya viste en [cómo estudiar la Constitución](/blog/constitucion-oposicion-guardia-civil).
4. Plan ordenado de los 23 temas en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil). Para conocer la estructura del examen, consulta [cómo es el examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Preguntas frecuentes

### ¿Qué entra del Código Civil?
Según el programa que recogemos en nuestro temario: el Título Preliminar y el Libro I, Títulos I a XII. En el Colegio de Guardias Jóvenes, solo el Título Preliminar.

### ¿Cuándo entra en vigor una ley, si no dice otra cosa?
A los veinte días de su completa publicación en el BOE (art. 2.1 del Código Civil).

### ¿A qué edad se alcanza la mayoría de edad?
A los dieciocho años cumplidos, incluyendo completo el día del nacimiento en el cómputo (art. 240).

### ¿Es lo mismo el Registro Civil que el Código Civil?
No. El Código Civil menciona el Registro Civil en varios artículos, pero su regulación específica es otra norma. Comprueba qué leyes entran en tu convocatoria.',
   NULL, NULL, 'publicado', '2026-12-15T06:43:00.000Z', 'acceso-guardia-civil',
   ARRAY['Derecho Civil', 'Código Civil', 'temario', 'nacionalidad']::text[], '{"title":"Derecho Civil para la oposición: Título Preliminar y Libro I","description":"Derecho Civil para Guardia Civil: fuentes del Derecho, vigencia de las leyes, nacionalidad, personalidad, matrimonio, filiación, mayoría de edad y apoyos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derecho-fiscal-en-la-oposicion-hacienda-contrabando', 'articulo', 'Derecho fiscal en la oposición: contrabando y aduanas, cuáles son las normas que entran', 'El tema 23 no es la Ley General Tributaria: es la represión del contrabando y el Código Aduanero de la Unión. Qué normas entran, cómo distingue la ley delito e infracción y cómo estudiarlo.', 'Si buscas «Derecho fiscal» y esperas encontrar impuestos, sorpresa: en esta oposición **no entra la Ley General Tributaria ni el IRPF**. El tema 23 gira en torno a una misión concreta de la Guardia Civil, el resguardo fiscal del Estado: **reprimir el contrabando**.

## Qué normas entran

Según el [temario oficial](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2024/TEMARIO_INGRESO_GC_ACTUALIZADO_2024.pdf), el tema 23 tiene dos bloques:

1. **Represión del contrabando**: la Ley Orgánica 12/1995, de 12 de diciembre, y el Real Decreto 1649/1998, que desarrolla su título II (infracciones administrativas).
2. **El Reglamento (UE) n.º 952/2013, Código Aduanero de la Unión**, solo en los títulos y capítulos que fija el temario (disposiciones generales, deuda aduanera, despacho a libre práctica, regímenes especiales, salida de mercancías…).

La LO 12/1995 la tienes consolidada en el BOE: [BOE-A-1995-26836](https://www.boe.es/buscar/act.php?id=BOE-A-1995-26836). La Ley General Tributaria solo aparece citada dentro de ella (por ejemplo, en el artículo 4, sobre responsabilidad civil), pero no está en el programa.

## La estructura de la ley

La LO 12/1995 se organiza en un título preliminar (definiciones, artículo 1) y dos títulos:

- **Título I, delito de contrabando** (arts. 2 a 10): tipificación, penas, responsabilidad civil, comiso e intervención de bienes.
- **Título II, infracciones administrativas** (arts. 11 a 16): clasificación, sanciones, graduación, competencia y prescripción.

## Delito o infracción: el criterio del valor

Es el punto en el que más conviene ser preciso. Según el artículo 2, cometen delito de contrabando quienes realicen ciertas conductas cuando el valor de los bienes alcance:

| Supuesto | Umbral de valor |
|---|---|
| Art. 2.1 (por ejemplo, importar o exportar mercancías de lícito comercio sin presentarlas en aduana) | 150.000 euros o más |
| Art. 2.2 (por ejemplo, géneros estancados o prohibidos, bienes del Patrimonio Histórico) | 50.000 euros o más |
| Art. 2.3.b (labores de tabaco) | 15.000 euros o más |

Además, es delito **con independencia del valor** cuando el objeto son drogas, estupefacientes, armas, explosivos y otros bienes del artículo 2.3.a, o cuando se actúa a través de una organización. También las acciones fraccionadas pueden sumarse (art. 2.4), y la imprudencia grave es punible (art. 2.5).

La pena base del artículo 3 es **prisión de uno a cinco años y multa del tanto al séxtuplo** del valor, con matices por apartado.

Por debajo de esos umbrales, la conducta es **infracción administrativa** (art. 11) y se clasifica en leve, grave o muy grave según el valor. Por ejemplo, en el caso general: leves por debajo de 37.500 euros, graves de 37.500 a 112.500 y muy graves por encima de 112.500.

Estas cifras son las del texto consolidado que hemos consultado. Comprueba siempre la versión vigente, porque se han modificado con los años.

## El Código Aduanero de la Unión

Es una norma europea de aplicación directa. Para estudiarlo, céntrate en los títulos del temario y en los conceptos que se repiten: mercancías, deuda aduanera, despacho a libre práctica, tránsito y exportación. No es un tema de memorizar importes, sino de entender el circuito de la mercancía.

## Cómo estudiarlo

- **Empieza por la LO 12/1995**: es corta y se entiende bien con una tabla de umbrales.
- **Practica con tests**: así sale el tema en [la prueba de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).
- **Haz un esquema delito/infracción** con sus cifras; es donde se confunde más.
- **Lee el Reglamento con el temario al lado**, para no estudiar títulos que no entran.
- No hay datos oficiales sobre cuántas preguntas se dedican a cada tema, así que no lo descuides por parecer pequeño.

Si quieres ver cómo encaja con el resto de materias, consulta el [temario de la oposición](/temario-guardia-civil) y [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este tema.

## Preguntas frecuentes

### ¿Entra la Ley General Tributaria?
No figura entre las normas del tema 23 en el temario oficial. Solo se cita dentro de la ley de contrabando.

### ¿Hay que saberse los importes del contrabando?
Los umbrales de valor son la base para distinguir delito e infracción, así que conviene dominarlos. Comprueba la versión consolidada vigente.

### ¿Es lo mismo contrabando que fraude fiscal?
No. El contrabando afecta a mercancías y a su paso por aduana o su tenencia sin acreditar licitud; el fraude fiscal es materia tributaria y penal distinta.

### ¿Quién sanciona las infracciones de contrabando?
El artículo 13 de la ley regula competencia, procedimiento y recursos. Consúltalo en el texto consolidado.',
   NULL, NULL, 'publicado', '2027-01-09T06:48:00.000Z', 'acceso-guardia-civil',
   ARRAY['derecho fiscal', 'contrabando', 'aduanas', 'temario']::text[], '{"title":"Derecho fiscal Guardia Civil: contrabando y aduanas","description":"Tema 23 de la oposición de Guardia Civil: LO 12/1995 de contrabando, Real Decreto 1649/1998 y Código Aduanero de la Unión. Qué entra y cómo estudiarlo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derecho-penal-para-guardia-civil-delito-penas-y-grados', 'articulo', 'Derecho Penal para Guardia Civil: delito, penas y grados de ejecución', 'Qué es un delito según el Código Penal, cómo se clasifican las penas, en qué se diferencian tentativa y consumación y quién responde como autor o cómplice. Un esquema de la parte general del tema de Derecho Penal para ordenarte el estudio.', 'El tema de Derecho Penal del programa se apoya en la Ley Orgánica 10/1995, del Código Penal ([BOE-A-1995-25444](https://www.boe.es/buscar/act.php?id=BOE-A-1995-25444)). **Respuesta corta:** un delito es una acción u omisión dolosa o imprudente penada por la ley (art. 10); las penas se clasifican en graves, menos graves y leves según su naturaleza y duración (art. 33); y el delito puede quedarse en grado de tentativa o llegar a consumarse (arts. 15 y 16).

Según el programa publicado, entran el Título Preliminar, varios títulos del Libro I (parte general) y una selección de títulos del Libro II (delitos concretos). Este artículo se centra en la parte general; el alcance exacto lo tienes en la [sección de temario](/temario-guardia-civil). Comprueba siempre el texto consolidado vigente en el BOE, porque el Código Penal se modifica con frecuencia.

## Garantías: el Título Preliminar

Son pocas ideas, pero muy preguntables:

- **Legalidad (art. 1):** no se castiga ninguna acción u omisión que no esté prevista como delito por una ley anterior a su perpetración.
- **Irretroactividad (art. 2):** no se castiga con pena no prevista antes. La excepción son las leyes penales que favorecen al reo, que sí tienen efecto retroactivo, incluso con sentencia firme.
- **Ejecución de la pena (art. 3):** solo en virtud de sentencia firme dictada por juez o tribunal competente.
- **Culpabilidad (art. 5):** no hay pena sin dolo o imprudencia.

## Qué es un delito

El artículo 10 lo define: **acciones y omisiones dolosas o imprudentes penadas por la ley**. Matices que conviene tener claros:

- La **imprudencia** solo se castiga cuando la ley lo dispone expresamente (art. 12).
- La **comisión por omisión** (art. 11) exige que no evitar el resultado infrinja un especial deber jurídico del autor y equivalga a causarlo. Existe, por ejemplo, cuando hay una obligación legal o contractual de actuar.
- El **error** (art. 14): el error invencible sobre un hecho constitutivo de la infracción excluye la responsabilidad; si es vencible, se castiga como imprudencia, en su caso.
- Los **menores de dieciocho años** no responden con arreglo al Código Penal, sino a la ley del menor (art. 19).

## Delitos graves, menos graves y leves

El artículo 13 clasifica los delitos según la pena que les corresponde, y el 33 define cada pena. Un resumen:

| Tipo | Ejemplos de pena (art. 33) |
|---|---|
| Graves | Prisión permanente revisable; prisión superior a cinco años; inhabilitación absoluta |
| Menos graves | Prisión de tres meses hasta cinco años; multa de más de tres meses; trabajos en beneficio de la comunidad de 31 días a un año |
| Leves | Multa de hasta tres meses; localización permanente de un día a tres meses; trabajos en beneficio de la comunidad de uno a treinta días |

Dos datos de duración: la prisión tiene una duración mínima de tres meses y máxima de veinte años, salvo lo que excepcionalmente dispongan otros preceptos (art. 36.2). Y son penas privativas de libertad la prisión permanente revisable, la prisión, la localización permanente y la responsabilidad personal subsidiaria por impago de multa (art. 35).

## Grados de ejecución

Este es el bloque que suele generar más dudas. Piensa en el camino del delito:

1. **Actos preparatorios** (arts. 17 y 18): la *conspiración* (dos o más personas se conciertan y resuelven ejecutarlo), la *proposición* (quien ha resuelto delinquir invita a otros) y la *provocación*. Solo se castigan en los casos que la ley prevea expresamente.
2. **Tentativa** (art. 16.1): el sujeto da principio a la ejecución directamente por hechos exteriores, practicando todos o parte de los actos que objetivamente deberían producir el resultado, pero este no se produce por causas independientes de su voluntad. Se castiga con la pena inferior en uno o dos grados a la del delito consumado (art. 62).
3. **Consumación:** se produce el resultado. Son punibles el delito consumado y la tentativa (art. 15).

Ojo con el **desistimiento** (art. 16.2): queda exento de responsabilidad por el delito intentado quien evita voluntariamente la consumación, bien desistiendo de la ejecución ya iniciada, bien impidiendo el resultado. Eso sí, sin perjuicio de la responsabilidad por los actos ya ejecutados si constituyen otro delito.

## Quién responde: autores y cómplices

Son responsables criminalmente de los delitos los **autores y los cómplices** (art. 27).

- **Autores** (art. 28): quienes realizan el hecho por sí solos, conjuntamente o por medio de otro del que se sirven como instrumento. También lo son quienes inducen directamente a otro a ejecutarlo y quienes cooperan con un acto sin el cual no se habría efectuado.
- **Cómplices** (art. 29): los que, sin ser autores, cooperan a la ejecución con actos anteriores o simultáneos.

## Eximentes, atenuantes y agravantes

- El **artículo 20** recoge las causas de exención, como la anomalía o alteración psíquica, la intoxicación plena, la legítima defensa o el estado de necesidad.
- El **artículo 21** enumera las circunstancias atenuantes (siete números, el último con la cláusula de «análoga significación»), entre ellas la confesión, la reparación del daño o la dilación extraordinaria e indebida del procedimiento.
- El **artículo 22** recoge las agravantes: alevosía, disfraz, precio, abuso de confianza, reincidencia, entre otras.

Cómo influyen en la pena lo regula el artículo 66.

## Cómo estudiarlo

- Haz un esquema de un folio con **definiciones literales** (delito, tentativa, conspiración, proposición, autor, cómplice), porque las diferencias están en las palabras.
- Memoriza los **umbrales de penas** del artículo 33 con una tabla propia.

Si te falta base jurídica, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te guía por el temario. Para ver cómo encaja el resto del bloque jurídico, tienes el artículo sobre [Derecho Civil en la oposición](/blog/derecho-civil-en-la-oposicion-a-guardia-civil), y para el contexto general, la [estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Preguntas frecuentes

### ¿Cuántos delitos hay que estudiar de la parte especial?

Solo los títulos del Libro II que selecciona el programa oficial; consulta el alcance exacto en la convocatoria y en el temario.

### ¿La tentativa se castiga igual que el delito consumado?

No: se impone la pena inferior en uno o dos grados (art. 62).

### ¿Se castiga siempre la conspiración?

No. La conspiración y la proposición para delinquir solo se castigan en los casos especialmente previstos en la ley (art. 17.3).

### ¿Responde penalmente un menor de 18 años?

No con arreglo al Código Penal; responde conforme a la ley que regula la responsabilidad penal del menor (art. 19).',
   NULL, NULL, 'publicado', '2026-12-16T06:00:00.000Z', 'acceso-guardia-civil',
   ARRAY['derecho penal', 'código penal', 'delito', 'penas', 'temario']::text[], '{"title":"Derecho Penal Guardia Civil: delito, penas y tentativa","description":"Parte general del Código Penal para la oposición a Guardia Civil: concepto de delito, clasificación de las penas, tentativa, autoría y circunstancias."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derechos-deberes-y-regimen-disciplinario-del-guardia-civil', 'articulo', '"Derechos, deberes y régimen disciplinario del guardia civil"', 'Dos leyes orgánicas de 2007 marcan qué puede y qué no puede hacer un guardia civil: la LO 11/2007, de derechos y deberes, y la LO 12/2007, de régimen disciplinario. Un mapa claro de ambas, con sus límites y sus sanciones.', '**Respuesta corta:** la Ley Orgánica 11/2007 regula los derechos y deberes de los miembros de la Guardia Civil, y la Ley Orgánica 12/2007 su régimen disciplinario (faltas muy graves, graves y leves, con sus sanciones). El guardia civil conserva sus derechos fundamentales, con límites propios de un Instituto Armado de naturaleza militar: sin sindicación, sin huelga y con neutralidad política.

Este resumen se basa en el texto consolidado del BOE: [LO 11/2007 (BOE-A-2007-18391)](https://www.boe.es/buscar/act.php?id=BOE-A-2007-18391) y [LO 12/2007 (BOE-A-2007-18392)](https://www.boe.es/buscar/act.php?id=BOE-A-2007-18392). Es una guía orientativa, no un sustituto de la ley: para estudiar, lee el texto vigente.

## Dónde encaja en la oposición

La LO 11/2007 (completa) figura en el alcance del tema 15 del programa, «Fuerzas y Cuerpos de Seguridad. Guardia Civil», en nuestro [temario](/temario-guardia-civil). El tema reúne también la LO 2/1986, que ya tratamos en [competencias de cada cuerpo](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada). No hay datos oficiales de qué se pregunta en cada convocatoria.

## LO 11/2007: derechos y deberes

### Derechos fundamentales, con límites

Los guardias civiles son titulares de los derechos fundamentales y libertades públicas de la Constitución, sin más límites que los de la Constitución, sus normas de desarrollo y esta ley (art. 2). Es el punto de partida; después vienen las particularidades:

- **Igualdad** (art. 3): sin discriminación en el régimen interno por nacimiento, raza, sexo, orientación sexual, religión, opinión u otra condición.
- **Intimidad e inviolabilidad del domicilio** (art. 5): el pabellón asignado se considera domicilio habitual.
- **Libertad de expresión** (art. 7): con los límites del régimen disciplinario, el secreto profesional y el respeto a las instituciones. En asuntos de servicio, también los de disciplina, neutralidad y reserva.
- **Reunión** (art. 8): no pueden asistir a manifestaciones o reuniones vistiendo el uniforme ni portando armas.
- **Asociación** (art. 9): pueden constituir asociaciones profesionales, que no pueden hacer actividades políticas o sindicales.
- **Sufragio** (art. 10): votan, pero no tienen sufragio pasivo en los términos de la legislación electoral general.
- **No pueden sindicarse** (art. 11) **ni hacer huelga** (art. 12).
- **Petición** (art. 13): solo de forma individual. También pueden dirigirse al Defensor del Pueblo (art. 14).

### Deberes

- **Respeto a la Constitución y al ordenamiento jurídico**, protección del libre ejercicio de derechos y libertades y garantía de la seguridad ciudadana (art. 15).
- **Jerarquía, disciplina y subordinación** (art. 16), pero la obediencia debida nunca ampara órdenes que supongan un delito manifiesto o sean contrarias a la Constitución o a las leyes.
- **Respeto a la vida y la integridad** y estricto cumplimiento de las normas sobre el uso legítimo de la fuerza (art. 17).
- **Neutralidad política y sindical e imparcialidad** (art. 18): no pueden afiliarse a partidos ni sindicatos.
- **Reserva y secreto profesional** (art. 19).
- **Cooperación en catástrofes y estados excepcionales** (art. 20): presentarse en su destino o en el más próximo.
- **Residencia y localización** (art. 21), **incompatibilidades** (art. 22) y **reconocimientos psicofísicos** (art. 23).

La ley añade derechos y deberes a la vez (defender España, art. 24; uniforme y armas, art. 25), derechos profesionales (carrera, horario, vacaciones, retribuciones) y regula las asociaciones profesionales y el Consejo de la Guardia Civil.

## LO 12/2007: régimen disciplinario

### Tres clases de faltas

La ley distingue faltas **muy graves, graves y leves** (art. 6); las muy graves lo son siempre que no constituyan delito (art. 7). Algunos ejemplos reales de su articulado:

| Clase | Ejemplos |
| --- | --- |
| Muy graves | Violar la neutralidad política o sindical; discriminación o acoso; trato inhumano o degradante a personas bajo custodia; omisión de urgente auxilio; participar en huelgas; prestar servicio embriagado o bajo estupefacientes. |
| Graves | Abuso de autoridad; falta de subordinación; informes o partes que no se ajusten a la realidad; superar 0,3 g/l de alcohol en sangre o 0,15 mg/l en aire espirado al inicio o durante el servicio. |
| Leves | Desconsideración o incorrección; retraso o negligencia en deberes; descuido en el aseo o en la uniformidad; incumplimiento del horario o falta de puntualidad. |

### Sanciones

| Falta | Sanciones previstas (art. 11) |
| --- | --- |
| Muy grave | Separación del servicio; suspensión de empleo de 3 meses y 1 día a 6 años; pérdida de puestos en el escalafón |
| Grave | Suspensión de empleo de 1 a 3 meses; pérdida de 5 a 20 días de haberes con suspensión de funciones; pérdida de destino |
| Leve | Reprensión; pérdida de 1 a 4 días de haberes con suspensión de funciones |

El preámbulo destaca que el arresto desapareció del cuadro de sanciones. Las sanciones se gradúan por proporcionalidad: intencionalidad, reincidencia, incidencia sobre la seguridad ciudadana, etc. (art. 19). Una amonestación verbal del superior en el ejercicio del mando **no** es sanción (art. 17).

### Prescripción

Las faltas prescriben a los **tres años** (muy graves), **dos años** (graves) y **seis meses** (leves), contados desde que se cometen (art. 21).

### Alumnos de los centros de formación

Los alumnos de los Centros Docentes de Formación están sujetos a la ley en lo que les sea aplicable (art. 2) y tienen un régimen específico de sanciones (art. 18).

## Cómo estudiarlo

Lee primero el texto, título a título, y memoriza las cifras clave: tres clases de faltas, tres plazos de prescripción y los topes de cada sanción. Comprueba siempre la versión consolidada vigente, porque la norma puede reformarse. Este tema se prepara mejor junto con la [deontología profesional](/blog/deontologia-profesional-el-codigo-de-conducta-que-entra) y con [la historia del Cuerpo](/blog/historia-de-la-guardia-civil-del-duque-de-ahumada-a-hoy).

## Preguntas frecuentes

### ¿Puede un guardia civil afiliarse a un sindicato?
No. La LO 11/2007 les prohíbe ejercer el derecho de sindicación (art. 11) y de huelga (art. 12). Sí pueden constituir asociaciones profesionales.

### ¿Cuánto prescribe una falta leve?
A los seis meses, según el art. 21 de la LO 12/2007.

### ¿Dónde preparo esta parte del temario?
En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil), con tests y simulacros por temas.',
   NULL, NULL, 'publicado', '2027-01-19T06:38:00.000Z', 'acceso-guardia-civil',
   ARRAY['derechos y deberes', 'régimen disciplinario', 'temario', 'normativa']::text[], '{"title":"Derechos y deberes del guardia civil: LO 11/2007 y 12/2007","description":"Resumen de la LO 11/2007 de derechos y deberes y la LO 12/2007 de régimen disciplinario de la Guardia Civil: límites, faltas, sanciones y prescripción."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derechos-fundamentales-libertades-publicas-guardia-civil', 'articulo', 'Derechos fundamentales y libertades públicas: lo que tienes que dominar para el examen', 'El Título I de la Constitución es de los que más se estudia y más se confunde. Cómo está organizado, qué recoge cada artículo del 15 al 29, qué garantías tiene cada grupo de derechos y cuáles se pueden suspender en estado de excepción o de sitio.', 'El Título I de la Constitución, «De los derechos y deberes fundamentales» (artículos 10 a 55), es uno de los bloques que más conviene tener ordenado. Su dificultad está en que **no todos los derechos tienen las mismas garantías**, y ahí se pierden muchos aspirantes.

Te lo explicamos con un esquema para memorizar. Todo se basa en el texto de la Constitución ([BOE-A-1978-31229](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)). Para ponerte a prueba después, tienes un [test de 20 preguntas](/blog/test-constitucion-20-preguntas-guardia-civil).

## Cómo está organizado el Título I

| Capítulo | Contenido | Artículos |
|---|---|---|
| Primero | De los españoles y los extranjeros | 11 a 13 |
| Segundo | Derechos y libertades | 14 a 38 |
| Tercero | Principios rectores de la política social y económica | 39 a 52 |
| Cuarto | Garantías de las libertades y derechos fundamentales | 53 y 54 |
| Quinto | Suspensión de los derechos y libertades | 55 |

El Capítulo segundo se divide en dos secciones, y **la distinción es clave**:

- **Sección 1.ª** (arts. 15 a 29): *derechos fundamentales y libertades públicas*.
- **Sección 2.ª** (arts. 30 a 38): *derechos y deberes de los ciudadanos*.

El artículo **14** (igualdad ante la ley) abre el Capítulo segundo y tiene las mismas garantías que la Sección 1.ª.

## Qué recoge cada artículo de la Sección 1.ª

| Art. | Contenido |
|---|---|
| 15 | Derecho a la vida y a la integridad física y moral. Prohíbe la tortura y los tratos inhumanos o degradantes. Abolición de la pena de muerte (salvo lo que dispongan las leyes penales militares en tiempo de guerra) |
| 16 | Libertad ideológica, religiosa y de culto. Nadie puede ser obligado a declarar sobre su ideología, religión o creencias |
| 17 | Libertad y seguridad. Detención preventiva de máximo **72 horas**. Derechos del detenido. *Habeas corpus* |
| 18 | Honor, intimidad personal y familiar y propia imagen. Inviolabilidad del domicilio. Secreto de las comunicaciones. Límites al uso de la informática |
| 19 | Libertad de residencia y de circulación por el territorio nacional, y de entrar y salir de España |
| 20 | Libertad de expresión, de producción y creación literaria, artística, científica y técnica, de cátedra y de información veraz. Prohíbe la censura previa |
| 21 | Derecho de reunión pacífica y sin armas |
| 22 | Derecho de asociación. Prohíbe las asociaciones secretas y las de carácter paramilitar |
| 23 | Participación en los asuntos públicos y acceso a las funciones públicas en condiciones de igualdad |
| 24 | Tutela judicial efectiva, juez ordinario predeterminado por la ley, defensa, presunción de inocencia |
| 25 | Principio de legalidad penal. Las penas privativas de libertad se orientan a la reeducación y reinserción social |
| 26 | Prohíbe los tribunales de honor en la Administración civil y en las organizaciones profesionales |
| 27 | Derecho a la educación y libertad de enseñanza. La enseñanza básica es obligatoria y gratuita |
| 28 | Libertad sindical y derecho de huelga |
| 29 | Derecho de petición individual y colectiva, por escrito |

Dos detalles que suelen caer, y que afectan directamente a la Guardia Civil:

- **Sindicación (art. 28.1):** la ley podrá limitar o exceptuar su ejercicio a las Fuerzas o Institutos armados o a los demás Cuerpos sometidos a disciplina militar.
- **Petición (art. 29.2):** los miembros de las Fuerzas o Institutos armados o de los Cuerpos sometidos a disciplina militar solo podrán ejercerlo **individualmente**.

## Los detalles del artículo 17

Es uno de los más importantes para esta oposición:

- La detención preventiva **no puede durar más del tiempo estrictamente necesario** para el esclarecimiento de los hechos y, **en todo caso, 72 horas**: pasado ese plazo, el detenido debe ser puesto en libertad o a disposición judicial.
- Toda persona detenida debe ser informada de forma inmediata y comprensible de sus derechos y de las razones de su detención, y **no puede ser obligada a declarar**.
- Tiene derecho a la **asistencia de abogado** en las diligencias policiales y judiciales.
- La ley regulará un procedimiento de ***habeas corpus*** para poner de inmediato a disposición judicial a toda persona detenida ilegalmente.

## Las garantías: tres niveles

Este es el esquema que más se pregunta (art. 53).

| Grupo | Garantías |
|---|---|
| **Art. 14, Sección 1.ª y objeción de conciencia (art. 30)** | Tutela ante los tribunales ordinarios por un procedimiento **preferente y sumario**, y **recurso de amparo** ante el Tribunal Constitucional |
| **Resto del Capítulo segundo** (Sección 2.ª) | Vinculan a todos los poderes públicos; solo por ley que respete su contenido esencial puede regularse su ejercicio. **Sin amparo** |
| **Capítulo tercero** (principios rectores) | Informan la legislación, la práctica judicial y la actuación de los poderes públicos; solo pueden alegarse ante la jurisdicción ordinaria **según lo que dispongan las leyes que los desarrollen** |

Además, el **Defensor del Pueblo** (art. 54) es el alto comisionado de las Cortes Generales para la defensa de los derechos del Título I.

## Las leyes orgánicas

El desarrollo de los **derechos fundamentales y de las libertades públicas** se hace por **ley orgánica** (art. 81.1), y su aprobación, modificación o derogación exige **mayoría absoluta del Congreso en una votación final sobre el conjunto del proyecto** (art. 81.2).

## La suspensión de derechos: el artículo 55

Algunos derechos se pueden suspender cuando se declare el **estado de excepción o de sitio**. Son los de los artículos:

- **17** (libertad y seguridad), con la excepción de su apartado 3 en estado de excepción,
- **18.2 y 18.3** (inviolabilidad del domicilio y secreto de las comunicaciones),
- **19** (residencia y circulación),
- **20.1.a) y d), y 20.5** (expresión e información; secuestro de publicaciones),
- **21** (reunión),
- **28.2** (huelga) y
- **37.2** (conflicto colectivo).

Aparte, una **ley orgánica** puede determinar los casos en que, de forma individual, con intervención judicial y control parlamentario, se suspendan los derechos de los **artículos 17.2 y 18.2 y 18.3** en relación con investigaciones sobre **bandas armadas o elementos terroristas** (art. 55.2). El uso injustificado o abusivo de estas facultades produce responsabilidad penal.

## Cómo memorizarlo

1. **Aprende el esquema** de capítulos y secciones antes de los artículos.
2. **Memoriza los números clave**: 72 horas, 4 vías de garantías, los artículos suspendibles.
3. **Haz una tabla propia** con cada artículo y una palabra clave.
4. **Practica con tests** y anota los fallos.

Después, sigue con la Corona y las Cortes Generales, que son el tema del próximo artículo de la serie.

## Preguntas frecuentes

### ¿Qué artículos forman la Sección 1.ª del Capítulo segundo?

Del 15 al 29: los derechos fundamentales y las libertades públicas.

### ¿Todos los derechos tienen recurso de amparo?

No. Solo el artículo 14, la Sección 1.ª del Capítulo segundo y la objeción de conciencia del artículo 30.

### ¿Cuánto puede durar la detención preventiva?

El tiempo estrictamente necesario y, como máximo, 72 horas.

### ¿Qué mayoría exige una ley orgánica?

Mayoría absoluta del Congreso en una votación final sobre el conjunto del proyecto.',
   NULL, NULL, 'publicado', '2026-12-07T06:27:00.000Z', 'acceso-guardia-civil',
   ARRAY['Constitución', 'derechos fundamentales', 'Título I', 'garantías']::text[], '{"title":"Derechos fundamentales: artículos 15 a 29 explicados","description":"Derechos fundamentales y libertades públicas (arts. 15-29 CE): esquema del Título I, qué recoge cada artículo, garantías y suspensión del art. 55."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('derechos-humanos-en-el-temario-declaracion-universal', 'articulo', 'Derechos Humanos en el temario: Declaración Universal y Convenio Europeo', 'El tema 1 del programa reúne textos de Naciones Unidas y del Consejo de Europa. Te explicamos qué es la Declaración Universal de 1948, cómo está organizado el Convenio Europeo de Derechos Humanos y cómo se conectan con la Constitución española.', 'El tema 1 del programa de la Escala de Cabos y Guardias se llama «Derechos Humanos» y es, más que un tema de memoria pura, un tema de **ubicar cada texto en su sitio**: quién lo aprobó, qué contiene y qué órgano lo protege. **Respuesta corta:** la Declaración Universal de Derechos Humanos es de Naciones Unidas (1948, 30 artículos), y el Convenio Europeo de Derechos Humanos es del Consejo de Europa (1950) y cuenta con un tribunal propio.

El alcance exacto del tema está en nuestro [temario](/temario-guardia-civil) (Resolución de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Además de los dos textos del título, incluye la Carta de la ONU (sus órganos), los Pactos Internacionales, la Carta Social Europea revisada, la Convención contra la Tortura, la Carta de los Derechos Fundamentales de la UE, el Estatuto de Roma y el Defensor del Pueblo. Aquí nos centramos en los dos grandes.

## La Declaración Universal de Derechos Humanos

- **Qué es:** una declaración proclamada por la Asamblea General de las Naciones Unidas en **París, el 10 de diciembre de 1948**, mediante la Resolución 217 A (III), según la [página oficial de la ONU](https://www.un.org/es/about-us/universal-declaration-of-human-rights).
- **Extensión:** 30 artículos.
- **Idea central:** todos los seres humanos nacen libres e iguales en dignidad y derechos (art. 1) y los derechos corresponden a todas las personas sin discriminación (art. 2).

### Cómo ordenarla

| Artículos | Contenido |
|---|---|
| 1 y 2 | Dignidad, igualdad y no discriminación |
| 3 a 21 | Derechos civiles y políticos (vida, libertad y seguridad; prohibición de la tortura; no detención arbitraria; presunción de inocencia; intimidad; libertad de pensamiento, de expresión, de reunión y de asociación; participación política) |
| 22 a 27 | Derechos económicos, sociales y culturales (seguridad social, trabajo, nivel de vida adecuado, educación) |
| 28 a 30 | Orden social e internacional, deberes con la comunidad y límites a los derechos |

Algunos artículos clave: el 3 (vida, libertad y seguridad), el 5 (tortura y tratos crueles, inhumanos o degradantes), el 9 (nadie puede ser detenido arbitrariamente), el 11 (presunción de inocencia) y el 12 (vida privada).

### Su peso en España

El artículo 10.2 de la Constitución dice que las normas sobre derechos fundamentales y libertades se interpretarán **de conformidad con la Declaración Universal de Derechos Humanos y los tratados y acuerdos internacionales sobre las mismas materias ratificados por España**. Y según el artículo 96.1, los tratados válidamente celebrados y publicados oficialmente forman parte del ordenamiento interno ([BOE-A-1978-31229](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)). Por eso este tema enlaza con los [derechos fundamentales del Título I](/blog/derechos-fundamentales-libertades-publicas-guardia-civil) y con el resto de [la Constitución](/blog/constitucion-oposicion-guardia-civil).

## El Convenio Europeo de Derechos Humanos

- **Qué es:** el Convenio para la Protección de los Derechos Humanos y de las Libertades Fundamentales, hecho en **Roma el 4 de noviembre de 1950**, en el marco del Consejo de Europa.
- **España:** lo ratificó el 26 de septiembre de 1979 y entró en vigor para nuestro país el **4 de octubre de 1979** ([BOE-A-1979-24010](https://www.boe.es/buscar/act.php?id=BOE-A-1979-24010)).
- **Estructura:** el Título I recoge los derechos y libertades; después se regula el Tribunal Europeo de Derechos Humanos.

### Algunos derechos y su artículo

| Art. | Derecho |
|---|---|
| 2 | Derecho a la vida |
| 3 | Prohibición de la tortura y de las penas o tratos inhumanos o degradantes |
| 4 | Prohibición de la esclavitud y del trabajo forzado |
| 5 | Derecho a la libertad y a la seguridad |
| 6 | Derecho a un proceso equitativo |
| 7 | No hay pena sin ley |
| 8 | Respeto de la vida privada y familiar, del domicilio y de la correspondencia |
| 9 | Libertad de pensamiento, de conciencia y de religión |
| 10 | Libertad de expresión |
| 11 | Libertad de reunión y de asociación |
| 12 | Derecho a contraer matrimonio |
| 13 | Derecho a un recurso efectivo |
| 14 | Prohibición de discriminación |

Este cuadro está comprobado con el texto publicado en el BOE, pero el Convenio tiene protocolos que han añadido derechos y modificado parte del texto original (por ejemplo, los Protocolos 11, 14 y 15). Para el examen, ten siempre delante el texto oficial actualizado.

### El Tribunal Europeo de Derechos Humanos

Según el texto vigente del Convenio, publicado por el propio Tribunal:

- Tiene **un número de jueces igual al de las Altas Partes Contratantes** (art. 20).
- Los jueces son elegidos por **nueve años y no son reelegibles** (art. 23).
- Actúa en juez único, en comités de tres jueces, en Salas de siete o en una **Gran Sala de diecisiete** (art. 26).
- Para acudir a él hay que haber **agotado las vías internas** y presentar la demanda en el plazo de **cuatro meses** desde la decisión interna definitiva (art. 35).

Ojo con este último dato: el texto original que ratificó España hablaba de seis meses y fue modificado por el Protocolo n.º 15. Es un buen ejemplo de por qué conviene estudiar siempre con textos actualizados.

## Cómo estudiarlo

1. **Haz un cuadro de «texto, organismo, fecha»**: Declaración Universal (ONU, 1948), Convenio Europeo (Consejo de Europa, 1950), y así con cada norma del programa.
2. **Memoriza la numeración** de los derechos más repetidos del Convenio (2, 3, 5, 6, 8, 10 y 11).
3. **No mezcles organizaciones.** El Tribunal de Estrasburgo es del Consejo de Europa; no es una institución de la Unión Europea. Lo desarrollaremos en el artículo sobre instituciones internacionales.
4. Si preparas todo el programa, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te da una ruta ordenada por temas.

## Preguntas frecuentes

### ¿Cuántos artículos tiene la Declaración Universal de Derechos Humanos?
Treinta, proclamados por la Asamblea General de la ONU en París el 10 de diciembre de 1948.

### ¿Quién protege el Convenio Europeo de Derechos Humanos?
El Tribunal Europeo de Derechos Humanos, dentro del sistema del Consejo de Europa. Antes de acudir a él hay que agotar las vías de recurso internas.

### ¿Tiene valor la Declaración Universal en España?
La Constitución (art. 10.2) obliga a interpretar las normas sobre derechos fundamentales de conformidad con ella y con los tratados ratificados por España.

### ¿Cuántos temas del programa se dedican a esto?
Es el tema 1 del programa de la convocatoria de 2026. No hay datos oficiales del número de preguntas por tema, así que lo prudente es estudiarlo entero.',
   NULL, NULL, 'publicado', '2026-12-10T06:18:00.000Z', 'acceso-guardia-civil',
   ARRAY['derechos humanos', 'Declaración Universal', 'Convenio Europeo', 'temario']::text[], '{"title":"Derechos Humanos: Declaración Universal y Convenio Europeo","description":"Derechos Humanos para la oposición: Declaración Universal de 1948 (30 artículos), Convenio Europeo y Tribunal de Estrasburgo, y su relación con la CE."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('detencion-y-habeas-corpus-los-plazos-que-caen-siempre', 'articulo', 'Detención y habeas corpus: los plazos que tienes que conocer', 'Setenta y dos horas, veinticuatro horas, tres horas, cinco días. Repaso los plazos y derechos de la detención (art. 17 CE y art. 520 LECrim) y el procedimiento de habeas corpus de la Ley Orgánica 6/1984, con las cifras verificadas en el BOE.', 'La detención es uno de los bloques más prácticos del temario jurídico, y el que más se parece a lo que un guardia civil hace en la calle. **Respuesta corta:** la detención preventiva dura lo estrictamente necesario y, en todo caso, un máximo de **72 horas**, tras las cuales el detenido debe ser puesto en libertad o a disposición de la autoridad judicial (art. 17.2 de la Constitución y art. 520.1 de la LECrim). El *habeas corpus* es el procedimiento para que un juez verifique de inmediato si una detención es legal.

Las fuentes son la [Constitución](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229), la [Ley de Enjuiciamiento Criminal](https://www.boe.es/buscar/act.php?id=BOE-A-1882-6036) y la [LO 6/1984, de Habeas Corpus](https://www.boe.es/buscar/act.php?id=BOE-A-1984-11620). Si todavía no has repasado el artículo 17, empieza por el artículo sobre los [derechos fundamentales](/blog/derechos-fundamentales-libertades-publicas-guardia-civil).

## Los plazos que tienes que conocer

| Plazo | Qué es | Dónde |
|---|---|---|
| 72 horas | Máximo de la detención preventiva hasta libertad o puesta a disposición judicial | Art. 17.2 CE; art. 520.1 LECrim |
| 24 horas | El particular, autoridad o agente que detiene debe poner en libertad o entregar al juez más próximo; la demora superior a 24 horas lleva la responsabilidad del Código Penal | Art. 496 LECrim |
| 72 horas | El juez que recibe al detenido lo eleva a prisión o lo deja sin efecto | Art. 497 LECrim |
| 3 horas | Plazo máximo para que el abogado designado acuda al centro de detención desde que recibe el encargo | Art. 520.5 LECrim |
| 24 horas | Plazo en que el juez resuelve el procedimiento de habeas corpus tras el auto de incoación | Art. 7 LO 6/1984 |
| 5 días | Duración máxima de la incomunicación, prorrogable en ciertos casos | Art. 509 LECrim |

El artículo 496 fija las 24 horas de entrega al juez más próximo; el 520 recuerda que la detención no puede durar más de lo necesario y que las 72 horas son el techo. Cómo se articulan conviene trabajarlo con el temario y con casos.

## Los derechos del detenido (art. 520.2 LECrim)

Todo detenido debe ser informado **por escrito, en lenguaje sencillo y accesible, en una lengua que comprenda y de forma inmediata**, de los hechos que se le atribuyen, de las razones de su privación de libertad y de sus derechos, en especial:

- Guardar silencio, no contestar a alguna pregunta o declarar solo ante el juez.
- No declarar contra sí mismo y no confesarse culpable.
- Designar abogado y ser asistido por él sin demora injustificada.
- Acceder a los elementos de las actuaciones esenciales para impugnar la legalidad de la detención.
- Que se ponga en conocimiento de un familiar o persona que desee su detención y el lugar de custodia; los extranjeros pueden pedir que se comunique a su consulado.
- Comunicarse telefónicamente con un tercero de su elección, en presencia de un funcionario de policía.
- Ser visitado por las autoridades consulares de su país.
- Intérprete gratuito si no comprende o no habla la lengua de la actuación.
- Ser reconocido por un médico forense o, en su defecto, por otro facultativo dependiente de las Administraciones.
- Solicitar asistencia jurídica gratuita.

Además, se le informa del plazo máximo legal de la detención y del procedimiento para impugnar su legalidad. En el atestado debe constar el lugar y la hora de la detención y de la puesta a disposición judicial o de la libertad (art. 520.1).

Algunos detalles muy concretos:

- **Abogado de oficio:** si el detenido no designa abogado, será asistido por uno de oficio, y ninguna autoridad o agente puede hacerle recomendaciones sobre quién designar.
- **Renuncia al abogado:** solo es posible si la detención lo es por hechos susceptibles de tipificarse exclusivamente como delitos contra la seguridad del tráfico, y con información clara previa (art. 520.8).
- **Menores:** se ponen a disposición de las Secciones de Menores de la Fiscalía y se comunica a quienes ejerzan la patria potestad, tutela o guarda de hecho (art. 520.4).

## Incomunicación y detenciones especiales

La incomunicación es excepcional, la acuerda el juez mediante resolución motivada y exige necesidad urgente de evitar graves consecuencias para la vida, libertad o integridad de una persona, o de evitar comprometer gravemente el proceso (art. 509). No puede extenderse más de cinco días, ampliables en otros cinco en los casos de bandas armadas, terrorismo u otros delitos cometidos de forma organizada. **No se puede incomunicar a menores de dieciséis años.** El artículo 527 detalla qué derechos pueden restringirse.

Para los delitos relacionados con bandas armadas o individuos terroristas (art. 384 bis), el artículo 520 bis permite prolongar la detención hasta otras 48 horas, con solicitud motivada dentro de las primeras 48 horas y autorización judicial en las 24 siguientes. Enlaza con el artículo 55.2 de la Constitución.

## El habeas corpus (LO 6/1984)

Sirve para obtener la **inmediata puesta a disposición judicial** de cualquier persona detenida ilegalmente. Se consideran ilegalmente detenidas (art. 1):

1. Quienes lo sean sin que concurran los supuestos legales o sin las formalidades exigidas.
2. Quienes estén ilícitamente internados en cualquier establecimiento o lugar.
3. Quienes lo estén por plazo superior al señalado en las leyes sin ser liberados o entregados al juez más próximo.
4. Quienes no vean respetados los derechos que la Constitución y las leyes procesales garantizan a todo detenido.

Puntos clave:

- **Competencia (art. 2):** el juez de instrucción del lugar donde se encuentre la persona; el Juez Central de Instrucción en los casos del artículo 55.2 CE; y en el ámbito militar, el Juez Togado Militar de Instrucción.
- **Quién puede instarlo (art. 3):** el privado de libertad, su cónyuge o persona unida por análoga relación de afectividad, descendientes, ascendientes, hermanos y representantes legales, el Ministerio Fiscal y el Defensor del Pueblo; el juez también puede iniciarlo de oficio.
- **Sin formalismos (art. 4):** escrito o comparecencia, sin abogado ni procurador.
- **Deber de los agentes (art. 5):** poner **inmediatamente** en conocimiento del juez la solicitud de la persona bajo su custodia; si no lo hacen, serán apercibidos sin perjuicio de otras responsabilidades.
- **Resolución (arts. 7 y 8):** en 24 horas desde el auto de incoación. El juez archiva si la privación de libertad es conforme a Derecho o acuerda la libertad, la continuación con cambios o la puesta inmediata a disposición judicial.

Para memorizarlo, haz una tabla propia (plazo, artículo, qué ocurre al vencer). Si quieres apoyo, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye el temario jurídico.

## Preguntas frecuentes

### ¿Cuánto puede durar una detención?

El tiempo estrictamente necesario y, en todo caso, 72 horas como máximo (art. 17.2 CE y art. 520.1 LECrim), con la prórroga específica del artículo 520 bis en los casos previstos.

### ¿Se necesita abogado para pedir el habeas corpus?

No: basta un escrito o una comparecencia, sin abogado ni procurador (art. 4 LO 6/1984).

### ¿Puede renunciar el detenido al abogado?

Solo en detenciones por delitos exclusivamente contra la seguridad del tráfico y con información previa suficiente (art. 520.8).

### ¿Quién resuelve el habeas corpus?

El juez de instrucción competente, en 24 horas desde el auto de incoación.',
   NULL, NULL, 'publicado', '2026-12-17T06:17:00.000Z', 'acceso-guardia-civil',
   ARRAY['detención', 'habeas corpus', 'LECrim', 'artículo 17', 'derecho procesal']::text[], '{"title":"Detención y habeas corpus: plazos y derechos (art. 520)","description":"Plazos de la detención (72 horas), derechos del detenido del art. 520 LECrim y procedimiento de habeas corpus de la LO 6/1984, con el texto del BOE."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('edad-maxima-guardia-civil', 'articulo', 'Edad máxima para ser Guardia Civil: de 18 a 40 y cómo se cuenta', 'Puedes presentarte a la Guardia Civil si cumples 18 años durante el año de la convocatoria y no cumples 41 en ese mismo año. Te explicamos cómo se cuenta, con ejemplos por año de nacimiento, y qué hacer si vas justo de edad.', '«¿Llego a tiempo?» Es la pregunta que se hacen quienes se plantean la oposición pasados los treinta, y también los que todavía están en el instituto. La respuesta está en dos líneas de la convocatoria, pero se malinterpretan muchísimo.

La versión corta: **para la convocatoria de 2026 tenías que cumplir 18 años en algún momento de 2026 y no cumplir 41 en ningún momento de 2026.** La edad se cuenta por año natural, no por la fecha de tu cumpleaños ni por el último día del plazo.

## ¿Qué dice exactamente la convocatoria?

Las bases de la convocatoria de 2026 para la Escala de Cabos y Guardias ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) fijan la edad en dos requisitos:

- **Base 2.1.6:** tener cumplidos 18 años en el año 2026. Y aclara que lo cumple quien haga los 18 durante 2026.
- **Base 2.1.7:** no superar durante 2026 la edad de 40 años, es decir, no haber cumplido ni cumplir durante 2026 los 41.

Las dos frases funcionan igual: lo que cuenta es **el año en el que cumples**, no el día.

## La edad se cuenta por año natural, no por cumpleaños

Este es el matiz que más confusión genera. En muchos foros se lee que la edad se mira «el último día del plazo de solicitudes». Para la edad, no es así: la convocatoria de 2026 la refiere al año completo.

En la práctica:

- Si cumples 18 años el 31 de diciembre del año de la convocatoria, **puedes presentarte**, aunque hagas el examen con 17.
- Si cumples 41 años el 2 de enero del año de la convocatoria, **no puedes presentarte**, aunque al cerrar el plazo todavía tengas 40.

## Tabla rápida: ¿puedo presentarme según mi año de nacimiento?

Aplicando las bases de 2026:

| Año de nacimiento | Edad que cumples en 2026 | ¿Podías presentarte en 2026? |
|---|---|---|
| 2009 | 17 | No: aún no cumples 18 ese año |
| 2008 | 18 | Sí |
| 1990 | 36 | Sí |
| 1986 | 40 | Sí: es el último año con margen |
| 1985 | 41 | No: cumples 41 durante 2026 |

Para la próxima convocatoria, si mantiene el mismo criterio, basta con sumar un año a todo: podrá presentarse quien cumpla entre 18 y 40 años durante el año de esa convocatoria.

## ¿Ha cambiado la edad máxima en los últimos años?

La edad máxima la fija cada convocatoria, apoyándose en la normativa de acceso. Por eso **la referencia siempre es el BOE del año en el que te presentas**, no un artículo antiguo ni lo que le pasó a un conocido hace cinco años. Cuando se publique la convocatoria siguiente, revisa las bases 2.1.6 y 2.1.7 (o las equivalentes) antes de hacer nada más.

## ¿Qué pasa si voy justo de edad?

Si estás en el último año en el que puedes presentarte, tu situación cambia en tres cosas:

1. **Solo tienes una oportunidad.** No hay convocatoria de reserva: si no apruebas ese año, el siguiente ya no puedes. Eso obliga a planificar como si fuera un examen final, no un primer intento para «ver cómo es».
2. **Empieza por lo que más pesa.** La prueba de conocimientos vale 100 de los 150 puntos de la fase de oposición. Si vas justo de tiempo, el grueso de tus horas tiene que ir ahí, sin descuidar [el inglés](/blog/ingles-oposicion-guardia-civil) y [el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).
3. **Revisa los méritos que ya tienes.** La fase de concurso suma hasta 45 puntos y, con más edad, es habitual tener titulaciones, idiomas o experiencia que puntúan. Te lo contamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

Y no olvides el resto de requisitos: titulación, carné B, cuadro médico… Los tienes todos en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil), y puedes comprobarlos en un minuto con nuestro [comprobador de requisitos](/requisitos-guardia-civil).

## ¿Y si tengo 17 años?

Si cumples los 18 durante el año de la convocatoria, puedes presentarte aunque hagas el examen siendo menor. Si todavía te queda un año o más, tienes una ventaja enorme: tiempo para preparar el temario sin prisas y para entrenar las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) desde la base.

Si eres más joven y te interesa entrar cuanto antes, existe otra vía: el [Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil), con su propio proceso y sus propios requisitos de edad.

## La edad no puntúa, pero sí desempata

La edad no suma ni resta puntos. Solo aparece en un caso: **si dos aspirantes empatan en la puntuación final**, la convocatoria (base 7.10) desempata por este orden: más nota en conocimientos generales, más nota en inglés, más nota en aptitudes intelectuales y, por último, la mayor edad.

## Qué hacer hoy

- Calcula en qué año cumples 41. Esa es tu fecha límite real.
- Cuenta cuántas convocatorias te quedan y planifica en función de eso.
- Si vas justo, no esperes a que salga la convocatoria para empezar: el temario no se prepara en los meses que hay entre la publicación y el examen.

Si quieres preparar la oposición con un plan claro, tienes todo en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuál es la edad máxima para entrar en la Guardia Civil?

En la convocatoria de 2026, no cumplir 41 años durante 2026. Es decir, podías presentarte si cumplías como máximo 40 años ese año.

### ¿Se cuenta la edad el último día del plazo de solicitudes?

No. La convocatoria de 2026 cuenta la edad por año natural: importa en qué año cumples los 18 y los 41, no la fecha exacta del cumpleaños ni el cierre del plazo.

### ¿Puedo presentarme con 17 años?

Sí, si cumples los 18 durante el año de la convocatoria. Puedes hacer el examen siendo todavía menor de edad.

### ¿Puntúa la edad en la Guardia Civil?

No suma puntos. Solo se usa como último criterio de desempate: a igualdad de nota final, pasa el aspirante de mayor edad.',
   NULL, NULL, 'publicado', '2026-11-11T06:05:00.000Z', 'acceso-guardia-civil',
   ARRAY['edad', 'requisitos', 'convocatoria']::text[], '{"title":"Edad máxima Guardia Civil 2026: cómo se cuenta","description":"Edad máxima y mínima para ser Guardia Civil según la convocatoria 2026: de 18 a 40 años por año natural. Tabla por año de nacimiento y casos dudosos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('empezar-la-oposicion-a-guardia-civil-en-enero-da-tiempo', 'articulo', 'Empezar la oposición a Guardia Civil en enero: ¿da tiempo?', 'Empezar en enero no garantiza ni descarta nada. Qué calendario siguió la convocatoria de 2026, cómo calcular tu margen con datos reales y qué debes priorizar si te pones hoy, sin promesas de plazos.', '**Respuesta corta:** puede dar tiempo o no, y nadie serio puede asegurártelo sin conocer tu punto de partida, tus horas reales y la fecha de la convocatoria, que aún no está publicada. Lo que sí puedes hacer es calcular tu margen con datos y decidir con cabeza.

## El calendario de referencia: la convocatoria de 2026

Es lo único verificable. Según la convocatoria ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), publicada en el BOE el 8 de mayo de 2026, el plazo de solicitud fue de **15 días hábiles**. La relación definitiva de admitidos se publicó el 30 de junio ([BOE-A-2026-14447](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-14447)) y la de propuestos el 6 de octubre ([BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936)).

Si en 2027 hubiera un calendario parecido, entre enero y la publicación en el BOE habría unos cuatro meses. Es una hipótesis, **no una previsión**: consulta siempre la convocatoria vigente. Más datos en [el calendario de 2026](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## Cómo calcular tu margen

Haz esta cuenta con tus números:

1. **Tiempo disponible:** semanas entre hoy y la fecha más ajustada que manejes.
2. **Horas semanales reales:** las que cumples, no las que te gustaría cumplir.
3. **Carga:** 23 temas, más inglés, psicotécnico, ortografía y gramática, y cuatro pruebas físicas.

Ejemplo ilustrativo, no un dato: si dedicas unos 5 días a cada tema, la primera vuelta del temario ocupa en torno a 16 semanas, sin contar repasos ni simulacros. Con menos horas, se alarga. Con más, se acorta, pero no linealmente: aprender bien necesita repasar.

Esa es la razón de que la comparación importante sea con **tu propio ritmo**, no con lo que hace otra persona. Para orientarte con las horas, lo veremos en otro artículo; el curso de ProLince, por ejemplo, plantea como referencia entre 25 y 40 horas semanales en su web, una orientación y no un dato oficial.

## Quién lo tiene más fácil y quién más difícil

- **Más margen:** estudias a jornada completa, vienes de estudiar hace poco o ya tienes buena base de lengua y de inglés.
- **Menos margen:** trabajas muchas horas, partes de cero en el temario o tienes que mejorar mucho tu condición física.

Ninguna de las dos situaciones decide el resultado. Hay quien empieza con ventaja y se dispersa, y quien parte de cero y mantiene un ritmo constante.

## Qué priorizar si empiezas ahora

1. **Requisitos y plazos:** edad, titulación, carné B ([requisitos](/blog/requisitos-guardia-civil)).
2. **Orden de estudio:** empieza por los temas más extensos y por los que pesan más en la prueba; el resto, después.
3. **Prueba de mínimos:** inglés, psicotécnico y lengua tienen mínimo eliminatorio ([cómo es el examen](/blog/examen-conocimientos-guardia-civil-estructura)).
4. **Físicas desde el primer mes:** con progresión y, si hay dudas, con consejo profesional.
5. **Método desde el principio:** [desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) tienes una guía paso a paso.

## Un error frecuente: esperar al BOE

Muchos aspirantes aplazan el comienzo hasta que la convocatoria se publica. El calendario de 2026 muestra por qué es arriesgado: el plazo de solicitud se mide en días hábiles, y el tiempo entre el BOE y las pruebas es corto frente a lo que exige el temario. Empezar antes de que salga el BOE no te obliga a nada; esperar sí puede costarte margen.

## Si no llegas a esta convocatoria

Presentarte y no tener plaza no es perder el tiempo si lo usas como experiencia de examen. Y si decides esperar a la siguiente, el trabajo de este año sigue siendo útil: el temario cambia poco entre convocatorias, aunque siempre debes cotejar el vigente.

Si prefieres hacerlo con un plan cerrado, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto tiempo hace falta para preparar la oposición?
No hay un plazo oficial. Depende de tu base, tus horas y la competencia de cada año.

### ¿Es tarde si la convocatoria sale en primavera?
Depende de tu avance. Con la información de hoy no se puede afirmar ni desmentir.

### ¿Me presento aunque no esté listo?
Es una decisión personal. Puede servir de experiencia, pero valora el coste y los requisitos de edad.

### ¿Dónde veo las fechas oficiales?
En el BOE y en la web de la Guardia Civil cuando se publique la convocatoria.',
   NULL, NULL, 'publicado', '2027-01-01T06:32:00.000Z', 'acceso-guardia-civil',
   ARRAY['convocatoria', 'empezar de cero', 'planificación', 'calendario']::text[], '{"title":"Empezar la oposición de Guardia Civil en enero: ¿da tiempo?","description":"¿Da tiempo a preparar Guardia Civil desde enero? Calendario de la convocatoria 2026, cómo calcular tu margen y qué priorizar sin prometer plazos."}'::jsonb, '{}'::jsonb)
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
  ('examen-del-colegio-de-guardias-jovenes-estructura-y-temas', 'articulo', 'Examen del Colegio de Guardias Jóvenes: estructura y temas', 'En la oferta 2026/2027, el examen del Colegio de Guardias Jóvenes sumó 80 preguntas de conocimientos de diez temas, 10 de ortografía y gramática y 20 de inglés en 120 minutos, con penalización por error. Así se estructura.', '**Respuesta corta:** la prueba de conocimientos teórico-prácticos de la oferta 2026/2027 duraba **120 minutos** y reunía, sin descanso entre partes, **10 preguntas de lengua española** (ortografía y gramática), **80 preguntas de conocimientos** sobre diez temas y **20 preguntas de inglés**. Los errores penalizan. Tras ella venían el psicotécnico y las pruebas físicas y médicas.

Los datos salen de la base 6 de la oferta de plazas publicada en el Boletín Oficial de la Guardia Civil núm. 41, de 19 de mayo de 2026. No está en el BOE: lo publica la Guardia Civil en su boletín. Es la oferta más reciente que hemos localizado, y la del siguiente curso puede variar.

## Las tres partes del examen escrito

### 1. Lengua española (10 preguntas)

Nivel compatible con el de la ESO. Se divide en dos bloques:

- **Ortografía:** cinco frases con cuatro palabras o expresiones subrayadas (A, B, C y D); hay que marcar las que tengan falta.
- **Gramática:** cinco preguntas, cada una con cuatro frases o expresiones; hay que señalar las incorrectas desde el punto de vista morfológico o sintáctico.

En ambos bloques cuenta como error tanto **dejar de marcar** lo incorrecto como **marcar** lo correcto. Se califica **apto o no apto**: con **11 o más respuestas erróneas** en el total de la prueba de lengua, quedas excluido. Para entrenar esta parte tienes [ortografía y gramática, la parte que elimina](/blog/ortografia-gramatica-examen-guardia-civil).

### 2. Conocimientos (80 preguntas)

Test de **80 preguntas más 4 de reserva**, extraídas de los temas del apéndice I. Cada pregunta tiene una única respuesta válida y, si varias parecen correctas, hay que señalar **la más completa**. Los errores penalizan; las preguntas en blanco no.

### 3. Lengua inglesa (20 preguntas)

**20 preguntas de test más 1 de reserva**, con nivel compatible con la ESO. Misma regla: una respuesta válida, la más completa y penalización por error. Tienes ideas para trabajarlo en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

## Cómo se puntúa

La fórmula es **P = A − E/(n − 1)**: aciertos menos errores divididos entre las opciones menos una. Con cuatro opciones, cada error resta un tercio de acierto.

| Parte | Puntuación | Mínimo para superarla |
| --- | --- | --- |
| Lengua española | apto / no apto | menos de 11 errores |
| Conocimientos | 0 a 80 | 40 puntos |
| Inglés | 0 a 20 | 8 puntos |
| Psicotécnico, aptitudes intelectuales (80 preguntas, 55 minutos) | 0 a 30 | 12 puntos |

Un ejemplo con números propios: si en conocimientos aciertas 55, fallas 12 y dejas 13 en blanco, tu puntuación es 55 − 12/3 = 51 puntos. Superas el mínimo, pero esos 12 errores te han costado 4 puntos.

En la puntuación final, según la base 10.1, la nota de conocimientos y lengua extranjera pesa un **85 %**, el psicotécnico de aptitudes un 10 % (con su nota pasada a escala de 10), los méritos académicos y profesionales un 10 % y los de residencia un 5 %.

## Los temas de conocimientos

El apéndice I de la oferta enumera los temas. Los diez que dan las 80 preguntas son:

1. **Derechos humanos:** Carta de las Naciones Unidas, Declaración Universal, Convenio Europeo y Tribunal Europeo de Derechos Humanos, Carta Social Europea y los dos pactos internacionales.
2. **Igualdad efectiva de mujeres y hombres:** Ley Orgánica 3/2007, títulos I y II (capítulo I).
3. **Derecho constitucional:** la Constitución y la Ley Orgánica del Defensor del Pueblo.
4. **Derecho civil:** título preliminar del Código Civil.
5. **Derecho penal:** título preliminar del Código Penal.
6. **Derecho procesal penal:** libro I, título II, capítulo I de la Ley de Enjuiciamiento Criminal.
7. **Derecho administrativo:** Ley 39/2015, título preliminar y título I.
8. **Fuerzas y Cuerpos de Seguridad y Guardia Civil:** Ley Orgánica 2/1986 e historia de la Guardia Civil.
9. **Deontología profesional:** Código de Conducta del personal de la Guardia Civil (Real Decreto 176/2022).
10. **Topografía:** coordenadas, escalas, planimetría, altimetría y pendiente.

Esto coincide con lo que resumen varias webs de preparación (80 preguntas de los temas 1 a 10, 10 de lengua, 20 de inglés y 120 minutos). Aun así, fíate del texto de la oferta y no de resúmenes: puede cambiar de un curso a otro.

## Cómo estudiarlo

- **Un tema cada vez y test desde el primer día.** Con penalización, saber cuándo dejar en blanco forma parte de la nota.
- **Lengua e inglés, a diario y poco.** Son las partes eliminatorias: los fallos aquí cuestan más que en cualquier tema.
- **Simulacros a 120 minutos reales**, con las tres partes seguidas.

Si es tu caso, el [curso de acceso al Colegio de Guardias Jóvenes](/cursos/colegio-guardias-jovenes) sigue este programa. Y recuerda que antes del examen hay que comprobar [los requisitos de la oferta](/blog/colegio-de-guardias-jovenes-requisitos-de-edad), que incluyen una condición de edad y otra de vínculo con el Cuerpo.

## Preguntas frecuentes

### ¿Cuántas preguntas tiene el examen del Colegio de Guardias Jóvenes?

En la oferta 2026/2027: 80 de conocimientos, 10 de lengua española (cinco de ortografía y cinco de gramática) y 20 de inglés, más las de reserva.

### ¿Los errores restan?

Sí. Se aplica P = A − E/(n − 1); las preguntas en blanco no penalizan. Con cuatro opciones, un error resta un tercio de acierto.

### ¿Qué nota mínima hace falta?

40 puntos sobre 80 en conocimientos y 8 sobre 20 en inglés; en lengua española, no llegar a 11 errores.

### ¿Es el mismo examen que el de acceso a Cabos y Guardias?

No. El de acceso ordinario tiene 100 preguntas de conocimientos, 20 de inglés, 20 frases de ortografía y 20 de gramática en 140 minutos. Lo explicamos en [la estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).',
   NULL, NULL, 'publicado', '2027-02-09T06:35:00.000Z', 'colegio-guardias-jovenes',
   ARRAY['Colegio de Guardias Jóvenes', 'examen', 'temario', 'penalización']::text[], '{"title":"Examen Colegio de Guardias Jóvenes: estructura y temas","description":"Examen del Colegio de Guardias Jóvenes (oferta 2026/2027): 80 preguntas de conocimientos, 10 de lengua y 20 de inglés en 120 minutos, y temas."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('examenes-oficiales-anteriores-donde-encontrarlos', 'articulo', 'Exámenes oficiales anteriores: dónde encontrarlos y cómo sacarles partido', 'La Guardia Civil publica cuestionarios de examen en su web. Te decimos dónde están, qué hemos podido comprobar y cómo trabajarlos para que sirvan de algo más que de entretenimiento.', 'Trabajar con exámenes reales es de lo mejor que puedes hacer, porque te enseña **cómo pregunta el Tribunal**, no cómo cree la academia que lo hace. Y buena parte está publicada gratis por la propia Guardia Civil.

## Dónde se publican

La Guardia Civil cuelga en su web los cuestionarios de la prueba de conocimientos teórico-prácticos. Hemos comprobado que se pueden descargar, entre otros:

- [Examen 2026, cuestionario A](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2026/Procesos_Selectivos_2026/INGRESO-GC-2026-TIPO-A.pdf) y [cuestionario B](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2026/Procesos_Selectivos_2026/INGRESO-GC-2026-TIPO-B.pdf): convocatoria de la Resolución 160/38243/2026.
- [Examen 2022, cuestionario 1A](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2022/IngresoGC2022/INGRESO_GC_2022_1A.PDF), con sus variantes 1B, 2A y 2B.

Cada cuestionario, según lo que hemos visto, recoge las pruebas de ortografía, gramática, conocimientos generales e inglés. **No hemos podido verificar** que la web publique todos los años ni una plantilla oficial de respuestas; si no la encuentras, tendrás que corregir tú con el texto de la norma. Mira también qué más ofrece la Administración en [recursos oficiales gratuitos](/blog/recursos-oficiales-gratuitos-para-preparar-la-guardia-civil).

Los cursos privados también ofrecen exámenes anteriores. El [curso de ProLince](/cursos/acceso-guardia-civil) incluye exámenes de 2017 a 2026; es contenido del curso, no un dato oficial.

## Cómo sacarles partido

### 1. Primero, estudia; después, examínate
Un examen real no sirve para aprender un tema que no has visto: te desmoraliza. Úsalo cuando hayas dado una primera vuelta al temario.

### 2. Hazlo como el día del examen
Con las condiciones reales: sin apuntes, con bolígrafo y reloj. La prueba de conocimientos dura 140 minutos en total e incluye ortografía, gramática, 100 preguntas de conocimientos y 20 de inglés. La estructura la tienes en [examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

### 3. Corrige con la fórmula oficial
En la parte de 100 preguntas con 4 opciones, cada error resta 1/3 de acierto y las preguntas en blanco no restan. La nota es **aciertos − errores/3**, y el mínimo es 50 sobre 100. Ejemplo: 70 aciertos y 18 errores dan 70 − 6 = 64. Con la [calculadora de nota](/calculadora-nota-guardia-civil) lo haces sin cuentas.

### 4. Anota cada fallo y su causa
No basta con ver la respuesta correcta. Para cada error, apunta si fue **desconocimiento**, **confusión** entre dos normas o **precipitación** al leer. Es la información que luego orienta el repaso.

### 5. Vuelve al texto de la norma
Cuando falles una pregunta, abre la ley y localiza el artículo. Así corriges el conocimiento en su origen y no en un resumen.

### 6. Úsalos para saber el estilo, no para adivinar el próximo
Los exámenes anteriores muestran cómo se redacta una pregunta, qué trampas aparecen y cuánta literalidad se exige. No permiten predecir qué entrará en el siguiente: no hay datos oficiales sobre aparición de temas, y cada convocatoria cambia.

## Un ejemplo de plan con un examen real

Un esquema sencillo para cada cuestionario real: una sesión para hacerlo cronometrado, otra para corregirlo y clasificar los fallos, y una tercera, unos días después, para repetir **solo las preguntas falladas** sin mirar la respuesta. Si vuelves a fallarlas, ese tema necesita otra pasada por la norma. Y si estás en la fase de cuadrar el repaso con el calendario, tu [plan de estudio](/plan-de-estudio) debería reservar una sesión fija cada semana.

## Un aviso sobre la vigencia

Una pregunta de 2022 puede estar basada en una norma que se ha modificado. Antes de memorizar una respuesta, comprueba que sigue siendo correcta con el texto consolidado actual y con el [temario oficial](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2024/TEMARIO_INGRESO_GC_ACTUALIZADO_2024.pdf).

## Preguntas frecuentes

### ¿Los exámenes anteriores son oficiales?
Los que la Guardia Civil publica en su web, sí. Los de academias o recopilatorios no lo son, aunque se basen en ellos.

### ¿Cuántos exámenes debería hacer?
No hay una cifra oficial. Lo que importa es analizar cada uno a fondo. Mira simulacros: cada cuánto hacerlos.

### ¿Hay plantilla de respuestas oficial?
No hemos podido confirmarlo. Comprueba la web en el momento en que estudies.

### ¿Valen para el psicotécnico?
Los cuestionarios que hemos verificado son de la prueba de conocimientos. Para el psicotécnico, mira [psicotécnico: aptitudes y personalidad](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).',
   NULL, NULL, 'publicado', '2027-01-07T06:14:00.000Z', 'acceso-guardia-civil',
   ARRAY['exámenes anteriores', 'examen oficial', 'test', 'preparación']::text[], '{"title":"Exámenes oficiales anteriores Guardia Civil: dónde están","description":"Dónde descargar cuestionarios de exámenes oficiales de la Guardia Civil y cómo usarlos: corrección con la fórmula, análisis de fallos y reloj en mano."}'::jsonb, '{}'::jsonb)
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
  ('extranjeria-e-inmigracion-lo-basico-que-pregunta-el-examen', 'articulo', 'Extranjería e inmigración: lo básico que conviene dominar', 'Estructura de la Ley Orgánica 4/2000, derechos de los extranjeros, entrada, estancia y residencia, expulsión e internamiento, y el régimen de los ciudadanos de la Unión del Real Decreto 240/2007. Los plazos y artículos, comprobados en el BOE.', 'El tema de Extranjería e inmigración está centrado en la Ley Orgánica 4/2000, sobre derechos y libertades de los extranjeros en España y su integración social ([BOE-A-2000-544](https://www.boe.es/buscar/act.php?id=BOE-A-2000-544)), y en el régimen de los ciudadanos de la Unión Europea. **Respuesta corta:** según el programa publicado, entran la LO 4/2000 completa y el Real Decreto 240/2007, de entrada, libre circulación y residencia de ciudadanos de la UE ([BOE-A-2007-4184](https://www.boe.es/buscar/act.php?id=BOE-A-2007-4184)).

Una precisión de vigencia: el reglamento de desarrollo de la LO 4/2000 es el Real Decreto 1155/2024 ([BOE-A-2024-24099](https://www.boe.es/buscar/act.php?id=BOE-A-2024-24099)), en vigor desde el 20 de mayo de 2025 y modificado después por el Real Decreto 316/2026. El alcance publicado del programa menciona el RD 240/2007; consulta la convocatoria vigente para saber qué normas reglamentarias te piden.

## Estructura de la LO 4/2000

| Título | Contenido |
|---|---|
| Preliminar | Disposiciones generales (art. 1, ámbito) |
| I | Derechos y libertades de los extranjeros (arts. 3 a 23) |
| II | Régimen jurídico de las situaciones de los extranjeros |
| III | Infracciones en materia de extranjería y régimen sancionador |
| IV | Coordinación de los poderes públicos en materia de inmigración |

## Derechos: la idea central

Los extranjeros gozan en España de los derechos y libertades del Título I de la Constitución en los términos de los tratados, de la ley y de las normas que regulan cada derecho; como criterio general, se entiende que los ejercen **en condiciones de igualdad con los españoles** (art. 3). Fíjate en estos:

- **Documentación (art. 4):** tienen el derecho y el deber de conservar la que acredite su identidad y su situación en España. Quienes obtengan un visado o una autorización de estancia superior a seis meses reciben la tarjeta de identidad de extranjero, que deben solicitar personalmente **en el plazo de un mes**.
- **Participación pública (art. 6):** los extranjeros residentes pueden ser titulares del derecho de sufragio en las elecciones municipales, en los términos de la Constitución, los tratados y la ley.
- Reunión, asociación, educación, trabajo y Seguridad Social, sindicación, asistencia sanitaria o tutela judicial (arts. 7 a 22) se regulan uno a uno; conviene hacer una tabla de ellos.

## Entrada, estancia y residencia

- **Entrada (art. 25):** por los puestos habilitados, con pasaporte o documento de viaje válido, sin prohibiciones expresas, con documentos que justifiquen el objeto y condiciones de la estancia, y acreditando medios de vida suficientes. Salvo convenios o normativa de la UE que digan otra cosa, se exige además **visado**. No se aplica a quienes soliciten asilo en el momento de su entrada.
- **Estancia (art. 30):** la permanencia en territorio español por un período **no superior a 90 días**. Transcurrido, hace falta una prórroga de estancia o una autorización de residencia.
- **Residencia y trabajo (art. 36):** los mayores de dieciséis años necesitan autorización administrativa previa para residir y trabajar para ejercer cualquier actividad lucrativa, laboral o profesional.

## Expulsión, devolución e internamiento

| Figura | Qué recoge | Artículo |
|---|---|---|
| Expulsión | Puede sustituir a la multa en infracciones muy graves y en ciertas graves; también si el extranjero ha sido condenado por delito doloso sancionado con pena privativa de libertad superior a un año. Nunca se imponen conjuntamente expulsión y multa | 57 |
| Prohibición de entrada | No excede de cinco años; excepcionalmente, hasta diez si supone una amenaza grave para el orden público, la seguridad pública o nacional o la salud pública | 58 |
| Medidas cautelares | Entre ellas, detención cautelar por un máximo de **72 horas** previas a la solicitud de internamiento | 61 |
| Internamiento | Autorizado por el juez de instrucción; duración máxima de **60 días**; los menores no pueden ser ingresados | 62 |

Los lugares de internamiento no tienen carácter penitenciario, y los internados solo están privados del derecho ambulatorio (art. 60.2, referido a la denegación de entrada). La coherencia con la detención del artículo 17 de la Constitución la tienes desarrollada en el artículo sobre [detención y habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre).

## El régimen de la Unión Europea (RD 240/2007)

Se aplica a ciudadanos de un Estado miembro de la UE o de otro Estado parte en el Acuerdo sobre el Espacio Económico Europeo y a sus familiares:

- **Hasta tres meses (art. 6):** basta pasaporte o documento de identidad en vigor.
- **Más de tres meses (art. 7):** derecho de residencia si es trabajador por cuenta ajena o propia, si dispone de recursos suficientes y seguro de enfermedad, o si es estudiante con seguro y recursos.
- **Familiares (arts. 2 y 8):** el cónyuge, la pareja registrada y los descendientes directos menores de 21 años o a cargo, entre otros. Los familiares no nacionales de la UE solicitan la tarjeta de residencia de familiar de ciudadano de la Unión en el plazo de tres meses desde la entrada.
- **Residencia permanente (art. 10):** tras residir legalmente cinco años continuados.

## Cómo estudiarlo

Este tema se aprende por listas y plazos: 90 días, un mes, cinco y diez años, 72 horas, 60 días, tres meses, cinco años. Hazte una tarjeta por cada cifra con su artículo. Para situar el bloque en el programa, mira la [estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura), y si quieres apoyo, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto dura la estancia de un extranjero según la LO 4/2000?

No puede ser superior a 90 días (art. 30); después hace falta prórroga de estancia o autorización de residencia.

### ¿Cuánto puede durar el internamiento en un centro?

Un máximo de 60 días, previa autorización del juez de instrucción (art. 62).

### ¿Quién puede ser expulsado por haber delinquido?

Quien haya sido condenado por una conducta dolosa que constituya delito sancionado con pena privativa de libertad superior a un año, salvo antecedentes cancelados (art. 57.2).

### ¿Qué reglamento desarrolla la ley?

El Real Decreto 1155/2024, vigente desde el 20 de mayo de 2025. Para el programa, consulta el alcance exacto publicado.',
   NULL, NULL, 'publicado', '2026-12-20T06:08:00.000Z', 'acceso-guardia-civil',
   ARRAY['extranjería', 'inmigración', 'LO 4/2000', 'ciudadanos de la UE', 'temario']::text[], '{"title":"Extranjería LO 4/2000: lo básico para la oposición","description":"Tema de extranjería para la oposición: LO 4/2000, derechos, entrada y estancia, expulsión, internamiento de 60 días y régimen de ciudadanos de la UE."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('falsos-amigos-en-ingles-los-errores-tipicos-del-opositor', 'articulo', '"Falsos amigos en inglés: los errores clásicos al traducir del español"', 'Palabras inglesas que se parecen a las españolas pero significan otra cosa. Una tabla de los falsos amigos más conocidos, con ejemplos propios, y un método para no caer cuando una opción del test «suena» a español.', '**Respuesta corta:** un falso amigo es una palabra inglesa que se parece a una española pero significa otra cosa. En un test de cuatro opciones son un cebo perfecto, porque la opción que «suena» a español se marca por inercia. La defensa es memorizar los pares más conocidos y desconfiar de lo que parece demasiado fácil.

Los ejemplos de abajo son **propios**, escritos para practicar. No son preguntas oficiales. La prueba, según la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), consta de 20 preguntas tipo test de nivel compatible con la ESO.

## Los falsos amigos más conocidos

| Palabra inglesa | Significa | NO significa | Ejemplo |
| --- | --- | --- | --- |
| actually | en realidad | actualmente (*currently*) | *Actually, I don''t agree.* |
| assist | ayudar | asistir (*attend*) | *Can I assist you?* |
| attend | asistir a | atender (*attend to / serve*) | *She attends English classes.* |
| embarrassed | avergonzado | embarazada (*pregnant*) | *He was embarrassed by his mistake.* |
| library | biblioteca | librería (*bookshop*) | *I study in the library.* |
| sensible | sensato | sensible (*sensitive*) | *It is a sensible decision.* |
| realize | darse cuenta | realizar (*carry out*) | *I realized I was late.* |
| eventually | al final, finalmente | eventualmente (*possibly*) | *Eventually, we found the house.* |
| carpet | alfombra, moqueta | carpeta (*folder*) | *The carpet is new.* |
| constipated | estreñido | constipado (*to have a cold*) | *He is constipated.* |
| exit | salida | éxito (*success*) | *Use the emergency exit.* |
| sympathetic | comprensivo | simpático (*nice, friendly*) | *She was sympathetic to my problem.* |
| large | grande | largo (*long*) | *A large room.* |
| parents | padres | parientes (*relatives*) | *My parents live in Jaén.* |
| lecture | conferencia, clase magistral | lectura (*reading*) | *The lecture starts at ten.* |
| pretend | fingir | pretender (*intend, try*) | *He pretended to be asleep.* |
| resume | reanudar | resumir (*summarize*) | *The meeting will resume at noon.* |
| fabric | tela | fábrica (*factory*) | *This fabric is soft.* |
| support | apoyar | soportar (*put up with*) | *My family supports me.* |
| introduce | presentar a alguien | introducir (*insert*) | *Let me introduce my friend.* |

Para expresar en inglés el sentido español, usa estas palabras: *currently* (actualmente), *to carry out* (realizar), *pregnant* (embarazada), *bookshop* (librería), *folder* (carpeta), *to have a cold* (estar constipado), *success* (éxito).

## Por qué caes aunque lo sepas

Los falsos amigos no fallan por falta de nivel, sino por **velocidad**. Con cansancio y prisa, tu cerebro propone el significado español y lo da por bueno. Pasa sobre todo al final de la jornada, cuando llevas casi dos horas; en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil) explicamos por qué conviene entrenar con el inglés al final.

## Cómo evitarlos

1. **Aprende los pares de dos en dos.** No apuntes solo *library = biblioteca*; apunta también *librería = bookshop*.
2. **Frases propias.** Una frase con *actually* o *eventually* se te queda mejor que la definición.
3. **Sospecha de las opciones obvias.** Si una opción se parece mucho a una palabra española, lee las demás antes de marcar.
4. **Cuaderno de falsos amigos.** Cada vez que falles uno en un test, anótalo con su frase.

Más palabras útiles, y qué hacer con ellas, en [vocabulario y phrasal verbs](/blog/vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles).

## Minitest (propio) con soluciones

1. "Actually" means: (a) ahora mismo (b) en realidad (c) antiguamente (d) a veces
2. My sister is ___ and the baby arrives next month. (a) embarrassed (b) pregnant (c) constipated (d) sensible
3. I want to buy a book. Let''s go to the ___. (a) library (b) bookshop (c) carpet (d) exit
4. She was ___ when she forgot his name (se avergonzó). (a) embarrassed (b) pregnant (c) sensible (d) sympathetic
5. "I realized my mistake" means: (a) llevé a cabo mi error (b) me di cuenta de mi error (c) resumí mi error (d) apoyé mi error

**Soluciones:** 1-b, 2-b, 3-b (en una *library* se piden libros prestados; se venden en una *bookshop*), 4-a, 5-b.

## Preguntas frecuentes

### ¿Los falsos amigos caen en el examen?
No hay datos oficiales de qué temas se preguntan, ni la convocatoria detalla un listado. Lo sensato es dominar los más conocidos, porque aparecen en cualquier test de inglés general.

### ¿Cuántos tengo que aprender?
No hay cifra oficial. Con los de la tabla tienes una base amplia; añade los que falles en tus propios tests.

### ¿Hay falsos amigos parciales?
Sí: palabras que a veces coinciden en español y otras no, como *sensible* o *attend*. Por eso conviene verlas siempre en una frase.

### ¿Cómo me preparo con un método?
Con tests de cuatro opciones y cuaderno de fallos, como en el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil).',
   NULL, NULL, 'publicado', '2027-01-16T06:47:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'falsos amigos', 'vocabulario', 'examen']::text[], '{"title":"Falsos amigos en inglés para el examen de la Guardia Civil","description":"Los falsos amigos en inglés más conocidos, con significado y ejemplo, y cómo evitar caer en ellos en un test de cuatro opciones de la oposición."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada', 'articulo', 'Fuerzas y Cuerpos de Seguridad (LO 2/1986): competencias de cada cuerpo', 'La Ley Orgánica 2/1986 reparte la seguridad pública entre Estado, comunidades autónomas y ayuntamientos. Qué hace cada cuerpo, dónde actúa la Guardia Civil y qué artículos conviene tener claros al estudiarla.', 'La [Ley Orgánica 2/1986, de 13 de marzo](https://www.boe.es/buscar/act.php?id=BOE-A-1986-6859), desarrolla el artículo 104 de la Constitución: fija las **funciones, los principios básicos de actuación y los estatutos** de las Fuerzas y Cuerpos de Seguridad. En el programa de la oposición de Guardia Civil figura **completa** dentro del tema 15 (consulta el [temario](/temario-guardia-civil)).

La respuesta corta: la seguridad pública es competencia exclusiva del Estado, la ejercen tres niveles de cuerpos (Estado, comunidades autónomas y corporaciones locales) y, entre los dos cuerpos estatales, la Policía Nacional actúa en las ciudades y la Guardia Civil en el resto del territorio y el mar territorial, además de las competencias específicas que veremos.

## Los tres niveles (arts. 1 y 2)

El artículo 1 establece que la seguridad pública es competencia exclusiva del Estado y que su mantenimiento corresponde al Gobierno de la Nación. Comunidades autónomas y corporaciones locales participan «en los términos» de sus estatutos y de la ley de bases de régimen local. El artículo 2 enumera las Fuerzas y Cuerpos de Seguridad:

| Nivel | Cuerpos |
|---|---|
| Estado | Cuerpo Nacional de Policía y Guardia Civil |
| Comunidades autónomas | Cuerpos de policía autonómicos |
| Corporaciones locales | Policías locales |

El artículo 9 las define: el Cuerpo Nacional de Policía es un instituto armado **de naturaleza civil**; la Guardia Civil, un instituto armado **de naturaleza militar**, que depende del Ministro del Interior en las funciones de la ley y del Ministro de Defensa en las misiones militares. En tiempo de guerra y durante el estado de sitio depende exclusivamente del de Defensa.

## Funciones comunes de los cuerpos estatales (art. 11)

Su misión es proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana. El apartado 1 reúne nueve funciones (de la a a la i), desde velar por el cumplimiento de las leyes o mantener el orden hasta investigar delitos o colaborar con protección civil.

### Reparto territorial

- El **Cuerpo Nacional de Policía** ejerce esas funciones en las capitales de provincia y en los términos municipales y núcleos urbanos que determine el Gobierno.
- La **Guardia Civil**, «en el resto del territorio nacional y su mar territorial».

El propio artículo 11 matiza el reparto: la policía puede investigar y coordinar datos en todo el territorio; la Guardia Civil puede hacer las investigaciones que necesite en todo el territorio para sus competencias propias; y ambos cuerpos deben dar cuenta al otro cuando actúen fuera de su ámbito. En caso de conflicto de competencias se hace cargo del servicio el cuerpo que haya realizado las primeras actuaciones, hasta que se resuelva.

## Competencias específicas (art. 12)

Además de las comunes, el artículo 12 distribuye materias:

**Guardia Civil** (art. 12.1.B):
- Armas y explosivos, según la legislación vigente.
- Resguardo fiscal del Estado y lucha contra el contrabando.
- Vigilancia del tráfico, tránsito y transporte en las vías públicas interurbanas.
- Custodia de vías de comunicación terrestre, costas, fronteras, puertos, aeropuertos y centros e instalaciones que lo requieran.
- Conservación de la naturaleza y el medio ambiente, recursos hidráulicos y riqueza cinegética, piscícola y forestal.
- Conducción interurbana de presos y detenidos.

**Cuerpo Nacional de Policía** (art. 12.1.A): DNI y pasaportes, control de entrada y salida del territorio, extranjería, juego, droga, cooperación con policías de otros países y control de la seguridad privada.

Para ver estas competencias en contexto, mira [seguridad ciudadana y seguridad privada](/blog/seguridad-ciudadana-y-seguridad-privada-que-cae-del-temario) y [Guardia Civil o Policía Nacional](/blog/guardia-civil-o-policia-nacional).

## Principios básicos de actuación (art. 5)

Agrupa los principios en seis bloques: adecuación al ordenamiento jurídico, relaciones con la comunidad, tratamiento de detenidos, dedicación profesional, secreto profesional y responsabilidad. La obediencia debida no ampara órdenes que constituyan delito manifiesto, y las armas solo se usan ante un riesgo racionalmente grave para la vida o la integridad.

## Otros contenidos que conviene ubicar

- **Estatuto común** (arts. 6 a 8): agentes de la autoridad (art. 7); la Guardia Civil solo es fuerza armada en misiones militares; prohibido el derecho de huelga (art. 6.8).
- **Guardia Civil** (arts. 13 a 15): no puede pertenecer a partidos ni sindicatos ni hacer peticiones colectivas (art. 15.2).
- **Policía judicial** (arts. 29 a 36): dependencia orgánica del Ministerio del Interior y funcional de jueces, tribunales y fiscales.
- **Policías autonómicas** (título III) y **locales** (arts. 51 a 54, institutos armados de naturaleza civil según el art. 52).
- **Coordinación**: Consejo de Política de Seguridad (art. 48), Junta de Seguridad (art. 50) y Junta Local de Seguridad (art. 54).

## Cómo estudiarla

Haz un cuadro de los tres niveles y otro con las competencias del artículo 12, y aprende el reparto territorial del artículo 11 con sus excepciones. Trabaja con el texto consolidado, que conserva términos antiguos como «Gobernador civil». Complétalo con [Ministerio del Interior y Defensa](/blog/ministerio-del-interior-y-ministerio-de-defensa-estructura) y [destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

El tema 15 incluye además otras normas (LO 11/2007, Ley 29/2014, estructura de los servicios centrales e historia del Cuerpo). Si buscas método, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) las organiza por semanas.

## Preguntas frecuentes

### ¿Qué dice la LO 2/1986 sobre dónde actúa la Guardia Civil?

Según el artículo 11.2.b, ejerce las funciones comunes en el resto del territorio nacional y su mar territorial, es decir, fuera de los núcleos que corresponden al Cuerpo Nacional de Policía.

### ¿La Guardia Civil depende de Interior o de Defensa?

De ambos, según la función: del Ministro del Interior en las funciones que le atribuye la ley y del de Defensa en las misiones de carácter militar (art. 9.b).

### ¿Entra la ley entera en el programa?

Según el programa de la Escala de Cabos y Guardias que recogemos en el [temario](/temario-guardia-civil) (Resolución de 26 de junio de 2019 y sus actualizaciones), la LO 2/1986 entra «completa» en el tema 15. Comprueba siempre la convocatoria vigente por si el programa cambia.',
   NULL, NULL, 'publicado', '2026-12-24T06:16:00.000Z', 'acceso-guardia-civil',
   ARRAY['lo 2/1986', 'temario', 'competencias', 'fuerzas y cuerpos de seguridad']::text[], '{"title":"LO 2/1986 Fuerzas y Cuerpos de Seguridad: competencias","description":"Resumen de la LO 2/1986: tres niveles de cuerpos policiales, competencias de Guardia Civil y Policía Nacional, policía judicial y órganos de coordinación."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gafas-miopia-operacion-vista-guardia-civil', 'articulo', '¿Puedo ser Guardia Civil con gafas, miopía o si me he operado la vista?', 'Sí puedes llevar gafas o lentillas: lo que cuenta es la agudeza visual y las dioptrías. Los límites exactos del cuadro médico, qué pasa si te has operado con láser y la causa de exclusión de la vista que casi nadie revisa.', 'Llevar gafas es probablemente la duda médica más común entre opositores. La buena noticia: **las gafas y las lentillas no te excluyen de la Guardia Civil.** Lo que se mide es cuánto ves y cuántas dioptrías tienes.

Todo lo que sigue sale del apartado J del cuadro médico de exclusiones, en el [texto consolidado de la Orden PCI/155/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291), que es el que aplica la convocatoria de 2026.

## Los dos números que importan

### 1. Agudeza visual: más de 0,7 en cada ojo

El cuadro exige una **agudeza visual superior a 0,7 en ambos ojos, con o sin corrección**. «Con o sin corrección» es la clave: si con tus gafas o lentillas ves más de 0,7 en cada ojo, cumples este apartado.

Fíjate en que dice **en ambos ojos**. Un ojo muy bueno no compensa uno que no llegue.

### 2. Refracción: el límite de dioptrías

Además de ver bien con corrección, tu graduación no puede superar estos máximos:

| Defecto | Máximo permitido |
|---|---|
| Miopía | −3 dioptrías |
| Hipermetropía | +3 dioptrías |
| Astigmatismo | ±2 dioptrías, con independencia del componente esférico |

Aquí está la trampa: **aunque con gafas veas perfectamente, si tienes −4 de miopía, superas el máximo.** Las dos condiciones se cumplen a la vez o no se cumple ninguna.

## ¿Y si me he operado con láser?

El cuadro de la Guardia Civil **no incluye la cirugía refractiva con láser en la córnea** (LASIK, PRK y técnicas similares) entre las causas de exclusión. Lo que sí incluye es:

- «Cualquier tipo de cirugía intraocular», es decir, la que se hace dentro del ojo.
- Problemas de córnea como el queratocono, las ectasias corneales, el trasplante de córnea o los anillos intraestromales.

Por tanto, después de una operación con láser lo que se valora es **el resultado**: tu agudeza visual, tu graduación residual y el estado de la córnea. Si tras la operación ves más de 0,7 en cada ojo, estás dentro de los límites de dioptrías y la córnea no presenta alteraciones de las que excluye el cuadro, la operación por sí sola no debería dejarte fuera.

Dos consejos prácticos:

1. **No te operes a última hora.** Deja que la graduación se estabilice y haz las revisiones que te pida tu oftalmólogo antes del reconocimiento.
2. **Lleva el informe de la operación** y la última revisión. El cuadro exige que cada exclusión se motive de forma individual, y la documentación te ayuda a explicar tu caso.

Las lentes que se implantan dentro del ojo son un caso aparte, con una sentencia del Supremo de por medio: lo explicaremos en un artículo propio.

## La causa de exclusión que casi nadie revisa: los colores

El cuadro exige **visión cromática normal**. El daltonismo excluye, y muchas personas que lo tienen en grado leve no lo saben. Un test de colores tarda cinco minutos en cualquier óptica u oftalmólogo: hazlo antes de invertir un año en la oposición.

## Otras causas oculares del cuadro

Además de la agudeza, las dioptrías y los colores, el apartado J excluye, entre otras:

- reducciones del **campo visual** de más de 15 grados,
- **glaucoma** o alteraciones de la tensión ocular,
- **desprendimiento de retina**, agujeros o desgarros retinianos,
- **cataratas** y opacidades del cristalino,
- alteraciones de la motilidad ocular, como estrabismos de más de 3 dioptrías prismáticas, nistagmo o visión doble.

Tienes el resto de apartados (oído, tensión, IMC, espalda…) en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Qué hacer ahora

1. **Pide una revisión completa** en la óptica o al oftalmólogo con estas tres preguntas: agudeza visual con corrección en cada ojo, graduación exacta y test de colores.
2. **Si estás en el límite** (por ejemplo, −2,75 de miopía y subiendo), coméntalo con tu oftalmólogo con tiempo.
3. **Guarda los informes.** Te servirán en el reconocimiento.

Y no te olvides del resto de requisitos: los tienes en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil).

## Preguntas frecuentes

### ¿Se puede ser Guardia Civil con gafas?

Sí. El cuadro exige una agudeza visual superior a 0,7 en ambos ojos, con o sin corrección, siempre que la graduación no supere los máximos permitidos.

### ¿Cuántas dioptrías de miopía se permiten en la Guardia Civil?

Como máximo −3 dioptrías. La hipermetropía tiene un máximo de +3 y el astigmatismo de ±2.

### ¿Puedo entrar si me he operado de miopía con láser?

El cuadro no excluye la cirugía refractiva corneal en sí. Se valora el resultado: agudeza visual, graduación residual y estado de la córnea. Sí excluye la cirugía intraocular y problemas de córnea como el queratocono.

### ¿El daltonismo excluye de la Guardia Civil?

Sí. El cuadro médico exige visión cromática normal.',
   NULL, NULL, 'publicado', '2026-11-14T06:56:00.000Z', 'acceso-guardia-civil',
   ARRAY['vista', 'miopía', 'gafas', 'cuadro médico']::text[], '{"title":"Gafas y miopía en la Guardia Civil: límites 2026","description":"¿Puedes ser Guardia Civil con gafas o miopía? Agudeza visual mínima, dioptrías máximas (−3, +3, ±2), operación láser y daltonismo según el cuadro médico."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('geas-asi-son-los-buceadores-de-la-guardia-civil', 'articulo', 'GEAS: así son los buceadores de la Guardia Civil', 'Los GEAS son los grupos de especialistas en actividades subacuáticas de la Guardia Civil. Qué misiones tienen, cómo se estructura la especialidad de buceo y qué dice la normativa sobre cómo se obtiene la cualificación.', 'Buscar a una persona desaparecida en un embalse, recuperar pruebas de un río o revisar el casco de una embarcación: son tareas que, dentro de la Guardia Civil, corresponden a las unidades de actividades subacuáticas. **Los GEAS (Grupos de Especialistas en Actividades Subacuáticas) son los grupos descentralizados de esa especialidad**, repartidos por varias provincias.

Te contamos lo verificable: qué hacen, cómo se organizan y cómo se regula la especialidad. Para saber cómo funcionan en general los destinos, consulta antes [especialidades y destinos](/blog/destinos-especialidades-guardia-civil).

## Qué hacen los buceadores de la Guardia Civil

La web oficial de la Guardia Civil define la misión general de estas unidades: ejercer las funciones del Cuerpo en medios acuáticos y subacuáticos, con o sin equipos autónomos de respiración. Entre los cometidos fundamentales que enumera:

- Búsqueda, localización y recuperación de personas y objetos en el agua y bajo ella.
- Reconocimiento, seguridad y protección de personalidades, instalaciones, embarcaciones y obras en el agua.
- Vigilancia y protección del patrimonio cultural, histórico y natural sumergido.
- Funciones de Policía Judicial en su medio específico.
- Búsqueda y localización de artefactos explosivos en el agua y, en determinadas circunstancias, demoliciones subacuáticas.
- Reconocimiento de fondos con medios a distancia.
- Apoyo a otras unidades del Cuerpo y colaboración con equipos militares o civiles.

## Cómo se organiza

Según la misma fuente, los primeros grupos se crearon en 1981 por el elevado número de rescates en los que había que usar equipos autónomos de respiración. En 1997 las unidades se integraron en el Servicio Marítimo.

- **Unidad de Actividades Subacuáticas (UAS):** órgano central, con sede en Valdemoro (Madrid). Incluye un grupo operativo central (GRUCEAS) y un grupo técnico (GRUTAS), pensado para inmersiones a presiones absolutas superiores a 6 atmósferas y en espacios confinados.
- **GEAS:** órganos descentralizados. Dependen orgánica y funcionalmente de la Zona o Unidad en que se integran y, técnicamente, de la UAS.

La web enumera los GEAS por provincias y ciudades: entre otras, Alicante, Almería, Asturias, Barcelona, Cádiz (Algeciras), Gerona, Baleares, Las Palmas, Málaga, Murcia (Cartagena), Santa Cruz de Tenerife, Sevilla, Valencia, y Ceuta y Melilla. Si te interesa una provincia concreta, mira la lista completa en la [página oficial](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/subacuaticas/), porque el despliegue puede cambiar.

## Qué dice la normativa

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) regula las especialidades de la Guardia Civil. La primera de su lista es **Actividades subacuáticas (ACSUB)**, con dos modalidades: **Buceador Guardia Civil** y **Buceador Técnico Guardia Civil**.

Las reglas generales que fija la orden para todas las especialidades son estas:

- El requisito fundamental es acreditar la **cualificación específica** necesaria.
- Para ejercer como especialista hay que ocupar un **puesto orgánico** que la requiera.
- El acceso a esos puestos puede condicionarse por escala, empleo, edad, condiciones psicofísicas, titulaciones o aptitudes previas, o nivel de idiomas.
- Las cualificaciones pueden tener requisitos de mantenimiento o renovación, y pueden **caducar** o perderse.
- Cada especialidad lleva asociado un periodo de **servidumbre**.

El Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)) añade que los cursos de especialización tienen requisitos generales (aptitud psicofísica y técnica, edad, titulaciones o habilitaciones, entre otros) y que la selección de asistentes se publica, con carácter general, en el Boletín Oficial de la Guardia Civil. Por su parte, el Reglamento de destinos ([Real Decreto 470/2019, BOE-A-2019-11398](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398)) limita a cinco años como máximo la servidumbre ligada a una titulación.

## Lo que no te podemos decir

Las pruebas de acceso (de natación, apnea o similares), los límites de edad concretos, el número de plazas o la duración del curso **no figuran en ninguna fuente oficial que hayamos podido verificar**, así que no los escribimos. Los fija cada convocatoria. Desconfía de cifras que veas en foros o redes sin referencia a un documento oficial.

## Qué puedes hacer ya como opositor

Aunque la especialidad queda lejos, hay cosas que suman en cualquier caso:

- **Natación.** Una de las pruebas de ingreso es de natación: mira la [prueba de 50 metros](/blog/natacion-50-metros-guardia-civil).
- **Condición física general**, con un plan razonable y sin descuidar el descanso. Si tienes dudas médicas, habla con un profesional.
- **Titulaciones y méritos.** Algunas puntúan en la oposición: revisa la [fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

Lo primero es aprobar. Si estás en ello, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayuda a llegar a ese punto de partida.

## Preguntas frecuentes

### ¿GEAS y buceadores son lo mismo?

Los GEAS son los grupos; los buceadores son el personal especialista, con las modalidades de Buceador y Buceador Técnico de la orden de especialidades.

### ¿Dependen del Servicio Marítimo?

Según la web oficial, las unidades subacuáticas se integraron en el Servicio Marítimo en 1997, y la UAS es su órgano central.

### ¿Qué hacen además de rescatar?

También protegen el patrimonio sumergido, buscan artefactos explosivos en el agua y realizan funciones de Policía Judicial en el medio acuático.

### ¿Cómo se entra?

Con la cualificación específica y un puesto orgánico, según las convocatorias de cada curso. Consulta la vigente.',
   NULL, NULL, 'publicado', '2027-01-29T06:28:00.000Z', 'acceso-guardia-civil',
   ARRAY['geas', 'buceadores', 'subacuáticas', 'especialidades']::text[], '{"title":"GEAS Guardia Civil: así son los buceadores del Cuerpo","description":"GEAS de la Guardia Civil: qué hacen los buceadores, cómo se organizan las actividades subacuáticas y qué dice la normativa sobre el acceso a la especialidad."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gobierno-poder-judicial-y-tribunal-constitucional-esquema', 'articulo', 'Gobierno, Poder Judicial y Tribunal Constitucional: esquema para el examen', 'Cómo se forma el Gobierno, cómo se compone el Consejo General del Poder Judicial y cómo se elige el Tribunal Constitucional. Un esquema con las cifras y los plazos de los Títulos IV, VI y IX de la Constitución para tener ordenados.', 'Los Títulos IV (Gobierno), VI (Poder Judicial) e IX (Tribunal Constitucional) de la Constitución se parecen mucho en una cosa: están llenos de números. Quién propone a quién, cuántos miembros hay, cuántos años dura el mandato. **Respuesta corta:** el Gobierno se forma por investidura en el Congreso; el CGPJ lo integran el Presidente del Tribunal Supremo y 20 miembros nombrados por 5 años; y el Tribunal Constitucional tiene 12 miembros designados por 9 años.

Todo lo que sigue sale del texto de la Constitución ([BOE-A-1978-31229](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)), con algún dato de la Ley Orgánica del Tribunal Constitucional ([BOE-A-1979-23709](https://www.boe.es/buscar/act.php?id=BOE-A-1979-23709)) y de la Ley del Gobierno ([BOE-A-1997-25336](https://www.boe.es/buscar/act.php?id=BOE-A-1997-25336)). Si aún no has repasado el resto de la Constitución, empieza por [cómo estudiar la Constitución](/blog/constitucion-oposicion-guardia-civil).

## El Gobierno (Título IV, arts. 97 a 107)

**Función:** dirige la política interior y exterior, la Administración civil y militar y la defensa del Estado; ejerce la función ejecutiva y la potestad reglamentaria (art. 97).

**Composición (art. 98):** Presidente, Vicepresidentes (en su caso), Ministros y los demás miembros que establezca la ley.

### Cómo se forma: la investidura (art. 99)

1. El Rey, tras consultar a los representantes de los grupos políticos y a través del Presidente del Congreso, propone un candidato.
2. El candidato expone su programa y pide la confianza del Congreso.
3. **Primera votación:** mayoría absoluta. Si no se alcanza, nueva votación **48 horas después**, y basta la mayoría simple.
4. Si pasan **dos meses** desde la primera votación sin que ningún candidato obtenga la confianza, el Rey disuelve las Cámaras y convoca elecciones, con el refrendo del Presidente del Congreso.

Los demás miembros del Gobierno los nombra y separa el Rey a propuesta del Presidente (art. 100).

### Otros datos del Título IV

- **Cese (art. 101):** tras elecciones generales, pérdida de la confianza parlamentaria, o dimisión o fallecimiento del Presidente. El Gobierno cesante sigue en funciones hasta que toma posesión el nuevo.
- **Responsabilidad criminal (art. 102):** ante la Sala de lo Penal del Tribunal Supremo.
- **Fuerzas y Cuerpos de Seguridad (art. 104):** actúan bajo la dependencia del Gobierno, y su misión es proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana. Es un artículo clave para ti.

La relación con las Cortes (moción de censura, cuestión de confianza, disolución) está en el Título V; la vimos en el artículo sobre [la Corona y las Cortes Generales](/blog/corona-cortes-generales-guardia-civil).

## El Poder Judicial (Título VI, arts. 117 a 127)

**Principios (art. 117):** la justicia emana del pueblo y se administra en nombre del Rey por Jueces y Magistrados independientes, inamovibles, responsables y sometidos únicamente al imperio de la ley. Se prohíben los tribunales de excepción, y el principio de unidad jurisdiccional es la base de la organización de los tribunales.

### El Consejo General del Poder Judicial (art. 122)

Es el órgano de gobierno del poder judicial. Lo integran:

| Elemento | Dato |
|---|---|
| Presidente | El del Tribunal Supremo |
| Miembros nombrados por el Rey | 20 |
| Duración del mandato | 5 años |
| Entre Jueces y Magistrados | 12 |
| Entre abogados y juristas | 8: 4 a propuesta del Congreso y 4 a propuesta del Senado, por mayoría de tres quintos |

Los juristas deben ser de reconocida competencia y con más de quince años de ejercicio profesional.

### Otras instituciones del Título VI

- **Tribunal Supremo (art. 123):** jurisdicción en toda España; órgano superior en todos los órdenes, salvo en materia de garantías constitucionales. Su Presidente lo nombra el Rey a propuesta del CGPJ.
- **Ministerio Fiscal (art. 124):** promueve la acción de la justicia en defensa de la legalidad, de los derechos de los ciudadanos y del interés público. El Fiscal General del Estado lo nombra el Rey a propuesta del Gobierno, oído el CGPJ.
- **Policía judicial (art. 126):** depende de los Jueces, de los Tribunales y del Ministerio Fiscal en sus funciones de averiguación del delito. Aquí aparece la Guardia Civil en su faceta judicial.

## El Tribunal Constitucional (Título IX, arts. 159 a 165)

| Elemento | Dato |
|---|---|
| Miembros | 12, nombrados por el Rey |
| Propuestos por el Congreso | 4 (mayoría de tres quintos) |
| Propuestos por el Senado | 4 (misma mayoría) |
| Propuestos por el Gobierno | 2 |
| Propuestos por el CGPJ | 2 |
| Mandato | 9 años, con renovación por terceras partes cada 3 |
| Presidente | Nombrado entre sus miembros por el Rey, a propuesta del Pleno, por 3 años |

Son juristas de reconocida competencia con más de quince años de ejercicio profesional. La Ley Orgánica añade que el Tribunal actúa en Pleno, en Sala o en Sección, con dos Salas de seis Magistrados.

### Competencias (art. 161)

- Recurso de inconstitucionalidad contra leyes y normas con fuerza de ley.
- Recurso de amparo por violación de los derechos del art. 53.2 (los de los arts. 14 a 29 y la objeción de conciencia).
- Conflictos de competencia entre el Estado y las Comunidades Autónomas, o de estas entre sí.
- Las demás materias que le atribuyan la Constitución o las leyes orgánicas.

**Legitimados (art. 162):** para el recurso de inconstitucionalidad, el Presidente del Gobierno, el Defensor del Pueblo, 50 Diputados, 50 Senadores y los órganos de las Comunidades Autónomas; para el amparo, toda persona con interés legítimo, el Defensor del Pueblo y el Ministerio Fiscal.

**Plazos de la Ley Orgánica:** tres meses para el recurso de inconstitucionalidad desde la publicación de la norma; veinte días para el amparo frente a actos del Gobierno o de sus autoridades, y treinta días para el amparo frente a resoluciones judiciales.

**Efectos (art. 164):** las sentencias se publican en el BOE con los votos particulares, tienen valor de cosa juzgada y no cabe recurso contra ellas.

## Cómo memorizarlo

- Haz una tabla propia con tres columnas (órgano, composición, plazo) y repásala con [un test de Constitución](/blog/test-constitucion-20-preguntas-guardia-civil).
- Fíjate en los números que se parecen: CGPJ 20 miembros y 5 años; Tribunal Constitucional 12 miembros y 9 años.
- Si quieres un plan completo para los 23 temas, lo tienes en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) y en el [temario](/temario-guardia-civil).

## Preguntas frecuentes

### ¿Cuántos miembros tiene el Consejo General del Poder Judicial?
El Presidente del Tribunal Supremo, que lo preside, y veinte miembros nombrados por el Rey por cinco años: doce entre Jueces y Magistrados y ocho entre abogados y otros juristas (art. 122.3 CE).

### ¿Quién propone a los magistrados del Tribunal Constitucional?
Doce miembros: cuatro el Congreso, cuatro el Senado, dos el Gobierno y dos el CGPJ (art. 159.1 CE). El Congreso y el Senado lo hacen por mayoría de tres quintos.

### ¿Qué pasa si nadie consigue la investidura?
Si pasan dos meses desde la primera votación sin que ningún candidato obtenga la confianza del Congreso, el Rey disuelve ambas Cámaras y convoca elecciones (art. 99.5 CE).

### ¿Los ejemplos de este artículo son preguntas oficiales?
No. El esquema y las cifras son del texto legal; las ideas de memorización son nuestras. No hay datos oficiales sobre qué preguntas aparecerán: conviene dominar todo el Título.',
   NULL, NULL, 'publicado', '2026-12-09T06:01:00.000Z', 'acceso-guardia-civil',
   ARRAY['Constitución', 'Gobierno', 'Poder Judicial', 'Tribunal Constitucional']::text[], '{"title":"Gobierno, Poder Judicial y Tribunal Constitucional: esquema","description":"Esquema de los Títulos IV, VI y IX de la Constitución: investidura, CGPJ (20 miembros, 5 años) y Tribunal Constitucional (12 miembros, 9 años)."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales', 'articulo', '"Gramática inglesa para la Guardia Civil: los tiempos verbales que conviene dominar"', 'El examen de inglés son 20 preguntas de nivel ESO y los tiempos verbales son la base de casi cualquier frase. Repasamos presente, pasado, present perfect, futuro y condicionales, con ejemplos propios y un minitest con soluciones.', '**Respuesta corta:** la convocatoria pide inglés con un nivel compatible con la ESO, así que no necesitas gramática avanzada. Necesitas elegir bien el tiempo verbal en una frase corta, y para eso bastan cinco bloques: presente, pasado, *present perfect*, futuro y condicionales de primer y segundo tipo.

Los ejemplos de este artículo son **propios**, escritos para practicar. No son preguntas oficiales ni reproducen ningún examen anterior. Cómo es la prueba por dentro lo tienes en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

## Qué dice la convocatoria

La [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982) fija una prueba de **20 preguntas tipo test** (más una de reserva que solo cuenta si el Tribunal anula alguna), con cuatro opciones, un nivel «compatible con los contenidos contemplados para la ESO» en el Real Decreto 217/2022, y penalización por error. Para ver cómo encaja en la nota total, consulta [cómo se calcula la nota](/blog/calcular-nota-examen-guardia-civil).

## 1. Presente simple y presente continuo

- **Presente simple**: hábitos y hechos. *She works in Madrid.* *Water boils at 100 degrees.*
- **Presente continuo**: lo que ocurre ahora o un plan cercano. *Look, it is raining.* *We are meeting him tomorrow.*

Truco: si ves *every day*, *usually*, *never* o *always*, piensa en presente simple. Si ves *now*, *at the moment* o *look!*, piensa en continuo.

Cuidado con la tercera persona: *he works*, no *he work*. Y en negativas e interrogativas, el auxiliar lleva la -s: *Does he work here?*, no *Does he works here?*

## 2. Pasado simple y pasado continuo

- **Pasado simple**: acción terminada en un momento pasado. *I visited Seville in 2019.* *He didn''t call yesterday.*
- **Pasado continuo**: una acción en curso cuando ocurre otra. *I was watching TV when the phone rang.*

Con el verbo en negativa o pregunta, el pasado lo lleva el auxiliar: *Did you see him?*, no *Did you saw him?*

## 3. Present perfect: el que más confunde

Se forma con *have/has* + participio. Se usa cuando el pasado conecta con el presente: experiencias sin fecha, resultados y duración hasta ahora.

| Situación | Ejemplo |
| --- | --- |
| Experiencia sin fecha | *I have never been to London.* |
| Resultado presente | *She has lost her keys* (y no las tiene ahora). |
| Duración con *for/since* | *We have lived here for five years / since 2020.* |

La regla práctica: si aparece una fecha o un momento terminado (*yesterday*, *in 2019*, *last week*), va **pasado simple**. Con *ever*, *never*, *already*, *yet*, *for* o *since*, suele ir *present perfect*.

## 4. Futuro: *will* y *going to*

- ***Will***: decisiones espontáneas y predicciones. *I''ll help you with that.*
- ***Going to***: planes ya decididos o algo que se ve venir. *We are going to visit my aunt; we have bought the tickets.*

## 5. Condicionales de primer y segundo tipo

- **Primero** (situación real): *If it rains, we will stay at home.*
- **Segundo** (hipotética): *If I had more time, I would study more.*

Error típico: poner *will* después de *if*. *If it will rain* es incorrecto en este tipo de frase.

## Cómo practicarlo

1. Haz **diez frases con huecos al día** y corrige al momento.
2. Apunta cada fallo en un cuaderno con la regla que lo explica. Verás que se repiten pocas estructuras.
3. Pasa a tests de cuatro opciones cuanto antes: es el formato del examen, y conviene que te acostumbres al ritmo.

## Minitest (propio) con soluciones

1. She ___ to work by bus every day. (a) go (b) goes (c) is going (d) went
2. I ___ never ___ to Rome. (a) have / been (b) did / be (c) am / being (d) was / been
3. If it ___ tomorrow, we will cancel the trip. (a) will rain (b) rained (c) rains (d) is raining
4. When I arrived, they ___ dinner. (a) have (b) were having (c) are having (d) has
5. If I were you, I ___ that offer. (a) will accept (b) would accept (c) accept (d) accepted

**Soluciones:** 1-b, 2-a, 3-c, 4-b, 5-b.

## Preguntas frecuentes

### ¿Hace falta saber todos los tiempos verbales?
No hay un temario oficial de gramática inglesa; la convocatoria solo habla de un nivel compatible con la ESO. Los cinco bloques de arriba son una base razonable, no una lista oficial.

### ¿Qué hago si dudo entre dos opciones?
Descarta primero las que sean claramente incorrectas. Si te quedan dos, arriesgar puede compensar, porque el error resta un tercio de acierto. Lo explicamos con números más adelante.

### ¿Sirve estudiar con una academia?
Sirve entrenar con tests y simulacros en las mismas condiciones del examen. En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) el inglés se practica dentro de ese formato.',
   NULL, NULL, 'publicado', '2027-01-13T06:56:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'gramática', 'tiempos verbales', 'examen']::text[], '{"title":"Gramática inglesa Guardia Civil: tiempos verbales","description":"Repaso de los tiempos verbales ingleses para el examen de la Guardia Civil: presente, pasado, present perfect, futuro y condicionales, con minitest."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gramatica-leismo-laismo-dequeismo-guardia-civil', 'articulo', 'Gramática en la Guardia Civil: laísmo, leísmo, dequeísmo y otros errores del examen', 'La prueba de gramática pide detectar frases incorrectas desde el punto de vista morfológico o sintáctico. Los errores más habituales (laísmo, leísmo, dequeísmo, queísmo y otros), con trucos para detectarlos y la regla que los resuelve.', 'La prueba de gramática consiste en **veinte frases o expresiones** de las que hay que señalar las **incorrectas desde el punto de vista morfológico y/o sintáctico** (base 6.1.1.b de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Como en ortografía, es apto o no apto, y **seis errores o más** te excluyen. Y también es error marcar como incorrecta una frase que está bien.

## Leísmo, laísmo y loísmo

Tienen que ver con los pronombres de tercera persona, y el problema es **elegir entre «le», «la» y «lo»**.

- **Lo / la**: sustituyen al **complemento directo** (lo que recibe directamente la acción).
- **Le**: sustituye al **complemento indirecto** (a quién va dirigida o beneficia).

### Laísmo

Usar «la» en lugar de «le» para el complemento indirecto.

- ❌ «**La** dije que viniera.»
- ✅ «**Le** dije que viniera.»

**Truco:** con verbos como «decir», lo que se dice es el complemento directo («que viniera») y la persona es el indirecto: «le». Con verbos como «ver», en cambio, la persona es el complemento directo: «**la** vi».

### Loísmo

Usar «lo» en lugar de «le» para el complemento indirecto.

- ❌ «**Lo** di un regalo.»
- ✅ «**Le** di un regalo.»

### Leísmo

Usar «le» en lugar de «lo/la» para el complemento directo.

- ❌ «**Le** vi en la calle» (referido a una cosa o a una mujer).
- ✅ «**Lo** vi en la calle» (el coche) / «**La** vi».

La norma **admite** el leísmo en un caso: cuando el complemento directo es una **persona masculina singular**: «Le vi en la calle» (a Juan). Es un uso aceptado, aunque se prefiere «lo». Por eso, en una frase de examen, conviene mirar bien a qué se refiere.

## Dequeísmo y queísmo

Tienen que ver con la preposición **«de»** delante de «que».

### Dequeísmo

Añadir «de» donde no corresponde.

- ❌ «Pienso **de que** vendrá.»
- ✅ «Pienso **que** vendrá.»

### Queísmo

Quitar «de» donde sí corresponde.

- ❌ «Me alegro **que** vengas.»
- ✅ «Me alegro **de que** vengas.»

- ❌ «Me acuerdo **que** lo dijo.»
- ✅ «Me acuerdo **de que** lo dijo.»

**Truco:** convierte la frase en una pregunta o sustituye «que + oración» por «eso».

- «Pienso **eso**» → no lleva «de» → «pienso que».
- «Me alegro **de eso**» → lleva «de» → «me alegro de que».

## Otros errores que se repiten

### «Habían» como impersonal

«Haber» como verbo impersonal (existencia) **va siempre en singular**.

- ❌ «**Habían** muchas personas.»
- ✅ «**Había** muchas personas.»

Lo mismo con «hubieron»: ❌ «hubieron problemas» → ✅ «**hubo** problemas».

### Adverbios con posesivos

- ❌ «**Detrás mía**», «delante mío», «encima mío».
- ✅ «**Detrás de mí**», «delante de mí», «encima de mí».

### «Darse cuenta» sin «de»

- ❌ «Me di cuenta **que** era tarde.»
- ✅ «Me di cuenta **de que** era tarde.»

Es otro caso de queísmo, muy frecuente.

### Concordancia con «agua», «águila», «hacha»

Ante un sustantivo femenino que empieza por «a» tónica se usa «el», pero el adjetivo sigue en femenino.

- ❌ «**El agua** está **fresco**.»
- ✅ «**El agua** está **fresca**.»

### Verbos irregulares mal conjugados

- ❌ «**Andé**», «**cabo**» (de caber), «**satisfació**».
- ✅ «**Anduve**», «**quepo**», «**satisfizo**».

Repasa los irregulares más usados: «caber», «andar», «satisfacer», «poner», «traer».

## Cómo practicar

1. **Lee la frase entera y busca el verbo y su sujeto**, y luego los pronombres.
2. **Aplica los trucos de sustitución** (eso, ella, «a quién»).
3. **Haz tests con veinte frases** y revisa por qué cada error es error.
4. **No te fíes de lo que «suena bien»**: muchos errores se usan a diario y suenan normales.

Lo tienes enmarcado en [ortografía y gramática en el examen](/blog/ortografia-gramatica-examen-guardia-civil), y puedes seguir con las [tildes](/blog/tildes-reglas-oposicion-guardia-civil) y los [homófonos](/blog/homofonos-ortografia-guardia-civil).

## Preguntas frecuentes

### ¿Cuántas frases tiene la prueba de gramática?

Veinte, más cuatro de reserva que solo se valoran si el Tribunal anula alguna.

### ¿Cuántos errores excluyen?

Seis o más respuestas erróneas.

### ¿Es correcto «le vi» hablando de una persona?

Es el leísmo de persona masculina singular, aceptado por la norma. Con cosas o con mujeres, lo correcto es «lo» o «la».

### ¿Qué es el dequeísmo?

Usar «de que» donde no corresponde: «pienso de que…» en lugar de «pienso que…».',
   NULL, NULL, 'publicado', '2026-12-05T06:53:00.000Z', 'acceso-guardia-civil',
   ARRAY['gramática', 'laísmo', 'leísmo', 'dequeísmo']::text[], '{"title":"Laísmo, leísmo y dequeísmo: gramática Guardia Civil","description":"Gramática para la oposición a Guardia Civil: laísmo, leísmo, loísmo, dequeísmo, queísmo y otros errores del examen, con trucos para detectarlos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('grs-que-son-los-grupos-de-reserva-y-seguridad-guardia-civil', 'articulo', 'GRS: qué son los Grupos de Reserva y Seguridad', 'Los GRS son la fuerza de reserva de la Guardia Civil: refuerzan a otras unidades, vigilan grandes concentraciones de personas y apoyan en catástrofes. Qué hacen, cómo se organizan y cómo se llega a ellos, según las fuentes oficiales.', 'Si has visto a guardias civiles en una manifestación multitudinaria, en un gran evento deportivo o ayudando tras una inundación, es muy probable que fueran de un GRS. **Los Grupos de Reserva y Seguridad son las unidades de ejecución de la Agrupación de Reserva y Seguridad (ARS), la principal fuerza de reserva de la Guardia Civil.** No son una unidad «de élite» concreta, sino la reserva que el Cuerpo manda allí donde hace falta reforzar.

En este artículo te contamos solo lo que se puede comprobar en fuentes oficiales: qué hacen, cómo se organizan y qué sabemos de cómo se accede. Si quieres el contexto general de los destinos, lee antes [especialidades y destinos en la Guardia Civil](/blog/destinos-especialidades-guardia-civil).

## Qué es la Agrupación de Reserva y Seguridad

Según la web oficial de la Guardia Civil, la ARS se creó el 21 de junio de 1988 para agrupar las unidades de reserva y mejorar el apoyo a las unidades territoriales. La norma de estructura del Cuerpo ([Orden PRE/422/2013, BOE-A-2013-2906](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906)) la define como la principal unidad de reserva, «especialmente concebida, preparada y organizada» para la prevención, el mantenimiento y, en su caso, el restablecimiento de la seguridad pública. Depende de la Jefatura de Unidades Especiales y de Reserva.

## Qué hacen

La web de la Guardia Civil resume tres cometidos fundamentales:

- **Garantizar el orden y la seguridad en grandes concentraciones de masas.**
- **Realizar o colaborar en la protección y seguridad de altas personalidades.**
- **Reforzar los servicios de las unidades territoriales.**

Además, por ser unidad de reserva, puede emplearse en casos de grave riesgo, catástrofe o calamidad pública y en las misiones internacionales que se le asignen.

## Cómo se organiza

La ARS se compone de dos tipos de unidades:

| Unidad | Qué es |
|---|---|
| Grupos de Reserva y Seguridad (GRS) | Unidades que ejecutan los servicios. Se articulan en compañías y secciones y, según el servicio, se despliegan en distintos módulos de actuación. |
| Escuadrón de Caballería | Unidad montada, que también participa como unidad de honores y protocolo en actos de especial relevancia. |

Según la web oficial, hay ocho grupos, con base en Madrid, Sevilla, Valencia, Barcelona, Zaragoza, León, Pontevedra y Santa Cruz de Tenerife. El despliegue puede cambiar, así que contrasta siempre el dato en [guardiacivil.es](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/OrdenPublico/).

## GRS, GAR y UAR: no son lo mismo

Es una confusión muy frecuente. El GAR, con sede en Logroño, y la Unidad de Acción Rural son otras unidades del Cuerpo, con misiones propias. Esta página solo trata de los GRS. Si te interesa el GAR, consulta su ficha en la web oficial.

## Cómo se llega a un GRS

Aquí hay que ser prudentes. La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900), que regula las especialidades, incluye la especialidad de **Seguridad e Intervención**, con las modalidades de **Reserva y seguridad** y **Ecuestre**. Y establece la regla general: para obtener una especialidad hay que acreditar la cualificación específica y ocupar un puesto orgánico que la requiera.

Eso significa que no se accede «por oposición» a un GRS. Lo habitual es:

1. Ingresar en la Escala de Cabos y Guardias y obtener un primer destino.
2. Cumplir los requisitos que fije la convocatoria del curso o proceso correspondiente.
3. Obtener la cualificación y un destino con puesto de esa especialidad.

Qué requisitos exactos pide cada convocatoria, qué pruebas incluye, cuántas plazas hay o cuánto dura la formación **no lo vamos a escribir aquí**, porque cambian y deben leerse en la convocatoria vigente. El Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)) establece que la selección de asistentes a los cursos de perfeccionamiento se publica, con carácter general, en el Boletín Oficial de la Guardia Civil. Y fija requisitos generales para los cursos de especialización, como la aptitud psicofísica y técnica, titulaciones o niveles de idiomas, entre otros.

## Un dato curioso del Reglamento de destinos

El Reglamento de destinos ([Real Decreto 470/2019, BOE-A-2019-11398](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398)) reconoce un derecho preferente para quien haya permanecido al menos cinco años ininterrumpidos en unidades de la ARS, en vacante con exigencia de la cualificación específica vinculada a la especialidad. Lo recoge como una de las circunstancias de especial responsabilidad o penosidad. Es una muestra de que estos destinos exigen dedicación, pero no te dice cómo entrar.

## Qué puedes hacer ya

No puedes elegir un GRS antes de ser guardia civil. Pero sí puedes prepararte: la forma física que trabajas para las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) te servirá después, y el inglés ayuda en cualquier destino. Antes de nada, aprobar: en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos con ese primer paso.

## Preguntas frecuentes

### ¿GRS es lo mismo que antidisturbios?

No hay una unidad con ese nombre oficial. La web de la Guardia Civil habla de garantizar el orden y la seguridad en grandes concentraciones de personas, entre otros cometidos de reserva.

### ¿Se puede ir a un GRS nada más salir de Baeza?

La normativa de especialidades exige la cualificación específica y un puesto orgánico que la requiera. Cómo se concreta para este caso depende de la convocatoria vigente, que debes consultar.

### ¿Cuántos GRS hay?

La web oficial indica ocho grupos, con las bases mencionadas arriba. Revisa la página por si el despliegue ha cambiado.

### ¿Dónde veo cómo acceder?

En la convocatoria correspondiente y en el [portal de la Guardia Civil](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/OrdenPublico/). Desconfía de las cifras cerradas que veas en foros.',
   NULL, NULL, 'publicado', '2027-01-27T06:54:00.000Z', 'acceso-guardia-civil',
   ARRAY['grs', 'especialidades', 'destinos', 'reserva y seguridad']::text[], '{"title":"GRS Guardia Civil: qué son y qué funciones tienen","description":"GRS de la Guardia Civil: qué son los Grupos de Reserva y Seguridad, qué funciones tienen, cómo se organizan y dónde consultar cómo se accede a ellos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('guardia-civil-o-policia-nacional', 'articulo', 'Guardia Civil o Policía Nacional: diferencias para elegir oposición', 'Requisitos, examen, pruebas físicas, cuadro médico y formación de las dos oposiciones, comparados con las convocatorias de 2026 en la mano. Qué cambia de verdad y qué preguntas hacerte para elegir.', 'Muchos opositores dudan entre las dos. Tiene sentido: las funciones se parecen, los temarios se solapan en parte y el sueldo de entrada es comparable. Pero los procesos selectivos son bastante distintos, y elegir bien te ahorra meses.

Comparamos las dos con sus convocatorias de 2026: la de la Escala de Cabos y Guardias de la Guardia Civil ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) y la de la Escala Básica de la Policía Nacional ([BOE-A-2026-15055](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-15055)).

## La diferencia de fondo

- La **Guardia Civil** es un instituto armado **de naturaleza militar**. Su día a día, su régimen disciplinario y su formación están marcados por ese carácter.
- La **Policía Nacional** es un **cuerpo policial de naturaleza civil**.

En el reparto territorial, a grandes rasgos, la Guardia Civil cubre la mayor parte del territorio y las zonas rurales, y la Policía Nacional, las capitales de provincia y las grandes ciudades. Si te imaginas trabajando en un pueblo, en tráfico, en el monte o en la costa, piensa en la Guardia Civil; si te ves en una ciudad grande, en la Policía Nacional.

## Requisitos: aquí está la primera gran diferencia

| Requisito | Guardia Civil (2026) | Policía Nacional (2026) |
|---|---|---|
| Edad | De 18 a 40 años (no cumplir 41 en el año) | 18 años, sin tope propio más allá de la edad de jubilación |
| Titulación | ESO o equivalente | Bachiller o equivalente |
| Carné de conducir | Clase B | Clase B |
| Idioma | No es requisito (el inglés es una prueba) | Nivel A2 de inglés o francés acreditado |
| Estatura | Sin límite desde 2023 | Sin límite para ingresar desde 2022 |
| Tatuajes | Prohibidos los de contenido contrario a valores constitucionales, etc. | La convocatoria no los menciona |

**Si solo tienes la ESO o has cumplido 41 años**, la decisión está tomada por ti: en 2026, la Guardia Civil exigía ESO y la Policía Nacional, Bachiller; y la Policía Nacional no tiene el límite de 40 años.

Tienes el detalle de la Guardia Civil en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil) y en [edad máxima para ser Guardia Civil](/blog/edad-maxima-guardia-civil).

## Concurso-oposición frente a oposición libre

- **Guardia Civil:** es **concurso-oposición**. Además del examen, se valoran méritos (titulaciones, idiomas, experiencia…) que suman hasta 45 puntos de los 195 posibles. Te lo explicamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).
- **Policía Nacional:** es **oposición libre**. Solo a quien ya ha superado la oposición se le suman algunos méritos tasados (servicios en las Fuerzas Armadas, deportista de alto nivel e idiomas por encima del A2, estos hasta 2 puntos).

## El examen teórico

| | Guardia Civil | Policía Nacional |
|---|---|---|
| Preguntas de conocimientos | 100 | 100 |
| Opciones por pregunta | 4 | 3 |
| Tiempo | 140 minutos para todo el bloque (ortografía, gramática, conocimientos e inglés) | 50 minutos para conocimientos |
| Penalización | Sí, los errores restan | Sí, cada error resta medio acierto |
| Ortografía y gramática | Pruebas propias: 6 errores o más excluyen | Sin prueba propia (la ortografía es un tema del temario) |
| Inglés | Prueba de 20 preguntas que puntúa | Requisito A2 acreditado; los niveles superiores suman como mérito |
| Temario | Programa propio de la Guardia Civil | 45 temas en tres bloques: jurídico, sociales y técnico-científico |

El bloque técnico-científico de la Policía Nacional (informática, redes, ciberdelincuencia, armas, vehículos prioritarios…) no tiene equivalente en la Guardia Civil. A cambio, la Guardia Civil exige superar [ortografía y gramática](/blog/ortografia-gramatica-examen-guardia-civil) como pruebas eliminatorias y puntúa el [inglés](/blog/ingles-oposicion-guardia-civil).

## Pruebas físicas: en una son apto o no apto, en la otra puntúan

- **Guardia Civil:** carrera de 2.000 metros, circuito de agilidad y coordinación, extensiones de brazos y 50 metros de natación. Son **apto o no apto**: basta con superar las marcas. Te las contamos en [las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).
- **Policía Nacional:** circuito de agilidad, dominadas (hombres) o suspensión en barra (mujeres) y carrera de 1.000 metros. **Puntúan de 0 a 10**, hacen media y esa nota se suma a la del examen. Un cero en cualquier ejercicio elimina.

En la Policía Nacional estar muy en forma te sube puesto en la lista; en la Guardia Civil, cumplir las marcas es suficiente, y la diferencia se hace en el examen y en los méritos.

## Cuadro médico: dos normas distintas

Cada cuerpo tiene la suya y no se parecen tanto como se cree. Un ejemplo claro es la vista:

- **Guardia Civil:** agudeza visual superior a 0,7 en cada ojo **con o sin corrección**, y máximos de graduación (miopía −3, hipermetropía +3, astigmatismo ±2). Lo explicamos en [gafas, miopía y operación de vista](/blog/gafas-miopia-operacion-vista-guardia-civil).
- **Policía Nacional:** agudeza visual de 0,6 en cada ojo **sin corrección**, sin límites de dioptrías.

Con mucha miopía corregida con gafas, la Policía Nacional es más difícil; con poca graduación pero sin gafas, puede ser al revés. Revisa los dos cuadros con tu oftalmólogo si dudas.

## Formación

- **Guardia Civil:** curso en la Academia de Cabos y Guardias de Baeza (Jaén) y prácticas. Te contamos cómo es en [qué pasa después de aprobar](/blog/academia-baeza-guardia-civil).
- **Policía Nacional:** curso académico selectivo en régimen de internado en la Escuela Nacional de Policía y un módulo de prácticas en un puesto de trabajo. La normativa de Policía Nacional fija para el curso entre 6 y 12 meses y para las prácticas, entre 9 y 12.

## Plazas en 2026

- **Guardia Civil:** 3.240 plazas, de ellas 1.704 de acceso libre.
- **Policía Nacional:** 2.704 plazas, de ellas 2.163 por oposición libre.

## ¿Cuál elijo? Cinco preguntas

1. **¿Qué titulación tienes?** Con solo la ESO, Guardia Civil.
2. **¿Qué edad tienes?** Si cumples 41 o más en el año de la convocatoria, Policía Nacional.
3. **¿Dónde te ves trabajando?** Rural, carretera, mar o montaña: Guardia Civil. Gran ciudad: Policía Nacional.
4. **¿Te atrae o te pesa el carácter militar?** Es real, y se nota desde la academia.
5. **¿Cuál es tu punto fuerte?** Si eres muy bueno físicamente, en la Policía Nacional eso puntúa. Si tienes méritos (titulaciones, idiomas), en la Guardia Civil suman en el concurso.

Lo que no te recomendamos es preparar las dos a la vez sin un plan: los exámenes, las físicas y los calendarios son distintos, y repartirte suele significar llegar a medias a ambas.

Si eliges la Guardia Civil, tienes el temario, los tests y los simulacros en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Qué es más fácil, Guardia Civil o Policía Nacional?

Ninguna es fácil, y depende de tu perfil. La Guardia Civil pide menos titulación (ESO) y tiene concurso de méritos; la Policía Nacional no tiene edad máxima y puntúa las pruebas físicas.

### ¿Se puede entrar en la Policía Nacional solo con la ESO?

No. La convocatoria de 2026 exige el título de Bachiller o equivalente. La Guardia Civil sí admite la ESO.

### ¿Hay edad máxima en la Policía Nacional?

No tiene un tope propio: basta con no exceder la edad de jubilación. En la Guardia Civil, en 2026, no se podía cumplir 41 años durante el año de la convocatoria.

### ¿Las pruebas físicas son iguales?

No. En la Guardia Civil son apto o no apto e incluyen natación; en la Policía Nacional puntúan de 0 a 10 y no hay natación.',
   NULL, NULL, 'publicado', '2026-11-16T06:30:00.000Z', 'acceso-guardia-civil',
   ARRAY['Policía Nacional', 'comparativa', 'requisitos', 'convocatoria']::text[], '{"title":"Guardia Civil o Policía Nacional: diferencias 2026","description":"Guardia Civil o Policía Nacional: requisitos, edad, titulación, examen, físicas, cuadro médico y formación comparados con las convocatorias de 2026."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('historia-de-la-guardia-civil-del-duque-de-ahumada-a-hoy', 'articulo', 'Historia de la Guardia Civil: del Duque de Ahumada a hoy', 'De los decretos de 1844 al Código de Conducta de 2022: una cronología de la Guardia Civil con fechas contrastadas en fuentes oficiales, y una advertencia sobre la fecha de fundación que suele confundir a los opositores.', 'El programa oficial incluye en el tema 15 la «historia de la Guardia Civil, desde inicios del siglo XIX hasta la democracia» (consulta el [temario](/temario-guardia-civil)). Este artículo recoge los hitos que hemos podido contrastar en la web oficial de la Guardia Civil (sección «Historia»), con una advertencia: **en 1844 hubo dos decretos, y solo uno llegó a aplicarse**.

La respuesta corta: el Cuerpo se creó por el Real Decreto de 28 de marzo de 1844, pero ese decreto quedó derogado antes de entrar en vigor y el considerado fundacional es el de 13 de mayo de 1844. En ambos aparece el Duque de Ahumada.

## Antecedentes

- **1820**: Pedro Agustín Girón, padre del futuro fundador, proyectó una fuerza de orden público, la Legión de Salvaguardias Nacionales, inspirada en la gendarmería francesa. Las Cortes no la aprobaron, pero la web oficial la considera antecedente directo.
- **26 de enero de 1844**: el ministro de la Guerra pidió al de Gobernación que organizase una policía de protección y seguridad pública, porque el Ejército tenía dificultades para asumir esa tarea.

## La fundación en 1844

| Fecha | Hecho |
|---|---|
| 28 de marzo | Real Decreto que crea un «cuerpo especial de fuerza armada de Infantería y Caballería», los «Guardias Civiles»; se encarga su organización al mariscal de campo Francisco Javier Girón y Ezpeleta, II Duque de Ahumada |
| 20 de abril | Informe del Duque, que provoca la derogación del decreto anterior, que «ni siquiera entró en vigor» |
| 13 de mayo | Real Decreto presentado por Ramón María Narváez, «auténtico decreto fundacional» |
| Verano | Reclutamiento e instrucción en Leganés y Vicálvaro |
| 1 de septiembre | Presentación oficial del Cuerpo en una parada militar; el Duque, designado Inspector General |
| 9 y 15 de octubre | Reglamento para el Servicio y Reglamento Militar |

La organización inicial, según la web oficial, fue de 14 jefes, 232 oficiales y 5.769 guardias repartidos en 14 tercios.

### ¿28 de marzo o 13 de mayo?

La fecha que el Cuerpo celebra como aniversario es el 28 de marzo, pero el decreto efectivo fue el de mayo. Si una pregunta te pide «la fecha del real decreto fundacional», lee con cuidado el enunciado y no des por hecho que sean la misma.

## La Cartilla (1845)

Con fecha **20 de diciembre de 1845** figura la *Cartilla del Guardia Civil*, redactada por el Duque de Ahumada y descrita por la web oficial como «el auténtico código moral de la Institución». Recoge que «el honor es la principal divisa del guardia civil». Su espíritu sigue vivo en el Código de Conducta de 2022, cuyo preámbulo la considera precedente y dice incorporar sus principios (lo veremos en el artículo de deontología).

## Siglo XIX: consolidación

La web oficial recoge, entre otros hechos: la primera misión internacional (1847, patrulla de Caballería en Oporto), el rescate de náufragos de la goleta *Mary* en Sanlúcar (1848), la creación el **1 de abril de 1853** de la «Compañía de Guardias Jóvenes», origen del actual [Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil), y la ayuda a la población en la epidemia de cólera de 1855. Tras la Vicalvarada de 1854, durante el Bienio progresista, se planteó disolver el Cuerpo. Hacia finales del siglo el bandolerismo se considera prácticamente erradicado.

## De la Restauración a la Transición

La web oficial dedica secciones a la Restauración, el reinado de Alfonso XIII, la Segunda República, la Guerra Civil y el franquismo. No incluimos aquí cifras ni fechas de esas etapas porque no las hemos podido contrastar a este nivel de detalle: estúdialas en la sección «Historia» de [guardiacivil.es](https://web.guardiacivil.es/es/institucional/conocenos/historiaguacivil/La_Fundacion/) y en tu temario.

## Democracia y normativa actual

- **23 de febrero de 1981**: intento de golpe de Estado, con participación de algunos guardias civiles.
- **30 de octubre de 1981**: Real Decreto 3543/1981, que crea la figura del guardia civil auxiliar.
- **13 de marzo de 1986**: [LO 2/1986](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada), que define a la Guardia Civil como instituto armado de naturaleza militar.
- **1988**: creación del SEPRONA y de la Agrupación de Reserva y Seguridad; un real decreto ley regula la incorporación de la mujer a las Fuerzas Armadas, lo que abre el camino a su ingreso en el Cuerpo.
- **1991**: Servicio Marítimo.
- **2007**: LO 11/2007, de derechos y deberes.
- **28 de noviembre de 2014**: Ley 29/2014, de Régimen del Personal.
- **4 de marzo de 2022**: Real Decreto 176/2022, Código de Conducta.

## Cómo estudiarla

Haz una línea del tiempo con tres bloques (antecedentes, fundación, democracia) y tarjetas con fecha y hecho. Las fechas de 1844 son la parte donde más fácil resulta confundirse. Si quieres método, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) integra el temario.

## Preguntas frecuentes

### ¿Quién fundó la Guardia Civil?

Francisco Javier Girón y Ezpeleta, II Duque de Ahumada, a quien se encargó organizarla en 1844. La web oficial lo presenta como comisionado y luego Inspector General.

### ¿Qué es la Cartilla del Guardia Civil?

Un texto de 1845 redactado por el Duque de Ahumada, considerado el código moral de la institución.

### ¿Cuántos tercios tenía al principio?

Según la web oficial, 14 tercios, con 14 jefes, 232 oficiales y 5.769 guardias.

### ¿La historia entra entera en el examen?

El programa dice «desde inicios del siglo XIX hasta la democracia», pero ningún dato oficial indica qué se pregunta. Consulta la convocatoria vigente.',
   NULL, NULL, 'publicado', '2026-12-25T06:33:00.000Z', 'acceso-guardia-civil',
   ARRAY['historia', 'duque de ahumada', 'temario', 'cronología']::text[], '{"title":"Historia de la Guardia Civil: fundación y fechas clave","description":"Historia de la Guardia Civil: decretos de 1844, Duque de Ahumada, Cartilla de 1845 y democracia, con fechas contrastadas en fuentes oficiales."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('homofonos-ortografia-guardia-civil', 'articulo', 'Haber o a ver, echo o hecho: los homófonos que te pueden excluir', 'Los homófonos suenan igual y se escriben distinto, y son una fuente clásica de errores en la prueba de ortografía. Las parejas y tríos que más se confunden, con una regla rápida para cada uno.', 'En la prueba de ortografía, una palabra bien escrita pero **en el lugar equivocado** cuenta como falta. Los homófonos son el terreno clásico de esos errores, y se repiten porque en la práctica casi nadie los repasa.

Recuerda que son seis o más respuestas erróneas las que excluyen, y que marcar como falta una palabra correcta también cuenta como error. Si todavía no lo has hecho, repasa las [tildes](/blog/tildes-reglas-oposicion-guardia-civil) y las [palabras trampa con B/V, G/J y H](/blog/palabras-trampa-ortografia-guardia-civil).

## Haber / a ver

- **Haber** es un verbo: «debe haber algún error», «ha de haber», «hay que haber estudiado».
- **A ver** es preposición + verbo «ver»: «vamos a ver», «a ver qué pasa».

**Truco:** si puedes sustituirlo por «mirar», es **a ver**. «A ver (mirar) qué pasa».

## Echo / hecho

- **Echo** es del verbo **echar**: «lo echo de menos», «echo sal».
- **Hecho** es del verbo **hacer** (participio) o sustantivo: «lo he hecho», «un hecho real».

**Truco:** si puedes sustituirlo por «tiro» o «lanzo», es **echo**. Si puedes cambiarlo por «realizado» o «suceso», es **hecho**.

## Hay / ahí / ay

- **Hay** es del verbo **haber**: «hay un problema».
- **Ahí** es adverbio de lugar: «ahí está».
- **Ay** es una interjección: «¡ay, qué dolor!».

## Ha / a / ah

- **Ha** es del verbo **haber**: «ha venido».
- **A** es preposición: «voy a casa».
- **Ah** es interjección: «¡ah, ya lo veo!».

**Truco:** si puedes cambiar por «han» (plural), es **ha**: «ha venido» → «han venido».

## Porque / por que / porqué / por qué

Es uno de los más difíciles.

| Forma | Cuándo | Ejemplo |
|---|---|---|
| **porque** | Conjunción: causa | «Estudio **porque** quiero aprobar» |
| **por que** | Preposición + pronombre relativo («por el cual») | «El motivo **por que** vine» |
| **porqué** | Sustantivo: «el motivo» (lleva artículo) | «No sé **el porqué**» |
| **por qué** | Pregunta (directa o indirecta) | «¿**Por qué** vienes?», «No sé **por qué**» |

**Truco:** si puedes cambiarlo por «el motivo», es **porqué**. Si es una pregunta, **por qué**.

## Sino / si no

- **Sino** es conjunción adversativa (contrapone): «no es rojo, **sino** azul».
- **Si no** es «si» condicional + «no»: «**si no** estudias, no apruebas».

## Con que / con qué / conque

- **Con que**: preposición + «que»: «el lápiz **con que** escribo».
- **Con qué**: pregunta: «¿**con qué** escribes?».
- **Conque**: conjunción consecutiva («así que»): «ya lo sabes, **conque** actúa».

## Tan bien / también; tan poco / tampoco

- **También** es afirmación (como «además»): «yo **también** voy».
- **Tan bien** es adverbio de cantidad + adverbio: «lo hace **tan bien**».
- **Tampoco** añade una negación a otra: «yo **tampoco** voy».
- **Tan poco** es cantidad: «hay **tan poco** tiempo».

## Asimismo / así mismo / a sí mismo

- **Asimismo** significa «también»: «Asimismo, se recuerda…». La norma admite también escribirlo en dos palabras con ese sentido.
- **A sí mismo** es «a uno mismo»: «se dio un premio **a sí mismo**». Es la forma que no se puede confundir con las anteriores.

## A parte / aparte

- **Aparte** significa «por separado»: «lo puso **aparte**», «punto y **aparte**».
- **A parte** es preposición + el sustantivo «parte»: «destinó el dinero **a parte** de la deuda».

## Otros que conviene repasar

- **Hola / ola**: saludo / onda del mar.
- **Hora / ora**: tiempo / verbo «orar».
- **Hacia / Asia**: dirección / continente.
- **Vaya / valla / baya**: verbo ir / cerca / fruto.
- **Cayó / calló**: caer / callar.
- **Hierba / hierva**: planta / verbo hervir.
- **Rebelar / revelar**: sublevarse / descubrir.

## Cómo estudiarlos

1. **No memorices pares sueltos:** estudia la frase en la que aparece cada uno.
2. **Aplica los trucos de sustitución:** cambiar por «mirar», «el motivo» o «han» resuelve muchos casos.
3. **Revisa tus fallos de los tests** y apúntalos en un cuaderno.
4. **Lee en voz alta**: ayuda a notar si la oración tiene sentido.

## Preguntas frecuentes

### ¿Cuántos homófonos pueden caer en la prueba?

La convocatoria no lo detalla. Se examinan cinco frases con cuatro palabras subrayadas cada una, así que cualquier tipo de falta puede aparecer.

### ¿«A ver» y «haber» son lo mismo?

No. «A ver» es preposición más verbo (mirar); «haber» es un verbo.

### ¿Cuál es la diferencia entre «porque» y «por qué»?

«Porque» da una causa; «por qué» introduce una pregunta, directa o indirecta.

### ¿Cuántos errores se permiten?

Hasta cinco. Con seis o más respuestas erróneas se queda excluido.',
   NULL, NULL, 'publicado', '2026-12-04T06:36:00.000Z', 'acceso-guardia-civil',
   ARRAY['ortografía', 'homófonos', 'porque', 'haber']::text[], '{"title":"Homófonos: haber/a ver, echo/hecho y más","description":"Homófonos de la prueba de ortografía de la Guardia Civil: haber/a ver, echo/hecho, porque/por qué, sino/si no y otros, con reglas rápidas para distinguirlos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('igualdad-efectiva-de-mujeres-y-hombres-claves-de-la-ley', 'articulo', 'Igualdad efectiva de mujeres y hombres: claves de la Ley Orgánica 3/2007', 'El tema 2 del programa es la Ley Orgánica 3/2007. Repasamos sus conceptos (discriminación directa e indirecta, acoso, acciones positivas, composición equilibrada), sus planes de igualdad y lo que dice de las Fuerzas y Cuerpos de Seguridad.', 'La Ley Orgánica 3/2007, de 22 de marzo, para la igualdad efectiva de mujeres y hombres, es el tema 2 del programa de la Escala de Cabos y Guardias. **Respuesta corta:** es una ley de conceptos y definiciones, y se estudia mejor con un glosario que con una lectura corrida. Lo que entra, según nuestro [temario](/temario-guardia-civil): el Título I, el Capítulo I del Título II y los Títulos III a VIII.

El texto consolidado está en el [BOE-A-2007-6115](https://www.boe.es/buscar/act.php?id=BOE-A-2007-6115). Todos los artículos que citamos se han comprobado en él.

## Estructura de la ley

| Título | Contenido |
|---|---|
| I | El principio de igualdad y la tutela contra la discriminación |
| II | Políticas públicas para la igualdad |
| III | Igualdad y medios de comunicación |
| IV | El derecho al trabajo en igualdad de oportunidades |
| V | El principio de igualdad en el empleo público |
| VI | Igualdad de trato en el acceso a bienes y servicios y su suministro |
| VII | La igualdad en la responsabilidad social de las empresas |
| VIII | Disposiciones organizativas |

## Título I: los conceptos que tienes que dominar

### Objeto y ámbito
- **Art. 1:** hacer efectivo el derecho de igualdad de trato y de oportunidades entre mujeres y hombres, eliminando la discriminación de la mujer en cualquier ámbito de la vida, en desarrollo de los artículos 9.2 y 14 de la Constitución.
- **Art. 2:** todas las personas gozan de los derechos derivados de la igualdad de trato; las obligaciones se aplican a toda persona, física o jurídica, que se encuentre o actúe en territorio español.

### Definiciones
| Concepto | Qué dice la ley |
|---|---|
| **Igualdad de trato** (art. 3) | Ausencia de toda discriminación, directa o indirecta, por razón de sexo, especialmente la derivada de la maternidad, la asunción de obligaciones familiares y el estado civil |
| **Discriminación directa** (art. 6.1) | Ser tratada o tratado, por razón de sexo, de manera menos favorable que otra persona en situación comparable |
| **Discriminación indirecta** (art. 6.2) | Una disposición, criterio o práctica aparentemente neutros que pone a personas de un sexo en desventaja particular, salvo justificación objetiva con finalidad legítima y medios necesarios y adecuados |
| **Acoso sexual** (art. 7.1) | Comportamiento verbal o físico de naturaleza sexual con el propósito o el efecto de atentar contra la dignidad, en particular creando un entorno intimidatorio, degradante u ofensivo |
| **Acoso por razón de sexo** (art. 7.2) | Comportamiento en función del sexo con el propósito o el efecto de atentar contra la dignidad y crear ese entorno |
| **Embarazo o maternidad** (art. 8) | Todo trato desfavorable relacionado con ellos es discriminación directa por razón de sexo |
| **Indemnidad** (art. 9) | También es discriminación el trato adverso como consecuencia de presentar una queja, denuncia o recurso para impedir la discriminación |

Además, toda orden de discriminar es discriminatoria (art. 6.3), y los actos y cláusulas que causen discriminación son nulos y dan lugar a reparación (art. 10).

### Otras reglas del Título I
- **Acciones positivas (art. 11):** los poderes públicos pueden adoptar medidas específicas a favor de las mujeres para corregir desigualdades de hecho; han de ser razonables y proporcionadas y se aplican mientras subsistan esas situaciones.
- **Tutela judicial (art. 12)** y **prueba (art. 13):** en los procedimientos con alegaciones de discriminación por razón de sexo, corresponde a la persona demandada probar la ausencia de discriminación y la proporcionalidad de sus medidas (no en los procesos penales).

## Composición equilibrada

La disposición adicional primera define la **presencia o composición equilibrada**: las personas de cada sexo no superan el **60 %** ni son menos del **40 %** en el conjunto de que se trate. Es una cifra muy fácil de preguntar.

## Políticas públicas (Título II, Capítulo I)

- **Art. 14:** criterios generales de actuación de los poderes públicos (efectividad del derecho de igualdad, integración del principio en las políticas, colaboración entre administraciones, participación equilibrada, erradicación de la violencia de género y del acoso...).
- **Art. 15:** transversalidad: el principio de igualdad informa la actuación de todos los poderes públicos.

## En el trabajo (Título IV)

- **Planes de igualdad (arts. 45 y 46):** son un conjunto ordenado de medidas, adoptadas tras un diagnóstico de situación. Son obligatorios para las empresas de **cincuenta o más trabajadores** (art. 45.2 en su redacción vigente) y también cuando lo establezca el convenio colectivo; para las demás son voluntarios.
- **Art. 48:** las empresas deben promover condiciones de trabajo que eviten delitos y conductas contra la libertad sexual y la integridad moral, incidiendo especialmente en el acoso sexual y por razón de sexo, incluidos los cometidos en el ámbito digital.

## Empleo público y Fuerzas y Cuerpos de Seguridad (Título V)

Este título es el que más te afecta:

- **Art. 55:** las convocatorias de pruebas selectivas para el empleo público deben acompañarse de un informe de impacto de género, salvo urgencia.
- **Art. 61:** todas las pruebas de acceso al empleo público de la Administración General del Estado contemplarán el estudio y la aplicación del principio de igualdad.
- **Art. 67 (Fuerzas y Cuerpos de Seguridad del Estado):** sus normas reguladoras promoverán la igualdad efectiva, impidiendo cualquier discriminación profesional, especialmente en el acceso, la formación, los ascensos, los destinos y las situaciones administrativas.
- **Art. 68:** las normas de igualdad, prevención de la violencia de género y conciliación del personal de las administraciones se aplican a las Fuerzas y Cuerpos de Seguridad, adaptándose a sus peculiaridades.

## Títulos VI a VIII, en una línea
- Bienes y servicios (Título VI); responsabilidad social de las empresas (Título VII, art. 75 sobre consejos de administración); organización (Título VIII: Comisión Interministerial, Unidades de Igualdad y Consejo de Participación de la Mujer).

## Cómo estudiarla

1. Haz un glosario con las definiciones (arts. 3, 6, 7, 8, 9 y la disposición adicional primera) y recítalo sin mirar.
2. Para las cifras, una tarjeta por dato: 60/40, cincuenta trabajadores, plan de igualdad de la Administración General del Estado al inicio de cada legislatura (art. 64)... comprueba siempre el texto vigente.
3. Relaciona la ley con el artículo 14 de la Constitución, que ya repasamos en [derechos fundamentales y libertades públicas](/blog/derechos-fundamentales-libertades-publicas-guardia-civil).
4. Si estás empezando, mira [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero). Para planificar los 23 temas, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) los ordena por semanas.

## Preguntas frecuentes

### ¿Qué diferencia hay entre discriminación directa e indirecta?
En la directa se trata de forma menos favorable a una persona por razón de sexo. En la indirecta la desventaja la causa una norma o práctica aparentemente neutra que no se puede justificar objetivamente (art. 6).

### ¿Qué significa composición equilibrada?
Que en el conjunto de que se trate, las personas de cada sexo no superen el 60 % ni sean menos del 40 % (disposición adicional primera).

### ¿Qué dice la ley de las Fuerzas y Cuerpos de Seguridad?
Que sus normas promoverán la igualdad efectiva, especialmente en el acceso, la formación, los ascensos, los destinos y las situaciones administrativas (art. 67).

### ¿Hay que saberse toda la ley?
Solo los Títulos y capítulos que fija el programa de la convocatoria vigente. Consulta siempre el texto de la convocatoria.',
   NULL, NULL, 'publicado', '2026-12-11T06:35:00.000Z', 'acceso-guardia-civil',
   ARRAY['igualdad', 'LO 3/2007', 'temario', 'discriminación']::text[], '{"title":"Ley de Igualdad LO 3/2007: claves para la oposición","description":"LO 3/2007 de igualdad efectiva: discriminación directa e indirecta, acoso, acciones positivas, planes de igualdad y su aplicación a la Guardia Civil."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('ingles-como-llegar-a-los-8-puntos-minimos-sin-ser-bilingue', 'articulo', '"Inglés: cómo llegar a los 8 puntos mínimos sin ser bilingüe"', 'El inglés vale 20 de los 195 puntos de la oposición, pero quedar por debajo de 8 excluye. Cómo se calcula la nota con la penalización de un tercio, qué combinaciones de aciertos y errores llegan al mínimo y cuándo compensa arriesgar.', '**Respuesta corta:** necesitas 8 puntos sobre 20 y cada acierto suma un punto y cada error resta un tercio. Con 8 aciertos y ninguna respuesta errónea ya llegas; con más aciertos puedes permitirte algún error. No necesitas ser bilingüe: necesitas rentabilizar bien las preguntas que sí sabes.

## Lo que dice la convocatoria

Según la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982):

- 20 preguntas tipo test con cuatro opciones, más una de reserva que solo se valora si el Tribunal anula alguna.
- Nivel compatible con la ESO (Real Decreto 217/2022).
- Las respuestas incorrectas penalizan; las no contestadas, no.
- Se valora de 0 a 20 puntos, y hay que alcanzar un mínimo de **8** para no quedar excluido.

La fórmula de la convocatoria usa unos valores para el inglés (puntuación máxima 20, 20 preguntas y 4 alternativas) que, con la penalización de un tercio, se traducen en una regla sencilla: **nota = aciertos − errores/3**.

## ¿Cuánto vale dentro del total?

Sumando las partes, el máximo del proceso son 195 puntos: 100 del examen de conocimientos generales, 20 de inglés, 30 de la psicotécnica y 45 de la fase de concurso. El inglés pesa, por tanto, algo más de un 10 %. Pesa poco como puntuación, pero es **eliminatorio**: bajar de 8 te deja fuera aunque el resto vaya perfecto. Tienes la visión global en [la calculadora y la guía de la nota](/blog/calcular-nota-examen-guardia-civil).

## Combinaciones que llegan a 8

Con 20 preguntas contestadas o no, estas combinaciones dan exactamente 8 puntos:

| Aciertos | Errores | En blanco | Nota |
| --- | --- | --- | --- |
| 8 | 0 | 12 | 8,00 |
| 9 | 3 | 8 | 8,00 |
| 10 | 6 | 4 | 8,00 |
| 11 | 9 | 0 | 8,00 |

Si tienes más aciertos o menos errores que en cada fila, superas el mínimo. Por ejemplo, 12 aciertos y 8 errores dan 9,33.

La lectura práctica: el camino más seguro son **10 aciertos de los que estés realmente seguro**, no 14 apostando.

## ¿Compensa arriesgar?

La penalización de un tercio con cuatro opciones tiene una consecuencia matemática: **contestar al azar no gana ni pierde nada de media**. Por cada pregunta, la ganancia esperada es:

| Opciones que descartas | Probabilidad de acertar | Ganancia esperada |
| --- | --- | --- |
| Ninguna (al azar) | 1/4 | 0 |
| Una | 1/3 | +0,11 |
| Dos | 1/2 | +0,33 |

Dicho de otro modo: si no tienes ni idea, deja en blanco o marca sin más, da igual de media; si descartas **al menos una** opción, ya sale a cuenta. Es la media: en una sola pregunta puedes perder, y cuando estás a un punto del mínimo, la varianza importa. Lo prudente es arriesgar solo con opciones descartadas.

## Un plan para llegar a 8

1. **Mide el punto de partida** con un test de 20 preguntas cronometrado.
2. **Asegura las 10 preguntas «fáciles»**: presente, pasado, vocabulario cotidiano y estructuras básicas, que se ganan con práctica regular. Los repasos están en [los tiempos verbales](/blog/gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales) y en [vocabulario y phrasal verbs](/blog/vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles).
3. **Aprende a descartar.** Ante una pregunta dudosa, elimina las opciones que sabes que son incorrectas antes de decidir.
4. **Simulacros completos** con el inglés al final, para que el cansancio no te pille por sorpresa. Cómo se encaja en la jornada: [estructura del examen](/blog/examen-conocimientos-guardia-civil-estructura).
5. **Cuaderno de fallos** y repaso semanal.

Si partes de un nivel muy bajo, el plan por fases está en [cómo aprobar el inglés desde cero](/blog/como-aprobar-el-ingles-de-la-guardia-civil-partiendo-de-cero).

## Preguntas frecuentes

### ¿Cuántas preguntas tengo que acertar como mínimo?
Con ninguna respuesta incorrecta, 8. Con errores, necesitas más: cada tres errores restan un acierto.

### ¿Cuenta la pregunta de reserva?
Solo si el Tribunal anula alguna de las veinte. Si no, no se valora.

### ¿Es mejor dejar en blanco?
En blanco no resta. Si no puedes descartar ninguna opción, marcar al azar no mejora ni empeora el resultado de media. Cuando descartas alguna, arriesgar suele compensar.

### ¿El inglés cuenta para la nota final?
Sí, hasta 20 puntos dentro de la fase de oposición, además de ser eliminatorio por debajo de 8. En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) entrenas el inglés con tests y simulacros.',
   NULL, NULL, 'publicado', '2027-01-17T06:04:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'nota mínima', 'penalización', 'examen']::text[], '{"title":"Inglés Guardia Civil: cómo llegar a los 8 puntos mínimos","description":"Cómo se puntúa el inglés de la Guardia Civil: 20 preguntas, error resta un tercio, mínimo 8. Combinaciones de aciertos y errores y cuándo arriesgar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('instituciones-internacionales-onu-otan-y-consejo-de-europa', 'articulo', 'Instituciones internacionales: ONU, OTAN y Consejo de Europa para el examen', 'Qué organismos incluye el tema 6 del programa y cómo ordenarlos: ONU, OTAN y Consejo de Europa con sus datos clave, y una tabla de sedes y mandatos de Interpol, Europol, Eurojust, Frontex, CEPOL, FAO, FMI y OMS.', 'El tema 6 del programa de la Escala de Cabos y Guardias es «Instituciones internacionales» y, según nuestro [temario](/temario-guardia-civil), incluye la **ONU, el Consejo de Europa, la Unión Europea, la OTAN, INTERPOL, EUROPOL, EUROJUST, FRONTEX, CEPOL, FAO, FMI y OMS**, con su evolución histórica, ámbito geográfico, estructura y funciones. **Respuesta corta:** conviene tener una ficha de cada una con fecha de creación, sede, órganos y función. Aquí tienes los datos que hemos podido comprobar en fuentes oficiales; el programa completo está en la convocatoria ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)).

Sobre la Unión Europea, tienes un artículo aparte con [sus instituciones](/blog/union-europea-en-la-oposicion-las-instituciones).

## Naciones Unidas

Según el texto de la [Carta de las Naciones Unidas](https://www.un.org/es/about-us/un-charter/full-text):

- **Propósitos (art. 1):** mantener la paz y la seguridad internacionales; fomentar relaciones de amistad basadas en la igualdad de derechos y la libre determinación de los pueblos; lograr la cooperación internacional en problemas económicos, sociales, culturales y humanitarios y en los derechos humanos.
- **Órganos principales (art. 7):** Asamblea General, Consejo de Seguridad, Consejo Económico y Social, Consejo de Administración Fiduciaria, Corte Internacional de Justicia y Secretaría.
- **Asamblea General (art. 18):** cada miembro tiene un voto; las cuestiones importantes se deciden por mayoría de dos tercios de los miembros presentes y votantes.
- **Consejo de Seguridad (arts. 23 y 27):** quince miembros: cinco permanentes (China, Francia, la URSS, el Reino Unido y los Estados Unidos, según el texto de la Carta) y diez no permanentes, elegidos por la Asamblea General por dos años. Las cuestiones de procedimiento requieren nueve votos afirmativos; las demás, nueve votos incluidos los de todos los miembros permanentes.
- **Corte Internacional de Justicia (art. 92):** órgano judicial principal de la ONU.
- **Declaración Universal de Derechos Humanos:** proclamada por la Asamblea General en 1948, como vimos en [Derechos Humanos](/blog/derechos-humanos-en-el-temario-declaracion-universal).

Ojo: el texto de la Carta nombra a la URSS entre los miembros permanentes; para el examen, pregúntate siempre si se refiere al texto original o a la situación actual.

## OTAN

El Tratado del Atlántico Norte se firmó en Washington el 4 de abril de 1949, por 12 países, según la [web de la OTAN](https://www.nato.int/cps/en/natohq/topics_52044.htm). Hoy tiene 32 miembros y su sede está en Bruselas (según esa misma fuente). **España se adhirió el 30 de mayo de 1982**; el instrumento de adhesión, firmado el 29 de mayo, se publicó en el [BOE-A-1982-12535](https://www.boe.es/buscar/doc.php?id=BOE-A-1982-12535).

Artículos del Tratado que conviene tener a mano:

| Art. | Contenido |
|---|---|
| 1 | Resolver las controversias por medios pacíficos y abstenerse de la amenaza o el uso de la fuerza |
| 4 | Consulta cuando, a juicio de cualquiera de las Partes, estén amenazadas la integridad territorial, la independencia política o la seguridad de alguna de ellas |
| 5 | **Defensa colectiva:** un ataque armado contra una o varias de las Partes en Europa o América del Norte se considera un ataque contra todas; cada una asistirá a la atacada, en ejercicio de la legítima defensa del artículo 51 de la Carta de la ONU |
| 9 | Creación de un Consejo, con representación de todas las Partes |
| 10 | Pueden invitar a adherirse a cualquier Estado europeo, por acuerdo unánime |

## Consejo de Europa

Es una organización distinta de la Unión Europea. Su Estatuto se firmó en **Londres el 5 de mayo de 1949**. Según el texto publicado en el BOE ([BOE-A-1978-5972](https://www.boe.es/buscar/doc.php?id=BOE-A-1978-5972)):

- **Finalidad (art. 1):** realizar una unión más estrecha entre sus miembros para salvaguardar y promover los ideales y principios de su patrimonio común y favorecer su progreso económico y social.
- **Órganos (art. 10):** el Comité de Ministros y la Asamblea (en el texto original, «Asamblea Consultiva»), asistidos por la Secretaría.
- **Sede (art. 11):** Estrasburgo.
- **Lenguas oficiales (art. 12):** francés e inglés.
- **España:** miembro de pleno derecho desde el **24 de noviembre de 1977**.

Es la organización en cuyo marco se adoptó el Convenio Europeo de Derechos Humanos y se creó el Tribunal de Estrasburgo.

## Otros organismos del programa

| Organismo | Dato comprobado |
|---|---|
| **INTERPOL** | Su Secretaría General tiene sede en Lyon; el órgano de gobierno es la Asamblea General, que reúne a todos los países miembros una vez al año; cada país tiene una Oficina Central Nacional que actúa como punto de contacto ([INTERPOL](https://www.interpol.int/es/Quienes-somos/Secretaria-General)) |
| **EUROPOL** | Agencia de la UE para la cooperación policial; sede en La Haya, según el Reglamento (UE) 2016/794 |
| **EUROJUST** | Coordina investigaciones de delincuencia grave transfronteriza; su sede está en La Haya ([Eurojust](https://www.eurojust.europa.eu/about-us)) |
| **FRONTEX** | Guardia Europea de Fronteras y Costas; el artículo 93.5 del Reglamento (UE) 2019/1896 fija su sede en Varsovia |
| **CEPOL** | Agencia de la UE para la formación policial; sede en Budapest, según el Reglamento (UE) 2015/2219 |
| **FAO** | Establecida el 16 de octubre de 1945 en Quebec como organismo especializado de la ONU; su sede está en Roma desde 1951 ([FAO](https://www.fao.org/UNFAO/Histo-s.htm)) |
| **FMI** | Surgido de la conferencia de Bretton Woods de 1944 ([FMI](https://www.imf.org/es/about/factsheets/sheets/2022/imf-world-bank-new)) |
| **OMS** | Fundada en 1948; su sede está en Ginebra ([OMS](https://www.who.int/es/about/structure)) |

Para estos organismos, completa tus fichas con la documentación oficial de cada uno (estructura, funciones y órganos). No hemos incluido datos que no hayamos podido comprobar.

## Cómo estudiarlo

1. **Una ficha por organismo:** año, sede, órganos, función y relación con España.
2. **Separa los tres «consejos»:** Consejo de Seguridad (ONU), Consejo Europeo y Consejo de la UE, y Consejo de Europa.
3. **Agrupa por familias:** ONU y organismos especializados (FAO, OMS), organizaciones europeas (Consejo de Europa, UE) y cooperación policial y judicial (INTERPOL, Europol, Eurojust, Frontex, CEPOL).
4. Si quieres un calendario de estudio para los 23 temas, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuántos miembros tiene el Consejo de Seguridad de la ONU?
Quince: cinco permanentes y diez no permanentes elegidos por la Asamblea General por dos años (art. 23 de la Carta).

### ¿Cuándo entró España en la OTAN?
El 30 de mayo de 1982, con la adhesión al Tratado del Atlántico Norte.

### ¿Es lo mismo el Consejo de Europa que la Unión Europea?
No. Son organizaciones distintas: el Consejo de Europa, con sede en Estrasburgo, nació con el Estatuto de Londres de 1949; la Unión Europea se rige por sus propios Tratados.

### ¿Dónde tienen sede Europol, Frontex y CEPOL?
Europol, en La Haya; Frontex, en Varsovia; y CEPOL, en Budapest.',
   NULL, NULL, 'publicado', '2026-12-14T06:26:00.000Z', 'acceso-guardia-civil',
   ARRAY['instituciones internacionales', 'ONU', 'OTAN', 'Consejo de Europa', 'temario']::text[], '{"title":"Instituciones internacionales: ONU, OTAN y Consejo de Europa","description":"Tema 6 del temario: ONU (Carta y órganos), OTAN (Tratado de 1949), Consejo de Europa, Interpol, Europol, Eurojust, Frontex, CEPOL, FAO, FMI y OMS."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('las-practicas-despues-de-baeza-que-te-espera-guardia-civil', 'articulo', 'Las prácticas después de Baeza: qué te espera', 'El segundo curso son 40 semanas en una unidad real, con tutor, evaluación de apto o no apto y formación a distancia. Qué recogen el plan de estudios y el Reglamento de destinos sobre las prácticas y qué pasa al terminarlas.', 'Respuesta corta: tras el primer curso en el centro docente, el **segundo curso se hace trabajando en una unidad de la Guardia Civil**, durante 40 semanas, con un tutor y evaluación de «apto» o «no apto». No se acaba la formación al salir de Baeza: se completa en la calle. Y se puede suspender.

Este artículo se centra en las prácticas. El resto del recorrido, en [la Academia de Baeza](/blog/academia-baeza-guardia-civil) y en [la vida diaria del alumno](/blog/un-dia-en-la-academia-de-baeza-horarios-normas-y-permisos).

## Qué son las prácticas y cuánto duran

El plan de estudios, la [Orden PCM/576/2021](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2021-9632), organiza la formación en dos cursos. Según la base 11.1 de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982):

- **Primer curso:** presencial en el centro docente, con 1.141 horas.
- **Segundo curso:** 40 semanas de prácticas en unidades de la Guardia Civil, con 255 horas de enseñanza a distancia a través del módulo de Servicio Operativo.

El módulo de Servicio Operativo, dice la orden, sirve para asentar las competencias adquiridas, ganar experiencia y orientar al alumno hacia su futuro profesional. Se desarrolla **íntegramente en la unidad de prácticas** que se asigne a cada alumno (artículo 17.4).

## Cómo se evalúa

El módulo tiene dos asignaturas, y cada una se califica solo como **apto o no apto** (artículo 32):

| Asignatura | Cómo se evalúa |
|---|---|
| Prácticas de Unidad | Observación diaria de un tutor o profesor colaborador |
| Consolidación de Conocimientos | Formación a distancia: horas que hay que superar cada trimestre y todas al final |

Si resultas «no apto» en alguna, **repites el curso con otra unidad y otro tutor**. El máximo son **dos convocatorias**: agotarlas supone la baja en el centro. Además, quien no puede asistir a más del 30 % de los periodos de Instrucción y Adiestramiento o de Servicio Operativo permanece en el curso (artículo 28.3).

## Tu día a día en la unidad

La orden de centros ([Orden PCM/6/2021](https://www.boe.es/buscar/act.php?id=BOE-A-2021-520)) dice que durante las prácticas:

- El **régimen diario** lo fija el jefe de la unidad, tomando como referencia la jornada y el horario de servicio de esa unidad (artículo 40.4).
- Prestas los **servicios que te ordene el jefe** de la unidad (artículo 44.2).

Desde el punto de vista administrativo, el [Reglamento de destinos](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398) trata la incorporación a las unidades de prácticas como una **comisión de servicio** (artículo 41.2.a).

Qué unidad te toca y qué servicios concretos haces no figura con detalle en la normativa que he revisado: dependerá de la asignación y de la unidad. No hay un reparto publicado que pueda contarte.

## Retribución durante las prácticas

El [Reglamento de ordenación de la enseñanza](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764) (artículo 81.3) establece que los alumnos con el empleo eventual de guardia civil que realizan prácticas desempeñando un puesto en una unidad perciben las retribuciones complementarias generales del empleo y las complementarias de ese puesto. No doy cifras: dependen de la normativa retributiva de cada año. Para orientarte, tienes [el artículo sobre el sueldo](/blog/sueldo-guardia-civil).

## Qué pasa al terminar

La disposición adicional tercera de la orden es clara: finalizado el periodo de prácticas, **el alumno permanece en la unidad hasta que obtiene su primer destino**, tras el ingreso en la Escala de Cabos y Guardias. Cómo se asigna ese primer destino lo veremos más adelante, al explicar cómo se asignan los primeros destinos.

La clasificación final del plan de estudios se publica en una única resolución, con idéntica fecha de incorporación a la Escala (artículo 29).

## Cómo prepararte

- Lo que estudiaste para la oposición te servirá de base jurídica para el servicio: un temario bien asentado ayuda en Baeza y en las prácticas.
- La formación a distancia exige constancia trimestral, así que conviene llegar con el hábito de estudio ya creado. En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) trabajamos ese temario.

## Preguntas frecuentes

### ¿Cuánto duran las prácticas de la Guardia Civil?
Cuarenta semanas, que forman el segundo curso, según la convocatoria de 2026 y el plan de estudios.

### ¿Se puede suspender en las prácticas?
Sí. Cada asignatura del módulo se califica como apto o no apto, hay dos convocatorias y agotarlas supone la baja.

### ¿Puedo elegir la unidad de prácticas?
En lo que he podido verificar, la normativa dice que se asigna una unidad a cada alumno, pero no describe un sistema de elección. Consulta las instrucciones que te dé el centro.

### ¿Cobro durante las prácticas?
Sí: percibes las retribuciones reglamentarias del empleo eventual, incluidas las complementarias del puesto que desempeñes. Las cuantías dependen de cada año.',
   NULL, NULL, 'publicado', '2027-01-21T06:12:00.000Z', 'acceso-guardia-civil',
   ARRAY['prácticas', 'baeza', 'servicio operativo', 'segundo curso']::text[], '{"title":"Prácticas después de Baeza en la Guardia Civil","description":"Prácticas tras Baeza: 40 semanas en una unidad, módulo de Servicio Operativo, tutor, evaluación apto o no apto y qué ocurre hasta tu primer destino."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('lentes-intraoculares-guardia-civil', 'articulo', 'Lentes intraoculares y Guardia Civil: qué cambió con el Supremo', 'En 2023 el Tribunal Supremo anuló la frase del cuadro médico que excluía siempre las lentes fáquicas. Qué anuló exactamente, qué sigue escrito en la norma y qué significa para ti si llevas una lente implantada.', 'Cada vez más gente corrige la miopía con una lente implantada dentro del ojo en lugar de con láser. Y muchos descubren después que el cuadro médico de la Guardia Civil hablaba de ellas. La situación cambió en 2023 con una sentencia del Tribunal Supremo, pero **no tanto como se dice en algunos foros**.

## Primero: ¿de qué lentes hablamos?

- **Lente fáquica (ICL, Implantable Collamer Lens…):** se implanta dentro del ojo **sin quitar el cristalino**. Se usa sobre todo para miopías altas en las que el láser no es buena opción.
- **Lente intraocular pseudofáquica:** **sustituye al cristalino**, como en una operación de cataratas.

Las dos son «intraoculares», pero el cuadro médico las trata en apartados distintos, y eso es lo que importa.

## Qué decía el cuadro médico

El cuadro de exclusiones de la Guardia Civil (anexo I de la Orden PCI/155/2019) menciona las lentes y la cirugía dentro del ojo en tres apartados de su letra J:

| Apartado | Texto |
|---|---|
| J.2 | «Cualquier tipo de cirugía intraocular» |
| J.9 | «En ningún caso se admitirán lentes fáquicas» |
| J.12 | «Afaquia, Pseudoafaquia. Cualquier tipo de lente intraocular» |

## Qué anuló el Supremo

La sentencia de la Sala Tercera del Tribunal Supremo de 21 de febrero de 2023, publicada en el BOE el 29 de mayo de 2023 ([BOE-A-2023-12417](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-12417)), estimó el recurso de un aspirante y **declaró nula la frase «En ningún caso se admitirán lentes fáquicas»** del apartado J.9.

Según la información publicada sobre el caso, el Supremo entendió que esa causa de exclusión **no puede aplicarse de forma automática**, sino caso por caso y atendiendo al principio de proporcionalidad.

La convocatoria de 2026 lo recoge expresamente: el reconocimiento médico se hace con el cuadro de la Orden PCI/155/2019 «y de conformidad con lo dispuesto por la Sentencia de 21 de febrero de 2023».

## Lo que sigue escrito en la norma

Aquí está el matiz que muchos pasan por alto. El fallo anula **solo** esa frase del J.9. En el [texto consolidado del BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291), los apartados **J.2 («Cualquier tipo de cirugía intraocular»)** y **J.12 («Cualquier tipo de lente intraocular»)** siguen apareciendo.

¿Qué significa en la práctica? Que la norma ya no permite excluir a nadie **solo por llevar una lente fáquica**, pero tampoco te garantiza el apto. Tu caso se valorará de forma individual, como exige el propio cuadro, que obliga a motivar cada exclusión con un informe técnico.

## En la Policía Nacional fue distinto

Si comparas con la Policía Nacional, verás otra situación. Allí, una sentencia del Supremo de 16 de febrero de 2023 ([BOE-A-2023-6376](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-6376)) anuló de su cuadro médico, entre otros, los incisos sobre cualquier tipo de cirugía intraocular y el que impedía las lentes fáquicas. Son normas y sentencias diferentes, así que no extrapoles lo que leas de un cuerpo al otro.

## Si llevas una lente implantada: qué hacer

1. **Comprueba el resto de requisitos de la vista.** La lente no te exime de cumplir la agudeza visual (más de 0,7 en cada ojo) ni los límites de graduación. Los tienes en [gafas, miopía y operación de vista en la Guardia Civil](/blog/gafas-miopia-operacion-vista-guardia-civil).
2. **Reúne la documentación.** Informe de la cirugía, tipo y modelo de lente, fecha, y revisiones posteriores con agudeza visual, estabilidad y estado del ojo. Cuanto más clara sea, más fácil es que se valore bien tu caso.
3. **Pide a tu oftalmólogo un informe funcional.** Lo que pesa no es el nombre de la técnica, sino si te limita para el servicio.
4. **Si te excluyen, revisa los plazos de recurso.** La exclusión debe estar motivada. Si crees que no se ha valorado tu caso de forma individual, consulta con un abogado especializado en oposiciones dentro de los plazos de la resolución.

## Si todavía no te has operado

Si tienes miopía alta y estás pensando en operarte antes de la oposición, coméntale a tu oftalmólogo que vas a pasar el reconocimiento de la Guardia Civil y enséñale el cuadro médico. La técnica más adecuada para tu ojo es una decisión médica, pero conviene que la tome sabiendo qué se valorará.

Tienes el resto de exclusiones en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Preguntas frecuentes

### ¿Puedo ser Guardia Civil con lentes intraoculares?

La exclusión automática de las lentes fáquicas fue anulada por el Tribunal Supremo en 2023, y la convocatoria de 2026 aplica esa sentencia. Tu caso se valora de forma individual, y debes cumplir igualmente la agudeza visual y los límites de graduación.

### ¿Qué anuló exactamente la sentencia del Supremo?

La frase «En ningún caso se admitirán lentes fáquicas» del apartado J.9 del cuadro médico de la Orden PCI/155/2019.

### ¿Siguen apareciendo las lentes intraoculares en el cuadro médico?

Sí. En el texto consolidado siguen los apartados J.2 («Cualquier tipo de cirugía intraocular») y J.12 («Cualquier tipo de lente intraocular»). Por eso conviene llevar bien documentado tu caso.

### ¿Es lo mismo en la Policía Nacional?

No. La Policía Nacional tiene su propio cuadro médico y otra sentencia del Supremo, de 16 de febrero de 2023, con un alcance distinto.',
   NULL, NULL, 'publicado', '2026-11-15T06:13:00.000Z', 'acceso-guardia-civil',
   ARRAY['lentes intraoculares', 'vista', 'cuadro médico', 'Tribunal Supremo']::text[], '{"title":"Lentes intraoculares Guardia Civil: qué dijo el Supremo","description":"¿Excluyen las lentes intraoculares o fáquicas de la Guardia Civil? Qué anuló la sentencia del Supremo de 2023, qué sigue en el cuadro médico y cómo prepararte."}'::jsonb, '{}'::jsonb)
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
  ('ministerio-del-interior-y-ministerio-de-defensa-estructura', 'articulo', 'Ministerio del Interior y Ministerio de Defensa: estructura para el examen', 'La Guardia Civil depende de dos ministerios. Repaso la estructura orgánica básica del de Interior (Real Decreto 207/2024) y del de Defensa (Real Decreto 205/2024), el lugar de la Dirección General de la Guardia Civil y cómo comprobar los cambios.', 'La Guardia Civil depende de dos ministerios: **Interior**, en sus funciones de seguridad ciudadana, y **Defensa**, en las misiones de carácter militar. El último tema de este bloque jurídico pide conocer la estructura orgánica básica de ambos. **Respuesta corta:** a fecha de redacción (noviembre de 2026), el Ministerio del Interior se organiza según el Real Decreto 207/2024 y el de Defensa según el Real Decreto 205/2024, ambos de 27 de febrero y con modificaciones posteriores.

Un aviso importante: las estructuras ministeriales cambian con los gobiernos. Antes del examen comprueba el texto consolidado en el BOE y las webs oficiales de los ministerios, porque este artículo refleja lo vigente cuando se redactó.

## Ministerio del Interior

La norma es el [Real Decreto 207/2024](https://www.boe.es/buscar/act.php?id=BOE-A-2024-3793), por el que se desarrolla la estructura orgánica básica del Departamento. Su artículo 1.5 fue modificado por el [Real Decreto 328/2026](https://www.boe.es/buscar/act.php?id=BOE-A-2026-9079), de 22 de abril, publicado el 27 de abril de 2026.

Al Ministerio le corresponde, entre otras cosas, la política del Gobierno en seguridad ciudadana, el mando superior y la dirección y coordinación de las Fuerzas y Cuerpos de Seguridad del Estado, las competencias en seguridad privada y en extranjería. La persona titular dirige todos los servicios y ejerce el mando superior de las Fuerzas y Cuerpos de Seguridad.

Según el texto vigente, el Ministerio se estructura así:

| Órgano superior | Órganos directivos de los que dependen |
|---|---|
| Secretaría de Estado de Seguridad | Dirección General de la Policía; Dirección General de la Guardia Civil; Dirección General de Relaciones Internacionales y Extranjería; Dirección General de Coordinación y Estudios |
| Secretaría General de Instituciones Penitenciarias | Dirección General de Ejecución Penal y Reinserción Social |
| Secretaría General de Protección Civil y Emergencias | Dirección General de Protección Civil y Emergencias |
| Subsecretaría del Interior | Secretaría General Técnica; D. G. de Política Interior; D. G. de Tráfico; D. G. de Apoyo a Víctimas del Terrorismo; D. G. de Protección Internacional |

Además, dependen directamente de la persona titular el Gabinete y la Oficina de Comunicación. De la Secretaría de Estado de Seguridad depende el Centro de Inteligencia contra el Terrorismo y el Crimen Organizado (CITCO).

### La Dirección General de la Guardia Civil (art. 4)

- Su titular tiene **rango de subsecretario**.
- Es el órgano encargado de la ordenación, dirección, coordinación y ejecución de las misiones de la Guardia Civil, siguiendo las directrices de los Ministerios del Interior y de Defensa en el ámbito de sus competencias.
- Ejerce el **mando directo** de la Guardia Civil, bajo la dependencia de la Secretaría de Estado de Seguridad.
- Cumple los cometidos que las normas de Defensa le encomienden respecto a las misiones de carácter militar.
- Tiene adscritos el Consejo Superior de la Guardia Civil y el Consejo de la Guardia Civil.

## Ministerio de Defensa

La norma es el [Real Decreto 205/2024](https://www.boe.es/buscar/act.php?id=BOE-A-2024-3791), modificado por los Reales Decretos 896/2024, 268/2025 y 150/2026.

Al Departamento le corresponde la preparación, desarrollo y ejecución de la política de defensa determinada por el Gobierno y la gestión de la administración militar. Bajo la dirección de su titular, se estructura en:

1. **Las Fuerzas Armadas.** El Jefe de Estado Mayor de la Defensa (JEMAD) tiene rango de secretario de estado; los Jefes de Estado Mayor del Ejército de Tierra, la Armada y el Ejército del Aire y del Espacio, rango de subsecretario. La Unidad Militar de Emergencias (UME) depende orgánicamente del titular del Ministerio.
2. **La Secretaría de Estado de Defensa**, de la que dependen la Dirección General de Estrategia e Innovación de la Industria de Defensa, la de Armamento y Material, la de Asuntos Económicos, la de Infraestructura y el Centro de Sistemas y Tecnologías de la Información y las Comunicaciones.
3. **La Subsecretaría de Defensa**, que dirige la política de personal, reclutamiento, enseñanza, desarrollo profesional, sanitaria y de patrimonio cultural.
4. **La Secretaría General de Política de Defensa.**

El Centro Nacional de Inteligencia está adscrito al Ministerio con dependencia directa de su titular.

### Dónde encaja la Guardia Civil

El artículo 1.5 establece que la Guardia Civil depende de la persona titular del Ministerio de Defensa en los términos previstos en la Ley Orgánica 2/1986, de Fuerzas y Cuerpos de Seguridad; la Ley Orgánica 5/2005, de la Defensa Nacional; la Ley Orgánica 12/2007, del régimen disciplinario de la Guardia Civil; y la Ley 29/2014, de Régimen del Personal de la Guardia Civil.

## Cómo estudiarlo

- Dibuja **dos organigramas** a mano, uno por ministerio, hasta que puedas reproducirlos sin mirar.
- Subraya las referencias cruzadas a la Guardia Civil: están en los dos reales decretos.
- Revisa los cambios antes del examen. Si no estás seguro de que tu versión es la vigente, no estudies de resúmenes: acude al BOE.

El resto del temario jurídico, desde los [derechos fundamentales](/blog/derechos-fundamentales-libertades-publicas-guardia-civil) hasta la [seguridad ciudadana](/blog/seguridad-ciudadana-y-seguridad-privada-que-cae-del-temario), te ayuda a situar el papel del Cuerpo. Si quieres un plan completo, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) lo ordena por temas, y en [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) tienes cómo organizar el estudio.

## Preguntas frecuentes

### ¿De quién depende la Guardia Civil?

De los Ministerios del Interior y de Defensa, cada uno en el ámbito de sus competencias: Interior en las funciones de seguridad y Defensa en las misiones de carácter militar.

### ¿Quién ejerce el mando directo de la Guardia Civil?

La persona titular de la Dirección General de la Guardia Civil, bajo la dependencia de la Secretaría de Estado de Seguridad.

### ¿Cambia la estructura de los ministerios?

Sí, puede modificarse por real decreto; por eso conviene consultar el texto consolidado vigente en el BOE antes del examen.

### ¿Qué normas debo estudiar de este tema?

El programa habla de la estructura orgánica básica de ambos ministerios. Consulta la convocatoria vigente para ver qué reales decretos se toman como referencia.',
   NULL, NULL, 'publicado', '2026-12-22T06:42:00.000Z', 'acceso-guardia-civil',
   ARRAY['Ministerio del Interior', 'Ministerio de Defensa', 'estructura orgánica', 'Guardia Civil', 'temario']::text[], '{"title":"Ministerio del Interior y de Defensa: estructura orgánica","description":"Estructura orgánica básica del Ministerio del Interior (RD 207/2024) y del de Defensa (RD 205/2024) para la oposición, y dónde encaja la Guardia Civil."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('motivacion-que-hacer-los-dias-que-no-te-apetece-estudiar', 'articulo', 'Motivación: qué hacer los días que no te apetece estudiar', 'Habrá días en que no te apetezca abrir el temario. Estrategias prácticas para seguir avanzando sin depender de las ganas: mínimos, rutinas, objetivos pequeños y cuándo conviene hablar con un profesional.', 'Opositar dura meses, y nadie tiene ganas todos los días. Esperar a «sentirte motivado» para sentarte es una estrategia que suele fallar justo cuando más hace falta.

La respuesta corta: **diseña tu preparación para que no dependa de las ganas**: un mínimo diario pequeño, una rutina fija y objetivos que puedas ver avanzar. Y si el desánimo es profundo o dura semanas, habla con un profesional.

## La motivación sigue a la acción, a menudo

Mucha gente espera a tener ganas para empezar. Con frecuencia funciona al revés: **empiezas con poco y las ganas llegan después**, o no llegan pero el trabajo queda hecho. No es una ley universal, pero sí un buen motivo para probar a empezar diez minutos.

## Estrategias que puedes aplicar

### 1. Fija un mínimo innegociable
Decide un mínimo que cumplirás incluso en un mal día: por ejemplo, 20 minutos de test o un tema de repaso. Un mal día con mínimo cumplido mantiene el hábito. Un mal día con cero rompe la racha.

### 2. Convierte el estudio en rutina
Mismo sitio, misma hora, mismos primeros pasos. Cuanto menos decidas cada día, menos energía gastas en convencerte. Ayuda tener los bloques definidos: mira [bloques de estudio y Pomodoro](/blog/bloques-de-estudio-y-tecnica-pomodoro-para-opositores).

### 3. Objetivos pequeños y visibles
«Aprobar la oposición» es enorme. «Terminar el tema 3 esta semana» es concreto. Apunta lo que completas: ver una lista de tareas tachadas pesa más que una sensación vaga.

### 4. Cambia de tarea, no abandones
Si no puedes con el temario, haz tests. Si no puedes con tests, repasa fichas. Cambiar de actividad es mejor que cerrar el libro.

### 5. Recuerda por qué lo haces
Escribe en una nota tus razones para entrar en el Cuerpo. Léela cuando flaquees.

### 6. Descansa de verdad
No todo es fuerza de voluntad. Dormir, comer y desconectar es parte de la preparación. Hay más en [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Qué hacer con un mal día concreto

| Situación | Alternativa realista |
|---|---|
| Sin energía | Solo tests cortos o repaso de fichas |
| Mala nota en un simulacro | Anotar los fallos y parar; analizar mañana |
| Cansancio acumulado | Un día de descanso planificado |
| Distracción total | Un bloque corto sin móvil y recompensa después |

Sobre los simulacros, mira [cómo analizar los resultados](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados) para no vivir cada nota mala como un fracaso.

## Cuándo no es solo falta de ganas

Si llevas semanas con desánimo persistente, ansiedad que te desborda, problemas de sueño o sensación de bloqueo, **no es un asunto de fuerza de voluntad ni lo puede resolver un artículo de blog**. Habla con tu médico de cabecera o con un profesional de la salud mental. Pedir ayuda es razonable, y además te interesa: la oposición incluye reconocimiento médico y entrevista, pero eso no te impide cuidarte hoy.

## Evita comparar tu ritmo con el de otros

Un consejo más: al terminar un bloque, apunta en una línea qué has hecho y qué toca mañana. Así empezar al día siguiente cuesta menos y puedes ver, semana a semana, que sí avanzas aunque no lo sientas.

En foros y redes todo el mundo parece estudiar ocho horas y sacar 90 en cada simulacro. Lo que ves es una selección. Compárate con tu propio avance de hace un mes. Y revisa los [errores habituales al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil).

Si necesitas una estructura que te acompañe, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te da un calendario ya organizado.

## Preguntas frecuentes

### ¿Es normal no tener ganas de estudiar algunos días?
Sí. Lo importante es tener un plan para esos días, como un mínimo reducido.

### ¿Cuánto debe durar el mínimo diario?
El que puedas cumplir siempre. Veinte minutos constantes suelen funcionar mejor que dos horas esporádicas.

### ¿Debería tomarme un descanso largo si estoy desmotivado?
Un descanso corto y planificado puede ayudar. Si el desánimo persiste, consulta con un profesional.

### ¿Cómo sé si lo mío es ansiedad?
No puedo valorarlo yo: si te preocupa o te limita, acude a un profesional sanitario.',
   NULL, NULL, 'publicado', '2027-02-13T06:43:00.000Z', 'acceso-guardia-civil',
   ARRAY['motivación', 'constancia', 'organización', 'opositor']::text[], '{"title":"Motivación para opositar: qué hacer cuando no te apetece","description":"Qué hacer los días que no te apetece estudiar la oposición a Guardia Civil: mínimos diarios, rutinas, objetivos pequeños y cuándo pedir ayuda profesional."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('mujeres-en-la-guardia-civil-acceso-datos-y-conciliacion', 'articulo', 'Mujeres en la Guardia Civil: acceso, datos y conciliación', 'Misma oposición, mismo proceso y medidas específicas si hay embarazo o lactancia. Qué dice la convocatoria de 2026, qué cifras oficiales hay (con año) y qué prevé el Reglamento de enseñanza para conciliar formación y maternidad.', 'Respuesta corta: las mujeres acceden por **el mismo proceso selectivo** que los hombres, y la normativa prevé medidas específicas para quien se encuentre en embarazo, lactancia o permiso por nacimiento durante la oposición o el curso. En cifras oficiales, las mujeres eran el **11,17 % de la Escala de Cabos y Guardias en 2025**.

Vamos por partes, y solo con lo que figura en fuentes oficiales.

## Cómo es el acceso

La [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982) declara que tiene en cuenta el principio de igualdad de trato entre mujeres y hombres en el acceso al empleo, conforme al artículo 14 de la Constitución y a la Ley Orgánica 3/2007. Su base 4.2 encarga al Tribunal velar por el estricto cumplimiento de la igualdad de oportunidades entre aspirantes de ambos sexos.

No hay una oposición distinta: los [requisitos](/blog/requisitos-guardia-civil), el examen y las pruebas son los de la convocatoria. Para las marcas y requisitos concretos de cada prueba, consulta siempre la convocatoria vigente.

## Datos oficiales, con año

Estas cifras proceden de la nota de prensa del Ministerio del Interior sobre el II Plan de Igualdad de la Guardia Civil, de 6 de mayo de 2026 ([La Moncloa](https://www.lamoncloa.gob.es/serviciosdeprensa/notasprensa/interior/Paginas/2026/060526-interior-plan-igualdad-guardia-civil.aspx)):

| Dato | 2019 | 2025 |
|---|---|---|
| Mujeres en la Escala de Cabos y Guardias | 7,29 % | 11,17 % |
| Mujeres en la Escala de Suboficiales | 2,95 % | 5,09 % |
| Mujeres en la Escala de Oficiales | 3,67 % | 7,12 % |

Sobre las aspirantes, la misma nota indica que las mujeres eran el 19,57 % de los aspirantes de acceso libre a Cabos y Guardias en 2019 y que ahora (la nota no da el año exacto) son el 35 %.

Ten en cuenta que otras cifras que circulan, como el porcentaje total del Cuerpo, dependen de la fecha y de si se cuentan los alumnos. Por eso aquí me quedo solo con las de esta fuente, y no con las de prensa.

## Conciliación durante la oposición y la formación

El [Reglamento de ordenación de la enseñanza](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764), en su capítulo V, recoge medidas de conciliación y corresponsabilidad para quien, por embarazo acreditado, lactancia de un hijo menor de doce meses o ciertos permisos (nacimiento, adopción, acogimiento), no pueda realizar los cursos o las pruebas en igualdad de condiciones:

- **Pruebas físicas de la oposición.** Quien esté admitido por acceso directo y en esa situación puede hacer en fechas alternativas las pruebas que no pueda realizar, o aplazarlas a la convocatoria siguiente (artículo 64).
- **Incorporación a Baeza.** Si el aspirante propuesto no puede presentarse, tiene derecho a posponer su incorporación o a reservar su plaza, por una sola vez (artículo 65.1). La propia convocatoria lo recoge en su base 9.3.
- **Durante el curso**, el alumnado en esa situación tiene derecho, entre otros, a (artículo 65.2):
  - no causar baja por insuficiencia de condiciones psicofísicas ni por no superar las pruebas en plazo, si es por su estado;
  - que no se computen como consumidas las convocatorias a las que no pudo presentarse;
  - no repetir lo ya superado;
  - fijar su residencia fuera del centro docente;
  - retrasar o interrumpir, una sola vez, el periodo de [prácticas](/blog/las-practicas-despues-de-baeza-que-te-espera-guardia-civil).
- **Antigüedad.** El Real Decreto 392/2026, de 13 de mayo, publicado en el BOE el 15 de mayo de 2026 ([BOE-A-2026-10512](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-10512)), añadió el derecho a acceder a la escala con la antigüedad que habría correspondido de no haber estado en esa situación, con los efectos económicos correspondientes. Entró en vigor el 16 de mayo de 2026.

## Conciliación después: destinos y servicio

El [Reglamento de destinos](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398) incluye, entre otras, estas medidas:

- Asignación de un puesto compatible a la guardia civil **durante el embarazo o la lactancia** de un hijo menor de doce meses (artículo 41.1.f).
- **Derecho preferente de agrupamiento familiar**: el guardia civil con hijos menores de doce años (o con discapacidad igual o superior al 33 %) puede optar a vacantes de antigüedad en la provincia del cónyuge guardia civil (artículo 50.3.b). Cómo funcionan los destinos, en [este artículo](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).

Los permisos concretos y su duración dependen de la normativa específica del personal. No los desarrollo porque no los he contrastado para este artículo: consulta la normativa vigente y a tu unidad. Para el marco general de igualdad que entra en la oposición, tienes [las claves de la ley de igualdad](/blog/igualdad-efectiva-de-mujeres-y-hombres-claves-de-la-ley).

## Si te lo estás planteando

Las medidas anteriores existen precisamente para que embarazo o maternidad no te hagan perder la plaza, aunque cada caso se acredita y se resuelve individualmente. Si estás en esa fase, consulta el apartado de conciliación de la convocatoria de tu año, y si quieres empezar el temario, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te organiza el estudio.

## Preguntas frecuentes

### ¿Hay una oposición distinta para mujeres?
No. Es el mismo proceso selectivo, con la igualdad de trato recogida en la convocatoria.

### ¿Qué pasa si estoy embarazada en las pruebas físicas?
El Reglamento de enseñanza prevé realizarlas en fechas alternativas o aplazarlas a la convocatoria siguiente, previa acreditación médica.

### ¿Pierdo la plaza si me quedo embarazada en Baeza?
La normativa reconoce que no se causa baja por insuficiencia psicofísica derivada de tu estado, ni se consumen convocatorias, y se puede retrasar o interrumpir una vez el periodo de prácticas.

### ¿Qué porcentaje de mujeres hay en la Guardia Civil?
En la Escala de Cabos y Guardias, el 11,17 % en 2025, según Interior (nota de 6 de mayo de 2026).',
   NULL, NULL, 'publicado', '2027-01-24T06:03:00.000Z', 'acceso-guardia-civil',
   ARRAY['mujeres', 'igualdad', 'conciliación', 'embarazo']::text[], '{"title":"Mujeres en la Guardia Civil: acceso y conciliación","description":"Cómo acceden las mujeres a la Guardia Civil: convocatoria 2026, cifras oficiales con su año y medidas de conciliación en la formación y en los destinos."}'::jsonb, '{}'::jsonb)
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

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('nota-de-corte-guardia-civil', 'articulo', 'Nota de corte de la Guardia Civil: cómo funciona y por qué no hay una sola cifra', 'La nota de corte no se fija antes del examen: es la puntuación del último aspirante que consigue plaza, sobre 195 puntos. Las de 2022 a 2026 calculadas con las resoluciones del BOE, por qué cambian tanto y qué nota deberías buscar tú.', '«¿Cuál es la nota de corte?» es la pregunta que más se repite después del examen. Y casi siempre se responde mal, porque se mezclan cifras sobre 10, sobre 100 y sobre 195, de cupos distintos y de momentos distintos del proceso.

Vamos por partes.

## Qué es la nota de corte (y qué no es)

La nota de corte **no es un aprobado que se fija antes del examen**. Es la puntuación final que obtuvo **el último aspirante que consiguió plaza**. Se conoce al final del proceso, cuando se publica en el BOE la relación de aspirantes propuestos para ingresar en la academia.

Esa puntuación final tiene dos partes (base 7.9 de la convocatoria):

| Parte | Puntos máximos |
|---|---|
| Fase de concurso (méritos) | 45 |
| Conocimientos generales | 100 |
| Lengua inglesa | 20 |
| Aptitudes intelectuales (psicotécnico) | 30 |
| **Total** | **195** |

Por eso, cuando leas una nota de corte, lo primero es preguntarte: ¿sobre cuánto está?

## Las notas de corte de 2022 a 2026

Estas son las puntuaciones finales (sobre 195) del último aspirante propuesto del **cupo de acceso libre**, calculadas por ProLince a partir del anexo de cada resolución de propuestos publicada en el BOE:

| Convocatoria | Nota de corte (libre, sobre 195) | Resolución en el BOE |
|---|---|---|
| 2026 | 90,61 | [BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936) |
| 2025 | 95,80 | [BOE-A-2025-21469](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2025-21469) |
| 2024 | 103,08 | [BOE-A-2024-24233](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2024-24233) |
| 2023 | 95,75 | [BOE-A-2023-26041](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-26041) |
| 2022 | 110,58 | [BOE-A-2022-18829](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2022-18829) |

En cinco años, el corte se ha movido casi 20 puntos. Hay años más asequibles y años más duros, y no se puede adivinar de antemano cuál te va a tocar.

## Por qué no hay una sola cifra

### 1. Hay varios cupos

Las plazas se reparten en cupos: en 2026, 1.704 de acceso libre, 1.296 para militares de tropa y marinería y 240 para alumnos del Colegio de Guardias Jóvenes. Cada cupo tiene su propia lista y, por tanto, su propio corte. Las cifras de la tabla son las del acceso libre.

### 2. No es lo mismo pasar a las físicas que conseguir plaza

Tras el examen, la convocatoria llama a las pruebas físicas, la entrevista y el reconocimiento médico a **1,5 aspirantes por plaza**, por orden de puntuación. Muchos aspirantes se quedan fuera en esas pruebas, así que la lista se va corriendo hacia abajo. La puntuación del último convocado a las físicas y la del último que consigue plaza no coinciden.

### 3. Depende de cada año

El corte sube o baja según el número de plazas, cuántos aspirantes se presentan, la dificultad del examen y cuántos superan las pruebas psicofísicas. Por eso compararlo de un año para otro solo te da una horquilla, no una garantía.

### 4. Los mínimos no son el corte

Para no quedar excluido necesitas al menos 50 puntos en conocimientos, 8 en inglés y 12 en el psicotécnico, y no superar 5 errores en ortografía ni en gramática. Superar esos mínimos te mantiene en el proceso, pero **con los mínimos justos no se consigue plaza**: 50 + 8 + 12 suman 70, muy lejos de los cortes reales.

## Qué nota deberías buscar tú

Con los cortes de los últimos cinco años entre 90 y 111 puntos sobre 195, un objetivo razonable es **ir por encima de la parte alta de la horquilla**, no del último corte. Algunas ideas para convertir eso en algo práctico:

- **Suma tus méritos primero.** Lo que traigas de la fase de concurso ya está en el marcador antes del examen. Revisa qué puntúa en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).
- **Calcula cuánto necesitas en el examen.** Resta tus méritos al objetivo y reparte el resto entre conocimientos, inglés y psicotécnico.
- **Entiende la penalización.** Cada error resta, así que tu nota no es tu número de aciertos. Te lo explicamos con ejemplos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil), y puedes probar con nuestra [calculadora de nota](/calculadora-nota-guardia-civil).
- **Mide tu nivel con simulacros.** Hasta que no haces un examen completo con cronómetro no sabes dónde estás. Si quieres ver en qué zona andarías hoy, prueba nuestra herramienta de [nota de corte](/nota-de-corte).

## Preguntas frecuentes

### ¿Cuál fue la nota de corte de la Guardia Civil en 2026?

En el acceso libre, 90,61 puntos sobre 195, según nuestro cálculo con la resolución de propuestos publicada en el BOE (BOE-A-2026-20936).

### ¿La nota de corte es sobre 10, sobre 100 o sobre 195?

La puntuación final de la Guardia Civil es sobre 195: hasta 45 de méritos y hasta 150 de la fase de oposición (100 de conocimientos, 20 de inglés y 30 de psicotécnico).

### ¿Publica la Guardia Civil una nota de corte oficial?

No como una cifra aislada. Se publica la relación de aspirantes propuestos con sus puntuaciones, y la nota de corte es la del último propuesto de cada cupo.

### ¿Con 50 en el examen de conocimientos entro?

No. Con 50 superas el mínimo para seguir en el proceso, pero los cortes de los últimos años en acceso libre han estado entre 90 y 111 puntos sobre 195.',
   NULL, NULL, 'publicado', '2026-11-17T06:47:00.000Z', 'acceso-guardia-civil',
   ARRAY['nota de corte', 'puntuación', 'concurso-oposición', 'convocatoria']::text[], '{"title":"Nota de corte Guardia Civil 2026 y años anteriores","description":"Nota de corte de la Guardia Civil de 2022 a 2026 sobre 195 puntos, calculada con las resoluciones del BOE. Qué es, por qué varía y qué nota apuntar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('oferta-de-empleo-publico-2027-que-es-y-que-significa-para-ti', 'articulo', 'Oferta de empleo público de la Guardia Civil: qué es y qué pasa con 2027', 'La oferta de empleo público es el real decreto que autoriza cuántas plazas se pueden convocar. Te explicamos qué es, qué dijo la de 2026 (Real Decreto 206/2026) y qué se sabe de una oferta de 2027.', '**Respuesta corta:** la oferta de empleo público (OEP) es el real decreto del Gobierno que autoriza cuántas plazas puede convocar la Guardia Civil en un año. Sin oferta no hay convocatoria, y por eso es la primera señal oficial que conviene vigilar. En el momento de redactar este artículo (noviembre de 2026) no había publicada ninguna oferta de empleo público de la Guardia Civil para 2027.

## Qué es exactamente una oferta de empleo público

Es una norma que fija el techo de plazas que se pueden cubrir en un ejercicio. No es la convocatoria: no contiene bases, plazos ni pruebas. Esas llegan después, en una resolución de la Dirección General de la Guardia Civil que se publica en el BOE.

El orden es siempre el mismo:

1. **Real decreto de oferta de empleo público**, con el número de plazas y sus reservas.
2. **Resolución de convocatoria**, con requisitos, plazo de solicitud, pruebas y baremo.
3. **Proceso selectivo**, con sus listas, pruebas y propuesta de alumnos.

## Qué dijo la de 2026

La de 2026 es el [Real Decreto 206/2026, de 11 de marzo](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-5998), publicado en el BOE el 13 de marzo de 2026. Lo que fija para la Escala de Cabos y Guardias:

- **3.240 plazas** de ingreso directo (artículo 2).
- Dentro de ellas, **1.296 reservadas a militares profesionales de tropa y marinería** con al menos cinco años de servicios y **240 para alumnos del Colegio de Guardias Jóvenes** (artículo 3). Si esas plazas reservadas no se cubren, pasan al cupo libre.
- Además, autoriza plazas de promoción profesional: 96 y 26 para la Escala de Oficiales y 400 para la de Suboficiales (artículo 4).

El texto explica también de dónde sale la cifra: se aplica el 125 % de la tasa de reposición que la ley de presupuestos autoriza para las Fuerzas y Cuerpos de Seguridad del Estado.

## Qué efecto tiene sobre ti

Tres consecuencias prácticas, todas sacadas del propio real decreto:

- **La convocatoria solo puede publicarse en el año de la oferta.** El artículo 1 dice que las convocatorias derivadas «sólo podrán publicarse en el ejercicio presupuestario al que vienen referidas». Una oferta de 2027 daría lugar a una convocatoria de 2027, no antes.
- **Cada convocatoria necesita informe favorable** de la Dirección General de la Función Pública.
- **El número de plazas cambia de un año a otro.** Las convocatorias de los últimos años recogen 2.520 plazas (2023), 2.721 (2024), 3.118 (2025) y 3.240 (2026), según sus respectivas bases. Que subieran no garantiza que vuelvan a hacerlo.

## ¿Hay ya una oferta para 2027?

En el momento de escribir esto, no la hemos localizado: ni en el BOE ni en la relación de ofertas de empleo público de la Administración General del Estado. Cualquier cifra de plazas para 2027 que veas ahora es una previsión de terceros, no un dato oficial.

Si has leído una cifra concreta, desconfía mientras no veas el real decreto. Y comprueba si esto ha cambiado desde que escribimos el artículo: la forma más segura es buscar en el BOE «oferta de empleo público del Cuerpo de la Guardia Civil para el año 2027».

## Qué hacer mientras tanto

La oferta no cambia lo que tienes que estudiar. El temario y las pruebas los fija la convocatoria, y la última publicada es la mejor referencia disponible. Mientras llega la siguiente:

- Revisa [la convocatoria de 2026 y su calendario](/blog/convocatoria-guardia-civil-2026-plazas-calendario) para saber cómo se estructura un proceso.
- Comprueba tus [requisitos](/blog/requisitos-guardia-civil), sobre todo la edad, que se mide en el año de la convocatoria.
- Si empiezas ahora, [prepara la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) con un plan realista en lugar de esperar a que salga la fecha.

Si quieres un método y un temario ordenado, lo trabajamos en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿La oferta de empleo público es lo mismo que la convocatoria?

No. La oferta autoriza el número de plazas; la convocatoria, publicada después, fija requisitos, plazos y pruebas.

### ¿Cuánto tarda en salir la convocatoria después de la oferta?

Varía de un año a otro. En 2026 la oferta salió en el BOE el 13 de marzo y la convocatoria el 8 de mayo. Te contamos las fechas de los últimos años en el artículo sobre la convocatoria de 2027.

### ¿Puedo apuntarme a una oferta de empleo público?

No. Solo te inscribes en la convocatoria, una vez publicada, dentro de su plazo de solicitud.

### ¿Dónde se publica la oferta?

En el BOE, sección III, como real decreto. El Ministerio del Interior debe recoger además en su web las convocatorias derivadas, según la disposición adicional del Real Decreto 206/2026.',
   NULL, NULL, 'publicado', '2027-02-03T06:53:00.000Z', 'acceso-guardia-civil',
   ARRAY['oferta de empleo público', 'plazas', 'BOE', 'convocatoria']::text[], '{"title":"Oferta de empleo público Guardia Civil: qué es y 2027","description":"Qué es la oferta de empleo público de la Guardia Civil, qué fijó el Real Decreto 206/2026 (3.240 plazas) y qué se sabe de una oferta para 2027."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('opositar-con-hijos-un-plan-de-estudio-realista-guardia-civil', 'articulo', 'Opositar con hijos: un plan de estudio realista', 'Estudiar una oposición con niños en casa es posible, pero exige renunciar al plan ideal. Cómo buscar huecos, usar bloques cortos, repartir el cuidado y reajustar expectativas sin perder el ritmo ni la salud.', 'Opositar con hijos pequeños, o con adolescentes que también necesitan tiempo, obliga a cambiar el enfoque: **el plan que funciona no es el de las ocho horas seguidas, sino el que cabe en tu día real**.

La respuesta corta: **cuenta con bloques cortos y frecuentes, protege uno o dos tramos más largos a la semana, reparte el cuidado por escrito y ajusta la fecha objetivo a tu realidad**, sin compararte con quien no tiene tus cargas.

## Parte de tu día real, no del ideal

Apunta durante una semana cuándo tienes tiempo realmente libre: siestas, entrada al colegio, actividades extraescolares, noches. Muchas veces aparecen más huecos de los que crees, pero fragmentados. Si trabajas, mira también [el plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando).

## Bloques cortos y tareas pequeñas

No todo el estudio necesita una hora ininterrumpida:

| Hueco | Tarea adecuada |
|---|---|
| 15-20 min | Test corto, fichas de repaso, escuchar un tema |
| 30-45 min | Repaso activo con preguntas, esquemas |
| 1,5-2 h (protegido) | Temario nuevo o simulacro |

Hay algo importante: no todas las tareas valen en huecos cortos. Reserva lo que requiere más concentración (temario nuevo, simulacros) para los tramos largos. Ideas para estructurar los bloques en [bloques de estudio y Pomodoro](/blog/bloques-de-estudio-y-tecnica-pomodoro-para-opositores).

## Reparte el cuidado, y ponlo por escrito

Si tienes pareja, acuerda **franjas semanales** en las que el otro se hace cargo de los hijos mientras estudias; ayuda hablar de esto antes ([opositar en pareja](/blog/opositar-en-pareja-como-compaginarlo-sin-que-se-resienta)). Si estás solo o sola con los niños, valora si algún familiar, vecino o recurso de tu zona puede cubrir uno o dos tramos fijos al mes, sobre todo para los simulacros. No doy aquí información sobre ayudas, porque varían según el lugar: consulta en tu ayuntamiento.

## Simulacros: el reto de las condiciones de examen

El examen de conocimientos dura 140 minutos seguidos. Para entrenarlo, necesitas **al menos un bloque largo al mes** de tiempo sin interrupciones. Planifícalo con antelación y con ayuda externa. Cómo sacarles partido: [simulacros, cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Entrenamiento físico

Las pruebas físicas también necesitan tiempo. Puedes hacer parte del entrenamiento con los niños (paseos con carrito, parque) y concentrar lo específico en sesiones breves. Ante cualquier duda sobre cargas o lesiones, consulta a un profesional. Mira [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Ajusta expectativas y plazos

Es posible que tardes más que otros en estar listo, y **eso no es un fallo**. Revisa cada mes si el plan sigue siendo sostenible y mueve la fecha objetivo si hace falta. Cuántas horas hay que dedicar, en [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil).

## Cuida tu energía

Dormir mal por los niños y estudiar de noche puede pasar factura. Si notas agotamiento persistente, irritabilidad o desánimo que no remite, **consúltalo con tu médico o con un profesional de la salud mental**. No es un problema de organización que se arregle con otro horario.

## Qué evitar

- **Copiar el plan de alguien sin cargas familiares.**
- **Dejar los simulacros para el final** porque «no hay tiempo»: planifícalos desde el principio.
- **Sentirte culpable** por el tiempo de estudio o por el tiempo con tus hijos. Ambos son legítimos.

Si buscas una estructura ya organizada, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te evita diseñar el calendario desde cero.

## Preguntas frecuentes

### ¿Es posible opositar con hijos pequeños?
Sí, mucha gente lo hace, pero requiere reajustar tiempos y pedir apoyo. No hay una garantía de plazo.

### ¿Cuántas horas puedo estudiar al día?
Las que tu situación permita de forma sostenible. Es mejor una cantidad menor y constante.

### ¿Cómo hago los simulacros de 140 minutos?
Planifícalos con apoyo externo y trata de reproducir las condiciones de examen al menos de vez en cuando.

### ¿Debo esperar a que los niños sean mayores?
Es una decisión personal. Tu edad cuenta por año natural, así que revisa los [requisitos](/blog/requisitos-guardia-civil).',
   NULL, NULL, 'publicado', '2027-02-16T06:34:00.000Z', 'acceso-guardia-civil',
   ARRAY['hijos', 'conciliación', 'plan de estudio', 'organización']::text[], '{"title":"Opositar con hijos: plan de estudio realista","description":"Cómo preparar la oposición a Guardia Civil con hijos: buscar huecos, bloques cortos, reparto del cuidado, simulacros y expectativas realistas."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('opositar-en-pareja-como-compaginarlo-sin-que-se-resienta', 'articulo', 'Opositar en pareja: cómo organizarlo para cuidar la relación', 'Preparar una oposición cambia el ritmo de la casa y de la relación. Acuerdos prácticos para opositar con pareja: tiempos, tareas, expectativas y señales para hablar a tiempo, tanto si opositas tú como si opositáis los dos.', 'La oposición no la prepara solo quien se sienta a estudiar: la prepara también quien comparte casa con él. Fines de semana de simulacro, entrenamientos, planes cancelados y un estado de ánimo que sube y baja afectan a la pareja.

La respuesta corta: **habla de la preparación antes de empezar y pacta cosas concretas** (horarios, tareas, tiempo juntos y qué se hace si se alarga). Lo que no se acuerda suele acabar en reproches. Y no hay una fórmula única: cada pareja es distinta.

## Antes de empezar: una conversación con datos

Opositar no es un sprint de un mes. Si quieres hacerte una idea del tiempo y del esfuerzo, mira [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) y [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil). Con esa información, habla de:

- **Cuánto tiempo** estimas que durará y qué pasa si hay que repetir convocatoria.
- **Qué horarios** vas a necesitar para estudiar y entrenar.
- **Qué cambia en casa**: tareas, gastos si reduces horas de trabajo, planes sociales.
- **Qué necesitas de tu pareja** (y qué no): apoyo no es lo mismo que exigencia de resultados.

## Acuerdos prácticos que suelen ayudar

| Tema | Ejemplo de acuerdo |
|---|---|
| Tiempo de estudio | Franjas fijas, visibles en un calendario compartido |
| Tiempo juntos | Uno o dos momentos a la semana que no se tocan |
| Tareas del hogar | Reparto revisado cada mes, no improvisado |
| Fines de semana | Sábado de simulacro; domingo libre o ligero |
| Dinero | Presupuesto realista si se reducen ingresos |

Que haya **tiempo juntos protegido** evita que la oposición se convierta en «lo que se lleva todo». Y que haya **tiempo de estudio protegido** evita interrupciones constantes. Es un trato de ida y vuelta.

## Lo que conviene que la pareja sepa

- **Las notas de un simulacro no miden quién eres.** Si cada resultado malo se vive como drama en casa, la presión se multiplica. Cómo leer esos resultados está en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).
- **El resultado depende de factores que no controla nadie**, como la nota de corte de cada año. Está explicado en [la nota de corte](/blog/nota-de-corte-guardia-civil).
- **Los días malos existen** y no significan que algo vaya mal en la relación.

## Si opositáis los dos

Opositar en pareja a la vez tiene ventajas (os entendéis, os podéis preguntar temario) y riesgos:

- **Comparaciones.** Cada uno tiene su ritmo y su punto de partida; las notas no se comparan en la cena.
- **Un solo horario para dos.** Alternad quién usa la mesa o la sala, y respetad los bloques del otro.
- **Las plazas no son una competición entre vosotros**, pero los resultados pueden ser desiguales. Hablad antes de qué haréis si uno aprueba y el otro no.
- **Los destinos.** Dónde se destina a cada uno depende del procedimiento posterior; no demos por hecho que os tocará juntos. Más en [destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

## Señales para hablar a tiempo

Si notas que discutís siempre por lo mismo, que uno de los dos se siente invisible o que el estrés se contagia, **no esperéis a que explote**. Parad, revisad los acuerdos y, si hace falta, consultad con un profesional (terapia de pareja o psicólogo). No es un signo de debilidad.

## Y si tu pareja no entiende la oposición

Enséñale el calendario, explícale las fases y compártele tus mínimos de la semana. Puede que no entienda el temario, pero sí entiende «esta semana hago tres simulacros». Si te interesa un plan estructurado, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye calendario.

## Preguntas frecuentes

### ¿Es compatible opositar con tener pareja?
Sí, mucha gente lo hace. Requiere acuerdos claros y revisarlos con el tiempo.

### ¿Cómo evito que la oposición lo ocupe todo?
Protege tiempos de ocio compartido y respeta tus descansos. Un calendario común ayuda.

### ¿Qué hago si mi pareja me presiona con los resultados?
Habladlo en un momento tranquilo y reformulad qué tipo de apoyo necesitas. Si persiste, un profesional puede mediar.

### ¿Y si opositamos los dos a la vez?
Es posible. Evitad las comparaciones y acordad de antemano qué haréis según los resultados.',
   NULL, NULL, 'publicado', '2027-02-14T06:00:00.000Z', 'acceso-guardia-civil',
   ARRAY['pareja', 'organización', 'opositor', 'planificación']::text[], '{"title":"Opositar en pareja: cómo organizarlo en casa","description":"Cómo compaginar la oposición a Guardia Civil con la pareja: acuerdos de tiempo, reparto de tareas, expectativas realistas y qué hacer si opositáis los dos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('palabras-trampa-ortografia-guardia-civil', 'articulo', 'B/V, G/J y H: palabras trampa del examen de ortografía de la Guardia Civil', 'Las reglas de B/V, G/J y H explican la mayoría de los fallos de ortografía que no son tildes. Las normas que ayudan, las palabras que se escapan y las parejas que parecen iguales pero significan cosas distintas.', 'Cuando se habla de ortografía en la oposición, la gente piensa en las tildes. Pero hay otro bloque de fallos: las **letras que suenan igual**. Estas son las reglas que ayudan y las palabras que se escapan.

Recuerda que la prueba excluye con **seis o más errores**, y que cuenta como error tanto no detectar una falta como marcar una palabra correcta. Si aún no has visto las reglas de acentuación, empieza por [las tildes](/blog/tildes-reglas-oposicion-guardia-civil).

## B y V

### Reglas que funcionan

- Se escribe **b** después de **m**: ambos, cambiar, embarcar.
- Se escribe **b** en las terminaciones **-aba, -abas, -ábamos** del pretérito imperfecto: cantaba, jugábamos; y en el verbo **ir**: iba, íbamos.
- Se escribe **b** en las palabras que empiezan por **bu-, bur-, bus-**: buscar, burla, bufanda.
- Se escribe **b** en los prefijos **bi-, bis-, biz-** («dos»): bimensual, bisabuelo, bizcocho.
- Se escribe **v** después de **n**: invitar, envolver.
- Se escribe **v** en los adjetivos acabados en **-ivo, -iva**: activo, nativa.
- Se escribe **v** en los prefijos **vice-, viz-, vi-** («en vez de»): vicepresidente, virrey.

### Excepciones y trampas

- **«Envidia»**, **«enviar»** y **«envase»** llevan v: siguen la regla de la v después de n.
- **«Ambiguo»**, **«bienvenido»** y **«bisturí»** llevan b.
- **«Sobrevenir»**, **«prever»** y **«provenir»** llevan v.

## Parejas que se confunden

Estas palabras suenan igual y significan cosas distintas; si cambias una por otra, es falta de ortografía o de sentido:

| Con b | Con v |
|---|---|
| **baca** (de coche) | **vaca** (animal) |
| **bello** (hermoso) | **vello** (pelo) |
| **botar** (saltar, echar) | **votar** (elegir) |
| **tubo** (pieza) | **tuvo** (de tener) |
| **grabar** (registrar) | **gravar** (imponer una carga, impuestos) |
| **rebelar** (sublevar) | **revelar** (descubrir) |
| **sabia** (con sabiduría) | **savia** (de las plantas) |
| **basto** (grosero) | **vasto** (amplio) |
| **absorber** (embeber) | **absolver** (perdonar) |
| **acerbo** (áspero) | **acervo** (conjunto de bienes) |

## G y J

### Reglas que funcionan

- Se escribe **g** en las palabras que empiezan por **geo-** («tierra»): geografía, geología.
- Se escribe **g** en los verbos acabados en **-ger, -gir**: coger, proteger, dirigir, elegir.
- Se escribe **g** en las terminaciones **-gen, -gente**: origen, urgente.
- Se escribe **j** en las terminaciones **-aje, -eje**: viaje, mensaje, garaje.
- Se escribe **j** en las palabras acabadas en **-jero, -jera**: extranjero, mensajera.
- Los verbos con **j** en el infinitivo la mantienen al conjugarlos: «tejer» → «tejen», «crujir» → «crujen».

### Excepciones y trampas

- **«Tejer»** y **«crujir»** se escriben con j, aunque terminen en -er o -ir.
- **«Cónyuge»**, **«vigía»**, **«ligero»** y **«legítimo»** se escriben con g. 
- **«Jengibre»** se escribe con j.
- **«Ajeno»** y **«extranjero»** con j.

### Parejas de significado distinto

- **hojear** (pasar hojas) / **ojear** (mirar de pasada)
- **ingerir** (tomar alimento) / **injerir** (entrometerse)
- **gira** (de gira, vuelta) / **jira** (trozo de tela)

## La H

La h no suena, así que hay que memorizar dónde va.

### Reglas que funcionan

- Se escribe **h** en las palabras que empiezan por **hie-, hue-, hui-, hum-**: hielo, hueso, huir, humano.
- Se escribe **h** en las formas del verbo **haber**: he, has, ha, hay, había, hubo.
- Se escribe **h** en las palabras que empiezan por **hosp-** y **host-**: hospital, hostil.
- Llevan **h** tras **ex-** palabras como exhibir, exhalar, exhausto, exhortar o exhumar.
- Se escribe **h** en los derivados de **hacer, hablar, hallar, hoja**: deshacer, hablador, hallazgo, hojear.

### Palabras sin h que parecen llevarla

- **abuelo, osario, orfandad, ermita, armonía, oler** no llevan h.
- **«Exuberante»** y **«exabrupto»** tampoco la llevan.

### Palabras con h interna que se escapan

- **prohibir, rehén, vehículo, alcohol, ahínco, bahía, zanahoria**.

## Cómo repasar

1. **Lleva un cuaderno de «palabras trampa»** con las que te hayan fallado en tests, con la regla al lado.
2. **Repasa las parejas** (baca/vaca, tubo/tuvo…) con ejemplos en frase.
3. **Aprende la regla antes que la lista:** una regla cubre muchas palabras.
4. **Haz tests con tiempo** del tipo de la prueba: cinco frases con cuatro palabras subrayadas.

Y no te olvides de los homófonos, que veremos en el próximo artículo de la serie.

## Preguntas frecuentes

### ¿«Envidia» se escribe con b o con v?

Con v. Se aplica la regla de la v después de n.

### ¿«Cónyuge» se escribe con g o con j?

Con g. Es una de las palabras que no siguen la regla de -ger/-gir.

### ¿«Hojear» y «ojear» son lo mismo?

No. «Hojear» es pasar las hojas de un libro; «ojear» es mirar de pasada.

### ¿Cuándo una palabra con «ex-» lleva h?

Cuando la palabra de base empieza por h (exhibir, exhalar). En otros casos, no (exuberante).',
   NULL, NULL, 'publicado', '2026-12-03T06:19:00.000Z', 'acceso-guardia-civil',
   ARRAY['ortografía', 'b/v', 'g/j', 'h', 'palabras']::text[], '{"title":"B/V, G/J y H: ortografía para la Guardia Civil","description":"Reglas de B/V, G/J y H con excepciones y palabras trampa para la prueba de ortografía de la Guardia Civil, con parejas que se confunden y consejos de repaso."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('plan-de-repaso-para-los-ultimos-tres-meses-antes-del-examen', 'articulo', 'Plan de repaso para los últimos tres meses antes del examen', 'Un esquema de repaso para los tres meses previos al examen de Guardia Civil: de cerrar temario a simulacros, repaso de errores y última semana. Una guía orientativa que debes adaptar a tu nivel y a la fecha de la convocatoria.', 'Los últimos tres meses no sirven para aprender todo de cero, sino para **consolidar lo que sabes, corregir lo que fallas y ensayar el examen**. Un buen plan pasa de «ver temas» a «recuperarlos y aplicarlos».

La respuesta corta: **divide los tres meses en tres fases (cerrar y consolidar, simulacros y corrección, afinar y descansar) y revisa cada semana con datos de tus simulacros**. Es un esquema orientativo: ajústalo a tu punto de partida y a la fecha de examen que figure en la convocatoria vigente.

## Qué tienes que cubrir

Según la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), hay que preparar conocimientos (100 preguntas con 4 opciones), inglés (20 preguntas), psicotécnico (80 preguntas en 55 minutos), ortografía y gramática, y además las pruebas físicas y las fases posteriores. El reparto del examen de conocimientos está en [estructura del examen](/blog/examen-conocimientos-guardia-civil-estructura).

## Fase 1: primer mes, cerrar temario y consolidar

- **Termina de ver los temas pendientes.** Si te faltan muchos, prioriza el repaso de lo ya visto y valora con realismo qué entra en tu plan.
- **Pasa del subrayado a las preguntas.** La práctica de recuperación (intentar recordar sin mirar) y el repaso espaciado cuentan con respaldo en la literatura sobre aprendizaje; por ejemplo, [Dunlosky y colaboradores (2013)](https://doi.org/10.1177/1529100612453266). Aplicado a leyes: [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).
- **Haz un primer simulacro completo** para tener un punto de partida.

## Fase 2: segundo mes, simulacros y análisis

| Semana | Foco |
|---|---|
| 1 | Simulacro completo + corrección profunda |
| 2 | Reforzar los 3 o 4 temas con más fallos |
| 3 | Simulacro + inglés y psicotécnico |
| 4 | Repaso de errores acumulados |

La corrección importa más que el simulacro: anota por qué fallaste (no sabía, dudé, leí mal). Método en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados) y en [cómo leer un enunciado tipo test](/blog/como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas).

## Fase 3: tercer mes, afinar

- **Un simulacro semanal** o cada dos semanas, en condiciones reales: 140 minutos, sin pausas, con el cuestionario de 100 preguntas.
- **Repaso de tu cuaderno de errores**, no de todo el temario por igual.
- **Entrena la gestión del tiempo** y la decisión de contestar o dejar en blanco, recordando la penalización de un tercio por error.
- **Mantén las pruebas físicas** sin sobrecargarte; si tienes dudas de carga o lesiones, consulta con un profesional.

## La última semana

- **Baja el volumen de estudio nuevo.** No estrenes temas.
- **Repasa esquemas y errores recurrentes.**
- **Cuida el sueño** y organiza la logística (documentación, desplazamiento). Qué llevar está en la sección sobre [qué llevar al examen](/blog/que-llevar-al-examen-de-la-guardia-civil-y-que-esta-prohibido), consultando siempre la convocatoria.
- **Evita comparar tu nivel con el de otros** en los últimos días.

## Un reparto semanal de ejemplo (orientativo)

- Lunes a jueves: 2 bloques de repaso con preguntas + 1 bloque de errores.
- Viernes: inglés y psicotécnico.
- Sábado: simulacro y corrección.
- Domingo: descanso.

Cuántas horas necesitas depende de ti: mira [cuántas horas estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil). Y cómo saber si estás listo lo veremos con indicadores medibles en el siguiente artículo.

## Si vas justo

Si a tres meses ves que no llegarás a todo, no abandones el plan: **prioriza por puntos**. Primero asegura los mínimos de cada prueba (conocimientos 50/100, inglés 8/20, psicotécnico 12/30), después sube nota. Si el agobio te supera, habla con un profesional. Y si necesitas apoyo, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye simulacros y calendario.

## Preguntas frecuentes

### ¿Cuántos simulacros hacer en los últimos tres meses?
No hay una cifra oficial. Una frecuencia de uno cada una o dos semanas, bien corregidos, es una referencia razonable.

### ¿Estudio temas nuevos la última semana?
Es mejor repasar lo que ya conoces y tus errores. Introducir temas nuevos suele generar inseguridad.

### ¿Cómo repartir inglés y psicotécnico?
Dedícales bloques fijos a la semana, porque tienen mínimos eliminatorios.

### ¿Y si no tengo la fecha del examen?
Consulta la convocatoria vigente y adapta las fases hacia atrás desde esa fecha.',
   NULL, NULL, 'publicado', '2027-02-17T06:51:00.000Z', 'acceso-guardia-civil',
   ARRAY['repaso', 'simulacros', 'planificación', 'examen']::text[], '{"title":"Plan de repaso de los últimos 3 meses antes del examen","description":"Plan de repaso de los últimos tres meses antes del examen de Guardia Civil: temario, simulacros, errores, inglés, psicotécnico y última semana."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('plazas-reservadas-para-militares-como-funciona-el-cupo', 'articulo', 'Plazas reservadas para militares: cómo funciona el cupo', 'En 2026, 1.296 de las 3.240 plazas de la Escala de Cabos y Guardias se reservaron a militares de tropa y marinería. Qué exige el cupo, qué documento tienes que presentar y qué cambia en el baremo.', '**Respuesta corta:** en la convocatoria de 2026, **1.296 de las 3.240 plazas** se reservaron a **militares profesionales de tropa y marinería** con al menos **cinco años de servicios efectivos** que no hubieran terminado su compromiso con las Fuerzas Armadas. Compiten entre sí por ese cupo y tienen un apartado propio en el baremo del concurso.

Las fuentes son el [Real Decreto 206/2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-5998) (artículo 3) y las bases 1 y 2 de la [convocatoria](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982).

## Cómo se reparten las plazas

La base 1.1 reparte las 3.240 plazas así:

| Cupo | Plazas |
| --- | --- |
| Militares profesionales de tropa y marinería | 1.296 |
| Alumnos del Colegio de Guardias Jóvenes | 240 |
| Plazas libres | 1.704 |

Las reservadas que no se cubran, por cualquier motivo, **se acumulan a las libres** (base 1.2). En las convocatorias anteriores el cupo militar fue de 1.008 plazas (2023), 1.089 (2024) y 1.248 (2025), según sus bases en el BOE.

## Quién puede optar al cupo

La condición clave, literal en la base 1.1.a): ser **militar profesional de tropa y marinería de las Fuerzas Armadas** que lleve, **como mínimo, cinco años de servicios efectivos** como tal y **no haya finalizado su compromiso**, en la fecha en que termine el plazo de admisión de instancias.

Dos matices importantes:

- **Los cinco años se cuentan hasta el último día del plazo de solicitudes**, no hasta el examen ni hasta la incorporación.
- Además hay que **seguir siendo militar profesional de tropa y marinería en la fecha de incorporación** al centro de formación.

Ser militar no te exime del resto: tienes que cumplir [todos los requisitos generales](/blog/requisitos-guardia-civil) de la base 2, incluida la edad (en 2026, tener 18 años y no cumplir los 41 durante el año). Hay un requisito específico más: **no haber visto resuelto tu compromiso** por insuficiencia de facultades profesionales, por sanción disciplinaria extraordinaria de separación del servicio o por sanción de resolución de compromiso (base 2.1.12).

## Qué tienes que presentar

Cuando seas propuesto para ingresar, la base 10.2 exige presentar **al incorporarte** un **certificado de ser militar profesional de tropa y marinería** en esa fecha, expedido por el jefe de tu unidad, centro u organismo. La convocatoria incluye el modelo (apéndice VI), donde se certifica que:

1. Eres militar profesional de tropa y marinería y completas cinco años de servicios efectivos en la fecha en que acaba el plazo de instancias.
2. No has finalizado tu compromiso ni te han denegado su ampliación.
3. No has solicitado renunciar a tu condición de militar.

Quienes hayan servido en las Fuerzas Armadas presentan también **copia de su Hoja General de Servicios**. La vida laboral o la hoja de servicios se aporta, además, para la entrevista personal.

## Cómo puntúa el concurso para militares

El apartado A del baremo (apéndice I) es **exclusivo del cupo militar**:

- **0,90 puntos por año completo** de servicio como militar de tropa y marinería, hasta un máximo de **9 puntos**.
- **Por el empleo máximo alcanzado:** cabo, 2,40 puntos; cabo primero, 3,60 puntos.

Los méritos profesionales no pueden pasar de 13,5 puntos en total y la fase de concurso completa tiene un máximo de 45. Para el baremo entero, consulta [la fase de concurso y los méritos](/blog/fase-concurso-guardia-civil-meritos). Y recuerda que todo mérito hay que alegarlo en la [solicitud](/blog/como-rellenar-la-solicitud-de-la-guardia-civil-paso-a-paso).

## Cómo compite quien va por el cupo

Superadas las pruebas, la base 9.1 ordena a los aspirantes **de mayor a menor puntuación dentro de cada modalidad de ingreso**. Es decir, quien opta al cupo militar se compara con los demás militares, no con el cupo libre. Las pruebas de conocimientos, inglés, psicotécnico y aptitud psicofísica son las del resto de aspirantes. Cómo se estructuran, en [el examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Qué pasa con tu compromiso militar

Al ser nombrado alumno, el compromiso con las Fuerzas Armadas **queda resuelto** (base 11.4). La base 11.5 prevé, para el militar de complemento o de tropa y marinería con compromiso de larga duración que no complete su acceso a la Guardia Civil, la posibilidad de **reincorporarse a las Fuerzas Armadas** en las condiciones en que estaba, conforme a la Ley 8/2006. Antes de decidir, comprueba tu caso concreto con tu unidad.

Si quieres preparar el examen con método, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuántas plazas están reservadas a militares?

En 2026, 1.296 de 3.240. El número lo fija cada oferta de empleo público y cambia de un año a otro.

### ¿Necesito cinco años de servicio el día del examen?

No: los cinco años se cuentan hasta la fecha en que finaliza el plazo de admisión de solicitudes, según la convocatoria de 2026.

### ¿Si no apruebo por el cupo militar, entro en el libre?

La convocatoria de 2026 no describe ese paso como automático: en ella cada aspirante se ordena dentro de su modalidad de ingreso. Lo que sí dice es que las plazas reservadas sin cubrir se suman a las libres.

### ¿Cuándo presento el certificado de mi unidad?

A la incorporación al centro de formación, no en la solicitud (base 10.2).',
   NULL, NULL, 'publicado', '2027-02-07T06:01:00.000Z', 'acceso-guardia-civil',
   ARRAY['militares', 'tropa y marinería', 'cupo', 'plazas reservadas']::text[], '{"title":"Plazas para militares en la Guardia Civil: el cupo","description":"Cupo de militares de tropa y marinería en la Guardia Civil: 1.296 plazas en 2026, requisitos (5 años de servicio), certificado y puntos del baremo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('policia-judicial-y-uco-como-se-llega-a-la-especialidad', 'articulo', 'Policía Judicial y UCO: cómo se llega a la especialidad', 'La UCO es la unidad central de la Policía Judicial de la Guardia Civil. Qué funciones tiene, cómo se estructura la Jefatura de Policía Judicial y qué dice la normativa sobre la especialidad. Sin atajos ni cifras sin confirmar.', 'Cuando se habla de grandes investigaciones de la Guardia Civil, casi siempre aparece la UCO. Pero conviene separar dos cosas: **la Policía Judicial es una especialidad y una función; la UCO es una unidad concreta dentro de la Jefatura de Policía Judicial.** Entenderlo evita muchas ideas equivocadas sobre cómo se llega allí.

Aquí tienes lo que dicen las fuentes oficiales. Lo que no se puede confirmar (pruebas, plazas, años de servicio exigidos, duración de cursos) no lo vamos a escribir. Si necesitas el panorama general de los destinos, lee antes [especialidades y destinos](/blog/destinos-especialidades-guardia-civil).

## Qué es la Policía Judicial

La Constitución establece que la policía judicial depende de los jueces, de los tribunales y del Ministerio Fiscal en sus funciones de averiguación del delito y descubrimiento y aseguramiento del delincuente ([artículo 126 de la Constitución, BOE-A-1978-31229](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)). Dentro de la Guardia Civil, esas funciones se organizan a través de la Jefatura de Policía Judicial.

## La Jefatura de Policía Judicial y la UCO

La norma de estructura del Cuerpo ([Orden PRE/422/2013, BOE-A-2013-2906](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906)) dice que a la Jefatura de Policía Judicial le corresponde organizar y gestionar la investigación y persecución de los delitos y desarrollar los servicios de criminalística, identificación, analítica e investigación técnica. De ella dependen, entre otras, dos unidades:

| Unidad | Misión según la norma |
|---|---|
| Unidad Central Operativa (UCO) | Investigar y perseguir los asuntos relacionados con la delincuencia grave, nacional e internacional, y aquella otra cuyas especiales características lo aconsejen, y mantener el enlace con servicios afines nacionales e internacionales. |
| Unidad Técnica de Policía Judicial | Asesoramiento técnico al mando, análisis criminal, normas técnico-operativas y sistemas de información de apoyo a las investigaciones. |

La web oficial de la Guardia Civil recuerda además que la UCO se creó el 8 de septiembre de 1987.

Fíjate en que la UCO es un **destino**, no una especialidad con ese nombre. Y que la investigación del día a día se hace también en las unidades orgánicas de Policía Judicial de las comandancias. Un ejemplo que ofrece la web oficial son los Equipos Mujer-Menor (EMUME), creados en 1995 dentro de esas unidades, que investigan delitos contra mujeres y menores.

## Qué dice la normativa de especialidades

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) regula las especialidades y enumera, entre otras:

- **Policía Judicial (PJU)**, sin modalidades.
- **Criminalística (CRIM)**, con ocho modalidades (dirección, laboratorio, técnica operativa, antropología, biología, física, ingeniería y química).
- **Tecnologías de la información (TEIN)**, con modalidades de dirección, técnica y apoyo.

Y fija para todas el mismo esquema: para obtener una especialidad hay que acreditar la **cualificación específica** y, para ejercerla, ocupar un **puesto orgánico** que la requiera. El acceso a esos puestos puede condicionarse por escala, empleo, edad, condiciones psicofísicas, titulaciones previas o nivel de idiomas.

## Cómo se llega, en términos prudentes

La orden de especialidades no publica un «camino a la UCO». Lo que se puede afirmar es el esquema general:

1. Ingresar en la Escala de Cabos y Guardias y cumplir el primer destino.
2. Obtener la cualificación específica que corresponda, mediante el curso de especialización que se convoque.
3. Acceder a un puesto orgánico que requiera esa cualificación, con arreglo a la normativa de destinos.

El Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)) fija requisitos generales para optar a los cursos de especialización: aptitud psicofísica y técnica, titulaciones, niveles de idioma o habilitaciones, no tener antecedentes penales ni sanciones graves o muy graves sin cancelar, entre otros. Y el Reglamento de destinos ([Real Decreto 470/2019, BOE-A-2019-11398](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398)) regula la servidumbre: el tiempo que debes permanecer en puestos que usan la cualificación, con un máximo de cinco años.

Los requisitos concretos de cada curso o de cada vacante en la UCO, las pruebas, el número de plazas y los plazos **dependen de la convocatoria y de la resolución de anuncio de vacantes**. Consúltalas en el portal de la Guardia Civil y en el Boletín Oficial del Cuerpo, que es donde se publica, con carácter general, la selección de asistentes a estos cursos.

## Qué puedes hacer ya

No puedes elegir la UCO antes de ser guardia civil, pero la base es la misma que para todo:

- **Dominar el temario jurídico.** El derecho penal y el procedimiento son la materia con la que trabaja a diario esta especialidad. Mira cómo está el [examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).
- **Inglés**, útil para la cooperación internacional: repasa la [prueba de inglés](/blog/ingles-oposicion-guardia-civil).
- **Cuidar tu historial.** Los requisitos de acceso a cursos hablan de antecedentes y sanciones.

## Preguntas frecuentes

### ¿La UCO es una especialidad?

No. Es una unidad de la Jefatura de Policía Judicial. La especialidad se llama Policía Judicial y la regula la Orden PCM/509/2020.

### ¿Puedo entrar directamente en la UCO?

La normativa exige cualificación específica y un puesto orgánico que la requiera. No hay una vía directa publicada en las fuentes que hemos revisado.

### ¿Qué estudios ayudan?

Algunas modalidades de Criminalística o de Tecnologías de la información pueden requerir titulaciones. Mira la convocatoria del curso correspondiente.

### ¿Dónde veo las convocatorias?

En el portal de la Guardia Civil y en su Boletín Oficial. Las cifras que circulen en foros no sustituyen a la convocatoria vigente.',
   NULL, NULL, 'publicado', '2027-01-31T06:02:00.000Z', 'acceso-guardia-civil',
   ARRAY['policía judicial', 'uco', 'especialidades', 'investigación']::text[], '{"title":"Policía Judicial y UCO Guardia Civil: cómo se accede","description":"Policía Judicial y UCO de la Guardia Civil: qué funciones tienen, cómo se organizan y qué dice la normativa sobre la especialidad y el acceso."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('preguntas-trampa-del-examen-de-guardia-civil', 'articulo', 'Preguntas trampa del examen de Guardia Civil y cómo detectarlas', 'No hay una lista oficial de preguntas trampa, pero las reglas de la convocatoria crean situaciones que conviene dominar: la respuesta más completa, la penalización y los errores que cuentan igual en ortografía. Cómo afrontarlas.', '**Respuesta corta:** la convocatoria no habla de «preguntas trampa» y no hay datos oficiales sobre cuáles aparecen. Lo que sí es oficial son las reglas del test, y de ellas salen las situaciones que más confunden: elegir **la respuesta más completa** cuando varias parecen correctas, saber cuándo **no contestar** por la penalización y entender que en ortografía y gramática **marcar de más cuenta igual que no marcar**. Esto es lo que conviene dominar.

Las reglas salen de la base 6 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). Todos los ejemplos de este artículo son propios, redactados para practicar: no son preguntas oficiales.

## 1. «Señale la más completa»

La convocatoria lo dice en conocimientos, inglés y psicotécnico: cada pregunta tiene **una única respuesta válida** y, si crees que varias son correctas, hay que **señalar la más completa**. Es el caso en el que una opción es cierta pero incompleta.

Ejemplo propio:

**¿Cuáles son los valores superiores del ordenamiento jurídico según el artículo 1.1 de la Constitución?**
a) Libertad y justicia
b) Libertad, justicia e igualdad
c) Libertad, justicia, igualdad y pluralismo político
d) Libertad, igualdad y pluralismo político

Todas las opciones incluyen solo valores que sí figuran en el artículo, pero únicamente la **c)** los recoge todos. Si te quedas en la primera que te suena, fallas. **Lee las cuatro opciones antes de marcar.**

## 2. Las negaciones y los «salvo»

Preguntas del tipo «¿cuál NO es…?» o «todas son correctas salvo…» obligan a invertir el razonamiento. El fallo habitual no es de conocimiento, sino de lectura.

Ejemplo propio: **¿Cuál NO es un valor superior del ordenamiento jurídico según el artículo 1.1 de la Constitución?** a) Libertad b) Justicia c) Igualdad d) Solidaridad. La respuesta es la d).

Un truco práctico: **subraya la negación** con el boli antes de mirar las opciones.

## 3. Palabras absolutas y cifras casi iguales

Dos señales que conviene mirar con calma, sin convertirlas en norma:

- **Palabras como «siempre», «nunca» o «únicamente»** hacen la afirmación mucho más difícil de cumplir. A veces la opción es válida, pero merece una segunda lectura.
- **Plazos, mayorías y números de artículo parecidos** (diez o quince días, mayoría simple o absoluta): aquí se gana o se pierde por precisión. Estudia las cifras con tarjetas, no solo leyendo.

## 4. La penalización: la trampa de la prisa

Los errores penalizan y las preguntas en blanco no. La fórmula de conocimientos de la convocatoria de 2026 es A − E/(N − 1) con cuatro alternativas: **cada error resta un tercio de acierto**.

Haz las cuentas con un ejemplo propio. Si contestas las 100 preguntas, aciertas 60 y fallas 40, tu nota es 60 − 40/3 ≈ 46,7: **no llegas al mínimo de 50**. Si dejas 16 en blanco, aciertas 60 y fallas 24, es 60 − 24/3 = 52, y sí lo superas. Para calcular tu nota con las reglas completas, mira [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil).

La lógica de decisión:

- **Si no tienes ni idea,** en blanco: acertar al azar entre cuatro no compensa el riesgo.
- **Si has descartado dos opciones,** arriesgar compensa: tienes un 50 % de acertar y el error solo resta un tercio.

## 5. Ortografía y gramática: marcar de más es fallar

Aquí la trampa es de otro tipo. La convocatoria considera respuesta errónea **tanto no marcar una palabra con falta como marcar una correcta**. Con seis o más errores en cada una de estas pruebas quedas **excluido** en el examen de acceso ordinario.

Ejemplo propio: en la frase «**Haber** si llegas pronto a la reunión», la expresión correcta es «a ver». Quien subraya solo las palabras que «suenan raras» y se salta los homófonos falla. Para trabajar estas confusiones: [homófonos](/blog/homofonos-ortografia-guardia-civil) y [tildes](/blog/tildes-reglas-oposicion-guardia-civil).

## 6. Las que no son trampa, sino terreno desconocido

Muchas «preguntas trampa» son simplemente temas poco repasados: una disposición que nunca leíste, un artículo que confundías con otro. Se arreglan con **simulacros cronometrados**, el [test de la Constitución](/blog/test-constitucion-20-preguntas-guardia-civil) y repasando cada fallo con su artículo, no solo con la respuesta correcta.

Y recuerda las normas de la sala: no se permiten apuntes, calculadora ni móvil, y se lleva bolígrafo de tinta negra. Todo lo demás se entrena. Si quieres hacerlo con un método y simulacros, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este trabajo; y para ver el examen entero, su [estructura](/blog/examen-conocimientos-guardia-civil-estructura).

## Preguntas frecuentes

### ¿Hay preguntas trampa en el examen de la Guardia Civil?

La convocatoria no usa ese término ni hay datos oficiales sobre ellas. Lo oficial son las reglas del test: respuesta única, la más completa y penalización por error.

### ¿Qué hago si dudo entre dos opciones?

Si has descartado las otras dos, normalmente compensa contestar: con cuatro opciones, un error resta un tercio de acierto, pero un acierto suma uno entero.

### ¿Restan las preguntas en blanco?

No. La convocatoria dice expresamente que no se penaliza la pregunta no contestada.

### ¿Cómo practico la «respuesta más completa»?

Haz tests y, al corregir, revisa por qué las otras opciones eran incompletas, no solo por qué acertaste.',
   NULL, NULL, 'publicado', '2027-02-10T06:52:00.000Z', 'acceso-guardia-civil',
   ARRAY['técnica de test', 'penalización', 'examen', 'estrategia']::text[], '{"title":"Preguntas trampa del examen de Guardia Civil","description":"Cómo afrontar las preguntas trampa del test de Guardia Civil: negaciones, respuesta más completa, penalización y ortografía. Con ejemplos propios."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('prevencion-de-riesgos-laborales-en-la-guardia-civil-que-entra', 'articulo', 'Prevención de riesgos laborales en la Guardia Civil: qué entra en el examen', 'El tema 3 combina la Ley 31/1995 con dos reales decretos. Te explicamos qué capítulos entran, los conceptos básicos, los principios de la acción preventiva y cómo se adapta todo a la Guardia Civil con el Real Decreto 179/2005.', 'El tema 3 del programa de la Escala de Cabos y Guardias es «Prevención de riesgos laborales». **Respuesta corta:** entran cinco capítulos de la Ley 31/1995 (I, II, III, VI y VII), el Real Decreto 67/2010 sobre prevención en la Administración General del Estado y el Real Decreto 179/2005 sobre prevención en la Guardia Civil. Así consta en nuestro [temario](/temario-guardia-civil), elaborado a partir de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)).

Las citas de este artículo se han comprobado en el texto consolidado de la [Ley 31/1995](https://www.boe.es/buscar/act.php?id=BOE-A-1995-24292) y del [Real Decreto 179/2005](https://www.boe.es/buscar/act.php?id=BOE-A-2005-3241). No desarrollamos aquí el Real Decreto 67/2010.

## Qué capítulos de la Ley 31/1995 entran

| Capítulo | Título | Artículos |
|---|---|---|
| I | Objeto, ámbito de aplicación y definiciones | 1 a 4 |
| II | Política en materia de prevención de riesgos para proteger la seguridad y la salud en el trabajo | 5 a 13 |
| III | Derechos y obligaciones | 14 a 29 |
| VI | Obligaciones de los fabricantes, importadores y suministradores | 41 |
| VII | Responsabilidades y sanciones | 42 a 54 |

Quedan fuera los capítulos IV (servicios de prevención) y V (consulta y participación de los trabajadores). Si cambia el programa en una convocatoria futura, esta lista cambiaría: compruébalo siempre.

## Conceptos del Capítulo I

- **Objeto (art. 2):** promover la seguridad y la salud de los trabajadores mediante la aplicación de medidas y el desarrollo de las actividades necesarias para la prevención de riesgos derivados del trabajo.
- **Ámbito (art. 3):** se aplica a las relaciones laborales y también a las relaciones administrativas o estatutarias del personal de las administraciones públicas. Pero **no se aplica** a las actividades cuyas particularidades lo impidan en las funciones públicas de policía, seguridad y resguardo aduanero; servicios operativos de protección civil y peritaje forense en casos de grave riesgo, catástrofe y calamidad pública; y Fuerzas Armadas y actividades militares de la Guardia Civil. Aun así, la Ley **inspirará** la normativa específica para esas actividades. Esta excepción explica por qué existe un real decreto propio para la Guardia Civil.
- **Definiciones (art. 4):** «prevención» (actividades o medidas para evitar o disminuir los riesgos derivados del trabajo), «riesgo laboral» (posibilidad de que un trabajador sufra un daño derivado del trabajo, valorada según probabilidad y severidad) y «daños derivados del trabajo» (enfermedades, patologías o lesiones sufridas con motivo u ocasión del trabajo).

## Derechos y obligaciones (Capítulo III)

### El derecho de protección (art. 14)
Los trabajadores tienen derecho a una protección eficaz en materia de seguridad y salud en el trabajo. Esto implica un deber correlativo del empresario, que **también es un deber de las administraciones públicas respecto de su personal**.

### Principios de la acción preventiva (art. 15)
Una lista que conviene memorizar en orden: evitar los riesgos; evaluar los que no se puedan evitar; combatirlos en su origen; adaptar el trabajo a la persona; tener en cuenta la evolución de la técnica; sustituir lo peligroso por lo que entrañe poco o ningún peligro; entre otros que recoge el artículo.

### El resto del Capítulo III, de un vistazo

| Art. | Tema |
|---|---|
| 16 | Plan de prevención, evaluación de riesgos y planificación de la actividad preventiva |
| 18 | Información, consulta y participación |
| 19 | Formación |
| 21 | Riesgo grave e inminente |
| 22 | Vigilancia de la salud |
| 25 a 28 | Trabajadores especialmente sensibles, maternidad, menores, relaciones de trabajo temporales |
| 29 | Obligaciones de los trabajadores |

**Riesgo grave e inminente (art. 21):** el trabajador tiene derecho a interrumpir su actividad y abandonar el lugar de trabajo, en caso necesario, cuando considere que su actividad entraña un riesgo grave e inminente para su vida o su salud.

**Obligaciones del trabajador (art. 29):** usar adecuadamente máquinas y herramientas, utilizar correctamente los equipos de protección, no inutilizar los dispositivos de seguridad, informar de inmediato a su superior de cualquier situación de riesgo, contribuir al cumplimiento de las obligaciones de la autoridad competente y cooperar con el empresario.

## Responsabilidades (Capítulo VII)

El incumplimiento del empresario da lugar a responsabilidades administrativas y, en su caso, penales y civiles (art. 42). El detalle de infracciones y sanciones de los antiguos artículos 45 a 49 está hoy fuera de ese texto, porque se trasladó a otra norma; por eso conviene estudiar sobre el texto consolidado y no sobre apuntes antiguos.

## El Real Decreto 179/2005: la Guardia Civil

- **Objeto (art. 1):** promover la seguridad y la salud del personal de la Guardia Civil y de los miembros de las Fuerzas Armadas destinados en unidades, centros y organismos de la Dirección General, adaptando la Directiva 89/391/CEE y la Ley 31/1995 a sus peculiaridades.
- **Ámbito (art. 2):** las actividades específicas de las misiones de la Ley Orgánica 2/1986. Las misiones de carácter militar se rigen por sus normas específicas. A las funciones que no presenten características exclusivas de policía, seguridad, resguardo aduanero y protección civil les aplica la normativa general.
- **Principios:** planificación, eliminación o disminución de factores de riesgo, información, participación y consulta, formación e integración de la prevención.
- **Plan de prevención y evaluación de riesgos (art. 4)**, **vigilancia de la salud (art. 6)**, **información (art. 7)**, **participación (art. 8)**, **formación (art. 9)**, **protección de la maternidad (art. 10)**, **obligaciones de la Administración (art. 11)** y **del personal (art. 12)**.
- **Órganos de prevención (art. 13):** Servicio de Prevención, Sección de Prevención de Zona, Oficina de Prevención de Comandancia y otras unidades. Los asesora el Consejo de la Guardia Civil (art. 14), que analiza las propuestas de mejora del personal.

Este real decreto ha sido modificado recientemente (por ejemplo, el artículo 3 bis, de principios de la acción preventiva, se añadió con efectos desde el 26 de febrero de 2026), así que estudia siempre la versión consolidada.

## Cómo estudiarlo

1. **Aprende la excepción del artículo 3.2** y su razón de ser: sin ella no se entiende el Real Decreto 179/2005.
2. **Haz una tabla comparativa** Ley 31/1995 / RD 179/2005: quién es el «empresario» en la Guardia Civil (la Administración), qué órganos de prevención hay y quién asesora.
3. Practica con tests propios por capítulos. Para ver cómo se reparte el tiempo en el examen, consulta la [estructura del examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).
4. Si quieres una ruta ordenada por temas, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil). Y repasa también la [igualdad efectiva](/blog/igualdad-efectiva-de-mujeres-y-hombres-claves-de-la-ley).

## Preguntas frecuentes

### ¿Se aplica la Ley 31/1995 a la Guardia Civil?
Sí, con matices: su artículo 3.2 la excluye en las actividades cuyas particularidades lo impidan en funciones de policía, seguridad y resguardo aduanero, y en las actividades militares de la Guardia Civil. Para ellas rige una normativa específica inspirada en la Ley, como el Real Decreto 179/2005.

### ¿Qué órganos de prevención tiene la Guardia Civil?
Según el artículo 13 del Real Decreto 179/2005: el Servicio de Prevención, las Secciones de Prevención de Zona, las Oficinas de Prevención de Comandancia y otras unidades.

### ¿Puede un trabajador dejar de trabajar si hay peligro?
La ley reconoce el derecho a interrumpir la actividad y abandonar el lugar de trabajo cuando se considere que entraña un riesgo grave e inminente para la vida o la salud (art. 21.2). Su aplicación concreta en actividades policiales depende de la normativa específica.

### ¿Hay datos oficiales de cuántas preguntas hay de este tema?
No. Las bases no desglosan preguntas por tema; lo prudente es estudiar el tema completo.',
   NULL, NULL, 'publicado', '2026-12-12T06:52:00.000Z', 'acceso-guardia-civil',
   ARRAY['prevención de riesgos laborales', 'Ley 31/1995', 'Real Decreto 179/2005', 'temario']::text[], '{"title":"Prevención de riesgos laborales Guardia Civil: temario","description":"Qué entra del tema de prevención de riesgos laborales: Ley 31/1995 (caps. I, II, III, VI y VII) y RD 179/2005 de la Guardia Civil, con los conceptos clave."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('procedimiento-administrativo-ley-39-2015-en-10-claves', 'articulo', 'Procedimiento administrativo (Ley 39/2015) en 10 claves', 'Diez ideas para ordenar la Ley 39/2015 del Procedimiento Administrativo Común: interesados, plazos, silencio, notificaciones, nulidad y recursos. Con los artículos y las cifras comprobadas en el texto consolidado del BOE.', 'La Ley 39/2015, del Procedimiento Administrativo Común de las Administraciones Públicas ([BOE-A-2015-10565](https://www.boe.es/buscar/act.php?id=BOE-A-2015-10565)), es la parte del programa de Derecho Administrativo con más números que recordar. El programa incluye su Título Preliminar y los Títulos I a VI; la Ley 40/2015 es la otra norma de ese tema y tiene su propio estudio. **Respuesta corta:** si dominas plazos, silencio, notificaciones y recursos, tienes la columna vertebral del tema.

Aquí van diez claves, con el artículo para que las localices.

## 1. Quién es interesado (art. 4)

Son interesados quienes promueven el procedimiento como titulares de derechos o intereses legítimos, los que tienen derechos que puedan resultar afectados por la decisión, y quienes tienen intereses legítimos que puedan verse afectados y se personen antes de la resolución definitiva.

## 2. Derechos y relación electrónica (arts. 13 y 14)

Las personas físicas pueden elegir si se relacionan con la Administración por medios electrónicos o no, salvo que estén obligadas. **Están obligados**, al menos: las personas jurídicas, las entidades sin personalidad jurídica, quienes ejercen una actividad profesional con colegiación obligatoria (para los trámites propios de esa actividad), quienes representan a un obligado y los empleados públicos por razón de su condición de tales.

## 3. Cómo se cuentan los plazos (art. 30)

- Los plazos por **días** son **hábiles**: se excluyen sábados, domingos y festivos, salvo que una ley o el Derecho de la Unión disponga otra cosa.
- Se cuentan **desde el día siguiente** a la notificación o publicación, o desde el siguiente a aquel en que se produzca el silencio.
- Los plazos por **meses o años** se cuentan de fecha a fecha y concluyen el mismo día del mes de vencimiento; si no existe ese día, el último del mes.
- Si el último día es inhábil, se prorroga al primer día hábil siguiente.

## 4. Obligación de resolver (art. 21)

La Administración debe dictar resolución expresa y notificarla. El plazo máximo lo fija la norma del procedimiento y no puede exceder de **seis meses**, salvo que una ley o el Derecho de la Unión Europea establezcan uno mayor. Si la norma no fija plazo, es de **tres meses**. Se cuenta desde la fecha del acuerdo de iniciación (de oficio) o desde la entrada de la solicitud en el registro electrónico del órgano competente.

## 5. Silencio administrativo (art. 24)

En los procedimientos iniciados a solicitud, el silencio es **estimatorio** como regla general, salvo que una norma con rango de ley, del Derecho de la Unión o internacional aplicable establezca lo contrario. Es **desestimatorio**, entre otros, en el derecho de petición del artículo 29 CE, cuando la estimación transferiría facultades sobre el dominio público o el servicio público, en actividades que puedan dañar el medio ambiente, en responsabilidad patrimonial y en los procedimientos de impugnación de actos y disposiciones. La estimación por silencio es un acto administrativo; la desestimación solo permite recurrir.

## 6. Notificaciones (arts. 40 y 43)

- Deben cursarse en **diez días** desde que se dicta el acto y contener el texto íntegro, si pone fin o no a la vía administrativa, los recursos posibles, el órgano y el plazo.
- Las electrónicas se entienden practicadas al acceder a su contenido. Si son obligatorias o las eligió el interesado, se entienden **rechazadas a los diez días naturales** de su puesta a disposición sin acceso.

## 7. Subsanación y audiencia (arts. 68 y 82)

Si la solicitud no reúne los requisitos, se requiere al interesado para que la subsane en **diez días**, con advertencia de que, si no lo hace, se le tendrá por desistido. El trámite de audiencia, antes de la propuesta de resolución, concede un plazo **no inferior a diez ni superior a quince días**.

## 8. Nulidad y anulabilidad (arts. 47 y 48)

Son **nulos de pleno derecho**, entre otros, los actos que lesionen derechos susceptibles de amparo constitucional, los dictados por órgano manifiestamente incompetente por razón de la materia o del territorio, los de contenido imposible, los constitutivos de infracción penal o dictados como consecuencia de ella, y los dictados prescindiendo total y absolutamente del procedimiento. Son **anulables** los que incurran en cualquier infracción del ordenamiento jurídico, incluida la desviación de poder; el defecto de forma solo anula si priva de requisitos indispensables o causa indefensión.

## 9. Recursos de alzada y reposición (arts. 112, 121-124)

| Recurso | Ante quién | Plazo si el acto es expreso | Plazo para resolver |
|---|---|---|---|
| Alzada | El superior jerárquico (puede presentarse ante el órgano que dictó el acto) | Un mes | Tres meses |
| Reposición (potestativo) | El mismo órgano que dictó el acto que pone fin a la vía administrativa | Un mes | Un mes |

Contra las disposiciones de carácter general no cabe recurso en vía administrativa (art. 112.3).

## 10. Caducidad y recurso extraordinario de revisión (arts. 95 y 125)

Si un procedimiento iniciado a solicitud se paraliza por causa imputable al interesado, la Administración le advierte de que, pasados **tres meses**, se producirá la caducidad. El recurso extraordinario de revisión procede contra actos firmes en vía administrativa en cuatro supuestos tasados (error de hecho, documentos de valor esencial, documentos o testimonios falsos, o resolución dictada por prevaricación, cohecho u otra conducta punible); el plazo es de **cuatro años** si es error de hecho y de **tres meses** en los demás casos.

## Cómo estudiarlo

Crea una ficha por cada clave con el artículo, el número y un caso inventado propio. Después comprueba tu dominio con tests: las trampas habituales mezclan días hábiles con naturales o confunden alzada con reposición. Si quieres una guía completa del programa, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) lo desarrolla, y en el [examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura) tienes cómo se puntúa.

## Preguntas frecuentes

### ¿Los plazos de la Ley 39/2015 son días naturales o hábiles?

Hábiles por regla general, salvo que una ley o el Derecho de la Unión indiquen otra cosa. Se excluyen sábados, domingos y festivos.

### ¿Qué plazo hay para resolver si la norma no lo fija?

Tres meses.

### ¿Cuánto tiempo hay para recurrir en alzada un acto expreso?

Un mes.

### ¿Es obligatorio el recurso de reposición?

No, es potestativo: puede interponerse o acudir directamente a la vía contencioso-administrativa.',
   NULL, NULL, 'publicado', '2026-12-18T06:34:00.000Z', 'acceso-guardia-civil',
   ARRAY['procedimiento administrativo', 'Ley 39/2015', 'plazos', 'recursos', 'derecho administrativo']::text[], '{"title":"Ley 39/2015 en 10 claves: plazos, silencio y recursos","description":"Resumen de la Ley 39/2015 para opositores: interesados, plazos, silencio administrativo, notificaciones, nulidad y recursos de alzada y reposición."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('proposito-2027-entrar-en-la-guardia-civil-plan-mes-a-mes', 'articulo', 'Propósito 2027: entrar en la Guardia Civil. Plan mes a mes', 'Un propósito de año nuevo sirve si tiene fases. Plan orientativo de enero a octubre para preparar la oposición a Guardia Civil, con objetivos por mes y apoyado en el calendario real de la convocatoria de 2026.', '**Respuesta corta:** «aprobar la oposición» no es un propósito, es un resultado. Un propósito útil es un plan con fases: qué haces en enero, qué en marzo, qué cuando salga la convocatoria. Aquí tienes uno orientativo que puedes adaptar a tu punto de partida.

## Lo que sabemos del calendario (y lo que no)

La convocatoria de 2026 se publicó en el BOE el 8 de mayo ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), dio **15 días hábiles** para solicitar plaza, la relación definitiva de admitidos salió el 30 de junio ([BOE-A-2026-14447](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-14447)) y la de propuestos, el 6 de octubre ([BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936)). La incorporación estaba prevista para el 13 de octubre.

**No hay garantía de que la de 2027 siga ese calendario.** Planifica con holgura y consulta siempre la convocatoria vigente. Detalle de lo ocurrido en 2026 en [el artículo sobre la convocatoria](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## Plan mes a mes

### Enero: diagnóstico y rutina
- Comprueba los [requisitos](/blog/requisitos-guardia-civil) (edad, titulación, carné B).
- Toma tus marcas físicas de partida y haz un test de nivel.
- Fija un horario realista de estudio y no lo cambies durante dos semanas.

### Febrero y marzo: primera vuelta del temario
- Avanza por los 23 temas, con un test corto al terminar cada uno.
- Empieza a entrenar con regularidad las cuatro pruebas físicas.
- Dedica un rato semanal al inglés y a la ortografía, aunque sea poco.

### Abril: consolidar
- Segunda pasada rápida por los temas con más fallos.
- Primeros simulacros completos de conocimientos, con el tiempo real de la prueba.
- Revisa los méritos del [concurso](/blog/fase-concurso-guardia-civil-meritos): hay puntos que se acreditan con tiempo.

### Mayo y junio: ritmo de examen
- Un simulacro semanal, corregido a fondo.
- Psicotécnico a diario en sesiones cortas (guía en [psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad)).
- Si ya está publicada la convocatoria, cumple a rajatabla el plazo de la instancia.

### Julio a octubre: según la convocatoria
Las fechas de las pruebas las fijará el Tribunal. Mantén el entrenamiento físico, consigue el certificado médico a tiempo (se exige expedido dentro de los 20 días anteriores a las pruebas físicas) y prepara la entrevista.

## Un ejemplo de semana en pleno plan

A partir de febrero, una semana razonable combina estudio diario de temario, uno o dos días de tests, tres o cuatro sesiones físicas y un día libre. No necesitas copiarla: sirve como punto de comparación para ver si tu plan es sostenible o si te has marcado una carga que no vas a cumplir. Si tu plan exige más horas de las que hay en tu semana real, recórtalo antes de empezar, no a mitad.

## Tres reglas para que el plan sobreviva

1. **Plan mínimo, no ideal.** Si fallas un día, el plan mínimo (30 minutos) evita romper la cadena.
2. **Revisión mensual.** Cada fin de mes, compara lo previsto con lo hecho y reajusta; la guía del [balance de fin de año](/blog/balance-del-ano-como-saber-si-vas-bien-en-la-oposicion) te da los indicadores.
3. **Descanso programado.** Un día libre a la semana no es perder tiempo.

Si compaginas con un trabajo, mira [cómo estudiar trabajando](/blog/plan-estudio-guardia-civil-trabajando). Para un plan con temario y simulacros, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Qué hacer si te desvías

Algún mes no cumplirás. Lo útil es detectarlo pronto: si a final de mes has hecho menos de la mitad de lo previsto, no arrastres la deuda al siguiente. Recorta el objetivo, prioriza lo eliminatorio y sigue.

## Preguntas frecuentes

### ¿Sirve este plan si empiezo más tarde?
Sí, comprimiendo fases. Cuanto más tarde empieces, más importa priorizar.

### ¿Cuándo saldrá la convocatoria de 2027?
No lo sabemos. Está por confirmar y se publicará en el BOE.

### ¿Cuántas horas necesito?
Es muy personal; lo trataremos con detalle en un artículo posterior sobre las horas diarias de estudio.

### ¿Debo estudiar y entrenar a la vez desde enero?
Es lo recomendable, con carga progresiva y consejo profesional si dudas.',
   NULL, NULL, 'publicado', '2026-12-31T06:15:00.000Z', 'acceso-guardia-civil',
   ARRAY['plan de estudio', 'año nuevo', 'planificación', 'convocatoria']::text[], '{"title":"Propósito 2027 Guardia Civil: plan de estudio mes a mes","description":"Plan orientativo mes a mes para preparar Guardia Civil en 2027: objetivos de temario, simulacros y pruebas físicas, sin prometer fechas de convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('proteccion-civil-y-desarrollo-sostenible-en-el-temario', 'articulo', 'Protección civil y desarrollo sostenible en el temario: qué normas entran', 'El tema 16 mezcla tres normas muy distintas: la Ley 17/2015 de Protección Civil, la Ley 42/2007 de Patrimonio Natural y la Directiva de eficiencia energética. Qué partes entran y cómo ordenarlas.', 'El tema 16 es de los más heterogéneos del programa: reúne **protección civil, patrimonio natural y eficiencia energética**. Tres normas sin relación aparente que conviene estudiar por separado y con un esquema para cada una.

## Qué entra exactamente

Según el [temario oficial](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2024/TEMARIO_INGRESO_GC_ACTUALIZADO_2024.pdf), el tema se divide en tres bloques:

1. **Ley 17/2015, de 9 de julio, del Sistema Nacional de Protección Civil**: títulos I a V.
2. **Ley 42/2007, de 13 de diciembre, del Patrimonio Natural y de la Biodiversidad**: título preliminar y títulos II, III y IV.
3. **Directiva 2012/27/UE** del Parlamento Europeo y del Consejo, relativa a la eficiencia energética: capítulos I y II.

Fíjate en lo que **no** entra: del título VI de la Ley 17/2015 (régimen sancionador) y de otras partes de la Ley 42/2007 no se te pide nada. Estudiar de más es gastar tiempo.

## Bloque 1: Ley 17/2015 de Protección Civil

Está en el BOE como [BOE-A-2015-7730](https://www.boe.es/buscar/act.php?id=BOE-A-2015-7730). Su estructura, tal como aparece en el texto consolidado:

| Título | Contenido |
|---|---|
| I | Disposiciones generales: objeto, definiciones, el Sistema Nacional, derechos y deberes (información, participación, autoprotección, voluntariado) |
| II | Actuaciones del Sistema: anticipación, prevención, planificación, respuesta inmediata, recuperación, evaluación y emergencias de interés nacional |
| III | Recursos humanos: formación y Escuela Nacional de Protección Civil |
| IV | Competencias de los órganos de la Administración General del Estado: Gobierno, Ministro del Interior, Delegados del Gobierno, Fuerzas Armadas (UME) y Fuerzas y Cuerpos de Seguridad |
| V | Cooperación y coordinación: Consejo Nacional de Protección Civil y órganos territoriales |

### Lo que conviene tener claro

- **Las cinco actuaciones del Sistema** (artículo 3): prever, planificar, intervenir, recuperar y coordinar, seguimiento y evaluación. El artículo 3 las enumera, y los capítulos del título II las desarrollan en orden.
- **Emergencias de interés nacional** (arts. 28 a 30): se declaran cuando requieren aplicar la ley de estados de alarma, excepción y sitio, cuando afectan a varias comunidades autónomas y exigen recursos supraautonómicos, o cuando por sus dimensiones requieren dirección nacional. **Declara el titular del Ministerio del Interior**, que asume su dirección.
- **La participación de las Fuerzas y Cuerpos de Seguridad del Estado** está en el artículo 38, relevante por obvias razones.

Para situar al Ministerio del Interior, que dirige estas emergencias, lee [Ministerio del Interior y Ministerio de Defensa: estructura](/blog/ministerio-del-interior-y-ministerio-de-defensa-estructura).

## Bloque 2: Ley 42/2007 del Patrimonio Natural

Aquí la clave es la **selección de títulos**: preliminar y II a IV, que en el temario oficial son: catalogación, conservación y restauración de hábitats y espacios del patrimonio natural (II), conservación de la biodiversidad (III) y uso sostenible del patrimonio natural y de la biodiversidad (IV). Usa el texto consolidado del BOE para ceñirte a ellos.

## Bloque 3: Directiva 2012/27/UE

Solo los capítulos I (objeto, ámbito, definiciones y objetivos de eficiencia energética) y II (eficiencia en el uso de la energía). Es una directiva, así que se lee con el objetivo de entender qué obliga a los Estados, no de memorizar cifras sueltas.

## Cómo estudiarlo

1. **Un esquema por norma**, nunca mezclado.
2. **Empieza por la Ley 17/2015**: es la más organizada y la que más vínculo tiene con el trabajo del Cuerpo.
3. **Subraya solo lo del temario**; ignora títulos fuera de alcance.
4. **Haz tests por bloque** para fijar las normas poco intuitivas. Nadie puede decirte cuántas preguntas entran de este tema: no hay datos oficiales. Cuando conozcas tu progreso, mira [cómo memorizar leyes](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).

El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) desarrolla este tema dentro de las 23 materias de conocimientos del programa.

## Preguntas frecuentes

### ¿Quién declara una emergencia de interés nacional?
Según el artículo 29 de la Ley 17/2015, el titular del Ministerio del Interior, por iniciativa propia o a instancia de comunidades autónomas o delegados del Gobierno.

### ¿Entra el régimen sancionador de la Ley 17/2015?
No. El temario fija los títulos I a V; el régimen sancionador es el título VI.

### ¿Hay que estudiar toda la Ley 42/2007?
No: solo el título preliminar y los títulos II, III y IV.

### ¿La Directiva de eficiencia energética se estudia entera?
No, solo los capítulos I y II.',
   NULL, NULL, 'publicado', '2027-01-11T06:22:00.000Z', 'acceso-guardia-civil',
   ARRAY['protección civil', 'desarrollo sostenible', 'temario', 'ley 17/2015']::text[], '{"title":"Protección civil Guardia Civil: Ley 17/2015 y tema 16","description":"Tema 16 de la oposición de Guardia Civil: Ley 17/2015 de Protección Civil, Ley 42/2007 y Directiva 2012/27/UE. Qué entra y cómo estudiarlo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('proteccion-de-datos-para-la-oposicion-rgpd-y-lopdgdd', 'articulo', 'Protección de datos para la oposición: RGPD y LOPDGDD', 'Cómo se reparten el Reglamento europeo 2016/679 y la Ley Orgánica 3/2018, qué principios y derechos conviene dominar, qué plazos y cifras aparecen en el texto y qué títulos de la ley recoge el programa de la oposición.', 'La protección de datos personales se regula en dos niveles. **Respuesta corta:** el Reglamento (UE) 2016/679 (RGPD) es directamente aplicable en toda la Unión desde el 25 de mayo de 2018, y la Ley Orgánica 3/2018, de Protección de Datos Personales y garantía de los derechos digitales (LOPDGDD), lo adapta al ordenamiento español y lo completa. El programa de la oposición recoge de la ley orgánica los **Títulos I a VIII**.

Las fuentes: [LO 3/2018 (BOE-A-2018-16673)](https://www.boe.es/buscar/act.php?id=BOE-A-2018-16673) y el [RGPD (DOUE-L-2016-80807)](https://www.boe.es/buscar/doc.php?id=DOUE-L-2016-80807). Es un tema que enlaza con el artículo 18.4 de la Constitución, que viste el artículo sobre [derechos fundamentales](/blog/derechos-fundamentales-libertades-publicas-guardia-civil).

## Cómo está organizada la LO 3/2018

| Título | Contenido | Artículos |
|---|---|---|
| I | Disposiciones generales | 1 a 3 |
| II | Principios de protección de datos | 4 a 10 |
| III | Derechos de las personas | 11 a 18 |
| IV | Disposiciones aplicables a tratamientos concretos | 19 a 27 |
| V | Responsable y encargado del tratamiento | 28 a 39 |
| VI | Transferencias internacionales de datos | 40 a 43 |
| VII | Autoridades de protección de datos | 44 a 62 |
| VIII | Procedimientos en caso de posible vulneración | 63 a 69 |

Quedan fuera del programa el Título IX (régimen sancionador) y el Título X (garantía de los derechos digitales), según el alcance publicado. Confírmalo en el [temario](/temario-guardia-civil).

## Los principios (art. 5 RGPD)

Los datos personales serán tratados de manera:

- lícita, leal y transparente;
- con **fines determinados, explícitos y legítimos** (limitación de la finalidad);
- **adecuados, pertinentes y limitados** a lo necesario (minimización);
- exactos y actualizados;
- conservados no más tiempo del necesario (limitación del plazo);
- con **seguridad adecuada** (integridad y confidencialidad).

Además, el responsable debe cumplir y **ser capaz de demostrarlo**: es la responsabilidad proactiva (art. 5.2).

## Cuándo es lícito tratar datos (art. 6 RGPD)

Hace falta al menos una de estas bases: consentimiento, ejecución de un contrato, obligación legal, intereses vitales, misión de interés público o ejercicio de poderes públicos, e interés legítimo (que no se aplica a las autoridades públicas en el ejercicio de sus funciones). La LO 3/2018 precisa en su artículo 8 que la obligación legal o la misión de interés público deben estar previstas en una norma de la Unión o con rango de ley.

## Derechos de las personas

El RGPD regula los de **acceso** (art. 15), **rectificación** (16), **supresión** (17), **limitación del tratamiento** (18), **portabilidad** (20) y **oposición** (21). La LO 3/2018 los desarrolla en sus artículos 12 a 18. El responsable debe informar sobre las actuaciones derivadas de la solicitud **en el plazo de un mes**, prorrogable otros dos meses (art. 12.3 RGPD).

## Datos que merecen una mención

- **Menores:** el tratamiento basado en el consentimiento solo es válido si el menor tiene **más de catorce años**; por debajo, hace falta el consentimiento de quien ejerza la patria potestad o tutela (art. 7 LO 3/2018).
- **Fallecidos:** las personas vinculadas por razones familiares o de hecho y los herederos pueden solicitar acceso, rectificación o supresión, salvo prohibición expresa del fallecido o de la ley (art. 3).
- **Confidencialidad:** deber del responsable, el encargado y todos los que intervengan (art. 5 LO).

## Responsable, encargado y delegado

El **delegado de protección de datos** debe designarse, entre otros casos, cuando el tratamiento lo lleve a cabo una autoridad u organismo público, excepto los tribunales en ejercicio de su función judicial (art. 37 RGPD). La LO 3/2018 lo desarrolla en los artículos 34 a 37.

## Brechas de seguridad y multas

- Ante una violación de la seguridad de los datos personales, el responsable debe notificarla a la autoridad de control **sin dilación indebida y, de ser posible, a más tardar 72 horas** después de tener constancia (art. 33 RGPD).
- Las multas administrativas pueden llegar a **10 millones de euros o el 2 % del volumen de negocio anual global** (infracciones del apartado 4) y a **20 millones o el 4 %** (apartado 5), según el artículo 83 RGPD.

## La autoridad de control

En España es la **Agencia Española de Protección de Datos** (Título VII de la LO 3/2018, arts. 44 y siguientes), cuyas funciones y potestades recoge el artículo 47.

## Una precisión útil para la profesión

El RGPD no se aplica al tratamiento por autoridades competentes con fines de prevención, investigación, detección o enjuiciamiento de infracciones penales (art. 2.2.d). Ese ámbito lo regula una norma propia, la Ley Orgánica 7/2021, que no figura en el alcance del tema que publica el programa, pero conviene que sepas que existe.

## Cómo estudiarlo

Una tabla con tres columnas, derecho, artículo y plazo, y otra con los títulos de la LO 3/2018 te da la estructura. Practica después con tests propios para fijar los números. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te acompaña con el temario completo.

## Preguntas frecuentes

### ¿Qué diferencia hay entre el RGPD y la LOPDGDD?

El RGPD es un reglamento europeo directamente aplicable; la LOPDGDD lo adapta al ordenamiento español, lo completa y añade los derechos digitales.

### ¿A partir de qué edad puede un menor consentir el tratamiento de sus datos?

A partir de los catorce años (art. 7 LO 3/2018), salvo que la ley exija la asistencia de quien ejerza la patria potestad o tutela.

### ¿En cuánto tiempo hay que notificar una brecha de seguridad?

Sin dilación indebida y, de ser posible, en un máximo de 72 horas desde que se tiene constancia.

### ¿Entra en el programa todo el texto de la LO 3/2018?

No: según el alcance publicado, los Títulos I a VIII.',
   NULL, NULL, 'publicado', '2026-12-19T06:51:00.000Z', 'acceso-guardia-civil',
   ARRAY['protección de datos', 'RGPD', 'LOPDGDD', 'derechos', 'temario']::text[], '{"title":"Protección de datos en la oposición: RGPD y LO 3/2018","description":"Guía del tema de protección de datos: RGPD y LO 3/2018, principios, derechos de las personas, delegado, brechas de seguridad, multas y títulos del programa."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('que-llevar-al-examen-de-la-guardia-civil-y-que-esta-prohibido', 'articulo', 'Qué llevar al examen de la Guardia Civil y qué está prohibido', 'Bolígrafo negro y documento de identidad sí; móviles, relojes o gafas inteligentes, diccionarios y calculadoras no. Lo que dice la convocatoria de 2026 y qué pasa si lo incumples.', 'La respuesta corta: **lleva un bolígrafo de tinta negra y tu documento de identidad, y deja fuera móviles, relojes o gafas inteligentes, diccionarios, libros, apuntes y calculadoras**. Incumplirlo no es una falta menor: la convocatoria prevé la exclusión.

Todo lo que sigue sale de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Si cambia en tu convocatoria, manda la que esté vigente.

## Lo que debes llevar

### Bolígrafo de tinta negra
La base 6.1.1 lo dice expresamente para las pruebas de ortografía, gramática, conocimientos generales e inglés: «irán provistos de bolígrafo de tinta de color negro». Lleva **más de uno**: la convocatoria no habla de repuestos, pero un bolígrafo que falla no tiene arreglo en pleno examen.

### Documento de identidad
La base 6.5 permite que el Tribunal te pida acreditar tu identidad en cualquier momento, para lo que debes ir provisto del documento nacional de identidad o de otro documento legal que lo sustituya. **No acreditarla supone la exclusión del proceso selectivo.** Revisa su caducidad con tiempo.

### Atuendo deportivo y certificado médico (solo pruebas físicas)
Para las pruebas físicas se exige atuendo deportivo adecuado y el certificado médico oficial expedido en los 20 días anteriores. Está explicado en [certificado médico de las pruebas físicas](/blog/certificado-medico-pruebas-fisicas-guardia-civil).

## Lo que está prohibido

La base 5.3 es clara:

- Con carácter general, **no se permite el uso de diccionarios, libros, apuntes, calculadoras ni cualquier otra ayuda**, salvo que lo determine el Tribunal de Selección.
- Está **prohibida la entrada** en las aulas y salas de examen, y en las de entrevistas personales, con **teléfonos móviles, relojes o gafas inteligentes** o con cualquier dispositivo que permita grabar, reproducir, transmitir o recibir datos, imágenes o sonidos.

Fíjate en el alcance: no se limita al uso. La prohibición es de **entrada** con esos dispositivos, y vale también para la entrevista personal. Mejor no llevarlos y no depender de la interpretación de nadie.

### ¿Y un reloj normal?
El texto prohíbe los «relojes o gafas inteligentes» y cualquier dispositivo con capacidad de grabar o transmitir. La convocatoria no detalla qué relojes convencionales se admiten ni si habrá reloj en el aula; esto lo concreta el Tribunal, así que no lo des por supuesto. Si necesitas controlar el tiempo, atiende a las indicaciones del Tribunal el día del examen, y entrena con la estructura real de [la prueba de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Qué ocurre si lo incumples

La base 5.3 es tajante: el incumplimiento de estas normas lleva consigo **la exclusión del aspirante del proceso de selección y la pérdida de los derechos de examen**.

## Otra norma que conviene saber: único llamamiento

La base 6.2 establece que se te convoca a cada prueba en **único llamamiento**. No presentarse en el momento en que el Presidente del Tribunal declara el inicio de la prueba o del turno supone la exclusión, sea cual sea la causa, salvo las excepciones previstas en la propia base. Llega con margen y con todo preparado la noche anterior.

## Lista rápida para la víspera

1. DNI (u otro documento legal que lo sustituya) en vigor.
2. Dos o más bolígrafos de tinta negra.
3. Convocatoria y lugar, fecha y hora del llamamiento anotados.
4. Móvil y reloj inteligente guardados en casa o en el coche.
5. Ropa cómoda y llegar con tiempo.

Si es tu primer examen, [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) te da el contexto, y el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) de ProLince incluye simulacros para ensayar las condiciones reales.

## Preguntas frecuentes

### ¿Puedo llevar el móvil apagado?
La convocatoria prohíbe la entrada con teléfonos móviles a las aulas y salas de examen. Lo más seguro es no llevarlo.

### ¿Vale un bolígrafo azul?
La convocatoria pide bolígrafo de tinta de color negro para las pruebas escritas. Usa negro.

### ¿Qué pasa si se me olvida el DNI?
La base 6.5 admite el DNI «o cualquier otro documento legal que lo sustituya». Sin acreditar la identidad, la consecuencia es la exclusión.

### ¿Se aplican las mismas normas en la entrevista personal?
La prohibición de entrar con móviles, relojes o gafas inteligentes y dispositivos de grabación o transmisión menciona expresamente las salas de entrevistas personales.',
   NULL, NULL, 'publicado', '2027-01-10T06:05:00.000Z', 'acceso-guardia-civil',
   ARRAY['examen', 'normas del examen', 'material permitido', 'convocatoria']::text[], '{"title":"Qué llevar al examen de la Guardia Civil y prohibido","description":"Material permitido y prohibido en el examen de la Guardia Civil según la convocatoria de 2026: bolígrafo negro, DNI, móviles, relojes y gafas inteligentes."}'::jsonb, '{}'::jsonb)
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
  ('recursos-oficiales-gratuitos-para-preparar-la-guardia-civil', 'articulo', 'Recursos oficiales gratuitos para preparar la Guardia Civil', 'Convocatoria, temario oficial, cuestionarios de exámenes reales y modelos de certificados: lo que la Guardia Civil y el BOE publican gratis y dónde encontrarlo. Solo lo que existe y hemos podido comprobar.', 'Antes de pagar nada, conviene saber qué te da gratis la propia Administración. La respuesta corta: **la convocatoria, el temario oficial, cuestionarios de exámenes reales y los modelos de documentos**. Lo que no publica es material de estudio ya explicado. Esto es lo que hemos comprobado que existe.

## 1. La convocatoria, en el BOE

Es el documento que manda. La de 2026 es la Resolución 160/38243/2026, publicada en el BOE del 8 de mayo: [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). Contiene los requisitos, el desarrollo de las pruebas, los baremos de las pruebas físicas, el cuadro médico y los modelos de certificados. Si dudas de algo, la respuesta está ahí. Te explicamos sus fechas y plazas en [convocatoria Guardia Civil 2026](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## 2. El temario oficial

La Guardia Civil publica en PDF el [temario de las convocatorias de ingreso](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2024/TEMARIO_INGRESO_GC_ACTUALIZADO_2024.pdf), con cada tema dividido en bloques y títulos de cada norma. Es el documento más útil para saber **qué normas y qué partes de cada una entran**, y no estudiar de más ni de menos.

La convocatoria de 2026 cita además la Resolución de 3 de octubre de 2022 que modificó el temario. Antes de fiarte de un PDF, comprueba que coincide con el que cita la convocatoria vigente.

Importante: el temario oficial es un **índice de normas**, no son apuntes. Los textos de las leyes los tienes gratis en el [BOE](https://www.boe.es), en su versión consolidada.

## 3. Cuestionarios de exámenes anteriores

La Guardia Civil publica en su web los cuestionarios de examen de la prueba de conocimientos. Hemos comprobado que están disponibles, por ejemplo:

- [2026, cuestionario tipo A](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2026/Procesos_Selectivos_2026/INGRESO-GC-2026-TIPO-A.pdf) y [tipo B](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2026/Procesos_Selectivos_2026/INGRESO-GC-2026-TIPO-B.pdf).
- [2022, cuestionario 1A](https://web.guardiacivil.es/export/sites/guardiaCivil/documentos/pdfs/2022/IngresoGC2022/INGRESO_GC_2022_1A.PDF) (y los equivalentes 1B, 2A y 2B de esa convocatoria).

No hemos podido confirmar que haya publicados todos los años, ni que la web incluya una plantilla oficial de respuestas. Lo ampliamos en exámenes oficiales anteriores.

## 4. Modelos de documentos

La convocatoria incluye como apéndices los modelos de certificado médico para las pruebas físicas (apéndices III y IV). Los tienes explicados en el artículo del [certificado médico de las pruebas físicas](/blog/certificado-medico-pruebas-fisicas-guardia-civil).

## 5. El portal de empleo público de Interior

El Ministerio del Interior mantiene una página de [procesos selectivos de la Escala de Cabos y Guardias](https://www.interior.gob.es/opencms/es/servicios-al-ciudadano/empleo-publico/procesos-selectivos/escala-de-cabos-y-guardias-de-la-guardia-civil/), donde se anuncian las convocatorias y los trámites del proceso. Es la fuente a la que acudir para novedades, listas y comunicados del Tribunal.

## Cómo combinarlos en una semana de estudio

Un uso razonable: el lunes, abre el temario oficial y marca qué normas toca estudiar; durante la semana, trabaja esas normas con el texto consolidado del BOE; y el fin de semana, resuelve un cuestionario real o la parte que corresponda al tema visto. Así los tres recursos se refuerzan, y la convocatoria te sirve de árbitro para dudas de plazos, requisitos y pruebas.

## Qué no encontrarás gratis (y qué hacer)

No hay temario explicado ni baterías de psicotécnicos oficiales. Para eso necesitas material propio, de una academia o elaborado por ti. Lo gratuito oficial sirve para **marcar el terreno**: qué se estudia, cómo es una prueba real y qué documentos te pedirán. Si estás empezando, lee [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero).

Si prefieres tener el temario ya trabajado y con tests, existe el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) de ProLince. Pero con los cinco recursos de arriba ya tienes una base seria sin gastar un euro.

## Preguntas frecuentes

### ¿Dónde se publica la convocatoria de la Guardia Civil?
En el BOE, y se anuncia también en la web de la Guardia Civil y en la del Ministerio del Interior. La de 2026 es la BOE-A-2026-9982.

### ¿El temario oficial incluye los apuntes?
No. Es la relación de normas y partes de cada una que entran en la oposición. El texto de las leyes está en el BOE.

### ¿Puedo practicar con exámenes reales gratis?
Sí, con los cuestionarios que la Guardia Civil publica en su web. Comprueba en la propia web qué años están disponibles.

### ¿Basta con los recursos gratuitos para aprobar?
Pueden darte una base, pero no sustituyen al estudio ni garantizan nada. Lo que ves aquí es material de referencia, no un método.',
   NULL, NULL, 'publicado', '2027-01-06T06:57:00.000Z', 'acceso-guardia-civil',
   ARRAY['recursos gratuitos', 'convocatoria', 'temario oficial', 'exámenes oficiales']::text[], '{"title":"Recursos oficiales gratis Guardia Civil: dónde están","description":"Qué publica gratis la Guardia Civil para opositores: convocatoria en el BOE, temario oficial, cuestionarios de examen y modelos. Con enlaces directos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('rescate-de-montana-en-la-guardia-civil-requisitos-y-formacion', 'articulo', 'Rescate de montaña en la Guardia Civil: funciones, formación y cómo se accede', 'El Servicio de Montaña y sus GREIM rescatan, investigan accidentes y vigilan zonas de difícil acceso. Qué hacen, dónde está su centro de formación y qué dice la normativa sobre cómo se accede a la especialidad, sin cifras inventadas.', 'El rescate de un montañero en los Pirineos o de una persona atrapada en una cueva suele llevar detrás a un guardia civil del Servicio de Montaña. **Los GREIM son las unidades de ese servicio, y la especialidad de Montaña tiene dos modalidades reguladas: especialista e instructor.** Aquí explicamos qué hacen y qué se puede afirmar con rigor sobre cómo se accede.

Un aviso previo: el título habla de «requisitos», pero los requisitos concretos de cada curso (pruebas, plazas, duración) los fija la convocatoria vigente y no vamos a inventarlos. Contamos solo lo comprobable.

## Qué hace el Servicio de Montaña

Según la web oficial de la Guardia Civil, los especialistas ejercen las funciones del Cuerpo en zonas de montaña y de difícil acceso. En concreto:

- Rescatar y auxiliar a personas.
- Investigar accidentes.
- Velar por la conservación de la naturaleza.
- Garantizar la seguridad ciudadana en instalaciones deportivas de montaña, estaciones de esquí y competiciones deportivas.
- Colaborar en la prevención de accidentes y en la promoción de la seguridad en montaña.

La norma de estructura del Cuerpo ([Orden PRE/422/2013, BOE-A-2013-2906](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906)) lo define como el órgano para las funciones en zonas de montaña o en otras que, por su dificultad orográfica o climatológica, requieran una especial preparación física y técnica. Depende de la Jefatura de Unidades Especiales y de Reserva.

La web añade que el servicio se adaptó con el tiempo a nuevas necesidades: barrancos, cavidades subterráneas y espeleosocorro, y rescate en medio acuático. Y que, por la dificultad del terreno, los rescates se hacen con frecuencia junto al Servicio Aéreo.

## Un poco de historia

La propia web recoge que en 1967 se crearon las Unidades de Esquiadores-Escaladores, y que en 1981 se reorganizó el servicio con los actuales grupos GREIM. Fíjate en que la web usa dos denominaciones («Rescate Especial de Intervención en Montaña» y «Rescate e Intervención en Montaña»): es la misma unidad.

## Cómo se organiza

- **Órgano central, en Jaca (Huesca):** incluye el Área de Instrucción y Doctrina, de la que depende la Unidad Especial de Montaña, y el Centro de Adiestramientos Específicos de Montaña (CAEM), responsable de la formación del personal de montaña.
- **Organización periférica:** grupos GREIM repartidos en áreas que corresponden a uno o varios macizos montañosos. La web enumera áreas como Jaca, Cangas de Onís, Granada o Navacerrada, cada una con sus grupos.

## Qué dice la normativa sobre el acceso

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) enumera la especialidad **Montaña (MT)** con dos modalidades: **especialista en montaña** e **instructor de montaña**. Y fija la regla general de todas las especialidades: el requisito fundamental es acreditar la cualificación específica y ocupar un puesto orgánico que la requiera. Además, permite condicionar el acceso a estos puestos por escala, empleo, edad, condiciones psicofísicas, titulaciones previas o nivel de idiomas.

El Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)) añade condiciones generales para los cursos de especialización, entre ellas:

- Aptitud psicofísica y técnica y, en su caso, límites de edad o de altura.
- Titulaciones, niveles de idiomas o habilitaciones.
- No tener antecedentes penales ni sanciones graves o muy graves anotadas y sin cancelar en la hoja de servicios.

Y el Reglamento de destinos ([Real Decreto 470/2019, BOE-A-2019-11398](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398)) establece que el periodo de servidumbre ligado a una titulación (tiempo que hay que permanecer en puestos que la usan) no puede superar los cinco años.

## Lo que no podemos contarte

No podemos decirte qué pruebas físicas se exigen, cuántas plazas se convocan, qué experiencia previa se pide ni cuánto dura el curso, porque **no hemos podido verificarlo en una fuente oficial vigente**. Eso se mira en la convocatoria de cada curso. Según el Reglamento, la selección de asistentes se publica con carácter general en el Boletín Oficial de la Guardia Civil.

## Qué puedes hacer ya como opositor

- **Cuida tu forma física** con un plan realista; empieza por las [marcas de las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).
- **Conoce la montaña con criterio**, con formación de federaciones y siempre de forma segura. Ante dudas de entrenamiento o salud, consulta a profesionales.
- **Mira el panorama de destinos** en [especialidades y destinos](/blog/destinos-especialidades-guardia-civil).

Y antes de todo eso, aprobar. En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te acompañamos hasta ahí.

## Preguntas frecuentes

### ¿Qué es el GREIM?

Es el grupo de rescate e intervención en montaña: la unidad del Servicio de Montaña de la Guardia Civil que actúa en zonas de montaña y de difícil acceso.

### ¿Puedo ir a Montaña al salir de la academia?

La normativa exige la cualificación específica y un puesto que la requiera. La vía concreta depende de la convocatoria vigente.

### ¿Dónde se forman los especialistas?

La web oficial indica que el CAEM, en Jaca, es el responsable de la formación del personal de montaña de la Guardia Civil.

### ¿Qué pruebas hay que pasar?

Las fija cada convocatoria. No hay cifras generales que podamos darte con seguridad.',
   NULL, NULL, 'publicado', '2027-01-28T06:11:00.000Z', 'acceso-guardia-civil',
   ARRAY['montaña', 'greim', 'especialidades', 'rescate']::text[], '{"title":"Rescate de montaña Guardia Civil: GREIM y acceso","description":"Rescate de montaña en la Guardia Civil: qué hace el GREIM, dónde se forma el personal y qué dice la normativa sobre el acceso a la especialidad de montaña."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('responsabilidad-penal-de-los-menores-lo-5-2000-lo-que-mas', 'articulo', 'Responsabilidad penal de los menores (LO 5/2000): claves del tema', 'La LO 5/2000 se aplica a mayores de catorce y menores de dieciocho años. Edad, jueces, medidas, plazos de detención y reglas del procedimiento: los apartados que conviene entender bien del tema 20.', 'La [Ley Orgánica 5/2000, de 12 de enero, reguladora de la responsabilidad penal de los menores](https://www.boe.es/buscar/act.php?id=BOE-A-2000-641) es el **tema 20** del programa y figura «completa» (consulta el [temario](/temario-guardia-civil)). Es una ley muy práctica para quien va a detener, custodiar y tomar declaración a menores.

La respuesta corta: se aplica a quienes tengan **más de catorce y menos de dieciocho años** al cometer el hecho; por debajo de catorce no hay responsabilidad penal con arreglo a esta ley, sino protección de menores.

## Ámbito: edad y jueces

- **Artículo 1**: se exige responsabilidad a las personas mayores de catorce años y menores de dieciocho por hechos tipificados como delitos en el Código Penal o leyes penales especiales. Gozan de todos los derechos de la Constitución y del ordenamiento, en particular de la LO 1/1996 y de la Convención sobre los Derechos del Niño.
- **Artículo 3**: si el autor es menor de catorce años, no se le exige responsabilidad con arreglo a esta ley; el Ministerio Fiscal remite testimonio a la entidad pública de protección de menores, que promoverá las medidas adecuadas.
- **Artículo 5.3**: las edades se refieren **al momento de la comisión de los hechos**; cumplir la edad después no cambia la competencia.
- **Artículo 2**: competen los Jueces de Menores. Para los delitos de los artículos 571 a 580 del Código Penal, el Juzgado Central de Menores de la Audiencia Nacional.
- **Artículo 6**: el Ministerio Fiscal dirige la investigación y ordena a la policía judicial las actuaciones necesarias.

## La detención de menores (art. 17)

Es probablemente el artículo más relevante para el trabajo policial:

1. Se practica «en la forma que menos perjudique» al menor, informándole de forma inmediata y en lenguaje claro de los hechos, razones y derechos, y notificando la detención y el lugar de custodia a sus representantes legales y al Ministerio Fiscal.
2. Toda declaración se hará **en presencia de su letrado** y de quienes ejerzan la patria potestad, tutela o guarda, salvo que las circunstancias aconsejen lo contrario; y con entrevista reservada previa con su abogado.
3. Debe custodiarse en **dependencias separadas** de las de los mayores.
4. La detención policial no durará más de lo estrictamente necesario y, en todo caso, **dentro de 24 horas** el menor debe ser puesto en libertad o a disposición del Fiscal.
5. El Fiscal resolverá en **48 horas desde la detención** sobre la libertad, el desistimiento o la incoación del expediente.

Compáralo con lo que dice el artículo sobre [detención y habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre).

## Las medidas (art. 7)

El juez puede imponer, ordenadas según la restricción de derechos, entre otras: internamiento en régimen cerrado, semiabierto o abierto; internamiento terapéutico; tratamiento ambulatorio; asistencia a centro de día; permanencia de fin de semana; **libertad vigilada**; prohibición de aproximarse o comunicarse con la víctima; convivencia con otra persona o grupo educativo; **prestaciones en beneficio de la comunidad**; tareas socio-educativas; amonestación; privación del permiso de conducir o de licencias; e inhabilitación absoluta.

Para elegirlas se atiende «de modo flexible» no solo a los hechos, sino especialmente a la **edad, circunstancias familiares y sociales, personalidad e interés del menor**. La duración general no puede exceder de **dos años** (art. 9.3), con reglas especiales en el artículo 10 que debes leer en el texto vigente.

## Estructura de la ley

| Título | Contenido |
|---|---|
| Preliminar (art. 1) | Declaración general |
| I (arts. 2 a 6) | Ámbito, víctimas, bases de la responsabilidad |
| II (arts. 7 a 15) | Medidas: definición, duración, mayoría de edad, prescripción |
| III (arts. 16 a 30) | Instrucción del procedimiento |
| IV (arts. 31 a 37) | Audiencia |
| V (arts. 38 a 40) | Sentencia |
| VI (arts. 41 y 42) | Recursos |
| VII (arts. 43 a 60) | Ejecución de las medidas |
| VIII (arts. 61 a 64) | Responsabilidad civil |

## Cómo estudiarla

Aprende la edad y el art. 17 (plazos de 24 y 48 horas) casi literalmente, haz una tabla de medidas y esquematiza las fases del procedimiento. Relaciónala con los [conceptos de delito y penas](/blog/derecho-penal-para-guardia-civil-delito-penas-y-grados) y con la [violencia de género](/blog/violencia-de-genero-lo-1-2004-claves-para-el-examen), pues el art. 7.5 impone programas de educación en igualdad en ciertos delitos. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este tema.

## Preguntas frecuentes

### ¿Desde qué edad se responde penalmente según esta ley?

Desde los catorce años cumplidos y hasta los dieciocho (art. 1).

### ¿Qué ocurre con un menor de catorce años?

No se le aplica la LO 5/2000; se aplican las normas de protección de menores y el Fiscal informa a la entidad pública de protección (art. 3).

### ¿Cuánto puede durar una detención policial de un menor?

Lo estrictamente necesario y, como máximo, 24 horas antes de ponerlo en libertad o a disposición del Fiscal (art. 17.4).

### ¿Qué ley regula esta materia hoy?

Es la LO 5/2000, modificada varias veces (la última actualización del texto consolidado que hemos consultado es de enero de 2025). Trabaja siempre con la versión vigente.',
   NULL, NULL, 'publicado', '2026-12-28T06:24:00.000Z', 'acceso-guardia-civil',
   ARRAY['lo 5/2000', 'menores', 'temario', 'detención']::text[], '{"title":"Responsabilidad penal de menores LO 5/2000: resumen","description":"Resumen de la LO 5/2000 para opositores: ámbito de aplicación, menores de 14 años, medidas, detención de menores, plazos y estructura de la ley."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('seguridad-ciudadana-y-seguridad-privada-que-cae-del-temario', 'articulo', 'Seguridad ciudadana y seguridad privada: qué entra en el temario', 'La Ley Orgánica 4/2015 de seguridad ciudadana y la Ley 5/2014 de seguridad privada, ordenadas por capítulos y títulos, con los artículos que más se estudian: DNI, identificación en seis horas, registros, sanciones, actividades y personal de seguridad privada.', 'Este tema reúne dos leyes que usarás a diario: la Ley Orgánica 4/2015, de protección de la seguridad ciudadana ([BOE-A-2015-3442](https://www.boe.es/buscar/act.php?id=BOE-A-2015-3442)), y la Ley 5/2014, de Seguridad Privada ([BOE-A-2014-3649](https://www.boe.es/buscar/act.php?id=BOE-A-2014-3649)). **Respuesta corta:** el programa publicado recoge los Capítulos I a V de la LO 4/2015 y el Título Preliminar y los Títulos I a V de la Ley 5/2014.

## LO 4/2015: estructura

| Capítulo | Contenido | Artículos |
|---|---|---|
| I | Disposiciones generales | 1 a 7 |
| II | Documentación e identificación personal | 8 a 13 |
| III | Actuaciones para el mantenimiento y restablecimiento de la seguridad ciudadana | 14 a 24 |
| IV | Potestades especiales de policía administrativa de seguridad | 25 a 29 |
| V | Régimen sancionador | 30 y siguientes |

El artículo 1 declara que la seguridad ciudadana es un requisito indispensable para el pleno ejercicio de los derechos fundamentales y su salvaguarda es función del Estado.

## Lo más estudiado de la LO 4/2015

- **DNI (art. 9):** es obligatorio a partir de los **catorce años**, personal e intransferible. Su titular debe exhibirlo cuando lo requiera la autoridad o sus agentes, y comunicar su sustracción o extravío.
- **Identificación (art. 16):** los agentes pueden requerirla cuando haya indicios de participación en una infracción o cuando sea razonablemente necesaria para prevenir un delito. Si no es posible por ningún medio o la persona se niega, pueden requerir que acompañe a las dependencias policiales más próximas, a los solos efectos de identificación y por el tiempo estrictamente necesario, **que en ningún caso podrá superar las seis horas**. Se lleva un libro-registro y se entrega a la persona un volante acreditativo del tiempo de permanencia.
- **Restricción del tránsito y controles (art. 17):** limitar o restringir la circulación en vías públicas por el tiempo imprescindible, y establecer controles para prevenir delitos de especial gravedad.
- **Registros corporales externos (art. 20):** con indicios racionales; por un agente del mismo sexo salvo urgencia por riesgo grave e inminente; si hay que dejar partes del cuerpo a la vista, en un lugar reservado.
- Otros artículos del Capítulo III: entrada y registro en domicilio (15), videocámaras (22) y reuniones y manifestaciones (23).

## Sanciones de la LO 4/2015

| Infracción | Multa (art. 39) | Prescripción de la infracción (art. 38) | Prescripción de la sanción (art. 40) |
|---|---|---|---|
| Leve | 100 a 600 euros | 6 meses | 1 año |
| Grave | 601 a 30.000 euros | 1 año | 2 años |
| Muy grave | 30.001 a 600.000 euros | 2 años | 3 años |

Los artículos 35 a 37 enumeran las infracciones de cada tipo.

## Ley 5/2014: estructura

| Título | Contenido |
|---|---|
| Preliminar | Disposiciones generales: comunes (Cap. I) y competencias de la Administración General del Estado y de las comunidades autónomas (Cap. II) |
| I | Coordinación |
| II | Empresas de seguridad privada y despachos de detectives privados |
| III | Personal de seguridad privada |
| IV | Servicios y medidas de seguridad |
| V | Control administrativo |

El Título VI (régimen sancionador) no figura en el alcance publicado.

## Lo más estudiado de la Ley 5/2014

- **Fines (art. 4):** satisfacer las necesidades legítimas de seguridad, contribuir a garantizar la seguridad pública y **complementar el monopolio de la seguridad que corresponde al Estado**.
- **Actividades (art. 5):** ocho: vigilancia y protección de bienes y personas; acompañamiento y protección de personas; depósito, custodia y recuento de valores; depósito de explosivos y armas; transporte y distribución de esos objetos; instalación y mantenimiento de sistemas de seguridad; centrales de alarma; e investigación privada. Las siete primeras solo las prestan empresas de seguridad; la investigación privada, los despachos de detectives.
- **Principios (art. 8):** colaboración con las Fuerzas y Cuerpos de Seguridad. No pueden interferir en reuniones y manifestaciones ni en conflictos políticos o laborales, ni controlar opiniones políticas, sindicales o religiosas.
- **Personal (art. 26):** vigilantes de seguridad y de explosivos, escoltas privados, guardas rurales (y guardas de caza y guardapescas marítimos), jefes de seguridad, directores de seguridad y detectives privados.
- **Protección jurídica (art. 31):** las agresiones y desobediencias al personal de seguridad privada, debidamente identificado, que actúe en cooperación y bajo el mando de las Fuerzas y Cuerpos de Seguridad se consideran cometidas contra agentes de la autoridad.
- **Principios de actuación (art. 30):** legalidad, integridad, dignidad, corrección en el trato, congruencia, proporcionalidad, reserva profesional y colaboración con las Fuerzas y Cuerpos de Seguridad, entre otros.

## Cómo estudiarlo

Dos tablas, una por ley, con artículo y dato clave; y una tercera con los plazos y cifras (14 años, 6 horas, 100-600 euros...). Para el marco constitucional, repasa los [derechos fundamentales](/blog/derechos-fundamentales-libertades-publicas-guardia-civil). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) desarrolla el temario completo.

## Preguntas frecuentes

### ¿Cuánto tiempo puede retener la policía a quien se niega a identificarse?

El tiempo estrictamente necesario, sin superar nunca las seis horas (art. 16.2 LO 4/2015).

### ¿Desde qué edad es obligatorio el DNI?

Desde los catorce años (art. 9).

### ¿Pueden los vigilantes privados investigar delitos?

La investigación privada la realizan los detectives privados y solo sobre delitos perseguibles a instancia de parte (art. 5.1.h Ley 5/2014).

### ¿Entra todo el texto de ambas leyes?

No: solo los capítulos y títulos que indica el programa publicado.',
   NULL, NULL, 'publicado', '2026-12-21T06:25:00.000Z', 'acceso-guardia-civil',
   ARRAY['seguridad ciudadana', 'seguridad privada', 'LO 4/2015', 'Ley 5/2014', 'temario']::text[], '{"title":"Seguridad ciudadana y privada: LO 4/2015 y Ley 5/2014","description":"Resumen de la LO 4/2015 de seguridad ciudadana y la Ley 5/2014 de seguridad privada para la oposición: identificación, registros, sanciones y personal."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('seprona-la-especialidad-de-proteccion-de-la-naturaleza', 'articulo', 'SEPRONA: la especialidad de protección de la naturaleza', 'El SEPRONA es la policía judicial medioambiental de la Guardia Civil. Qué hace, cómo se organiza (UCOMA, equipos, patrullas, parques nacionales) y qué sabemos del acceso según la Orden PCM/509/2020 y la web oficial.', 'Respuesta corta: el SEPRONA (Servicio de Protección de la Naturaleza) es la especialidad de la Guardia Civil que vela por la conservación de la naturaleza y el medio ambiente, y actúa como **policía judicial específica en materia medioambiental**. No se accede a él directamente desde la oposición: exige una cualificación específica y un puesto que la requiera. Los requisitos concretos de cada curso no están en las normas generales, así que no los invento.

## Qué es y qué hace

Según la [web oficial](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/Medio_ambiente/), el SEPRONA se creó en 1988 y su misión es velar por el cumplimiento de las disposiciones que tiendan a la conservación de la naturaleza y del medio ambiente, de los espacios protegidos, los recursos hídricos y la riqueza cinegética, piscícola y forestal. Entre sus funciones están:

- Protección del suelo, el agua y la atmósfera, la sanidad animal y la conservación de flora y fauna.
- Lucha contra los vertidos, el comercio ilegal de especies protegidas, la caza y la pesca irregulares, el maltrato animal y los incendios.
- Protección de yacimientos arqueológicos y paleontológicos.
- Concienciación, prevención y vigilancia administrativa.
- Investigación de delitos como **policía judicial específica** en materia medioambiental.

La misma web recuerda que los antecedentes del servicio se remontan a la Cartilla del Guardia Civil de 1845.

## Cómo se organiza

- **Central:** la Unidad Central Operativa Medioambiental (UCOMA), que centraliza información, hace análisis criminal y apoya a las unidades territoriales.
- **Provincial:** oficinas técnicas, **equipos de protección de la naturaleza** (investigación) y **patrullas** (prevención y vigilancia). La web habla de más de 300 patrullas y más de 50 equipos de investigación.
- **Parques nacionales:** destacamentos específicos; la web cita 14 parques, entre ellos Doñana, Ordesa y Monte Perdido, Teide y Monfragüe.

Esas cifras son las que figuran en la web oficial en la fecha de consulta de este artículo y pueden cambiar. No hay en ella un dato de plantilla total, y no lo doy.

## Las tres modalidades

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) recoge la **Protección de la naturaleza (PRONA)** como la especialidad E17, con tres modalidades:

| Modalidad | Código |
|---|---|
| Dirección | PND |
| Equipos | PNE |
| Patrullas | PNP |

Coinciden con la estructura provincial que acabamos de ver: patrullas para prevención y vigilancia, equipos para investigación y dirección para la coordinación.

## Cómo se accede

La web oficial no describe cursos ni requisitos: solo enlaza a las vías generales de acceso a la Guardia Civil. El marco general es el de la Orden PCM/509/2020 (artículo 7), que también aplica a [Tráfico](/blog/agrupacion-de-trafico-que-hace-y-como-se-entra-guardia-civil):

1. **Acreditar la cualificación específica** de la especialidad o modalidad.
2. **Ocupar un puesto orgánico** que exija esa cualificación.
3. Y, según el puesto, cumplir condiciones como la escala, el empleo, la edad, las condiciones psicofísicas, titulaciones previas o un nivel de idiomas.

Las condiciones concretas se desarrollan en la regulación específica de la especialidad y en las convocatorias de los cursos. **No las he encontrado en una fuente oficial pública**, así que no doy años de servicio, pruebas ni plazas. Si te interesa, sigue las convocatorias oficiales cuando ingreses.

## Antes de soñar con el SEPRONA

- El primer destino no suele ser una especialidad: lo explicamos en [destinos y especialidades](/blog/destinos-especialidades-guardia-civil) y en [cómo se asignan los primeros destinos](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).
- Para llegar hasta ahí, primero hay que aprobar. Si estás empezando, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) organiza el temario. Y si tu duda es el cuerpo, tienes la comparativa de [Guardia Civil o Policía Nacional](/blog/guardia-civil-o-policia-nacional).

## Preguntas frecuentes

### ¿Qué significa SEPRONA?
Servicio de Protección de la Naturaleza. Se creó en 1988, según la web oficial de la Guardia Civil.

### ¿Se puede entrar directamente en el SEPRONA?
No hay un acceso directo desde la oposición: hace falta la cualificación específica y un puesto que la exija (Orden PCM/509/2020).

### ¿Qué modalidades tiene la especialidad?
Tres: dirección, equipos y patrullas.

### ¿Hace falta formación ambiental?
No lo he podido verificar. Las titulaciones o aptitudes previas pueden ser una condición del puesto, según la orden, pero se concretan en la regulación específica y en cada convocatoria.',
   NULL, NULL, 'publicado', '2027-01-26T06:37:00.000Z', 'acceso-guardia-civil',
   ARRAY['seprona', 'medio ambiente', 'especialidades', 'protección de la naturaleza']::text[], '{"title":"SEPRONA Guardia Civil: funciones y cómo acceder","description":"Qué es el SEPRONA de la Guardia Civil, qué funciones tiene, cómo se organiza y cómo se accede a la especialidad de protección de la naturaleza."}'::jsonb, '{}'::jsonb)
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
  ('servicio-cinologico-como-ser-guia-canino-en-la-guardia-civil', 'articulo', 'Servicio Cinológico: qué hace un guía canino de la Guardia Civil y cómo se accede', 'Seguridad y rescate, drogas, explosivos: los guías de perros se forman en un centro propio del Cuerpo. Qué dice la normativa sobre la especialidad cinológica, qué cursos existen y dónde consultar cómo acceder.', 'Pocas especialidades despiertan tanta simpatía como la de guía de perros. Pero detrás del binomio guía-perro hay una formación específica, un centro propio y una normativa. **El Servicio Cinológico y Remonta dirige técnicamente los servicios con perros del Cuerpo, y el Centro de Adiestramiento de Perros (CAPEDE) forma a los guías.**

En este artículo repasamos qué se puede comprobar en fuentes oficiales. Si aún no tienes claro cómo funcionan los destinos, empieza por [especialidades y destinos](/blog/destinos-especialidades-guardia-civil).

## El Servicio Cinológico y Remonta

La norma de estructura de la Guardia Civil ([Orden PRE/422/2013, BOE-A-2013-2906](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906)) lo define como el órgano especializado para la dirección técnica y ejecución de los servicios en los que participen unidades dotadas de perros, y para inspeccionar y evaluar las aptitudes técnicas de las unidades cinológicas. También le corresponde la gestión y apoyo al ganado y animales de utilidad para el servicio. Depende de la Jefatura de Unidades Especiales y de Reserva.

## El CAPEDE: donde se forman los guías

Según la web oficial, el CAPEDE es el centro de perfeccionamiento de referencia de la especialidad cinológica: selecciona y forma al personal que presta servicio como guía de perros en las unidades operativas y capacita a guías para tareas docentes. También instruye a personal de otras policías y a componentes de unidades especiales del propio Cuerpo que trabajan con perros. Se creó el 9 de octubre de 1951 como escuela y hoy depende técnica y funcionalmente del Servicio Cinológico y Remonta.

Los cursos que la web describe son tres:

| Curso | Para qué se adiestra al binomio |
|---|---|
| Seguridad y rescate (SYR) | Búsqueda y salvamento de personas desaparecidas, detección de personas ocultas, rastreo, protección de personas y control de masas. Incluye una subespecialidad de detección de restos biológicos. |
| Detectores de drogas | Búsqueda de estupefacientes en aeropuertos, puertos, mercancías, controles de carretera o registros. Con subespecialidades como cebos envenenados, indicios de fuego, papel moneda o tabaco. |
| Detectores de explosivos | Detección de explosivos, según la descripción de la propia web. |

Consulta el detalle actualizado en la [página del CAPEDE](https://web.guardiacivil.es/es/institucional/conocenos/centros_docentes/perros/).

## Qué dice la normativa de especialidades

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) incluye la especialidad **Cinológica (CIN)** con dos modalidades: **guía de perros** e **instructor de guías de perros**. Y recoge, para todas, las siguientes reglas:

- Hay que acreditar la **cualificación específica**.
- Hay que ocupar un **puesto orgánico** que la requiera.
- El acceso puede condicionarse por escala, empleo, edad, condiciones psicofísicas, titulaciones o idiomas.
- La cualificación puede exigir mantenimiento y renovación.

Además, el Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)) fija requisitos generales para optar a un curso de especialización. Entre ellos, aptitud psicofísica y técnica, límites de edad y altura cuando los haya, titulaciones, idiomas o habilitaciones, y carecer de antecedentes penales y de sanciones graves o muy graves anotadas y sin cancelar. La selección de asistentes se publica, con carácter general, en el Boletín Oficial de la Guardia Civil.

## Lo que no te podemos asegurar

No vamos a dar cifras de plazas, duración de los cursos ni pruebas concretas porque **no están publicadas en una fuente oficial que hayamos podido comprobar**, y cambian de una convocatoria a otra. Tampoco podemos confirmar cuántos años de servicio se necesitan antes de poder pedir el curso, ni si hay requisitos específicos de la modalidad de guía. Todo eso se lee en la convocatoria vigente.

Una advertencia práctica: la fama de la especialidad es grande, pero la norma habla de puestos orgánicos concretos que dependen de las necesidades del servicio. No es una «plaza» que se elija el primer día.

## Qué puedes hacer mientras tanto

- **Forma física general.** Empieza por las [marcas de las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).
- **Inglés.** Es útil en muchos destinos; aquí tienes la [prueba de inglés](/blog/ingles-oposicion-guardia-civil).
- **Experiencia con animales**, si la tienes, porque puede darte criterio. Pero ten en cuenta que la formación oficial se realiza ya dentro del Cuerpo.

Lo primero sigue siendo aprobar la oposición. En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos a prepararla.

## Preguntas frecuentes

### ¿Quién entrena a los perros de la Guardia Civil?

El adiestramiento se hace en el Servicio Cinológico y Remonta; el CAPEDE forma a los binomios guía-perro y a los instructores, según la web oficial.

### ¿Qué tipos de perros hay?

La web describe cursos de seguridad y rescate, detectores de drogas y detectores de explosivos, con varias subespecialidades.

### ¿Puedo elegir ser guía al ingresar?

No de forma automática: la especialidad exige cualificación específica y un puesto orgánico que la requiera. Mira siempre la convocatoria vigente.

### ¿Hay cursos para otros cuerpos?

Según la web, el CAPEDE también instruye a personal de otras policías y de unidades militares, además de a componentes de unidades especiales de la Guardia Civil.',
   NULL, NULL, 'publicado', '2027-01-30T06:45:00.000Z', 'acceso-guardia-civil',
   ARRAY['guía canino', 'servicio cinológico', 'especialidades', 'capede']::text[], '{"title":"Guía canino Guardia Civil: Servicio Cinológico y acceso","description":"Guía canino de la Guardia Civil: qué hace el Servicio Cinológico, qué cursos imparte el CAPEDE y qué dice la normativa sobre el acceso a la especialidad."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('servicio-maritimo-y-servicio-aereo-de-la-guardia-civil', 'articulo', 'Servicio Marítimo y Servicio Aéreo de la Guardia Civil', 'El Servicio Marítimo patrulla las aguas españolas y el Aéreo opera helicópteros, aviones y drones. Qué funciones tienen, cómo se estructuran y qué dice la normativa de especialidades sobre sus modalidades y su acceso.', 'Dos servicios de la Guardia Civil llevan su trabajo al mar y al aire: el Servicio Marítimo (SEMAR) y el Servicio Aéreo (SAER). Los dos son especialidades con sus propias modalidades, y en ambos hay puestos de especialista que exigen una cualificación concreta. **No se entra a ellos por oposición directa: se llega con formación específica y un puesto orgánico que la requiera.**

Te contamos lo verificable y señalamos dónde consultar lo demás. Para el contexto de los destinos, lee [especialidades y destinos](/blog/destinos-especialidades-guardia-civil). Y si te interesa la parte de buceo, la tienes en [GEAS](/blog/geas-asi-son-los-buceadores-de-la-guardia-civil).

## Servicio Marítimo

### Qué hace

La web oficial de la Guardia Civil recoge que el Servicio Marítimo se constituyó en 1991 mediante el Real Decreto 246/1991, que extendió al mar territorial las funciones que el Cuerpo ya ejercía en tierra. Su misión es ejercer las funciones policiales de carácter gubernativo, judicial, fiscal y administrativo en las aguas marítimas españolas hasta el límite exterior del mar territorial y, excepcionalmente, en aguas internacionales.

Entre sus cometidos fundamentales: policía judicial, resguardo fiscal y lucha contra el contrabando, control de fronteras y migración irregular, conservación de la naturaleza e inspección pesquera y de embarcaciones deportivas, misiones en el extranjero y colaboración con organismos como Salvamento Marítimo o la Armada.

La [Orden PRE/422/2013](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906) lo sitúa en la Jefatura Fiscal y de Fronteras y destaca la vigilancia marítima, la lucha contra el contrabando y el control de la inmigración irregular.

### Cómo se organiza

Según la web oficial, cuenta con una jefatura central en Madrid, una Unidad de Formación y Doctrina en Cádiz (que imparte los cursos de especialización), Grupos Marítimos que integran los buques oceánicos (en Las Palmas de Gran Canaria y en Cádiz), Servicios Marítimos Provinciales en cada provincia con litoral, y la Unidad de Actividades Subacuáticas.

## Servicio Aéreo

### Qué hace

Según la web oficial, desde la creación en 1973 de su Sección de Helicópteros, la Guardia Civil emplea medios aéreos en múltiples servicios: primero helicópteros, después aviones y, más recientemente, drones. El Servicio Aéreo organiza, coordina, mantiene y opera esos medios, además de asesorar técnicamente en materia aeronáutica y colaborar con las autoridades judiciales y con otras unidades.

La Orden PRE/422/2013 lo define como unidad especializada para la organización, coordinación y explotación de los medios aéreos del Cuerpo, y lo adscribe a la Jefatura de Unidades Especiales y de Reserva. Su colaboración con el Servicio de Montaña es habitual en rescates de zonas de difícil acceso.

### Cómo se organiza

Con un órgano central que incluye una Agrupación de Vuelo (helicópteros, aviones y drones), un Grupo de Material y un Centro de Adiestramiento y Estandarización Aérea, y una organización periférica con bases operativas en distintos puntos de España. La web enumera sus bases, así que mira allí el despliegue actualizado.

## Qué dice la normativa de especialidades

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) regula ambas como especialidades:

| Especialidad | Modalidades que enumera la orden |
|---|---|
| Marítima (MAR) | Patrón de embarcaciones; mecánico-marinero; mecánico de mantenimiento; capitán u oficial de puente de buque oceánico; jefe u oficial de máquinas de buque oceánico. |
| Aérea (AER) | Mecánico de avión; mecánico de helicóptero; mecánico de aeronaves; operador de sistemas; piloto de avión; piloto de helicóptero; oficial de mantenimiento. |

Como en el resto de especialidades, el requisito fundamental es acreditar la **cualificación específica** y ocupar un **puesto orgánico** que la requiera. El acceso a esos puestos puede condicionarse por escala, empleo, edad, condiciones psicofísicas, titulaciones previas o nivel de idiomas. En el [Reglamento de ordenación de la enseñanza](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764) se fijan requisitos generales para los cursos de especialización, y la selección de asistentes se publica, con carácter general, en el Boletín Oficial de la Guardia Civil.

## Lo que no podemos decirte

No sabemos, con fuente oficial verificada, qué titulaciones, licencias o pruebas exige cada modalidad hoy, cuántas plazas se convocan ni cuánto duran los cursos. Una modalidad como piloto o patrón puede requerir titulaciones concretas, pero **la convocatoria vigente es la única referencia fiable**. Desconfía de cifras sueltas.

## Qué puedes hacer ya

- **Cuida la natación**, imprescindible en la oposición: la [prueba de 50 metros](/blog/natacion-50-metros-guardia-civil) es tu punto de partida.
- **Idiomas y titulaciones:** el inglés ayuda ([prueba de inglés](/blog/ingles-oposicion-guardia-civil)) y algunas titulaciones náuticas o técnicas pueden ser útiles después, según la convocatoria.
- **Primero, aprobar.** En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos con ello.

## Preguntas frecuentes

### ¿El Servicio Marítimo patrulla solo la costa?

Según la web oficial, ejerce sus funciones en las aguas marítimas españolas hasta el límite exterior del mar territorial y, excepcionalmente, en aguas internacionales.

### ¿Los pilotos de la Guardia Civil son guardias civiles?

La orden de especialidades incluye modalidades de piloto de avión y de helicóptero dentro de la especialidad Aérea. Los requisitos de cada una los fija la convocatoria.

### ¿Puedo ir al Servicio Aéreo recién salido de Baeza?

Hace falta cualificación específica y un puesto que la requiera. Cómo se concreta depende de la convocatoria vigente.

### ¿Dónde se forman?

La web oficial indica que el Servicio Marítimo tiene en Cádiz su unidad de formación y doctrina, y el Aéreo un Centro de Adiestramiento y Estandarización Aérea.',
   NULL, NULL, 'publicado', '2027-02-01T06:19:00.000Z', 'acceso-guardia-civil',
   ARRAY['servicio marítimo', 'servicio aéreo', 'especialidades', 'destinos']::text[], '{"title":"Servicio Marítimo y Aéreo Guardia Civil: funciones","description":"Servicio Marítimo y Servicio Aéreo de la Guardia Civil: funciones, estructura, modalidades de especialidad y dónde consultar cómo se accede a cada una."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('si-suspendes-como-replantear-la-siguiente-convocatoria', 'articulo', 'Si suspendes: cómo replantear la siguiente convocatoria', 'No entrar a la primera es frecuente. Cómo analizar qué falló (mínimo, nota o pruebas posteriores), qué datos oficiales de notas de corte debes mirar y cómo reorganizar la preparación para la siguiente convocatoria.', 'Si acabas de recibir una mala noticia, primero lo primero: **no entrar no te inhabilita**. Las bases de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) no limitan el número de veces que puedes presentarte; el límite que sí fijan es la edad (no cumplir 41 años en el año de la convocatoria, base 2.1.7). Consulta siempre las bases de la convocatoria vigente.

La respuesta corta: **averigua en qué fase y por qué quedaste fuera, compara tu puntuación con las notas de corte y reorganiza la preparación alrededor de ese dato, no de la sensación**.

## Paso 1: descubre dónde se quedó el problema

Hay tres casos muy distintos:

| Qué pasó | Qué significa | Qué cambiar |
|---|---|---|
| No superaste un mínimo (conocimientos 50/100, inglés 8/20, psicotécnico 12/30) | Fuera por una prueba concreta | Reforzar esa prueba |
| Superaste los mínimos pero tu nota total no llegó | Faltaron puntos en conjunto | Subir nota global y revisar el concurso |
| Superaste la fase de oposición pero no pasaste una prueba posterior (física o médica) | Fallo en pruebas apto/no apto | Entrenar o consultar el cuadro médico |

Los mínimos están en las bases 7.6 a 7.8. Ortografía y gramática excluyen con 6 errores o más en cada una. Si no sabes tu puntuación exacta, pide o consulta las listas publicadas con tu resultado.

## Paso 2: compara con las notas de corte reales

La nota de corte es la puntuación del último aspirante propuesto del cupo libre, sobre 195 (oposición, hasta 150, más concurso, hasta 45). Los datos calculados a partir de las resoluciones del BOE:

| Año | Nota de corte (cupo libre) |
|---|---|
| 2026 | 90,61 |
| 2025 | 95,80 |
| 2024 | 103,08 |
| 2023 | 95,75 |
| 2022 | 110,58 |

Varía de un año a otro, y **no se puede predecir** la siguiente. Qué es y por qué cambia está en [nota de corte de la Guardia Civil](/blog/nota-de-corte-guardia-civil). Úsala para ver tu distancia y no como una promesa.

## Paso 3: haz un diagnóstico sin dramatizar

Pregúntate con datos:

- ¿Cuántos simulacros hice y con qué resultados?
- ¿Mis fallos eran de **temario**, de **lectura** o de **gestión del tiempo**? Mira [cómo leer un enunciado tipo test](/blog/como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas).
- ¿Repasé de forma espaciada o dejé temas sin ver? Está en [cómo memorizar leyes](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).
- ¿Podía haber aprovechado más la fase de concurso? Mira [la fase de concurso y los méritos](/blog/fase-concurso-guardia-civil-meritos).

## Paso 4: replantea el calendario

1. **Descansa unos días**, pero no semanas: reanudar es más duro cuanto más tardas.
2. **Fija un objetivo de puntuación** basado en las notas de corte, con margen.
3. **Corrige primero lo que más puntos te quitó**, no lo que más te gusta.
4. **Reserva tiempo para simulacros periódicos** y analízalos.
5. **Revisa si tu método era sostenible**: [errores al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil).

## Paso 5: cuida cómo te lo tomas

Es normal sentir frustración. Si el desánimo te bloquea durante semanas o notas ansiedad que te desborda, hablar con un profesional de la salud es una buena decisión; no es algo que un artículo pueda resolver. Y una cosa más: no sabemos cuándo saldrá la siguiente convocatoria ni cuántas plazas tendrá, así que planifica con lo que sí controlas.

Si quieres reorganizar la preparación con apoyo, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Puedo volver a presentarme si suspendo?
Las bases de 2026 no limitan el número de intentos; sí limitan la edad. Revisa las bases vigentes.

### ¿Cuánto tarda en salir la siguiente convocatoria?
No hay una fecha fija ni garantizada. Consulta [qué se sabe de la convocatoria de 2027](/blog/convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra).

### ¿Qué nota debería sacar para entrar?
No hay una cifra segura: la nota de corte cambia cada año. Usa el histórico como referencia con margen.

### ¿Conservo algo de un intento anterior?
Lo que se conserva (o no) depende de cada convocatoria. Consulta las bases vigentes.',
   NULL, NULL, 'publicado', '2027-02-15T06:17:00.000Z', 'acceso-guardia-civil',
   ARRAY['suspender', 'nota de corte', 'replantear', 'convocatoria']::text[], '{"title":"Si suspendes la oposición a Guardia Civil: qué hacer","description":"Qué hacer si no apruebas la oposición a Guardia Civil: analizar el fallo, comparar con las notas de corte 2022-2026 y replantear la siguiente convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados', 'articulo', 'Simulacros: cada cuánto hacerlos y cómo analizar los resultados', 'Un simulacro que no se analiza es tiempo perdido. Qué frecuencia te conviene según la fase, cómo calcular la nota con la fórmula oficial y qué mirar en los resultados para saber qué repasar.', 'Un simulacro mide dónde estás, pero **solo mejora tu nota si luego lo analizas**. Hacer uno cada día sin revisar los fallos te da sensación de avance, no avance. La frecuencia depende de en qué fase estés.

## Cada cuánto hacerlos

No hay una cifra oficial; lo que sigue es una orientación de sentido común que debes adaptar a tu tiempo:

| Fase | Frecuencia orientativa | Para qué sirve |
|---|---|---|
| Primera vuelta al temario | Tests por tema, no simulacros completos | Fijar lo estudiado |
| Repaso | Un simulacro completo cada una o dos semanas | Detectar lagunas y ritmo |
| Últimas semanas | Uno por semana o algo más, con condiciones reales | Ensayar el examen y el tiempo |

La regla útil: **cuantos más simulacros haces, más tiempo debes dedicar a analizarlos**. Si no puedes revisar uno a fondo, es mejor hacer menos.

## Hazlos en condiciones reales

- Sin apuntes y con reloj. La prueba de conocimientos dura **140 minutos** en total e incluye ortografía, gramática, 100 preguntas de conocimientos y 20 de inglés ([estructura del examen](/blog/examen-conocimientos-guardia-civil-estructura)).
- Con bolígrafo negro y en una sola sesión.
- Sin parar a consultar dudas: en el examen no podrás.

## Calcula la nota con la fórmula oficial

En la parte de conocimientos (100 preguntas, 4 opciones), cada error resta 1/3 de acierto y la pregunta en blanco no resta. La puntuación es:

**aciertos − (errores ÷ 3)**, con un mínimo de **50 sobre 100**.

En inglés (20 preguntas), el mínimo es **8 sobre 20**. En ortografía y gramática, 6 errores o más excluyen. Puedes calcularlo en la [calculadora de nota](/calculadora-nota-guardia-civil) y repasar el criterio en [cómo se calcula la nota](/blog/calcular-nota-examen-guardia-civil).

Ejemplo: 65 aciertos, 24 errores y 11 en blanco dan 65 − 8 = 57 sobre 100.

## Cómo analizar un simulacro

### 1. Separa la nota de la causa
Para cada pregunta fallada, clasifícala:

- **No lo sabía**: tema no estudiado o mal estudiado.
- **Lo confundí**: dos normas o plazos parecidos.
- **Leí mal**: negaciones, «incorrecta», «excepto».
- **Dudé y cambié**: tenías la correcta.

Cada causa se corrige de forma distinta.

### 2. Mira los errores por tema
Anota en una hoja cuántos fallos tienes por tema. Los que acumulan más errores son tu repaso prioritario. No te fíes de la sensación: los datos suelen sorprender.

### 3. Decide la estrategia de blancos
Como el error resta un tercio y el blanco no resta, comprueba en tus simulacros si **arriesgar te ha ayudado o te ha costado puntos**. Con dos opciones descartadas, adivinar tiene más sentido que con ninguna. Es una decisión personal; mide el efecto en tus propios resultados antes de fijarla.

### 4. Controla el tiempo por bloque
Anota cuánto tardas en cada prueba. Si agotas el tiempo, el problema es de ritmo, no de conocimiento.

### 5. Revisa la tendencia, no un resultado aislado
Un mal simulacro puede ser un mal día. Mira la media de los últimos tres o cuatro. Y compara con el [corte de años anteriores](/nota-de-corte) solo como referencia: cambia con cada convocatoria.

## Con qué hacerlos

Los cuestionarios publicados por la Guardia Civil son un buen punto de partida ([exámenes oficiales anteriores](/blog/examenes-oficiales-anteriores-donde-encontrarlos)). También puedes usar [test propios de ProLince](/test-guardia-civil) o los del [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil), que se elaboran con el mismo formato, aunque no son exámenes oficiales.

## Preguntas frecuentes

### ¿Cuántos simulacros debo hacer antes del examen?
No hay un número oficial. Más que la cantidad, importa que analices cada uno y que veas una tendencia estable por encima del mínimo.

### ¿Qué nota debo sacar en los simulacros?
El mínimo del examen es 50 sobre 100 en conocimientos, pero conviene tener margen, porque el día real hay nervios. Las notas de corte varían con cada convocatoria.

### ¿Es mejor hacer tests por temas o simulacros completos?
Los tests por temas sirven para aprender; los simulacros, para ensayar el examen. Se complementan.

### ¿Debo dejar preguntas en blanco?
Depende de cuántas opciones puedas descartar y de lo que hayas comprobado en tus simulacros. La fórmula penaliza el error con 1/3, no con un punto entero.',
   NULL, NULL, 'publicado', '2027-01-08T06:31:00.000Z', 'acceso-guardia-civil',
   ARRAY['simulacros', 'test', 'nota', 'análisis de resultados']::text[], '{"title":"Simulacros Guardia Civil: frecuencia y análisis de nota","description":"Cada cuánto hacer simulacros para la Guardia Civil, cómo calcular la nota con la fórmula oficial y cómo analizar errores para saber qué repasar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('tasas-de-examen-de-la-guardia-civil-importe-y-exenciones', 'articulo', 'Tasas de examen de la Guardia Civil: importe y exenciones', 'En la convocatoria de 2026 los derechos de examen fueron de 11,66 euros, con 5,83 euros para familias numerosas de categoría general y exención en varios supuestos. Qué dice la base 3.3 y cómo acreditarlo.', '**Respuesta corta:** en la convocatoria de 2026, los derechos de examen para ingresar en la Escala de Cabos y Guardias fueron de **11,66 euros** con carácter general. Hubo una bonificación del 50 % (5,83 euros) para familias numerosas de categoría general y exención total en varios supuestos. Son datos de la convocatoria de 2026: la de 2027, cuando se publique, puede fijar otros importes.

La fuente es la base 3.3 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982).

## Importe general

La base 3.3.1 fija **once euros con sesenta y seis céntimos (11,66 euros)** en concepto de derechos de examen «con carácter general». El pago es telemático, dentro del propio procedimiento de [solicitud en la sede electrónica](/blog/como-rellenar-la-solicitud-de-la-guardia-civil-paso-a-paso).

## Bonificación del 50 %

Quien acredite ser miembro de una **familia numerosa de categoría general** paga **5,83 euros** (base 3.3.3). La acreditación es el título de familia numerosa en vigor, expedido por la comunidad autónoma correspondiente.

## Exenciones

Según la base 3.3.2, están **exentos del pago**:

1. **Demandantes de empleo** que cumplan a la vez estas condiciones:
   - figurar como demandantes durante, al menos, **un mes anterior a la fecha de publicación** de la resolución;
   - no haber rechazado en ese plazo una oferta de empleo adecuada ni haberse negado, sin causa justificada, a participar en acciones de promoción, formación o reconversión profesionales;
   - **no tener rentas superiores, en cómputo mensual, al Salario Mínimo Interprofesional.**
2. **Miembros de familia numerosa de categoría especial.**
3. **Víctimas del terrorismo**, sus hijos, su cónyuge o la persona con quien hayan convivido en análoga relación de afectividad durante los últimos dos años, y los hijos y el cónyuge del fallecido. Se acredita con sentencia judicial firme o resolución administrativa que reconozca la condición.

### Cómo se acredita cada una

- **Demandante de empleo:** certificación del Servicio Público de Empleo Estatal sobre esa condición y los requisitos señalados, más una **declaración escrita del aspirante** sobre sus rentas.
- **Familia numerosa y víctimas del terrorismo:** documentación acreditativa, que se aporta **cuando la requiera el Tribunal de Selección**, no al inscribirte.

Como la solicitud ofrece tres modalidades (sin reducción, con bonificación o con exención), tienes que elegir la tuya al inscribirte. Pide solo la exención o la bonificación que puedas acreditar después: la solicitud lleva implícita la autorización para que la Jefatura de Enseñanza consulte datos a otras administraciones, y si no la das o hay fallos técnicos, te pedirán los documentos (certificación de demandante de empleo con declaración de rentas, título de familia numerosa, resolución de víctima del terrorismo).

## Devolución de la tasa

La base 3.3.4 se remite al artículo 12 de la Ley 8/1989, de Tasas y Precios Públicos: **procede devolver** lo pagado cuando **no se realice el hecho imponible por causas no imputables al interesado**. Y lo dice expresamente al revés: **no hay devolución si te excluyen por una causa que te sea imputable**, por ejemplo por no cumplir un requisito o por un defecto que no subsanas.

Es la razón por la que conviene comprobar [los requisitos](/blog/requisitos-guardia-civil) antes de pagar, no después.

## Lo que NO dice la convocatoria

En la base 3.3 de la convocatoria de 2026 no figura ningún otro importe de inscripción distinto de los anteriores. Si en 2027 cambian las cuantías, estará en su texto: no des por buena ninguna cifra que no veas en la convocatoria vigente.

Y recuerda que la tasa es solo una parte de los costes de preparar la oposición. Para saber qué esperar de las pruebas, lo mejor es leer la [convocatoria de 2026 y su calendario](/blog/convocatoria-guardia-civil-2026-plazas-calendario) y, si quieres un método de estudio, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto cuesta presentarse a la oposición de la Guardia Civil?

En la convocatoria de 2026, 11,66 euros de derechos de examen con carácter general. La cifra de 2027 dependerá de su convocatoria.

### ¿Quién está exento de pagar la tasa?

En 2026: demandantes de empleo (con las condiciones de la base 3.3.2), familias numerosas de categoría especial y víctimas del terrorismo y sus familiares directos.

### ¿Cuánto paga una familia numerosa?

Categoría general: 5,83 euros (bonificación del 50 %). Categoría especial: exención total.

### ¿Me devuelven la tasa si no me admiten?

Solo si la causa no te es imputable. Si te excluyen por algo atribuible a ti, no se devuelve.',
   NULL, NULL, 'publicado', '2027-02-06T06:44:00.000Z', 'acceso-guardia-civil',
   ARRAY['tasas', 'derechos de examen', 'exenciones', 'familia numerosa']::text[], '{"title":"Tasas examen Guardia Civil: importe y exenciones","description":"Tasa de examen de la Guardia Civil en la convocatoria 2026: 11,66 euros, bonificación del 50 % a familias numerosas y quién está exento. Base 3.3."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('tecnologias-de-la-informacion-en-el-temario-conceptos-que-caen', 'articulo', 'Tecnologías de la información en el temario: qué conceptos estudiar', 'El tema 17 reúne telecomunicaciones, confianza electrónica, ciberseguridad e interoperabilidad. Qué normas incluye según el programa, qué conceptos conviene dominar y cómo estudiarlas sin perderte en el detalle.', '**Respuesta corta:** el tema 17 del programa, *Tecnologías de la información y la comunicación*, no es informática práctica: es un tema normativo. Cubre telecomunicaciones, servicios electrónicos de confianza, ciberseguridad e interoperabilidad de la administración electrónica, con normas concretas. No podemos decir qué preguntas saldrán, porque no hay datos oficiales; sí qué conviene dominar.

## Qué normas incluye

Según el alcance de nuestro [temario](/temario-guardia-civil), con el programa vigente, el tema se apoya en:

- **Ley 11/2022, General de Telecomunicaciones:** Título I y Título III, Capítulo III.
- **Real Decreto 806/2014:** Capítulos I y III.
- **Ley 6/2020, reguladora de determinados aspectos de los servicios electrónicos de confianza:** Títulos I a III y disposición adicional tercera.
- **Principios y recomendaciones básicas en ciberseguridad del CCN-CERT.**
- **Real Decreto 4/2010, Esquema Nacional de Interoperabilidad.**

Antes de estudiar, cotéjalo con el programa de la convocatoria vigente, que es el que manda.

## Conceptos para dominar

### Telecomunicaciones
Estudia el objeto de la ley, las definiciones y los principios de los capítulos señalados. Es un tema de léxico: qué es una red o un servicio de comunicaciones electrónicas. Los textos consolidados están en el [BOE](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2022-10757).

### Servicios electrónicos de confianza
La [Ley 6/2020](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2020-14046) regula aspectos como la firma electrónica, los sellos y otros servicios. Aprende las **definiciones** y quién presta y supervisa estos servicios.

### Ciberseguridad
Los principios y recomendaciones del CCN-CERT forman un documento más práctico: contraseñas, correo, actualizaciones, copias de seguridad, navegación. Léelo entero una vez, porque es corto y muy aplicable.

### Interoperabilidad
El [Esquema Nacional de Interoperabilidad](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2010-1331) (RD 4/2010) establece criterios para que las administraciones intercambien información. Su texto distingue interoperabilidad **técnica, semántica y organizativa**: aprende qué significa cada una con un ejemplo.

## Cómo estudiarlo

El riesgo de este tema no es la dificultad, sino la confusión entre normas con nombres y objetos parecidos. Por eso conviene estudiarlo con orden y no a base de lectura corrida.

1. **Lee primero el esquema** de cada norma (qué ámbitos abarca) y luego los artículos señalados.
2. **Haz una tabla de definiciones:** término, qué es, norma de procedencia.
3. **Evita confundir normas parecidas:** apunta qué regula cada una en una línea.
4. **Usa el repaso espaciado:** esta clase de contenido, con muchas definiciones parecidas, es ideal para fichas ([cómo hacerlo](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario)).
5. **Practica con tests** por tema, que son propios y sirven para detectar lagunas, no para predecir el examen.

## Un ejemplo de ficha

Término: *interoperabilidad semántica*. Qué es: que la información intercambiada se interprete igual en origen y destino. Norma: RD 4/2010. Repasa fichas así a los 1, 3 y 7 días. (La ficha es nuestra: contrástala con el texto de la norma.)

## Dónde encaja en tu planificación

Es un tema corto frente a otros bloques, pero con muchas definiciones que se confunden. Puedes dejarlo para una semana de menor carga. Para repartir las horas, mira [las 25 a 40 semanales de referencia](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil), y para el contexto general, [la estructura del examen](/blog/examen-conocimientos-guardia-civil-estructura). Si quieres que los temas ya vengan ordenados, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Un aviso sobre las fuentes

Las normas se actualizan. Antes de dar por buena una ficha o un resumen, incluidos los nuestros, compara con el texto consolidado en el BOE y con el programa de la convocatoria vigente.

## Preguntas frecuentes

### ¿Hay que saber informática para este tema?
No como tal: son normas y recomendaciones. Una base de usuario ayuda a entender los conceptos.

### ¿Cuántas preguntas habrá de este tema?
No hay datos oficiales. El examen tiene 100 preguntas de temario y no se publica su reparto por tema.

### ¿Qué documentos de ciberseguridad debo leer?
Los principios y recomendaciones básicas del CCN-CERT, incluidos en el programa.

### ¿Cambia el temario cada año?
Puede cambiar. Revisa el de la convocatoria vigente.',
   NULL, NULL, 'publicado', '2027-01-05T06:40:00.000Z', 'acceso-guardia-civil',
   ARRAY['tecnologías de la información', 'temario', 'ciberseguridad', 'administración electrónica']::text[], '{"title":"Tecnologías de la información en el temario de Guardia Civil","description":"Qué incluye el tema de Tecnologías de la información de Guardia Civil: normas, conceptos clave y cómo estudiarlo con método, sin adivinar preguntas."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('test-constitucion-20-preguntas-guardia-civil', 'articulo', 'Día de la Constitución: test de 20 preguntas para repasar la oposición a Guardia Civil', 'Veinte preguntas tipo test sobre la Constitución Española, con cuatro opciones y la respuesta con su artículo. Para medir cómo la llevas el día en que se celebra y saber qué títulos repasar primero.', 'Hoy, 6 de diciembre, es el Día de la Constitución. Buen momento para medir cuánto sabes. Este test tiene **20 preguntas tipo test, con cuatro opciones**, como las del examen. Intenta hacerlo sin mirar el texto y corrige al final con los artículos.

No son preguntas oficiales de ningún examen: las hemos redactado a partir del texto de la Constitución ([BOE-A-1978-31229](https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229)) para repasar lo básico. Si quieres saber cómo se estudia este tema, lo contamos en [la Constitución en la oposición](/blog/constitucion-oposicion-guardia-civil).

**Cómo hacerlo:** anota tu respuesta de cada pregunta, y al terminar cuenta aciertos y errores. Recuerda que en el examen real los errores restan.

## Las preguntas

**1.** ¿Cuáles son los valores superiores del ordenamiento jurídico según el artículo 1.1?
a) Libertad, igualdad, fraternidad y justicia
b) Libertad, justicia, igualdad y pluralismo político
c) Paz, justicia, libertad y solidaridad
d) Libertad, justicia, seguridad y pluralismo político

**2.** ¿Cuál es la forma política del Estado español?
a) República parlamentaria
b) Monarquía absoluta
c) Monarquía parlamentaria
d) Estado federal

**3.** Respecto al castellano, todos los españoles tienen…
a) Solo el derecho a usarlo
b) El deber de conocerlo y el derecho a usarlo
c) Solo el deber de conocerlo
d) Ni deber ni derecho: depende de la Comunidad Autónoma

**4.** La bandera de España está formada por tres franjas horizontales…
a) Roja, amarilla y roja, con la amarilla de doble anchura
b) Roja, amarilla y roja, todas iguales
c) Amarilla, roja y amarilla, con la roja de doble anchura
d) Roja, blanca y roja

**5.** ¿Qué artículo recoge que los españoles son iguales ante la ley?
a) El 9
b) El 10
c) El 14
d) El 15

**6.** Según el artículo 15, la pena de muerte…
a) Está permitida en delitos de terrorismo
b) Queda abolida, salvo lo que dispongan las leyes penales militares para tiempos de guerra
c) Queda abolida sin excepciones
d) Se regula por ley orgánica

**7.** ¿Cuál es el plazo máximo de la detención preventiva?
a) 24 horas
b) 48 horas
c) 72 horas
d) 5 días

**8.** ¿En qué casos se puede entrar en un domicilio sin el consentimiento del titular?
a) Solo con orden de la autoridad gubernativa
b) Con resolución judicial o en caso de flagrante delito
c) Con orden de la Policía
d) Siempre que haya sospechas

**9.** ¿Qué tipo de asociaciones prohíbe expresamente el artículo 22?
a) Las deportivas y las culturales
b) Las secretas y las de carácter paramilitar
c) Las políticas
d) Las que tengan fines religiosos

**10.** Respecto a la sindicación, la ley podrá limitar o exceptuar su ejercicio a…
a) Los funcionarios públicos
b) Los jueces
c) Las Fuerzas o Institutos armados y los demás Cuerpos sometidos a disciplina militar
d) Los trabajadores autónomos

**11.** El recurso de amparo ante el Tribunal Constitucional es aplicable a…
a) Todos los derechos del Título I
b) El artículo 14, la Sección primera del Capítulo segundo y la objeción de conciencia
c) Solo a los derechos de la Sección segunda
d) Los principios rectores de la política social y económica

**12.** Según el artículo 56.3, la persona del Rey…
a) Es inviolable y no está sujeta a responsabilidad
b) Está sujeta a responsabilidad penal
c) Es responsable ante las Cortes Generales
d) Es inviolable, pero sí responsable de sus actos

**13.** ¿A quién corresponde el mando supremo de las Fuerzas Armadas?
a) Al Presidente del Gobierno
b) Al Ministro de Defensa
c) Al Rey
d) Al Jefe del Estado Mayor de la Defensa

**14.** Las Cortes Generales están formadas por…
a) El Congreso, el Senado y el Gobierno
b) El Congreso de los Diputados y el Senado
c) El Congreso y el Consejo de Estado
d) El Senado y las Asambleas de las Comunidades Autónomas

**15.** El Congreso de los Diputados se compone de…
a) Un mínimo de 250 y un máximo de 350 Diputados
b) Un mínimo de 300 y un máximo de 400 Diputados
c) Exactamente 350 Diputados
d) Un mínimo de 350 y un máximo de 450 Diputados

**16.** En cada provincia, ¿cuántos Senadores se eligen por sufragio?
a) Dos
b) Tres
c) Cuatro
d) Cinco

**17.** ¿Quién dirige la política interior y exterior, la Administración civil y militar y la defensa del Estado?
a) El Rey
b) Las Cortes Generales
c) El Tribunal Supremo
d) El Gobierno

**18.** Según el artículo 104, las Fuerzas y Cuerpos de Seguridad, bajo la dependencia del Gobierno, tienen como misión…
a) Defender la soberanía e independencia de España
b) Proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana
c) Administrar justicia
d) Defender el orden constitucional frente a amenazas exteriores

**19.** El Consejo General del Poder Judicial está integrado por el Presidente del Tribunal Supremo y…
a) Doce miembros
b) Quince miembros
c) Veinte miembros
d) Veinticinco miembros

**20.** El Tribunal Constitucional se compone de…
a) 9 miembros designados por 6 años
b) 12 miembros designados por 9 años
c) 15 miembros designados por 9 años
d) 12 miembros designados por 6 años

## Respuestas

| Nº | Respuesta | Artículo |
|---|---|---|
| 1 | b | 1.1 |
| 2 | c | 1.3 |
| 3 | b | 3.1 |
| 4 | a | 4.1 |
| 5 | c | 14 |
| 6 | b | 15 |
| 7 | c | 17.2 |
| 8 | b | 18.2 |
| 9 | b | 22.5 |
| 10 | c | 28.1 |
| 11 | b | 53.2 |
| 12 | a | 56.3 |
| 13 | c | 62.h |
| 14 | b | 66.1 |
| 15 | b | 68.1 |
| 16 | c | 69.2 |
| 17 | d | 97 |
| 18 | b | 104.1 |
| 19 | c | 122.3 |
| 20 | b | 159.1 y 159.3 |

## Cómo valorar tu resultado

- **17-20 aciertos:** vas muy bien. Pasa a repasar los detalles de cada título.
- **12-16 aciertos:** nivel aceptable. Revisa las preguntas falladas y vuelve a hacerlas en una semana.
- **Menos de 12:** conviene empezar por un esquema general del texto, título por título, y hacer tests por bloques.

Fíjate en **qué tipo de error cometes**: confundir cifras (plazos, números de miembros), confundir artículos, o no saber quién hace qué. Cada tipo se corrige de forma distinta.

Dos artículos de esta serie te ayudan a repasar lo que has fallado: los derechos fundamentales y la Corona y las Cortes Generales. Y en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) tienes tests por tema con la explicación de cada respuesta.

## Preguntas frecuentes

### ¿Cuántas preguntas de la Constitución caen en el examen?

La convocatoria fija 100 preguntas de conocimientos generales extraídas del temario, sin detallar cuántas corresponden a cada tema.

### ¿Hay que saberse los artículos de memoria?

En un test, conviene conocer los contenidos y las cifras clave (plazos, números de miembros, quién tiene cada competencia) más que el número exacto de cada artículo.

### ¿Los errores restan?

Sí. Con cuatro opciones, cada error resta un tercio de acierto, y las preguntas en blanco no restan.',
   NULL, NULL, 'publicado', '2026-12-06T06:10:00.000Z', 'acceso-guardia-civil',
   ARRAY['Constitución', 'test', 'derecho constitucional', 'repaso']::text[], '{"title":"Test de la Constitución: 20 preguntas para opositores","description":"Test de 20 preguntas de la Constitución Española para opositores a Guardia Civil, con respuestas y artículos. Mide tu nivel y descubre qué repasar."}'::jsonb, '{}'::jsonb)
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

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('tildes-reglas-oposicion-guardia-civil', 'articulo', 'Tildes en la oposición a Guardia Civil: las reglas que más fallan los opositores', 'La prueba de ortografía excluye con seis errores, y las tildes son una de las fuentes más habituales de fallo. Las reglas básicas, la tilde diacrítica, los hiatos y las excepciones que más confunden, con ejemplos para repasar.', 'La ortografía no puntúa: es **apto o no apto**. Pero con **seis o más respuestas erróneas** quedas excluido del proceso (base 7.4 de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Y las tildes están entre los fallos más frecuentes.

## Cómo es la prueba

Son **cinco frases con cuatro palabras o expresiones subrayadas cada una**, y hay que señalar las que tengan falta de ortografía (base 6.1.1.a). Es **respuesta errónea** tanto dejar de marcar una palabra con falta como **marcar una que es correcta**. Es decir: no basta con detectar errores, también hay que saber cuándo algo está bien. Más sobre la prueba en [ortografía y gramática en el examen](/blog/ortografia-gramatica-examen-guardia-civil).

## Las tres reglas generales

Para saber si una palabra lleva tilde, separa las sílabas y localiza la tónica:

| Tipo | Dónde va la sílaba tónica | Lleva tilde si… | Ejemplos |
|---|---|---|---|
| Aguda | La última | termina en vocal, **n** o **s** | canción, café, además; pero: ciudad, reloj |
| Llana | La penúltima | **no** termina en vocal, n o s | árbol, cárcel, lápiz; pero: examen, casa |
| Esdrújula | La antepenúltima | **siempre** | médico, teléfono, bíceps |

Las sobreesdrújulas (la sílaba tónica es anterior a la antepenúltima, como «cuéntamelo» o «dígaselo») también llevan tilde siempre.

## Diptongos e hiatos

- **Diptongo:** dos vocales juntas en una sílaba (cuidado, vienes, ruido). Sigue las reglas generales.
- **Hiato:** dos vocales que forman sílabas distintas. Si la **vocal cerrada (i, u) es tónica**, lleva tilde aunque la regla general no lo pida: país, día, río, baúl, maíz, oído, reír.

Un hiato de dos vocales abiertas (a, e, o) no lleva tilde por el hiato: «poeta», «aéreo» (esta sí por ser esdrújula).

## Monosílabos: sin tilde

Las palabras de una sola sílaba **no llevan tilde**: fe, fue, fui, vio, dio, pie, sol, mar. Desde 2010 tampoco «guion», «truhan» o «hui».

## La tilde diacrítica: la que más se falla

Distingue palabras iguales con función distinta. La tónica lleva tilde; la átona, no.

| Con tilde | Sin tilde |
|---|---|
| **tú** (pronombre): «tú vienes» | **tu** (posesivo): «tu casa» |
| **él** (pronombre): «él lo dijo» | **el** (artículo): «el libro» |
| **mí** (pronombre): «para mí» | **mi** (posesivo): «mi coche» |
| **sí** (afirmación / pronombre): «sí, lo sé» | **si** (condicional): «si vienes» |
| **té** (infusión) | **te** (pronombre): «te lo dije» |
| **dé** (verbo dar): «que me dé» | **de** (preposición): «de Madrid» |
| **sé** (saber o ser): «yo sé» | **se** (pronombre): «se fue» |
| **más** (cantidad): «más tiempo» | **mas** (= pero): «quiso, mas no pudo» |

### Otras reglas que se olvidan

- **«Solo»** no lleva tilde, tampoco cuando es adverbio («solo vino él»). Igual los demostrativos «este», «ese» y «aquel».
- **«Aún»** lleva tilde cuando significa «todavía» («aún no ha llegado») y no la lleva cuando significa «incluso» («aun así», «aun cuando»).
- **Interrogativos y exclamativos** llevan tilde: qué, cómo, cuándo, dónde, quién, cuál, cuánto. «No sé qué hacer», «¡cómo corre!».
- **Mayúsculas** también llevan tilde: «África», «Álvaro».

## Plurales y palabras que cambian

Algunas palabras **pierden o ganan tilde** al pasar a plural, porque cambia su sílaba tónica:

- **carácter** → **caracteres** (la tónica pasa a «rac»)
- **régimen** → **regímenes**
- **espécimen** → **especímenes**
- **joven** → **jóvenes**
- **examen** → **exámenes**
- **orden** → **órdenes**

## Los adverbios en -mente

Un adverbio terminado en «-mente» **conserva la tilde del adjetivo** del que deriva: «fácil» → «fácilmente»; «rápido» → «rápidamente». Y si el adjetivo no lleva tilde, el adverbio tampoco: «lenta» → «lentamente».

## Palabras compuestas

Se acentúan como una palabra nueva: «decimoséptimo», «asimismo» (sin tilde). En compuestos con guion cada elemento conserva su tilde: «histórico-artístico».

## Cómo repasarlas

1. **Memoriza la tabla de la tilde diacrítica**: es la que más puntos da.
2. **Practica con frases**, no con palabras sueltas: en el examen todo está en contexto.
3. **Haz tus propias listas de fallos** y repásalas.
4. **Aplica la regla de las dos preguntas**: ¿qué tipo de palabra es y qué función tiene?

Los siguientes artículos de la serie tratan las palabras trampa con B/V, G/J y H y los homófonos.

## Preguntas frecuentes

### ¿Cuántos errores de ortografía se permiten en la Guardia Civil?

Hasta cinco. Con seis o más respuestas erróneas se queda excluido del proceso.

### ¿Cuenta como error marcar una palabra correcta?

Sí. Es respuesta errónea tanto no marcar una palabra con falta como marcar una que está bien.

### ¿«Solo» lleva tilde?

No. Desde 2010 la ortografía no recomienda tilde en «solo» ni en los demostrativos, ni siquiera por ambigüedad.

### ¿Cómo distingo «aún» de «aun»?

Con tilde cuando significa «todavía» («aún no»); sin tilde cuando significa «incluso» («aun así»).',
   NULL, NULL, 'publicado', '2026-12-02T06:02:00.000Z', 'acceso-guardia-civil',
   ARRAY['ortografía', 'tildes', 'acentuación', 'examen']::text[], '{"title":"Tildes en la oposición a Guardia Civil: reglas","description":"Reglas de acentuación para la prueba de ortografía de la Guardia Civil: agudas, llanas, esdrújulas, hiatos, tilde diacrítica y excepciones habituales."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('topografia-para-guardia-civil-escalas-curvas-de-nivel', 'articulo', 'Topografía para Guardia Civil: escalas, curvas de nivel y coordenadas', 'El tema de Topografía mezcla conceptos sencillos con cuentas fáciles de fallar. Repaso de escalas, curvas de nivel, pendientes, coordenadas UTM y orientación, con ejemplos resueltos para practicar.', '**Respuesta corta:** el tema 18 del programa, Topografía, trata de elementos geográficos, unidades de medida y representación del terreno. Casi todo se reduce a cinco ideas: la escala, las curvas de nivel, la pendiente, las coordenadas y la orientación. Con un par de fórmulas y práctica con un mapa, es de los temas más asequibles.

El alcance oficial es esa descripción general; consulta el programa en nuestro [temario](/temario-guardia-civil) y la convocatoria vigente. Los ejemplos de abajo son propios.

## Escalas

La escala relaciona una distancia en el mapa con la real. En una escala 1:50.000, **1 cm del mapa son 50.000 cm, es decir, 500 m** en el terreno.

| Escala | 1 cm en el mapa | 4 cm en el mapa |
| --- | --- | --- |
| 1:25.000 | 250 m | 1 km |
| 1:50.000 | 500 m | 2 km |

- **Mayor escala = más detalle**, y es la que tiene el denominador más pequeño: 1:25.000 es mayor que 1:50.000.
- Hay escalas **numéricas** (1:50.000) y **gráficas** (una regla dibujada en el mapa).
- Error típico: convertir mal los ceros. Pasa siempre a centímetros y luego a metros.

## Planimetría y altimetría

La **planimetría** representa lo que hay sobre el plano horizontal (ríos, caminos, poblaciones). La **altimetría** representa el relieve, es decir, las alturas. En un mapa topográfico, la altimetría se dibuja sobre todo con curvas de nivel.

## Curvas de nivel

Una curva de nivel une los puntos del terreno que tienen la **misma altitud**. La diferencia de altura entre dos curvas consecutivas es la **equidistancia**, y se indica en el margen del mapa: léela siempre allí. En el Mapa Topográfico Nacional suele ser de 10 m en la escala 1:25.000 y de 20 m en la 1:50.000, pero comprueba la leyenda de cada hoja.

Reglas de lectura:

- **Curvas juntas:** terreno empinado. **Separadas:** terreno suave.
- **Curvas cerradas y concéntricas:** una cima o una depresión; para distinguirlas, mira las cotas.
- **Curvas en V:** si el vértice apunta hacia cotas más altas, es una **vaguada** (por donde baja el agua); si apunta hacia cotas más bajas, es un **espolón** o línea de cumbres.
- Las curvas **nunca se cruzan** (salvo en un acantilado o voladizo, caso excepcional).

## Pendiente

Pendiente (%) = desnivel / distancia horizontal × 100.

Ejemplo: subes 50 m de desnivel en 500 m de distancia horizontal. 50 / 500 = 0,1, es decir, **10 %**. En grados serían unos 5,7°, porque la pendiente en % y la inclinación en grados no son lo mismo. Si te dan la distancia medida sobre el mapa, conviértela con la escala antes de calcular.

## Coordenadas

**Geográficas:** latitud (0 a 90° N o S desde el ecuador) y longitud (0 a 180° E u O desde el meridiano de Greenwich).

**UTM** (Universal Transversa de Mercator): el mundo se divide en **60 husos de 6° de longitud**, numerados desde el antimeridiano de Greenwich hacia el este. La Península está sobre todo en los husos 29, 30 y 31, y Canarias en el 28. Las coordenadas se dan en **metros**: la X (este) y la Y (norte). En el mapa aparece una cuadrícula, normalmente de 1 km, para localizar un punto leyendo primero X y luego Y.

En España el sistema geodésico de referencia oficial es el ETRS89 ([Real Decreto 1071/2007](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2007-15822)), que también fija la proyección para la cartografía terrestre. Para el examen, domina la lectura de coordenadas más que la teoría de la proyección.

## Orientación

- **Acimut:** ángulo entre el norte y la dirección, medido en sentido horario de 0° a 360°. Este = 90°, sur = 180°, oeste = 270°.
- **Contraacimut:** el acimut ±180°. Si vas con acimut 70°, el de vuelta es 250°.
- **Rumbo:** el término se usa con matices según el texto; mira cómo lo define tu material y no mezcles definiciones.
- **Declinación magnética:** diferencia entre el norte geográfico y el magnético. La brújula marca el magnético y varía con el lugar y los años; el mapa trae el dato.

## Cómo estudiarlo

Haz ejercicios con un mapa real, por ejemplo del Instituto Geográfico Nacional, y repasa las fórmulas a diario. Para fijar lo aprendido, combínalo con repasos espaciados en el tiempo, técnica que veremos en el siguiente artículo. Puedes ver cómo se estructura la prueba en [el examen por dentro](/blog/examen-conocimientos-guardia-civil-estructura) y practicar en el [test online](/test-guardia-civil). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este tema.

## Preguntas frecuentes

### ¿Hace falta llevar brújula al examen?
La prueba de conocimientos es un examen escrito tipo test. Consulta las bases de la convocatoria vigente por si hubiera otra cosa.

### ¿Qué fórmula debo saberme sí o sí?
La conversión de escala y la de pendiente, porque son las que generan cálculos.

### ¿Se puede estudiar solo con teoría?
Mejor no: dos mapas y un lápiz valen más que una semana de resúmenes.

### ¿Qué hago si mi material da otra equidistancia?
Fíate siempre del dato del mapa o del enunciado, no de lo que recuerdes.',
   NULL, NULL, 'publicado', '2027-01-03T06:06:00.000Z', 'acceso-guardia-civil',
   ARRAY['topografía', 'temario', 'escalas', 'curvas de nivel']::text[], '{"title":"Topografía Guardia Civil: escalas, curvas y UTM","description":"Resumen del tema de Topografía de Guardia Civil: escalas, curvas de nivel, pendiente, coordenadas UTM y orientación con acimut, con ejemplos resueltos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('un-dia-en-la-academia-de-baeza-horarios-normas-y-permisos', 'articulo', 'Vida en la Academia de Baeza: horarios, normas y permisos según la normativa', 'Internado, uniforme, guardias y un horario con límites por norma. Qué establece la Orden PCM/6/2021 sobre la vida diaria del alumno en Baeza, qué no está publicado (el horario exacto) y dónde consultarlo cuando te incorpores.', 'Respuesta corta: el horario exacto de Baeza, hora a hora, no es un dato público y cambia según la estación y el programa de cada curso. Lo que sí está publicado en el BOE son los **límites y las reglas generales** de la vida del alumno. Aquí tienes lo verificable, sin leyendas de cuartel.

La base es la [Orden PCM/6/2021](https://www.boe.es/buscar/act.php?id=BOE-A-2021-520), que regula los centros docentes de formación de la Guardia Civil y el régimen de su alumnado. Para el contexto general del curso (duración, convocatorias, baja), lee antes [qué pasa en la Academia de Baeza después de aprobar](/blog/academia-baeza-guardia-civil).

## Internado: el régimen general

Según el artículo 40, los alumnos permanecen **con carácter general en régimen de internado**. El externado existe, pero solo en las condiciones que fije la Dirección General en las normas de régimen interior. El alojamiento en internado y, en su caso, la alimentación corren por cuenta del Estado (artículo 45.2).

Quien se incorpora el primer día, además, lo hace como **Guardia Civil Alumno**, con empleo eventual a efectos académicos, de prácticas y retributivos. Si quieres saber cómo se retribuye, mira [cuánto cobra un guardia civil](/blog/sueldo-guardia-civil).

## Qué dice la norma sobre el horario

La orden no publica un cuadrante, pero marca límites claros para el régimen diario (artículo 40.3.a):

- Las horas programadas de cualquier índole, escolar o extraescolar, **no pueden pasar de ocho al día** ni, con carácter general, **de treinta y cinco a la semana**.
- El **descanso nocturno no puede ser inferior a ocho horas**, salvo en prácticas de instrucción y adiestramiento o en servicios nombrados, y siempre con finalidad didáctica y con descanso posterior.
- El horario concreto, y sus variaciones según la estación o los festivos, está en las **normas de régimen interior** del centro (artículo 41).

Esas normas son específicas de cada centro y no se publican en el BOE: se entregan al alumno. Al inicio de cada curso, el alumnado recibe una **guía de acogida** con lo esencial del régimen interior (artículo 29.3).

## Uniformidad, encuadramiento y servicios

- **Uniforme.** Se viste el que corresponda, con las peculiaridades que fije el régimen interior. La norma pide «especial énfasis» en pelo, barba, uñas, accesorios y tatuajes. Si dudas con un tatuaje, tienes [un artículo sobre tatuajes](/blog/tatuajes-guardia-civil).
- **Encuadramiento.** Los alumnos se agrupan en unidades con sus mandos, y algunos pueden recibir cometidos de especial responsabilidad.
- **Guardias y servicios.** Los fija la dirección del centro según las necesidades de la formación en Instrucción y Adiestramiento.
- **Disciplina.** Desde el día de la incorporación, el alumno está sujeto al régimen disciplinario y a las leyes penales militares (base 11.3 de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Tienes un repaso en [derechos, deberes y régimen disciplinario](/blog/derechos-deberes-y-regimen-disciplinario-del-guardia-civil).

## Salidas, fines de semana y externado

Aquí está el punto que más preguntas genera. La orden no concede un régimen fijo: remite a unas condiciones y criterios basados en **la progresión en los estudios, el comportamiento, el rendimiento académico y otras circunstancias personales** para que el alumno pueda ausentarse del centro al acabar las actividades diarias y durante los fines de semana (artículo 40.3.d). Los directores pueden además limitar actividades adicionales según esos mismos factores.

Dicho de otro modo: la libertad de salida se vincula al rendimiento y a la conducta, y el detalle lo marca cada centro.

## Vacaciones y permisos

El artículo 46 es breve: los alumnos disfrutan **los periodos vacacionales que fije el programa de estudios** del centro y pueden usar los permisos por enfermedad u otros motivos justificados que se les concedan. A efectos de vacaciones, permisos y licencias se rigen por el plan de estudios y por las instrucciones de la Dirección General en las normas de régimen interior.

**No he encontrado una fuente oficial pública con el número de días de permiso ni las fechas de vacaciones de Baeza**, así que no los doy. Se concretan en el programa de estudios que aprueba cada curso la Jefatura de Enseñanza.

## Antes de incorporarte

1. Lee entera la resolución de aspirantes seleccionados y las instrucciones del centro: la documentación y los efectos que debes llevar los fija cada año el centro, no los foros.
2. Cuando llegues, estudia la guía de acogida.
3. Si vienes de la oposición con una rutina de estudio y entrenamiento ya fijada, el cambio es menor. Lo explicamos en el [plan para preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) y en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuántas horas al día se trabaja en Baeza?
El máximo que fija la Orden PCM/6/2021 son ocho horas diarias de actividad programada y, con carácter general, treinta y cinco semanales. El horario real lo establece el régimen interior de cada curso.

### ¿Se puede salir de la academia?
Sí, pero condicionado: la norma lo vincula a la progresión en los estudios, el comportamiento y el rendimiento. Las condiciones concretas las fija el régimen interior.

### ¿Se paga el alojamiento?
En régimen de internado, el alojamiento corre por cuenta del Estado y, según se determine, también la alimentación (artículo 45.2).

### ¿Cuántos días de permiso tiene un alumno?
No he podido verificarlo en una fuente oficial pública. Depende del plan de estudios y de las normas de régimen interior; consúltalo en la documentación que te entregue el centro.',
   NULL, NULL, 'publicado', '2027-01-20T06:55:00.000Z', 'acceso-guardia-civil',
   ARRAY['baeza', 'academia', 'alumnos', 'régimen interior']::text[], '{"title":"Academia de Baeza: horarios, normas y permisos","description":"Qué dice la normativa sobre la vida en la Academia de Baeza: internado, límites de horario, uniformidad, guardias, vacaciones y permisos del alumno."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('union-europea-en-la-oposicion-las-instituciones', 'articulo', 'Unión Europea en la oposición: las instituciones que tienes que dominar', 'Las siete instituciones del artículo 13 del Tratado de la Unión Europea, qué hace cada una, cómo se componen y cuánto duran sus mandatos. Añadimos los principios de la Unión y los tipos de actos jurídicos que conviene tener claros.', 'El tema 5 del programa es «Derecho de la Unión Europea». **Respuesta corta:** la base son las instituciones del artículo 13 del Tratado de la Unión Europea (TUE): Parlamento Europeo, Consejo Europeo, Consejo, Comisión, Tribunal de Justicia, Banco Central Europeo y Tribunal de Cuentas. Según nuestro [temario](/temario-guardia-civil), entran los Títulos I a IV y VI del TUE, la política común de seguridad y defensa del Título V, y las partes del Tratado de Funcionamiento (TFUE) que fija el programa de la convocatoria ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)).

Los datos que siguen se han comprobado en la versión consolidada del [TUE](https://www.boe.es/doue/2010/083/Z00013-00046.pdf) y del [TFUE](https://www.boe.es/doue/2010/083/Z00047-00199.pdf) publicada en el DOUE de 30 de marzo de 2010 a través del BOE. Hay versiones consolidadas posteriores (2012 y 2016): contrasta siempre con la que cite tu convocatoria.

## Las siete instituciones (art. 13 TUE)

| Institución | Función esencial | Dato para recordar |
|---|---|---|
| **Parlamento Europeo** | Ejerce con el Consejo la función legislativa y presupuestaria; control político y consultivas; elige al Presidente de la Comisión (art. 14) | Número de diputados: máximo setecientos cincuenta, más el Presidente; mínimo seis por Estado y máximo noventa y seis; sufragio universal directo, libre y secreto; mandato de cinco años |
| **Consejo Europeo** | Da los impulsos necesarios y define las orientaciones y prioridades políticas generales; no ejerce función legislativa (art. 15) | Jefes de Estado o de Gobierno, su Presidente y el Presidente de la Comisión; se reúne dos veces por semestre; presidente elegido por mayoría cualificada para dos años y medio, renovable una vez |
| **Consejo** | Ejerce con el Parlamento la función legislativa y presupuestaria; definición de políticas y coordinación (art. 16) | Un representante de rango ministerial de cada Estado miembro; se pronuncia por mayoría cualificada salvo que los Tratados digan otra cosa |
| **Comisión Europea** | Promueve el interés general, vela por la aplicación de los Tratados, ejecuta el presupuesto y tiene, en general, la iniciativa legislativa (art. 17) | Mandato de cinco años; actúa con plena independencia |
| **Tribunal de Justicia de la Unión Europea** | Garantiza el respeto del Derecho en la interpretación y aplicación de los Tratados (art. 19) | Comprende el Tribunal de Justicia, el Tribunal General y los tribunales especializados |
| **Banco Central Europeo** | Su regulación está en el TFUE | |
| **Tribunal de Cuentas** | Su regulación está en el TFUE | |

Además, el Parlamento, el Consejo y la Comisión cuentan con la asistencia de un **Comité Económico y Social** y un **Comité de las Regiones**, con funciones consultivas (art. 13.4). **No son instituciones.**

### Detalles que se confunden

- **Consejo Europeo no es el Consejo.** El primero reúne a jefes de Estado o de Gobierno y no legisla; el segundo reúne a ministros y legisla junto al Parlamento.
- **Mayoría cualificada (art. 16.4):** como mínimo el 55 % de los miembros del Consejo, que incluya al menos a quince de ellos y que represente a Estados que reúnan como mínimo el 65 % de la población de la Unión. La minoría de bloqueo exige al menos cuatro miembros del Consejo.
- **Composición de la Comisión (art. 17.5):** un número de miembros equivalente a los dos tercios de los Estados miembros, incluidos su Presidente y el Alto Representante, salvo que el Consejo Europeo decida por unanimidad otra cosa.
- **Elección del Presidente de la Comisión (art. 17.7):** lo propone el Consejo Europeo por mayoría cualificada, teniendo en cuenta el resultado de las elecciones europeas, y lo elige el Parlamento por mayoría de sus miembros.
- **Alto Representante (art. 18):** nombrado por el Consejo Europeo por mayoría cualificada con la aprobación del Presidente de la Comisión; está al frente de la política exterior y de seguridad común, preside el Consejo de Asuntos Exteriores y es uno de los Vicepresidentes de la Comisión.
- **Tribunal de Justicia (art. 19):** un juez por Estado miembro, asistido por abogados generales; el Tribunal General, al menos un juez por Estado. Se nombran de común acuerdo por los Gobiernos para un período de seis años, renovable. Resuelve recursos, cuestiones prejudiciales y los demás casos previstos en los Tratados.

## Principios que sustentan la Unión

- **Valores (art. 2 TUE):** dignidad humana, libertad, democracia, igualdad, Estado de Derecho y respeto de los derechos humanos.
- **Atribución, subsidiariedad y proporcionalidad (art. 5 TUE).** Con la atribución, la Unión solo actúa dentro de las competencias que le atribuyen los Estados en los Tratados; con la subsidiariedad, en los ámbitos que no son de su competencia exclusiva, interviene solo si los Estados no pueden alcanzar suficientemente los objetivos; con la proporcionalidad, su acción no excede de lo necesario.
- **Carta de los Derechos Fundamentales (art. 6 TUE):** tiene el mismo valor jurídico que los Tratados. Conecta con lo que vimos en [Derechos Humanos](/blog/derechos-humanos-en-el-temario-declaracion-universal).
- **Ciudadanía de la Unión (art. 20 TFUE):** la tiene toda persona que ostente la nacionalidad de un Estado miembro, y se añade a la ciudadanía nacional sin sustituirla.

## Los actos jurídicos (art. 288 TFUE)

| Acto | Efecto |
|---|---|
| **Reglamento** | Alcance general, obligatorio en todos sus elementos y directamente aplicable en cada Estado miembro |
| **Directiva** | Obliga al Estado destinatario en cuanto al resultado, dejando a sus autoridades la elección de la forma y de los medios |
| **Decisión** | Obligatoria en todos sus elementos; si designa destinatarios, solo obliga a estos |
| **Recomendaciones y dictámenes** | No son vinculantes |

Otro dato útil: si la Comisión estima que un Estado ha incumplido sus obligaciones, emite un dictamen motivado y, si no se atiene a él, puede recurrir al Tribunal de Justicia (art. 258 TFUE).

## Cómo estudiarlo

1. **Una ficha por institución:** quién la compone, qué hace, cuánto dura, quién la elige.
2. **Cuidado con las cifras** (750, 96, 6, 5 años, 2,5 años, 55 %/65 %): confírmalas con la versión vigente.
3. **No mezcles organizaciones:** el Consejo Europeo, el Consejo de la UE y el Consejo de Europa son cosas distintas; el último lo veremos en el artículo sobre instituciones internacionales.
4. Compara el sistema con el nuestro: [la Constitución](/blog/constitucion-oposicion-guardia-civil) organiza Gobierno y Cortes de forma muy distinta. Para integrar este tema con el resto, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) organiza los 23 temas del programa.

## Preguntas frecuentes

### ¿Cuántas instituciones tiene la Unión Europea?
Siete, enumeradas en el artículo 13.1 del TUE. El Comité Económico y Social y el Comité de las Regiones son órganos consultivos, no instituciones.

### ¿Cuánto dura el mandato de la Comisión y del Parlamento Europeo?
Cinco años en ambos casos (art. 17.3 y art. 14.3 TUE).

### ¿Qué diferencia hay entre reglamento y directiva?
El reglamento es directamente aplicable en cada Estado miembro y obligatorio en todos sus elementos; la directiva obliga en cuanto al resultado y deja a los Estados la forma y los medios.

### ¿Son estos datos preguntas del examen?
No: son contenidos del texto de los Tratados. No tenemos datos oficiales de qué preguntas se formularán, así que conviene estudiar el tema completo.',
   NULL, NULL, 'publicado', '2026-12-13T06:09:00.000Z', 'acceso-guardia-civil',
   ARRAY['Unión Europea', 'instituciones', 'Derecho de la UE', 'temario']::text[], '{"title":"Instituciones de la Unión Europea: guía para la oposición","description":"Las siete instituciones de la UE (art. 13 TUE), su composición y mandatos, los principios de la Unión y los actos jurídicos: reglamento y directiva."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('violencia-de-genero-lo-1-2004-claves-para-el-examen', 'articulo', 'Violencia de género (LO 1/2004): claves para estudiar el tema', 'La Ley Orgánica 1/2004 forma el tema 21 del programa y entra completa. Cómo se organiza en cinco títulos, qué define como violencia de género, qué papel tienen las Fuerzas y Cuerpos de Seguridad y cómo estudiarla.', 'La [Ley Orgánica 1/2004, de 28 de diciembre, de Medidas de Protección Integral contra la Violencia de Género](https://www.boe.es/buscar/act.php?id=BOE-A-2004-21760) es el **tema 21** del programa de la Escala de Cabos y Guardias, donde figura «completa» (consulta el [temario](/temario-guardia-civil)). No se estudia solo para el examen: la Guardia Civil la aplica a diario, y el Código de Conducta pide «particular atención» a estas víctimas.

La respuesta corta: es una ley **integral**. No solo castiga; también previene, protege, asiste a las víctimas y crea juzgados especializados. De ahí que tenga cinco títulos, más un título preliminar.

## Qué es violencia de género según la ley (art. 1)

La ley actúa contra la violencia que, «como manifestación de la discriminación, la situación de desigualdad y las relaciones de poder de los hombres sobre las mujeres», se ejerce sobre estas por parte de quienes sean o hayan sido sus cónyuges o estén o hayan estado ligados a ellas por relaciones similares de afectividad, **aun sin convivencia**.

Comprende todo acto de violencia física y psicológica, incluidas las agresiones a la libertad sexual, las amenazas, las coacciones o la privación arbitraria de libertad. Desde 2021 incluye también la violencia ejercida sobre familiares o allegados menores de edad con el objetivo de causar perjuicio o daño a las mujeres (art. 1.4, añadido por la LO 8/2021).

El artículo 2 recoge los fines: sensibilización, derechos de las víctimas, servicios sociales, derechos laborales y económicos, tutela institucional, marco penal y procesal y coordinación de recursos.

## Estructura de la ley

| Título | Artículos | Contenido |
|---|---|---|
| Preliminar | 1 y 2 | Objeto y principios rectores |
| I | 3 a 16 | Sensibilización, prevención y detección (ámbitos educativo, publicitario y de medios, sanitario) |
| II | 17 a 28 ter | Derechos de las mujeres víctimas: información, asistencia social integral, asistencia jurídica, derechos laborales y de Seguridad Social, ayudas, vivienda |
| III | 29 a 32 | Tutela institucional |
| IV | 33 a 42 | Tutela penal |
| V | 43 a 72 | Tutela judicial |

## Los puntos que más te interesan como futuro guardia civil

### Tutela institucional (título III)

- **Delegación del Gobierno contra la Violencia de Género** (art. 29) y **Observatorio Estatal de Violencia sobre la Mujer** (art. 30), que informa anualmente al Gobierno y a las comunidades autónomas.
- **Fuerzas y Cuerpos de Seguridad** (art. 31): el Gobierno establecerá, en las del Estado, **unidades especializadas** en la prevención de la violencia de género y en el control de la ejecución de las medidas judiciales. Las policías locales cooperan en asegurar el cumplimiento de esas medidas. La actuación debe tener en cuenta el protocolo de actuación y coordinación con los órganos judiciales.
- **Planes de colaboración** (art. 32), con protocolos que implican a sanidad, justicia, fuerzas de seguridad y servicios sociales.

### Derechos de las víctimas (título II)

El artículo 17.3 declara **servicios esenciales** los de información y orientación, atención psicosocial inmediata, telefónica y en línea, asesoramiento jurídico 24 horas y acogida. Después vienen los derechos a la información (art. 18), a la atención integral (art. 19), la atención sanitaria (art. 19 bis) y la asistencia jurídica (art. 20).

### Tutela judicial (título V)

Crea los **Juzgados de Violencia sobre la Mujer** (art. 43, que añade el art. 87 bis a la LOPJ) y fija su competencia penal y civil (art. 44). Regula también la **orden de protección** (art. 62) y medidas como la salida del domicilio y el alejamiento (art. 64), la suspensión de la patria potestad o la custodia (art. 65) o del derecho a la **tenencia, porte y uso de armas** (art. 67), lo que enlaza con el tema 22.

## Cómo estudiarla

1. Haz un esquema por títulos, con los artículos de cada uno, como la tabla anterior.
2. Memoriza la definición del art. 1 casi literalmente, con sus matices (sin convivencia, menores).
3. Contrasta con [igualdad efectiva de mujeres y hombres](/blog/igualdad-efectiva-de-mujeres-y-hombres-claves-de-la-ley) y con [derecho penal](/blog/derecho-penal-para-guardia-civil-delito-penas-y-grados).
4. Practica con test propios por título.

El texto consolidado ha sido modificado varias veces (por ejemplo, por la LO 8/2015, la LO 8/2021 y la LO 10/2022): trabaja siempre sobre la versión vigente. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) la actualiza.

## Preguntas frecuentes

### ¿La ley exige convivencia entre agresor y víctima?

No. El artículo 1.1 incluye a quienes sean o hayan sido cónyuges o estén o hayan estado ligados por relaciones similares de afectividad «aun sin convivencia».

### ¿Qué órganos judiciales crea?

Los Juzgados de Violencia sobre la Mujer, que conocen de instrucción de delitos y de determinados asuntos civiles (arts. 43 y 44).

### ¿Qué papel tiene la Guardia Civil?

Como Fuerza y Cuerpo de Seguridad del Estado, forma parte de las unidades especializadas y de los protocolos de actuación previstos en los artículos 31 y 32.

### ¿Entra la ley entera?

Según el programa recogido en nuestro [temario](/temario-guardia-civil), la LO 1/2004 entra «completa». Comprueba la convocatoria vigente.',
   NULL, NULL, 'publicado', '2026-12-27T06:07:00.000Z', 'acceso-guardia-civil',
   ARRAY['violencia de género', 'lo 1/2004', 'temario', 'víctimas']::text[], '{"title":"Violencia de género LO 1/2004: resumen para opositores","description":"LO 1/2004 para opositores a Guardia Civil: definición de violencia de género, cinco títulos, derechos de las víctimas, unidades policiales y juzgados."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('vocabulario-y-phrasal-verbs-frecuentes-en-el-examen-de-ingles', 'articulo', '"Vocabulario y phrasal verbs útiles para el examen de inglés"', 'Con 20 preguntas de nivel ESO, no hace falta un vocabulario enorme, sino el cotidiano bien asentado. Una lista corta de phrasal verbs, pares de palabras que se confunden y un método para memorizarlos sin agobiarte.', '**Respuesta corta:** la prueba es de nivel compatible con la ESO, así que lo rentable es dominar el vocabulario de uso diario y unos cuantos *phrasal verbs* comunes, no listas de palabras raras. Memoriza en contexto, con frases, y repasa a menudo.

Todos los ejemplos de abajo son **propios**, preparados para practicar. No son preguntas oficiales. Si aún no tienes la base gramatical, empieza por [los tiempos verbales](/blog/gramatica-inglesa-para-la-guardia-civil-los-tiempos-verbales).

## Qué vocabulario merece tu tiempo

La convocatoria no publica una lista de palabras. Lo único oficial es el nivel (ESO, según el Real Decreto 217/2022) y el formato (20 preguntas tipo test de cuatro opciones, según el [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)). Con eso, la apuesta segura es:

- Vida diaria: familia, casa, trabajo, estudios, ocio, compras, viajes, salud.
- Verbos de uso corriente y sus preposiciones.
- Cuantificadores y conectores básicos (*although*, *however*, *because*, *so*).

## Phrasal verbs de uso común

Un *phrasal verb* es un verbo + partícula que cambia el significado. Estos son comunes en inglés general:

| Phrasal verb | Significado | Ejemplo |
| --- | --- | --- |
| look for | buscar | *I''m looking for my keys.* |
| look after | cuidar | *She looks after her grandmother.* |
| give up | rendirse, dejar | *Don''t give up now.* |
| find out | descubrir, averiguar | *I found out the answer yesterday.* |
| turn on / turn off | encender / apagar | *Turn off the light, please.* |
| take off | despegar; quitarse (ropa) | *The plane takes off at nine.* |
| put off | aplazar | *They put off the meeting until Monday.* |
| carry on | continuar | *Carry on reading.* |
| run out of | quedarse sin | *We ran out of milk.* |
| fill in | rellenar | *Please fill in this form.* |
| call off | cancelar | *The match was called off because of the rain.* |
| break down | averiarse | *Our car broke down on the motorway.* |
| come across | encontrarse con (por casualidad) | *I came across an old photo.* |
| work out | resolver; hacer ejercicio | *I can''t work out this problem.* |

Algunos tienen más de un sentido (*take off*, *work out*): aprende primero el más frecuente y el resto, cuando te los encuentres.

## Pares de palabras que se confunden

Aquí fallan hasta quienes llevan años con el idioma:

- ***Make* y *do***: *make a mistake*, *make a decision*; *do homework*, *do the dishes*.
- ***Say* y *tell***: *say hello*; *tell me the truth* (*tell* lleva destinatario).
- ***Borrow* y *lend***: *Can I borrow your pen?* (pedir prestado); *Can you lend me your pen?* (prestar).
- ***Bring* y *take***: *bring* hacia aquí, *take* hacia allí.
- ***Hear* y *listen***: *I hear a noise*; *listen to the radio*.
- ***Much* y *many***: *much water*, *many people*.
- ***Few* y *a few***, ***little* y *a little***: *I have few friends* (casi ninguno); *I have a few friends* (algunos).

## Método para memorizar sin agobiarte

1. **Frases, no palabras sueltas.** Anota el phrasal verb con una frase tuya.
2. **Diez minutos al día**, mejor que una hora el domingo. La frecuencia pesa más que la duración.
3. **Repaso espaciado**: vuelve a lo aprendido a los dos días, a la semana y al mes. Ya lo explicamos para el temario en el resto del blog, y funciona igual aquí.
4. **Cuaderno de fallos.** Cada error en un test se convierte en una ficha con su frase correcta.

## Minitest (propio) con soluciones

1. We ___ of coffee, so I went to the shop. (a) ran out (b) gave up (c) put off (d) looked after
2. Could you ___ this form, please? (a) fill in (b) carry on (c) break down (d) turn off
3. I don''t have much time: I have only ___ minutes. (a) a little (b) a few (c) much (d) a lot
4. Can I ___ your dictionary for a day? (a) lend (b) borrow (c) say (d) tell
5. The concert was ___ because of the storm. (a) called off (b) found out (c) taken off (d) come across

**Soluciones:** 1-a, 2-a, 3-b, 4-b, 5-a.

## Preguntas frecuentes

### ¿Cuántos phrasal verbs tengo que saber?
No hay cifra oficial. Una base de unos cuantos comunes, bien asentados, rinde más que una lista enorme a medias.

### ¿Los falsos amigos cuentan como vocabulario?
Sí, y son una fuente clásica de errores. Les dedicaremos un artículo propio más adelante. Y el contexto de la prueba, en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

### ¿Cuál es la mejor manera de practicar?
Tests de cuatro opciones con corrección inmediata, como los del [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil), y un cuaderno donde apuntar lo que falles.',
   NULL, NULL, 'publicado', '2027-01-14T06:13:00.000Z', 'acceso-guardia-civil',
   ARRAY['inglés', 'vocabulario', 'phrasal verbs', 'examen']::text[], '{"title":"Phrasal verbs y vocabulario para el examen de inglés","description":"Phrasal verbs y vocabulario cotidiano para preparar el inglés de la Guardia Civil: lista breve con ejemplos, pares que se confunden y método para memorizar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

