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
   NULL, NULL, 'publicado', '2027-02-03T06:53:00.000Z', 'acceso-guardia-civil',
   ARRAY['idiomas', 'certificados', 'fase de concurso', 'baremo']::text[], '{"title":"Certificados de idiomas Guardia Civil: cuántos puntos suman","description":"Qué certificados de idiomas puntúan en la Guardia Civil 2026: EOI, Cambridge, IELTS, Trinity y CertAcles, con 5, 7 o 9 puntos y tope de 27 académicos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('colegio-de-guardias-jovenes-requisitos-de-edad', 'articulo', 'Colegio de Guardias Jóvenes: requisitos de edad y qué está confirmado', 'En el Colegio de Guardias Jóvenes hay dos momentos con requisitos de edad: el ingreso en el propio Colegio, que fija cada oferta de plazas, y el acceso a las plazas reservadas de la convocatoria del BOE. Qué está confirmado y dónde consultarlo.', '**Respuesta corta:** en el camino del Colegio de Guardias Jóvenes hay **dos momentos con requisitos distintos**. El primero es el **ingreso en el Colegio**, cuyos requisitos, incluida la edad, fija cada año una **oferta de plazas** que publica la Guardia Civil en su Boletín Oficial, no en el BOE. El segundo es el acceso a las **plazas reservadas al alumnado del Colegio** en la convocatoria de la Escala de Cabos y Guardias, que sí sale en el BOE y exige la misma edad que al resto: en 2026, **cumplir 18 años en el año de la convocatoria y no cumplir 41**.

Una advertencia de honestidad: la oferta de plazas del curso 2026/2027 existe y la enlaza la web oficial de la Guardia Civil, pero su texto se aloja en la intranet del Cuerpo y **no hemos podido consultarlo en una fuente pública**. Por eso en este artículo no damos fechas de nacimiento, plazos ni cuantías de esa oferta: solo lo que hemos podido verificar. Si quieres entender primero qué es el Colegio, lee [qué es el Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil).

## Qué es el Colegio, según la web oficial

La [página institucional del Colegio](https://web.guardiacivil.es/es/institucional/conocenos/centros_docentes/guardiasjovenes/) lo describe así:

- Es el centro de enseñanza de la Guardia Civil que **prepara a los hijos e hijas del personal del Cuerpo** para las pruebas selectivas de ingreso y que imparte la formación técnico-profesional para incorporarse a la Escala de Cabos y Guardias.
- La enseñanza dura **dos cursos académicos de nueve meses** cada uno.
- El **primer año** prepara al alumnado que ha superado el examen de ingreso en el centro para obtener una de las **plazas restringidas** al Colegio en la convocatoria de ingreso en la Guardia Civil.
- El **segundo año** es la formación técnico-profesional de quienes han obtenido plaza, y se completa con **40 semanas de prácticas** en unidades territoriales.
- Al terminar con éxito se obtiene el primer empleo, equivalente al título de **Técnico** del sistema educativo.

Su sede es el Colegio «Duque de Ahumada», en la carretera de Andalucía (A-4), en **Valdemoro (Madrid)**.

## Las dos «edades» que hay que mirar

| Momento | Qué norma lo regula | Dónde se publica | Requisito de edad |
|---|---|---|---|
| 1. Ingreso en el Colegio (primer año) | La oferta de plazas de cada curso | Boletín Oficial de la Guardia Civil | Lo fija cada oferta; consúltalo en su texto |
| 2. Plazas reservadas al alumnado en la convocatoria de la Escala de Cabos y Guardias | La convocatoria anual (en 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) | BOE | En 2026: cumplir 18 años en 2026 y no cumplir 41 en 2026 (bases 2.1.6 y 2.1.7) |

El segundo requisito está verificado en el BOE. La base 2.1 de la convocatoria de 2026 se aplica a **todos los aspirantes**, también a los del cupo del Colegio, y exige cumplir los requisitos en la fecha en que acaba el plazo de solicitudes y mantenerlos durante el proceso y la formación. La edad se cuenta **por año natural**: lo explicamos con detalle en [edad máxima y cómo se cuenta](/blog/edad-maxima-guardia-civil).

## Qué está confirmado sobre la oferta de 2026/2027

| Dato | ¿Confirmado? | Fuente |
|---|---|---|
| Existe una oferta de plazas para el curso 2026/2027 | Sí | [Web oficial de la Guardia Civil, ingreso en el Colegio](https://web.guardiacivil.es/es/tramites/ingresos/Colegio_Guardias_Jovenes/) |
| Se publicó en el Boletín Oficial de la Guardia Civil, número 41 de 2026 | Sí, por el enlace oficial al documento | Misma página |
| El proceso se basa en la reserva de hasta el 20 % de las plazas para el alumnado del Colegio (artículo 6.2.a del Reglamento de ordenación de la enseñanza) | Sí | Misma página y [Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764) |
| Las pruebas escritas (conocimientos, lengua española, lengua inglesa y aptitudes intelectuales) comenzaron el 27 de agosto de 2026 en el Colegio | Sí | Misma página |
| Fechas de nacimiento exigidas, número de plazas, plazo de solicitud, cuotas y marcas físicas | No hemos podido verificarlo | El texto está en la intranet del Cuerpo |

La propia web explica que la reserva **solo puede aplicarse si existe previamente alumnado que cumpla los requisitos**: por eso el ingreso en el Colegio va un año por delante de la convocatoria de la Escala.

## Las plazas reservadas, año a año

Estas son las plazas que cada convocatoria de la Escala de Cabos y Guardias reservó al alumnado del Colegio, según sus bases en el BOE:

| Convocatoria | Plazas reservadas al Colegio | Total de plazas |
|---|---|---|
| 2023 | 185 | 2.520 |
| 2024 | 200 | 2.721 |
| 2025 | 240 | 3.118 |
| 2026 | 240 | 3.240 |

El reglamento permite reservar **hasta el 20 %**; en 2026 fueron el 7,4 %. Las plazas que no se cubren se suman al cupo libre (base 1.2). Cómo funcionan los cupos en general lo tienes en [plazas reservadas para militares](/blog/plazas-reservadas-para-militares-como-funciona-el-cupo), que siguen la misma lógica. En 2026, quienes obtuvieron plaza se presentaron en el Colegio de Valdemoro, igual que en Baeza el resto, el 13 de octubre (base 10.1).

## Cómo aplicar la edad de la convocatoria: ejemplos

Con el criterio de 2026 (cumplir 18 años en el año y no cumplir 41), estos casos **hipotéticos** se resolverían así para optar a las plazas reservadas:

| Fecha de nacimiento | ¿Cumple 18 en 2026? | Resultado con las bases de 2026 |
|---|---|---|
| 15 de marzo de 2008 | Sí, en marzo | Cumple el requisito de edad |
| 31 de diciembre de 2008 | Sí, el último día del año | Cumple: basta con cumplirlos durante el año |
| 2 de enero de 2009 | No, los cumple en 2027 | No cumple en la convocatoria de 2026 |

Son ejemplos inventados. La convocatoria de cada año fija su propio año de referencia, y el requisito de edad para **entrar en el Colegio** lo fija la oferta de plazas, que es otro texto.

## Dónde consultar la oferta oficial

1. **Web de la Guardia Civil**, apartado de ingreso en el Colegio de Guardias Jóvenes: ahí se anuncia la oferta y se publican avisos como la fecha de las pruebas.
2. **Boletín Oficial de la Guardia Civil**, donde se publica el texto. El enlace oficial apunta a la intranet del Cuerpo; si tu padre o tu madre es guardia civil, puede consultarlo desde allí, y la web indica que en esa intranet se publican también las listas de aspirantes.

Lo que no debes hacer es dar por buena una fecha de nacimiento o una cuota que leas en un foro sin compararla con la oferta.

## Cómo prepararlo con lo que sí sabemos

1. **Comprueba el vínculo familiar.** La web oficial describe el Colegio como centro para hijos e hijas del personal del Cuerpo; la oferta concreta detalla quién puede presentarse.
2. **Lee la oferta vigente completa**, con la edad, el plazo y las pruebas.
3. **Prepara las pruebas que cita la web:** conocimientos, lengua española, lengua inglesa y aptitudes intelectuales, además de las que fije la oferta. Las de lengua e inglés se entrenan con sesiones cortas y constantes.
4. **Entrena la condición física** desde ya: las [pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) son una buena referencia general, aunque las marcas del Colegio las fija su oferta.
5. **Mira un paso más allá:** para las plazas reservadas tendrás que cumplir los [requisitos generales](/blog/requisitos-guardia-civil) de la convocatoria de la Escala.

Entrar en el Colegio **no garantiza** ser guardia civil: después hay que obtener una de las plazas reservadas. Para preparar el acceso con ayuda, tienes el [curso de acceso al Colegio de Guardias Jóvenes](/cursos/colegio-guardias-jovenes).

## Errores frecuentes

- **Confundir la oferta del Colegio con la convocatoria del BOE.** Son dos procesos, con requisitos y calendarios distintos.
- **Buscar la oferta del Colegio en el BOE.** Se publica en el Boletín Oficial de la Guardia Civil.
- **Aplicar a un año los requisitos de otro.** Cada oferta y cada convocatoria fijan los suyos.
- **Olvidar la edad de la convocatoria de la Escala**: hay que cumplir 18 años en el año en que se opta a las plazas reservadas.

## Checklist

- [ ] He leído la oferta de plazas vigente del Colegio.
- [ ] Sé qué requisito de edad fija esa oferta.
- [ ] He comprobado el vínculo con el Cuerpo que exige.
- [ ] Sé en qué año cumpliré 18 años para la convocatoria de la Escala.
- [ ] Tengo un plan para las pruebas escritas y físicas.

## Preguntas frecuentes

### ¿Qué edad hay que tener para entrar al Colegio de Guardias Jóvenes?

La fija cada oferta de plazas, publicada en el Boletín Oficial de la Guardia Civil. No hemos podido consultar públicamente el texto de la oferta 2026/2027, así que no damos cifras: compruébalo en la oferta vigente.

### ¿Y para las plazas reservadas de la convocatoria?

En 2026, cumplir 18 años durante 2026 y no cumplir 41 en ese año, igual que el resto de aspirantes (bases 2.1.6 y 2.1.7).

### ¿Puede presentarse cualquier joven?

La web oficial describe el Colegio como centro que prepara a los hijos e hijas del personal del Cuerpo. Los requisitos exactos están en cada oferta.

### ¿Cuántas plazas hay reservadas al Colegio?

En la convocatoria de 2026, 240 de 3.240. El reglamento permite reservar hasta el 20 %.

### ¿Dónde se publica la oferta del Colegio?

En el Boletín Oficial de la Guardia Civil. La web oficial la anuncia en su apartado de ingreso en el Colegio.

### ¿Hay oferta de plazas para el curso 2027/2028?

No teníamos texto oficial al preparar este artículo. Cada año se publica una oferta con sus propios requisitos.',
   NULL, NULL, 'publicado', '2027-02-08T06:18:00.000Z', 'colegio-guardias-jovenes',
   ARRAY['Colegio de Guardias Jóvenes', 'requisitos', 'edad', 'Valdemoro', 'preparación']::text[], '{"title":"Colegio de Guardias Jóvenes: requisitos de edad","description":"Edad para el Colegio de Guardias Jóvenes: qué fija la oferta de plazas, qué exige la convocatoria para las 240 plazas reservadas y dónde consultarlo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-rellenar-la-solicitud-de-la-guardia-civil-paso-a-paso', 'articulo', 'Cómo rellenar la solicitud de la Guardia Civil paso a paso', 'La solicitud es solo telemática, tiene un plazo de 15 días hábiles y en ella se declaran los méritos que luego puntúan. Así la regula la base 3 de la convocatoria de 2026, paso a paso y con los errores que conviene evitar.', '**Respuesta corta:** la solicitud se presenta **únicamente por vía electrónica**, en la sede electrónica de la Guardia Civil, dentro de un plazo de **15 días hábiles** desde el día siguiente a la publicación de la convocatoria en el BOE. Al inscribirte casi no se adjunta documentación, pero lo que declares en ese momento (méritos incluidos) es lo que después tendrás que acreditar cuando lo pida el Tribunal.

Todo lo que sigue sale de la base 3 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982). La de 2027 puede cambiar detalles: cuando se publique, comprueba su texto. Lo que se sabe de ella lo tienes en [la convocatoria de 2027](/blog/convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra).

## Antes de que se abra el plazo

Quince días hábiles pasan rápido. Esto es lo que conviene tener resuelto antes:

| Qué | Por qué | Cómo |
|---|---|---|
| Identificación Cl@ve | Sin ella no entras en la sede | DNI electrónico o certificado electrónico en vigor, Cl@ve móvil o Cl@ve permanente |
| Número de la Seguridad Social (NSS/NAF) | La sede lo pide | Si no lo tienes, se solicita a la Tesorería General de la Seguridad Social |
| Requisitos | Se exigen a la fecha en que termina el plazo | Repasa los [requisitos](/blog/requisitos-guardia-civil) y la [edad máxima](/blog/edad-maxima-guardia-civil) |
| Méritos | Solo puntúan los que poseas dentro del plazo y declares | Reúne títulos y certificados |
| Situación para la tasa | Determina la modalidad de solicitud | Comprueba si te corresponde exención o bonificación |

## El plazo: quince días hábiles

La base 3.1 fija **quince días hábiles contados a partir del día siguiente** al de la publicación en el BOE. En el cómputo administrativo no se cuentan sábados, domingos ni festivos. Un consejo práctico: en cuanto salga la convocatoria, calcula el último día y apúntalo, pero intenta presentarla en los primeros días.

### Cómo calcular el último día (ejemplo)

Supón, como ejemplo hipotético, que la convocatoria se publica un lunes y que en las semanas siguientes no hay ningún festivo. El primer día hábil es el martes. Contando de lunes a viernes, el martes, miércoles, jueves y viernes de esa semana suman 4 días; la semana siguiente, 9; la otra, 14. El día 15 sería el **lunes de la tercera semana**. Si hay un festivo por medio, el plazo se alarga un día. Haz siempre la cuenta con el calendario oficial de festivos y, ante la duda, no apures.

## La solicitud, paso a paso

La base 3.2 establece que la presentación es **obligatoriamente telemática**. El recorrido es este:

1. **Entra en la sede electrónica de la Guardia Civil**, en el enlace que da la convocatoria para los procesos selectivos.
2. **Elige el procedimiento** «Solicitud de Ingreso en la Escala de Cabos y Guardias».
3. **Escoge la modalidad según la tasa:** sin reducción, con bonificación o con exención. Elegir mal es un error fácil; las cuantías las veremos en un artículo posterior sobre las tasas.
4. **Identifícate con Cl@ve** (DNIe o certificado, Cl@ve móvil o Cl@ve permanente).
5. **Rellena tus datos**, incluido el número de la Seguridad Social y el domicilio.
6. **Declara los méritos** de la fase de concurso.
7. **Paga la tasa** de forma telemática, si te corresponde pagar.
8. **Firma electrónicamente** la solicitud.
9. **Descarga el justificante de registro** y guárdalo.
10. **Consulta después el estado de tu expediente** desde la misma sede.

La propia base dice que hay que seguir los pasos que la sede vaya indicando, así que la pantalla concreta puede variar.

## Los datos que más importan

### El domicilio

Sirve para las notificaciones y, además, **para adjudicarte la sede de examen** de la fase de oposición (base 3.2.2.a). No lo rellenes a la ligera: si pones uno que no es el tuyo, puedes acabar examinándote lejos.

### Los méritos

El apéndice I de la convocatoria es claro: **solo se valoran los méritos que figuren en el baremo, que se hayan alegado en la inscripción telemática y que se posean en el plazo de presentación de solicitudes**. Si no lo declaras, no cuenta, aunque lo tengas. El baremo completo, con un máximo de 45 puntos, lo tienes en [la fase de concurso y los méritos](/blog/fase-concurso-guardia-civil-meritos).

Dos reglas que generan dudas:

- **Titulación académica:** se refleja **solo una**, la que acredite tu nivel, y es la única que se valora.
- **Idiomas:** por cada idioma solo cuenta **una** acreditación, la de mayor puntuación. Qué títulos sirven lo explicamos en [certificados de idiomas](/blog/certificados-de-idiomas-para-la-guardia-civil-cual-sacarte).

### La autorización de consulta

Salvo que indiques lo contrario, la solicitud lleva implícita tu autorización para que la Jefatura de Enseñanza consulte de oficio tus datos en otras administraciones: identidad, permiso de conducir, Registro Central de Penados, titulaciones, Servicio Público de Empleo Estatal o, en su caso, el Ministerio de Defensa (base 2.3). Por eso lo que declares se comprueba.

## La documentación: casi toda, después

Al inscribirte no subes títulos ni certificados. La base 3.2.1 dice que se presentan **cuando lo indique el Tribunal de Selección**:

- **Título** que acredite el requisito de estudios (base 2.1.9), en original o copia auténtica. Si es extranjero, también la credencial de homologación. Quien no lo presente no podrá ser propuesto como alumno.
- **Documentos de los méritos** que consignaste. Si no los presentas en el momento indicado, **te restan los puntos**, sin perjuicio de la responsabilidad por falsedad.
- Si **no autorizaste** la consulta de datos o hubo fallos técnicos: copia auténtica del DNI y del permiso de conducción B, certificado del Registro Central de Penados y, según el caso, certificación de servicios en las Fuerzas Armadas, título de familia numerosa, certificación de demandante de empleo con declaración de rentas o resolución de víctima del terrorismo.

Los documentos pueden ser originales o copias, pero **no se admiten los enviados por telefax** u otros sistemas análogos, salvo los emitidos por las administraciones públicas (base 3.2.2).

## Después de enviarla

Terminado el plazo, el Jefe de la Jefatura de Enseñanza tiene hasta **sesenta días** para aprobar la lista de admitidos, excluidos y excluidos condicionales, con la **calificación provisional de la fase de concurso** (base 3.4). En 2026 fue la resolución [BOE-A-2026-14447](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-14447).

Desde ahí tienes **diez días hábiles** para subsanar el motivo de exclusión, corregir errores en la puntuación del concurso o reclamar. La misma resolución indica el lugar, la fecha y la hora de la primera prueba. Después se publica la lista definitiva.

## Un caso práctico (hipotético)

Javier tiene el Bachillerato y un certificado B2 de inglés. Al inscribirse declara el Bachillerato como titulación y el B2 como idioma, pero olvida marcar su año completo como reservista voluntario. Cuando sale la lista provisional, ve que su nota de concurso no incluye ese mérito. Como no lo alegó en la solicitud, la reclamación no prosperaría: el baremo exige que los méritos se aleguen en la inscripción. Moraleja: revisa el apéndice del baremo **antes** de firmar. Es un ejemplo inventado para ilustrar la regla.

## Errores frecuentes

- **Dejar la solicitud para el último día:** si falla el acceso o la pasarela de pago, te quedas sin margen.
- **Elegir la modalidad de tasa equivocada.**
- **Declarar méritos que no puedes acreditar,** o no declarar los que tienes.
- **Poner un domicilio que no es el tuyo** y examinarte lejos.
- **No comprobar los requisitos** a la fecha de fin del plazo: deben mantenerse durante todo el proceso.
- **No guardar el justificante de registro.**

## Checklist final antes de firmar

- [ ] Cl@ve y número de la Seguridad Social a mano.
- [ ] Modalidad de tasa correcta.
- [ ] Domicilio real, pensando en la sede de examen.
- [ ] Todos los méritos del baremo alegados, con su documentación disponible.
- [ ] Autorización de consulta revisada.
- [ ] Justificante descargado.

Si quieres preparar la oposición con un calendario ordenado, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Puedo presentar la solicitud en papel o en una oficina de registro?

Según la base 3.2 de la convocatoria de 2026, no: es obligatoriamente telemática.

### ¿Tengo que adjuntar mi título al inscribirme?

No. La documentación se presenta cuando el Tribunal lo indique. Quien no la presente en ese momento no podrá ser propuesto para ingresar como alumno.

### ¿Puedo añadir un mérito que olvidé?

El baremo solo valora los méritos alegados en la inscripción telemática. El plazo de subsanación sirve para defectos de exclusión y errores en la puntuación de lo alegado.

### ¿Con quién resuelvo dudas sobre la inscripción o los méritos?

Con la Jefatura de Enseñanza de la Guardia Civil, que es el único órgano que las resuelve. La convocatoria de 2026 da sus teléfonos y su correo en la base 4.10.

### ¿Se puede corregir un error después de enviar la solicitud?

La convocatoria prevé diez días hábiles tras la lista provisional para subsanar defectos que motiven la exclusión y errores en la puntuación del concurso.

### ¿Dónde se publican las listas?

En la web de la Guardia Civil que indica la convocatoria y en el BOE.',
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
   NULL, NULL, 'publicado', '2027-02-04T06:10:00.000Z', 'acceso-guardia-civil',
   ARRAY['convocatoria 2027', 'BOE', 'calendario', 'plazas']::text[], '{"title":"Convocatoria Guardia Civil 2027: qué se sabe oficial","description":"Convocatoria Guardia Civil 2027: qué hay de oficial, fechas del BOE de las convocatorias de 2023 a 2026, qué se ha repetido y dónde seguirla sin rumores."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('motivacion-que-hacer-los-dias-que-no-te-apetece-estudiar', 'articulo', 'Motivación: qué hacer los días que no te apetece estudiar', 'Habrá días en que no te apetezca abrir el temario. Cómo seguir avanzando sin depender de las ganas: averiguar qué te frena, mínimos diarios, planes «si… entonces», rutinas y objetivos visibles. Y cuándo conviene hablar con un profesional.', 'Opositar dura meses, y nadie tiene ganas todos los días. Esperar a «sentirte motivado» para sentarte es una estrategia que suele fallar justo cuando más hace falta: en semanas de cansancio, después de un mal simulacro o cuando la fecha del examen todavía parece lejana.

**Respuesta corta:** diseña tu preparación para que no dependa de las ganas. Averigua qué te frena ese día (no es lo mismo cansancio que aburrimiento o miedo), cumple un **mínimo diario pequeño**, decide de antemano qué harás en los días malos y haz visible lo que avanzas. Y si el desánimo es profundo o dura semanas, habla con un profesional: eso ya no es falta de motivación.

## Por qué esperar a tener ganas no funciona

Mucha gente espera a tener ganas para empezar. Con frecuencia ocurre al revés: **empiezas con poco y las ganas llegan después**, o no llegan, pero el trabajo queda hecho. No es una ley universal, pero sí un buen motivo para probar a empezar diez minutos en lugar de decidir si «hoy toca».

La motivación también se gasta en decidir. Si cada tarde tienes que elegir qué estudiar, dónde y cuánto, llegas a la mesa con menos energía. Por eso las estrategias que funcionan mejor no intentan aumentar las ganas, sino **reducir lo que depende de ellas**.

## Paso 1: averigua qué te frena hoy

«No me apetece» puede significar cosas muy distintas, y cada una pide una respuesta diferente:

| Lo que notas | Qué suele haber detrás | Qué probar |
| --- | --- | --- |
| Cuerpo pesado, sueño | Cansancio físico o falta de sueño | Bloque corto de repaso; acostarte antes hoy |
| «Es siempre lo mismo» | Aburrimiento, monotonía | Cambiar de tarea o de formato: tests, fichas, explicar en voz alta |
| No sabes por dónde empezar | Tarea demasiado grande o difusa | Partirla: «solo el artículo 14 y 5 preguntas» |
| Te angustia abrir el tema | Miedo a fallar, sensación de ir tarde | Empezar por algo que dominas para arrancar |
| Llevas semanas así | Puede haber algo más de fondo | Hablarlo con alguien de confianza o con un profesional |

Ponerle nombre no lo resuelve todo, pero evita aplicar la misma receta a problemas distintos.

## Paso 2: estrategias que puedes aplicar

### 1. Un mínimo innegociable

Decide un mínimo que cumplirás incluso en un mal día: por ejemplo, 20 minutos de test o una ronda de fichas. Un mal día con mínimo cumplido mantiene el hábito; un día a cero rompe la racha y hace más difícil el siguiente. Que sea **tan pequeño que no puedas negociarlo**.

### 2. Planes «si… entonces»

La investigación de Peter Gollwitzer sobre las llamadas **intenciones de implementación** (por ejemplo, su artículo de 1999 en *American Psychologist*) sugiere que concretar **cuándo, dónde y cómo** vas a actuar ante una situación ayuda a cumplir lo que te propones. En la práctica, se escriben como frases «si… entonces». Ejemplos propios:

- «**Si** llego a casa sin ganas, **entonces** hago solo el test de 20 preguntas del tema de la semana.»
- «**Si** saco menos de 50 en un simulacro, **entonces** anoto los fallos y lo analizo al día siguiente, no esa noche.»
- «**Si** cojo el móvil en un bloque, **entonces** lo dejo en otra habitación hasta la pausa.»

Escríbelos y tenlos a la vista. Funcionan porque la decisión ya está tomada cuando llega el mal momento.

### 3. Convierte el estudio en rutina

Mismo sitio, misma hora, mismos primeros pasos. Los estudios sobre formación de hábitos, como el de Phillippa Lally y su equipo (2010), describen que las conductas repetidas en el mismo contexto se van volviendo más automáticas con el tiempo, aunque el tiempo necesario varía mucho de una persona a otra. Ayuda tener los bloques definidos: mira [bloques de estudio y técnica Pomodoro](/blog/bloques-de-estudio-y-tecnica-pomodoro-para-opositores).

### 4. Objetivos pequeños y visibles

«Aprobar la oposición» es enorme. «Terminar el tema 3 esta semana» es concreto. Apunta lo que completas: una lista de tareas tachadas o una hoja con la nota de cada simulacro pesan más que una sensación vaga de no avanzar. Ideas para medirte en [el balance: cómo saber si vas bien](/blog/balance-del-ano-como-saber-si-vas-bien-en-la-oposicion).

### 5. Cambia de tarea, no abandones

Si no puedes con el temario, haz tests. Si no puedes con tests, repasa fichas. Si no puedes con nada escrito, escucha un tema o explícalo en voz alta. Cambiar de actividad es mejor que cerrar el libro.

### 6. La regla de los diez minutos

Comprométete solo a diez minutos. Si al acabar sigues sin poder, para sin culpa: has cumplido. Muchas veces seguirás; otras no, y también vale.

### 7. Recuerda por qué lo haces

Escribe en una nota tus razones para entrar en el Cuerpo: concretas, tuyas. Léela cuando flaquees, no como frase motivadora, sino como recordatorio de lo que estás eligiendo.

### 8. Descansa de verdad

No todo es fuerza de voluntad. Dormir, comer bien, moverte y desconectar forman parte de la preparación. Si además entrenas, mira cómo encajarlo en [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil). Un día libre planificado a la semana no es perder el tiempo.

## Plan para un mal día concreto

| Situación | Alternativa realista |
| --- | --- |
| Sin energía | Solo tests cortos o repaso de fichas |
| Mala nota en un simulacro | Anotar los fallos y parar; analizar mañana |
| Cansancio acumulado varios días | Un día de descanso planificado y revisar horarios |
| Distracción total | Un bloque corto sin móvil y una recompensa pequeña después |
| Agobio por todo lo que falta | Escribir la lista de tareas de la semana y elegir solo la primera |

Sobre los simulacros, aprende a [analizar los resultados](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados) para no vivir cada nota mala como un fracaso: es información.

## Caso práctico

**Caso hipotético.** Javi lleva tres tardes sin estudiar. Al pararse a pensarlo, ve que no es cansancio: le bloquea el tema de Derecho Administrativo, que lleva dos semanas «a medias». Aplica tres cambios: parte el tema en cinco trozos de una sesión cada uno, escribe un plan «si… entonces» («si me siento y no arranco, empiezo por 10 preguntas del trozo anterior») y apunta cada trozo terminado en un papel pegado a la pared. La primera tarde solo cumple el mínimo; la segunda, un bloque entero. No ha recuperado las ganas de golpe, pero ha vuelto a la rutina.

## Cuándo no es solo falta de ganas

Si llevas semanas con desánimo persistente, has perdido interés por cosas que antes te gustaban, duermes mucho peor, la ansiedad te desborda o sientes que no puedes con nada, **no es un asunto de fuerza de voluntad ni lo puede resolver un artículo**. Habla con tu médico de cabecera o con un profesional de la salud mental. Pedir ayuda es una decisión sensata, no un fracaso.

Y si en algún momento tienes pensamientos de hacerte daño, llama al **024** (línea de atención a la conducta suicida) o, si hay peligro inmediato, al **112**.

## Errores frecuentes

- **Esperar a tener ganas** para empezar.
- **Fijar mínimos demasiado altos**, que se incumplen y desmoralizan.
- **Compensar un mal día con un «día heroico»** de diez horas que te deja agotado.
- **Compararte con lo que ves en redes:** lo que ves es una selección. Compárate con tu avance de hace un mes.
- **Castigarte por no estudiar** en lugar de entender qué ha pasado.
- **Repetir los [errores habituales al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil)**, como no planificar el repaso.

## Checklist para los días difíciles

- [ ] He identificado qué me frena hoy (cansancio, aburrimiento, miedo, tarea difusa).
- [ ] Tengo un mínimo diario definido y pequeño.
- [ ] Tengo escritos dos o tres planes «si… entonces».
- [ ] Sé qué tarea alternativa hago si no puedo con el temario.
- [ ] Apunto lo que termino cada día.
- [ ] Tengo un día de descanso a la semana.
- [ ] Si el desánimo dura semanas, sé a quién acudir.

Si necesitas una estructura que te acompañe, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te da un calendario ya organizado.

## Preguntas frecuentes

### ¿Es normal no tener ganas de estudiar algunos días?

Sí, le pasa a cualquiera en una preparación larga. Lo importante es tener un plan para esos días, como un mínimo reducido.

### ¿Cuánto debe durar el mínimo diario?

El que puedas cumplir siempre. Veinte minutos constantes suelen funcionar mejor que dos horas esporádicas.

### ¿Qué es un plan «si… entonces»?

Una decisión tomada por adelantado para una situación concreta: «si pasa X, entonces hago Y». Se basa en la investigación sobre intenciones de implementación y te ahorra decidir en el peor momento.

### ¿Debería tomarme un descanso largo si estoy desmotivado?

Un descanso corto y planificado puede ayudar. Si el desánimo persiste o empeora, consulta con un profesional.

### ¿Cómo sé si lo mío es ansiedad o depresión?

No se puede valorar desde un artículo. Si te preocupa o te limita en tu día a día, acude a tu médico o a un profesional de la salud mental.

### ¿Sirven las frases motivadoras?

Pueden animar un rato, pero no sustituyen a un plan. Un mínimo diario y una rutina suelen sostener más que la inspiración.',
   NULL, NULL, 'publicado', '2027-02-07T06:01:00.000Z', 'acceso-guardia-civil',
   ARRAY['motivación', 'hábitos', 'organización', 'opositor']::text[], '{"title":"Motivación para opositar: qué hacer cuando no te apetece","description":"Qué hacer los días que no te apetece estudiar la oposición a Guardia Civil: diagnóstico, mínimos diarios, planes si-entonces, rutinas y cuándo pedir ayuda."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('plazas-reservadas-para-militares-como-funciona-el-cupo', 'articulo', 'Plazas reservadas para militares: cómo funciona el cupo', 'En 2026, 1.296 de las 3.240 plazas de la Escala de Cabos y Guardias se reservaron a militares de tropa y marinería. Qué exige el cupo, de dónde sale la cifra, qué certificado se presenta y cómo puntúa en el baremo.', '**Respuesta corta:** en la convocatoria de 2026, **1.296 de las 3.240 plazas** se reservaron a **militares profesionales de tropa y marinería** con al menos **cinco años de servicios efectivos** como tales que no hubieran terminado su compromiso con las Fuerzas Armadas, a la fecha de fin del plazo de solicitudes. Quienes optan a ese cupo se ordenan entre sí, tienen un apartado propio en el baremo del concurso y hacen las mismas pruebas que el resto. Las plazas que no se cubren pasan al cupo libre.

Las fuentes son el [Real Decreto 206/2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-5998) (artículo 3), el Reglamento de ordenación de la enseñanza ([Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764), artículo 6.2) y las bases de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982).

## De dónde sale la cifra

El cupo no es una cantidad libre. El artículo 6.2.a) del Reglamento de ordenación de la enseñanza obliga a reservar a los militares profesionales de tropa y marinería **un mínimo del 40 %** de las plazas de acceso a la Escala de Cabos y Guardias, **sin superar nunca el 50 %**. La cifra concreta la fija cada año la [oferta de empleo público](/blog/oferta-de-empleo-publico-2027-que-es-y-que-significa-para-ti), que en 2026 se remitió además al artículo 20.4 de la Ley 8/2006, de Tropa y Marinería.

Así ha evolucionado, según las bases publicadas en el BOE:

| Año | Plazas totales | Cupo militar | Porcentaje |
|---|---|---|---|
| 2023 | 2.520 | 1.008 | 40 % |
| 2024 | 2.721 | 1.089 | 40 % (redondeado) |
| 2025 | 3.118 | 1.248 | 40 % (redondeado) |
| 2026 | 3.240 | 1.296 | 40 % |

En los cuatro años el cupo se ha situado en el mínimo legal. Eso no obliga a que 2027 sea igual: el reglamento permite llegar al 50 %.

## Cómo se reparten las plazas en 2026

La base 1.1 de la convocatoria:

| Cupo | Plazas |
| --- | --- |
| Militares profesionales de tropa y marinería | 1.296 |
| Alumnos del Colegio de Guardias Jóvenes | 240 |
| Plazas libres | 1.704 |
| **Total** | **3.240** |

Las reservadas que no se cubran, por cualquier motivo, **se acumulan a las libres** (base 1.2).

## Quién puede optar al cupo

La condición clave, literal en la base 1.1.a): ser **militar profesional de tropa y marinería de las Fuerzas Armadas** que lleve, **como mínimo, cinco años de servicios efectivos** como tal y **no haya finalizado su compromiso**, en la fecha en que termine el plazo de admisión de instancias.

Tres matices importantes:

- **Los cinco años se cuentan hasta el último día del plazo de solicitudes**, no hasta el examen ni hasta la incorporación.
- Hay que **seguir siendo militar profesional de tropa y marinería en la fecha de incorporación** al centro de formación (base 10.2).
- Si no llegas a los cinco años, puedes presentarte por el **acceso libre**. El reglamento añade que a los militares de tropa y marinería no se les exige haber cumplido su compromiso inicial para ese ingreso sin reserva de plazas.

Ser militar no te exime del resto: tienes que cumplir [todos los requisitos generales](/blog/requisitos-guardia-civil) de la base 2, incluida la edad (en 2026, cumplir 18 años y no cumplir 41 durante el año). Y hay uno específico: **no haber visto resuelto tu compromiso** por insuficiencia de facultades profesionales, por sanción disciplinaria extraordinaria de separación del servicio o por sanción de resolución de compromiso (base 2.1.12).

## Cómo puntúa el concurso

El apéndice I distingue dos apartados de méritos profesionales, que en total no pueden pasar de **13,5 puntos**:

| Apartado | Para quién | Qué puntúa |
|---|---|---|
| A) | Solo plazas reservadas a militares | 0,90 puntos por año completo como militar de tropa y marinería (máximo 9) y, por el empleo máximo alcanzado, 2,40 puntos (cabo) o 3,60 (cabo primero) |
| B) | Acceso libre y Colegio | 0,90 puntos por año completo en la Administración General del Estado, incluido el tiempo como militar, y 0,025 puntos por mes como reservista voluntario |

Hay otro mérito que solo puede alegar quien pertenece o perteneció a las Fuerzas Armadas: los **perfiles lingüísticos SLP** del STANAG 6001 de la OTAN, que valen 5, 7 o 9 puntos según el nivel (2.2.2.2, 3.3.3.3 o 4.4.4.4), dentro del tope de méritos académicos. Los méritos profesionales se justifican consultando las bases de datos del Ministerio de Defensa o con certificado de servicios. El baremo completo, con un máximo de 45 puntos, está en [la fase de concurso y los méritos](/blog/fase-concurso-guardia-civil-meritos), y recuerda que todo mérito hay que alegarlo en la [solicitud](/blog/como-rellenar-la-solicitud-de-la-guardia-civil-paso-a-paso).

## Cómo compite quien va por el cupo

Superadas las pruebas, la base 9.1 ordena a los aspirantes **de mayor a menor puntuación dentro de cada modalidad de ingreso**. Quien opta al cupo militar se compara con los demás militares, no con el cupo libre. Las pruebas son las mismas para todos: conocimientos, ortografía y gramática, inglés, psicotécnico, físicas, entrevista y reconocimiento médico. Cómo se estructura el examen, en [el examen de conocimientos](/blog/examen-conocimientos-guardia-civil-estructura).

## Qué tienes que presentar

**Al incorporarte** al centro de formación, la base 10.2 exige un **certificado de ser militar profesional de tropa y marinería** en esa fecha, expedido por el jefe de tu unidad, centro u organismo. El modelo (apéndice VI) certifica que:

1. Eres militar profesional de tropa y marinería y completas cinco años de servicios efectivos en la fecha en que acaba el plazo de instancias.
2. No has finalizado tu compromiso ni te han denegado su ampliación.
3. No has solicitado renunciar a tu condición de militar.

Todos los propuestos que hayan servido en las Fuerzas Armadas presentan además **copia de su Hoja General de Servicios**.

## Qué pasa con tu compromiso militar

Al ser nombrado alumno, el compromiso con las Fuerzas Armadas **queda resuelto** (base 11.4), y debes estar en una situación administrativa compatible con la de guardia alumno. La base 11.5 prevé que el militar de tropa y marinería con **compromiso de larga duración** que no complete su acceso a la Guardia Civil pueda **reincorporarse a las Fuerzas Armadas** en las condiciones en que estaba, según el artículo 10.3 de la Ley 8/2006. Antes de decidir, consulta tu caso con tu unidad.

## Un caso práctico (hipotético)

Daniel es cabo del Ejército de Tierra y cumple cinco años de servicios efectivos tres días después de que termine el plazo de solicitudes. Por el cupo militar no llega: los cinco años deben estar cumplidos el último día del plazo. Opta por el acceso libre, donde su tiempo de servicio también puntúa (0,90 puntos por año completo en la Administración General del Estado). Si hubiera llegado a tiempo, en el cupo militar habría sumado 0,90 por año más 2,40 por su empleo de cabo. Es un ejemplo inventado con las bases de 2026.

## Errores frecuentes

- **Contar los cinco años hasta el examen** en lugar de hasta el fin del plazo.
- **Pedir la baja antes de tiempo:** hay que seguir siendo militar en la fecha de incorporación.
- **Olvidar alegar el empleo de cabo o cabo primero** en la solicitud.
- **Pensar que las pruebas son más fáciles por el cupo.** Son las mismas.
- **No revisar el requisito de la base 2.1.12** si tu compromiso se resolvió por causa disciplinaria.

## Checklist

- [ ] Cumplo cinco años de servicios efectivos el último día del plazo.
- [ ] Mi compromiso sigue vigente y no he pedido la renuncia.
- [ ] Cumplo los requisitos generales, incluida la edad.
- [ ] He alegado tiempo de servicios, empleo y, si lo tengo, perfil SLP.
- [ ] Sé que tendré que aportar el certificado del apéndice VI y la Hoja General de Servicios.

Si quieres preparar el examen con método, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuántas plazas están reservadas a militares?

En 2026, 1.296 de 3.240. El número lo fija cada oferta de empleo público, con un mínimo del 40 % y un máximo del 50 %.

### ¿Necesito cinco años de servicio el día del examen?

No: se cuentan hasta la fecha en que finaliza el plazo de admisión de solicitudes, según la convocatoria de 2026.

### ¿Puedo presentarme por el libre si soy militar?

Sí, si cumples los requisitos generales. El reglamento aclara que no se te exige haber cumplido el compromiso inicial para el ingreso sin reserva de plazas.

### ¿Si no apruebo por el cupo militar, entro en el libre?

La convocatoria de 2026 no describe ese paso como automático: cada aspirante se ordena dentro de su modalidad de ingreso. Lo que sí dice es que las plazas reservadas sin cubrir se suman a las libres.

### ¿Cuándo presento el certificado de mi unidad?

A la incorporación al centro de formación, no en la solicitud (base 10.2).

### ¿Qué pasa con mi compromiso si apruebo?

Queda resuelto al ser nombrado alumno. Si tenías compromiso de larga duración y no completas el acceso, puedes reincorporarte a las Fuerzas Armadas en los términos de la Ley 8/2006.',
   NULL, NULL, 'publicado', '2027-02-06T06:44:00.000Z', 'acceso-guardia-civil',
   ARRAY['militares', 'tropa y marinería', 'cupo', 'plazas reservadas']::text[], '{"title":"Plazas para militares en la Guardia Civil: el cupo","description":"Cupo de militares de tropa y marinería en la Guardia Civil: 1.296 plazas en 2026, cinco años de servicio, certificado del apéndice VI y puntos del baremo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('si-suspendes-como-replantear-la-siguiente-convocatoria', 'articulo', 'Si suspendes: cómo replantear la siguiente convocatoria', 'No entrar a la primera es frecuente. Cómo averiguar en qué fase y por qué quedaste fuera, cuánto te faltó frente a las notas de corte de 2022 a 2026, dónde están los puntos más baratos y cómo reorganizar la preparación para la siguiente convocatoria.', 'Si acabas de recibir una mala noticia, primero lo primero: **no entrar no te cierra la puerta**. Las bases de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) no limitan el número de veces que puedes presentarte; el límite que sí fijan es la edad: no cumplir 41 años en el año de la convocatoria (base 2.1.7). Consulta siempre las bases de la convocatoria vigente, porque cada una fija sus reglas.

**Respuesta corta:** averigua en qué fase y por qué quedaste fuera, calcula a cuántos puntos te quedaste de la nota de corte, identifica dónde están los puntos más baratos de conseguir y reorganiza la preparación alrededor de ese dato, no de la sensación. Y date unos días para digerirlo antes de decidir nada.

## Paso 0: antes de analizar, comprueba los plazos de revisión

Si el resultado acaba de publicarse, lo primero es saber si puedes pedir revisión:

- **Pruebas de ortografía, gramática, conocimientos, inglés y aptitudes intelectuales:** la base 7.11 permitía pedir la revisión de la calificación por escrito en **3 días hábiles** desde la publicación de las calificaciones.
- **Reconocimiento médico:** la calificación de «no apto» podía revisarse en **3 días hábiles**.
- **Entrevista personal:** el «no apto provisional» se revisa ante una Junta de psicólogos.

Los plazos son cortos y los fija cada convocatoria: compruébalos en la tuya en cuanto salgan las listas.

## Paso 1: descubre dónde se quedó el problema

Hay casos muy distintos, y cada uno pide un plan diferente:

| Qué pasó | Qué significa | Qué cambiar |
| --- | --- | --- |
| 6 o más errores en ortografía o en gramática | Excluido antes de que contara el resto | Entrenamiento diario de lengua |
| No llegaste a un mínimo (conocimientos 50/100, inglés 8/20, aptitudes 12/30) | Fuera por una prueba concreta | Reforzar esa prueba hasta tener margen |
| Superaste los mínimos, pero tu puntuación no alcanzó para ser convocado a las pruebas psicofísicas (1,5 aspirantes por plaza) o para obtener plaza | Faltaron puntos en conjunto | Subir nota global y revisar el concurso |
| No superaste las pruebas físicas | Fallo en una prueba apto/no apto | Plan de entrenamiento con margen sobre las marcas |
| «No apto» en reconocimiento médico o entrevista | Fallo en una prueba de aptitud | Informarte bien de la causa y, si procede, consultar con un profesional |

Los mínimos están en las bases 7.4 a 7.8. Si no sabes tu puntuación exacta, consulta las listas publicadas con tus resultados.

## Paso 2: compara con las notas de corte

La nota de corte, tal como la calculamos en ProLince a partir de las resoluciones de aspirantes propuestos, es la puntuación final del último aspirante que obtuvo plaza en el acceso libre, sobre **195 puntos** (oposición, hasta 150, más concurso, hasta 45). No existe una nota de corte oficial publicada como cifra aislada.

| Año | Nota de corte (acceso libre, sobre 195) |
| --- | --- |
| 2026 | 90,61 |
| 2025 | 95,80 |
| 2024 | 103,08 |
| 2023 | 95,75 |
| 2022 | 110,58 |

Varía mucho de un año a otro y **no se puede predecir** la siguiente. Qué es y por qué cambia está en [nota de corte de la Guardia Civil](/blog/nota-de-corte-guardia-civil). Úsala para medir tu distancia, no como una promesa: si te faltaron 3 puntos con la de 2026, con la de 2022 te habrían faltado más de 20.

## Paso 3: busca los puntos más baratos

No todos los puntos cuestan lo mismo. Algunas vías, de menos a más esfuerzo habitual:

| Vía | Cuánto puede sumar | Comentario |
| --- | --- | --- |
| Convertir errores de lectura en blancos o aciertos | Cada error evitado suma 1/3; cada error convertido en acierto, 4/3 | Técnica, no temario |
| Certificado de idiomas | B2 = 5, C1 = 7, C2 = 9 puntos de concurso | Solo cuenta el de mayor puntuación de cada idioma |
| Inglés | Hasta 20 puntos | Prueba corta; cada acierto vale lo mismo que en conocimientos |
| Aptitudes intelectuales | Hasta 30 puntos | Cada acierto vale 0,375; entrenable |
| Conocimientos | Hasta 100 puntos | El grueso, pero el más lento de mejorar |

Los méritos se explican en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos) y los certificados válidos, en [qué certificado de idiomas sacarte](/blog/certificados-de-idiomas-para-la-guardia-civil-cual-sacarte). Los méritos se valoran según el baremo de cada convocatoria: compruébalo cuando salga.

## Caso práctico: a 0,6 puntos

**Caso hipotético**, con la nota de corte de 2026. Un aspirante obtuvo 58 en conocimientos (64 aciertos, 18 errores), 10 en inglés y 16 en aptitudes: 84 puntos de oposición. Con 6 de concurso, sumó **90**, a 0,61 de la nota de corte.

Su diagnóstico:

- De los 18 errores de conocimientos, 5 fueron de lectura (negaciones y opciones incompletas). Si los hubiera dejado en blanco, habría sumado 5/3 ≈ 1,67 puntos; si los hubiera acertado, 5 × 4/3 ≈ 6,7.
- No tenía certificado de inglés. Un B2 le habría dado 5 puntos de concurso.
- En aptitudes, 16 sobre 30 equivale a unos 43 aciertos netos de 80: hay margen de mejora con entrenamiento regular.

Su plan para la siguiente convocatoria: técnica de lectura desde ya, preparar un certificado de inglés de nivel B2 y psicotécnico tres veces por semana, sin dejar de repasar el temario. Ninguna de estas medidas garantiza la plaza, porque la nota de corte cambia, pero ataca los puntos más accesibles primero.

## Paso 4: haz un diagnóstico sin dramatizar

Responde con datos, no con impresiones:

- ¿Cuántos simulacros hice y qué tendencia tenían?
- ¿Mis fallos eran de **temario**, de **lectura** o de **gestión del tiempo**? Para los de lectura, mira [cómo leer un enunciado tipo test](/blog/como-leer-un-enunciado-tipo-test-sin-caer-en-las-trampas).
- ¿Repasé de forma espaciada o dejé temas sin volver a ver?
- ¿Llegué a las físicas con margen o justo?
- ¿Mi horario era sostenible o acabé agotado?

## Paso 5: replantea el calendario

1. **Descansa unos días**, pero no semanas: reanudar cuesta más cuanto más tardas.
2. **Fija un objetivo de puntuación** a partir del histórico de notas de corte, con margen, y repártelo por pruebas.
3. **Corrige primero lo que más puntos te quitó**, no lo que más te gusta estudiar.
4. **Reserva simulacros periódicos** y analízalos.
5. **Mantén el contacto con el temario** aunque no haya convocatoria publicada: se olvida rápido.

Una distribución orientativa del primer mes tras el resultado:

| Semana | Foco |
| --- | --- |
| 1 | Descanso y análisis de resultados por escrito |
| 2 | Plan nuevo: objetivo por prueba y calendario |
| 3 | Vuelta al temario con tests de todo lo visto |
| 4 | Primer simulacro completo para medir el punto de partida |

Sobre la siguiente convocatoria, no hay fecha ni plazas garantizadas: lo que se sabe está en [qué se sabe de la convocatoria de 2027](/blog/convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra). Planifica con lo que sí controlas.

## Paso 6: cuida cómo te lo tomas

Es normal sentir frustración, rabia o tristeza. Hablarlo con alguien de confianza ayuda. Si el desánimo te bloquea durante semanas o notas ansiedad que te desborda, hablar con un profesional de la salud es una buena decisión; no es algo que un artículo pueda resolver. Hay ideas para los días sin ganas en [qué hacer cuando no te apetece estudiar](/blog/motivacion-que-hacer-los-dias-que-no-te-apetece-estudiar).

## Errores frecuentes

- **Volver a empezar igual,** con el mismo método y el mismo horario.
- **Empezar el temario desde cero** en lugar de repasar con tests lo que ya sabías.
- **Culpar solo a la nota de corte** sin mirar tus propios datos.
- **Olvidar el concurso:** un certificado puede valer más que semanas de temario.
- **Abandonar las físicas** hasta que salga la convocatoria.
- **Tardar meses en volver.**

## Checklist tras el resultado

- [ ] He comprobado si estoy en plazo para pedir revisión.
- [ ] Sé en qué fase quedé fuera y por qué.
- [ ] Sé a cuántos puntos me quedé frente a las notas de corte.
- [ ] He clasificado mis fallos (temario, lectura, tiempo).
- [ ] He revisado qué méritos puedo sumar.
- [ ] Tengo fecha para retomar el estudio.
- [ ] Sigo cumpliendo el requisito de edad para la próxima convocatoria.

Si quieres reorganizar la preparación con apoyo, mira el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Puedo volver a presentarme si suspendo?

Las bases de 2026 no limitan el número de intentos; sí limitan la edad. Revisa las bases de la convocatoria vigente.

### ¿Cuánto tarda en salir la siguiente convocatoria?

No hay una fecha fija ni garantizada. Sigue las publicaciones del BOE y de la Guardia Civil.

### ¿Qué nota debería sacar para entrar?

No hay una cifra segura: la nota de corte cambia cada año. En los últimos cinco años osciló entre 90,61 y 110,58 sobre 195. Usa el histórico como referencia, con margen.

### ¿Conservo algo de un intento anterior?

Las bases de 2026 no prevén conservar notas de un año para otro. Lo que sí conservas son los méritos que tengas acreditados y lo que has aprendido. Consulta siempre las bases vigentes.

### ¿Puedo pedir que revisen mi examen?

Sí, dentro del plazo que fije la convocatoria; en la de 2026, 3 días hábiles desde la publicación de las calificaciones (base 7.11).

### ¿Es mejor cambiar de método o de academia?

Depende de tu diagnóstico. Si tus fallos eran de temario no repasado, quizá baste con cambiar el plan; si no tenías método, puede que necesites apoyo externo. Decide con tus datos.',
   NULL, NULL, 'publicado', '2027-02-09T06:35:00.000Z', 'acceso-guardia-civil',
   ARRAY['suspenso', 'nota de corte', 'planificación', 'convocatoria']::text[], '{"title":"Si suspendes la oposición a Guardia Civil: qué hacer","description":"Qué hacer si no apruebas la oposición a Guardia Civil: diagnostica el fallo, compárate con las notas de corte 2022-2026 y replantea la convocatoria."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

