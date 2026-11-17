-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('altura-minima-guardia-civil', 'articulo', 'Altura mínima Guardia Civil: por qué ya no se exige', 'Desde octubre de 2023 no hay estatura mínima ni máxima para entrar en la Guardia Civil. Qué se exigía antes, qué norma lo cambió y por qué, qué se sigue midiendo en el reconocimiento y cómo afecta a las pruebas físicas.', 'Durante años, la estatura fue uno de los requisitos que más aspirantes dejaba fuera antes incluso de empezar a estudiar. Hoy ya no es así, pero en internet siguen circulando cifras antiguas, y todavía hay quien renuncia a la oposición por medir 1,55 m.

La respuesta corta: **para ingresar en la Escala de Cabos y Guardias de la Guardia Civil no hay altura mínima ni máxima desde el 19 de octubre de 2023.** La talla se sigue midiendo, pero solo para calcular el índice de masa corporal.

## ¿Qué se exigía antes?

La redacción original del cuadro médico de exclusiones (anexo I de la Orden PCI/155/2019) excluía a quien midiera:

- menos de **160 cm** en el caso de los hombres,
- menos de **155 cm** en el caso de las mujeres, o
- más de **203 cm**, en ambos casos.

Si en algún sitio ves esas cifras como requisito actual, la información está desfasada. Es frecuente en foros antiguos, vídeos de hace años y páginas que no se han actualizado.

## Línea temporal: cómo hemos llegado hasta aquí

| Fecha | Qué pasó |
|---|---|
| Febrero de 2019 | La Orden PCI/155/2019 aprueba el cuadro médico con mínimos de 160 cm (hombres) y 155 cm (mujeres) y un máximo de 203 cm |
| 14 de julio de 2022 | El Tribunal Supremo (sentencia 1000/2022) razona que la estatura inferior a la fijada no parece relacionada con la falta de una aptitud física concreta |
| Octubre de 2022 | El Real Decreto 853/2022 suprime la estatura mínima para ingresar en la Policía Nacional |
| 17 de octubre de 2023 | La Orden PCM/1133/2023 deja la talla «sin límite» en el cuadro de la Guardia Civil |
| 19 de octubre de 2023 | La orden entra en vigor, el mismo día de su publicación en el BOE |
| Mayo de 2026 | La convocatoria de 2026 aplica el cuadro ya sin límite de estatura |

## ¿Qué norma eliminó la altura mínima?

La **Orden PCM/1133/2023, de 17 de octubre** ([BOE-A-2023-21528](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-21528)), en vigor desde el 19 de octubre de 2023. Su único artículo cambia el apartado de talla del cuadro médico, que queda así:

> «1. Talla. En bipedestación: sin límite.»

Es la redacción que sigue vigente en el [texto consolidado de la Orden PCI/155/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291) y la que aplica la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)), que se remite a ese cuadro en su base 6.1.3.c).

## ¿Por qué se eliminó?

La propia orden lo explica en su preámbulo. Se apoya en la sentencia 1000/2022 del Tribunal Supremo, de 14 de julio de 2022, que señalaba que tener una estatura inferior a la fijada no parecía relacionado con la falta de una aptitud física concreta, y que esa aptitud ya queda garantizada con las pruebas físicas y médicas del proceso.

Con esa idea, y con dos objetivos declarados, **avanzar en la igualdad de oportunidades entre hombres y mujeres** y **atraer y captar talento**, se suprimieron con carácter general los límites de estatura para el ingreso.

El razonamiento de fondo es sencillo: si alguien supera la carrera, el circuito, las extensiones de brazos, la natación y el reconocimiento médico, su estatura no aporta información adicional sobre si puede o no hacer el trabajo.

## ¿Puede pedirse una altura para algún destino?

Sí, y es un matiz importante. La orden elimina la altura **para ingresar en los centros de formación**, pero deja a salvo los requisitos que puedan exigirse después:

- para ocupar **determinados destinos**, según el Reglamento de destinos del personal de la Guardia Civil (Real Decreto 470/2019), y
- para acceder a la **enseñanza de especialización**, según el Reglamento de ordenación de la enseñanza.

Es decir: tu estatura no te impide entrar, pero en el futuro podría contar para alguna especialidad o destino concreto si su normativa lo exige. No te fíes de listas de «alturas por especialidad» sin fuente: compruébalo en la convocatoria del curso de especialización que te interese cuando llegue el momento. Tienes una visión general de la carrera en [destinos y especialidades de la Guardia Civil](/blog/destinos-especialidades-guardia-civil).

## Lo que sí se sigue midiendo: el IMC

Que no haya límite de altura no significa que la talla no se mida. Se usa para calcular el **índice de masa corporal**, que debe estar **entre 17 y 30**:

> IMC = peso (kg) / talla (m)²

Esta tabla te da el rango de peso que corresponde a cada estatura (redondeado a una décima):

| Talla | Peso para IMC 17 | Peso para IMC 30 |
|---|---|---|
| 1,50 m | 38,2 kg | 67,5 kg |
| 1,55 m | 40,8 kg | 72,1 kg |
| 1,60 m | 43,5 kg | 76,8 kg |
| 1,65 m | 46,3 kg | 81,7 kg |
| 1,70 m | 49,1 kg | 86,7 kg |
| 1,75 m | 52,1 kg | 91,9 kg |
| 1,80 m | 55,1 kg | 97,2 kg |
| 1,85 m | 58,2 kg | 102,7 kg |
| 1,90 m | 61,4 kg | 108,3 kg |
| 1,95 m | 64,6 kg | 114,1 kg |

### Ejemplos resueltos

- **1,58 m y 77 kg.** 1,58² = 2,4964; 77 / 2,4964 = 30,8. Supera el límite de 30. Solo se admitiría si se demuestra que se debe a masa muscular, sin otra patología ni factores de riesgo.
- **1,92 m y 62 kg.** 1,92² = 3,6864; 62 / 3,6864 = 16,8. Está por debajo de 17: también es causa de exclusión.
- **1,52 m y 55 kg.** 1,52² = 2,3104; 55 / 2,3104 = 23,8. Dentro del rango, sin problema.

Fíjate en que, para las personas de poca estatura, el margen en kilos es más estrecho: a 1,50 m hay unos 29 kg entre el mínimo y el máximo; a 1,90 m, unos 47. Si estás cerca del límite, controla el peso con tiempo y con asesoramiento profesional, no en las semanas previas al reconocimiento.

Tienes el resto de parámetros del reconocimiento en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Si mides poco, donde tienes que fijarte es en las físicas

La altura ya no te deja fuera, pero las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) son iguales para todos los aspirantes del mismo sexo y tramo de edad, midan lo que midan. No hay ningún ajuste por estatura.

Qué conviene saber, prueba por prueba:

| Prueba | Qué puede notar alguien de poca estatura | Qué hacer |
|---|---|---|
| Carrera de 2.000 m | Zancada más corta | Trabajar frecuencia de paso y ritmo; la estatura no es decisiva en esta distancia |
| Circuito de agilidad | Vallas proporcionalmente más altas | Practicar el paso de valla y los apoyos hasta automatizarlos |
| Extensiones de brazos | Recorrido más corto y menos peso que mover: suele ser una ventaja | Cuidar la técnica: barbilla al suelo y cuerpo alineado |
| Natación 50 m | Brazada más corta | Mejorar la técnica de crol y la respiración |

En el otro extremo, las personas muy altas suelen notarlo en las extensiones de brazos (más recorrido y más peso) y en los giros del circuito. Sea cual sea tu caso, la solución es la misma: entrenar las cuatro pruebas con tiempo, porque basta con no superar una para quedar fuera del proceso.

## ¿Y en la Policía Nacional?

Tampoco hay estatura mínima para ingresar desde el Real Decreto 853/2022, que la suprimió para el ingreso en el cuerpo. El propio reglamento prevé, eso sí, que puedan exigirse estaturas mínimas para algunas unidades o cursos de especialización. Es un esquema parecido al de la Guardia Civil: sin altura para entrar, posibles requisitos para algunos destinos.

## Errores frecuentes

- **Descartar la oposición por la altura.** Con la normativa vigente, no es un motivo.
- **Confundir la Guardia Civil con las Fuerzas Armadas.** El cuadro médico de los centros docentes militares es otra norma con otros criterios; no lo extrapoles.
- **Olvidar el IMC.** Que no haya altura mínima no significa que tu talla no cuente: con poca estatura, unos pocos kilos te mueven mucho el índice.
- **Dar por buenas listas de alturas por especialidad sin fuente oficial.** Si un requisito existe, estará en la norma o en la convocatoria del curso correspondiente.

## Checklist

- [ ] He comprobado que la información que manejo es posterior a octubre de 2023.
- [ ] He calculado mi IMC y está entre 17 y 30.
- [ ] Conozco las marcas físicas de mi sexo y tramo de edad.
- [ ] He revisado el resto de [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil) y la [edad máxima](/blog/edad-maxima-guardia-civil).

Si quieres prepararte con un plan que combine estudio y entrenamiento, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuál es la altura mínima para ser Guardia Civil?

Ninguna. Desde la Orden PCM/1133/2023, el cuadro médico establece la talla «sin límite» para ingresar en la Escala de Cabos y Guardias.

### ¿Hay altura máxima en la Guardia Civil?

Tampoco. El antiguo límite de 203 cm desapareció con la misma orden.

### ¿Cuánto había que medir antes?

160 cm los hombres y 155 cm las mujeres, según la redacción original de la Orden PCI/155/2019.

### ¿Se mide la altura en el reconocimiento médico?

Sí, para calcular el índice de masa corporal, que debe estar entre 17 y 30.

### ¿Puede exigirse altura para alguna especialidad?

La orden de 2023 deja a salvo los requisitos que puedan exigirse para determinados destinos o para la enseñanza de especialización. Consulta la normativa o la convocatoria del curso concreto.

### ¿Son más fáciles las físicas si mido poco?

No hay ajuste por estatura: las marcas son las mismas para todos los aspirantes del mismo sexo y tramo de edad. Algunas pruebas pueden favorecerte y otras costarte más; lo decisivo es entrenarlas con tiempo.',
   '/blog/altura-minima-guardia-civil.jpg', 'Aspirante atándose las zapatillas en una pista de atletismo al amanecer', 'publicado', '2026-11-21T06:55:00.000Z', 'acceso-guardia-civil',
   ARRAY['altura', 'estatura', 'cuadro médico', 'requisitos']::text[], '{"title":"Altura mínima Guardia Civil: ya no se exige (2026)","description":"¿Hay altura mínima para la Guardia Civil? No desde la Orden PCM/1133/2023. Qué se exigía antes (160 y 155 cm), por qué se eliminó y qué se sigue midiendo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('certificado-medico-pruebas-fisicas-guardia-civil', 'articulo', 'Certificado médico para las pruebas físicas: qué debe decir y cuándo pedirlo', 'Sin el certificado médico no haces las pruebas físicas: no presentarlo en los términos exigidos te excluye. La frase que debe constar, la ventana de 20 días, la ficha médica alternativa y los errores que dejan fuera a aspirantes.', 'Hay aspirantes que llegan a las pruebas físicas perfectamente entrenados y se quedan fuera en la puerta, **por un papel**. La respuesta corta: antes de empezar las pruebas tienes que entregar al Tribunal un **certificado médico oficial expedido dentro de los 20 días anteriores**, con una frase concreta que menciona los cuatro ejercicios, y en el que conste tu identidad. Si no lo presentas en esos términos, **quedas excluido del proceso**. Es un trámite sencillo, pero con condiciones muy concretas.

## Qué dice exactamente la convocatoria

La base 6.1.3.a de la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) establece que los admitidos, antes del inicio de las pruebas físicas, entregarán al Tribunal de Selección un **Certificado Médico Oficial expedido dentro de los veinte (20) días anteriores** en el que se haga constar expresamente:

> «que el aspirante se encuentra capacitado físicamente para la realización de las pruebas físicas consistentes en los ejercicios de: resistencia (carrera de 2000 metros); coordinación (circuito de agilidad y coordinación); potencia del tren superior (extensiones de brazos) y soltura acuática (50 metros) sin que ello suponga un riesgo para su salud».

Los modelos se publican como **apéndices III y IV** de la convocatoria. Y la misma base cierra con una frase que conviene no olvidar: «La no presentación de cualquiera de los documentos citados en los términos expuestos supondrá la exclusión del aspirante del proceso selectivo».

De ahí salen los cuatro elementos que tu certificado tiene que reunir:

| Elemento | Qué exige la convocatoria |
|---|---|
| Tipo de documento | Certificado Médico Oficial (modelos de los apéndices III y IV) o ficha médica válida |
| Fecha | Expedido dentro de los 20 días anteriores a las pruebas |
| Contenido | La frase literal que menciona los cuatro ejercicios y «sin que ello suponga un riesgo para su salud» |
| Identidad | Debe constar la identidad del aspirante |

## La frase, palabra por palabra

El error más frecuente no es la fecha, sino el contenido. Un certificado que diga «apto para la práctica deportiva» o «no presenta contraindicaciones para el ejercicio físico» **no es lo que pide la convocatoria**. La exigencia es que se haga constar «expresamente» la capacidad para esos cuatro ejercicios concretos.

La forma más segura de acertar:

1. Descarga la convocatoria del BOE y localiza los apéndices III y IV.
2. Imprime el modelo o copia literalmente la frase entrecomillada de la base 6.1.3.a.
3. Pide al médico que la incluya **tal cual**, sin resumirla.

No hace falta que inventes nada: el texto ya está escrito. Tu trabajo es que llegue íntegro al certificado.

## Quién lo firma y en qué impreso

La convocatoria habla de «Certificado Médico Oficial» y no concreta más sobre el médico que debe expedirlo. En la práctica, conviene tener en cuenta dos cosas:

- **El soporte.** En España, la expresión «certificado médico oficial» se asocia al impreso oficial que editan los colegios de médicos. Pregunta a tu médico en qué impreso lo extenderá y, si te surge la duda de si un formato concreto es válido, consúltalo con antelación a través de los medios de contacto que indique el Tribunal.
- **El médico.** No todos los centros de salud expiden certificados para oposiciones. Infórmate con tiempo en tu centro; si no lo hacen, tendrás que acudir a una consulta privada o a un centro de reconocimientos, lo que puede tener coste.

Sea quien sea, el certificado debe llevar tu identificación, la fecha, la firma y los datos del médico que lo expide.

## La alternativa: la ficha médica

La convocatoria admite, en lugar del certificado, la **ficha médica válida** que establece la Instrucción Técnica 01/2015, de 19 de febrero de 2015, de la Inspección General de Sanidad de la Defensa, sobre «Reconocimientos médicos para la realización de pruebas físicas». Al tratarse de un documento del ámbito de la Sanidad Militar, suele interesar sobre todo a quienes optan desde las Fuerzas Armadas.

Para la ficha, la convocatoria añade dos reglas específicas:

- **No puede constar una fecha anterior a la publicación** de la convocatoria en el BOE.
- Si su fecha es **más de 20 días anterior** a las pruebas, debe ir acompañada de una **declaración del interesado** donde se especifique que no ha padecido ningún proceso patológico desde el reconocimiento hasta el momento de hacer las pruebas.

Ojo: esa declaración complementaria está prevista para la **ficha médica**. Para el certificado médico la regla es directa: expedido dentro de los 20 días anteriores.

## El plazo de 20 días: cómo calcularlo sin sustos

La convocatoria dice «dentro de los veinte (20) días anteriores», pero no especifica si son naturales o hábiles. La interpretación prudente es contar **días naturales**, porque es la ventana más corta: si aciertas con ella, cumples con cualquier lectura.

**Ejemplo resuelto (caso hipotético).** Te citan a las pruebas físicas el día 24 de un mes. Contando 20 días naturales hacia atrás, tu ventana empieza alrededor del día 4. Un certificado del día 3 o anterior te pondría en riesgo. Lo razonable es pedir cita para **una o dos semanas antes** de las pruebas: lejos del límite inicial y con margen por si el médico te da cita más tarde o hay que repetir el documento.

Un criterio práctico, paso a paso:

1. **Vigila la citación.** El Tribunal anuncia el lugar, la fecha y la hora de las pruebas en la [web de ingreso de la Guardia Civil](https://web.guardiacivil.es/es/tramites/ingresos/ingresocuerpo/) (base 4.11).
2. **Calcula hacia atrás** y marca en el calendario el primer día válido.
3. **Pide cita** para una fecha dentro de la ventana, con margen por los dos lados.
4. **Lleva la frase o el modelo impreso** a la consulta.
5. **Revísalo antes de salir**: nombre y DNI, fecha, frase completa, firma y datos del médico.
6. **Haz una foto o fotocopia** por si se extravía, y guarda el original en la carpeta de la prueba.

Pedirlo demasiado pronto es tan arriesgado como demasiado tarde: con mucha antelación caduca; el último día, puede que no haya cita.

## Errores que causan la exclusión

- **Certificado fuera de plazo**: expedido más de 20 días antes de las pruebas.
- **Certificado genérico**, sin la mención expresa a los cuatro ejercicios.
- **Frase incompleta**: falta un ejercicio (lo más habitual, la natación) o la coletilla «sin que ello suponga un riesgo para su salud».
- **Falta la identidad** del aspirante, o es ilegible.
- **Ficha médica con fecha anterior** a la publicación de la convocatoria, o con más de 20 días y sin la declaración complementaria.
- **No llevarlo el día de la prueba.** Debe entregarse antes del inicio; prepáralo en la mochila la noche anterior junto al DNI.

## ¿Y si me lesiono o me pongo enfermo antes de las pruebas?

Tu salud va por delante de la oposición. Si tu estado cambia después de obtener el certificado, **no hagas las pruebas sin que un médico te lo autorice**: el certificado acredita que no supone un riesgo para tu salud, y eso deja de ser cierto si has tenido una lesión o una enfermedad.

Lo que conviene saber de las bases:

- **No hay una fecha alternativa general por lesión.** La base 6.2 establece un único llamamiento: no presentarse supone la exclusión «sea cual fuere la causa». La excepción son las medidas del capítulo V del Reglamento de ordenación de la enseñanza en la Guardia Civil ([Real Decreto 131/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-3764)), que protegen la maternidad: embarazo, parto o posparto, y lactancia en los términos del reglamento. Para esos casos, la base 6.3 prevé acreditarlo con informe médico oficial y una fecha alternativa fijada por el Tribunal.
- **Cambio de día o tanda.** Si las pruebas se reparten en más de un día, el Tribunal **puede** autorizar el cambio a quien lo solicite por causas justificadas, antes del inicio de las pruebas (base 6.2). Es una posibilidad, no un derecho: si te ocurre, solicítalo cuanto antes por los medios que indique la convocatoria.

## Checklist del certificado

- [ ] Tengo la frase literal de la base 6.1.3.a o el modelo de los apéndices III y IV.
- [ ] Sé qué médico me lo expide y si tiene coste.
- [ ] He calculado la ventana de 20 días contando días naturales.
- [ ] Tengo cita dentro de esa ventana, con margen.
- [ ] El documento incluye mi identidad, la fecha, la frase completa, la firma y los datos del médico.
- [ ] Tengo una copia y el original está en la mochila de la prueba, con el DNI.
- [ ] Si uso la ficha médica: fecha posterior a la publicación de la convocatoria y, si tiene más de 20 días, declaración complementaria.

## Dónde encaja en el proceso

Las pruebas físicas forman parte de la prueba de aptitud psicofísica, a la que se convoca a 1,5 aspirantes por plaza según la puntuación de concurso y oposición. Es decir, cuando te pidan el certificado ya habrás superado el examen y el psicotécnico. Para no llegar a ese punto con prisas, repasa con tiempo qué te exige cada ejercicio en [las cuatro pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) y, en concreto, la que más preparación exige si partes de cero: [la natación de 50 metros](/blog/natacion-50-metros-guardia-civil).

No confundas este certificado con el **reconocimiento médico** posterior, que hacen los facultativos designados por el Tribunal con el cuadro de exclusiones de la Orden PCI/155/2019. Lo tienes explicado en [el cuadro médico de exclusiones](/blog/cuadro-medico-exclusiones-guardia-civil) y en [la entrevista y el reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil). Si quieres preparar todo el proceso con un plan, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Es obligatorio el certificado médico para las pruebas físicas de la Guardia Civil?

Sí. Debe entregarse al Tribunal antes de empezar las pruebas, y no presentarlo en los términos exigidos supone la exclusión del proceso.

### ¿Con cuántos días de antelación debo pedirlo?

Debe estar expedido dentro de los 20 días anteriores a las pruebas. Lo prudente es contar días naturales y pedir cita una o dos semanas antes.

### ¿Vale un certificado de «apto para el deporte»?

No, si no menciona expresamente los cuatro ejercicios (carrera de 2.000 metros, circuito de agilidad, extensiones de brazos y natación de 50 metros) y que no suponen un riesgo para tu salud.

### ¿Qué pasa si mi ficha médica tiene más de 20 días?

Si usas la ficha médica de la Instrucción Técnica 01/2015, debe acompañarse de una declaración tuya de que no has padecido ningún proceso patológico desde el reconocimiento. Y nunca puede tener fecha anterior a la publicación de la convocatoria.

### ¿Dónde está el modelo?

En los apéndices III y IV de la convocatoria publicada en el BOE.

### ¿Es lo mismo que el reconocimiento médico?

No. El certificado lo aporta el aspirante antes de las pruebas físicas; el reconocimiento médico lo hacen después los facultativos del Tribunal conforme al cuadro de exclusiones.

### ¿Puedo cambiar el día de las pruebas si estoy lesionado?

No hay una fecha alternativa general por lesión. Si las pruebas duran más de un día, el Tribunal puede autorizar un cambio de día o tanda por causa justificada, solicitado antes del inicio. Las medidas del capítulo V del reglamento de enseñanza se refieren a la protección de la maternidad.',
   '/blog/certificado-medico-pruebas-fisicas-guardia-civil.jpg', 'Médica firmando y sellando un certificado mientras un aspirante espera en la consulta', 'publicado', '2026-11-19T06:21:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'certificado médico', 'requisitos', 'documentación']::text[], '{"title":"Certificado médico pruebas físicas Guardia Civil: guía","description":"Certificado médico para las pruebas físicas de la Guardia Civil: frase exigida, plazo de 20 días, ficha médica alternativa y errores que excluyen."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gafas-miopia-operacion-vista-guardia-civil', 'articulo', '¿Puedo ser Guardia Civil con gafas, miopía o si me he operado la vista?', 'Sí puedes llevar gafas o lentillas: lo que cuenta es la agudeza visual y las dioptrías. Los límites exactos del cuadro médico, ejemplos de graduaciones, qué pasa si te has operado con láser y la exclusión que casi nadie revisa.', 'Llevar gafas es probablemente la duda médica más común entre opositores. La buena noticia: **las gafas y las lentillas no te excluyen de la Guardia Civil.** Lo que se mide es cuánto ves y cuántas dioptrías tienes, y ahí hay dos límites que debes conocer al detalle.

Todo lo que sigue sale del apartado J (aparato de la visión) del cuadro médico de exclusiones, en el [texto consolidado de la Orden PCI/155/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291), que es el que aplica la convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)).

## La respuesta corta en una tabla

| Situación | ¿Excluye? |
|---|---|
| Llevar gafas o lentillas | No, si cumples agudeza y graduación |
| Agudeza visual de 0,7 o menos en algún ojo, incluso con corrección | Sí |
| Miopía de más de −3 dioptrías | Sí |
| Hipermetropía de más de +3 | Sí |
| Astigmatismo de más de ±2 | Sí |
| Daltonismo | Sí |
| Cirugía refractiva con láser en la córnea | No figura como causa; se valora el resultado |
| Cirugía dentro del ojo o lente intraocular | Figura en el cuadro (lo vemos en un artículo propio) |

## Los dos números que importan

### 1. Agudeza visual: más de 0,7 en cada ojo

El cuadro exige una **agudeza visual superior a 0,7 en ambos ojos, con o sin corrección** (apartado J.18). «Con o sin corrección» es la clave: si con tus gafas o lentillas ves más de 0,7 en cada ojo, cumples este apartado.

Fíjate en dos detalles:

- Dice **superior a 0,7**: un 0,7 justo no cumple la letra de la norma.
- Dice **en ambos ojos**: un ojo muy bueno no compensa uno que no llegue. Si tienes un ojo vago (ambliopía) que no alcanza esa cifra ni con corrección, quedarías fuera aunque el otro vea perfectamente.

La agudeza visual se expresa en escala decimal: 1,0 es la visión de referencia y 0,5, la mitad. Es la cifra que te da el optometrista u oftalmólogo cuando lees las letras de la pantalla, ojo por ojo.

### 2. Refracción: el límite de dioptrías

Además de ver bien con corrección, tu graduación no puede superar estos máximos (apartado J.19):

| Defecto | Máximo permitido |
|---|---|
| Miopía | −3 dioptrías |
| Hipermetropía | +3 dioptrías |
| Astigmatismo | ±2 dioptrías, con independencia del componente esférico |

Aquí está la trampa: **aunque con gafas veas perfectamente, si tienes −4 de miopía, superas el máximo.** Las dos condiciones se exigen a la vez.

«Con independencia del componente esférico» significa que el límite del astigmatismo se mira por separado de la miopía o la hipermetropía: puedes tener −2,50 de miopía y 1,50 de astigmatismo, y cada valor está dentro de su máximo.

## Ejemplos de graduaciones (hipotéticos)

Cómo leer tu receta: la esfera (ESF) indica miopía (negativo) o hipermetropía (positivo), y el cilindro (CIL), el astigmatismo.

| Graduación (en cada ojo) | Agudeza con gafas | Resultado según el cuadro |
|---|---|---|
| ESF −2,50 / CIL −0,75 | 1,0 | Dentro de los límites |
| ESF −3,00 / CIL 0 | 1,0 | En el límite exacto: no supera −3 |
| ESF −3,25 / CIL 0 | 1,0 | Supera el máximo de miopía |
| ESF +1,50 / CIL −2,25 | 0,9 | Supera el máximo de astigmatismo |
| ESF −1,00 / CIL −0,50, con un ojo que solo llega a 0,6 | 0,6 en ese ojo | No cumple la agudeza |

Si tus valores están en el filo, la medición del día del reconocimiento es la que cuenta, y puede no coincidir exactamente con la de tu óptica. Por eso conviene saber tu graduación con precisión y con tiempo.

## ¿Y si me he operado con láser?

El cuadro de la Guardia Civil **no incluye la cirugía refractiva con láser en la córnea** (LASIK, PRK y técnicas similares) entre las causas de exclusión. Lo que sí incluye es:

- «Cualquier tipo de cirugía intraocular», es decir, la que se hace dentro del ojo (J.2).
- Problemas de córnea como el queratocono, las ectasias corneales, las degeneraciones y distrofias, los leucomas que alteren la agudeza visual, el trasplante de córnea o los anillos intraestromales (J.9).

Por tanto, después de una operación con láser lo que se valora es **el resultado**: tu agudeza visual, tu graduación residual y el estado de la córnea. Si tras la operación ves más de 0,7 en cada ojo, estás dentro de los límites de dioptrías y la córnea no presenta alteraciones de las que excluye el cuadro, la operación por sí sola no debería dejarte fuera.

Dos consejos prácticos:

1. **No te operes a última hora.** Deja que la graduación se estabilice y haz las revisiones que te pida tu oftalmólogo antes del reconocimiento.
2. **Lleva el informe de la operación** y la última revisión. El cuadro exige que cada exclusión se motive de forma individual, y la documentación te ayuda a explicar tu caso.

Las lentes que se implantan dentro del ojo son un caso aparte, con una sentencia del Tribunal Supremo de por medio: lo explicaremos en un artículo propio.

## La causa de exclusión que casi nadie revisa: los colores

El cuadro exige **visión cromática normal** (J.16). El daltonismo excluye, y muchas personas que lo tienen en grado leve no lo saben, porque en la vida diaria apenas les afecta. Un test de colores tarda unos minutos en cualquier óptica u oftalmólogo: hazlo antes de invertir un año en la oposición.

## Otras causas oculares del cuadro

Además de la agudeza, las dioptrías y los colores, el apartado J excluye, entre otras:

- escotomas o reducciones del **campo visual** de más de 15 grados,
- **glaucoma** o alteraciones de la tensión ocular,
- **desprendimiento de retina**, agujeros o desgarros retinianos,
- **cataratas** y opacidades del cristalino,
- **forias** por encima de ciertos valores (endoforia de más de 8 dioptrías prismáticas, exoforia de más de 10, hiperforia de más de 1),
- alteraciones de la motilidad ocular, como heterotropias (estrabismos) de más de 3 dioptrías prismáticas, nistagmo o visión doble,
- conjuntivitis crónica o pterigión de marcado desarrollo.

Tienes el resto de apartados (oído, tensión, IMC, espalda…) en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Casos prácticos (hipotéticos)

**Caso 1. Pablo, −2,75 de miopía a los 22 años y subiendo un cuarto cada año.** Hoy cumple, pero si la tendencia sigue, puede superar −3 antes de llegar al reconocimiento. Le conviene hablar con su oftalmólogo sobre la evolución y no dar por hecho que mantendrá la cifra.

**Caso 2. Laura, operada con láser hace dos años, sin graduación residual.** Ve 1,0 en cada ojo y la córnea está sana. La cirugía refractiva corneal no figura como causa de exclusión: debería llevar el informe de la operación y una revisión reciente.

**Caso 3. Sergio, buena agudeza con gafas pero con dudas en los colores.** Se hace el test y le detectan una alteración en la percepción del rojo y el verde. Con el cuadro vigente, el daltonismo excluye: mejor saberlo ahora que después de aprobar el examen.

## ¿Y en la Policía Nacional?

Es muy distinto, y conviene no mezclarlo. El cuadro médico de la Policía Nacional (Real Decreto 326/2021), según figura en su convocatoria de 2026, exige una **agudeza visual de 0,6 en cada ojo sin corrección**, y no incluye límites de dioptrías. Con mucha miopía corregida con gafas, ese requisito es más difícil de cumplir; con poca graduación, puede ser al revés. Compararemos ambas oposiciones más adelante.

## Qué hacer ahora

1. **Pide una revisión completa** con estas preguntas: agudeza visual con corrección en cada ojo, graduación exacta (esfera y cilindro) y test de colores.
2. **Si estás en el límite** (por ejemplo, −2,75 y subiendo), coméntalo con tu oftalmólogo con tiempo.
3. **Si piensas operarte**, explícale que vas a pasar el reconocimiento de la Guardia Civil y enséñale el apartado J del cuadro.
4. **Guarda los informes.** Te servirán en el reconocimiento.

## Errores frecuentes

- **Pensar que «con gafas veo bien» basta.** La graduación tiene su propio límite.
- **Fijarte solo en el ojo bueno.** Se exige más de 0,7 en cada ojo.
- **No hacerte nunca un test de colores.**
- **Aplicar el cuadro de la Policía Nacional o de las Fuerzas Armadas.** Las cifras son otras.
- **Operarte con el reconocimiento encima**, sin tiempo para que la vista se estabilice.

## Checklist de la vista

- [ ] Agudeza con corrección superior a 0,7 en cada ojo.
- [ ] Miopía no superior a −3, hipermetropía no superior a +3 y astigmatismo no superior a ±2.
- [ ] Test de colores normal.
- [ ] Informes de cualquier cirugía o patología ocular.
- [ ] Resto de [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil) revisados, incluidos la [edad máxima](/blog/edad-maxima-guardia-civil) y el [IMC, que sustituye a la antigua altura mínima](/blog/altura-minima-guardia-civil).
- [ ] Sé cómo es el día del reconocimiento: lo contamos en [entrevista y reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil).

Si quieres preparar la oposición con un plan completo, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Se puede ser Guardia Civil con gafas?

Sí. El cuadro exige una agudeza visual superior a 0,7 en ambos ojos, con o sin corrección, siempre que la graduación no supere los máximos permitidos.

### ¿Cuántas dioptrías de miopía se permiten en la Guardia Civil?

Como máximo −3 dioptrías. La hipermetropía tiene un máximo de +3 y el astigmatismo, de ±2.

### ¿Puedo entrar si me he operado de miopía con láser?

El cuadro no excluye la cirugía refractiva corneal en sí. Se valora el resultado: agudeza visual, graduación residual y estado de la córnea. Sí excluye la cirugía intraocular y problemas de córnea como el queratocono o las ectasias.

### ¿El daltonismo excluye de la Guardia Civil?

Sí. El cuadro médico exige visión cromática normal.

### ¿Puedo entrar con un ojo vago?

Solo si ese ojo alcanza una agudeza superior a 0,7, con o sin corrección. El requisito se exige en ambos ojos.

### ¿El astigmatismo se suma a la miopía?

No para el límite: el cuadro fija ±2 de astigmatismo «con independencia del componente esférico», así que cada valor se compara con su propio máximo.',
   '/blog/gafas-miopia-operacion-vista-guardia-civil.jpg', 'Oftalmólogo graduando la vista de un aspirante con una montura de prueba', 'publicado', '2026-11-22T06:12:00.000Z', 'acceso-guardia-civil',
   ARRAY['vista', 'miopía', 'gafas', 'cuadro médico']::text[], '{"title":"Gafas y miopía en la Guardia Civil: límites 2026","description":"¿Puedes ser Guardia Civil con gafas o miopía? Agudeza visual mínima, dioptrías máximas (−3, +3, ±2), operación láser y daltonismo según el cuadro médico."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('guardia-civil-o-policia-nacional', 'articulo', 'Guardia Civil o Policía Nacional: diferencias para elegir oposición', 'Requisitos, examen, pruebas físicas, cuadro médico y formación de las dos oposiciones, comparados con las convocatorias de 2026 en la mano. Qué cambia de verdad, ejemplos de puntuación y preguntas para elegir.', 'Muchos opositores dudan entre las dos. Tiene sentido: las funciones se parecen y parte de los temarios se solapan. Pero los procesos selectivos son bastante distintos, y elegir bien te ahorra meses.

Comparamos las dos con sus convocatorias de 2026: la de la Escala de Cabos y Guardias de la Guardia Civil ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) y la de la Escala Básica, categoría de Policía, de la Policía Nacional ([BOE-A-2026-15055](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-15055)).

## La respuesta corta

- **Solo tienes la ESO** → Guardia Civil (la Policía Nacional exige Bachiller).
- **Cumples 41 años o más en el año de la convocatoria** → Policía Nacional (la Guardia Civil tiene tope de edad).
- **Eres muy bueno físicamente** → en la Policía Nacional eso puntúa; en la Guardia Civil basta con superar las marcas.
- **Tienes méritos (titulaciones, idiomas)** → en la Guardia Civil suman hasta 45 puntos en el concurso.
- **No tienes un A2 de inglés o francés acreditado** → para la Policía Nacional lo necesitas antes de que acabe el plazo de solicitudes.

## La diferencia de fondo

- La **Guardia Civil** es un instituto armado **de naturaleza militar**. Su régimen disciplinario y su formación están marcados por ese carácter.
- La **Policía Nacional** es un **cuerpo policial de naturaleza civil**.

En el reparto territorial, a grandes rasgos, la Guardia Civil cubre la mayor parte del territorio y las zonas rurales, además del mar territorial, y la Policía Nacional, las capitales de provincia y los municipios que determine el Gobierno. Si te imaginas trabajando en un pueblo, en tráfico, en el monte o en la costa, piensa en la Guardia Civil; si te ves en una ciudad grande, en la Policía Nacional.

## Requisitos: aquí está la primera gran diferencia

| Requisito | Guardia Civil (2026) | Policía Nacional (2026) |
|---|---|---|
| Edad | De 18 a 40 años (cumplir 18 y no cumplir 41 en el año) | 18 años, sin más tope que la edad de jubilación |
| Titulación | ESO o equivalente | Bachiller o equivalente |
| Permiso de conducir | Clase B | Clase B sin restricciones |
| Idioma | No es requisito (el inglés es una prueba que puntúa) | Nivel A2 de inglés o francés acreditado |
| Estatura | Sin límite desde 2023 | Sin límite para ingresar desde 2022 |
| Tatuajes | Prohibidos los de contenido contrario a valores constitucionales, autoridades o virtudes militares, o a la imagen del cuerpo | La convocatoria no los menciona |

Tienes el detalle en [edad máxima para ser Guardia Civil](/blog/edad-maxima-guardia-civil) y en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil).

## Plazas en 2026

| | Guardia Civil | Policía Nacional |
|---|---|---|
| Total | 3.240 | 2.704 |
| Acceso libre | 1.704 | 2.163 |
| Reservadas a militares de tropa y marinería | 1.296 | 541 |
| Otras reservas | 240 para alumnos del Colegio de Guardias Jóvenes | — |

En la Guardia Civil, las plazas reservadas que no se cubren se suman al acceso libre.

## Concurso-oposición frente a oposición

- **Guardia Civil:** es **concurso-oposición**. Además del examen, se valoran méritos (titulaciones, idiomas…) que suman hasta 45 puntos de los 195 posibles. Te lo explicamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).
- **Policía Nacional:** es **oposición**. Solo a quien ya ha superado la oposición se le suman algunos méritos tasados: empleo alcanzado en las Fuerzas Armadas, condición de deportista de alto nivel e idiomas por encima del A2 (hasta 2 puntos: B1 = 0,50; B2 = 1; C1 = 1,50; C2 = 2).

## El examen teórico

| | Guardia Civil | Policía Nacional |
|---|---|---|
| Preguntas de conocimientos | 100 (+5 de reserva) | 100 |
| Opciones por pregunta | 4 | 3 |
| Tiempo | 140 minutos para todo el bloque (ortografía, gramática, conocimientos e inglés) | 50 minutos para conocimientos |
| Penalización | Cada error resta un tercio de acierto | Cada error resta medio acierto |
| Escala | 0 a 100 (mínimo 50) | 0 a 10 |
| Ortografía y gramática | Pruebas propias: 6 errores o más excluyen | Sin prueba propia (la ortografía es un tema del temario) |
| Inglés | Prueba de 20 preguntas que puntúa (mínimo 8 sobre 20) | Requisito A2 acreditado; los niveles superiores suman como mérito |
| Temario | 23 temas de conocimientos | 45 temas en tres bloques: ciencias jurídicas, ciencias sociales y materias técnico-científicas |

### Ejemplo resuelto: la misma actuación en los dos exámenes

Supón (caso hipotético) 70 aciertos, 20 errores y 10 en blanco en 100 preguntas.

- **Guardia Civil:** 70 − 20/3 = **63,33 sobre 100**.
- **Policía Nacional:** (70 − 20/2) × 10 / 100 = **6,0 sobre 10**.

Con tres opciones, cada error pesa más (resta medio acierto en lugar de un tercio). En la Policía Nacional conviene ser más prudente con las preguntas en las que dudas entre varias opciones. Tienes la fórmula de la Guardia Civil explicada en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).

El bloque técnico-científico de la Policía Nacional (sistemas operativos, redes, ciberdelincuencia, seguridad vial…) no tiene equivalente en la Guardia Civil. A cambio, la Guardia Civil exige superar ortografía y gramática como pruebas eliminatorias y puntúa el inglés.

## Psicotécnicos y entrevista

- **Guardia Civil:** psicotécnico de **aptitudes intelectuales** (80 preguntas en 55 minutos, de 0 a 30 puntos, mínimo 12) que **suma a la nota**, más un perfil de personalidad. La entrevista personal es «apto» o «no apto provisional», con revisión.
- **Policía Nacional:** test psicotécnicos de aptitudes de hasta 60 minutos, calificados **apto o no apto**, y una entrevista profesional y personal, también apto o no apto, que se graba.

## Pruebas físicas: en una son apto o no apto, en la otra puntúan

- **Guardia Civil:** carrera de 2.000 metros, circuito de agilidad y coordinación, extensiones de brazos y 50 metros de natación. Son **apto o no apto**: basta con superar las marcas. Las tienes en [las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).
- **Policía Nacional:** circuito de agilidad, dominadas (hombres) o tiempo de suspensión en barra (mujeres) y carrera de 1.000 metros. **Cada ejercicio puntúa de 0 a 10**; la nota de la prueba es la media y hay que llegar al menos a 5. Un cero en cualquier ejercicio elimina.

Algunos extremos de la tabla de la Policía Nacional en 2026:

| Ejercicio | 0 puntos (hombres) | 10 puntos (hombres) | 0 puntos (mujeres) | 10 puntos (mujeres) |
|---|---|---|---|---|
| Circuito de agilidad | 11,7 s o más | 8,2 s o menos | 12,8 s o más | 9,3 s o menos |
| Dominadas / suspensión | 0 a 4 dominadas | 17 | 35 s o menos | 95 s o más |
| 1.000 metros | 3:49 o más | Ver anexo II | 4:46 o más | Ver anexo II |

La calificación final de la oposición en la Policía Nacional es la suma de la nota de conocimientos y la de aptitud física. Es decir: **estar muy en forma te sube puestos en la lista**. En la Guardia Civil, cumplir las marcas es suficiente, y la diferencia se hace en el examen y en los méritos.

## Cuadro médico: dos normas distintas

Cada cuerpo tiene la suya y no se parecen tanto como se cree. Un ejemplo claro es la vista:

| | Guardia Civil | Policía Nacional |
|---|---|---|
| Norma | Orden PCI/155/2019, anexo I | Real Decreto 326/2021 |
| Agudeza visual | Superior a 0,7 en cada ojo, **con o sin corrección** | 0,6 en cada ojo **sin corrección** |
| Límite de dioptrías | Miopía −3, hipermetropía +3, astigmatismo ±2 | No fija límites de dioptrías |
| Cirugía intraocular | Sigue escrita en el cuadro; la exclusión automática de lentes fáquicas fue anulada | Anulada por el Supremo en 2023 |

Con mucha miopía corregida con gafas, la Policía Nacional es más difícil; con poca graduación y buena vista sin gafas, ambas pueden encajar. Lo explicamos en [gafas, miopía y operación de vista](/blog/gafas-miopia-operacion-vista-guardia-civil) y en [lentes intraoculares](/blog/lentes-intraoculares-guardia-civil).

## Formación

- **Guardia Civil:** curso en la Academia de Cabos y Guardias de Baeza (Jaén) y prácticas. En 2026, la incorporación fue el 13 de octubre.
- **Policía Nacional:** curso académico selectivo en la Escuela Nacional de Policía, en régimen de internado salvo excepciones, y un módulo de formación práctica en un puesto de trabajo. La Orden INT/632/2024 fija para el curso entre 6 y 12 meses y para las prácticas, entre 9 y 12.

## Casos prácticos (hipotéticos)

**Caso 1. Raúl, 23 años, ESO y ciclo de grado medio, buen corredor.** No tiene Bachiller: en 2026 solo podía optar a la Guardia Civil. Además, conviene que revise en el apéndice I de la convocatoria si su ciclo le suma méritos en el concurso.

**Caso 2. Carmen, 42 años, con Bachiller y B2 de inglés.** Supera el tope de edad de la Guardia Civil. En la Policía Nacional cumple los requisitos y su B2 le sumaría 1 punto como mérito.

**Caso 3. Iván, 27 años, Bachiller, sin certificado de idiomas, −4 de miopía.** Para la Guardia Civil, la miopía supera el máximo de −3. Para la Policía Nacional necesitaría ver 0,6 sin gafas, algo difícil con −4, y además acreditar un A2. Le conviene una revisión oftalmológica antes de decidir.

## ¿Cuál elijo? Cinco preguntas

1. **¿Qué titulación tienes?** Con solo la ESO, Guardia Civil.
2. **¿Qué edad tienes?** Si cumples 41 o más en el año de la convocatoria, Policía Nacional.
3. **¿Dónde te ves trabajando?** Rural, carretera, mar o montaña: Guardia Civil. Gran ciudad: Policía Nacional.
4. **¿Te atrae o te pesa el carácter militar?** Es real, y se nota desde la academia.
5. **¿Cuál es tu punto fuerte?** El físico puntúa en la Policía Nacional; los méritos, en la Guardia Civil.

Lo que no te recomendamos es preparar las dos a la vez sin un plan: los exámenes, las físicas y los calendarios son distintos, y repartirte suele significar llegar a medias a ambas.

## Errores frecuentes al comparar

- **Creer que el cuadro médico es el mismo.** Las cifras de vista, por ejemplo, son muy distintas.
- **Olvidar el A2 de la Policía Nacional.** Es requisito de admisión, no mérito.
- **Pensar que las físicas se preparan igual.** En una basta la marca; en la otra cada décima puntúa.
- **Comparar notas de corte sin mirar la escala.** La Guardia Civil puntúa sobre 195; la Policía Nacional, con otra escala.

Si eliges la Guardia Civil, tienes el temario, los tests y los simulacros en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Qué es más fácil, Guardia Civil o Policía Nacional?

Ninguna es fácil, y depende de tu perfil. La Guardia Civil pide menos titulación (ESO) y tiene concurso de méritos; la Policía Nacional no tiene edad máxima propia y puntúa las pruebas físicas.

### ¿Se puede entrar en la Policía Nacional solo con la ESO?

No. La convocatoria de 2026 exige el título de Bachiller o equivalente. La Guardia Civil sí admite la ESO.

### ¿Hay edad máxima en la Policía Nacional?

No tiene un tope propio: basta con no exceder la edad de jubilación. En la Guardia Civil, en 2026, no se podía cumplir 41 años durante el año de la convocatoria.

### ¿Las pruebas físicas son iguales?

No. En la Guardia Civil son apto o no apto e incluyen natación; en la Policía Nacional puntúan de 0 a 10, hacen media y no hay natación.

### ¿Necesito inglés para las dos?

En la Guardia Civil el inglés es una prueba del examen (20 preguntas, mínimo 8). En la Policía Nacional necesitas acreditar un A2 de inglés o francés como requisito, y los niveles superiores suman hasta 2 puntos.

### ¿Puedo presentarme a las dos el mismo año?

Ninguna de las dos convocatorias de 2026 lo prohíbe, pero los exámenes, las pruebas y los calendarios son distintos. Si lo haces, prioriza una y planifica la otra como secundaria.',
   '/blog/guardia-civil-o-policia-nacional.jpg', 'Aspirante sentado en una plaza ante un coche de la Guardia Civil y otro de la Policía Nacional', 'publicado', '2026-11-24T06:46:00.000Z', 'acceso-guardia-civil',
   ARRAY['policía nacional', 'comparativa', 'requisitos', 'convocatoria']::text[], '{"title":"Guardia Civil o Policía Nacional: diferencias 2026","description":"Guardia Civil o Policía Nacional: requisitos, edad, titulación, examen, físicas, cuadro médico y formación comparados con las convocatorias de 2026."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('homofonos-ortografia-guardia-civil', 'articulo', 'Haber o a ver, echo o hecho: los homófonos que te pueden excluir', 'Los homófonos suenan igual y se escriben distinto, y en la prueba de ortografía una palabra correcta en el sitio equivocado es falta. Las parejas que más se confunden, un truco de sustitución para cada una y un ejercicio resuelto.', 'En la prueba de ortografía, una palabra bien escrita pero **en el lugar equivocado** es una falta. Escribir *echo* donde va *hecho* o *sino* donde va *si no* cuenta igual que una tilde olvidada. **Respuesta corta:** casi todos los homófonos se resuelven con un truco de sustitución: cambia la palabra por otra que signifique lo mismo y comprueba si la frase sigue funcionando.

Recuerda las reglas de la prueba (base 6.1.1.a de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)): cinco frases con cuatro palabras o expresiones subrayadas; error es tanto dejar pasar una falta como marcar una palabra correcta, y con **seis errores o más** quedas excluido. Si aún no los has visto, repasa [las tildes](/blog/tildes-reglas-oposicion-guardia-civil) y [las palabras trampa con B/V, G/J y H](/blog/palabras-trampa-ortografia-guardia-civil).

Las reglas siguen la *Ortografía* y el *Diccionario panhispánico de dudas* de la RAE y la ASALE. Los ejemplos y el ejercicio son nuestros.

## Haber / a ver

- **Haber** es un verbo («debe **haber** algún error», «va a **haber** tormenta») o un sustantivo («tiene tres medallas en su **haber**»).
- **A ver** es la preposición *a* más el verbo *ver* («vamos **a ver** la película», «**a ver** qué pasa»).

**Truco:** si puedes sustituirlo por *mirar* o *comprobar*, es **a ver**: «a ver (comprobemos) si llega». Si puedes cambiarlo por *existir* o es parte de un tiempo compuesto, es **haber**: «va a haber (existir) problemas».

## Echo / hecho (y desecho / deshecho)

- **Echo** es del verbo *echar*: «lo **echo** de menos», «**echo** sal a la sopa».
- **Hecho** es participio de *hacer* o sustantivo: «lo he **hecho**», «un **hecho** probado», «de **hecho**».

**Truco:** si puedes cambiarlo por *tiro* o *pongo*, es **echo**; si encaja *realizado* o *suceso*, es **hecho**.

La misma lógica vale para **desecho** (residuo, de *desechar*: «desechos tóxicos») y **deshecho** (de *deshacer*: «la cama está deshecha»).

## Hay / ahí / ay

- **Hay**: verbo *haber*. «**Hay** un problema».
- **Ahí**: adverbio de lugar. «Déjalo **ahí**».
- **Ay**: interjección de dolor o pena. «¡**Ay**, qué daño!».

**Truco:** si puedes poner *allí*, es **ahí**; si puedes poner *existe*, es **hay**.

## Ha / a / ah

- **Ha**: verbo *haber*. «**Ha** venido».
- **A**: preposición. «Voy **a** casa».
- **Ah**: interjección. «¡**Ah**, ya lo entiendo!».

**Truco:** si puedes pasarlo a plural (*han*), es **ha**: «ha venido» → «han venido». Con la preposición no funciona: «voy a casa» → «voy *han* casa».

## Haya / halla / aya y otras parejas del yeísmo

En la mayor parte de España se pronuncian igual la *ll* y la *y*, y eso crea homófonos:

| Palabra | Qué es | Ejemplo |
|---|---|---|
| **haya** | verbo *haber* o árbol | «Ojalá **haya** plazas»; «un bosque de **hayas**» |
| **halla** | verbo *hallar* (encontrar) | «Se **halla** en Madrid» |
| **aya** | persona que cuidaba a los niños | «El **aya** del príncipe» |
| **vaya** | verbo *ir* o interjección | «Que te **vaya** bien» |
| **valla** | cerca, vallado | «Saltó la **valla**» |
| **baya** | fruto carnoso | «Las **bayas** del arbusto» |
| **cayó** | verbo *caer* | «Se **cayó** de la moto» |
| **calló** | verbo *callar* | «Se **calló** de golpe» |
| **rallar** | desmenuzar con el rallador | «**Rallar** queso» |
| **rayar** | hacer rayas | «**Rayar** el coche» |

## Porque / por que / porqué / por qué

Es el grupo más difícil, y conviene dominarlo entero.

| Forma | Qué es | Ejemplo |
|---|---|---|
| **porque** | Conjunción causal | «Estudio **porque** quiero aprobar» |
| **por que** | Preposición *por* + relativo *que* (equivale a *por el cual*, *por la que*…) | «Esa es la razón **por (la) que** dimitió» |
| **por que** | Preposición *por* (exigida por el verbo) + conjunción *que* | «Optaron **por que** se repitiera la prueba» (*optar por algo*) |
| **porqué** | Sustantivo: *el motivo*. Lleva determinante y tiene plural | «No entiendo **el porqué** de su decisión»; «los **porqués**» |
| **por qué** | Interrogativo o exclamativo, en preguntas directas o indirectas | «¿**Por qué** vienes?»; «No sé **por qué** vino» |

**Trucos:**

- Si puedes poner delante *el* y sustituirlo por *motivo*, es **porqué**: «el porqué (el motivo) de su decisión».
- Si hay pregunta, aunque no lleve signos, es **por qué**: «Dime por qué te vas».
- Si puedes cambiarlo por *por el cual* o *por la que*, es **por que**.
- Si contesta a una pregunta o da una causa, es **porque**: «¿Por qué no viniste? **Porque** estaba de guardia».

## Sino / si no

- **Sino** es una conjunción que contrapone una idea a otra negada: «No es rojo, **sino** azul». Cuando lo que sigue lleva verbo conjugado, se usa **sino que**: «No lo dijo, **sino que** lo escribió». También es un sustantivo, *destino*: «Su **sino** era ese».
- **Si no** es la conjunción condicional *si* seguida de *no*: «**Si no** estudias, no apruebas».

**Truco:** si puedes meter una palabra entre las dos partes («si **tú** no estudias») o cambiar la frase a afirmativa («si estudias»), es **si no**. Si equivale a *pero sí*, es **sino**.

## Conque / con que / con qué

- **Conque**: conjunción consecutiva, equivale a *así que*. «Ya lo sabes, **conque** actúa».
- **Con que**: preposición *con* + relativo *que* («la llave **con que** abrí» = con la que) o + conjunción *que* («basta **con que** lo digas»).
- **Con qué**: interrogativo o exclamativo. «¿**Con qué** lo pagaste?»; «No sé **con qué** escribir».

## También / tan bien; tampoco / tan poco

- **También** expresa afirmación o adición: «Yo **también** voy».
- **Tan bien**: adverbio *tan* + adverbio *bien*; se opone a *tan mal*. «Lo hace **tan bien** que gana siempre».
- **Tampoco** añade una negación a otra: «Yo **tampoco** voy».
- **Tan poco**: *tan* + *poco*; se opone a *tanto*. «Queda **tan poco** tiempo…».

**Truco:** si puedes cambiarlo por *tan mal* o *tanto*, va separado.

## Asimismo / así mismo / a sí mismo

- **Asimismo** significa *también* o *además*: «**Asimismo**, se recuerda que…». Con este sentido se admite también la grafía **así mismo**.
- **Así mismo** también puede significar *de esa misma manera*: «Hazlo **así mismo**, como te lo he explicado».
- **A sí mismo** es la preposición *a* + el pronombre *sí* + *mismo*: «Se lo reprochó **a sí mismo**». Se reconoce porque puede variar: *a sí misma*, *a sí mismos*.

## Aparte / a parte

- **Aparte** es adverbio o adjetivo: «Ponlo **aparte**», «punto y **aparte**», «es un caso **aparte**». **Aparte de** equivale a *además de* o *excepto*: «**Aparte de** eso, todo bien».
- **A parte** es la preposición *a* + el sustantivo *parte*: «No llegaremos **a parte** alguna».

## Otras parejas que conviene repasar

| Junto | Separado |
|---|---|
| **sobretodo** (prenda de abrigo) | **sobre todo** (especialmente): «Repasa, **sobre todo**, los plazos» |
| **demás** (los otros): «los **demás** opositores» | **de más** (de sobra): «Hay sillas **de más**» |
| **entorno** (ambiente, alrededores): «el **entorno** familiar» | **en torno a** (alrededor de, aproximadamente): «**en torno a** las diez» |
| **mediodía** (las doce): «Comemos a **mediodía**» | **medio día** (la mitad de un día): «Trabajo **medio día**» |
| **porvenir** (el futuro): «Pensar en el **porvenir**» | **por venir** (que vendrá): «Lo mejor está **por venir**» |

Y otras parejas con h o sin ella: **hola** (saludo) / **ola** (del mar); **hora** (tiempo) / **ora** (de *orar*); **honda** (profunda) / **onda** (del agua o del sonido); **hasta** (preposición) / **asta** (palo de la bandera, cuerno); **errar** (equivocarse) / **herrar** (poner herraduras). Las parejas de B y V (*tubo/tuvo*, *grabar/gravar*, *hierba/hierva*) las tienes en el artículo de [palabras trampa](/blog/palabras-trampa-ortografia-guardia-civil).

## Ejercicio resuelto (propio, con el formato del examen)

Las palabras subrayadas en el examen aquí van en **negrita**. Decide cuáles tienen falta.

1. «**A ver** si **hay** suerte y el examen **ha** salido **echo** a medida».
2. «No sé **porqué** no vino; **sino** viene mañana, **tampoco** pasa nada, **conque** tranquilo».
3. «Está **ahí**, **sobretodo** cuando **hay** partido, y **a parte** de eso no sale».
4. «Me **echo** a un lado para que **haya** sitio; **también** lo hice **tan bien** como pude».
5. «Mañana va **a ver** un control **entorno** a la plaza; para los **demás** agentes, basta **con que** les avisen».

**Soluciones:**

1. **Una falta:** *hecho* (participio de *hacer*: «hecho a medida»). *A ver*, *hay* y *ha* son correctas.
2. **Dos faltas:** *por qué* (pregunta indirecta) y *si no* (condicional: «si no viene»). *Tampoco* y *conque* (= así que) son correctas.
3. **Dos faltas:** *sobre todo* (= especialmente) y *aparte de* (= además de). *Ahí* y *hay* son correctas.
4. **Ninguna falta.** *Echo* (de *echar*), *haya* (de *haber*), *también* y *tan bien* (opuesto a *tan mal*) son correctas.
5. **Dos faltas:** *haber* («va a haber» = va a existir) y *en torno a*. *Demás* y *con que* son correctas.

Son siete faltas en veinte palabras. Observa la frase 4: está bien entera, y quien marca *tan bien* «por si acaso» suma un error.

## Errores frecuentes

- **Escribir *porqué* en preguntas indirectas:** «No sé porqué…» es falta; va separado y con tilde.
- **Escribir *sino* en condicionales:** «sino estudias…» es falta.
- **Confundir *haber* y *a ver*** en «va a haber», «tiene que haber».
- **Unir *sobre todo* y *en torno*** cuando no son sustantivos.
- **Marcar como falta formas correctas** que suenan raras, como *conque* o *así mismo* con el sentido de *también*.

## Checklist de repaso

- [ ] Aplico el truco de *mirar* para *a ver* y el de *han* para *ha*.
- [ ] Distingo las cuatro formas de *porque* con sus trucos.
- [ ] Sé cuándo va *sino*, *sino que* y *si no*.
- [ ] Distingo *conque*, *con que* y *con qué*.
- [ ] Sé que *asimismo* y *así mismo* son válidas con el sentido de *también*.
- [ ] Repaso las parejas del yeísmo: *haya/halla*, *vaya/valla/baya*, *cayó/calló*.
- [ ] Repaso *sobre todo*, *de más*, *en torno a*, *aparte*.

## Cómo estudiarlos

1. **No memorices pares sueltos:** aprende cada forma dentro de una frase.
2. **Aplica siempre el truco de sustitución** antes de decidir.
3. **Apunta tus fallos** de los tests en un cuaderno y repásalos cada semana.
4. **Lee la frase entera en voz alta:** muchos homófonos se resuelven por el sentido.

Encaja este repaso en tu horario como te contamos en [cómo preparar la oposición trabajando](/blog/plan-estudio-guardia-civil-trabajando). Y si quieres practicar con corrección explicada, en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) tienes ejercicios con el formato real. Tienes el contexto de la prueba en [ortografía y gramática en el examen](/blog/ortografia-gramatica-examen-guardia-civil).

## Preguntas frecuentes

### ¿Cuántos homófonos pueden aparecer en la prueba?

La convocatoria no lo detalla. Se examinan cinco frases con cuatro palabras o expresiones subrayadas cada una, y cualquier tipo de falta puede aparecer.

### ¿«A ver» y «haber» son lo mismo?

No. *A ver* es preposición más el verbo *ver* (equivale a *mirar* o *comprobar*); *haber* es un verbo o un sustantivo.

### ¿Cuál es la diferencia entre «porque» y «por qué»?

*Porque* da una causa o una respuesta; *por qué* introduce una pregunta, directa o indirecta.

### ¿Es correcto «así mismo» separado?

Sí, con el sentido de *también* se admiten *asimismo* y *así mismo*. Lo que no debe confundirse es *a sí mismo* («se lo dijo a sí mismo»).

### ¿Cuándo se escribe «sino que»?

Cuando lo que se contrapone lleva verbo conjugado: «No lo leyó, sino que lo memorizó».

### ¿Cuántos errores se permiten?

Hasta cinco. Con seis o más respuestas erróneas quedas excluido.',
   '/blog/homofonos-ortografia-guardia-civil.jpg', 'Mano colocando fichas con parejas de palabras en dos columnas sobre una mesa de madera', 'publicado', '2026-11-20T06:38:00.000Z', 'acceso-guardia-civil',
   ARRAY['ortografía', 'homófonos', 'porque', 'haber']::text[], '{"title":"Homófonos: haber/a ver, echo/hecho, porque y sino","description":"Homófonos de la prueba de ortografía de la Guardia Civil: haber/a ver, echo/hecho, porque/por qué, sino/si no, asimismo y más, con trucos y ejercicio."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('lentes-intraoculares-guardia-civil', 'articulo', 'Lentes intraoculares y Guardia Civil: qué cambió con el Supremo', 'En 2023 el Tribunal Supremo anuló la frase del cuadro médico que excluía siempre las lentes fáquicas. Qué anuló exactamente, qué sigue escrito en la norma, en qué se diferencia de la Policía Nacional y qué hacer si llevas una lente implantada.', 'Cada vez más gente corrige la miopía con una lente implantada dentro del ojo en lugar de con láser. Y muchos descubren después que el cuadro médico de la Guardia Civil hablaba de ellas. La situación cambió en 2023 con una sentencia del Tribunal Supremo, pero **no tanto como se dice en algunos foros**.

La respuesta corta: **el Supremo anuló la frase «En ningún caso se admitirán lentes fáquicas», y la convocatoria de 2026 aplica esa sentencia. Pero el cuadro sigue mencionando la cirugía intraocular y las lentes intraoculares, así que nadie te garantiza el apto: tu caso se valora y debe motivarse de forma individual.**

## Primero: ¿de qué lentes hablamos?

| Tipo | Qué es | Cuándo se usa |
|---|---|---|
| **Lente fáquica** (por ejemplo, ICL) | Se implanta dentro del ojo **sin quitar el cristalino** | Sobre todo, miopías altas o córneas en las que el láser no es buena opción |
| **Lente pseudofáquica** | **Sustituye al cristalino** | Operación de cataratas o cirugía del cristalino transparente |

Las dos son «intraoculares», pero el cuadro médico las trata en apartados distintos, y eso es lo que importa. Y ninguna de las dos es lo mismo que el láser corneal (LASIK, PRK), que actúa sobre la superficie del ojo y no figura como causa de exclusión: lo explicamos en [gafas, miopía y operación de vista](/blog/gafas-miopia-operacion-vista-guardia-civil).

## Qué decía el cuadro médico

El cuadro de exclusiones de la Guardia Civil (anexo I de la Orden PCI/155/2019) menciona las lentes y la cirugía dentro del ojo en tres apartados de su letra J:

| Apartado | Texto |
|---|---|
| J.2 | «Pérdida o atrofia de un globo ocular. Cuerpos extraños intraoculares y/o intraorbitarios. Cualquier tipo de cirugía intraocular» |
| J.9 | «[…] Queratocono. En ningún caso se admitirán lentes fáquicas» |
| J.12 | «Cristalino: […] Afaquia, Pseudoafaquia. Cualquier tipo de lente intraocular» |

## Qué anuló el Supremo

La sentencia de la Sala Tercera del Tribunal Supremo de 21 de febrero de 2023 (recurso de casación 4551/2021), publicada en el BOE el 29 de mayo de 2023 ([BOE-A-2023-12417](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-12417)), estimó el recurso de un aspirante y, en su fallo:

1. Anuló la sentencia del Tribunal Superior de Justicia de Madrid que le había dado la razón a la Administración.
2. Anuló las resoluciones que habían excluido a ese aspirante.
3. **Declaró nula la frase «En ningún caso se admitirán lentes fáquicas»** del apartado J.9, y ordenó publicarlo en el BOE.

El texto publicado en el BOE es el fallo, que se remite a los fundamentos de la sentencia para su alcance. Lo que se puede afirmar con seguridad es el efecto: **la exclusión automática y sin excepciones de las lentes fáquicas ya no existe**.

La convocatoria de 2026 lo recoge expresamente: en su base 6.1.3.c), el reconocimiento médico se hace con el cuadro de la Orden PCI/155/2019 «y de conformidad con lo dispuesto por la Sentencia de 21 de febrero de 2023».

## Lo que sigue escrito en la norma

Aquí está el matiz que muchos pasan por alto. El fallo anula **solo** esa frase del J.9. En el [texto consolidado del BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291), los apartados **J.2 («Cualquier tipo de cirugía intraocular»)** y **J.12 («Cualquier tipo de lente intraocular»)** siguen apareciendo.

¿Qué significa en la práctica? Que la norma ya no permite excluir a nadie con el argumento de que «en ningún caso» se admiten lentes fáquicas, pero tampoco te garantiza el apto. Tu caso se valorará de forma individual, como exige la introducción del propio cuadro, que obliga a motivar cada exclusión con un informe técnico del servicio médico y a atender a la evidencia científica del momento.

### Resumen por situaciones

| Tu situación | Qué dice la norma hoy | Grado de incertidumbre |
|---|---|---|
| Lente fáquica (ICL o similar) | Ya no hay exclusión automática; siguen escritos J.2 y J.12 | Alto: depende de la valoración individual |
| Lente pseudofáquica (sustituye al cristalino) | J.12 menciona afaquia, pseudoafaquia y cualquier lente intraocular; la sentencia no se refiere a ellas | Alto, con menos apoyo en la sentencia |
| Láser corneal (LASIK, PRK) | No figura como causa de exclusión; se valora el resultado | Bajo, si la agudeza, la graduación y la córnea están bien |
| Sin cirugía, con miopía alta | Supera el máximo de −3 dioptrías | Excluye mientras no cambie la graduación |

## En la Policía Nacional fue distinto

Si comparas con la Policía Nacional, verás otra situación. Allí, una sentencia del Supremo de 16 de febrero de 2023 ([BOE-A-2023-6376](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-6376)) anuló dos incisos de su cuadro médico (Real Decreto 326/2021):

- «Cuerpos extraños intraoculares. Cualquier tipo de cirugía intraocular», y
- el apartado sobre técnicas de corrección refractiva, que exigía 60 días desde la cirugía y terminaba con «No se admitirán lentes fáquicas».

Su convocatoria de 2026 dice expresamente que esos puntos no se aplican. En la Guardia Civil, en cambio, solo se anuló la frase de las lentes fáquicas y la referencia a la cirugía intraocular sigue escrita. Son normas y sentencias diferentes, así que **no extrapoles lo que leas de un cuerpo al otro**.

| | Guardia Civil | Policía Nacional |
|---|---|---|
| Norma | Orden PCI/155/2019, anexo I | Real Decreto 326/2021 |
| Sentencia | TS 21-2-2023 | TS 16-2-2023 |
| Qué se anuló | La frase «En ningún caso se admitirán lentes fáquicas» | La cirugía intraocular como exclusión y el apartado de corrección refractiva, incluidas las lentes fáquicas |
| ¿Sigue escrita la cirugía intraocular? | Sí (J.2) | No se aplica |

## Caso práctico (hipotético)

Elena tiene −7 de miopía. A los 24 años se implanta una lente fáquica en cada ojo y ahora ve 1,0 sin gafas, con una graduación residual de −0,25. Se presenta a la oposición.

- **Agudeza y graduación:** cumple (más de 0,7 en cada ojo y graduación dentro de los máximos).
- **Lente fáquica:** ya no puede excluirse con la frase anulada, pero el servicio médico valorará su caso con los apartados que siguen escritos.
- **Qué le conviene llevar:** informe de la cirugía con tipo y modelo de lente, fecha, revisiones posteriores (agudeza, presión intraocular, recuento endotelial y estado del cristalino si su oftalmólogo lo considera) y un informe funcional que explique que no le limita.
- **Si la declaran «no apto»:** puede pedir la revisión ante la Junta Médica de Revisión en el plazo de la convocatoria (no superior a 3 días hábiles en 2026) y, después, valorar con un abogado los recursos que procedan.

## Si llevas una lente implantada: qué hacer

1. **Comprueba el resto de requisitos de la vista.** La lente no te exime de cumplir la agudeza visual (más de 0,7 en cada ojo) ni los límites de graduación.
2. **Reúne la documentación.** Informe de la cirugía, tipo y modelo de lente, fecha, y revisiones posteriores con agudeza visual, estabilidad y estado del ojo.
3. **Pide a tu oftalmólogo un informe funcional.** Lo que pesa no es el nombre de la técnica, sino si te limita para el servicio y si hay riesgos previsibles.
4. **Lleva la referencia de la sentencia** (BOE-A-2023-12417) y la base 6.1.3.c) de la convocatoria, por si necesitas invocarlas en una revisión.
5. **Si te excluyen, revisa los plazos.** La revisión del «no apto» tiene un plazo muy corto. Si crees que no se ha valorado tu caso de forma individual, consulta con un abogado especializado en oposiciones.

## Si todavía no te has operado

Si tienes miopía alta y estás pensando en operarte antes de la oposición, coméntale a tu oftalmólogo que vas a pasar el reconocimiento de la Guardia Civil y enséñale el apartado J del cuadro médico. La técnica más adecuada para tu ojo es una decisión médica, pero conviene que la tome sabiendo qué se valorará y con tiempo suficiente para que la vista se estabilice antes del reconocimiento.

Tienes el resto de exclusiones en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil) y cómo es el día del reconocimiento en [entrevista y reconocimiento médico](/blog/entrevista-reconocimiento-medico-guardia-civil).

## Errores frecuentes

- **Creer que la sentencia «legaliza» todas las lentes intraoculares.** Solo anuló una frase del J.9.
- **Creer que nada ha cambiado.** La exclusión automática de las lentes fáquicas ya no existe y la convocatoria lo reconoce.
- **Aplicar a la Guardia Civil lo que se lee sobre la Policía Nacional.** Allí se anuló más.
- **Ir al reconocimiento sin documentación.** La valoración individual se apoya en informes.
- **Dejar pasar el plazo de revisión** del «no apto».

## Checklist

- [ ] Sé qué tipo de lente llevo (fáquica o pseudofáquica) y su modelo.
- [ ] Mi agudeza supera 0,7 en cada ojo y mi graduación está dentro de los máximos.
- [ ] Tengo el informe de la cirugía y revisiones recientes.
- [ ] Tengo un informe funcional del oftalmólogo.
- [ ] Conozco el plazo de revisión del «no apto».
- [ ] He repasado el resto de [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil).

Si quieres centrarte en lo que sí depende de ti, el examen, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Puedo ser Guardia Civil con lentes intraoculares?

La exclusión automática de las lentes fáquicas fue anulada por el Tribunal Supremo en 2023, y la convocatoria de 2026 aplica esa sentencia. Tu caso se valora de forma individual, y debes cumplir igualmente la agudeza visual y los límites de graduación.

### ¿Qué anuló exactamente la sentencia del Supremo?

La frase «En ningún caso se admitirán lentes fáquicas» del apartado J.9 del cuadro médico de la Orden PCI/155/2019.

### ¿Siguen apareciendo las lentes intraoculares en el cuadro médico?

Sí. En el texto consolidado siguen los apartados J.2 («Cualquier tipo de cirugía intraocular») y J.12 («Cualquier tipo de lente intraocular»). Por eso conviene llevar bien documentado tu caso.

### ¿Y si llevo una lente por una operación de cataratas?

Es una lente pseudofáquica, que el apartado J.12 menciona junto a la pseudoafaquia. La sentencia de 2023 se refiere a las lentes fáquicas, así que tu caso tiene menos apoyo en ella. Consúltalo con tu oftalmólogo y documéntalo bien.

### ¿Es lo mismo en la Policía Nacional?

No. La Policía Nacional tiene su propio cuadro médico y otra sentencia del Supremo, de 16 de febrero de 2023, que anuló también la cirugía intraocular como causa de exclusión.

### ¿El láser excluye igual que la lente?

No. La cirugía refractiva con láser en la córnea no figura como causa de exclusión en el cuadro de la Guardia Civil: se valora el resultado.',
   '/blog/lentes-intraoculares-guardia-civil.jpg', 'Oftalmólogo examinando el ojo de una aspirante con una lámpara de hendidura', 'publicado', '2026-11-23T06:29:00.000Z', 'acceso-guardia-civil',
   ARRAY['lentes intraoculares', 'vista', 'cuadro médico', 'tribunal supremo']::text[], '{"title":"Lentes intraoculares Guardia Civil: qué dijo el Supremo","description":"¿Excluyen las lentes intraoculares o fáquicas en la Guardia Civil? Qué anuló el Supremo en 2023, qué sigue en el cuadro médico y qué hacer."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('natacion-50-metros-guardia-civil', 'articulo', 'Natación 50 metros Guardia Civil: aprender a nadar para la oposición desde cero', 'Cincuenta metros estilo libre, un solo intento y 70 segundos para ellos y 81 para ellas (menores de 35). Qué dice la convocatoria, cómo repartir el ritmo y un plan por fases para llegar desde cero.', 'La natación es la prueba que más ansiedad genera entre los aspirantes que no vienen del deporte. La respuesta corta: hay que nadar **50 metros estilo libre en piscina**, con **un solo intento**, en **70 segundos o menos** si eres hombre menor de 35 años y **81 segundos o menos** si eres mujer de esa edad. No es tanto una cuestión de fuerza como de **técnica, respiración y perder el miedo al agua**, y eso se construye con semanas de práctica, no en el último mes.

## Las marcas oficiales

La convocatoria de 2026 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), apéndice II) llama a esta prueba «soltura acuática» y pide completar los 50 metros en un tiempo **no superior** a:

| | Menor de 35 años | De 35 a 39 años | 40 años o más |
|---|---|---|---|
| Hombres | 70 s | 71 s | 73 s |
| Mujeres | 81 s | 83 s | 88 s |

Se califica como apto o no apto, igual que las otras tres pruebas físicas. Si tienes dudas sobre en qué tramo de edad entras, recuerda cómo se cuenta la edad en esta oposición: lo explicamos en [la edad máxima para ser guardia civil](/blog/edad-maxima-guardia-civil).

## Las reglas, una a una

El texto del apéndice II es breve, y conviene leerlo con lupa:

- **Estilo libre.** No se impone un estilo. En natación «libre» significa que eliges tú; casi todo el mundo nada crol porque es el más rápido, pero nada te impide nadar a braza si es lo que dominas y te da la marca.
- **En piscina.** La convocatoria no fija la longitud del vaso, así que puede tocarte una piscina de 25 metros (con un viraje) o de 50 (sin viraje).
- **Sin agarrarte a la calle.** «No se permitirá el contacto con cualquiera de los elementos que delimiten la calle, salvo el imprescindible para realizar el viraje cuando éste sea necesario.» Ni corcheras ni bordes para descansar o impulsarte; solo el contacto del viraje.
- **Un único intento.** A diferencia del circuito o las extensiones, aquí no hay segunda oportunidad.

Lo que la convocatoria **no** detalla (tipo de salida, material permitido como gafas o gorro) lo concretará el Tribunal de Selección en sus instrucciones. No des nada por supuesto: lee lo que publique en la [web de ingreso de la Guardia Civil](https://web.guardiacivil.es/es/tramites/ingresos/ingresocuerpo/) y, el día de la prueba, escucha las indicaciones.

Además, la base 6.2 recuerda dos cosas que afectan a todas las físicas: hay **un único llamamiento** (si no estás cuando empieza tu turno, quedas excluido) y, una vez empiezas las pruebas de tu fecha, debes hacerlas todas en el orden fijado. Según la base 8.1.1, quien no supera un ejercicio queda excluido en ese momento.

## ¿Es una marca difícil?

Depende de tu punto de partida:

- **Si nadas con soltura**, 70 u 81 segundos dejan margen para nadar a ritmo cómodo.
- **Si sabes nadar pero te ahogas a los 25 metros**, el problema es la respiración y la eficiencia, no la fuerza.
- **Si no sabes nadar**, necesitas empezar ya y, a ser posible, con un monitor.

La dificultad real casi nunca está en la velocidad punta, sino en **no llegar asfixiado a mitad de recorrido**. Quien sale a tope pierde la técnica en el segundo largo y se pasa de tiempo.

## El ritmo, en números

Repartir bien el esfuerzo es la mitad de la prueba. Así queda la marca dividida por largos de 25 metros:

| Marca | Por cada 25 m | Si la piscina es de 25 m |
|---|---|---|
| 70 s (hombres <35) | 35 s | Primer largo en unos 33-34 s, viraje y segundo largo sin bajar el ritmo |
| 73 s (hombres ≥40) | 36,5 s | Margen algo mayor |
| 81 s (mujeres <35) | 40,5 s | Primer largo en unos 38-39 s |
| 88 s (mujeres ≥40) | 44 s | Margen algo mayor |

**Ejemplo resuelto (caso hipotético).** Marta, 28 años, nada el primer largo en 36 segundos y el segundo en 47 porque sale demasiado fuerte: total, 83 segundos, no apta. En el siguiente entrenamiento sale controlada, 39 y 41 segundos: 80 segundos, apta. Nadó más despacio al principio y llegó antes. Es el error más habitual y el más fácil de corregir.

Entrena con un objetivo de **3 a 5 segundos por debajo de tu marca**. El día de la prueba los nervios, el agua desconocida y la falta de calentamiento suelen costar algo de tiempo.

## Cómo aprender desde cero: un plan por fases

Es un esquema general y orientativo; cada persona avanza a un ritmo distinto. Si no sabes nadar, lo ideal es apuntarte a un cursillo o contar con un monitor, aunque sean pocas sesiones: corregir un vicio a tiempo ahorra meses.

### Fase 1: confianza en el agua

- Meter la cara y **soltar el aire por la nariz y la boca** debajo del agua (burbujas), y tomar aire fuera.
- **Flotación** boca abajo y boca arriba.
- **Deslizamientos**: impulso en la pared y avanzar estirado, como una flecha, hasta pararse.

No pases a la fase 2 hasta que puedas deslizarte con la cara en el agua sin tensión. Si el agua te impone, quédate aquí el tiempo que haga falta.

### Fase 2: técnica de crol por partes

- **Patada** con tabla: desde la cadera, piernas casi estiradas, tobillos sueltos.
- **Brazada** con pull buoy (el flotador entre las piernas): entrar la mano por delante del hombro, tirar hacia atrás por debajo del cuerpo y recobrar por fuera.
- **Respiración lateral**: girar la cabeza con el cuerpo, sin levantarla. Un ojo en el agua y otro fuera.

### Fase 3: continuidad

Nadar **25 metros sin parar** con buena técnica; luego 50; luego varios 50 seguidos con descanso corto. Aquí aparece la sensación de ahogo: se resuelve soltando todo el aire debajo del agua, no aguantándolo.

### Fase 4: la marca

Series de 25 y 50 metros al ritmo de la prueba, con recuperaciones largas, y siempre cronometradas.

**Una sesión tipo de la fase 4** (orientativa):

1. Calentamiento: 200 metros suaves combinando estilos.
2. Técnica: 4 × 25 metros de ejercicios (patada con tabla, brazada con pull buoy).
3. Principal: 6 × 25 metros a tu ritmo objetivo, con 45-60 segundos de descanso; después, 2 × 50 metros a ritmo de prueba con descanso amplio.
4. Vuelta a la calma: 100 metros muy suaves.

Ajusta el volumen a tu nivel. Si en las primeras semanas 200 metros de calentamiento ya te cansan, redúcelo: el objetivo es nadar bien, no acumular metros.

## El viraje y la salida

Si la piscina es de 25 metros habrá un viraje. Tienes dos opciones:

- **Viraje abierto**: tocas la pared con la mano, recoges las piernas, giras y te impulsas. Es más lento pero fácil y seguro, y te deja respirar.
- **Viraje de voltereta**: más rápido, pero si no lo dominas puedes tragar agua y perder más de lo que ganas.

Para la mayoría de los opositores, **un viraje abierto bien hecho es la mejor opción**. Lo importante es aprovechar el impulso en la pared y deslizarte estirado unos metros antes de volver a nadar.

En cuanto a la salida, practica tanto desde dentro del agua como desde el borde, porque la convocatoria no especifica cuál será. Si nunca has saltado de cabeza, no lo improvises el día de la prueba.

## Errores frecuentes

- **Salir muy rápido.** Los primeros 25 metros deciden el resto.
- **Aguantar la respiración.** Agota en segundos. Respira de forma regular, cada dos o tres brazadas, y suelta el aire bajo el agua.
- **Levantar la cabeza para respirar.** Hunde las piernas y frena. Gira la cabeza, no la levantes.
- **Patada excesiva.** Gasta energía y aporta poco avance en una prueba corta; la brazada es la que te mueve.
- **No practicar el viraje.** Si lo improvisas, puedes perder varios segundos o rozar la corchera.
- **Entrenar sin cronómetro.** Sin medir, no sabes si vas bien. Pide a alguien que te cronometre o usa el reloj de la piscina.
- **Dejar la natación para el final** porque «solo son 50 metros». Es la prueba que más tiempo de aprendizaje exige si partes de cero.

## Cómo encajarla con las otras pruebas

La natación combina bien con el resto del plan: descarga las piernas tras la carrera y trabaja hombros y espalda. Dos sesiones semanales en piscina suelen ser un buen punto de partida para quien está aprendiendo; luego puedes mantenerla con una. Si estás preparando también la [carrera de 2.000 metros](/blog/carrera-2000-metros-guardia-civil) o las [extensiones de brazos](/blog/extensiones-de-brazos-guardia-civil), evita meter la sesión de natación intensa justo después de un entrenamiento fuerte de brazos: llegarás con los hombros cargados.

Tienes las cuatro pruebas con sus marcas en [las pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## Checklist antes del día de la prueba

- [ ] Nado 50 metros seguidos sin agarrarme a nada.
- [ ] He hecho al menos varias series de 50 metros por debajo de mi marca en las últimas semanas.
- [ ] Domino un viraje (abierto o de voltereta) sin tocar la corchera.
- [ ] He practicado la salida desde dentro del agua y desde el borde.
- [ ] Llevo atuendo deportivo adecuado, como pide la convocatoria, y he revisado las instrucciones del Tribunal sobre el material.
- [ ] Tengo el certificado médico en regla y lo llevo en la mochila.
- [ ] Llevo el DNI: puedes tener que identificarte en cualquier momento.

## El certificado médico, imprescindible

Antes de las pruebas físicas hay que entregar al Tribunal un **certificado médico oficial expedido dentro de los 20 días anteriores**, que acredite expresamente que estás capacitado para los cuatro ejercicios, incluida la «soltura acuática» de 50 metros. Sin él, quedas excluido. Lo desarrollamos en un artículo propio que publicaremos al día siguiente de este.

Si estás valorando la oposición y aún no conoces todos los requisitos, empieza por [los requisitos para ser guardia civil](/blog/requisitos-guardia-civil). Y si quieres preparar el examen y las físicas con un plan ordenado, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto hay que tardar en los 50 metros de natación de la Guardia Civil?

En la convocatoria de 2026, como máximo 70 segundos los hombres menores de 35 años (71 de 35 a 39 y 73 desde los 40) y 81 segundos las mujeres menores de 35 (83 y 88 en los otros tramos).

### ¿Qué estilo hay que nadar?

Estilo libre: eliges tú. Lo habitual es el crol porque es el más rápido, pero también puedes nadar a braza si con ella haces la marca.

### ¿Cuántos intentos hay en la natación?

Uno solo. Por eso conviene entrenar con margen respecto a tu marca.

### ¿Puedo agarrarme a la corchera o al borde?

No. Solo se permite el contacto imprescindible para el viraje, si la piscina lo requiere.

### ¿La piscina es de 25 o de 50 metros?

La convocatoria no lo especifica. Entrena en ambas si puedes, y sobre todo practica el viraje por si te toca una de 25.

### ¿Se puede aprender a nadar desde cero a tiempo?

Depende de cuánto tiempo tengas y de tu punto de partida. Si no sabes nadar, empieza cuanto antes y con un monitor: la fase de confianza en el agua es la que más varía de una persona a otra.

### ¿Puedo usar gafas de natación o gorro?

La convocatoria no lo regula. Atiende a las instrucciones que publique el Tribunal de Selección y a las que dé en la propia prueba.',
   '/blog/natacion-50-metros-guardia-civil.jpg', 'Nadador en plena brazada de crol en una piscina cubierta', 'publicado', '2026-11-18T06:04:00.000Z', 'acceso-guardia-civil',
   ARRAY['pruebas físicas', 'natación', '50 metros', 'entrenamiento']::text[], '{"title":"Natación Guardia Civil: marcas de 50 m y plan desde cero","description":"Marcas de los 50 m de natación de la Guardia Civil por sexo y edad, reglas de la prueba, ritmo por largo y un plan por fases para prepararla desde cero."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

