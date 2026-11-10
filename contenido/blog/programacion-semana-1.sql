-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('altura-minima-guardia-civil', 'articulo', 'Altura mínima Guardia Civil: por qué ya no se exige', 'Desde octubre de 2023 no hay estatura mínima ni máxima para entrar en la Guardia Civil. Qué se exigía antes, qué norma lo cambió, por qué, y qué sí se sigue midiendo en el reconocimiento médico.', 'Durante años, la estatura fue uno de los requisitos que más aspirantes dejaba fuera antes incluso de empezar a estudiar. Hoy ya no es así, pero en internet siguen circulando cifras antiguas.

La respuesta corta: **para ingresar en la Escala de Cabos y Guardias de la Guardia Civil no hay altura mínima ni máxima desde octubre de 2023.**

## ¿Qué se exigía antes?

La redacción original del cuadro médico de exclusiones (Orden PCI/155/2019) excluía a quien midiera:

- menos de **160 cm** en el caso de los hombres,
- menos de **155 cm** en el caso de las mujeres, o
- más de **203 cm**, en ambos casos.

Si en algún sitio ves esas cifras como requisito actual, la información está desfasada.

## ¿Qué norma eliminó la altura mínima?

La **Orden PCM/1133/2023, de 17 de octubre** ([BOE-A-2023-21528](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-21528)), en vigor desde el 19 de octubre de 2023. Su único artículo cambia el apartado de talla del cuadro médico, que queda así:

> «1. Talla. En bipedestación: sin límite.»

Es la redacción que sigue vigente en el [texto consolidado de la Orden PCI/155/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291) y la que se aplica en la convocatoria de 2026.

## ¿Por qué se eliminó?

La propia orden lo explica en su preámbulo. Se apoya en una sentencia del Tribunal Supremo de 14 de julio de 2022 que razonaba que tener una estatura inferior a la fijada no parecía relacionado con la falta de una aptitud física concreta, y que esa aptitud ya queda garantizada con las pruebas físicas y médicas del proceso.

Con esa idea, y con el objetivo declarado de avanzar en la igualdad de oportunidades entre hombres y mujeres y atraer talento, se suprimieron con carácter general los límites de estatura para el ingreso.

## ¿Puede pedirse una altura para algún destino?

Sí, y es un matiz importante. La orden elimina la altura **para ingresar en los centros de formación**, pero deja a salvo los requisitos que puedan exigirse después:

- para ocupar **determinados destinos**, según el Reglamento de destinos del personal de la Guardia Civil, y
- para acceder a la **enseñanza de especialización**, según el Reglamento de ordenación de la enseñanza.

Es decir: tu estatura no te impide entrar, pero en el futuro podría contar para alguna especialidad o destino concreto si su normativa lo exige.

## Lo que sí se sigue midiendo: el IMC

Que no haya límite de altura no significa que la talla no se mida. Se usa para calcular el **índice de masa corporal**, que debe estar **entre 17 y 30**:

> IMC = peso (kg) / talla (m)²

Por ejemplo, una persona de 1,58 m supera el límite de 30 a partir de unos 75 kg. Se admite un IMC superior a 30 si se debe claramente a masa muscular, sin otra patología ni factores de riesgo.

Tienes el resto de parámetros del reconocimiento en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Si mides poco, donde tienes que fijarte es en las físicas

La altura ya no te deja fuera, pero las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) son iguales para todos los aspirantes de cada sexo y tramo de edad. En la natación o en las extensiones de brazos, la técnica cuenta tanto como la fuerza. Entrénalas con tiempo, porque basta con no superar una para quedar fuera del proceso.

## Preguntas frecuentes

### ¿Cuál es la altura mínima para ser Guardia Civil?

Ninguna. Desde la Orden PCM/1133/2023, el cuadro médico establece la talla «sin límite» para ingresar en la Escala de Cabos y Guardias.

### ¿Hay altura máxima en la Guardia Civil?

Tampoco. El antiguo límite de 203 cm desapareció con la misma orden.

### ¿Cuánto había que medir antes?

160 cm los hombres y 155 cm las mujeres, según la redacción original de la Orden PCI/155/2019.

### ¿Se mide la altura en el reconocimiento médico?

Sí, para calcular el índice de masa corporal, que debe estar entre 17 y 30.',
   NULL, NULL, 'publicado', '2026-11-13T06:39:00.000Z', 'acceso-guardia-civil',
   ARRAY['altura', 'estatura', 'cuadro médico', 'requisitos']::text[], '{"title":"Altura mínima Guardia Civil: ya no se exige (2026)","description":"¿Hay altura mínima para la Guardia Civil? No desde la Orden PCM/1133/2023. Qué se exigía antes (160 y 155 cm), por qué se eliminó y qué se sigue midiendo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('cuadro-medico-exclusiones-guardia-civil', 'articulo', 'Cuadro médico de exclusiones de la Guardia Civil explicado', 'El reconocimiento médico es la última prueba y se aplica con el cuadro de exclusiones de la Orden PCI/155/2019. Qué norma está vigente, qué cambió en 2021 y 2023, y las exclusiones que más dudas generan, explicadas sin tecnicismos.', 'Hay aspirantes que aprueban el examen, superan las físicas y la entrevista, y se quedan fuera en la última puerta: el reconocimiento médico. Casi siempre por algo que podrían haber comprobado meses antes.

En este artículo te explicamos **qué norma se aplica, qué ha cambiado y qué exclusiones conviene revisar con tiempo**. No sustituye a un médico: es un mapa para saber qué preguntarle.

## ¿Qué norma regula el cuadro médico?

El cuadro médico de exclusiones está en el **anexo I de la Orden PCI/155/2019, de 19 de febrero** ([texto consolidado en el BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291)). La convocatoria de 2026 se remite a él en su base 6.1.3.c, y añade que se aplicará conforme a la sentencia del Tribunal Supremo de 21 de febrero de 2023.

Desde su aprobación, el cuadro ha cambiado tres veces:

| Norma | Qué cambió |
|---|---|
| Orden PCM/521/2021 | Reescribió la introducción y varios apartados (parámetros generales, piel, aparato digestivo, endocrino y sangre) |
| Sentencia del Tribunal Supremo de 21-2-2023 | Anuló la frase «En ningún caso se admitirán lentes fáquicas» |
| Orden PCM/1133/2023 | Eliminó los límites de estatura: la talla pasó a ser «sin límite» |

Si lees una lista de exclusiones anterior a 2023, probablemente está desactualizada en altura y en lentes.

## Cómo se aplica: no basta con tener un diagnóstico

El cuadro empieza con una regla importante. Las exclusiones se aplican cuando hay:

- procesos que hagan prever que **no podrás completar la formación**, o
- procesos que en el futuro **puedan impedirte desempeñar el servicio** o supongan una insuficiencia permanente.

Además, la valoración debe adaptarse a la evidencia científica del momento y **motivarse de forma individual** mediante un informe técnico del servicio médico. En muchos apartados la norma no excluye por el nombre de la enfermedad, sino por su repercusión: si limita o no las funciones del servicio.

## Las exclusiones que más dudas generan

El cuadro es largo (de la letra A a la M). Estas son las partes que más aspirantes preguntan:

### Peso: el IMC entre 17 y 30

El índice de masa corporal debe estar entre 17 y 30. Se admite un IMC por encima de 30 si se debe claramente a masa muscular y no a grasa, sin otra patología ni factores de riesgo.

### Estatura: ya no hay mínimo

Desde octubre de 2023 la talla es «sin límite». Antes se exigían 160 cm a los hombres y 155 cm a las mujeres, con un máximo de 203 cm.

### Vista

Es el bloque con más causas concretas:

- **Agudeza visual** superior a 0,7 en ambos ojos, con o sin corrección.
- **Refracción** máxima: miopía −3, hipermetropía +3 y astigmatismo ±2 dioptrías.
- **Visión de los colores normal.** El daltonismo es causa de exclusión.
- Campo visual sin reducciones de más de 15 grados.
- Queratocono, trasplante de córnea, glaucoma o desprendimiento de retina, entre otras.

Lo desarrollaremos en artículos específicos sobre gafas y operaciones de vista, y sobre lentes intraoculares.

### Oído

Excluye una pérdida de audición superior al 25 % en un oído o al 18 % bilateral, medida según norma internacional.

### Tensión arterial

No puede superar en reposo 140 de máxima y 90 de mínima. Se mide sin medicación y, si hace falta, se repite en ayunas y tras diez minutos tumbado.

### Espalda y aparato locomotor

Algunas cifras concretas: escoliosis de más de 15 grados, cifosis de más de 45 grados o una diferencia de longitud entre piernas de dos centímetros o más. También el material de osteosíntesis voluminoso (placas, tornillos) que altere la biomecánica de la articulación.

### Psiquiatría

Incluye, entre otros, los trastornos de ansiedad y los trastornos del humor, estos últimos **incluso en situación asintomática o de remisión**. Es uno de los apartados en los que más pesa el historial clínico.

### Consumo de sustancias

Excluye la evidencia de consumo de drogas o psicotrópicos, incluido el alcohol, o su detección en la analítica del reconocimiento, así como medicación que reduzca la capacidad de reacción.

### Lo que no es causa de exclusión

El propio cuadro aclara algunos casos que mucha gente teme: la **tartamudez** o la disartria no excluyen, la **enfermedad celíaca** está expresamente fuera de las exclusiones digestivas, y ciertos bloqueos cardiacos leves sin cardiopatía de base tampoco.

## ¿Cuándo es el reconocimiento médico?

Es la última de las [pruebas de aptitud psicofísica](/blog/entrevista-reconocimiento-medico-guardia-civil), junto con las físicas y la entrevista. A ella llegan los aspirantes con mejor nota, en un número de 1,5 por plaza. La convocatoria pide presentarse **en ayunas y con retención de orina**.

## Qué hacer antes, con meses de margen

1. **Hazte una revisión por tu cuenta** con este cuadro delante: vista (incluida la de los colores), tensión, audición, IMC y espalda.
2. **Si tienes un diagnóstico previo**, pide informes actualizados a tu especialista que expliquen la repercusión funcional, que es lo que valora el cuadro.
3. **No dejes una operación para el último mes.** Cualquier intervención necesita tiempo de recuperación y revisiones.
4. **Revisa la medicación.** Algunos tratamientos pueden influir en la valoración.

Y si todavía no has comprobado el resto de requisitos, empieza por [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil).

## Preguntas frecuentes

### ¿Dónde está el cuadro médico de exclusiones de la Guardia Civil?

En el anexo I de la Orden PCI/155/2019, de 19 de febrero, modificado por la Orden PCM/521/2021, la sentencia del Tribunal Supremo de 21 de febrero de 2023 y la Orden PCM/1133/2023. La versión consolidada está en el BOE.

### ¿El daltonismo excluye de la Guardia Civil?

Sí. El cuadro exige visión cromática normal.

### ¿Qué IMC se pide en la Guardia Civil?

Entre 17 y 30. Se admite por encima de 30 si se debe a desarrollo muscular y no hay otra patología.

### ¿La tartamudez excluye?

No. El cuadro dice expresamente que la disartria o la tartamudez no son causa de exclusión.',
   NULL, NULL, 'publicado', '2026-11-12T06:22:00.000Z', 'acceso-guardia-civil',
   ARRAY['cuadro médico', 'reconocimiento médico', 'requisitos', 'exclusiones']::text[], '{"title":"Cuadro médico Guardia Civil: exclusiones vigentes","description":"Cuadro médico de exclusiones de la Guardia Civil vigente: norma, cambios de 2021 y 2023, IMC, vista, oído, tensión, espalda y cómo prepararte."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('edad-maxima-guardia-civil', 'articulo', 'Edad máxima para ser Guardia Civil: de 18 a 40 y cómo se cuenta', 'Puedes presentarte a la Guardia Civil si cumples 18 años durante el año de la convocatoria y no cumples 41 en ese mismo año. Te explicamos cómo se cuenta, con ejemplos por año de nacimiento, y qué hacer si vas justo de edad.', '«¿Llego a tiempo?» Es la pregunta que se hacen quienes se plantean la oposición pasados los treinta, y también los que todavía están en el instituto. La respuesta está en dos líneas de la convocatoria, pero se malinterpretan muchísimo.

La versión corta: **para la convocatoria de 2026 tenías que cumplir 18 años en algún momento de 2026 y no cumplir 41 en ningún momento de 2026.** La edad se cuenta por año natural, no por la fecha de tu cumpleaños ni por el último día del plazo.

## ¿Qué dice exactamente la convocatoria?

Las bases de la convocatoria de 2026 para la Escala de Cabos y Guardias ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) fijan la edad en dos requisitos:

- **Base 2.1.6:** tener cumplidos 18 años en el año 2026. Y aclara que lo cumple quien haga los 18 durante 2026.
- **Base 2.1.7:** no superar durante 2026 la edad de 40 años, es decir, no haber cumplido ni cumplir durante 2026 los 41.

Las dos frases funcionan igual: lo que cuenta es **el año en el que cumples**, no el día.

## La edad se cuenta por año natural, no por cumpleaños

Este es el matiz que más confusión genera. En muchos foros se lee que la edad se mira «el último día del plazo de solicitudes». Para la edad, no es así: la convocatoria de 2026 la refiere al año completo.

En la práctica:

- Si cumples 18 años el 31 de diciembre del año de la convocatoria, **puedes presentarte**, aunque hagas el examen con 17.
- Si cumples 41 años el 2 de enero del año de la convocatoria, **no puedes presentarte**, aunque al cerrar el plazo todavía tengas 40.

## Tabla rápida: ¿puedo presentarme según mi año de nacimiento?

Aplicando las bases de 2026:

| Año de nacimiento | Edad que cumples en 2026 | ¿Podías presentarte en 2026? |
|---|---|---|
| 2009 | 17 | No: aún no cumples 18 ese año |
| 2008 | 18 | Sí |
| 1990 | 36 | Sí |
| 1986 | 40 | Sí: es el último año con margen |
| 1985 | 41 | No: cumples 41 durante 2026 |

Para la próxima convocatoria, si mantiene el mismo criterio, basta con sumar un año a todo: podrá presentarse quien cumpla entre 18 y 40 años durante el año de esa convocatoria.

## ¿Ha cambiado la edad máxima en los últimos años?

La edad máxima la fija cada convocatoria, apoyándose en la normativa de acceso. Por eso **la referencia siempre es el BOE del año en el que te presentas**, no un artículo antiguo ni lo que le pasó a un conocido hace cinco años. Cuando se publique la convocatoria siguiente, revisa las bases 2.1.6 y 2.1.7 (o las equivalentes) antes de hacer nada más.

## ¿Qué pasa si voy justo de edad?

Si estás en el último año en el que puedes presentarte, tu situación cambia en tres cosas:

1. **Solo tienes una oportunidad.** No hay convocatoria de reserva: si no apruebas ese año, el siguiente ya no puedes. Eso obliga a planificar como si fuera un examen final, no un primer intento para «ver cómo es».
2. **Empieza por lo que más pesa.** La prueba de conocimientos vale 100 de los 150 puntos de la fase de oposición. Si vas justo de tiempo, el grueso de tus horas tiene que ir ahí, sin descuidar [el inglés](/blog/ingles-oposicion-guardia-civil) y [el psicotécnico](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).
3. **Revisa los méritos que ya tienes.** La fase de concurso suma hasta 45 puntos y, con más edad, es habitual tener titulaciones, idiomas o experiencia que puntúan. Te lo contamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).

Y no olvides el resto de requisitos: titulación, carné B, cuadro médico… Los tienes todos en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil), y puedes comprobarlos en un minuto con nuestro [comprobador de requisitos](/requisitos-guardia-civil).

## ¿Y si tengo 17 años?

Si cumples los 18 durante el año de la convocatoria, puedes presentarte aunque hagas el examen siendo menor. Si todavía te queda un año o más, tienes una ventaja enorme: tiempo para preparar el temario sin prisas y para entrenar las [pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento) desde la base.

Si eres más joven y te interesa entrar cuanto antes, existe otra vía: el [Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil), con su propio proceso y sus propios requisitos de edad.

## La edad no puntúa, pero sí desempata

La edad no suma ni resta puntos. Solo aparece en un caso: **si dos aspirantes empatan en la puntuación final**, la convocatoria (base 7.10) desempata por este orden: más nota en conocimientos generales, más nota en inglés, más nota en aptitudes intelectuales y, por último, la mayor edad.

## Qué hacer hoy

- Calcula en qué año cumples 41. Esa es tu fecha límite real.
- Cuenta cuántas convocatorias te quedan y planifica en función de eso.
- Si vas justo, no esperes a que salga la convocatoria para empezar: el temario no se prepara en los meses que hay entre la publicación y el examen.

Si quieres preparar la oposición con un plan claro, tienes todo en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuál es la edad máxima para entrar en la Guardia Civil?

En la convocatoria de 2026, no cumplir 41 años durante 2026. Es decir, podías presentarte si cumplías como máximo 40 años ese año.

### ¿Se cuenta la edad el último día del plazo de solicitudes?

No. La convocatoria de 2026 cuenta la edad por año natural: importa en qué año cumples los 18 y los 41, no la fecha exacta del cumpleaños ni el cierre del plazo.

### ¿Puedo presentarme con 17 años?

Sí, si cumples los 18 durante el año de la convocatoria. Puedes hacer el examen siendo todavía menor de edad.

### ¿Puntúa la edad en la Guardia Civil?

No suma puntos. Solo se usa como último criterio de desempate: a igualdad de nota final, pasa el aspirante de mayor edad.',
   NULL, NULL, 'publicado', '2026-11-11T06:05:00.000Z', 'acceso-guardia-civil',
   ARRAY['edad', 'requisitos', 'convocatoria']::text[], '{"title":"Edad máxima Guardia Civil 2026: cómo se cuenta","description":"Edad máxima y mínima para ser Guardia Civil según la convocatoria 2026: de 18 a 40 años por año natural. Tabla por año de nacimiento y casos dudosos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('gafas-miopia-operacion-vista-guardia-civil', 'articulo', '¿Puedo ser Guardia Civil con gafas, miopía o si me he operado la vista?', 'Sí puedes llevar gafas o lentillas: lo que cuenta es la agudeza visual y las dioptrías. Los límites exactos del cuadro médico, qué pasa si te has operado con láser y la causa de exclusión de la vista que casi nadie revisa.', 'Llevar gafas es probablemente la duda médica más común entre opositores. La buena noticia: **las gafas y las lentillas no te excluyen de la Guardia Civil.** Lo que se mide es cuánto ves y cuántas dioptrías tienes.

Todo lo que sigue sale del apartado J del cuadro médico de exclusiones, en el [texto consolidado de la Orden PCI/155/2019](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291), que es el que aplica la convocatoria de 2026.

## Los dos números que importan

### 1. Agudeza visual: más de 0,7 en cada ojo

El cuadro exige una **agudeza visual superior a 0,7 en ambos ojos, con o sin corrección**. «Con o sin corrección» es la clave: si con tus gafas o lentillas ves más de 0,7 en cada ojo, cumples este apartado.

Fíjate en que dice **en ambos ojos**. Un ojo muy bueno no compensa uno que no llegue.

### 2. Refracción: el límite de dioptrías

Además de ver bien con corrección, tu graduación no puede superar estos máximos:

| Defecto | Máximo permitido |
|---|---|
| Miopía | −3 dioptrías |
| Hipermetropía | +3 dioptrías |
| Astigmatismo | ±2 dioptrías, con independencia del componente esférico |

Aquí está la trampa: **aunque con gafas veas perfectamente, si tienes −4 de miopía, superas el máximo.** Las dos condiciones se cumplen a la vez o no se cumple ninguna.

## ¿Y si me he operado con láser?

El cuadro de la Guardia Civil **no incluye la cirugía refractiva con láser en la córnea** (LASIK, PRK y técnicas similares) entre las causas de exclusión. Lo que sí incluye es:

- «Cualquier tipo de cirugía intraocular», es decir, la que se hace dentro del ojo.
- Problemas de córnea como el queratocono, las ectasias corneales, el trasplante de córnea o los anillos intraestromales.

Por tanto, después de una operación con láser lo que se valora es **el resultado**: tu agudeza visual, tu graduación residual y el estado de la córnea. Si tras la operación ves más de 0,7 en cada ojo, estás dentro de los límites de dioptrías y la córnea no presenta alteraciones de las que excluye el cuadro, la operación por sí sola no debería dejarte fuera.

Dos consejos prácticos:

1. **No te operes a última hora.** Deja que la graduación se estabilice y haz las revisiones que te pida tu oftalmólogo antes del reconocimiento.
2. **Lleva el informe de la operación** y la última revisión. El cuadro exige que cada exclusión se motive de forma individual, y la documentación te ayuda a explicar tu caso.

Las lentes que se implantan dentro del ojo son un caso aparte, con una sentencia del Supremo de por medio: lo explicaremos en un artículo propio.

## La causa de exclusión que casi nadie revisa: los colores

El cuadro exige **visión cromática normal**. El daltonismo excluye, y muchas personas que lo tienen en grado leve no lo saben. Un test de colores tarda cinco minutos en cualquier óptica u oftalmólogo: hazlo antes de invertir un año en la oposición.

## Otras causas oculares del cuadro

Además de la agudeza, las dioptrías y los colores, el apartado J excluye, entre otras:

- reducciones del **campo visual** de más de 15 grados,
- **glaucoma** o alteraciones de la tensión ocular,
- **desprendimiento de retina**, agujeros o desgarros retinianos,
- **cataratas** y opacidades del cristalino,
- alteraciones de la motilidad ocular, como estrabismos de más de 3 dioptrías prismáticas, nistagmo o visión doble.

Tienes el resto de apartados (oído, tensión, IMC, espalda…) en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Qué hacer ahora

1. **Pide una revisión completa** en la óptica o al oftalmólogo con estas tres preguntas: agudeza visual con corrección en cada ojo, graduación exacta y test de colores.
2. **Si estás en el límite** (por ejemplo, −2,75 de miopía y subiendo), coméntalo con tu oftalmólogo con tiempo.
3. **Guarda los informes.** Te servirán en el reconocimiento.

Y no te olvides del resto de requisitos: los tienes en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil).

## Preguntas frecuentes

### ¿Se puede ser Guardia Civil con gafas?

Sí. El cuadro exige una agudeza visual superior a 0,7 en ambos ojos, con o sin corrección, siempre que la graduación no supere los máximos permitidos.

### ¿Cuántas dioptrías de miopía se permiten en la Guardia Civil?

Como máximo −3 dioptrías. La hipermetropía tiene un máximo de +3 y el astigmatismo de ±2.

### ¿Puedo entrar si me he operado de miopía con láser?

El cuadro no excluye la cirugía refractiva corneal en sí. Se valora el resultado: agudeza visual, graduación residual y estado de la córnea. Sí excluye la cirugía intraocular y problemas de córnea como el queratocono.

### ¿El daltonismo excluye de la Guardia Civil?

Sí. El cuadro médico exige visión cromática normal.',
   NULL, NULL, 'publicado', '2026-11-14T06:56:00.000Z', 'acceso-guardia-civil',
   ARRAY['vista', 'miopía', 'gafas', 'cuadro médico']::text[], '{"title":"Gafas y miopía en la Guardia Civil: límites 2026","description":"¿Puedes ser Guardia Civil con gafas o miopía? Agudeza visual mínima, dioptrías máximas (−3, +3, ±2), operación láser y daltonismo según el cuadro médico."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('guardia-civil-o-policia-nacional', 'articulo', 'Guardia Civil o Policía Nacional: diferencias para elegir oposición', 'Requisitos, examen, pruebas físicas, cuadro médico y formación de las dos oposiciones, comparados con las convocatorias de 2026 en la mano. Qué cambia de verdad y qué preguntas hacerte para elegir.', 'Muchos opositores dudan entre las dos. Tiene sentido: las funciones se parecen, los temarios se solapan en parte y el sueldo de entrada es comparable. Pero los procesos selectivos son bastante distintos, y elegir bien te ahorra meses.

Comparamos las dos con sus convocatorias de 2026: la de la Escala de Cabos y Guardias de la Guardia Civil ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982)) y la de la Escala Básica de la Policía Nacional ([BOE-A-2026-15055](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-15055)).

## La diferencia de fondo

- La **Guardia Civil** es un instituto armado **de naturaleza militar**. Su día a día, su régimen disciplinario y su formación están marcados por ese carácter.
- La **Policía Nacional** es un **cuerpo policial de naturaleza civil**.

En el reparto territorial, a grandes rasgos, la Guardia Civil cubre la mayor parte del territorio y las zonas rurales, y la Policía Nacional, las capitales de provincia y las grandes ciudades. Si te imaginas trabajando en un pueblo, en tráfico, en el monte o en la costa, piensa en la Guardia Civil; si te ves en una ciudad grande, en la Policía Nacional.

## Requisitos: aquí está la primera gran diferencia

| Requisito | Guardia Civil (2026) | Policía Nacional (2026) |
|---|---|---|
| Edad | De 18 a 40 años (no cumplir 41 en el año) | 18 años, sin tope propio más allá de la edad de jubilación |
| Titulación | ESO o equivalente | Bachiller o equivalente |
| Carné de conducir | Clase B | Clase B |
| Idioma | No es requisito (el inglés es una prueba) | Nivel A2 de inglés o francés acreditado |
| Estatura | Sin límite desde 2023 | Sin límite para ingresar desde 2022 |
| Tatuajes | Prohibidos los de contenido contrario a valores constitucionales, etc. | La convocatoria no los menciona |

**Si solo tienes la ESO o has cumplido 41 años**, la decisión está tomada por ti: en 2026, la Guardia Civil exigía ESO y la Policía Nacional, Bachiller; y la Policía Nacional no tiene el límite de 40 años.

Tienes el detalle de la Guardia Civil en [requisitos para ser Guardia Civil](/blog/requisitos-guardia-civil) y en [edad máxima para ser Guardia Civil](/blog/edad-maxima-guardia-civil).

## Concurso-oposición frente a oposición libre

- **Guardia Civil:** es **concurso-oposición**. Además del examen, se valoran méritos (titulaciones, idiomas, experiencia…) que suman hasta 45 puntos de los 195 posibles. Te lo explicamos en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).
- **Policía Nacional:** es **oposición libre**. Solo a quien ya ha superado la oposición se le suman algunos méritos tasados (servicios en las Fuerzas Armadas, deportista de alto nivel e idiomas por encima del A2, estos hasta 2 puntos).

## El examen teórico

| | Guardia Civil | Policía Nacional |
|---|---|---|
| Preguntas de conocimientos | 100 | 100 |
| Opciones por pregunta | 4 | 3 |
| Tiempo | 140 minutos para todo el bloque (ortografía, gramática, conocimientos e inglés) | 50 minutos para conocimientos |
| Penalización | Sí, los errores restan | Sí, cada error resta medio acierto |
| Ortografía y gramática | Pruebas propias: 6 errores o más excluyen | Sin prueba propia (la ortografía es un tema del temario) |
| Inglés | Prueba de 20 preguntas que puntúa | Requisito A2 acreditado; los niveles superiores suman como mérito |
| Temario | Programa propio de la Guardia Civil | 45 temas en tres bloques: jurídico, sociales y técnico-científico |

El bloque técnico-científico de la Policía Nacional (informática, redes, ciberdelincuencia, armas, vehículos prioritarios…) no tiene equivalente en la Guardia Civil. A cambio, la Guardia Civil exige superar [ortografía y gramática](/blog/ortografia-gramatica-examen-guardia-civil) como pruebas eliminatorias y puntúa el [inglés](/blog/ingles-oposicion-guardia-civil).

## Pruebas físicas: en una son apto o no apto, en la otra puntúan

- **Guardia Civil:** carrera de 2.000 metros, circuito de agilidad y coordinación, extensiones de brazos y 50 metros de natación. Son **apto o no apto**: basta con superar las marcas. Te las contamos en [las pruebas físicas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento).
- **Policía Nacional:** circuito de agilidad, dominadas (hombres) o suspensión en barra (mujeres) y carrera de 1.000 metros. **Puntúan de 0 a 10**, hacen media y esa nota se suma a la del examen. Un cero en cualquier ejercicio elimina.

En la Policía Nacional estar muy en forma te sube puesto en la lista; en la Guardia Civil, cumplir las marcas es suficiente, y la diferencia se hace en el examen y en los méritos.

## Cuadro médico: dos normas distintas

Cada cuerpo tiene la suya y no se parecen tanto como se cree. Un ejemplo claro es la vista:

- **Guardia Civil:** agudeza visual superior a 0,7 en cada ojo **con o sin corrección**, y máximos de graduación (miopía −3, hipermetropía +3, astigmatismo ±2). Lo explicamos en [gafas, miopía y operación de vista](/blog/gafas-miopia-operacion-vista-guardia-civil).
- **Policía Nacional:** agudeza visual de 0,6 en cada ojo **sin corrección**, sin límites de dioptrías.

Con mucha miopía corregida con gafas, la Policía Nacional es más difícil; con poca graduación pero sin gafas, puede ser al revés. Revisa los dos cuadros con tu oftalmólogo si dudas.

## Formación

- **Guardia Civil:** curso en la Academia de Cabos y Guardias de Baeza (Jaén) y prácticas. Te contamos cómo es en [qué pasa después de aprobar](/blog/academia-baeza-guardia-civil).
- **Policía Nacional:** curso académico selectivo en régimen de internado en la Escuela Nacional de Policía y un módulo de prácticas en un puesto de trabajo. La normativa de Policía Nacional fija para el curso entre 6 y 12 meses y para las prácticas, entre 9 y 12.

## Plazas en 2026

- **Guardia Civil:** 3.240 plazas, de ellas 1.704 de acceso libre.
- **Policía Nacional:** 2.704 plazas, de ellas 2.163 por oposición libre.

## ¿Cuál elijo? Cinco preguntas

1. **¿Qué titulación tienes?** Con solo la ESO, Guardia Civil.
2. **¿Qué edad tienes?** Si cumples 41 o más en el año de la convocatoria, Policía Nacional.
3. **¿Dónde te ves trabajando?** Rural, carretera, mar o montaña: Guardia Civil. Gran ciudad: Policía Nacional.
4. **¿Te atrae o te pesa el carácter militar?** Es real, y se nota desde la academia.
5. **¿Cuál es tu punto fuerte?** Si eres muy bueno físicamente, en la Policía Nacional eso puntúa. Si tienes méritos (titulaciones, idiomas), en la Guardia Civil suman en el concurso.

Lo que no te recomendamos es preparar las dos a la vez sin un plan: los exámenes, las físicas y los calendarios son distintos, y repartirte suele significar llegar a medias a ambas.

Si eliges la Guardia Civil, tienes el temario, los tests y los simulacros en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Qué es más fácil, Guardia Civil o Policía Nacional?

Ninguna es fácil, y depende de tu perfil. La Guardia Civil pide menos titulación (ESO) y tiene concurso de méritos; la Policía Nacional no tiene edad máxima y puntúa las pruebas físicas.

### ¿Se puede entrar en la Policía Nacional solo con la ESO?

No. La convocatoria de 2026 exige el título de Bachiller o equivalente. La Guardia Civil sí admite la ESO.

### ¿Hay edad máxima en la Policía Nacional?

No tiene un tope propio: basta con no exceder la edad de jubilación. En la Guardia Civil, en 2026, no se podía cumplir 41 años durante el año de la convocatoria.

### ¿Las pruebas físicas son iguales?

No. En la Guardia Civil son apto o no apto e incluyen natación; en la Policía Nacional puntúan de 0 a 10 y no hay natación.',
   NULL, NULL, 'publicado', '2026-11-16T06:30:00.000Z', 'acceso-guardia-civil',
   ARRAY['Policía Nacional', 'comparativa', 'requisitos', 'convocatoria']::text[], '{"title":"Guardia Civil o Policía Nacional: diferencias 2026","description":"Guardia Civil o Policía Nacional: requisitos, edad, titulación, examen, físicas, cuadro médico y formación comparados con las convocatorias de 2026."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('lentes-intraoculares-guardia-civil', 'articulo', 'Lentes intraoculares y Guardia Civil: qué cambió con el Supremo', 'En 2023 el Tribunal Supremo anuló la frase del cuadro médico que excluía siempre las lentes fáquicas. Qué anuló exactamente, qué sigue escrito en la norma y qué significa para ti si llevas una lente implantada.', 'Cada vez más gente corrige la miopía con una lente implantada dentro del ojo en lugar de con láser. Y muchos descubren después que el cuadro médico de la Guardia Civil hablaba de ellas. La situación cambió en 2023 con una sentencia del Tribunal Supremo, pero **no tanto como se dice en algunos foros**.

## Primero: ¿de qué lentes hablamos?

- **Lente fáquica (ICL, Implantable Collamer Lens…):** se implanta dentro del ojo **sin quitar el cristalino**. Se usa sobre todo para miopías altas en las que el láser no es buena opción.
- **Lente intraocular pseudofáquica:** **sustituye al cristalino**, como en una operación de cataratas.

Las dos son «intraoculares», pero el cuadro médico las trata en apartados distintos, y eso es lo que importa.

## Qué decía el cuadro médico

El cuadro de exclusiones de la Guardia Civil (anexo I de la Orden PCI/155/2019) menciona las lentes y la cirugía dentro del ojo en tres apartados de su letra J:

| Apartado | Texto |
|---|---|
| J.2 | «Cualquier tipo de cirugía intraocular» |
| J.9 | «En ningún caso se admitirán lentes fáquicas» |
| J.12 | «Afaquia, Pseudoafaquia. Cualquier tipo de lente intraocular» |

## Qué anuló el Supremo

La sentencia de la Sala Tercera del Tribunal Supremo de 21 de febrero de 2023, publicada en el BOE el 29 de mayo de 2023 ([BOE-A-2023-12417](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-12417)), estimó el recurso de un aspirante y **declaró nula la frase «En ningún caso se admitirán lentes fáquicas»** del apartado J.9.

Según la información publicada sobre el caso, el Supremo entendió que esa causa de exclusión **no puede aplicarse de forma automática**, sino caso por caso y atendiendo al principio de proporcionalidad.

La convocatoria de 2026 lo recoge expresamente: el reconocimiento médico se hace con el cuadro de la Orden PCI/155/2019 «y de conformidad con lo dispuesto por la Sentencia de 21 de febrero de 2023».

## Lo que sigue escrito en la norma

Aquí está el matiz que muchos pasan por alto. El fallo anula **solo** esa frase del J.9. En el [texto consolidado del BOE](https://www.boe.es/buscar/act.php?id=BOE-A-2019-2291), los apartados **J.2 («Cualquier tipo de cirugía intraocular»)** y **J.12 («Cualquier tipo de lente intraocular»)** siguen apareciendo.

¿Qué significa en la práctica? Que la norma ya no permite excluir a nadie **solo por llevar una lente fáquica**, pero tampoco te garantiza el apto. Tu caso se valorará de forma individual, como exige el propio cuadro, que obliga a motivar cada exclusión con un informe técnico.

## En la Policía Nacional fue distinto

Si comparas con la Policía Nacional, verás otra situación. Allí, una sentencia del Supremo de 16 de febrero de 2023 ([BOE-A-2023-6376](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-6376)) anuló de su cuadro médico, entre otros, los incisos sobre cualquier tipo de cirugía intraocular y el que impedía las lentes fáquicas. Son normas y sentencias diferentes, así que no extrapoles lo que leas de un cuerpo al otro.

## Si llevas una lente implantada: qué hacer

1. **Comprueba el resto de requisitos de la vista.** La lente no te exime de cumplir la agudeza visual (más de 0,7 en cada ojo) ni los límites de graduación. Los tienes en [gafas, miopía y operación de vista en la Guardia Civil](/blog/gafas-miopia-operacion-vista-guardia-civil).
2. **Reúne la documentación.** Informe de la cirugía, tipo y modelo de lente, fecha, y revisiones posteriores con agudeza visual, estabilidad y estado del ojo. Cuanto más clara sea, más fácil es que se valore bien tu caso.
3. **Pide a tu oftalmólogo un informe funcional.** Lo que pesa no es el nombre de la técnica, sino si te limita para el servicio.
4. **Si te excluyen, revisa los plazos de recurso.** La exclusión debe estar motivada. Si crees que no se ha valorado tu caso de forma individual, consulta con un abogado especializado en oposiciones dentro de los plazos de la resolución.

## Si todavía no te has operado

Si tienes miopía alta y estás pensando en operarte antes de la oposición, coméntale a tu oftalmólogo que vas a pasar el reconocimiento de la Guardia Civil y enséñale el cuadro médico. La técnica más adecuada para tu ojo es una decisión médica, pero conviene que la tome sabiendo qué se valorará.

Tienes el resto de exclusiones en [cuadro médico de exclusiones de la Guardia Civil](/blog/cuadro-medico-exclusiones-guardia-civil).

## Preguntas frecuentes

### ¿Puedo ser Guardia Civil con lentes intraoculares?

La exclusión automática de las lentes fáquicas fue anulada por el Tribunal Supremo en 2023, y la convocatoria de 2026 aplica esa sentencia. Tu caso se valora de forma individual, y debes cumplir igualmente la agudeza visual y los límites de graduación.

### ¿Qué anuló exactamente la sentencia del Supremo?

La frase «En ningún caso se admitirán lentes fáquicas» del apartado J.9 del cuadro médico de la Orden PCI/155/2019.

### ¿Siguen apareciendo las lentes intraoculares en el cuadro médico?

Sí. En el texto consolidado siguen los apartados J.2 («Cualquier tipo de cirugía intraocular») y J.12 («Cualquier tipo de lente intraocular»). Por eso conviene llevar bien documentado tu caso.

### ¿Es lo mismo en la Policía Nacional?

No. La Policía Nacional tiene su propio cuadro médico y otra sentencia del Supremo, de 16 de febrero de 2023, con un alcance distinto.',
   NULL, NULL, 'publicado', '2026-11-15T06:13:00.000Z', 'acceso-guardia-civil',
   ARRAY['lentes intraoculares', 'vista', 'cuadro médico', 'Tribunal Supremo']::text[], '{"title":"Lentes intraoculares Guardia Civil: qué dijo el Supremo","description":"¿Excluyen las lentes intraoculares o fáquicas de la Guardia Civil? Qué anuló la sentencia del Supremo de 2023, qué sigue en el cuadro médico y cómo prepararte."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('nota-de-corte-guardia-civil', 'articulo', 'Nota de corte de la Guardia Civil: cómo funciona y por qué no hay una sola cifra', 'La nota de corte no se fija antes del examen: es la puntuación del último aspirante que consigue plaza, sobre 195 puntos. Las de 2022 a 2026 calculadas con las resoluciones del BOE, por qué cambian tanto y qué nota deberías buscar tú.', '«¿Cuál es la nota de corte?» es la pregunta que más se repite después del examen. Y casi siempre se responde mal, porque se mezclan cifras sobre 10, sobre 100 y sobre 195, de cupos distintos y de momentos distintos del proceso.

Vamos por partes.

## Qué es la nota de corte (y qué no es)

La nota de corte **no es un aprobado que se fija antes del examen**. Es la puntuación final que obtuvo **el último aspirante que consiguió plaza**. Se conoce al final del proceso, cuando se publica en el BOE la relación de aspirantes propuestos para ingresar en la academia.

Esa puntuación final tiene dos partes (base 7.9 de la convocatoria):

| Parte | Puntos máximos |
|---|---|
| Fase de concurso (méritos) | 45 |
| Conocimientos generales | 100 |
| Lengua inglesa | 20 |
| Aptitudes intelectuales (psicotécnico) | 30 |
| **Total** | **195** |

Por eso, cuando leas una nota de corte, lo primero es preguntarte: ¿sobre cuánto está?

## Las notas de corte de 2022 a 2026

Estas son las puntuaciones finales (sobre 195) del último aspirante propuesto del **cupo de acceso libre**, calculadas por ProLince a partir del anexo de cada resolución de propuestos publicada en el BOE:

| Convocatoria | Nota de corte (libre, sobre 195) | Resolución en el BOE |
|---|---|---|
| 2026 | 90,61 | [BOE-A-2026-20936](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-20936) |
| 2025 | 95,80 | [BOE-A-2025-21469](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2025-21469) |
| 2024 | 103,08 | [BOE-A-2024-24233](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2024-24233) |
| 2023 | 95,75 | [BOE-A-2023-26041](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2023-26041) |
| 2022 | 110,58 | [BOE-A-2022-18829](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2022-18829) |

En cinco años, el corte se ha movido casi 20 puntos. Hay años más asequibles y años más duros, y no se puede adivinar de antemano cuál te va a tocar.

## Por qué no hay una sola cifra

### 1. Hay varios cupos

Las plazas se reparten en cupos: en 2026, 1.704 de acceso libre, 1.296 para militares de tropa y marinería y 240 para alumnos del Colegio de Guardias Jóvenes. Cada cupo tiene su propia lista y, por tanto, su propio corte. Las cifras de la tabla son las del acceso libre.

### 2. No es lo mismo pasar a las físicas que conseguir plaza

Tras el examen, la convocatoria llama a las pruebas físicas, la entrevista y el reconocimiento médico a **1,5 aspirantes por plaza**, por orden de puntuación. Muchos aspirantes se quedan fuera en esas pruebas, así que la lista se va corriendo hacia abajo. La puntuación del último convocado a las físicas y la del último que consigue plaza no coinciden.

### 3. Depende de cada año

El corte sube o baja según el número de plazas, cuántos aspirantes se presentan, la dificultad del examen y cuántos superan las pruebas psicofísicas. Por eso compararlo de un año para otro solo te da una horquilla, no una garantía.

### 4. Los mínimos no son el corte

Para no quedar excluido necesitas al menos 50 puntos en conocimientos, 8 en inglés y 12 en el psicotécnico, y no superar 5 errores en ortografía ni en gramática. Superar esos mínimos te mantiene en el proceso, pero **con los mínimos justos no se consigue plaza**: 50 + 8 + 12 suman 70, muy lejos de los cortes reales.

## Qué nota deberías buscar tú

Con los cortes de los últimos cinco años entre 90 y 111 puntos sobre 195, un objetivo razonable es **ir por encima de la parte alta de la horquilla**, no del último corte. Algunas ideas para convertir eso en algo práctico:

- **Suma tus méritos primero.** Lo que traigas de la fase de concurso ya está en el marcador antes del examen. Revisa qué puntúa en [la fase de concurso](/blog/fase-concurso-guardia-civil-meritos).
- **Calcula cuánto necesitas en el examen.** Resta tus méritos al objetivo y reparte el resto entre conocimientos, inglés y psicotécnico.
- **Entiende la penalización.** Cada error resta, así que tu nota no es tu número de aciertos. Te lo explicamos con ejemplos en [cómo se calcula la nota del examen](/blog/calcular-nota-examen-guardia-civil), y puedes probar con nuestra [calculadora de nota](/calculadora-nota-guardia-civil).
- **Mide tu nivel con simulacros.** Hasta que no haces un examen completo con cronómetro no sabes dónde estás. Si quieres ver en qué zona andarías hoy, prueba nuestra herramienta de [nota de corte](/nota-de-corte).

## Preguntas frecuentes

### ¿Cuál fue la nota de corte de la Guardia Civil en 2026?

En el acceso libre, 90,61 puntos sobre 195, según nuestro cálculo con la resolución de propuestos publicada en el BOE (BOE-A-2026-20936).

### ¿La nota de corte es sobre 10, sobre 100 o sobre 195?

La puntuación final de la Guardia Civil es sobre 195: hasta 45 de méritos y hasta 150 de la fase de oposición (100 de conocimientos, 20 de inglés y 30 de psicotécnico).

### ¿Publica la Guardia Civil una nota de corte oficial?

No como una cifra aislada. Se publica la relación de aspirantes propuestos con sus puntuaciones, y la nota de corte es la del último propuesto de cada cupo.

### ¿Con 50 en el examen de conocimientos entro?

No. Con 50 superas el mínimo para seguir en el proceso, pero los cortes de los últimos años en acceso libre han estado entre 90 y 111 puntos sobre 195.',
   NULL, NULL, 'publicado', '2026-11-17T06:47:00.000Z', 'acceso-guardia-civil',
   ARRAY['nota de corte', 'puntuación', 'concurso-oposición', 'convocatoria']::text[], '{"title":"Nota de corte Guardia Civil 2026 y años anteriores","description":"Nota de corte de la Guardia Civil de 2022 a 2026 sobre 195 puntos, calculada con las resoluciones del BOE. Qué es, por qué varía y qué nota apuntar."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

