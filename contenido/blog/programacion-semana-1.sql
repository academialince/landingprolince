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
   '/blog/altura-minima-guardia-civil.jpg', 'Aspirante atándose las zapatillas en una pista de atletismo al amanecer', 'publicado', '2026-11-13T06:39:00.000Z', 'acceso-guardia-civil',
   ARRAY['altura', 'estatura', 'cuadro médico', 'requisitos']::text[], '{"title":"Altura mínima Guardia Civil: ya no se exige (2026)","description":"¿Hay altura mínima para la Guardia Civil? No desde la Orden PCM/1133/2023. Qué se exigía antes (160 y 155 cm), por qué se eliminó y qué se sigue midiendo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuadro-medico-exclusiones-guardia-civil', 'articulo', 'Cuadro médico de exclusiones de la Guardia Civil explicado', 'El reconocimiento médico se hace con el cuadro de exclusiones de la Orden PCI/155/2019. Qué norma está vigente, qué cambió en 2021 y 2023, las exclusiones que más dudas generan y cómo revisarte con meses de margen.', 'Hay aspirantes que aprueban el examen, superan las físicas y la entrevista, y se quedan fuera en el reconocimiento médico. Casi siempre por algo que podrían haber comprobado meses antes.

En este artículo te explicamos **qué norma se aplica, qué ha cambiado, cómo se interpreta y qué exclusiones conviene revisar con tiempo**. No sustituye a un médico: es un mapa para saber qué preguntarle.

## ¿Qué norma regula el cuadro médico?

El cuadro médico de exclusiones está en el **anexo I de la Orden PCI/155/2019, de 19 de febrero** ([texto consolidado en el BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291)). La convocatoria de 2026 se remite a él en su base 6.1.3.c) y añade que se aplicará de conformidad con la sentencia del Tribunal Supremo de 21 de febrero de 2023.

Desde su aprobación, el cuadro ha cambiado tres veces:

| Norma | Qué cambió |
|---|---|
| Orden PCM/521/2021 | Reescribió la introducción y los apartados A (parámetros generales), B (piel), E (aparato digestivo), F (endocrino) y L (sangre) |
| Sentencia del Tribunal Supremo de 21-2-2023 ([BOE-A-2023-12417](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-12417)) | Anuló la frase «En ningún caso se admitirán lentes fáquicas» |
| Orden PCM/1133/2023 ([BOE-A-2023-21528](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-21528)) | Eliminó los límites de estatura: la talla pasó a ser «sin límite» |

Además, la propia orden se adaptó desde el principio al Acuerdo del Consejo de Ministros de 30 de noviembre de 2018 (Orden PCI/154/2019), que pidió eliminar **el VIH, la diabetes, la enfermedad celíaca y la psoriasis** como causas genéricas de exclusión en el empleo público.

Si lees una lista de exclusiones anterior a 2023, probablemente está desactualizada en altura y en lentes.

## Cómo está organizado

El cuadro va de la letra A a la M. Conviene conocer el índice para saber dónde buscar tu caso:

| Letra | Contenido |
|---|---|
| A | Parámetros biológicos (talla, IMC) y causas generales |
| B | Piel y tejido subcutáneo |
| C | Neurología |
| D | Psiquiatría |
| E | Aparato digestivo |
| F | Endocrinometabólicas |
| G | Aparato respiratorio |
| H | Aparato circulatorio (incluida la tensión arterial) |
| I | Aparato locomotor |
| J | Aparato de la visión |
| K | Otorrinolaringología |
| L | Sangre y órganos hematopoyéticos |
| M | Aparato urogenital |

## Cómo se aplica: no basta con tener un diagnóstico

El cuadro empieza con una regla importante. Las exclusiones se aplican cuando hay:

- procesos que hagan prever que **no podrás completar la formación**, o
- procesos que en el futuro **puedan impedirte desempeñar plenamente el servicio** o supongan una insuficiencia psicofísica permanente.

Además, la valoración debe adaptarse a la evidencia científica del momento de la convocatoria y **motivarse de forma individual** mediante un informe técnico del servicio médico. Para ello se usa un cuestionario de salud y las exploraciones necesarias, incluida una **analítica de sangre y orina con detección de drogas** (y de alcohol cuando así se establezca).

En muchos apartados la norma no excluye por el nombre de la enfermedad, sino por su repercusión: si limita o no las funciones del servicio. Otros, en cambio, son cifras cerradas (IMC, tensión, dioptrías, grados de escoliosis). Distinguir entre ambos tipos te ayuda a saber si tu caso es discutible o no.

## Las exclusiones que más dudas generan

### Peso: el IMC entre 17 y 30

El índice de masa corporal (peso en kilos dividido por la talla en metros al cuadrado) debe estar entre 17 y 30. Se admite un IMC superior a 30 si se debe objetiva y claramente a desarrollo muscular y no a grasa, sin otra patología ni factores de riesgo.

**Ejemplo resuelto.** Una persona de 1,75 m tiene un IMC de 30 con 91,9 kg (1,75² = 3,0625; 3,0625 × 30 = 91,9). Con 95 kg, su IMC sería 31: necesitaría demostrar que es masa muscular. Por abajo, con esa misma talla, el IMC 17 está en unos 52 kg.

### Estatura: ya no hay mínimo

Desde el 19 de octubre de 2023 la talla es «sin límite». Antes se exigían 160 cm a los hombres y 155 cm a las mujeres, con un máximo de 203 cm.

### Vista

Es el bloque con más cifras concretas (letra J):

- **Agudeza visual** superior a 0,7 en ambos ojos, con o sin corrección.
- **Refracción** máxima: miopía −3, hipermetropía +3 y astigmatismo ±2 dioptrías.
- **Visión de los colores normal.** El daltonismo es causa de exclusión.
- Escotomas o reducciones del **campo visual** de más de 15 grados.
- Queratocono, trasplante de córnea, anillos intraestromales, glaucoma, desprendimiento de retina, cataratas o cualquier tipo de cirugía intraocular, entre otras.

### Oído

Excluye una pérdida de audición superior al 25 % en un oído o al 18 % bilateral, medida según norma internacional (ANSI-ISO).

### Tensión arterial

No puede superar en reposo 140 mm Hg de máxima (sistólica) y 90 de mínima (diastólica). Se valora sin medicación y, si hace falta, se repite en ayunas y tras diez minutos de reposo tumbado.

### Corazón

Excluyen, entre otras, las arritmias, la insuficiencia cardiaca, la cardiopatía isquémica y los antecedentes de cirugía cardiaca. Pero el cuadro deja fuera de la exclusión algunos hallazgos frecuentes en jóvenes deportistas: el bloqueo auriculoventricular de primer grado, el de segundo grado tipo Wenckebach sin cardiopatía de base, el bloqueo incompleto de rama derecha, la válvula aórtica bicúspide sin alteraciones funcionales y el prolapso mitral sin insuficiencia.

### Espalda y aparato locomotor

Algunas cifras concretas: **escoliosis de más de 15 grados**, **cifosis de más de 45 grados**, una diferencia de longitud entre piernas (dismetría) de dos centímetros o más, o limitaciones de movilidad articular superiores al 20 %. También el material de osteosíntesis voluminoso (placas, tornillos) o que altere de forma significativa la biomecánica de la articulación.

### Aparato respiratorio

El asma no excluye de forma automática: se valora su situación clínica y funcional y la medicación necesaria para controlarla. La apnea del sueño sí figura como causa.

### Psiquiatría

Incluye, entre otros, los trastornos de ansiedad y los trastornos del humor, estos últimos **incluso en situación asintomática o de remisión**. También un cociente intelectual inferior a 90 cuando limita el funcionamiento. Es uno de los apartados en los que más pesa el historial clínico.

### Consumo de sustancias

Excluye la evidencia de consumo de drogas o sustancias psicotrópicas, incluido el alcohol, o su detección en la analítica del reconocimiento, así como la medicación que reduzca la capacidad de reacción.

### Hernias y aparato digestivo

Las hernias y eventraciones de la pared abdominal, de cualquier tipo y localización, figuran en la letra E. Si tienes una, consulta con tiempo si conviene tratarla antes del proceso.

## Lo que no es causa de exclusión

El propio cuadro aclara algunos casos que mucha gente teme:

- La **tartamudez** o la disartria no excluyen.
- La **enfermedad celíaca** está expresamente fuera de las exclusiones digestivas.
- Ciertos bloqueos cardiacos leves sin cardiopatía de base, como hemos visto.
- Las anomalías cardiacas congénitas corregidas precozmente y sin secuelas.
- El **hidrocele o el varicocele**, siempre que se hayan corregido quirúrgicamente antes de presentarte en el centro de formación.

## Casos prácticos (hipotéticos)

**Caso 1. Escoliosis de 12 grados.** Está por debajo del límite de 15 grados. Lleva una radiografía reciente con la medición; aun así, el servicio médico valora el conjunto.

**Caso 2. Tensión de 145/85 en una farmacia.** No te anticipes: puede ser nerviosismo. El cuadro prevé repetir la medición y descartar en lo posible el componente emocional. Pero si se repite en varias tomas, consúltalo con tu médico con meses de margen.

**Caso 3. Asma infantil sin tratamiento desde hace años.** El cuadro no excluye el asma por sí misma: valora tu situación actual. Un informe de neumología con una espirometría reciente te ayudará a explicarlo.

**Caso 4. Gafas con −3,50 de miopía.** Superas el máximo de −3, aunque con gafas veas perfectamente. Es una de las exclusiones de cifra cerrada.

## ¿Cuándo es el reconocimiento médico?

Forma parte de las [pruebas de aptitud psicofísica](/blog/entrevista-reconocimiento-medico-guardia-civil), junto con las físicas y la entrevista personal, que se hacen en el orden que determine el Tribunal. A ellas se convoca, por orden de puntuación, a **1,5 aspirantes por plaza**. La convocatoria pide presentarse **en ayunas y con retención de orina**, y solo da por válidos los resultados y analíticas obtenidos en el propio reconocimiento.

### Las tres calificaciones posibles

| Calificación | Qué significa |
|---|---|
| Apto | Superas el reconocimiento |
| No apto | Te excluye; puedes pedir revisión en un plazo no superior a 3 días hábiles ante una Junta Médica de Revisión |
| No apto circunstancial | Se te fija una nueva fecha de reconocimiento ante la Junta Médica de Revisión para decidir si eres apto o no apto |

## Qué hacer antes, con meses de margen

1. **Hazte una revisión por tu cuenta** con este cuadro delante: vista (incluida la de los colores), tensión, audición, IMC y espalda.
2. **Si tienes un diagnóstico previo**, pide informes actualizados a tu especialista que expliquen la repercusión funcional, que es lo que valora el cuadro.
3. **No dejes una operación para el último mes.** Cualquier intervención necesita recuperación y revisiones.
4. **Revisa la medicación** con tu médico. La tensión se valora sin medicación, y algunos fármacos pueden influir en la analítica o en la capacidad de reacción.
5. **Cuida los días previos.** Ve descansado, en ayunas y sin haber tomado nada que no tomarías en un control médico normal.

## Errores frecuentes

- **Fiarse de listas antiguas** con la altura mínima o la exclusión automática de las lentes fáquicas.
- **Confundir el cuadro de la Guardia Civil con el de las Fuerzas Armadas o el de la Policía Nacional.** Son normas distintas con cifras distintas.
- **Pensar que «con gafas veo bien» basta.** La graduación tiene su propio límite.
- **Ocultar antecedentes en el cuestionario de salud.** El cuadro permite valorar antecedentes, y la información falsa puede volverse en tu contra.
- **Hacerse la revisión cuando ya se ha aprobado el examen.** Para entonces quizá no haya margen para tratar nada.

## Checklist del reconocimiento

- [ ] IMC calculado y dentro de 17-30 (o masa muscular documentada).
- [ ] Agudeza visual y graduación exactas de cada ojo.
- [ ] Test de colores hecho.
- [ ] Tensión medida varias veces en reposo.
- [ ] Audiometría, si tienes dudas.
- [ ] Informes actualizados de cualquier diagnóstico o cirugía previa.
- [ ] Repasado el resto de [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil), incluida la [edad](/blog/edad-maxima-guardia-civil).

Si estás empezando la oposición, en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) tienes el plan completo para el examen y las pruebas.

## Preguntas frecuentes

### ¿Dónde está el cuadro médico de exclusiones de la Guardia Civil?

En el anexo I de la Orden PCI/155/2019, de 19 de febrero, modificado por la Orden PCM/521/2021, la sentencia del Tribunal Supremo de 21 de febrero de 2023 y la Orden PCM/1133/2023. La versión consolidada está en el BOE.

### ¿El daltonismo excluye de la Guardia Civil?

Sí. El cuadro exige visión cromática normal.

### ¿Qué IMC se pide en la Guardia Civil?

Entre 17 y 30. Se admite por encima de 30 si se debe a desarrollo muscular marcado y no hay otra patología ni factores de riesgo.

### ¿La tartamudez excluye?

No. El cuadro dice expresamente que la disartria o la tartamudez no son causa de exclusión.

### ¿El asma excluye de la Guardia Civil?

No de forma automática. Se valora la situación clínica y funcional y la medicación necesaria para controlarla.

### ¿Qué tensión arterial excluye?

Superar en reposo 140 mm Hg de sistólica o 90 de diastólica, valorada sin medicación y repitiendo la toma si es necesario.

### ¿Puedo recurrir un «no apto» médico?

Sí. La convocatoria de 2026 permite pedir la revisión en un plazo no superior a 3 días hábiles desde la publicación de los resultados, ante una Junta Médica de Revisión.',
   '/blog/cuadro-medico-exclusiones-guardia-civil.jpg', 'Médico tomando la tensión a un aspirante en un reconocimiento', 'publicado', '2026-11-12T06:22:00.000Z', 'acceso-guardia-civil',
   ARRAY['cuadro médico', 'reconocimiento médico', 'requisitos', 'exclusiones']::text[], '{"title":"Cuadro médico Guardia Civil: exclusiones vigentes","description":"Cuadro médico de exclusiones de la Guardia Civil vigente: norma, cambios de 2021 y 2023, IMC, vista, oído, tensión, espalda y cómo prepararte."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('edad-maxima-guardia-civil', 'articulo', 'Edad máxima para ser Guardia Civil: de 18 a 40 y cómo se cuenta', 'Puedes presentarte a la Guardia Civil si cumples 18 años durante el año de la convocatoria y no cumples 41 en ese mismo año. Cómo se cuenta, tabla por año de nacimiento, casos resueltos y qué hacer si vas justo de edad.', '«¿Llego a tiempo?» Es la pregunta que se hacen quienes se plantean la oposición pasados los treinta, y también los que todavía están en el instituto. La respuesta está en dos líneas de la convocatoria, pero se malinterpretan muchísimo.

La versión corta: **para la convocatoria de 2026 tenías que cumplir 18 años en algún momento de 2026 y no cumplir 41 en ningún momento de 2026.** La edad se cuenta por año natural, no por la fecha exacta de tu cumpleaños ni por el último día del plazo de solicitudes.

## ¿Qué dice exactamente la convocatoria?

Las bases de la convocatoria de 2026 para la Escala de Cabos y Guardias ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) fijan la edad en dos requisitos de la base 2.1:

- **Base 2.1.6:** «Tener cumplidos dieciocho (18) años de edad en el año 2026». Y aclara que reúne la condición quien cumpla los 18 durante 2026.
- **Base 2.1.7:** «No superar durante el año 2026 la edad de cuarenta (40) años», entendiendo por ello no haber cumplido ni cumplir durante 2026 los 41.

Las dos frases funcionan igual: lo que cuenta es **el año en el que cumples**, no el día.

## La edad se cuenta por año natural, no por cumpleaños

Este es el matiz que más confusión genera. La base 2.1 dice que los requisitos deben reunirse «en la fecha que finalice el plazo de admisión de instancias» y mantenerse durante el proceso y la formación. Por eso en muchos foros se lee que la edad se mira el último día del plazo. Para la edad, no es así: las bases 2.1.6 y 2.1.7 la refieren expresamente **al año completo**, y esa regla específica es la que manda.

En la práctica:

- Si cumples 18 años el 31 de diciembre del año de la convocatoria, **puedes presentarte**, aunque hagas el examen con 17.
- Si cumples 41 años el 2 de enero del año de la convocatoria, **no puedes presentarte**, aunque al cerrar el plazo todavía no los hayas cumplido.
- Si cumples 40 el 31 de diciembre, **puedes presentarte**: durante ese año no llegas a los 41.

Para el resto de requisitos (titulación, permiso de conducir de clase B, nacionalidad, antecedentes…) sí rige la fecha de fin del plazo, y además hay que mantenerlos hasta terminar la formación.

## Tabla rápida: ¿podía presentarme en 2026 según mi año de nacimiento?

| Año de nacimiento | Edad que cumples en 2026 | ¿Podías presentarte en 2026? |
|---|---|---|
| 2009 | 17 | No: aún no cumples 18 ese año |
| 2008 | 18 | Sí, aunque los cumplas en diciembre |
| 2000 | 26 | Sí |
| 1992 | 34 | Sí |
| 1990 | 36 | Sí |
| 1986 | 40 | Sí: es el último año con margen |
| 1985 | 41 | No: cumples 41 durante 2026 |

Si las siguientes convocatorias mantienen el mismo criterio, basta con desplazar la tabla un año: podrá presentarse quien cumpla entre 18 y 40 años durante el año de esa convocatoria. Pero no lo des por hecho: **la referencia siempre es el BOE del año en el que te presentas**. A día de hoy no hay publicada ninguna convocatoria posterior a la de 2026.

### Cómo hacer la cuenta en diez segundos

1. Toma el año de la convocatoria.
2. Réstale tu año de nacimiento. El resultado es la edad que cumples ese año.
3. Si sale entre 18 y 40, ambos incluidos, cumples el requisito de edad.

Ejemplo: convocatoria de 2026, nacido en 1987 → 2026 − 1987 = 39. Puedes presentarte, y aún te quedaría un año más si se mantiene el criterio.

## Casos prácticos resueltos

Estos casos son **hipotéticos**, pensados para aplicar la regla de la convocatoria de 2026.

**Caso 1. Lucía nació el 30 de diciembre de 2008.** En mayo de 2026, cuando se abre el plazo, tiene 17 años. Como cumple 18 durante 2026, **cumple el requisito** y puede presentarse. Hará el examen siendo menor de edad, y no pasa nada.

**Caso 2. Javier nació el 5 de enero de 1985.** En mayo de 2026 tiene 41 años recién cumplidos. Aunque los cumpliera hace solo unos meses, los cumple durante 2026, así que **no puede presentarse**. Su último año fue 2025.

**Caso 3. Marta nació el 20 de noviembre de 1986.** Durante todo el proceso tiene 39 años y en noviembre cumple 40. **Puede presentarse**, pero es su última oportunidad si las próximas convocatorias mantienen el mismo límite.

**Caso 4. Andrés nació en 1991 y es militar de tropa con seis años de servicio.** Quiere optar a las plazas reservadas. La base 2.1 se aplica a todos los aspirantes, sin distinguir cupos: su edad (35 en 2026) le permite presentarse. Las 1.296 plazas reservadas exigen además un mínimo de cinco años de servicios efectivos.

## ¿Influye la edad en las pruebas físicas?

Sí, y es la única parte del proceso en la que tu edad cambia lo que se te exige. Las marcas del apéndice II de la convocatoria se dividen en tres tramos: **menores de 35 años, de 35 a 39 y 40 o más**.

| Prueba | Hombres <35 | 35-39 | ≥40 | Mujeres <35 | 35-39 | ≥40 |
|---|---|---|---|---|---|---|
| Carrera 2.000 m | 9:25 | 9:48 | 10:33 | 11:14 | 11:35 | 12:49 |
| Circuito de agilidad | 14,00 s | 14,40 s | 15,10 s | 16,00 s | 16,40 s | 17,90 s |
| Extensiones de brazos | 16 | 16 | 14 | 11 | 11 | 9 |
| Natación 50 m | 70 s | 71 s | 73 s | 81 s | 83 s | 88 s |

El apéndice no indica en qué fecha exacta se toma la edad para encajarte en un tramo. Si estás en la frontera (por ejemplo, cumples 35 el mismo año de las pruebas), **entrena para la marca del tramo más exigente**: así no dependes de cómo se interprete. Tienes las cuatro pruebas explicadas en [las pruebas físicas de la Guardia Civil](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).

## La edad no puntúa, pero sí desempata

La edad no suma ni resta puntos en el concurso ni en la oposición. Solo aparece en un caso: **si dos aspirantes empatan en la puntuación final**, la base 7.10 de la convocatoria desempata por este orden:

1. Más nota en conocimientos generales.
2. Más nota en lengua inglesa.
3. Más nota en aptitudes intelectuales (psicotécnico).
4. Por último, la mayor edad.

Es decir, la edad solo decide cuando todo lo anterior coincide al céntimo. No es algo con lo que puedas contar.

## ¿Qué pasa si voy justo de edad?

Si estás en el último año en el que puedes presentarte, tu situación cambia en cuatro cosas:

1. **Solo tienes una oportunidad.** Si no consigues plaza ese año, el siguiente ya no puedes. Eso obliga a planificar como un examen final, no como un primer intento para «ver cómo es».
2. **Prioriza lo que más pesa.** La prueba de conocimientos vale 100 de los 150 puntos de la fase de oposición; el inglés, 20, y el psicotécnico, 30. El grueso de tus horas tiene que ir al temario, sin descuidar [el inglés](/blog/ingles-oposicion-guardia-civil) ni [el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad), que además tienen mínimos eliminatorios (8 sobre 20 y 12 sobre 30).
3. **Revisa los méritos que ya tienes.** La fase de concurso suma hasta 45 puntos y, con más edad, es habitual tener titulaciones o idiomas que puntúan: un B2 acreditado vale 5 puntos; un C1, 7. Te lo contamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).
4. **Cuida el calendario.** El plazo de solicitud es de solo 15 días hábiles desde el día siguiente a la publicación en el BOE. Si se te pasa, pierdes el año entero.

### Un ejemplo de cuenta para quien va justo

Supón (caso hipotético) que tienes 6 puntos de méritos y quieres apuntar a 110 puntos sobre 195, en la parte alta de los cortes del acceso libre de los últimos años (entre 90,61 y 110,58). Te faltan 104 puntos en la oposición, por ejemplo: 68 en conocimientos, 14 en inglés y 22 en el psicotécnico. Con ese objetivo por pruebas ya puedes medir tus simulacros. Para hacer la cuenta con tus aciertos y errores reales, usa la [calculadora de nota](/calculadora-nota-guardia-civil) y repasa [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil).

## ¿Y si tengo 17 años?

Si cumples los 18 durante el año de la convocatoria, puedes presentarte aunque hagas el examen siendo menor. Si todavía te queda un año o más, tienes una ventaja enorme: tiempo para preparar el temario sin prisas y para construir la base física desde cero, que es lo que más tarda.

Si eres más joven y te interesa entrar cuanto antes, existe otra vía: el [Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil), con su propio proceso y sus propios requisitos, que conviene comprobar en su convocatoria.

## ¿Y si ya he cumplido 41?

En la Escala de Cabos y Guardias por acceso libre, con las bases de 2026, no hay excepción por edad. Si te interesa la seguridad pública, la Policía Nacional no tiene un tope de edad propio en su convocatoria de 2026 (basta con no exceder la edad de jubilación), aunque exige el título de Bachiller. Compararemos las dos oposiciones en detalle más adelante.

## Errores frecuentes con la edad

- **Contar la edad al cierre del plazo.** Para la edad manda el año natural, no el último día de solicitudes.
- **Fiarse de un artículo antiguo o de lo que le pasó a un conocido.** Cada convocatoria fija sus bases; léelas en el BOE.
- **Pensar que la edad da puntos.** Solo desempata, y en último lugar.
- **Dejar la preparación para cuando salga la convocatoria.** Entre la publicación y el examen no da tiempo a preparar el temario ni las físicas desde cero.

## Checklist de edad y requisitos

- [ ] He calculado qué edad cumplo en el año de la convocatoria.
- [ ] Sé en qué año cumplo 41: esa es mi fecha límite real.
- [ ] Tengo el título de ESO (o equivalente) y el permiso de clase B, o sé cuándo los tendré.
- [ ] He revisado el cuadro médico y el resto de [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil), o los he comprobado en el [comprobador de requisitos](/requisitos-guardia-civil).
- [ ] Conozco las marcas físicas de mi tramo de edad.

Si quieres preparar la oposición con un plan claro, tienes temario, tests y simulacros en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuál es la edad máxima para entrar en la Guardia Civil?

En la convocatoria de 2026, no cumplir 41 años durante 2026. Es decir, podías presentarte si ese año cumplías como máximo 40.

### ¿Se cuenta la edad el último día del plazo de solicitudes?

No. La convocatoria de 2026 cuenta la edad por año natural: importa en qué año cumples los 18 y los 41, no la fecha del cumpleaños ni el cierre del plazo. El cierre del plazo sí es la referencia para el resto de requisitos.

### ¿Puedo presentarme con 17 años?

Sí, si cumples los 18 durante el año de la convocatoria. Puedes hacer el examen siendo todavía menor de edad.

### ¿La edad máxima es distinta para las plazas reservadas a militares?

No en la convocatoria de 2026: los requisitos de la base 2.1, incluida la edad, se aplican a todos los aspirantes. Los militares de tropa y marinería necesitan, además, cinco años de servicios efectivos para optar a las plazas reservadas.

### ¿Puntúa la edad en la Guardia Civil?

No suma puntos. Solo es el último criterio de desempate: a igualdad de nota final, y si también empatan conocimientos, inglés y aptitudes intelectuales, pasa el aspirante de mayor edad.',
   '/blog/edad-maxima-guardia-civil.jpg', 'Dos aspirantes de edades distintas estudiando juntos en una biblioteca', 'publicado', '2026-11-11T06:05:00.000Z', 'acceso-guardia-civil',
   ARRAY['edad', 'requisitos', 'convocatoria']::text[], '{"title":"Edad máxima Guardia Civil: de 18 a 40 y cómo se cuenta","description":"Edad mínima y máxima para ser Guardia Civil según la convocatoria 2026: de 18 a 40 años por año natural. Tabla por año de nacimiento, casos y dudas."}'::jsonb, '{}'::jsonb)
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
   '/blog/gafas-miopia-operacion-vista-guardia-civil.jpg', 'Oftalmólogo graduando la vista de un aspirante con una montura de prueba', 'publicado', '2026-11-14T06:56:00.000Z', 'acceso-guardia-civil',
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
   '/blog/guardia-civil-o-policia-nacional.jpg', 'Aspirante sentado en una plaza ante un coche de la Guardia Civil y otro de la Policía Nacional', 'publicado', '2026-11-16T06:30:00.000Z', 'acceso-guardia-civil',
   ARRAY['policía nacional', 'comparativa', 'requisitos', 'convocatoria']::text[], '{"title":"Guardia Civil o Policía Nacional: diferencias 2026","description":"Guardia Civil o Policía Nacional: requisitos, edad, titulación, examen, físicas, cuadro médico y formación comparados con las convocatorias de 2026."}'::jsonb, '{}'::jsonb)
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
   '/blog/lentes-intraoculares-guardia-civil.jpg', 'Oftalmólogo examinando el ojo de una aspirante con una lámpara de hendidura', 'publicado', '2026-11-15T06:13:00.000Z', 'acceso-guardia-civil',
   ARRAY['lentes intraoculares', 'vista', 'cuadro médico', 'tribunal supremo']::text[], '{"title":"Lentes intraoculares Guardia Civil: qué dijo el Supremo","description":"¿Excluyen las lentes intraoculares o fáquicas en la Guardia Civil? Qué anuló el Supremo en 2023, qué sigue en el cuadro médico y qué hacer."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('nota-de-corte-guardia-civil', 'articulo', 'Nota de corte de la Guardia Civil: cómo funciona y por qué no hay una sola cifra', 'La nota de corte no se fija antes del examen: es la puntuación del último aspirante que consigue plaza, sobre 195 puntos. Las de 2022 a 2026, por qué cambian tanto y cómo traducirlas en aciertos y errores.', '«¿Cuál es la nota de corte?» es la pregunta que más se repite después del examen. Y casi siempre se responde mal, porque se mezclan cifras sobre 10, sobre 100 y sobre 195, de cupos distintos y de momentos distintos del proceso.

La respuesta corta: **en el acceso libre de 2026, el último aspirante que obtuvo plaza tuvo 90,61 puntos sobre 195**, y en los cinco últimos años esa cifra ha oscilado entre 90,61 y 110,58. No es un aprobado fijado de antemano: se conoce al final del proceso.

## Qué es la nota de corte (y qué no es)

La nota de corte **no es un aprobado que se fija antes del examen**. Es la puntuación final que obtuvo **el último aspirante que consiguió plaza** en un cupo. Se conoce al final del proceso, cuando se publica en el BOE la relación de aspirantes propuestos para ingresar como alumnos.

Esa puntuación final es la suma de la fase de concurso y la de oposición (base 7.9 de la convocatoria de 2026, [BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)):

| Parte | Puntos máximos |
|---|---|
| Fase de concurso (méritos) | 45 |
| Conocimientos generales | 100 |
| Lengua inglesa | 20 |
| Aptitudes intelectuales (psicotécnico) | 30 |
| **Total** | **195** |

Por eso, cuando leas una nota de corte, lo primero es preguntarte: ¿sobre cuánto está?, ¿de qué cupo?, ¿en qué momento del proceso?

## Las notas de corte de 2022 a 2026

Estas son las puntuaciones finales (sobre 195) del último aspirante propuesto del **cupo de acceso libre**, calculadas por ProLince a partir del anexo de cada resolución de propuestos publicada en el BOE:

| Convocatoria | Nota de corte (libre, sobre 195) | Resolución en el BOE |
|---|---|---|
| 2026 | 90,61 | [BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936) |
| 2025 | 95,80 | [BOE-A-2025-21469](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2025-21469) |
| 2024 | 103,08 | [BOE-A-2024-24233](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2024-24233) |
| 2023 | 95,75 | [BOE-A-2023-26041](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-26041) |
| 2022 | 110,58 | [BOE-A-2022-18829](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2022-18829) |

Entre el corte más alto y el más bajo hay casi 20 puntos. Hay años más asequibles y años más duros, y no se puede adivinar de antemano cuál te va a tocar. La media de estos cinco años ronda los 99 puntos, pero preparar «para la media» es preparar para quedarse fuera en los años más duros: en 2022 y 2024 el corte la superó.

## Por qué no hay una sola cifra

### 1. Hay varios cupos

Las plazas se reparten en cupos: en 2026, 1.704 de acceso libre, 1.296 para militares profesionales de tropa y marinería y 240 para alumnos del Colegio de Guardias Jóvenes. Los propuestos se ordenan dentro de cada modalidad de ingreso (base 9.1), así que cada cupo tiene su propio corte. Las cifras de la tabla son las del acceso libre. Además, las reservadas que quedan sin cubrir se suman al acceso libre, lo que también mueve el corte.

### 2. No es lo mismo pasar a las físicas que conseguir plaza

Tras el examen, la convocatoria llama a las pruebas de aptitud psicofísica (físicas, entrevista y reconocimiento médico) a **1,5 aspirantes por plaza**, por orden de puntuación. Quien no supera alguna de esas pruebas sale de la lista, y la lista se va corriendo hacia abajo. La puntuación del último convocado a las psicofísicas y la del último que consigue plaza no coinciden.

### 3. Depende de cada año

El corte sube o baja según el número de plazas, cuántos aspirantes se presentan, la dificultad del examen y cuántos superan las pruebas psicofísicas. Compararlo de un año para otro te da una horquilla, no una garantía.

### 4. Los mínimos no son el corte

Para no quedar excluido necesitas al menos 50 puntos en conocimientos, 8 en inglés y 12 en el psicotécnico, y no llegar a 6 errores en ortografía ni en gramática. Superar esos mínimos te mantiene en el proceso, pero **con los mínimos justos no se consigue plaza**: 50 + 8 + 12 suman 70, muy lejos de los cortes reales.

## De la nota a los aciertos: cómo se puntúa cada prueba

Con cuatro opciones por pregunta, cada error resta un tercio de acierto y las preguntas en blanco no restan (base 7.3):

| Prueba | Acierto | Error | En blanco |
|---|---|---|---|
| Conocimientos (100 preguntas) | +1 | −0,33 | 0 |
| Inglés (20 preguntas) | +1 | −0,33 | 0 |
| Psicotécnico (80 preguntas) | +0,375 | −0,125 | 0 |

### Ejemplo resuelto

Supón (caso hipotético) este resultado:

- Conocimientos: 70 aciertos, 15 errores → 70 − 15/3 = **65,00**
- Inglés: 15 aciertos, 3 errores → 15 − 3/3 = **14,00**
- Psicotécnico: 58 aciertos, 6 errores → 58 × 0,375 − 6 × 0,125 = 21,75 − 0,75 = **21,00**

Fase de oposición: 65 + 14 + 21 = **100 puntos**. Con 10 puntos de méritos, la puntuación final sería **110**, por encima de todos los cortes del acceso libre de 2022 a 2026 salvo el de 2022 (110,58), que quedaría a menos de un punto.

## Tres caminos para llegar a unos 110 puntos

Los méritos cambian mucho lo que necesitas en el examen. Estas combinaciones son ejemplos hipotéticos para un objetivo de unos 110 puntos sobre 195:

| Méritos | Conocimientos | Inglés | Psicotécnico | Total |
|---|---|---|---|---|
| 0 | 72 (76 aciertos, 12 errores) | 15 (16 aciertos, 3 errores) | 23 (64 aciertos, 8 errores) | 110 |
| 10 | 65 (70 aciertos, 15 errores) | 14 (15 aciertos, 3 errores) | 21 (58 aciertos, 6 errores) | 110 |
| 20 | 58 (63 aciertos, 15 errores) | 13 (14 aciertos, 3 errores) | 19 (54 aciertos, 10 errores) | 110 |

Fíjate en lo que dice la tabla: **cada punto de méritos es un acierto neto menos que necesitas en el examen**. Por eso conviene revisar cuanto antes qué puntúa en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos): por ejemplo, un B2 de inglés acreditado vale 5 puntos, y un C1, 7.

## Qué nota deberías buscar tú

Con los cortes de los últimos cinco años entre 90,61 y 110,58 puntos sobre 195, un objetivo razonable es **ir por encima de la parte alta de la horquilla**, no del último corte. Algunas ideas para convertir eso en algo práctico:

1. **Suma tus méritos primero.** Lo que traigas de la fase de concurso ya está en el marcador antes del examen.
2. **Calcula cuánto necesitas en el examen.** Resta tus méritos al objetivo y reparte el resto entre conocimientos, inglés y psicotécnico.
3. **Entiende la penalización.** Tu nota no es tu número de aciertos. Te lo explicamos con ejemplos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil), y puedes probar con nuestra [calculadora de nota](/calculadora-nota-guardia-civil).
4. **Mide tu nivel con simulacros.** Hasta que no haces un examen completo con cronómetro no sabes dónde estás. Si quieres ver en qué zona andarías hoy, prueba nuestra herramienta de [nota de corte](/nota-de-corte).
5. **No olvides lo eliminatorio.** Un sobresaliente en conocimientos no sirve si fallas 6 en ortografía. Repasa [ortografía y gramática](/blog/ortografia-gramatica-examen-guardia-civil) aunque no sumen puntos.

## Cómo comprobar tú mismo la nota de corte

Si quieres verificar una cifra que lees en un foro:

1. Busca en el BOE la resolución de aspirantes propuestos para ingresar como alumnos de esa convocatoria.
2. Localiza el anexo del cupo que te interesa (acceso libre, militares, Colegio de Guardias Jóvenes).
3. Mira la puntuación del último aspirante de la lista de ese cupo.
4. Comprueba si la cifra está sobre 195 (concurso más oposición) o solo sobre la oposición.

## Errores frecuentes al interpretar la nota de corte

- **Mezclar escalas.** Una cifra sobre 150 (solo oposición) no se compara con otra sobre 195.
- **Tomar el corte de las psicofísicas por el de plaza.** No son lo mismo.
- **Usar el corte de otro cupo.** Militares y Colegio de Guardias Jóvenes tienen sus propias listas.
- **Apuntar al último corte.** Si el año siguiente es más duro, te quedas fuera.
- **Olvidar los méritos.** Son puntos que no dependen del día del examen.
- **Comparar con la Policía Nacional.** Su escala y su sistema son distintos; lo explicamos en [Guardia Civil o Policía Nacional](/blog/guardia-civil-o-policia-nacional).

## Checklist

- [ ] Sé cuántos puntos de méritos tengo (o puedo conseguir antes del plazo).
- [ ] He fijado un objetivo por encima de la parte alta de la horquilla.
- [ ] He repartido ese objetivo entre conocimientos, inglés y psicotécnico.
- [ ] Mido mis simulacros con la fórmula oficial, no por aciertos.
- [ ] Tengo controlados los mínimos eliminatorios de ortografía y gramática.

Si quieres un plan de estudio y simulacros con corrección según la fórmula oficial, tienes el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuál fue la nota de corte de la Guardia Civil en 2026?

En el acceso libre, 90,61 puntos sobre 195, según nuestro cálculo con la resolución de propuestos publicada en el BOE (BOE-A-2026-20936).

### ¿La nota de corte es sobre 10, sobre 100 o sobre 195?

La puntuación final de la Guardia Civil es sobre 195: hasta 45 de méritos y hasta 150 de la fase de oposición (100 de conocimientos, 20 de inglés y 30 de psicotécnico).

### ¿Publica la Guardia Civil una nota de corte oficial?

No como una cifra aislada. Se publica la relación de aspirantes propuestos con sus puntuaciones, y la nota de corte es la del último propuesto de cada cupo.

### ¿Con 50 en el examen de conocimientos entro?

No. Con 50 superas el mínimo para seguir en el proceso, pero los cortes de los últimos años en acceso libre han estado entre 90,61 y 110,58 puntos sobre 195.

### ¿Las pruebas físicas suben la nota?

No. Las físicas, la entrevista y el reconocimiento médico son apto o no apto. La puntuación final sale solo del concurso y de las pruebas de conocimientos, inglés y psicotécnico.

### ¿Qué pasa si empato con otro aspirante?

La base 7.10 desempata por más nota en conocimientos, después en inglés, después en aptitudes intelectuales y, por último, por mayor edad.

### ¿Se puede predecir la nota de corte de la próxima convocatoria?

No. Depende de las plazas, de los aspirantes, de la dificultad del examen y de cuántos superan las psicofísicas. Los años anteriores solo te dan una horquilla orientativa.',
   '/blog/nota-de-corte-guardia-civil.jpg', 'Opositor consultando de noche una lista de resultados en el portátil', 'publicado', '2026-11-17T06:47:00.000Z', 'acceso-guardia-civil',
   ARRAY['nota de corte', 'puntuación', 'concurso-oposición', 'convocatoria']::text[], '{"title":"Nota de corte Guardia Civil 2026 y años anteriores","description":"Nota de corte de la Guardia Civil de 2022 a 2026 sobre 195 puntos, calculada con las resoluciones del BOE. Qué es, por qué varía y qué nota apuntar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

