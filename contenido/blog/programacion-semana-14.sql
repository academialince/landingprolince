-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
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

