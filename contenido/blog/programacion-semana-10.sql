-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
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

