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

