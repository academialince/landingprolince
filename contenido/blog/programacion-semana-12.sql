-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('certificados-de-idiomas-para-la-guardia-civil-cual-sacarte', 'articulo', '"Certificados de idiomas para la Guardia Civil: cuál sacarte y cuánto suma"', 'El baremo de la convocatoria de 2026 puntúa los certificados de idiomas con 5, 7 o 9 puntos según el nivel, dentro de un tope de 27 para los méritos académicos. Qué títulos se admiten, qué condiciones exige el apéndice I y cómo decidir cuál sacarte.', '**Respuesta corta:** según el apéndice I de la convocatoria de 2026, un certificado de nivel **B2 suma 5 puntos**, uno de **C1, 7** y uno de **C2, 9**. Por cada idioma solo cuenta una acreditación, la de mayor puntuación, y todos los méritos académicos juntos tienen un **tope de 27 puntos**. Solo puntúan los títulos que aparecen expresamente en la lista. El baremo puede cambiar entre convocatorias, así que compruébalo en la que se publique.

Todo lo que sigue sale del apéndice I de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). Para ver cómo encaja en el conjunto, mira [los 45 puntos de la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

## Dónde encajan los idiomas en el baremo

La fase de concurso vale de 0 a 45 puntos y se reparte en tres bloques con su propio tope:

| Bloque | Tope | Qué incluye |
|---|---|---|
| Méritos profesionales | 13,5 | Servicios en las Fuerzas Armadas o en la Administración General del Estado, reservista voluntario |
| Méritos académicos | 27 | Nivel académico (Bachiller o superior, 2 puntos) e **idiomas** |
| Otros méritos | 4,5 | Permisos de conducción (A o A2; C, D y sus combinaciones) y deportista de alto nivel |

Los idiomas son, con diferencia, la partida que más puntos puede aportar a quien no tiene experiencia profesional previa.

## Las reglas generales

- **Solo cuentan los méritos que figuran en el apéndice**, que se han **alegado en la inscripción telemática** y que **se poseen dentro del plazo de presentación de solicitudes**.
- **Por cada idioma** se contabiliza una sola acreditación (perfil SLP, título o certificado): la de mayor puntuación. Un B2 y un C1 de inglés no se suman.
- **Idiomas de interés**: alemán, árabe, francés, inglés, italiano, portugués y ruso. Certificados de idiomas distintos sí pueden sumar entre sí, dentro del tope de 27.
- Se justifican con la documentación que pida el Tribunal de Selección, en la fecha que disponga.
- En los certificados no nacionales, **todas las pruebas deben ser 100 % presenciales**.

## Certificados de inglés que puntúan

### Escuela Oficial de Idiomas

Certificado oficial según el artículo 7.9 del Real Decreto 1041/2017:

| Nivel | Puntos |
| --- | --- |
| Avanzado C2 | 9 |
| Avanzado C1 | 7 |
| Intermedio B2 | 5 |

### Certificados no nacionales

| Entidad | 9 puntos | 7 puntos | 5 puntos |
| --- | --- | --- | --- |
| Trinity College London (ISE) | ISE IV (C2) | ISE III (C1) | ISE II (B2) |
| Cambridge | CPE (C2), grado A, B o C | CAE (C1), grado A, B o C | FCE (B2), grado A, B o C |
| IELTS (Academic o General Training) | 8 o más en cada rasgo | De 7 a menos de 8 en cada rasgo | De 5,5 a menos de 7 en cada rasgo |
| CertAcles (ACLES), pruebas presenciales | C2 | C1 | B2 |

En Trinity puntúan los resultados *pass*, *pass with merit* o *pass with distinction*. En IELTS, la puntuación se exige en **cada uno de los rasgos de la nota final**, no en la media: con una nota global alta pero un rasgo por debajo del umbral, bajas de tramo.

### Otras vías

- **Perfil lingüístico SLP del STANAG 6001**: 4.4.4.4 o superior, 9 puntos; 3.3.3.3 o superior, 7; 2.2.2.2 o superior, 5. Solo pueden invocarlo quienes pertenezcan o hayan pertenecido a las Fuerzas Armadas, y debe estar en vigor.
- **Licenciatura o Grado en Filología** (o equivalente) en un idioma de interés: 9 puntos. También **Traducción e Interpretación** en el idioma B, si es de interés: 9 puntos. En estos casos, esa titulación no puede valorarse además como nivel académico (apartado 2.1).

### Lo que no está en la lista

En la convocatoria de 2026 no figuran otros exámenes de inglés distintos de los citados. Si tu certificado no aparece en el apéndice, no puntúa en esa convocatoria aunque acredite un nivel B2 o superior. Tampoco puntúan niveles por debajo de B2. Antes de matricularte en un examen, comprueba que su nombre exacto está en el baremo vigente.

## Cómo funciona el tope de 27: ejemplos resueltos

Los ejemplos son hipotéticos y usan el baremo de 2026.

| Aspirante | Méritos académicos | Suma | Puntúa |
|---|---|---|---|
| A | Bachiller + B2 de inglés | 2 + 5 | **7** |
| B | Grado universitario + C1 de inglés + B2 de francés | 2 + 7 + 5 | **14** |
| C | Bachiller + FCE (B2) + C1 de la EOI, ambos de inglés | 2 + 7 (solo el mayor) | **9** |
| D | Bachiller + C2 de inglés, alemán y francés | 2 + 9 + 9 + 9 = 29 | **27** (tope) |
| E | Grado en Filología Inglesa + B2 de francés | 9 + 5 (el grado no cuenta también como nivel académico) | **14** |

En el caso E, si además tuviera otro título de Bachiller o superior distinto del de Filología, podría alegarlo como nivel académico; la convocatoria solo valora **una** titulación en ese apartado.

## ¿Cuál sacarte?

Depende de tu nivel real, de tu tiempo y de cuándo se abra el plazo:

- **Si ya tienes un título, localízalo y alégalo.** Es puntuación sin más trabajo.
- **El salto de B2 a C1 vale 2 puntos; de C1 a C2, otros 2.** Cada salto exige bastante más nivel. Para muchos opositores, asegurar un B2 o un C1 es más realista que perseguir un C2.
- **Un segundo idioma** suma aparte: un B2 de francés añade 5 puntos aunque ya tengas un C1 de inglés.
- **Fechas.** Debes poseer el certificado **dentro del plazo de solicitudes**. En 2026 ese plazo fue de 15 días hábiles desde el día siguiente a la publicación de la convocatoria. Mira con tiempo cuándo publica resultados cada examinador: aprobar no basta si el certificado llega tarde.
- **Presencialidad.** Comprueba que el formato que eliges es presencial en todas sus partes.
- **Coste.** Los exámenes oficiales tienen tasas que varían según la entidad; consúltalas antes de decidir.

### Cómo comparar opciones antes de matricularte

| Criterio | Qué comprobar |
|---|---|
| ¿Está en el baremo? | Nombre exacto del examen y nivel en el apéndice vigente |
| ¿Es presencial? | Todas las partes, también la oral, en el caso de los no nacionales |
| ¿Cuándo tendrás el certificado? | Fecha de publicación de resultados y de expedición, frente al plazo de solicitudes |
| ¿Se ajusta a tu nivel? | Una prueba de nivel previa evita pagar por un examen que no vas a aprobar |
| ¿Qué cuesta? | Tasa de examen y, si lo necesitas, preparación |

### Alegarlo y justificarlo sin errores

1. **Al rellenar la solicitud**, marca cada mérito en el apartado correspondiente de la inscripción telemática. Lo que no se alega no se valora.
2. **Guarda el original** del certificado: cuando lo indique el Tribunal, los méritos se justifican con el original o una copia auténtica (base 3.2.1).
3. **Espera las instrucciones del Tribunal** sobre cómo y cuándo presentar la documentación; en el SLP, la propia convocatoria prevé la consulta a las bases de datos del Ministerio de Defensa.
4. **Revisa la lista de admitidos**, que se publica con la calificación de la fase de concurso. Según la base 3.4, hay **10 días hábiles** para subsanar errores en esa puntuación o reclamar. Las dudas sobre la puntuación de un mérito las resuelve la Jefatura de Enseñanza (base 3.2.2).

Los pasos de la solicitud los veremos con más detalle en un artículo posterior.

### ¿Cuánto pesan esos puntos?

Mucho, en términos relativos. La puntuación final va sobre 195, y las notas de corte calculadas por ProLince para el acceso libre han oscilado en los últimos años entre 90,61 (2026) y 110,58 (2022); tienes el detalle en [nota de corte](/blog/nota-de-corte-guardia-civil). En ese contexto, 5 o 7 puntos son una diferencia apreciable, aunque nadie puede decirte cuánto pesarán en la próxima convocatoria.

## Recuerda: el certificado no sustituye a la prueba de inglés

El certificado suma en el concurso, pero **no te exime** de la prueba de inglés de la oposición, que sigue siendo eliminatoria con un [mínimo de 8 sobre 20](/blog/ingles-como-llegar-a-los-8-puntos-minimos-sin-ser-bilingue). La buena noticia es que preparar un B2 te deja muy por encima del nivel ESO que exige esa prueba.

## Errores frecuentes

- **Sumar dos certificados del mismo idioma.** Solo cuenta el mayor.
- **Olvidar alegarlo en la inscripción.** Si no lo alegas, no se valora.
- **Sacarlo después del plazo de solicitudes.** Debes poseerlo dentro del plazo.
- **Elegir un examen que no está en la lista** o con alguna parte no presencial.
- **Mirar la media del IELTS** en lugar de cada rasgo.
- **Contar Filología dos veces**, como idioma y como nivel académico.

## Preguntas frecuentes

### ¿Puedo sumar un B2 de inglés y un C1 de inglés?
No. Por cada idioma solo cuenta una acreditación, la de mayor puntuación.

### ¿Valen los exámenes online?
En los certificados no nacionales, el apéndice exige que todas las pruebas sean 100 % presenciales; CertAcles también debe ser presencial.

### ¿Y si me saco el título después de enviar la solicitud?
El apéndice exige poseer el mérito dentro del plazo de presentación de solicitudes y haberlo alegado en la inscripción telemática.

### ¿Cuántos puntos máximos puedo sacar por idiomas?
Hasta 9 por idioma, con el tope de 27 de los méritos académicos en su conjunto, que incluyen también los 2 puntos del nivel académico.

### ¿Puntúa un B1?
No. Los tramos del baremo empiezan en B2 (5 puntos).

### ¿Puntúa un certificado de catalán, gallego o euskera?
No figuran entre los idiomas de interés del apéndice de 2026, que son alemán, árabe, francés, inglés, italiano, portugués y ruso.

### ¿Me ayuda el certificado a preparar la prueba de inglés?
Sí, indirectamente: el nivel B2 está por encima del nivel ESO de la prueba. Para entrenar el formato de 20 preguntas con penalización, el [curso de acceso a la Guardia Civil](/cursos/acceso-guardia-civil) incluye tests y simulacros.',
   '/blog/certificados-de-idiomas-para-la-guardia-civil-cual-sacarte.jpg', 'Aspirante entregando una carpeta con un diploma en una ventanilla de una oficina administrativa', 'publicado', '2027-01-27T06:54:00.000Z', 'acceso-guardia-civil',
   ARRAY['idiomas', 'certificados', 'fase de concurso', 'baremo']::text[], '{"title":"Certificados de idiomas Guardia Civil: cuántos puntos suman","description":"Qué certificados de idiomas puntúan en la Guardia Civil 2026: EOI, Cambridge, IELTS, Trinity y CertAcles, con 5, 7 o 9 puntos y tope de 27 académicos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra', 'articulo', 'Convocatoria Guardia Civil 2027: qué se sabe y cómo seguirla', 'De la convocatoria de 2027 no había nada oficial al preparar este artículo. Repasamos las fechas verificadas en el BOE de las cuatro últimas convocatorias, qué se ha mantenido estable y cómo seguir el proceso sin rumores.', '**Respuesta corta:** de la convocatoria de 2027 no había, en noviembre de 2026, cuando se preparó este artículo, **nada oficial**: ni oferta de empleo público ni resolución de convocatoria. Cualquier fecha que veas anunciada sin una norma detrás es una suposición. Lo que sí podemos darte son las fechas reales de las convocatorias anteriores y los elementos que se han repetido en todas, para que sepas cómo funciona el calendario sin que nadie te prometa un día.

## Qué hay de oficial sobre 2027

Una convocatoria necesita antes una [oferta de empleo público](/blog/oferta-de-empleo-publico-2027-que-es-y-que-significa-para-ti), y la de 2026 (Real Decreto 206/2026) dejó claro que las convocatorias derivadas «sólo podrán publicarse en el ejercicio presupuestario al que vienen referidas». En noviembre de 2026 no habíamos localizado ninguna oferta para 2027 en el BOE.

Por tanto, en ese momento no se sabía oficialmente:

- el **número de plazas** ni su reparto entre cupos;
- la **fecha de publicación** ni el plazo de solicitud;
- los **requisitos concretos**, incluido el año de referencia para la edad;
- el **temario** que se aplicará ni la **fecha del examen**, que, además, la convocatoria no fija: la anuncia el Tribunal.

Si cuando leas esto ya hay algo publicado, manda lo que diga el BOE.

## Cómo fueron las convocatorias anteriores

Todas las fechas y cifras de esta tabla están tomadas del BOE:

| Año | Oferta (real decreto y fecha del BOE) | Convocatoria (fecha del BOE) | Plazas |
| --- | --- | --- | --- |
| 2023 | Real Decreto 627/2023, BOE de 12 de julio | 16 de agosto de 2023 ([BOE-A-2023-18485](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-18485)) | 2.520 |
| 2024 | Real Decreto 562/2024, BOE de 12 de junio | 25 de junio de 2024 ([BOE-A-2024-12818](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2024-12818)) | 2.721 |
| 2025 | Real Decreto 341/2025, BOE de 16 de abril | 28 de mayo de 2025 ([BOE-A-2025-10521](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2025-10521)) | 3.118 |
| 2026 | Real Decreto 206/2026, BOE de 13 de marzo | 8 de mayo de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) | 3.240 |

### Qué se puede decir con honestidad de estos datos

- **Hay un orden fijo:** primero la oferta y después la convocatoria.
- **El calendario no es regular.** El tiempo entre una y otra fue muy distinto cada año, y la convocatoria cayó en meses diferentes (agosto, junio, mayo y mayo). Con cuatro ejemplos no se puede deducir cuándo saldrá la próxima, y no vamos a hacer como que sí.
- **Las plazas subieron en esos cuatro años**, pero dependen de la tasa de reposición de cada ejercicio. No permiten predecir la cifra de 2027.

### Lo que se ha repetido en las cuatro

Hay elementos que han sido idénticos en las convocatorias de 2023, 2024, 2025 y 2026 que hemos comprobado. No garantizan nada para 2027, pero te sirven para prepararte:

| Elemento | Qué dijeron las cuatro convocatorias |
|---|---|
| Plazo de solicitud | 15 días hábiles desde el día siguiente a la publicación en el BOE |
| Tasa de examen | 11,66 euros con carácter general; 5,83 euros para familia numerosa de categoría general |
| Cupos | Plazas para militares de tropa y marinería, para el Colegio de Guardias Jóvenes y libres |
| Plazas reservadas sin cubrir | Se acumulan al cupo libre |

En la de 2026, además, la incorporación a la Academia de Baeza (Jaén) y al Colegio de Guardias Jóvenes de Valdemoro (Madrid) se fijó para el **13 de octubre de 2026**. Para ver cómo se estructuró todo ese proceso, tienes la [convocatoria de 2026 explicada](/blog/convocatoria-guardia-civil-2026-plazas-calendario).

## Cómo seguirla sin depender de rumores

Pon las fuentes oficiales en tu rutina:

1. **BOE, sección II.B («Oposiciones y concursos»)**, donde se publica la resolución de convocatoria de la Dirección General de la Guardia Civil. La oferta aparece en la sección III («Otras disposiciones»).
2. **La web de la Guardia Civil**, en el apartado de ingreso en el Cuerpo: la convocatoria de 2026 (base 4.11) la designó para publicar oficialmente las resoluciones del Tribunal.
3. **La web del Ministerio del Interior**, que debe recoger un apartado de procesos selectivos con cada convocatoria, según la disposición adicional del Real Decreto 206/2026.
4. **La sede electrónica de la Guardia Civil**, donde se presenta la solicitud, que en 2026 fue obligatoriamente telemática.

Una alerta en el buscador del BOE con «Guardia Civil» y «Escala de Cabos y Guardias» te ahorra mirar cada día.

## Qué conviene tener listo antes de que salga

Si se mantiene el plazo de 15 días hábiles, lo que no puedes improvisar es lo siguiente:

- **Acceso electrónico:** Cl@ve o certificado digital funcionando, y tu número de la Seguridad Social a mano.
- **Requisitos:** revisar [edad y requisitos](/blog/requisitos-guardia-civil) con la convocatoria en la mano. La edad se cuenta por año natural.
- **Méritos:** reunir los certificados que alegarás (titulación, idiomas, servicios), porque solo cuentan los que poseas dentro del plazo de solicitud.
- **Situación para la tasa:** si vas a pedir una exención como demandante de empleo, en 2026 había que figurar como tal al menos un mes antes de la publicación de la convocatoria.
- **Estudio:** si esperas a la publicación para empezar, llegas tarde. Un [plan de estudio compatible con trabajar](/blog/plan-estudio-guardia-civil-trabajando) se construye con meses de antelación, y los [exámenes oficiales anteriores](/blog/examenes-oficiales-anteriores-donde-encontrarlos) te dan la referencia del nivel.

## Qué leer primero el día que se publique

La convocatoria de 2026 ocupó decenas de páginas del BOE. Si sale la de 2027, este es un orden razonable de lectura para no perder tiempo:

1. **Base 1 (normas generales):** número de plazas y reparto entre cupos.
2. **Base 2 (requisitos):** edad, titulación, permiso de conducir y tatuajes. Compruébalos antes de nada.
3. **Base 3 (solicitudes):** plazo, forma de presentación, tasas y exenciones. Apunta el último día hábil del plazo en tu calendario.
4. **Apéndice del baremo:** qué méritos puntúan y cómo se acreditan, para alegarlos todos en la solicitud.
5. **Bases de las pruebas:** estructura del examen, puntuaciones mínimas y penalización por error.
6. **Apéndices de pruebas físicas y certificado médico:** marcas y modelos de certificado.

Compara cada punto con lo que decía la convocatoria anterior. Si algo cambia (una marca, un mérito, una tasa), es lo que más te conviene saber cuanto antes.

## Un caso práctico (hipotético)

Nuria cumple 40 años en 2027 y lee que «la convocatoria saldrá en marzo». Antes de agobiarse, comprueba que la frase no cita ninguna norma y que en el BOE no hay oferta de 2027. Revisa también su edad con el criterio de 2026 (no cumplir 41 en el año de la convocatoria): si en 2027 se mantiene, podría presentarse, pero no en una convocatoria de 2028. Decide estudiar como si saliera pronto y vigilar el BOE cada semana. Es un ejemplo inventado; el requisito exacto lo dirá la convocatoria de 2027.

## Errores frecuentes

- **Tomar una fecha de un foro por oficial.**
- **Pensar que «sale siempre en primavera».** En 2023 salió en agosto y en 2024 en junio.
- **Esperar a la convocatoria para conseguir Cl@ve** o para pedir certificados de méritos.
- **Dar por hecho el número de plazas** antes de la oferta.
- **Confundir el examen con la convocatoria.** La fecha del examen la anuncia después el Tribunal.
- **Dejar caducar el DNI o el permiso de conducir** justo cuando se abre el plazo: son requisitos que se comprueban y que deben mantenerse durante todo el proceso.

## Checklist

- [ ] Alerta del BOE configurada.
- [ ] Cl@ve o certificado digital operativo.
- [ ] Número de la Seguridad Social localizado.
- [ ] Requisitos comprobados con el criterio de la última convocatoria.
- [ ] Certificados de méritos reunidos.
- [ ] Plan de estudio en marcha, con [recursos oficiales gratuitos](/blog/recursos-oficiales-gratuitos-para-preparar-la-guardia-civil) como complemento.

Para tener el temario ordenado desde ya, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Hay ya fecha para la convocatoria de 2027?

No había fecha oficial en noviembre de 2026. Cualquier fecha que circule sin una norma detrás es una suposición.

### ¿Saldrán más plazas que en 2026?

No se sabe. La cifra la fija la oferta de empleo público, y la de 2027 no estaba publicada. Que subiera en los últimos años no permite asegurar lo que ocurrirá.

### ¿Cuánto tiempo pasa entre la oferta y la convocatoria?

Ha variado mucho: en 2024 fueron menos de dos semanas y en 2026, casi dos meses. No hay un plazo fijo.

### ¿Puedo empezar a prepararme sin convocatoria?

Sí. El programa lo fija cada convocatoria, así que lo prudente es estudiar con el de la última publicada y comprobar el de 2027 en cuanto salga.

### ¿La tasa será de 11,66 euros?

Fue esa en las convocatorias de 2023 a 2026, pero la cuantía de 2027 la dirá su convocatoria.

### ¿La convocatoria del Colegio de Guardias Jóvenes es la misma?

No. El ingreso en el Colegio tiene su propia oferta de plazas, que publica la Guardia Civil en su Boletín Oficial, no en el BOE. La del curso 2026/2027 la enlaza la web oficial de la Guardia Civil.',
   '/blog/convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra.jpg', 'Opositor mirando el móvil con gesto impaciente ante un calendario de pared sin marcar y apuntes subrayados', 'publicado', '2027-01-28T06:11:00.000Z', 'acceso-guardia-civil',
   ARRAY['convocatoria 2027', 'BOE', 'calendario', 'plazas']::text[], '{"title":"Convocatoria Guardia Civil 2027: qué se sabe oficial","description":"Convocatoria Guardia Civil 2027: qué hay de oficial, fechas del BOE de las convocatorias de 2023 a 2026, qué se ha repetido y dónde seguirla sin rumores."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('grs-que-son-los-grupos-de-reserva-y-seguridad-guardia-civil', 'articulo', 'GRS: qué son los Grupos de Reserva y Seguridad de la Guardia Civil', 'Los GRS son la fuerza de reserva de la Guardia Civil: refuerzan a otras unidades, garantizan la seguridad en grandes concentraciones y apoyan en catástrofes. Qué hacen, cómo se organizan y cómo se llega a ellos según la Orden PCM/509/2020.', 'Si has visto a guardias civiles en un gran evento deportivo, en una manifestación multitudinaria o ayudando tras una inundación, es muy probable que fueran de un GRS. **Los Grupos de Reserva y Seguridad son las unidades de ejecución de la Agrupación de Reserva y Seguridad (ARS), la principal fuerza de reserva de la Guardia Civil.** No son una unidad «de élite» concreta, sino la reserva que el Cuerpo envía allí donde hace falta reforzar. Para servir en ellos como especialista hay que obtener la cualificación de **Reserva y seguridad**, que se puede conseguir siendo guardia, cabo o cabo primero.

Aquí tienes solo lo que se puede comprobar en fuentes oficiales. Si quieres el contexto general, lee antes [especialidades y destinos en la Guardia Civil](/blog/destinos-especialidades-guardia-civil).

## Qué es la Agrupación de Reserva y Seguridad

Según la [web oficial](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/OrdenPublico/), en 1988 surgió la necesidad de agrupar las unidades de reserva para mejorar el apoyo a las unidades territoriales y responder a incendios, inundaciones, catástrofes y alteraciones del orden público, y el **21 de junio de 1988** se creó la ARS.

La norma de estructura del Cuerpo ([Orden PRE/422/2013](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906), artículo 8.2.a) la define como la «principal Unidad de Reserva de la Guardia Civil, especialmente concebida, preparada y organizada» para la prevención, el mantenimiento y, en su caso, el restablecimiento de la seguridad pública. Como unidad de reserva puede adquirir diversas capacidades para emplearse temporalmente en apoyo de otras unidades, colaborar en casos de grave riesgo, catástrofe o calamidad pública y participar en misiones internacionales.

Depende de la **Jefatura de Unidades Especiales y de Reserva**, que a su vez depende del Mando de Operaciones (artículos 6 y 8). Esa jefatura dirige, coordina y controla sus unidades y aprueba los procedimientos específicos para emplearlas y para que apoyen a otras unidades del Cuerpo (artículo 8.1). De ella dependen también, entre otros, el Servicio de Montaña, el Servicio Aéreo, el Servicio Cinológico y Remonta y la Unidad de Acción Rural.

## Qué hacen

La web resume tres cometidos fundamentales:

- **Garantizar el orden y la seguridad en grandes concentraciones de masas.**
- **Realizar o colaborar en la protección y seguridad de altas personalidades.**
- **Reforzar los servicios de las unidades territoriales.**

Ejemplos de servicios que encajan en esos cometidos: un dispositivo de seguridad en una final deportiva o en una cumbre internacional, el refuerzo de una comandancia en temporada alta, la protección de una visita oficial o el apoyo a la población tras una catástrofe. Conecta con lo que estudias en el temario sobre [seguridad ciudadana](/blog/seguridad-ciudadana-y-seguridad-privada-que-cae-del-temario) y sobre [las competencias de cada cuerpo](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada).

## Cómo se organiza

La ARS tiene dos tipos de unidades:

| Unidad | Qué es, según la web oficial |
|---|---|
| Grupos de Reserva y Seguridad (GRS) | Unidades que ejecutan los servicios. Se articulan en compañías, que encuadran secciones, y para cada servicio se despliegan en módulos: Unidad Básica de Actuación (UBA), reforzada (UBAR), disminuida (UBAD) y Módulo de Intervención Rápida (MIR) |
| Escuadrón de Caballería | Unidad montada preparada para los cometidos de la agrupación que se ajusten a sus medios; también actúa como unidad de honores y protocolo en actos de especial relevancia |

La web indica **ocho grupos**, con base en Madrid, Sevilla, Valencia, Barcelona, Zaragoza, León, Pontevedra y Santa Cruz de Tenerife. Es el dato publicado en noviembre de 2026; el despliegue puede cambiar.

## GRS, GAR y UAR: no son lo mismo

Es una confusión frecuente. La Orden PRE/422/2013 define la **Unidad de Acción Rural** como la unidad preparada para la lucha contra elementos terroristas y para operaciones de gran riesgo que requieran respuesta rápida (artículo 8.2.b). El **GAR**, con sede en Logroño, es otra unidad con misiones y proceso de selección propios. El Reglamento de destinos los trata de forma distinta: concede un derecho preferente tras tres años ininterrumpidos en el GAR y tras cinco en la ARS (artículo 50.2). Este artículo solo trata de los GRS.

## La especialidad: Seguridad e Intervención

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) incluye la especialidad **Seguridad e Intervención (SEIN, E20)** con dos modalidades. Su anexo ([PDF del BOE](https://www.boe.es/boe/dias/2020/06/10/pdfs/BOE-A-2020-5900.pdf)) fija:

| Modalidad | Código | Empleos de obtención | Servidumbre |
|---|---|---|---|
| Reserva y seguridad | ERS | Teniente y capitán; sargento y sargento primero; guardia, cabo y cabo primero | 3 años |
| Ecuestre | ECE | Los mismos | 3 años |

Las dos comparten rasgos: **no exigen cualificación previa**, **hay límite de edad para acceder** (la ficha no da la cifra), no lo hay para permanecer, se ejercen en servicio activo y existen **pruebas o condiciones de mantenimiento y renovación**. La servidumbre de Ecuestre se cumple en el Escuadrón de Caballería; la de Reserva y seguridad, en puestos de esa función, y también puede cumplirse en la Unidad Especial de Intervención. La pérdida de la cualificación la insta el jefe de la ARS.

## Cómo se llega a un GRS

No se accede «por oposición» a un GRS. El camino que marcan las normas es:

1. **Ingresar** en la Escala de Cabos y Guardias y obtener un primer destino, como explicamos en [cómo se asignan los primeros destinos](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).
2. **Superar el curso** que da la cualificación. El [Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764) fija requisitos generales para los cursos de especialización (artículo 56): aptitud psicofísica y técnica, límites de edad o altura si los hay, titulaciones o idiomas, servidumbre anterior cumplida y no tener antecedentes penales ni sanciones graves o muy graves sin cancelar. La selección se publica, con carácter general, en el Boletín Oficial de la Guardia Civil (artículo 43.8).
3. **Obtener un puesto de especialista**, que se asigna por **concurso de méritos** ([Orden INT/26/2021](https://www.boe.es/buscar/act.php?id=BOE-A-2021-897), artículo 10.1).

Qué requisitos exactos pide cada convocatoria, qué pruebas incluye, cuántas plazas hay o cuánto dura la formación **no lo escribo**, porque no lo he encontrado en una fuente oficial pública y cambia de una convocatoria a otra.

## Un derecho preferente del Reglamento de destinos

El [Real Decreto 470/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398) reconoce un **derecho preferente con carácter absoluto** para cualquier vacante de provisión por antigüedad a quien haya permanecido al menos **cinco años ininterrumpidos** en unidades de la ARS, en vacante con exigencia de la cualificación específica (artículo 50.2.b). Lo incluye entre las circunstancias de especial responsabilidad o penosidad. Es una muestra de que son destinos exigentes y de que el sistema compensa la permanencia en ellos.

## Errores frecuentes

1. **Llamarlos «antidisturbios».** No es una denominación oficial; los cometidos son más amplios.
2. **Confundir GRS y GAR.** Son unidades distintas, con selección y misiones distintas.
3. **Pensar que solo cuenta el físico.** Las fichas prevén condiciones de mantenimiento y renovación, y los cursos piden también requisitos de conducta y de historial.
4. **Ignorar la servidumbre.** Al obtener la cualificación asumes un periodo mínimo en puestos de la especialidad.

## Caso práctico (hipotético)

Raquel, guardia en un puesto territorial, supera el curso de Reserva y seguridad. Pide vacantes de un GRS, que se asignan por concurso de méritos, y obtiene una en Sevilla. Si permanece cinco años seguidos en unidades de la ARS en vacantes con esa cualificación, podrá invocar el derecho preferente del artículo 50.2.b para una vacante de antigüedad. El caso es inventado; las reglas son las del Reglamento de destinos.

## Qué puedes hacer ya

No puedes elegir un GRS antes de ser guardia civil, pero puedes prepararte:

- **Forma física.** La que trabajas para las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) es la base; las fichas de la especialidad prevén además condiciones de mantenimiento.
- **Idiomas.** La ARS puede participar en misiones internacionales, y los cursos de especialización pueden exigir niveles de idiomas según el artículo 56 del Real Decreto 131/2018.
- **Historial limpio.** Las sanciones graves o muy graves sin cancelar impiden optar a los cursos: la disciplina empieza en Baeza.
- **Temario jurídico.** Derechos fundamentales, reunión y manifestación, seguridad ciudadana: es el marco legal de cada dispositivo. Antes de nada, aprobar: en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos con ese primer paso.

## Preguntas frecuentes

### ¿GRS es lo mismo que antidisturbios?
No hay una unidad con ese nombre oficial. La web habla de garantizar el orden y la seguridad en grandes concentraciones, proteger altas personalidades y reforzar a las unidades territoriales.

### ¿Se puede ir a un GRS nada más salir de Baeza?
La normativa exige la cualificación específica y un puesto que la requiera, asignado por concurso de méritos. Cómo se concreta depende de la convocatoria vigente.

### ¿Un guardia puede obtener la especialidad?
Sí. El anexo de la Orden PCM/509/2020 incluye a guardias, cabos y cabos primeros entre los empleos de obtención de Reserva y seguridad.

### ¿Cuántos GRS hay?
La web oficial indica ocho grupos, con las bases citadas arriba.

### ¿Qué es el Escuadrón de Caballería?
La unidad montada de la ARS, que también rinde honores en actos relevantes. Su modalidad es la Ecuestre.

### ¿Dónde veo cómo acceder?
En la convocatoria del curso, que se publica en el Boletín Oficial de la Guardia Civil. Desconfía de las cifras cerradas que veas en foros.',
   '/blog/grs-que-son-los-grupos-de-reserva-y-seguridad-guardia-civil.jpg', 'Guardias civiles a caballo atravesando una marisma al amanecer', 'publicado', '2027-01-30T06:45:00.000Z', 'acceso-guardia-civil',
   ARRAY['grs', 'especialidades', 'destinos', 'reserva y seguridad']::text[], '{"title":"GRS Guardia Civil: qué son, funciones y acceso","description":"GRS de la Guardia Civil: qué son los Grupos de Reserva y Seguridad, sus funciones, su organización, la especialidad de Reserva y Seguridad y el acceso."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('mujeres-en-la-guardia-civil-acceso-datos-y-conciliacion', 'articulo', 'Mujeres en la Guardia Civil: acceso, datos y conciliación', 'Misma oposición, marcas físicas propias y medidas específicas si hay embarazo, lactancia o permiso por nacimiento. Qué dice la convocatoria de 2026, qué cifras oficiales hay (con su año) y qué prevén las normas de enseñanza y de destinos.', 'Respuesta corta: las mujeres acceden por **el mismo proceso selectivo** que los hombres, con las mismas pruebas y con **marcas físicas propias** por sexo y edad. La normativa prevé medidas específicas para quien esté embarazada, en lactancia o disfrutando de ciertos permisos durante la oposición o el curso, para que no pierda la plaza. En cifras oficiales, las mujeres eran el **11,17 % de la Escala de Cabos y Guardias en 2025** y el **35 % de los aspirantes de acceso libre** en el dato más reciente publicado por Interior en mayo de 2026.

Vamos por partes, y solo con lo que figura en fuentes oficiales.

## Un poco de historia

La incorporación de la mujer a la Guardia Civil se abrió con el **Real Decreto-ley 1/1988**, de 22 de febrero, que reguló por primera vez el acceso de la mujer a las Fuerzas Armadas, según recordó el Ministerio del Interior en el acto del 35 aniversario, en octubre de 2023 ([La Moncloa](https://www.lamoncloa.gob.es/serviciosdeprensa/notasprensa/interior/Paginas/2023/231023-marlaska-aniversario-mujer-guardia-civil.aspx)). Esa misma nota cita como antecedente a las **matronas**, que prestaron servicio desde 1948 sin portar armas.

En aquel acto se reconoció a guardias civiles pioneras en especialidades: la primera mujer en dirigir una comandancia, la primera en superar el curso de Adiestramientos Especiales, la primera mecánica de helicópteros o la primera en superar el curso de desactivación de explosivos y defensa NRBQ, entre otras. Para el marco histórico general, tienes la [historia de la Guardia Civil](/blog/historia-de-la-guardia-civil-del-duque-de-ahumada-a-hoy).

## Cómo es el acceso

La [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982) declara que tiene en cuenta el principio de igualdad de trato entre mujeres y hombres en el acceso al empleo, conforme al artículo 14 de la Constitución y a la Ley Orgánica 3/2007. Su base 4.2 encarga al Tribunal velar por la igualdad de oportunidades entre aspirantes de ambos sexos, y la 7.2 garantiza que conocimientos y psicotécnico se corrijan sin identificar a la persona.

No hay una oposición distinta: los [requisitos](/blog/requisitos-guardia-civil), el examen, el psicotécnico, la entrevista y el reconocimiento médico son los mismos. La diferencia está en las **marcas de las pruebas físicas** (apéndice II de la convocatoria de 2026):

| Prueba (mujeres) | Menos de 35 años | 35-39 años | 40 o más |
|---|---|---|---|
| Carrera de 2.000 m | 11:14 | 11:35 | 12:49 |
| Circuito de agilidad | 16,00 s | 16,40 s | 17,90 s |
| Extensiones de brazos | 11 | 11 | 9 |
| Natación 50 m libre | 81 s | 83 s | 88 s |

Las de los hombres y la técnica de cada prueba están en [pruebas físicas: marcas y entrenamiento](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento). Comprueba siempre las de la convocatoria vigente. Desde la Orden PCM/1133/2023 tampoco hay estatura mínima.

## Datos oficiales, con año

Estas cifras proceden de la nota del Ministerio del Interior sobre el II Plan de Igualdad de la Guardia Civil, de 6 de mayo de 2026 ([La Moncloa](https://www.lamoncloa.gob.es/serviciosdeprensa/notasprensa/interior/Paginas/2026/060526-interior-plan-igualdad-guardia-civil.aspx)):

| Presencia femenina | 2019 | 2025 |
|---|---|---|
| Escala de Cabos y Guardias | 7,29 % | 11,17 % |
| Escala de Suboficiales | 2,95 % | 5,09 % |
| Escala de Oficiales | 3,67 % | 7,12 % |

Sobre las aspirantes, la misma nota indica que las mujeres eran el 19,57 % de los aspirantes de acceso libre a Cabos y Guardias en 2019 y que «en la actualidad» son el 35 % (no precisa el año). También informa de que en el primer semestre de 2026 dos mujeres alcanzaron por primera vez el empleo de coronel.

Un dato anterior, de otra fuente oficial: en octubre de 2023, Interior cifró en **7.741 las guardias civiles en activo**, el 9,47 % de la plantilla (nota del 35 aniversario citada arriba). No mezcles cifras de distintas fechas o que cuenten colectivos distintos: por eso doy cada una con su fuente.

## El II Plan de Igualdad (2026)

Según la nota de Interior, el II Plan se articula en cuatro ejes: acceso, promoción y liderazgo femenino; condiciones laborales, salud, conciliación y corresponsabilidad; prevención y actuación ante el acoso y la violencia contra las mujeres, con la ampliación de la red de asesoría confidencial a todo el territorio; y transformación organizativa. Para el marco legal que entra en la oposición, repasa [las claves de la ley de igualdad](/blog/igualdad-efectiva-de-mujeres-y-hombres-claves-de-la-ley).

## Conciliación durante la oposición

El [Reglamento de ordenación de la enseñanza](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764), en su capítulo V, protege a las aspirantes por acceso directo que, por **embarazo, parto o posparto** acreditado mediante informe médico, o por **lactancia de un hijo menor de doce meses**, no puedan hacer las pruebas en igualdad de condiciones (artículo 63.2). Lo esencial del artículo 64:

- Sanidad de la Guardia Civil o el Tribunal indican qué pruebas alcanza la limitación. Las demás se hacen en la fecha prevista.
- Las que no puedas hacer se realizan, a tu elección, en la **fecha alternativa** de la convocatoria, siempre antes de la incorporación al centro, o en la **convocatoria siguiente**, solicitando el aplazamiento. La de 2026 lo recoge en su base 6.3: la fecha alternativa la fija el Tribunal, si es viable, antes de la incorporación a Baeza.
- Si las haces en otra convocatoria, quedas **exenta del requisito de edad** de la nueva y no se te aplican los cambios de titulación.
- No repites las pruebas ya superadas, si son iguales.
- Si superas el proceso, ingresas con la promoción en la que completes las pruebas, pero al incorporarte a la escala se te asigna la **antigüedad** que te habría correspondido en la convocatoria original, con sus efectos económicos.

La convocatoria de 2026 confirma que quien se acoja a estas medidas y supere el proceso será incluida en la relación de propuestos si cumple las condiciones del capítulo V (bases 9.3 y 12.1).

## Conciliación durante la formación

Si la aspirante propuesta no puede presentarse en el centro por embarazo, lactancia o los permisos citados, tiene derecho a **posponer su incorporación o reservar su plaza**, una sola vez (artículo 65.1). Ya en el curso, el alumnado en esas situaciones tiene derecho a (artículo 65.2):

- no causar baja por insuficiencia psicofísica ni por no superar las pruebas en plazo, si se debe a su estado;
- que no se computen como consumidas las convocatorias a las que no pudo presentarse;
- no repetir lo ya superado, salvo pruebas médicas o físicas determinantes;
- fijar su residencia fuera del centro docente;
- retrasar o interrumpir, una sola vez, el periodo de [prácticas](/blog/las-practicas-despues-de-baeza-que-te-espera-guardia-civil);
- acceder a la escala con la antigüedad que le habría correspondido, con sus efectos económicos. Esta letra la añadió el [Real Decreto 392/2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-10512), en vigor desde el 16 de mayo de 2026.

El centro facilitará, en la medida de lo posible, la enseñanza a distancia de lo que no exija presencia, exámenes en fechas alternativas y la adaptación de las vacaciones (artículo 65.3). Medidas parecidas existen después para los cursos de perfeccionamiento, como la reserva de plaza en la siguiente convocatoria (artículo 66).

## Conciliación en los destinos

El [Reglamento de destinos](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398) incluye, entre otras:

- Asignación en comisión de servicio de un **puesto compatible** a la guardia civil durante el embarazo y la lactancia de un hijo menor de doce meses (artículo 41.1.f).
- **Derecho preferente de agrupamiento familiar** para quien tenga hijos menores de doce años o con discapacidad igual o superior al 33 %, sobre vacantes de antigüedad en la provincia del cónyuge guardia civil (artículo 50.3.b). Cómo funcionan los destinos, en [este artículo](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).
- Posibilidad de que dos cónyuges guardias civiles pidan juntos vacantes de antigüedad de la misma resolución (artículo 19).

Los permisos concretos y su duración dependen de la normativa específica de jornada y permisos del personal. No los desarrollo porque no los he contrastado para este artículo: consúltalos en la normativa vigente y en tu unidad.

## Errores frecuentes

1. **Creer que hay menos plazas o una lista aparte.** No: la convocatoria no reserva plazas por sexo.
2. **No avisar a tiempo.** Las medidas exigen acreditación con informe médico oficial ante el Tribunal o el centro.
3. **Pensar que aplazar las pruebas hace perder antigüedad.** El reglamento prevé lo contrario.
4. **Entrenar solo para la marca mínima.** Después, Formación Física es una asignatura evaluable en Baeza.

## Caso práctico (hipotético)

Sara aprueba el examen y, al llegar las pruebas físicas, está embarazada. Acredita su situación con informe médico oficial. Sanidad indica que puede hacer el circuito de agilidad pero no la carrera ni la natación. Sara elige aplazarlas a la convocatoria siguiente: allí no le exigirán el requisito de edad y conservará lo ya superado. Si aprueba, entrará en Baeza con esa promoción, pero al incorporarse a la escala tendrá la antigüedad de la convocatoria original. El caso es inventado; las reglas son las del artículo 64.

Si estás en esa fase, consulta el apartado de conciliación de la convocatoria de tu año. Y si quieres empezar el temario, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te organiza el estudio.

## Preguntas frecuentes

### ¿Hay una oposición distinta para mujeres?
No. Es el mismo proceso selectivo; solo cambian las marcas de las pruebas físicas, que se fijan por sexo y edad.

### ¿Qué pasa si estoy embarazada en las pruebas físicas?
Puedes hacer las pruebas afectadas en una fecha alternativa anterior a la incorporación o aplazarlas a la convocatoria siguiente, previa acreditación médica.

### ¿Pierdo la plaza si me quedo embarazada en Baeza?
No causas baja por insuficiencia psicofísica derivada de tu estado, no se consumen convocatorias y puedes retrasar o interrumpir una vez las prácticas.

### ¿Pierdo antigüedad si aplazo?
No. Tanto en el proceso selectivo como en la formación, la norma prevé asignarte la antigüedad que te habría correspondido, con efectos económicos.

### ¿Qué porcentaje de mujeres hay en la Guardia Civil?
En la Escala de Cabos y Guardias, el 11,17 % en 2025, según Interior (nota de 6 de mayo de 2026).

### ¿Hay una estatura mínima para mujeres?
No. Desde la Orden PCM/1133/2023 no se exige estatura mínima.',
   '/blog/mujeres-en-la-guardia-civil-acceso-datos-y-conciliacion.jpg', 'Agente del SEPRONA liberando un ave rapaz al atardecer', 'publicado', '2027-01-29T06:28:00.000Z', 'acceso-guardia-civil',
   ARRAY['mujeres', 'igualdad', 'conciliación', 'embarazo']::text[], '{"title":"Mujeres en la Guardia Civil: acceso y conciliación","description":"Mujeres en la Guardia Civil: convocatoria 2026, marcas físicas, cifras oficiales con su año y medidas de conciliación en la formación y los destinos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('rescate-de-montana-en-la-guardia-civil-requisitos-y-formacion', 'articulo', 'Rescate de montaña en la Guardia Civil: funciones, formación y cómo se accede', 'El Servicio de Montaña y sus GREIM rescatan, investigan accidentes y vigilan zonas de difícil acceso. Qué hacen, cómo se despliegan, dónde se forma el personal y qué dice la normativa sobre el acceso a la especialidad, sin cifras inventadas.', 'El rescate de un montañero en el Pirineo o de una persona atrapada en una cueva suele llevar detrás a un guardia civil del Servicio de Montaña. **Los GREIM son los grupos de ese servicio, y la especialidad de Montaña tiene dos modalidades: especialista e instructor.** La de especialista puede obtenerse siendo guardia, cabo o cabo primero; la de instructor exige haber sido antes especialista.

Un aviso previo: el título habla de requisitos, pero los de cada curso (pruebas, plazas, duración, edad máxima) los fija la convocatoria vigente y no los he encontrado publicados en abierto. Aquí va solo lo comprobable.

## Qué hace el Servicio de Montaña

La norma de estructura del Cuerpo ([Orden PRE/422/2013](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906), artículo 8.2.f) lo define como el órgano especializado para las funciones de la Guardia Civil en zonas de montaña o en otras que, por su dificultad orográfica o climatológica, requieran una especial preparación física y técnica y medios técnicos adecuados. Depende de la Jefatura de Unidades Especiales y de Reserva.

Según la [web oficial](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/Greim/), sus especialistas:

- Rescatan y auxilian a personas.
- Investigan accidentes.
- Velan por la conservación de la naturaleza.
- Garantizan la seguridad ciudadana en instalaciones deportivas de montaña, estaciones de esquí y competiciones.
- Colaboran en la prevención de accidentes y en la promoción de la seguridad en montaña.

Ejemplos de servicios que encajan ahí: localizar a un senderista extraviado, evacuar a un escalador herido, intervenir en un barranco o en una cavidad, investigar un accidente mortal en una estación de esquí o dar charlas de prevención. Por la dificultad del terreno, los rescates se hacen a menudo **coordinados con el Servicio Aéreo**.

## Un poco de historia

La web recoge que el auge de las actividades al aire libre en los años sesenta obligó a organizar el rescate. En **1967** se crearon las Unidades de Esquiadores-Escaladores, que se ocupaban del rescate y de la vigilancia de los pasos fronterizos del Pirineo, y en **1981** se reorganizó el servicio con los actuales GREIM. Desde entonces se ha adaptado: barranquismo en los ochenta, cavidades subterráneas y espeleosocorro a principios de los noventa y rescate en medio acuático. La web usa dos nombres para el GREIM («Rescate Especial de Intervención en Montaña» y «Rescate e Intervención en Montaña»): es la misma unidad.

## Cómo se organiza

- **Órgano central, en Jaca (Huesca):** el Área de Instrucción y Doctrina, que apoya a las unidades e investiga nuevas técnicas y materiales, y de la que depende la Unidad Especial de Montaña (UEM); y el **Centro de Adiestramientos Específicos de Montaña (CAEM)**, responsable de la formación del personal de montaña. Cuenta además con equipos de competición de fondo-biatlón y de esquí-alpinismo.
- **Organización periférica:** grupos distribuidos en áreas que corresponden a uno o varios macizos.

| Área | Algunos GREIM (web oficial, noviembre de 2026) |
|---|---|
| Jaca | Huesca, Jaca, Boltaña, Pamplona, Benasque, Panticosa, Tarazona, Rubielos |
| Cangas de Onís | Cangas de Onís, Mieres, Sabero, Potes, entre otros |
| Granada | Granada, Mallorca, Tenerife, Onteniente, Álora, Ubrique |
| Navacerrada | Navacerrada, El Barco de Ávila, Riaza, Arenas de San Pedro, Ezcaray |
| Viella | Viella |

En total, la web enumera 25 grupos en cinco áreas. El despliegue puede cambiar: consúltalo antes de citarlo.

## Con quién trabaja

El Servicio de Montaña no actúa aislado. Comparte jefatura con el **Servicio Aéreo**, la Agrupación de Reserva y Seguridad o el Servicio Cinológico (Orden PRE/422/2013, artículo 8.2), y la web subraya que sus rescates se coordinan a menudo con los helicópteros del Cuerpo. Y entre sus cometidos está velar por la conservación de la naturaleza, un terreno que comparte con el [SEPRONA](/blog/seprona-la-especialidad-de-proteccion-de-la-naturaleza).

## La especialidad según la normativa

La [Orden PCM/509/2020](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) recoge la especialidad **Montaña (MT, E14)**. Su anexo ([PDF del BOE](https://www.boe.es/boe/dias/2020/06/10/pdfs/BOE-A-2020-5900.pdf)) dedica una ficha a cada modalidad:

| | Especialista en montaña (MTE) | Instructor de montaña (MTI) |
|---|---|---|
| Escalas de obtención | Oficiales (teniente a comandante), Suboficiales y Cabos y Guardias | Suboficiales y Cabos y Guardias |
| Cualificación previa | Ninguna | Especialista (MTE) |
| Límite de edad de acceso | Sí (la ficha no da la cifra) | Sí |
| Límite de edad para permanecer | No | No |
| Mantenimiento y renovación | Con pruebas o condiciones | Con pruebas o condiciones |
| Servidumbre | 4 años | 3 años |

La servidumbre del especialista puede cumplirse también en algunas unidades distintas, como la Unidad Especial de Intervención o la Unidad de Seguridad de la Casa de S. M. el Rey. La pérdida de la cualificación la insta el jefe del Servicio de Montaña.

## Cómo se accede

1. **Ingresar** en la Escala de Cabos y Guardias y obtener un primer destino; lo explicamos en [cómo se asignan los primeros destinos](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).
2. **Superar el curso de especialización**, que imparte el CAEM según la web. El [Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764) fija requisitos generales para estos cursos (artículo 56): aptitud psicofísica y técnica y, en su caso, límites de edad o de altura; titulaciones, idiomas o habilitaciones; servidumbre anterior cumplida; no tener antecedentes penales ni sanciones graves o muy graves sin cancelar; y esperar tres años si se ha suspendido el proceso selectivo tres veces o si se causó baja en el curso por no superarlo. La selección se publica, con carácter general, en el Boletín Oficial de la Guardia Civil (artículo 43.8).
3. **Obtener un puesto de especialista**, que se asigna por **concurso de méritos** ([Orden INT/26/2021](https://www.boe.es/buscar/act.php?id=BOE-A-2021-897), artículo 10.1).
4. **Cumplir la servidumbre.** El [Reglamento de destinos](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398) la limita a un máximo de cinco años (artículo 53) y te hace destinable forzoso durante los dos años siguientes a tu aptitud si no puedes cumplirla en tu destino (artículo 31).

## Lo que no podemos contarte

No podemos decirte qué pruebas físicas o técnicas se exigen, cuántas plazas se convocan, qué experiencia previa se pide ni cuánto dura el curso: **no lo hemos podido verificar en una fuente oficial vigente**. Lo que sí dicen las normas es que hay límite de edad de acceso, aptitud psicofísica y técnica exigible y pruebas de mantenimiento: las cifras concretas están en cada convocatoria. Para el panorama del resto de especialidades, consulta [destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

## Errores frecuentes

1. **Pensar que se entra en montaña desde la oposición.** Hace falta la cualificación y un destino de concurso de méritos.
2. **Querer aprender montaña en el curso.** Es mejor llegar con experiencia y formación de base, adquirida de forma segura.
3. **Entrenar solo resistencia.** Rescate es técnica, orientación y trabajo en equipo además de físico.
4. **Olvidar la servidumbre y el mantenimiento.** La cualificación obliga a permanecer en esos puestos y a mantener el nivel.

## Caso práctico (hipotético)

Elena, guardia con varios años en un puesto de León, practica montaña desde joven. Cuando se convoca el curso, comprueba que cumple la edad y no está cumpliendo otra servidumbre. Lo supera en el CAEM y obtiene la cualificación MTE. Pide por concurso de méritos una vacante de especialista en un GREIM del área de Cangas de Onís. Si años después quiere ser instructora, ya cumple la cualificación previa exigida. El caso es inventado; las reglas son las de las normas citadas.

## Qué puedes hacer ya como opositor

- **Cuida tu forma física** con un plan realista, empezando por las [marcas de las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento). Ante dudas de entrenamiento o salud, consulta a un profesional.
- **Aprende orientación**: el tema de [topografía](/blog/topografia-para-guardia-civil-escalas-curvas-de-nivel) del temario es la base de leer un mapa en el monte.
- **Conoce la montaña con criterio**, con formación de federaciones y siempre de forma segura. Y en una emergencia, llama al 112.

Y antes de todo eso, aprobar. En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te acompañamos hasta ahí.

## Preguntas frecuentes

### ¿Qué es el GREIM?
El Grupo de Rescate e Intervención en Montaña: la unidad del Servicio de Montaña que actúa en zonas de montaña y de difícil acceso.

### ¿Puedo ir a Montaña al salir de la academia?
La normativa exige la cualificación específica y un puesto que la requiera, asignado por concurso de méritos. La vía concreta depende de la convocatoria vigente.

### ¿Un guardia puede ser especialista en montaña?
Sí. El anexo de la Orden PCM/509/2020 incluye a guardias, cabos y cabos primeros entre los empleos en que se obtiene la modalidad de especialista.

### ¿Dónde se forman los especialistas?
La web oficial indica que el CAEM, en Jaca, es el responsable de la formación del personal de montaña.

### ¿Qué pruebas hay que pasar?
Las fija cada convocatoria. No hay cifras generales que podamos darte con seguridad.

### ¿Cuántos GREIM hay?
La web oficial enumera 25 grupos repartidos en cinco áreas (Jaca, Cangas de Onís, Granada, Navacerrada y Viella).

### ¿Hay especialistas de montaña fuera de los Pirineos?
Sí. Además de las áreas pirenaicas de Jaca y Viella, la web cita grupos como los de Cangas de Onís, Potes, Navacerrada, Granada, Mallorca o Tenerife, entre otros.',
   '/blog/rescate-de-montana-en-la-guardia-civil-requisitos-y-formacion.jpg', 'Especialistas de montaña de la Guardia Civil ayudando a una montañera a cruzar un río', 'publicado', '2027-02-02T06:36:00.000Z', 'acceso-guardia-civil',
   ARRAY['montaña', 'greim', 'especialidades', 'rescate']::text[], '{"title":"Rescate de montaña Guardia Civil: GREIM y acceso","description":"Rescate de montaña en la Guardia Civil: qué hacen los GREIM, cómo se despliegan, dónde se forman y qué exige la normativa para la especialidad de montaña."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('servicio-cinologico-como-ser-guia-canino-en-la-guardia-civil', 'articulo', 'Servicio Cinológico: qué hace un guía canino de la Guardia Civil y cómo se accede', 'Seguridad y rescate, drogas y explosivos: así trabajan los guías de perros de la Guardia Civil. Qué es el Servicio Cinológico, qué cursos imparte el CAPEDE y qué exige la normativa para obtener la especialidad.', 'Pocas especialidades despiertan tanta simpatía como la de guía de perros. Pero detrás del binomio guía-perro hay una formación propia, un centro docente específico y una normativa que conviene conocer antes de hacerse ilusiones.

**Respuesta corta:** para ser guía canino de la Guardia Civil primero hay que ingresar en el Cuerpo. Después se obtiene la especialidad **Cinológica**, modalidad **guía de perros**, superando el curso de especialización correspondiente, y se ejerce ocupando un puesto orgánico que la exija. La especialidad se puede obtener desde el empleo de guardia civil, pero la ficha oficial prevé un **límite de edad de acceso** y un **periodo de servidumbre de cinco años**.

En este artículo repasamos solo lo que se puede comprobar en fuentes oficiales: la norma de estructura, la orden de especialidades, el reglamento de enseñanza y la web de la Guardia Civil. Si aún no tienes claro cómo funcionan los destinos en general, empieza por [especialidades y destinos](/blog/destinos-especialidades-guardia-civil).

## El Servicio Cinológico y Remonta

La norma que desarrolla la estructura de los servicios centrales de la Guardia Civil ([Orden PRE/422/2013, BOE-A-2013-2906](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906), artículo 8) define el **Servicio Cinológico y Remonta** como el órgano especializado para:

- la **dirección técnica y la ejecución** de los servicios en los que participan unidades dotadas de perros;
- **inspeccionar y evaluar las aptitudes técnicas** de las unidades cinológicas del Cuerpo y de otros organismos que se determinen;
- la **gestión, administración y apoyo al ganado** y a los animales de utilidad para el servicio (de ahí lo de «Remonta»).

Depende de la **Jefatura de Unidades Especiales y de Reserva**, la misma de la que dependen, según esa orden, el Servicio Aéreo o la Agrupación de Reserva y Seguridad.

## El CAPEDE: donde se forman los guías

El **Centro de Adiestramiento de Perros (CAPEDE)** es, según la [web oficial de la Guardia Civil](https://web.guardiacivil.es/es/institucional/conocenos/centros_docentes/perros/), el centro de perfeccionamiento de referencia de la especialidad cinológica. Sus funciones:

- **Seleccionar y formar** al personal del Cuerpo que presta servicio como guía de perros en las unidades operativas.
- **Capacitar a guías para labores docentes** de adiestramiento.
- Instruir a componentes de **otros cuerpos y unidades**: la web cita policías locales, Policía Foral, Mossos d''Esquadra, Guardia Real y otras unidades militares.
- Formar a componentes de **unidades especiales del propio Cuerpo** que trabajan con perros, como la Unidad de Acción Rural (UAR), los Grupos Especiales de Intervención en Montaña (GREIM) o las unidades de seguridad de Presidencia del Gobierno y de la Casa Real.

Su origen es la Escuela de Adiestramiento de Perros Policía de la Guardia Civil, creada el **9 de octubre de 1951**. Hoy está encuadrado en el Servicio Cinológico y Remonta, del que depende técnica y funcionalmente, y tiene su sede en la antigua carretera de Colmenar, en **El Pardo (Madrid)**.

## Los tres cursos que describe la web oficial

| Curso | Para qué se adiestra al binomio | Subespecialidades citadas |
|---|---|---|
| **Seguridad y rescate (SYR)** | Búsqueda y salvamento de personas desaparecidas en grandes áreas, avalanchas o catástrofes; detección de personas ocultas en edificios o vehículos (también en el control de fronteras); rastreo; protección de personas y edificios públicos y control de masas. | Detección de restos biológicos, en apoyo a las unidades de Policía Judicial. |
| **Detectores de drogas** | Búsqueda de estupefacientes en aeropuertos, puertos, mercancías, controles de carretera, zonas de ocio, registros domiciliarios, naves o paquetería. | Cebos envenenados, indicios de fuego, papel moneda, tabaco y droga en personas. |
| **Detectores de explosivos** | Búsqueda y localización de artefactos en lugares públicos ante amenazas reales, edificios oficiales, itinerarios de visitas de personalidades, puertos y aeropuertos. | La web no cita subespecialidades. |

Fíjate en que la web no publica ni la duración de los cursos ni el número de plazas: eso lo fija cada convocatoria.

## Qué dice la orden de especialidades

La [Orden PCM/509/2020 (BOE-A-2020-5900)](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) regula las especialidades de la Guardia Civil. La **Cinológica (CIN)** tiene dos modalidades: **guía de perros (GPE)** e **instructor de guías de perros (GPI)**. Para todas las especialidades, el artículo 7 fija la misma regla de fondo:

1. Para obtener la especialidad hay que **acreditar la cualificación específica**.
2. Para ejercerla hay que **ocupar un puesto orgánico** que la requiera.
3. Ese puesto puede condicionarse por empleo o escala, edad, condiciones psicofísicas, titulaciones previas o nivel de idiomas.

### Lo que dicen las fichas del anexo

El anexo de la orden incluye una ficha técnica por modalidad. Estos son los datos de las dos modalidades cinológicas, leídos en el texto consolidado del BOE:

| Dato de la ficha | Guía de perros | Instructor de guías |
|---|---|---|
| Empleos de la Escala de Cabos y Guardias que pueden obtenerla | Guardia civil, cabo y cabo primero | Guardia civil, cabo y cabo primero |
| Cualificación previa exigida | Ninguna | Ser guía de perros (GPE) |
| Límite de edad para acceder a la cualificación | Sí | Sí |
| Límite de edad para permanecer en el puesto | No | No |
| Situación administrativa para ocupar el puesto | Activo | Activo |

Para la modalidad de **guía de perros**, la ficha añade que hay **pruebas o condiciones de mantenimiento y de renovación** de la cualificación, que la autoridad que propone su pérdida es el **Jefe del Servicio Cinológico y Remonta** y que el **periodo de servidumbre es de cinco años**. También permite cumplir esa servidumbre en otras unidades donde se trabaja con perros, como el Grupo de Acción Rápida, la Unidad Especial de Intervención o las unidades de seguridad de la Casa de S. M. el Rey y de la Presidencia del Gobierno.

Un detalle importante: la ficha dice que **hay límite de edad**, pero no fija la cifra. Esa concreción corresponde a la normativa de desarrollo y a la convocatoria del curso. Desconfía de quien te dé una edad exacta sin enseñarte el texto.

### Qué es la «servidumbre»

El Reglamento de destinos ([Real Decreto 470/2019, BOE-A-2019-11398](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398)) la define como la obligación de ocupar, o seguir ocupando, puestos donde se desempeñan las funciones ligadas a una titulación obtenida en la enseñanza de perfeccionamiento. Su artículo 53 añade que ese periodo **no puede superar los cinco años**. Además, durante los dos años siguientes a la publicación de la aptitud, quien no tenga un destino donde cumplirla puede ser destinado con carácter forzoso a uno en el que sí pueda.

Traducido: si haces el curso, el Cuerpo espera que trabajes como guía durante un tiempo. Es una decisión que conviene tomar sabiendo lo que implica.

## Requisitos generales para optar a un curso de especialización

El Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018, BOE-A-2018-3764](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764), artículo 56) enumera los requisitos comunes a todos los cursos de especialización, sin perjuicio de los propios de cada especialidad:

- Haber cumplido la servidumbre ligada a un curso de especialización anterior.
- Aptitud psicofísica y técnica y, en su caso, edad o altura mínima o máxima.
- Titulaciones, niveles de idiomas o habilitaciones, si se exigen.
- Si has suspendido las pruebas del mismo curso tres veces, que hayan pasado al menos tres años desde la última solicitud.
- Que hayan pasado tres años si causaste baja en un curso por no superar sus pruebas.
- Que no haya circunstancias que hagan prever que no cumplirás la servidumbre.
- No estar sometido a un expediente por insuficiencia de facultades profesionales o de condiciones psicofísicas.
- Carecer de antecedentes penales, no estar procesado o investigado por delito doloso y no tener anotadas sin cancelar sanciones por faltas graves o muy graves.

La selección de asistentes se publica, con carácter general, en el **Boletín Oficial de la Guardia Civil**.

## El camino, paso a paso

1. **Aprobar la oposición** a la Escala de Cabos y Guardias. Sin esto no hay nada más.
2. **Superar la formación**: el curso en la [Academia de Baeza](/blog/academia-baeza-guardia-civil) y el periodo de [prácticas en unidades](/blog/las-practicas-despues-de-baeza-que-te-espera-guardia-civil).
3. **Incorporarte a tu primer destino**, que depende de tu número y de las vacantes. Lo explicamos en [cómo se eligen los destinos al salir de Baeza](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil).
4. **Estar atento a la convocatoria** del curso de guía de perros en el Boletín Oficial de la Guardia Civil y comprobar sus requisitos concretos, incluida la edad.
5. **Superar la selección y el curso**, que imparte el CAPEDE.
6. **Ocupar un puesto orgánico** de especialista y cumplir la servidumbre.
7. **Mantener la cualificación**, porque la ficha prevé pruebas de mantenimiento y renovación.

## Un caso práctico (hipotético)

Lucía, de 24 años, tiene experiencia como voluntaria en una protectora y quiere ser guía canino. Aprueba la oposición, termina la formación y obtiene destino en un puesto de seguridad ciudadana. Dos años después se publica en el Boletín Oficial de la Guardia Civil la convocatoria del curso. Antes de pedirlo, Lucía comprueba tres cosas: que no supera el límite de edad que fije esa convocatoria, que no tiene ningún expediente abierto y que está dispuesta a cumplir cinco años de servidumbre. Su experiencia con animales no le da puntos por sí sola, pero sí le ayuda a saber si ese trabajo diario le encaja.

Es un ejemplo inventado para ilustrar el orden de los pasos; los plazos reales dependen de cada convocatoria.

## Errores frecuentes

- **Creer que se elige al ingresar.** La especialidad exige cualificación específica y un puesto orgánico. No se pide en la solicitud de la oposición.
- **Confundir «tener perro» con «ser guía».** La formación oficial se recibe dentro del Cuerpo, en el CAPEDE.
- **Dar por hecho que no hay límite de edad.** La ficha dice expresamente que lo hay.
- **Olvidar la servidumbre.** Cinco años en la modalidad de guía condicionan tus siguientes destinos.
- **Fiarse de cifras de foros** sobre plazas o duración del curso. Solo vale la convocatoria vigente.

## Checklist si te interesa esta especialidad

- [ ] Conozco la diferencia entre especialidad, cualificación y puesto orgánico.
- [ ] Sé que primero tengo que aprobar la oposición y completar la formación.
- [ ] He leído la ficha de la modalidad en la Orden PCM/509/2020.
- [ ] Revisaré la convocatoria del curso en el Boletín Oficial de la Guardia Civil, incluida la edad.
- [ ] Acepto la servidumbre de cinco años.
- [ ] Mantengo una buena forma física general, empezando por las [marcas de las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

Lo primero sigue siendo aprobar. En el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos a prepararlo.

## Preguntas frecuentes

### ¿Quién entrena a los perros de la Guardia Civil?

El Servicio Cinológico y Remonta dirige técnicamente los servicios con perros, y el CAPEDE, que depende de él, selecciona y forma a los guías y a sus perros, según la web oficial.

### ¿Qué tipos de perros hay?

La web describe cursos de seguridad y rescate, detectores de drogas y detectores de explosivos, con subespecialidades como restos biológicos, cebos envenenados, indicios de fuego, papel moneda, tabaco o droga en personas.

### ¿Puedo ser guía siendo guardia civil, sin ascender?

Sí. La ficha de la modalidad de guía de perros incluye el empleo de guardia civil entre los que pueden obtenerla, igual que cabo y cabo primero.

### ¿Hay edad máxima para hacer el curso?

La ficha oficial indica que existe un límite de edad para acceder a la cualificación, pero no fija la cifra. Consúltala en la convocatoria del curso.

### ¿Cuánto tiempo tengo que estar de guía después del curso?

La ficha fija un periodo de servidumbre de cinco años para la modalidad de guía de perros, que es además el máximo que permite el Reglamento de destinos.

### ¿El CAPEDE forma también a otros cuerpos?

Sí. Según la web oficial, instruye a policías locales, Policía Foral, Mossos d''Esquadra, Guardia Real y otras unidades militares, además de a unidades especiales de la propia Guardia Civil.',
   '/blog/servicio-cinologico-como-ser-guia-canino-en-la-guardia-civil.jpg', 'Guía canina de la Guardia Civil buscando con su perro entre unas ruinas', 'publicado', '2027-01-31T06:02:00.000Z', 'acceso-guardia-civil',
   ARRAY['guía canino', 'servicio cinológico', 'especialidades', 'capede']::text[], '{"title":"Guía canino Guardia Civil: Servicio Cinológico y acceso","description":"Guía canino de la Guardia Civil: qué hace el Servicio Cinológico, qué cursos imparte el CAPEDE y qué exige la Orden PCM/509/2020 para ser especialista."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('servicio-maritimo-y-servicio-aereo-de-la-guardia-civil', 'articulo', 'Servicio Marítimo y Servicio Aéreo de la Guardia Civil', 'El Servicio Marítimo patrulla las aguas españolas y el Aéreo opera helicópteros, aviones y drones. Qué hacen, cómo se organizan y qué modalidades de cada especialidad puede obtener un guardia civil según la normativa.', 'Dos servicios de la Guardia Civil llevan su trabajo al mar y al aire: el **Servicio Marítimo (SEMAR)** y el **Servicio Aéreo (SAER)**. Los dos corresponden a especialidades con varias modalidades, y en ambos los puestos de especialista exigen una cualificación concreta.

**Respuesta corta:** no se entra en ellos por oposición directa. Primero se ingresa en la Escala de Cabos y Guardias y después se obtiene la cualificación de una modalidad concreta. Y aquí hay un matiz que pocas guías cuentan: según las fichas oficiales, **un guardia civil puede obtener modalidades como mecánico-marinero, mecánico de aeronaves u operador de sistemas, pero no las de piloto de avión o de helicóptero**, reservadas a las escalas de oficiales y suboficiales. La de patrón de embarcaciones, en la Escala de Cabos y Guardias, se obtiene desde el empleo de cabo.

Te contamos lo verificable y dónde consultar lo demás. Para el contexto de los destinos, lee [especialidades y destinos](/blog/destinos-especialidades-guardia-civil); la parte de buceo la tienes en [GEAS](/blog/geas-asi-son-los-buceadores-de-la-guardia-civil).

## Servicio Marítimo

### Qué hace

Según la [web oficial de la Guardia Civil](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/ServicioMaritimo/), el Servicio Marítimo se constituyó en **1991** mediante el Real Decreto 246/1991, que extendió al mar lo que el Cuerpo ya hacía en tierra. Las primeras embarcaciones se entregaron en 1992 y, desde 1997, las unidades de actividades subacuáticas se integran en su estructura.

Su misión es ejercer las funciones policiales de carácter gubernativo, judicial, fiscal y administrativo en las aguas marítimas españolas hasta el límite exterior del mar territorial y, excepcionalmente, en aguas internacionales. Sus cometidos fundamentales, según la web:

| Cometido | Ejemplos que cita la web |
|---|---|
| Policía judicial | Prevención y averiguación de delitos, primeras diligencias e informes. |
| Resguardo fiscal | Perseguir el contrabando. |
| Control de fronteras | Lucha contra la migración irregular. |
| Policía administrativa | Medio ambiente, inspección pesquera y de embarcaciones deportivas, patrimonio histórico sumergido. |
| Misiones en el extranjero | Cooperación policial, mantenimiento de la paz o ayuda humanitaria en el ámbito marítimo. |
| Colaboración nacional | Salvamento marítimo, marina mercante, aduanas, pesca o la Armada. |

### Cómo se organiza

La web describe esta estructura:

- **Jefatura del Servicio**, en Madrid: dirección técnica y asesoramiento al mando.
- **Unidad de Formación y Doctrina**, en la Zona Franca de **Cádiz**: es el centro de perfeccionamiento de referencia de la especialidad e imparte los cursos de acceso a sus modalidades.
- **Grupos Marítimos**, que integran los buques oceánicos: el de Canarias (Las Palmas de Gran Canaria) y el del Estrecho (Cádiz).
- **Servicios Marítimos Provinciales**, uno por cada provincia con costa, que dependen orgánicamente de su comandancia y técnicamente del órgano central.
- **Unidad de Actividades Subacuáticas** y, en el territorio, los GEAS.

Sobre su encuadre superior, la [Orden PRE/422/2013](https://www.boe.es/buscar/act.php?id=BOE-A-2013-2906) lo sitúa en la Jefatura Fiscal y de Fronteras, mientras que la web oficial describe hoy un Mando de Fronteras y Policía Marítima. Para un opositor, lo relevante es la misión, que en ambos textos coincide: vigilancia marítima, lucha contra el contrabando y control de la inmigración irregular.

## Servicio Aéreo

### Qué hace

Según la [web oficial](https://web.guardiacivil.es/es/institucional/conocenos/especialidades/aire/), la Guardia Civil emplea medios aéreos desde la creación en **1973** de su Sección de Helicópteros: primero helicópteros, después aviones y, más recientemente, drones. Al Servicio Aéreo le corresponde organizar, coordinar, mantener y operar esos medios, además de asesorar técnicamente en materia aeronáutica y colaborar con las autoridades judiciales y con otras unidades del Cuerpo.

La Orden PRE/422/2013 (artículo 8) lo define como la unidad especializada para la organización, coordinación y explotación de los medios aéreos, y lo adscribe a la Jefatura de Unidades Especiales y de Reserva.

### Cómo se organiza

- **Órgano central**, con una Agrupación de Vuelo (grupos de helicópteros, de aviones y de drones y contradrones), un Grupo de Material, el **Centro de Adiestramiento y Estandarización Aérea (CAESA)**, Seguridad de Vuelo y una oficina de prevención de riesgos laborales.
- **Organización periférica**: bases en Torrejón (Madrid), Logroño, Tenerife, Huesca, Sevilla, León, Valencia, Málaga, A Coruña, Baleares, Rota (Cádiz), Murcia, Oviedo, Fuerteventura y Granada, y dos destacamentos en el extranjero (Mauritania y Senegal), según la web.

El **CAESA**, en Torrejón de Ardoz, es el centro de perfeccionamiento de la especialidad Aérea. Se creó como tal en 2021 y, según la web, imparte las modalidades de piloto de helicóptero, piloto de avión, mecánico de aeronaves y operador de sistemas.

## Las modalidades, una por una

La [Orden PCM/509/2020 (BOE-A-2020-5900)](https://www.boe.es/buscar/act.php?id=BOE-A-2020-5900) regula ambas especialidades. Su anexo tiene una ficha por modalidad. Esto es lo que dicen sobre quién puede obtenerlas dentro de la Escala de Cabos y Guardias:

| Modalidad | ¿Puede obtenerla un guardia civil? | Empleos de la Escala de Cabos y Guardias | Cualificación previa |
|---|---|---|---|
| Marítima: patrón de embarcaciones | No | Cabo y cabo primero | Ninguna |
| Marítima: mecánico-marinero | Sí | Guardia civil, cabo y cabo primero | Ninguna |
| Marítima: mecánico de mantenimiento | Sí | Guardia civil, cabo y cabo primero | Ninguna |
| Marítima: capitán u oficial de puente de buque oceánico | No | Cabo y cabo primero | Patrón de embarcaciones |
| Marítima: jefe u oficial de máquinas de buque oceánico | Sí | Guardia civil, cabo y cabo primero | Mecánico-marinero o mecánico de mantenimiento |
| Aérea: mecánico de avión, de helicóptero o de aeronaves | Sí | Guardia civil, cabo y cabo primero | Ninguna |
| Aérea: operador de sistemas | Sí | Guardia civil, cabo y cabo primero | Ninguna |
| Aérea: piloto de avión o de helicóptero | No | Ninguno (solo oficiales y suboficiales) | Ninguna |
| Aérea: oficial de mantenimiento | No | Ninguno (solo oficiales) | Una modalidad de mecánico o de piloto |

Todas estas fichas indican que **existe un límite de edad para acceder a la cualificación**, aunque no fijan la cifra. Por ejemplo, la de patrón de embarcaciones y la de piloto de helicóptero recogen un **periodo de servidumbre de cinco años**, el máximo que permite el Reglamento de destinos ([Real Decreto 470/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-11398), artículo 53).

Como en el resto de especialidades, el requisito fundamental es acreditar la **cualificación específica** y ocupar un **puesto orgánico** que la requiera (artículo 7 de la orden).

## Requisitos generales de los cursos

El Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764), artículo 56) fija requisitos comunes a los cursos de especialización: aptitud psicofísica y técnica, límites de edad o altura si los hay, titulaciones, idiomas o habilitaciones, haber cumplido servidumbres anteriores y carecer de antecedentes penales y de sanciones graves o muy graves sin cancelar, entre otros. La selección de asistentes se publica, con carácter general, en el Boletín Oficial de la Guardia Civil.

## El camino, paso a paso

1. **Aprobar la oposición** y completar la formación.
2. **Elegir la modalidad realista para tu empleo.** Si eres guardia civil, mira las de mecánico u operador; si te interesa el mando de embarcaciones, piensa que la de patrón se obtiene desde cabo.
3. **Comprobar los requisitos** de la convocatoria del curso, incluida la edad y las titulaciones que pida.
4. **Superar la selección y el curso** en la Unidad de Formación y Doctrina de Cádiz o en el CAESA.
5. **Ocupar el puesto orgánico** y cumplir la servidumbre.

## Un caso práctico (hipotético)

Iván, de 27 años, es técnico de mantenimiento aeronáutico y sueña con volar en la Guardia Civil. Al leer las fichas descubre que, desde la Escala de Cabos y Guardias, no puede obtener la modalidad de piloto, pero sí la de **mecánico de aeronaves** desde el empleo de guardia civil. Decide opositar y, cuando tenga destino, presentarse al curso de esa modalidad. Si más adelante quisiera pilotar, tendría que valorar la promoción a otra escala. Es un ejemplo inventado para ilustrar cómo leer las fichas, no un itinerario garantizado.

## Errores frecuentes

- **Pensar que se entra como piloto desde la oposición.** Las fichas de piloto no incluyen la Escala de Cabos y Guardias.
- **Dar por hecho que un guardia puede ser patrón.** En esa escala, la ficha empieza en cabo.
- **Olvidar la edad.** Todas las fichas revisadas prevén un límite de acceso.
- **Confundir el SEMAR con Salvamento Marítimo.** Son organismos distintos que colaboran.
- **Fiarse de cifras sueltas** sobre plazas o duración de cursos.

## Checklist

- [ ] He leído la ficha de la modalidad que me interesa en la Orden PCM/509/2020.
- [ ] Sé qué empleo necesito para obtenerla.
- [ ] Conozco el periodo de servidumbre que fija su ficha.
- [ ] Revisaré la convocatoria del curso en el Boletín Oficial de la Guardia Civil.
- [ ] Mantengo la natación al día: la [prueba de 50 metros](/blog/natacion-50-metros-guardia-civil) es el primer filtro, y el inglés suma ([prueba de inglés](/blog/ingles-oposicion-guardia-civil)).

Primero, aprobar: en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos con ello.

## Preguntas frecuentes

### ¿El Servicio Marítimo patrulla solo la costa?

Según la web oficial, ejerce sus funciones en las aguas marítimas españolas hasta el límite exterior del mar territorial y, excepcionalmente, en aguas internacionales.

### ¿Un guardia civil puede ser piloto de helicóptero?

No desde la Escala de Cabos y Guardias: las fichas de piloto de avión y de helicóptero solo incluyen empleos de oficiales y suboficiales.

### ¿Y patrón de embarcaciones?

En la Escala de Cabos y Guardias, la ficha permite obtenerla a cabos y cabos primeros, no a guardias.

### ¿Qué puede hacer un guardia civil en el Servicio Aéreo?

Según las fichas, puede obtener las modalidades de mecánico de avión, de helicóptero o de aeronaves y la de operador de sistemas.

### ¿Dónde se forman?

En la Unidad de Formación y Doctrina del Servicio Marítimo, en Cádiz, y en el Centro de Adiestramiento y Estandarización Aérea, en Torrejón de Ardoz.

### ¿Puedo ir al Servicio Aéreo recién salido de Baeza?

Hace falta cualificación específica y un puesto que la requiera. Cómo se concreta depende de la convocatoria vigente.',
   '/blog/servicio-maritimo-y-servicio-aereo-de-la-guardia-civil.jpg', 'Rescate con grúa desde un helicóptero de la Guardia Civil en un acantilado', 'publicado', '2027-02-01T06:19:00.000Z', 'acceso-guardia-civil',
   ARRAY['servicio marítimo', 'servicio aéreo', 'especialidades', 'destinos']::text[], '{"title":"Servicio Marítimo y Aéreo Guardia Civil: funciones","description":"Servicio Marítimo y Aéreo de la Guardia Civil: funciones, organización y qué modalidades puede obtener cada empleo según la Orden PCM/509/2020."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

