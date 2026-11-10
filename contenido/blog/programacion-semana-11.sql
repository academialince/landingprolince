-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
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

