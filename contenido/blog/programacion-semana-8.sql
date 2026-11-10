-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
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

