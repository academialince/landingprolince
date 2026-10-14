-- 10 entradas nuevas del blog, programadas: cada una sale sola a las 09:00 (hora de Madrid) de su fecha.
-- La web solo muestra lo que tiene estado 'publicado' y fecha ya pasada, así que hasta entonces no se ven.
-- Pegar entero en Supabase > SQL Editor y pulsar Run. Si un slug ya existe, esa fila se salta.

insert into public.blog_posts (slug, tipo, titulo, entradilla, cuerpo, estado, publicado_en, curso, etiquetas, seo)
values
('requisitos-guardia-civil', 'articulo', 'Requisitos para ser Guardia Civil: lo que piden de verdad en 2026', 'Edad, título, carné, tatuajes, antecedentes y cuadro médico. Qué exige la convocatoria vigente, qué ya no se exige y qué conviene comprobar antes de abrir el primer tema.',
$md$Hay gente que estudia un año entero y descubre en la última fase que no podía entrar. No por el examen. Por un requisito que nunca leyó entero.

Los requisitos se leen en diez minutos. Hazlo antes de comprar el primer libro. Todo lo que sigue sale de la convocatoria de 2026 de la Escala de Cabos y Guardias (Resolución 160/38243/2026, BOE de 8 de mayo de 2026) y de la orden que regula el proceso.

## Cuándo tienes que cumplirlos

Este detalle se pasa por alto y es importante: los requisitos se tienen que cumplir **en la fecha en que termina el plazo de solicitudes** y **mantenerse durante todo el proceso y la formación**.

No vale «lo tendré para cuando salgan las notas». Si el último día del plazo no tienes el carné o el título, estás fuera, aunque luego apruebes.

## Los requisitos generales, uno a uno

| Requisito | Qué dice la convocatoria 2026 |
|---|---|
| Nacionalidad | Española |
| Edad mínima | 18 años cumplidos en 2026 |
| Edad máxima | No cumplir 41 años durante 2026 |
| Titulación | ESO o superior, o cualquier otra vía de acceso a FP de Grado Medio |
| Carné | Permiso de conducción de la clase B |
| Antecedentes | Carecer de antecedentes penales |
| Compromiso | Portar armas y, en su caso, llegar a utilizarlas |
| Aptitud | Aptitud psicofísica según el cuadro médico de exclusiones |

### Edad: se cuenta por año, no por cumpleaños

La edad funciona por año natural. En la convocatoria de 2026 tienes que cumplir 18 años en algún momento de 2026 y no cumplir 41 en ese mismo año.

Traducido a fechas de nacimiento: podías presentarte en 2026 si naciste entre 1986 y 2008, ambos incluidos. Si naciste en 1985, cumples 41 en 2026 y te quedas fuera, aunque tu cumpleaños sea en diciembre.

Cada convocatoria fija sus años. Haz la cuenta con la tuya.

### Titulación: no hace falta Bachillerato

Se pide cumplir alguno de los requisitos para acceder a un ciclo de Formación Profesional de Grado Medio. Lo más habitual es el **título de Graduado en ESO** o cualquier nivel superior, pero no es la única vía: la convocatoria admite las demás que dan acceso a Grado Medio.

Si tienes dudas con un título antiguo o extranjero, resuélvelas ahora. Una homologación puede tardar meses.

### Carné B: el requisito que más gente descubre tarde

El permiso de conducción de la clase B tiene que estar **en tu mano al cerrar el plazo de solicitudes**. No en trámite, no aprobado el teórico: el permiso.

Si no lo tienes, sácalo en paralelo a los primeros meses de estudio. Es el único requisito que depende de un examen ajeno a la oposición y de los plazos de Tráfico.

### Antecedentes y otras exclusiones

Además de no tener antecedentes penales, la convocatoria exige:

- No estar procesado en un procedimiento judicial por delito doloso.
- No haber sido separado del servicio por expediente disciplinario ni estar inhabilitado para funciones públicas.
- No estar privado de los derechos civiles.
- No haber causado baja en un centro docente de formación por determinados motivos que fija la convocatoria.

Los antecedentes penales cancelados ya no constan. Si tuviste alguno, comprueba su situación en el Registro Central de Penados antes de presentarte.

## ¿Sigue existiendo la estatura mínima?

No. Es de las dudas que más se repiten y la respuesta es clara: la estatura mínima **se eliminó en octubre de 2023**.

Hasta entonces, el cuadro médico excluía a los hombres de menos de 1,60 m, a las mujeres de menos de 1,55 m y a cualquiera de más de 2,03 m. La Orden PCM/1133/2023 cambió ese apartado, que ahora dice literalmente: «Talla. En bipedestación: sin límite».

Si lees en alguna web que se exige 1,65 o 1,60, está desactualizada.

## Tatuajes: no se prohíben, se prohíbe su contenido

La convocatoria **no exige carecer de tatuajes**. Exige carecer de tatuajes con expresiones o imágenes contrarias a los valores constitucionales, a las autoridades o virtudes militares, que puedan atentar contra la disciplina o la imagen de la Guardia Civil, o con contenidos vedados por la ley.

Si tu tatuaje no entra en nada de eso, **se permite aunque sea visible con el uniforme**.

Otra cosa son los adornos corporales. Están prohibidos, si se ven con el uniforme, las argollas, espigas, inserciones, dilataciones, implantes microdermales o subcutáneos y las perforaciones distintas de las de los pendientes. Lo desarrollamos con ejemplos en [tatuajes y Guardia Civil](/blog/tatuajes-guardia-civil).

## El cuadro médico de exclusiones

La aptitud médica se valora con el **cuadro médico de exclusiones** del anexo I de la Orden PCI/155/2019, con sus modificaciones posteriores. Es público y se puede leer entero en el BOE.

Recorre todos los aparatos del cuerpo: piel, neurología, psiquiatría, digestivo, circulatorio, locomotor, visión, oído y más. Estos son algunos criterios concretos del texto vigente:

| Apartado | Criterio |
|---|---|
| Talla | Sin límite |
| Índice de masa corporal | Entre 17 y 30. Por encima de 30 puede admitirse si se debe a masa muscular y no a grasa |
| Agudeza visual | Superior a 0,7 en ambos ojos, con o sin corrección |
| Visión de los colores | Visión cromática normal |
| Tensión arterial | En reposo, sin superar 140 mm Hg de sistólica ni 90 de diastólica |
| Audición | Excluye pérdidas superiores al 25 % en un oído o al 18 % en ambos |

Fíjate en la vista: lo que cuenta es la agudeza «con o sin corrección». Llevar gafas o lentillas no excluye por sí solo, aunque el apartado de visión fija también límites para algunos defectos de refracción y excluye ciertas cirugías oculares. Si llevas graduación alta o te has operado, léelo despacio.

Con cualquier otra cosa (una operación antigua, una lesión, un tratamiento) haz lo sensato: lee el apartado concreto con tu médico delante. No con la opinión de un foro. Te contamos cómo funciona esa fase en [la entrevista personal y el reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil).

## Qué hacer con todo esto hoy

1. Comprueba tu año de nacimiento contra la convocatoria.
2. Localiza tu título de ESO (o el que tengas) y verifica que da acceso a Grado Medio.
3. Si no tienes el carné B, apúntate a la autoescuela esta semana.
4. Lee el cuadro médico entero. Son veinte minutos.
5. Mira tus tatuajes y piercings con la convocatoria delante.

Con eso resuelto, ya puedes ponerte con lo que de verdad cuesta: el examen. Si empiezas de cero, tienes el mapa completo en [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero), y el calendario del proceso en [la convocatoria de 2026](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

> Los requisitos pueden cambiar de una convocatoria a otra. Antes de presentarte, comprueba siempre las bases publicadas en el BOE para tu año.

## Preguntas frecuentes

### ¿Cuál es la edad máxima para entrar en la Guardia Civil?

En la convocatoria de 2026, no cumplir 41 años durante 2026. La edad se cuenta por año natural: si cumples 41 en cualquier fecha de ese año, no puedes presentarte.

### ¿Hace falta el Bachillerato para ser Guardia Civil?

No. Basta con el título de ESO o con cualquier otra vía que permita acceder a un ciclo de Formación Profesional de Grado Medio.

### ¿Puedo ser Guardia Civil si llevo gafas?

Sí, siempre que alcances la agudeza visual que exige el cuadro médico (superior a 0,7 en ambos ojos) con o sin corrección, tengas visión cromática normal y tu graduación no supere los límites del apartado de visión.

### ¿Hay una altura mínima para ser Guardia Civil?

No desde octubre de 2023. La Orden PCM/1133/2023 eliminó el límite de talla del cuadro médico de exclusiones.
$md$,
'publicado', '2026-10-15 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['requisitos','convocatoria','cuadro médico','tatuajes']::text[],
'{"title": "Requisitos Guardia Civil 2026: edad, título y médico", "description": "Requisitos Guardia Civil según la convocatoria 2026: edad, titulación, carné B, tatuajes, estatura y cuadro médico. Compruébalos antes de estudiar."}'::jsonb),

('calcular-nota-examen-guardia-civil', 'articulo', 'Cómo se calcula la nota del examen de Guardia Civil (con ejemplos)', 'Cada error resta un tercio de acierto. Con eso basta para decidir cuándo contestar y cuándo dejar en blanco, siempre que hagas bien la cuenta. Aquí la tienes, con números.',
$md$Dos opositores terminan el examen con 70 aciertos. Uno saca un 65 y el otro un 60. Saben lo mismo. La diferencia está en las preguntas que contestaron sin saberlas.

La penalización es la regla que más puntos mueve en este examen y la que menos se entrena. Vamos a hacer la cuenta.

## La fórmula oficial

La convocatoria de 2026 (Resolución 160/38243/2026, base 7.3) puntúa cada prueba tipo test con esta fórmula:

**Puntuación = Y × (A − E / (N − 1)) / T**

- **A**: aciertos.
- **E**: errores.
- **N**: opciones por pregunta. En todas, 4.
- **T**: número de preguntas.
- **Y**: puntuación máxima de la prueba.

Las preguntas en blanco no penalizan. Con cuatro opciones, N − 1 es 3: **cada error resta un tercio de acierto**. Dicho de otra forma, tres errores se comen un acierto.

## Qué pruebas usan la fórmula y qué mínimo piden

| Prueba | Preguntas (T) | Máximo (Y) | Mínimo para seguir | Valor de un acierto | Valor de un error |
|---|---|---|---|---|---|
| Conocimientos generales | 100 | 100 | 50 | +1 | −0,33 |
| Lengua inglesa | 20 | 20 | 8 | +1 | −0,33 |
| Aptitudes intelectuales (psicotécnico) | 80 | 30 | 12 | +0,375 | −0,125 |

Ortografía y gramática no entran en la fórmula. Son apto o no apto: con seis o más errores en cualquiera de las dos, quedas excluido. Lo contamos en [ortografía y gramática del examen](/blog/ortografia-gramatica-examen-guardia-civil).

La fase de oposición suma las tres notas de la tabla, hasta 150 puntos. Luego se añade el concurso de méritos, hasta 45. Esa suma es la que te ordena para pasar a las pruebas físicas y médicas. Los méritos los explicamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

## Ejemplos en conocimientos generales

Aquí Y y T valen 100, así que la cuenta es directa: aciertos menos errores entre tres.

**Ejemplo 1.** 70 aciertos, 15 errores, 15 en blanco.
70 − 15/3 = 70 − 5 = **65 puntos**.

**Ejemplo 2.** 70 aciertos, 30 errores, 0 en blanco.
70 − 30/3 = 70 − 10 = **60 puntos**.

Es el caso del principio. El segundo opositor contestó 15 preguntas más y perdió 5 puntos.

**Ejemplo 3.** Al borde del mínimo. 56 aciertos, 18 errores.
56 − 6 = **50 puntos**. Apto por los pelos. Con un solo error más, 49,67: fuera.

**Ejemplo 4.** El mismo opositor del ejemplo 3, pero dejando en blanco 9 de esas 18 que falló.
56 − 9/3 = 56 − 3 = **53 puntos**.

## Ejemplos en inglés y psicotécnico

**Inglés.** 10 aciertos y 6 errores: 10 − 2 = **8 puntos**. Apto justo. Con 7 errores, 7,67: fuera. En una prueba de 20 preguntas, cada error pesa mucho. Más en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

**Psicotécnico.** 40 aciertos y 12 errores sobre 80:
(40 − 12/3) × 30 / 80 = 36 × 0,375 = **13,5 puntos**. Supera el mínimo de 12.

Para llegar a 12 necesitas 32 «aciertos netos» (aciertos menos errores entre tres). El detalle de esa prueba está en [el psicotécnico de la Guardia Civil](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

## Cuándo contestar y cuándo dejar en blanco

Aquí está lo útil. Calculemos qué ganas de media al marcar una pregunta según cuántas opciones hayas descartado con seguridad.

| Situación | Probabilidad de acertar | Ganancia media por pregunta |
|---|---|---|
| No descartas ninguna | 1 de 4 | 0 |
| Descartas una | 1 de 3 | +0,11 |
| Descartas dos | 1 de 2 | +0,33 |
| Sabes la respuesta | casi 1 | casi +1 |

La cuenta de la primera fila: 1/4 × (+1) + 3/4 × (−1/3) = 0,25 − 0,25 = 0.

### A ciegas: ni ganas ni pierdes, pero apuestas

Contestar sin descartar nada sale a cero de media. No suma, no resta: solo añade azar. Si vas holgado, no lo necesitas. Si estás cerca del mínimo, puede salvarte o hundirte.

Pero hay un matiz importante. Ese cero supone que eliges al azar de verdad. En la práctica no lo haces: te dejas llevar por la opción que «suena», y el Tribunal construye las opciones falsas justo para que suenen. Si tu intuición cae en las trampas, tu media es negativa. Por eso la regla general sigue siendo: **sin ningún criterio, en blanco**.

### Con una opción descartada: contesta

Si has eliminado una opción con seguridad, la media ya es positiva. Con dos descartadas, claramente. Aquí dejar en blanco es regalar puntos.

La clave está en «con seguridad». Descartar porque una opción te parece rara no es descartar.

### Cerca del mínimo, cambia el cálculo

Si al repasar calculas que estás justo en 50, la cuenta deja de ser solo de medias. Un error te puede sacar. En esa situación, contesta solo lo que tengas al menos a dos opciones. Si vas muy por encima del mínimo, lo que importa es la nota final y la regla de las medias manda.

## Cómo entrenar esta decisión

No se decide el día del examen. Se entrena así:

- **Marca tu seguridad en cada test.** Al lado de cada respuesta: S (lo sé), D (dudo entre dos), A (a ciegas).
- **Corrige por categorías.** Tras veinte tests verás tu porcentaje real de acierto en las D y las A. Ese dato es tuyo y vale más que cualquier regla general.
- **Simula con la fórmula.** Cuenta siempre tu nota con penalización. Un test corregido sin restar errores te engaña.

En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) los tests y simulacros se corrigen con la fórmula de la convocatoria, para que la nota que ves sea la que sacarías. Y si aún no tienes clara la estructura de la prueba, empieza por [cómo es el examen por dentro](/blog/examen-conocimientos-guardia-civil-estructura).

> Datos de la convocatoria de 2026 (BOE de 8 de mayo de 2026). Comprueba la fórmula y los mínimos en las bases de tu año.

## Preguntas frecuentes

### ¿Cuánto resta un error en el examen de Guardia Civil?

Un tercio de acierto en conocimientos generales y en inglés. Tres errores anulan un acierto. En el psicotécnico, cada error resta 0,125 puntos.

### ¿Restan las preguntas en blanco?

No. La convocatoria dice expresamente que la pregunta no contestada no se penaliza.

### ¿Cuál es la nota mínima del examen de Guardia Civil?

50 sobre 100 en conocimientos generales, 8 sobre 20 en inglés y 12 sobre 30 en aptitudes intelectuales. Ortografía y gramática son apto o no apto: seis errores en cualquiera de ellas excluyen.

### ¿Merece la pena contestar si dudo entre dos opciones?

Sí. De media ganas un tercio de punto por pregunta. Contestar a ciegas, en cambio, no suma nada y puede restar si caes en las opciones trampa.
$md$,
'publicado', '2026-10-18 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['nota','penalización','examen','estrategia']::text[],
'{"title": "Nota examen Guardia Civil: penalización y ejemplos", "description": "Nota examen Guardia Civil: cómo funciona la penalización por error, cuándo arriesgar y cuándo dejar en blanco, con ejemplos de la convocatoria 2026."}'::jsonb),

('academia-baeza-guardia-civil', 'articulo', 'Academia de Baeza Guardia Civil: qué pasa después de aprobar', 'Has aprobado. Ahora empieza la parte que nadie te cuenta bien: dos cursos, uno en Baeza y otro de prácticas en una unidad real. Esto es lo que te espera.',
$md$Aprobar la oposición no te convierte en guardia civil. Te convierte en alumno. El día que sale tu nombre en la lista de seleccionados empieza otra carrera, más larga que la propia oposición, y que también se puede suspender.

La mayoría de los aspirantes llega a la **Academia de Baeza** sabiendo muy poco de lo que va a vivir allí. Aquí tienes lo que dice la normativa, sin leyendas de cuartel.

## ¿Qué es la Academia de Baeza?

Es el centro docente de la Guardia Civil en Baeza (Jaén) donde se forman los futuros guardias de la Escala de Cabos y Guardias. La convocatoria la llama Academia de Cabos y Guardias.

No todos los aprobados van allí. La convocatoria cita dos centros de incorporación: Baeza y el Colegio de Guardias Jóvenes «Duque de Ahumada», en Valdemoro (Madrid), donde se forman los alumnos del Colegio. Si vienes por acceso libre o por el cupo de militares, lo normal es que tu destino sea Baeza. Si te interesa la otra vía, la explicamos en [cómo se accede al Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil).

## ¿Cuándo te incorporas?

La fecha la fija la resolución de aspirantes seleccionados. En la convocatoria de 2026, la incorporación a los centros docentes quedó fijada el 13 de octubre de 2026.

Ese mismo día causas alta administrativa como alumno. Y desde ese momento quedas sujeto al régimen general de derechos y deberes de la Guardia Civil, a las leyes penales militares y al régimen disciplinario del Cuerpo. No es una forma de hablar: desde el primer día respondes como miembro de la Institución.

Si vienes de las Fuerzas Armadas, tu compromiso previo se resuelve al ser nombrado alumno.

## ¿Cuánto dura la formación en Baeza?

El plan de estudios está regulado por la Orden PCM/576/2021 y se divide en **dos cursos académicos**, con un total de 2.416 horas.

| Periodo | Dónde | Qué incluye |
|---|---|---|
| Primer curso | Presencial en la academia | 1.141 horas, incluidas 13,2 semanas de Instrucción y Adiestramiento |
| Segundo curso | Unidades de la Guardia Civil | 40 semanas de prácticas y 255 horas a distancia del módulo de Servicio Operativo |

Es decir: un curso entero en Baeza y otro curso entero trabajando en una unidad, con formación a distancia en paralelo.

### ¿Qué se estudia en el primer curso?

Hay módulos de formación militar y de cuerpo de seguridad, fundamentos jurídicos, organización y prevención, investigación y tecnología, lengua inglesa, formación física e instrucción y adiestramiento. Traducido: derecho aplicado al servicio, tiro, defensa personal, procedimientos operativos, educación física y mucha instrucción.

La parte jurídica no parte de cero. Lo que estudiaste para la oposición —Constitución, derechos humanos, derecho penal, procedimiento— vuelve a aparecer, pero ahora aplicado a intervenciones reales. Si llegas con el temario fresco, lo notarás.

## ¿Cómo son las prácticas?

El segundo curso son **40 semanas de prácticas** en la unidad que se te asigne. Sales a patrullar con guardias veteranos, aprendes el servicio de verdad y completas en paralelo el módulo de Servicio Operativo a distancia.

Un detalle que mucha gente no sabe: al terminar las prácticas, el alumno permanece en esa unidad hasta obtener su primer destino tras ingresar en la Escala. Lo que pasa después lo contamos en [destinos y especialidades de la Guardia Civil](/blog/destinos-especialidades-guardia-civil).

## ¿Se puede suspender en Baeza?

Sí. Y conviene saberlo antes de entrar.

La evaluación es continua. Cada asignatura tiene un número máximo de convocatorias:

- La mayoría de asignaturas: hasta cuatro convocatorias.
- Instrucción y Adiestramiento y Servicio Operativo: dos convocatorias.
- Formación Física: cuatro.

Además, la nota de cada asignatura se pondera según la convocatoria en que la apruebes. Aprobar a la primera cuenta al 100 %. A la segunda, al 90 %. A la tercera, al 80 %. A la cuarta, al 70 %. Esa nota pesa en tu clasificación final.

También existe el Informe Personal del Alumno (IPA), que valora tus cualidades y actitud. No es decorativo: una segunda evaluación negativa del IPA abre un expediente de baja.

Tienes un plazo máximo de **tres cursos académicos** para superar el plan. Ese plazo puede ampliarse un curso si tuviste que repetir por accidente, lesión grave o enfermedad acreditados.

### Motivos de baja que recoge el plan de estudios

- Agotar las convocatorias de una asignatura.
- Una segunda evaluación negativa del IPA.
- Superar el plazo máximo de permanencia.
- No superar el Servicio Operativo tras sus dos convocatorias.

Y ojo con la asistencia: si faltas a más del 30 % de los periodos de Instrucción y Adiestramiento o de Servicio Operativo, repites curso.

## ¿Qué régimen de vida hay en la academia?

Es un centro de formación de un instituto armado. Eso significa horarios fijos, uniformidad, formaciones, disciplina y jerarquía desde el primer día. Al ser nombrado alumno recibes con carácter eventual el empleo de Guardia Civil Alumno, con efectos académicos, de prácticas y retributivos.

La adaptación cuesta más a quien llega sin rutina. Si durante la oposición has estudiado con horario fijo y has entrenado de verdad, el salto es mucho menor.

## ¿Qué llevar a Baeza?

La lista oficial de documentación y efectos la marca cada año la resolución de seleccionados y las instrucciones que te envía el centro. Léela entera y no te fíes de listas de foros de hace cinco años.

Lo que no suele fallar:

- **Toda la documentación** que te pidan, original y copia, en una carpeta. DNI, permiso de conducir y lo que indique la resolución.
- **Ropa deportiva y calzado ya usado.** Unas zapatillas nuevas el primer día son una invitación a las ampollas.
- **Útiles de aseo** y lo básico para los primeros días.
- **Material de estudio** sencillo: libreta, bolígrafos, subrayadores.
- **Algo de dinero** para los primeros gastos.

Y lo más importante no va en la maleta: llegar en forma. Hay quien deja de entrenar al aprobar las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) y llega a Baeza meses después en peor estado que el día del examen. La Formación Física es una asignatura evaluable, con sus convocatorias.

## ¿Cómo prepararte en los meses de espera?

Entre el examen y la incorporación pasan meses. Úsalos:

1. **Mantén el entrenamiento** tres o cuatro días por semana. Carrera continua, fuerza básica, natación.
2. **No tires el temario.** Repasa la Constitución y la parte jurídica una vez por semana. En Baeza te lo vuelven a pedir.
3. **Ordena tu vida práctica.** Vivienda, trabajo, papeles. Cuanto menos ruido tengas fuera, mejor rendirás dentro.
4. **Duerme con horario.** Parece una tontería hasta que te toca levantarte a la misma hora todos los días.

Y si todavía estás preparando la oposición, piensa en Baeza como el objetivo real. En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) trabajamos el temario pensando también en lo que viene después, no solo en el día del examen.

## Preguntas frecuentes

### ¿Cuánto dura la Academia de Baeza de la Guardia Civil?

La formación completa son dos cursos académicos. El primero es presencial en Baeza (1.141 horas). El segundo son 40 semanas de prácticas en unidades, con formación a distancia.

### ¿Se cobra durante la formación en Baeza?

Sí. Al ser nombrado alumno recibes con carácter eventual el empleo de Guardia Civil Alumno, que tiene efectos retributivos. La cuantía depende de la normativa de retribuciones vigente en cada momento.

### ¿Qué pasa si suspendo una asignatura en Baeza?

Puedes volver a presentarte hasta agotar las convocatorias de esa asignatura (cuatro en la mayoría, dos en Instrucción y Adiestramiento y en Servicio Operativo). Cada convocatoria adicional rebaja el peso de la nota.

### ¿Todos los aprobados van a Baeza?

No. La convocatoria fija dos centros de incorporación: la Academia de Baeza y el Colegio de Guardias Jóvenes de Valdemoro, donde se forman los alumnos del Colegio. Quien entra por acceso libre o por el cupo de militares va a Baeza.
$md$,
'publicado', '2026-10-21 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['academia de baeza','formación','prácticas','guardia alumno']::text[],
'{"title": "Academia de Baeza Guardia Civil: curso, prácticas y régimen", "description": "Academia de Baeza Guardia Civil: cuánto dura la formación, cómo son las prácticas, qué régimen tendrás y qué preparar antes de incorporarte."}'::jsonb),

('sueldo-guardia-civil', 'articulo', 'Sueldo de un guardia civil: de qué se compone y por qué varía tanto', 'Sueldo base, complemento de destino, complemento específico, productividad. Qué cobras como alumno en Baeza, qué cambia al llegar al destino y por qué dos guardias del mismo empleo no ganan lo mismo.',
$md$Busca «sueldo guardia civil» y te saldrán cinco cifras distintas en cinco webs distintas. Algunas no coinciden ni en el sueldo base. Ninguna te dice de dónde sale el número.

Aquí vamos al revés: primero entiendes cómo se construye una nómina de la Guardia Civil, concepto a concepto y con la norma que lo regula. Con eso podrás leer cualquier cifra que veas y saber si tiene sentido.

## Por qué no te damos una cifra cerrada

Porque no existe una. El sueldo de un guardia civil es la suma de varios conceptos, y varios de ellos dependen del puesto concreto, de la provincia, de los años de servicio y de los servicios que hagas ese mes.

Además, las cuantías se actualizan cada año. El Real Decreto-ley 14/2025 fijó para el sector público una subida del 2,5 % en 2025 y de hasta el 1,5 % en 2026, con un 0,5 % adicional si el IPC de 2026 llega al 1,5 %. Cualquier cifra de 2024 ya está desfasada.

Las tablas oficiales actualizadas las publica el Ministerio de Hacienda en el Portal de la Administración Presupuestaria. Si alguien te da un número sin fuente, desconfía.

## Los conceptos de una nómina de guardia civil

La norma de referencia es el Real Decreto 950/2005, de retribuciones de las Fuerzas y Cuerpos de Seguridad del Estado. Divide lo que cobras en dos bloques.

### Retribuciones básicas

- **Sueldo.** Lo fija cada año la Ley de Presupuestos según el grupo de clasificación. Los empleos de guardia civil y cabo están en el grupo C.
- **Trienios.** Una cantidad fija por cada tres años de servicio.
- **Pagas extraordinarias.** Dos al año.

### Retribuciones complementarias

- **Complemento de destino.** Va por niveles. Al empleo de guardia civil le corresponde el **nivel 17**; al de cabo, el **nivel 19**.
- **Complemento específico, componente general.** Retribuye el riesgo, la dedicación y las peculiaridades de la función. Depende solo del empleo: todos los guardias cobran el mismo.
- **Complemento específico, componente singular.** Retribuye las condiciones particulares de ciertos puestos: dificultad técnica, responsabilidad, peligrosidad o penosidad. Aquí está buena parte de la diferencia entre unos destinos y otros.
- **Productividad.** Premia el rendimiento y la dedicación extraordinaria. La cuantía individual la fija el Ministerio del Interior.
- **Gratificaciones por servicios extraordinarios.** Son excepcionales y no fijas.

### Otras percepciones

El mismo real decreto incluye las **indemnizaciones por razón del servicio, de residencia y de vestuario**. La de residencia es la que más se nota: se cobra en determinados territorios, como Canarias, Baleares, Ceuta y Melilla.

## Qué cobras como alumno en Baeza

Aquí hay mucha información equivocada. La regla está en el Reglamento de ordenación de la enseñanza en la Guardia Civil (Real Decreto 131/2018), y es sencilla.

| Fase | Qué percibes | Norma |
|---|---|---|
| Alumno en el centro docente (Baeza) | Sueldo y pagas extraordinarias del empleo de guardia civil | Art. 81.2 RD 131/2018 |
| Guardia alumno en prácticas en una unidad | Lo anterior + complementarias generales del empleo + complementarias del puesto | Art. 81.3 RD 131/2018 |
| Ya en la escala | Nómina completa del puesto | RD 950/2005 |

Traducido: **en Baeza cobras el sueldo base y las pagas extra, pero no los complementos**. Por eso la cifra de alumno es claramente más baja que la de un guardia destinado.

Dos detalles más del mismo reglamento:

- Si entras por acceso directo, **no generas trienios durante la formación**. Al acceder a la escala, el tiempo se cuenta desde tu nombramiento como guardia civil eventual.
- En prácticas, el salto es grande porque empiezas a cobrar los complementos de un puesto real.

Si quieres saber cómo es el día a día en la academia, lo contamos en [la vida en la Academia de Baeza](/blog/academia-baeza-guardia-civil).

## Por qué dos guardias no cobran lo mismo

Con el mismo empleo, el sueldo base, el complemento de destino y el componente general son iguales para todos. Lo que mueve la nómina es esto:

1. **El puesto.** El componente singular cambia según la unidad y la función. Una especialidad o un puesto con más responsabilidad o penosidad suele llevar más.
2. **El lugar.** La indemnización por residencia en Canarias, Baleares, Ceuta o Melilla.
3. **La antigüedad.** Cada trienio suma.
4. **Los servicios.** Productividad y gratificaciones dependen de lo que hagas y de cuándo lo hagas: noches, festivos, servicios extraordinarios.
5. **El empleo.** Ascender a cabo sube el nivel de destino (del 17 al 19) y el componente general.

Por eso las comparaciones entre compañeros engañan. Si quieres ver qué opciones hay al salir de la academia, tienes una guía de [destinos y especialidades de la Guardia Civil](/blog/destinos-especialidades-guardia-civil).

## Cómo leer las cifras que veas por internet

Antes de creerte un número, hazle tres preguntas:

- **¿De qué año es?** Si no lo dice, no vale. Las cuantías suben casi todos los años.
- **¿Es bruto o neto?** La diferencia depende de tu retención de IRPF y de las cotizaciones, que cambian con tu situación personal.
- **¿Qué conceptos incluye?** ¿Con o sin pagas extra prorrateadas? ¿Con qué componente singular? ¿Con productividad?

Una cifra que no responde a esas tres preguntas sirve de poco.

## Lo que importa mientras opositas

El sueldo es una buena razón para presentarse, pero no se cobra hasta aprobar. Y lo que separa a quien aprueba de quien no es la constancia de meses, no la motivación del primer día. Si estás empezando, lee primero [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) y mira [cuántas plazas hay en 2026](/blog/convocatoria-guardia-civil-2026-plazas-calendario). Si quieres prepararla con método, en el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) tienes temario, tests y simulacros.

> Este artículo explica la estructura retributiva vigente en 2026. Las cuantías concretas se actualizan cada año: consúltalas en las tablas oficiales del Ministerio de Hacienda y en el BOE.

## Preguntas frecuentes

### ¿Cuánto cobra un alumno en la Academia de Baeza?

El sueldo y las pagas extraordinarias del empleo de guardia civil, sin los complementos del puesto (art. 81.2 del RD 131/2018). La cuantía exacta depende de las tablas de cada año.

### ¿Cobran más los guardias destinados en Canarias, Baleares, Ceuta o Melilla?

Sí. En esos territorios se percibe una indemnización por residencia, prevista en el Real Decreto 950/2005.

### ¿Qué nivel de complemento de destino tiene un guardia civil?

El nivel 17, según el anexo II del Real Decreto 950/2005. El cabo tiene el nivel 19.

### ¿Se cobran trienios durante la academia?

No, si entras por acceso directo. Al incorporarte a la escala, el tiempo se computa desde tu nombramiento como guardia civil eventual.
$md$,
'publicado', '2026-10-24 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['sueldo','retribuciones','academia de baeza','destinos']::text[],
'{"title": "Sueldo guardia civil: cómo se calcula y qué lo cambia", "description": "Sueldo guardia civil concepto a concepto: qué cobras en Baeza, qué sumas en el destino y por qué dos guardias cobran distinto. Con la norma de cada dato."}'::jsonb),

('errores-preparar-oposicion-guardia-civil', 'articulo', 'Errores en la oposición a Guardia Civil que te cuestan la plaza', 'La mayoría no suspende por falta de horas, sino por estudiar mal. Estos son los errores que vemos cada año y cómo evitarlos antes de que te cuesten la plaza.',
$md$Hay gente que estudia seis horas al día durante un año y se queda fuera. Y hay gente que estudia la mitad y aprueba. La diferencia casi nunca es el talento. Es que unos cometen errores que los otros evitan.

Ninguno de estos errores parece grave cuando lo cometes. Todos se pagan el día del examen. Vamos uno por uno.

## 1. Dejar las pruebas físicas para el final

Es el error más caro. La lógica parece razonable: «primero apruebo el examen y luego entreno». El problema es el calendario. Entre el examen de conocimientos y las pruebas físicas no hay tiempo de pasar de cero a dar las marcas.

Además, el físico no se gana en un mes. Las mejoras en carrera y en fuerza llegan con semanas de constancia, y una lesión por querer recuperar el tiempo perdido te deja fuera igual.

**Qué hacer:** entrena desde el primer día de preparación, tres o cuatro sesiones por semana. Las marcas y un plan de trabajo están en [pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## 2. No hacer simulacros en condiciones reales

Hacer test sueltos no es lo mismo que hacer un examen. El examen de conocimientos dura 140 minutos e incluye ortografía, gramática, 100 preguntas de conocimientos, 20 de inglés y la prueba psicotécnica de aptitudes. Llegar al minuto 100 con la cabeza fresca se entrena.

Quien no hace simulacros descubre el día del examen que no sabe repartir el tiempo, que se agobia con las dudas o que se cansa en la última parte.

**Qué hacer:** a partir del segundo o tercer mes, un simulacro completo cada una o dos semanas. Con reloj, sin móvil, sin pausas. Después, analiza los fallos uno a uno. Tienes la estructura completa en [cómo es el examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## 3. Ignorar la ortografía y la gramática

En ortografía y en gramática, seis errores o más te dejan «no apto». No importa lo bien que hayas hecho el resto. Y aquí cuenta como error tanto no marcar una falta como marcar una palabra que estaba bien.

Mucha gente lo despacha con un «yo escribo bien». Escribir bien y detectar bajo presión una tilde diacrítica o un dequeísmo en una frase trampa son cosas distintas.

**Qué hacer:** quince minutos al día de ortografía y gramática desde el principio. Es poco tiempo y elimina el riesgo más tonto de toda la oposición. Lo explicamos a fondo en [ortografía y gramática del examen](/blog/ortografia-gramatica-examen-guardia-civil).

## 4. Dejar el inglés para «cuando acabe el temario»

La prueba de inglés tiene 20 preguntas y exige un mínimo de 8 puntos sobre 20, con penalización por error. No es un nivel imposible, pero si llevas años sin tocar el idioma, no se recupera en tres semanas.

**Qué hacer:** dos o tres sesiones cortas por semana de gramática básica (tiempos verbales, preposiciones, comparativos, modales) y test del tipo que pone el Tribunal. Más detalle en [inglés para la oposición](/blog/ingles-oposicion-guardia-civil).

## 5. Subrayar y releer en lugar de repasar

Subrayar da sensación de trabajo. Releer da sensación de dominio. Las dos sensaciones son falsas. Que un texto te suene no significa que sepas responder una pregunta sobre él con cuatro opciones parecidas.

**Qué hacer:** cambia la lectura pasiva por recuperación activa. Cierra el tema y pregúntate qué recuerdas. Haz test. Explica el artículo en voz alta. En [cómo memorizar leyes para la oposición](/blog/memorizar-leyes-oposiciones) tienes el método completo.

## 6. Estudiar todos los temas igual

No todos los temas pesan lo mismo ni cuestan lo mismo. Dedicar una semana a un tema que cae poco y tres días a la Constitución es un mal reparto.

**Qué hacer:** revisa qué ha preguntado el Tribunal en convocatorias anteriores y ajusta las horas. Los temas jurídicos largos (Constitución, derecho penal, procedimiento) necesitan más vueltas. Si estás empezando, ordena el plan con la guía para [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero).

## 7. No repasar lo ya estudiado

Terminas el tema 1, pasas al 2, al 3… y cuando llegas al 15 el tema 1 ha desaparecido. Es la curva del olvido y le pasa a todo el mundo.

**Qué hacer:** reserva parte de cada semana a repasar temas antiguos. Una regla sencilla: cada día, un rato a lo nuevo y otro rato a lo viejo.

## 8. Contestar todo en el test

En conocimientos e inglés, las respuestas incorrectas penalizan y las que dejas en blanco no. Contestar a ciegas para «no dejar huecos» puede bajarte la nota.

**Qué hacer:** entrena en los simulacros tu criterio de riesgo. Si puedes descartar dos opciones, contestar suele compensar. Si no tienes ni idea, mejor en blanco. Saber calcular tu nota ayuda mucho: está explicado en [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil).

## 9. Olvidarte del psicotécnico, la entrevista y el reconocimiento

El psicotécnico de aptitudes tiene 80 preguntas en 55 minutos y exige un mínimo. Se mejora con práctica, como todo. Y después del examen vienen la entrevista personal y el reconocimiento médico, que también eliminan.

**Qué hacer:** practica psicotécnicos desde el principio, aunque sea poco. Y revisa con tiempo el cuadro médico de exclusiones por si hay algo que debas comprobar antes.

## Tabla resumen: error y corrección

| Error | Por qué te cuesta la plaza | Corrección |
|---|---|---|
| Dejar el físico | No da tiempo a llegar a las marcas | Entrenar desde el día 1 |
| Sin simulacros | Mala gestión del tiempo y la presión | Simulacro completo cada 1-2 semanas |
| Ignorar ortografía | 6 errores = no apto | 15 minutos diarios |
| Inglés al final | Mínimo de 8 sobre 20 | 2-3 sesiones por semana |
| Subrayar y releer | Falsa sensación de dominio | Test y recuperación activa |
| No repasar | Olvidas lo estudiado | Repaso semanal de temas antiguos |
| Contestar todo | Los errores restan | Criterio de riesgo entrenado |

## El error de fondo: estudiar sin sistema

Casi todos estos errores tienen la misma raíz: estudiar sin un plan que diga qué toca cada día, cuándo se repasa y cuándo se mide. Sin plan, decides según el ánimo, y el ánimo siempre elige lo cómodo: leer, subrayar, dejar el físico para mañana.

Si trabajas, el plan es todavía más importante: lo explicamos en [cómo preparar la oposición trabajando](/blog/plan-estudio-guardia-civil-trabajando). Y si prefieres tener ese sistema ya montado, con simulacros y seguimiento, es exactamente lo que hacemos en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuál es el error más común al preparar la oposición a Guardia Civil?

Dejar las pruebas físicas para después del examen. No da tiempo a recuperar la forma y cada año deja fuera a gente que había aprobado los conocimientos.

### ¿Cuántos errores te dejan fuera en ortografía?

En la convocatoria de 2026, seis o más errores en ortografía, o seis o más en gramática, suponen «no apto». Cuenta como error tanto no marcar una falta como marcar una palabra correcta.

### ¿Es mejor dejar preguntas en blanco en el test?

Depende. Las incorrectas penalizan y las no contestadas no. Si puedes descartar opciones, suele compensar arriesgar; si no, es mejor dejarla en blanco.

### ¿Cada cuánto debo hacer simulacros?

Desde el segundo o tercer mes de preparación, uno completo cada una o dos semanas, y más seguidos en el último mes.
$md$,
'publicado', '2026-10-27 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['errores','estudio','simulacros','preparación']::text[],
'{"title": "Errores oposición Guardia Civil: los 9 más comunes", "description": "Errores oposición Guardia Civil: los fallos que más plazas cuestan cada año (físico, simulacros, ortografía, inglés) y cómo corregirlos a tiempo."}'::jsonb),

('constitucion-oposicion-guardia-civil', 'articulo', 'Constitución en la oposición a Guardia Civil: qué cae y cómo estudiarla', 'Es uno de los temas que más preguntas aporta al examen y de los más previsibles. El Tribunal vuelve una y otra vez a los mismos artículos. Estos son y así se trabajan.',
$md$La Constitución tiene 169 artículos. El Tribunal no los pregunta por igual. Hay artículos que salen casi todos los años y Títulos enteros que aparecen muy de vez en cuando.

Estudiarla de la primera a la última línea con la misma intensidad es la forma más lenta de prepararla. Aquí tienes dónde poner el foco.

## Qué entra exactamente

La Constitución está en el tema de **Derecho Constitucional** del programa, que incluye:

- La **Constitución Española de 1978, completa**: preámbulo, articulado y disposiciones.
- La **Ley Orgánica 3/1981, del Defensor del Pueblo** (Títulos I a III y disposición final única).
- La **Ley Orgánica 1/1982**, de protección civil del derecho al honor, a la intimidad personal y familiar y a la propia imagen.

Es, con Derechos Humanos y Procesal Penal, de los temas que más preguntas aportan cada año.

## La estructura que tienes que saber de memoria

El Tribunal pregunta directamente por la estructura: «¿en qué Título se regula…?», «¿cuántas disposiciones transitorias tiene?». Esto tiene que salirte sin pensar:

| Parte | Artículos | Contenido |
|---|---|---|
| Título Preliminar | 1-9 | Principios del Estado |
| Título I | 10-55 | Derechos y deberes fundamentales |
| Título II | 56-65 | La Corona |
| Título III | 66-96 | Las Cortes Generales |
| Título IV | 97-107 | Gobierno y Administración |
| Título V | 108-116 | Relaciones Gobierno-Cortes |
| Título VI | 117-127 | Poder Judicial |
| Título VII | 128-136 | Economía y Hacienda |
| Título VIII | 137-158 | Organización territorial |
| Título IX | 159-165 | Tribunal Constitucional |
| Título X | 166-169 | Reforma constitucional |

Además: cuatro disposiciones adicionales, nueve transitorias, una derogatoria y una final.

## Los artículos que más pregunta el Tribunal

Revisando los exámenes oficiales de los últimos años, el Tribunal vuelve siempre a los mismos bloques.

### Corona (arts. 56-65)

Sucesión, Regencia (art. 59), tutela del Rey menor y funciones del Rey (art. 62). La Regencia se ha preguntado varias veces: quién la ejerce en la minoría de edad y qué pasa si el Rey se inhabilita y las Cortes lo reconocen.

### Cortes Generales (arts. 66-96)

Es el bloque con más cifras y por eso con más preguntas:

- Congreso: elecciones **entre 30 y 60 días** desde que termina el mandato, y convocatoria del Congreso electo **dentro de los 25 días** siguientes a las elecciones (art. 68).
- Senado: composición (art. 69).
- Iniciativa legislativa popular: **500.000 firmas** (art. 87).
- Decretos-leyes: convalidación en **30 días** (art. 86).

### Derechos y su suspensión (arts. 53 y 55)

Qué derechos tienen recurso de amparo, qué se puede alegar ante los tribunales y qué derechos se suspenden en los estados de excepción y sitio, o de forma individual en investigaciones de terrorismo (art. 55.2).

### Gobierno y control (arts. 97-116)

Cese y composición del Gobierno, moción de censura (propuesta por **la décima parte** de los diputados, con candidato incluido) y cuestión de confianza. Y el art. 116, el más preguntado del bloque:

| Estado | Quién lo declara | Duración |
|---|---|---|
| Alarma | Gobierno, dando cuenta al Congreso | Máximo 15 días; prórroga con autorización del Congreso |
| Excepción | Gobierno, con autorización previa del Congreso | Máximo 30 días, prorrogable por otros 30 |
| Sitio | Mayoría absoluta del Congreso, a propuesta exclusiva del Gobierno | La que fije el Congreso |

### Tribunal Constitucional y reforma (arts. 159-169)

TC: **12 miembros**, nombrados por **nueve años** y renovados por terceras partes. Cuatro a propuesta del Congreso, cuatro del Senado (ambos por tres quintos), dos del Gobierno y dos del CGPJ.

Reforma: procedimiento ordinario (art. 167, **tres quintos** de cada Cámara) y agravado (art. 168, **dos tercios**, disolución, nuevas Cortes y referéndum obligatorio).

## Un dato nuevo que conviene tener al día

La Constitución se ha reformado **cuatro veces**, todas por el art. 167 y sin referéndum:

1. **1992**, art. 13.2: sufragio pasivo de ciudadanos de la UE en elecciones municipales.
2. **2011**, art. 135: estabilidad presupuestaria.
3. **2024**, art. 49: personas con discapacidad.
4. **2026**, art. 69.3 (BOE de 20 de mayo de 2026): cada isla con cabildo o consejo insular elige su senador, y **Formentera** deja de compartirlo con Ibiza. Se aplica a partir de las siguientes elecciones al Senado.

Ojo con los tests antiguos: si una pregunta dice que la de 2011 es «la última reforma», hoy es falsa.

## Cómo estudiarla sin perderte

### Primera vuelta: entender el edificio

Antes de memorizar, lee las introducciones de cada Título. La Constitución es lógica: quién manda, qué derechos tienes, qué órganos hay y cómo se controlan entre sí. Si entiendes por qué el Gobierno responde ante el Congreso y no ante el Senado, no necesitas memorizarlo.

### Segunda vuelta: tablas de cifras

Haz tus propias tablas de **mayorías, plazos y composiciones**: Congreso, Senado, CGPJ, TC, moción de censura, estados excepcionales, reforma. El Tribunal pregunta cifras y «quién hace qué». Una tabla hecha por ti se recuerda mejor que una copiada.

### Tercera vuelta: test y examen real

Aquí se fija de verdad. Haz tests por Títulos y, sobre todo, los **exámenes oficiales** de años anteriores, que la Guardia Civil publica. Verás que las preguntas se repiten con distinta redacción.

Si te cuesta retener articulado, tienes técnicas concretas en [cómo memorizar leyes para oposiciones](/blog/memorizar-leyes-oposiciones). Y para encajar la Constitución en el resto del examen, mira [la estructura de la prueba de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

### Errores típicos

- Estudiar el Título I con el mismo detalle que el VIII. El Título I y los órganos del Estado pesan mucho más.
- Confundir fechas. Aprobada por las Cortes el **31 de octubre de 1978**, referéndum el **6 de diciembre**, sancionada el **27 de diciembre** y publicada y en vigor el **29 de diciembre**.
- Olvidar las dos leyes orgánicas del tema. El Defensor del Pueblo también cae.

En el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) el tema de Derecho Constitucional viene con los artículos marcados cuando han caído en examen y tests por Título.

## Preguntas frecuentes

### ¿Entra toda la Constitución en la oposición a Guardia Civil?

Sí. El programa incluye la Constitución completa, junto con la Ley Orgánica 3/1981 del Defensor del Pueblo y la Ley Orgánica 1/1982.

### ¿Qué Títulos de la Constitución se preguntan más?

El Título I (sobre todo los arts. 53 y 55), la Corona, las Cortes Generales, el Gobierno y los estados excepcionales del art. 116, el Tribunal Constitucional y la reforma constitucional.

### ¿Cuántas veces se ha reformado la Constitución?

Cuatro: en 1992 (art. 13.2), 2011 (art. 135), 2024 (art. 49) y 2026 (art. 69.3).

### ¿Cuánto tiempo hace falta para estudiar la Constitución?

Depende de tu punto de partida, pero no es un tema de una semana. Planifícalo en tres vueltas y vuelve a él con tests durante toda la preparación.
$md$,
'publicado', '2026-10-30 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['constitución','temario','derecho constitucional','técnicas de estudio']::text[],
'{"title": "Constitución oposición Guardia Civil: qué artículos caen", "description": "Constitución oposición Guardia Civil: los artículos que más pregunta el Tribunal, las cifras que hay que saber y un método para estudiarla sin perderte."}'::jsonb),

('tatuajes-guardia-civil', 'articulo', 'Tatuajes Guardia Civil: ¿puedes entrar con tatuajes visibles?', 'Sí, puedes ser guardia civil con tatuajes, incluso visibles. Lo que importa es lo que muestran. Te explicamos qué dice la normativa vigente y dónde está el límite.',
$md$Es una de las dudas que más se repiten entre opositores. Alguien tiene un tatuaje en el antebrazo, otro en la mano, otro en el cuello, y todos se hacen la misma pregunta: ¿me van a dejar fuera?

La respuesta corta: **los tatuajes, en sí mismos, no te excluyen**. Ni siquiera los visibles con el uniforme. Lo que te excluye es el contenido.

## ¿Qué dice la convocatoria sobre los tatuajes?

Entre los requisitos para presentarte a la Escala de Cabos y Guardias, la convocatoria de 2026 (base 2.1.15) exige:

> «Carecer de tatuajes que contengan expresiones o imágenes contrarias a los valores constitucionales…»

El requisito continúa e incluye también los contenidos contrarios a las autoridades o a las virtudes militares, y los que puedan atentar contra la disciplina o la imagen de la Guardia Civil.

Y añade el matiz clave: se permiten los tatuajes, o parte de ellos, que sean visibles vistiendo el uniforme de uso general, siempre que no incurran en esas prohibiciones.

Dicho de otra forma: **el criterio es el contenido, no la zona del cuerpo.**

## ¿Qué norma regula los tatuajes en la Guardia Civil?

La convocatoria sigue la línea del Real Decreto 967/2021, de 8 de noviembre, que regula el uso general del uniforme de la Guardia Civil. Su artículo 13 dice lo mismo:

- Prohíbe los tatuajes, permanentes o temporales, con contenidos contrarios a los valores constitucionales, autoridades o virtudes militares, o que puedan atentar contra la disciplina o la imagen del Cuerpo.
- Permite los tatuajes visibles con el uniforme de uso general que no reflejen esos motivos.

Antes de este real decreto, en 2018, se aprobó una norma interna más restrictiva con los tatuajes visibles, y durante la tramitación del real decreto llegó a plantearse limitar los de cabeza, cuello y manos. El texto que se aprobó finalmente no menciona zonas concretas del cuerpo. Si lees en algún foro antiguo que «los tatuajes visibles están prohibidos», es información desfasada.

## ¿Puedo tener tatuajes en las manos, el cuello o la cara?

Según el texto vigente, la norma no distingue por zonas. Un tatuaje en la mano o en el cuello se valora igual que uno en la espalda: por lo que representa.

Dicho esto, sé prudente. Cuanto más visible es un tatuaje, más fácil es que alguien lo mire con lupa. Un diseño ambiguo en el antebrazo pasa desapercibido; ese mismo diseño en el cuello va a generar preguntas.

## ¿Qué tatuajes te pueden excluir?

La normativa habla en términos generales, así que hay que aplicar el sentido común a las categorías que menciona. Algunos ejemplos de lo que entraría en las prohibiciones:

| Categoría prohibida | Ejemplos |
|---|---|
| Contrarios a los valores constitucionales | Simbología totalitaria, racista o xenófoba; mensajes de odio o discriminación |
| Contrarios a las autoridades | Mensajes de desprecio a instituciones o autoridades |
| Contra la disciplina o la imagen del Cuerpo | Lemas antipolicía, apología de la violencia o de las drogas, contenido obsceno |

Y algunos ejemplos que, en principio, no plantean problema: nombres, fechas, motivos geométricos, naturaleza, animales, frases neutras, diseños tribales sin connotaciones.

Si tienes un tatuaje con un significado que podría malinterpretarse, piensa en cómo lo verá alguien que no te conoce. Ese es el filtro real.

## ¿Y los piercings, dilataciones e implantes?

Aquí la norma es más estricta. Tanto la convocatoria como el artículo 14 del Real Decreto 967/2021 prohíben, cuando sean visibles con las prendas comunes del uniforme de uso general:

- Argollas, espigas, inserciones, pegatinas y dilataciones.
- Automutilaciones y similares.
- Implantes microdermales o subcutáneos.
- Perforaciones distintas de las destinadas a pendientes.

Es decir: un piercing en la ceja, un septum o una dilatación en la oreja visibles con el uniforme no están permitidos. Los pendientes, sí.

## ¿Cuándo se comprueban los tatuajes?

La convocatoria no fija una prueba específica para revisar tatuajes, ni pide una declaración sobre ellos en la solicitud. Lo que sí establece es que los requisitos deben cumplirse al terminar el plazo de solicitudes y **mantenerse durante el proceso selectivo y los periodos de formación**, y que la Administración puede comprobarlos en cualquier momento hasta el final de la formación.

En la práctica, el [reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil) es la fase en la que te examinan físicamente, y donde un tatuaje con contenido dudoso puede salir a la luz. Pero el requisito no desaparece después: también se aplica en la academia.

## ¿Qué hago si tengo un tatuaje dudoso?

1. **Míralo con ojos ajenos.** ¿Podría alguien interpretarlo como algo de lo que prohíbe la norma?
2. **Si la respuesta es sí, actúa con tiempo.** Una modificación o un *cover up* necesita sesiones y cicatrización. Un tratamiento de eliminación con láser lleva bastantes más.
3. **No te hagas uno nuevo durante el proceso** sin pensarlo dos veces. Los requisitos se mantienen hasta acabar la formación.
4. **Revisa el resto de requisitos** para no llevarte sorpresas: los tienes todos en [requisitos para ser guardia civil](/blog/requisitos-guardia-civil).

## Lo que sí te debería preocupar

Si tus tatuajes son normales, deja de darle vueltas. El tiempo que gastas leyendo foros sobre tatuajes rinde mucho más estudiando la Constitución o entrenando la carrera. Hay muchos más aspirantes que se quedan fuera por la [ortografía](/blog/ortografia-gramatica-examen-guardia-civil) que por un tatuaje.

Si quieres preparar la oposición con un plan claro, desde el temario hasta las pruebas físicas, lo tienes en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Se puede ser guardia civil con tatuajes visibles?

Sí. La convocatoria de 2026 y el Real Decreto 967/2021 permiten los tatuajes visibles con el uniforme de uso general, siempre que su contenido no sea contrario a los valores constitucionales, a las autoridades o virtudes militares, ni atente contra la disciplina o la imagen del Cuerpo.

### ¿Están prohibidos los tatuajes en las manos o el cuello?

El texto vigente no prohíbe tatuajes por zonas del cuerpo. Se valoran por su contenido, no por dónde están.

### ¿Puedo llevar piercings siendo guardia civil?

Solo pendientes. Las perforaciones distintas a las de pendientes, las dilataciones y los implantes subcutáneos están prohibidos si son visibles con el uniforme de uso general.

### ¿Tengo que declarar mis tatuajes en la solicitud?

La convocatoria de 2026 no pide ninguna declaración sobre tatuajes. Pero el requisito debe cumplirse durante todo el proceso y la formación, y puede comprobarse en cualquier momento.
$md$,
'publicado', '2026-11-02 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['tatuajes','requisitos','uniformidad','reconocimiento médico']::text[],
'{"title": "Tatuajes Guardia Civil: qué permite la normativa en 2026", "description": "Tatuajes Guardia Civil: qué dice la convocatoria 2026 y el reglamento de uniformidad, si se permiten visibles y qué contenidos te pueden excluir."}'::jsonb),

('plan-estudio-guardia-civil-trabajando', 'guia', 'Cómo preparar la Guardia Civil trabajando: plan semanal realista', 'Con un trabajo de jornada completa se puede preparar esta oposición. No con el horario de quien no trabaja, sino con uno pensado para tus huecos. Aquí tienes uno, hora a hora.',
$md$Si trabajas ocho horas, no vas a estudiar seis. Y no hace falta.

El error típico de quien prepara la Guardia Civil trabajando es copiar el plan de alguien que no trabaja, aguantarlo tres semanas y abandonar. El plan bueno es el que encaja en tu semana real, incluida la fatiga del jueves.

## Cuántas horas necesitas de verdad

Con **12 a 15 horas semanales** bien repartidas se prepara esta oposición. Es lo que cabe en una semana de trabajo sin romperte: unas dos horas los días laborables y algo más el fin de semana.

Más importante que el total es la regularidad. Diez horas que se cumplen todas las semanas ganan a veinte que se cumplen una de cada tres.

## Antes de hacer el horario: tu presupuesto de tiempo

Coge una semana en blanco y marca lo que no se mueve: trabajo, desplazamientos, comidas, familia, sueño. Lo que queda libre es tu presupuesto.

Luego pregúntate tres cosas:

- **¿A qué hora rindo mejor?** Si llegas a casa sin cabeza, quizá tu hora buena es antes de entrar a trabajar.
- **¿Qué huecos muertos tengo?** Transporte público, descansos, esperas. Son perfectos para tareas cortas.
- **¿Qué día está perdido?** Siempre hay uno. Mejor asumirlo que planificar contra él.

## Qué tienes que repartir

El proceso tiene varias pruebas, y cada una pide un tipo de trabajo distinto:

| Bloque | Qué es | Cómo se entrena |
|---|---|---|
| Temario | 100 preguntas tipo test, mínimo 50 | Estudio por temas + tests |
| Ortografía y gramática | Apto o no apto; seis errores excluyen | Sesiones cortas y diarias |
| Inglés | 20 preguntas, mínimo 8 | Gramática y práctica breve |
| Psicotécnico | Aptitudes intelectuales, mínimo 12 sobre 30 | Ejercicios cronometrados |
| Pruebas físicas | 2.000 m, circuito de agilidad, extensiones de brazos y 50 m de natación | Tres sesiones semanales |

## Reparto semanal recomendado

Para una semana de unas 12 horas de estudio, más el entrenamiento físico:

| Bloque | Horas por semana | Peso |
|---|---|---|
| Temario (estudio nuevo y repaso) | 6 | 50 % |
| Tests y corrección de errores | 2,5 | 21 % |
| Ortografía y gramática | 1,5 | 13 % |
| Inglés | 1 | 8 % |
| Psicotécnico | 1 | 8 % |
| Físico | 3 sesiones de 45-60 min | Aparte |

Si tienes margen para llegar a 15, añade las horas extra a tests y repaso, no a temario nuevo.

El físico va aparte porque no compite con el estudio: lo complementa. Una sesión de carrera después del trabajo despeja la cabeza para estudiar luego.

## Un horario semanal de ejemplo

Para alguien que trabaja de 8:00 a 16:00 de lunes a viernes. Ajusta las horas a las tuyas, no la estructura.

| Día | Mañana | Tarde | Noche |
|---|---|---|---|
| Lunes | — | 18:00-19:30 Temario (tema nuevo) | 21:30-21:50 Ortografía |
| Martes | Transporte: inglés (20 min) | 17:30-18:30 Físico (carrera) | 19:30-20:30 Temario |
| Miércoles | — | 18:00-19:00 Temario · 19:00-19:30 Test del tema | 21:30-21:50 Ortografía |
| Jueves | Transporte: inglés (20 min) | 17:30-18:30 Físico (fuerza y brazos) | Descanso o repaso ligero |
| Viernes | — | 18:00-18:45 Psicotécnico | 21:30-21:50 Ortografía |
| Sábado | 9:30-12:30 Temario + repaso semanal | 17:00-18:00 Natación | — |
| Domingo | 10:00-11:30 Test largo o simulacro + corrección | — | Plan de la semana (15 min) |

Fíjate en tres cosas:

- **El jueves es flojo a propósito.** Es el día con más fatiga. Mejor tenerlo previsto que vivirlo como un fracaso.
- **La ortografía va en dosis de 20 minutos.** No se aprende de una sentada, se aprende de verla cada día. Por qué importa tanto lo explicamos en [ortografía y gramática del examen](/blog/ortografia-gramatica-examen-guardia-civil).
- **El domingo se corrige.** Un test sin revisar los errores es la mitad del trabajo.

## Cómo estudiar cada bloque con poco tiempo

### Temario: un tema, una semana

Con 6 horas semanales, la referencia razonable es un tema por semana en la primera vuelta. Los largos, como la Constitución o el Penal, necesitan dos o tres. En la segunda vuelta irás mucho más rápido.

Estudia en bloques de 45-50 minutos con pausa. Después del trabajo, más de dos horas seguidas rinden poco. Si te cuesta retener articulado, tienes técnicas en [cómo memorizar leyes](/blog/memorizar-leyes-oposiciones).

### Tests: siempre con penalización

Corrige siempre restando un tercio por error, como en el examen. Si no, tu nota te engaña. Lo explicamos con ejemplos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).

### Inglés: en los huecos muertos

El inglés de la prueba es de nivel ESO y se trabaja muy bien en ratos de 15-20 minutos: transporte, descanso del trabajo. Más en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

### Físico: no lo dejes para el final

Las cuatro pruebas físicas tienen marcas mínimas y la natación, en concreto, no se mejora en un mes si partes de cero. Empieza desde la primera semana. Las marcas y un plan de entrenamiento están en [pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Cómo ajustar el plan por fases

**Primeros tres meses.** Prioridad al temario nuevo. Tests solo del tema de la semana. El físico, para crear base.

**Mitad de la preparación.** Empieza a mezclar temas en los tests. Primer simulacro completo, aunque salga mal. Sube el psicotécnico a dos sesiones.

**Últimos dos meses.** Casi todo es repaso y simulacro. El domingo, examen completo de 140 minutos sin pausas, a la misma hora que el real si la conoces. Revisa con calma [cómo es el examen por dentro](/blog/examen-conocimientos-guardia-civil-estructura).

## Lo que hace que un plan funcione

- **Planifica el domingo, no cada día.** Quince minutos para decidir la semana. Así no pierdes tiempo pensando qué toca.
- **Mide lo que haces, no lo que pensabas hacer.** Apunta las horas reales. Al mes sabrás tu ritmo de verdad.
- **Si fallas un día, no recuperes doblando.** Sigue el plan. Doblar lleva a quemarse.
- **Protege el sueño.** Estudiar dormido no sirve.

Si prefieres no montar el plan tú solo, el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) organiza temario, tests y simulacros por semanas, pensado también para quien trabaja. Y si todavía estás decidiendo si empezar, lee antes [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero) y [los errores más comunes al prepararla](/blog/errores-preparar-oposicion-guardia-civil).

## Preguntas frecuentes

### ¿Se puede aprobar la Guardia Civil trabajando?

Sí. Con 12-15 horas semanales constantes y un plan ajustado a tus huecos reales es una preparación viable. Lo que no funciona es un plan pensado para quien no trabaja.

### ¿Cuántas horas al día hay que estudiar si trabajas?

Alrededor de dos horas los días laborables y tres o cuatro el fin de semana, con un día más ligero. El total semanal importa más que el diario.

### ¿Cuándo empiezo a entrenar las pruebas físicas?

Desde el principio. Tres sesiones por semana son suficientes para empezar, y la natación conviene trabajarla pronto si no es tu punto fuerte.

### ¿Cuánto tiempo se tarda en preparar la Guardia Civil trabajando?

Depende de tu punto de partida y de tus horas reales. Cuenta con varios meses de preparación constante: lo que marca la diferencia es no cortar la rutina.
$md$,
'publicado', '2026-11-05 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['planificación','horario de estudio','trabajar y opositar','guía']::text[],
'{"title": "Preparar Guardia Civil trabajando: plan semanal real", "description": "Preparar Guardia Civil trabajando es posible con 12-15 horas a la semana. Horario de ejemplo y reparto entre temario, test, físico, ortografía e inglés."}'::jsonb),

('destinos-especialidades-guardia-civil', 'articulo', 'Especialidades Guardia Civil: destinos tras Baeza y cómo acceder', 'Tráfico, SEPRONA, Montaña, Marítimo, Policía Judicial… Antes de soñar con una especialidad conviene saber cómo funcionan de verdad los destinos al salir de Baeza.',
$md$Mucha gente se presenta a la oposición pensando en el motorista de Tráfico, en el buceador o en el guardia de montaña que rescata montañeros en los Picos. Es una buena motivación. Pero conviene saber cómo funciona la realidad: casi nadie empieza en una especialidad.

Lo normal es salir de la academia, ir a un puesto de seguridad ciudadana y, desde ahí, construir tu carrera.

## ¿Qué destino tienes al salir de Baeza?

El segundo curso de formación son 40 semanas de prácticas en una unidad de la Guardia Civil. Según el plan de estudios (Orden PCM/576/2021), al terminar las prácticas el alumno permanece en esa unidad hasta obtener su primer destino tras ingresar en la Escala de Cabos y Guardias.

Ese primer destino suele ser un puesto territorial: la base del Cuerpo. Patrulla, atención al ciudadano, denuncias, seguridad ciudadana. Es donde se aprende el oficio de verdad y, además, es la experiencia que luego valoran muchas especialidades.

La clasificación final del curso ordena a los alumnos de una promoción. Por eso Baeza no es un trámite: tu nota allí te acompaña. Lo contamos con más detalle en [qué pasa en la Academia de Baeza](/blog/academia-baeza-guardia-civil).

### ¿Puedo elegir dónde voy destinado?

Puedes pedir, pero no elegir libremente. Los destinos dependen de las vacantes que se oferten y de tu posición respecto a quienes compiten por ellas. Lo habitual es que los primeros destinos no sean los más demandados. Con los años y la antigüedad, las opciones mejoran.

Si estás valorando el aspecto económico, los complementos cambian según el destino y la especialidad: lo detallamos en [cuánto cobra un guardia civil](/blog/sueldo-guardia-civil).

## ¿Qué especialidades tiene la Guardia Civil?

Las especialidades están reguladas en la Orden PCM/509/2020, de 3 de junio. Su artículo 6 enumera 21:

| Especialidad | Modalidades (resumen) |
|---|---|
| Actividades subacuáticas | Buceador, buceador técnico |
| Adiestramientos especiales | — |
| Aérea | Pilotos, mecánicos y otras (siete modalidades) |
| Armamento y equipamiento policial | — |
| Automovilismo | — |
| Cinológica | Guía de perros, instructor |
| Criminalística | Ocho modalidades |
| Desactivación de explosivos y defensa NRBQ | — |
| Fiscal y fronteras | Dirección, básico |
| Información | — |
| Intervención de armas y explosivos | — |
| Intervención especial (UEI) | Intervención, apoyo técnico, mando y control |
| Marítima | Patrón de embarcaciones y otras (cinco modalidades) |
| Montaña | Especialista, instructor |
| Policía Judicial | — |
| Prevención de riesgos laborales | — |
| Protección de la naturaleza (SEPRONA) | Dirección, equipos, patrullas |
| Tráfico | Dirección, motorista, atestados |
| Reconocimiento del subsuelo | — |
| Seguridad e Intervención | Reserva y seguridad, ecuestre |
| Tecnologías de la información | Dirección, técnica, apoyo |

Las más buscadas por quien empieza son casi siempre las mismas. Vamos con ellas.

### Tráfico

La Agrupación de Tráfico se encarga de la vigilancia y el control de las vías interurbanas. La especialidad tiene tres modalidades: dirección, motorista y atestados. El motorista es la imagen clásica; atestados se ocupa de investigar accidentes.

### SEPRONA (Protección de la Naturaleza)

Protege el medio ambiente: incendios forestales, caza y pesca ilegales, vertidos, maltrato animal, urbanismo en suelo protegido. Tiene modalidades de dirección, equipos y patrullas. Encaja muy bien con perfiles que vienen del mundo rural o con formación ambiental.

### Montaña

Rescate y seguridad en montaña. Tiene dos modalidades: especialista e instructor. Exige una condición física muy alta y experiencia real en montaña. No es una especialidad para descubrir la montaña: es para quien ya la conoce.

### Policía Judicial

Investigación de delitos bajo la dependencia de jueces y fiscales: equipos de investigación, unidades orgánicas de Policía Judicial, delitos complejos. Si te atrae la parte de derecho penal y procedimiento del temario, aquí es donde se usa a diario.

### Marítima

El Servicio Marítimo trabaja en aguas interiores y en el mar territorial: control de costas, inmigración irregular, contrabando, salvamento. Sus cinco modalidades van desde patrón de embarcaciones hasta oficiales de buque oceánico.

### ¿Y el GAR?

El Grupo de Acción Rápida (GAR), con sede en Logroño, no figura como especialidad en esa lista: es una unidad. Se integra en ella el personal que supera su propio proceso de selección y formación, con pruebas físicas y técnicas exigentes. Lo mismo ocurre con otras unidades de reserva y seguridad.

## ¿Cómo se accede a una especialidad?

La Orden PCM/509/2020 establece que el requisito fundamental para ejercer una especialidad es acreditar la cualificación específica necesaria, y ocupar un puesto orgánico que la requiera. En la práctica, el camino es este:

1. **Ingresas en la Escala** y cumples tus primeros destinos.
2. **Se convoca un curso** de la especialidad que te interesa, con sus requisitos de acceso.
3. **Superas la selección y el curso**, que te da la cualificación.
4. **Obtienes un puesto** de especialista en una unidad que la requiera.

La propia orden permite condicionar el acceso a esos puestos por la escala, el empleo, la edad, las condiciones psicofísicas, titulaciones previas o un nivel de idiomas. Además, fija periodos de servidumbre: tiempo mínimo que debes permanecer en el puesto tras formarte.

Los requisitos concretos (años de servicio, pruebas, plazas) los marca cada convocatoria de curso. Cambian de un año a otro, así que desconfía de cifras cerradas que leas en foros.

## Qué puedes hacer ya, siendo opositor

No puedes acceder a una especialidad antes de ser guardia civil. Pero sí puedes prepararte para tenerlo más fácil:

- **Inglés.** Varias especialidades y destinos internacionales piden nivel de idioma. Lo que estudies para la [prueba de inglés](/blog/ingles-oposicion-guardia-civil) no se pierde.
- **Forma física.** Montaña, GAR o actividades subacuáticas exigen mucho más que las marcas de ingreso.
- **Titulaciones.** Carnés de embarcación, buceo, motocicleta o formación técnica pueden ser útiles después. Algunas, además, ya puntúan en la oposición: revisa la [fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

Pero todo empieza por lo mismo: aprobar. Si estás en ello, en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos a llegar al primer paso.

## Preguntas frecuentes

### ¿Cuántas especialidades tiene la Guardia Civil?

La Orden PCM/509/2020 enumera 21 especialidades, muchas de ellas con varias modalidades (por ejemplo, Tráfico tiene dirección, motorista y atestados).

### ¿Puedo entrar directamente en Tráfico o en SEPRONA al salir de Baeza?

Lo normal es que no. El acceso a las especialidades se hace mediante cursos de cualificación con requisitos propios, una vez que ya perteneces a la Escala.

### ¿El GAR es una especialidad?

No figura en la lista de especialidades de la Orden PCM/509/2020. Es una unidad con sede en Logroño a la que se accede superando su propio proceso de selección y formación.

### ¿Influye la nota de Baeza en mi carrera?

La formación termina con una clasificación final que ordena a los alumnos de la promoción. Conviene tomarse la academia en serio desde el primer día.
$md$,
'publicado', '2026-11-08 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['especialidades','destinos','tráfico','seprona','carrera profesional']::text[],
'{"title": "Especialidades Guardia Civil: cuáles hay y cómo se accede", "description": "Especialidades Guardia Civil: lista oficial, qué hace cada una, cómo se accede y qué destino te espera al salir de Baeza. Planifica tu carrera desde hoy."}'::jsonb),

('memorizar-leyes-oposiciones', 'guia', 'Cómo memorizar leyes para oposiciones a Guardia Civil sin olvidarlas', 'Leer un artículo diez veces no sirve para retenerlo. Repaso espaciado, test por tema y caza de trampas: el método para que la ley se quede y salga en el examen.',
$md$Te sabes el artículo. Lo has leído veinte veces. Llega la pregunta del test, ves cuatro opciones casi iguales y dudas entre «treinta días» y «quince días». Eliges mal.

No es falta de estudio. Es que leer no es memorizar. Y en un examen tipo test de la Guardia Civil, lo que se pregunta casi nunca es la idea general del artículo: es el plazo, la mayoría, el órgano o la excepción.

Esta guía te da un método concreto para **memorizar leyes para la oposición** y, sobre todo, para no olvidarlas.

## Por qué se te olvidan las leyes

Tres motivos, casi siempre los mismos:

- **Estudias de forma pasiva.** Leer y subrayar produce sensación de familiaridad. El texto te suena, pero no eres capaz de reproducirlo.
- **No repasas a tiempo.** Lo que estudias hoy, si no lo vuelves a ver, se borra en buena parte en pocos días.
- **Memorizas la idea, no el dato.** Sabes que el decreto-ley tiene que convalidarlo el Congreso, pero no recuerdas en cuántos días.

El método que sigue ataca los tres.

## Paso 1: entiende antes de memorizar

Memorizar algo que no entiendes es el doble de difícil y se olvida el doble de rápido. Antes de ponerte a retener un artículo, responde tres preguntas:

1. **¿Quién?** Qué órgano actúa: Congreso, Senado, Gobierno, Rey, Tribunal Constitucional.
2. **¿Qué?** Qué se puede o no se puede hacer.
3. **¿Cuándo y cómo?** Plazos, mayorías, requisitos, excepciones.

Ejemplo con el artículo 86 de la Constitución:

- **Quién:** el Gobierno dicta; el Congreso convalida o deroga.
- **Qué:** decretos-leyes, en caso de extraordinaria y urgente necesidad, con materias excluidas.
- **Cuándo:** en los treinta días siguientes a su promulgación.

Con eso ya tienes la estructura. Ahora toca fijarla.

## Paso 2: haz un esquema propio, corto

No copies el temario en otro color. Un buen esquema de un artículo cabe en dos o tres líneas y destaca solo lo preguntable.

| Artículo | Lo que se pregunta |
|---|---|
| Art. 17.2 CE | Detención preventiva: máximo 72 horas |
| Art. 81 CE | Ley orgánica: mayoría absoluta del Congreso en votación final sobre el conjunto |
| Art. 86 CE | Decreto-ley: convalidación o derogación en 30 días |
| Art. 116 CE | Alarma: 15 días, prórroga con autorización del Congreso. Excepción: autorización previa, máx. 30 días prorrogables por otro igual |
| Art. 167 CE | Reforma ordinaria: 3/5 de cada Cámara |
| Art. 168 CE | Reforma agravada: 2/3 y disolución de las Cortes |

Hacer el esquema tú mismo ya es parte de la memorización: obliga a decidir qué importa. Si estás con la Constitución, tienes más ejemplos en [cómo estudiar la Constitución para la oposición](/blog/constitucion-oposicion-guardia-civil).

## Paso 3: recuperación activa, no relectura

Aquí está la diferencia real. Después de estudiar un bloque de artículos:

1. Cierra el temario.
2. Escribe o di en voz alta lo que recuerdas de cada artículo: quién, qué, cuándo.
3. Abre el temario y compara. Marca lo que fallaste.

Ese esfuerzo por recordar es lo que fija la información. Cuesta más que releer, y precisamente por eso funciona.

### Test por tema

Los test son recuperación activa en el formato exacto del examen. Úsalos así:

- **Al terminar cada tema**, un test solo de ese tema.
- **Cada fallo se apunta** en una libreta o archivo de errores: artículo, qué confundiste y cuál es el dato correcto.
- **Repasa la libreta de errores** antes de cada sesión de repaso. Es tu material más valioso, porque está hecho de tus puntos débiles.

## Paso 4: repaso espaciado

El olvido se frena repasando justo cuando empiezas a olvidar. Un calendario sencillo que funciona:

| Repaso | Cuándo | Cómo |
|---|---|---|
| 1.º | Al día siguiente | Recuperación activa + esquema |
| 2.º | A los 3 días | Test del tema |
| 3.º | A la semana | Test + libreta de errores |
| 4.º | A las 2-3 semanas | Test mezclado con otros temas |
| 5.º | Al mes y después mensual | Simulacros y repaso de errores |

Cuando un tema te sale bien varias veces seguidas, alarga el intervalo. Cuando fallas, acórtalo. Las aplicaciones de tarjetas con repetición espaciada hacen este cálculo solas, pero un cuaderno con fechas funciona igual.

La clave es no dejar de repasar lo antiguo mientras avanzas. Cada día, un rato a temas nuevos y otro a temas viejos. Si tienes poco tiempo, lo organizamos en [plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando).

## Paso 5: caza las preguntas trampa

El Tribunal no suele preguntar lo obvio. Pregunta lo que se confunde. Las trampas más típicas en leyes son siempre de estos tipos:

### Plazos

Se cambia un número por otro cercano. Quince por treinta. Setenta y dos horas por cuarenta y ocho. Un mes por dos meses.

**Antídoto:** agrupa los plazos parecidos en una misma tabla y estúdialos juntos, comparándolos. El artículo 116 es el ejemplo perfecto: alarma, excepción y sitio tienen reglas distintas que se preguntan cruzadas.

### Mayorías

Absoluta, simple, tres quintos, dos tercios. Y de qué Cámara: Congreso, Senado o ambas.

**Antídoto:** para cada mayoría, apunta siempre «qué mayoría + de qué órgano + en qué votación». La investidura del artículo 99 es la trampa clásica: mayoría absoluta en la primera votación y simple en la segunda, cuarenta y ocho horas después.

### Órganos

¿Lo propone el Gobierno o lo autoriza el Congreso? ¿Lo declara el Gobierno o el Congreso por mayoría absoluta?

**Antídoto:** en tu esquema, el órgano va siempre en negrita.

### Excepciones y palabras absolutas

«Siempre», «nunca», «en ningún caso», «salvo». Una sola palabra cambia la respuesta correcta.

**Antídoto:** cuando un artículo tiene una excepción, apréndela como parte del dato principal, no como nota al pie. En los test, desconfía de las opciones con palabras absolutas si el artículo tiene excepciones.

## Paso 6: mide y ajusta

Cada dos o tres semanas, haz un simulacro y revisa qué tipo de fallo predomina:

- **Si fallas plazos**, más tablas comparativas.
- **Si fallas por confundir artículos**, más test mezclados.
- **Si fallas por no haber visto el dato**, falta cobertura del temario.

Si no tienes claro cómo traducir los fallos en nota, revisa [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil). Y si quieres el temario ya esquematizado, con test por tema y simulacros, es como trabajamos en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Rutina diaria de ejemplo (2 horas)

1. **10 minutos:** libreta de errores.
2. **50 minutos:** tema nuevo (entender + esquema).
3. **15 minutos:** recuperación activa del tema nuevo.
4. **30 minutos:** repaso espaciado de temas antiguos con test.
5. **15 minutos:** corrección y anotación de errores.

## Preguntas frecuentes

### ¿Hay que memorizar las leyes de forma literal?

No todas. Lo que hay que retener con exactitud son los datos preguntables: plazos, mayorías, órganos, números de artículo clave y excepciones. El resto basta con entenderlo bien.

### ¿Cuántas veces hay que repasar un tema para no olvidarlo?

No hay un número fijo. Con repaso espaciado (al día siguiente, a los tres días, a la semana, a las dos o tres semanas y después cada mes) la mayoría de la gente retiene mucho mejor que repasando todo de golpe.

### ¿Sirven las reglas mnemotécnicas?

Sí, para listas cerradas y datos sueltos que se resisten. Pero úsalas como complemento: si entiendes el artículo, necesitas muchas menos.

### ¿Es mejor hacer test o estudiar el temario?

Las dos cosas. Primero se entiende el tema; después, los test son la mejor herramienta para fijarlo y detectar lo que crees saber pero no sabes.
$md$,
'publicado', '2026-11-11 09:00:00 Europe/Madrid'::timestamptz, 'acceso-guardia-civil', array['memorizar leyes','técnicas de estudio','constitución','test']::text[],
'{"title": "Memorizar leyes oposiciones: método para Guardia Civil", "description": "Memorizar leyes oposiciones: método de repaso espaciado, test por tema y esquemas para retener artículos, plazos y mayorías sin caer en las trampas."}'::jsonb)
on conflict (slug) do nothing;

-- Comprobación: deberían salir las 10 con su fecha.
select slug, publicado_en at time zone 'Europe/Madrid' as sale_el from public.blog_posts
where slug in ('requisitos-guardia-civil', 'calcular-nota-examen-guardia-civil', 'academia-baeza-guardia-civil', 'sueldo-guardia-civil', 'errores-preparar-oposicion-guardia-civil', 'constitucion-oposicion-guardia-civil', 'tatuajes-guardia-civil', 'plan-estudio-guardia-civil-trabajando', 'destinos-especialidades-guardia-civil', 'memorizar-leyes-oposiciones') order by publicado_en;
