-- Generado por scripts/importar-blog.mjs. Se puede pegar en el editor SQL de Supabase.
insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('armas-y-explosivos-en-el-temario-de-la-guardia-civil', 'articulo', 'Armas y explosivos en el temario de la Guardia Civil', 'El tema 22 se apoya en dos reglamentos: el de Armas (RD 137/1993) y el de Explosivos (RD 130/2017). Categorías de armas, armas prohibidas, guías de pertenencia, licencias y tarjetas, y claves del control de explosivos, con tablas, caso práctico y test.', 'El **tema 22** del programa de la Escala de Cabos y Guardias, «Armas y explosivos», tiene dos bloques: el **Real Decreto 137/1993, de 29 de enero, Reglamento de Armas**, y el **Real Decreto 130/2017, de 24 de febrero, Reglamento de Explosivos** (consulta el [temario](/temario-guardia-civil)).

**Respuesta corta:** aprende **la clasificación por categorías, qué documento exige cada arma, quién lo concede y cuánto dura**, y en explosivos, **qué administración controla qué**. Y recuerda por qué lo estudia un guardia civil: la LO 2/1986 le atribuye «las derivadas de la legislación vigente sobre armas y explosivos» (art. 12.1.B.a, que vimos en [competencias de cada cuerpo](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada)). Dentro de la Dirección General, esa tarea la planifica la Jefatura de Armas, Explosivos y Seguridad, como explicamos en [Ministerio del Interior y Ministerio de Defensa](/blog/ministerio-del-interior-y-ministerio-de-defensa-estructura).

## Reglamento de Armas (RD 137/1993)

Publicado en el [BOE-A-1993-6202](https://www.boe.es/buscar/act.php?id=BOE-A-1993-6202), su texto consolidado incorpora numerosas reformas; la más amplia es la del **Real Decreto 726/2020**, en vigor desde el 5 de noviembre de 2020. Estudia siempre el texto vigente.

### Categorías (art. 3)

| Categoría | Armas |
|---|---|
| 1.ª | Armas de fuego cortas: pistolas y revólveres |
| 2.ª | 1. Armas largas para vigilancia y guardería. 2. Armas largas rayadas para caza mayor |
| 3.ª | 1. Armas largas rayadas deportivas de calibre 5,6 mm (.22) de percusión anular. 2. Escopetas y armas de ánima lisa. 3. Armas de aire o gas comprimido de más de 24,2 julios |
| 4.ª | Carabinas, pistolas y revólveres de aire o gas comprimido no asimilados a escopetas (4.ª 1, de repetición o semiautomáticas; 4.ª 2, de un solo tiro) |
| 5.ª | Armas blancas no prohibidas y cuchillos o machetes militares o sus imitaciones |
| 6.ª | Armas antiguas o históricas, anteriores a 1890, artísticas y de avancarga |
| 7.ª | 1. Inyección anestésica. 2. Ballestas. 3. Armas para lanzar cabos. 4. Sistema «Flobert». 5. Arcos y fusiles de pesca submarina. 6. Alarma, señales y lanzabengalas |
| 8.ª | Armas acústicas y de salvas |
| 9.ª | Armas inutilizadas |

Las categorías 8.ª y 9.ª se añadieron con el RD 726/2020: los apuntes anteriores hablan de siete.

### Armas prohibidas (art. 4)

Entre otras: las fabricadas ilícitamente o modificadas sin autorización; las armas de fuego ocultas en bastones u otros objetos o simuladas bajo otra apariencia; las pistolas y revólveres con culatín; los **bastones-estoque, los puñales y las navajas automáticas** (son puñales las armas blancas de hoja menor de 11 centímetros, de dos filos y puntiaguda); y las armas de fuego o de aire combinadas con armas blancas. Las armas de guerra tienen su propia sección.

### Guías de pertenencia (arts. 88 y 89)

Cada arma de las categorías **1.ª, 2.ª, 3.ª, 6.ª, 7.ª (1 a 4) y 8.ª** debe estar documentada con su **guía de pertenencia**. La expiden las **Intervenciones de Armas** (al personal de las Fuerzas Armadas y de seguridad, sus propias autoridades); recoge los datos del titular, de su licencia y una reseña del arma, y **la acompaña siempre en uso, depósito y transporte**.

### Licencias y tarjetas (arts. 96 a 105)

La tenencia y el uso de armas de las **categorías 1.ª, 2.ª y 3.ª** requieren **licencia**; las de la **4.ª**, **tarjeta**.

| Documento | Para qué | Quién la concede | Validez y límites |
|---|---|---|---|
| Licencia **A** | Armas 1.ª, 2.ª y 3.ª de propiedad privada de miembros de las Fuerzas Armadas, Fuerzas y Cuerpos de Seguridad y Vigilancia Aduanera | Su tarjeta de identidad militar o carné profesional, en servicio activo, vale como licencia A (art. 114) | Con la eficacia de las licencias B, D y E |
| Licencia **B** | Armas cortas de particulares | Dirección General de la Guardia Civil | 5 años; una sola licencia y **un arma** por licencia |
| Licencia **C** | Armas de dotación del personal de vigilancia y seguridad | Jefe de la Comandancia (art. 121) | Ligada a la función de vigilancia |
| Licencia **D** | Armas largas rayadas para caza mayor | Jefe de la Comandancia | 5 años; hasta **5 armas** |
| Licencia **E** | Armas de 3.ª y 7.ª (2 y 3): escopetas, rifles deportivos, ballestas… | Jefe de la Comandancia | 5 años; hasta 6 escopetas o 6 rifles deportivos, **12 en total** |
| Licencia **F** | Armas de concurso de tiro deportivo de federados | Régimen propio del Reglamento | Vinculada a la federación deportiva |
| **Tarjeta** A / B | Armas de la 4.ª categoría fuera del domicilio | **Alcalde** del municipio | A: hasta 6 armas, 5 años, desde los 14 años; B: número ilimitado, validez permanente |

Requisitos clave:

- La solicitud se presenta en la **Intervención de Armas de la Guardia Civil** del domicilio, con certificado de antecedentes penales, DNI o tarjeta de residencia e **informe de aptitudes psicofísicas** (art. 97).
- No pueden tener armas quienes, por sus condiciones psíquicas o físicas, supongan un riesgo propio o ajeno; una condena por delito doloso violento se considera indicativa de ese riesgo (art. 98.1). El personal en activo de las Fuerzas Armadas y de las Fuerzas y Cuerpos de Seguridad está exceptuado del informe de aptitud (art. 98.4).
- La licencia **B** solo se concede a quien acredite **necesidad**: la defensa de personas o bienes, por sí sola, no la justifica, y su concesión es restrictiva (art. 99).
- Las licencias de las categorías 1.ª, 2.ª y 3.ª solo se expiden a **mayores de edad** (art. 102.1).
- A partir de los **67 años**, las licencias deben visarse a los tres años de su expedición con un nuevo informe de aptitud (art. 104).

## Reglamento de Explosivos (RD 130/2017)

Aprobado el 24 de febrero de 2017 ([BOE-A-2017-2313](https://www.boe.es/buscar/act.php?id=BOE-A-2017-2313)), sustituyó al RD 230/1998 e incorporó la Directiva 2014/28/UE.

### Objeto y exclusiones (art. 1)

Regula los **explosivos con fines civiles** en tres planos: la **seguridad ciudadana** (fabricación, almacenamiento, distribución, comercio, transporte, medidas de seguridad, adquisición, tenencia y uso, en el marco de los artículos 28 y 29 de la LO 4/2015, que vimos en [seguridad ciudadana](/blog/seguridad-ciudadana-y-seguridad-privada-que-cae-del-temario)), la **seguridad industrial** y la **seguridad y salud en el trabajo**. Quedan fuera, entre otros, las Fuerzas Armadas y los cuerpos policiales con unidades de desactivación en el ejercicio de sus competencias, y los **artículos pirotécnicos y la cartuchería**, que tienen su propio reglamento (RD 989/2015).

### Competencias (art. 2)

Todas las actividades quedan bajo **intervención administrativa del Estado**, pero participan varios ministerios. Los dos que más interesan:

| Órgano | Papel |
|---|---|
| Ministerio competente en energía, a través de la Dirección General de Política Energética y Minas | Autorizaciones, seguridad industrial y laboral; **clasificación** de los explosivos (art. 9) |
| **Ministerio del Interior, a través de la Dirección General de la Guardia Civil** | **Control e inspección** de fabricación, almacenamiento, circulación, distribución, comercio, adquisición, transporte, medidas de seguridad, tenencia y uso |

Intervienen también, entre otros, Defensa (instalaciones, por razones de defensa nacional), las Delegaciones y Subdelegaciones del Gobierno y Protección Civil. El texto conserva los nombres de los ministerios de 2017.

### Divisiones de riesgo (art. 8)

| División | Riesgo |
|---|---|
| 1.1 | Explosión en masa |
| 1.2 | Proyección, sin explosión en masa |
| 1.3 | Incendio con ligero riesgo de onda expansiva o proyección |
| 1.4 | Pequeño riesgo de explosión en caso de ignición o cebado |
| 1.5 | Materias muy poco sensibles con riesgo de explosión en masa |
| 1.6 | Objetos extremadamente poco sensibles, sin explosión en masa |

### Clasificación (art. 9)

**Materias explosivas** (iniciadores; rompedores, como los tipos A, dinamitas; B, nafos; C, plásticos; E-a, hidrogeles; y E-b, emulsiones; y propulsores, como las pólvoras) y **objetos explosivos** (mechas, cordones detonantes, detonadores y multiplicadores).

### Estructura

Diez títulos: ordenación preliminar, fábricas, depósitos, envases, comercialización, control de mercado, uso, importación y exportación (con tránsito y transferencia), transporte y régimen sancionador. El reglamento regula también el **carné de artillero** para quien maneja explosivos en voladuras.

## Conexiones con otros temas

- **Violencia de género**: el juez puede suspender la tenencia, porte y uso de armas del investigado (art. 67 de la [LO 1/2004](/blog/violencia-de-genero-lo-1-2004-claves-para-el-examen)).
- **Menores**: entre las medidas está la privación de licencias de caza o de armas (art. 7.1.n de la LO 5/2000).
- **Seguridad ciudadana**: portar armas prohibidas o de modo negligente o intimidatorio es infracción grave si no es delito (art. 36.10 de la LO 4/2015).

## Caso práctico (hipotético)

Un cazador de 45 años quiere comprar un rifle para caza mayor y una escopeta para caza menor. ¿Qué necesita?

1. Para el rifle (2.ª categoría, 2), **licencia D**, que concede el Jefe de la Comandancia y dura cinco años.
2. Para la escopeta (3.ª categoría, 2), **licencia E**.
3. En ambos casos, solicitud en la Intervención de Armas con antecedentes penales, documento de identidad e informe de aptitud, y superar las pruebas de capacitación (art. 102.2).
4. Cada arma irá con su **guía de pertenencia**, que deberá llevar siempre al usarla o transportarla.

## Errores frecuentes

- Decir que hay siete categorías: desde 2020 son **nueve**.
- Pensar que la defensa personal justifica la licencia B.
- Atribuir la tarjeta de armas a la Guardia Civil: la conceden los **alcaldes**.
- Creer que el Reglamento de Explosivos regula los petardos: la pirotecnia y la cartuchería tienen su propio reglamento.
- Confundir quién **clasifica** los explosivos (el ministerio de energía) con quién **controla** su circulación y tenencia (la Guardia Civil).

## Mini test (preguntas propias)

1. Las pistolas y revólveres pertenecen a la categoría: a) 1.ª; b) 2.ª; c) 3.ª; d) 4.ª.
2. La licencia B la concede: a) el Jefe de la Comandancia; b) la Dirección General de la Guardia Civil; c) el Delegado del Gobierno; d) el alcalde.
3. La tarjeta de armas es necesaria para las armas de la categoría: a) 3.ª; b) 4.ª; c) 5.ª; d) 7.ª.
4. ¿Cuántas armas ampara como máximo una licencia D? a) 1; b) 3; c) 5; d) 12.
5. La división de riesgo 1.1 corresponde a: a) riesgo de proyección; b) riesgo de incendio; c) riesgo de explosión en masa; d) objetos extremadamente poco sensibles.

**Soluciones:** 1-a (art. 3); 2-b (art. 99.1); 3-b (art. 96.6); 4-c (art. 100.2); 5-c (art. 8 del RD 130/2017).

## Cómo estudiarlo

Empieza por la tabla de categorías y la de licencias, que concentran la mayoría de datos. Después, lee los artículos de guías y requisitos y, en explosivos, objeto, competencias, divisiones y clasificación. El programa cita ambos reglamentos sin acotar artículos; consulta la convocatoria vigente. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) estructura el tema.

Si necesitas tramitar una licencia real, acude a la Intervención de Armas: este artículo es material de estudio, no asesoramiento.

## Preguntas frecuentes

### ¿Cuántas categorías de armas hay?

Nueve en el texto vigente tras el RD 726/2020 (art. 3 del Reglamento de Armas).

### ¿Qué es la guía de pertenencia?

El documento que acredita cada arma de las categorías previstas en el artículo 88 y que la acompaña siempre en uso, depósito y transporte.

### ¿Cuánto dura una licencia de armas para particulares?

Las licencias B, D y E tienen cinco años de validez; a partir de los 67 años, deben visarse a los tres años.

### ¿Quién controla los explosivos?

Varias administraciones; en seguridad ciudadana, el Ministerio del Interior a través de la Dirección General de la Guardia Civil (art. 2 del RD 130/2017).

### ¿Son armas prohibidas las navajas automáticas?

Sí, junto con los bastones-estoque y los puñales (art. 4.1.f del Reglamento de Armas).

### ¿Se estudian los dos reglamentos enteros?

El programa cita los dos reales decretos sin precisar artículos concretos; revisa la convocatoria vigente.',
   NULL, NULL, 'publicado', '2027-02-11T06:09:00.000Z', 'acceso-guardia-civil',
   ARRAY['armas', 'explosivos', 'tema 22', 'reglamentos']::text[], '{"title":"Armas y explosivos: temario Guardia Civil (tema 22)","description":"Tema 22 de Guardia Civil: categorías de armas, licencias, tarjetas y guías del RD 137/1993 y claves del Reglamento de Explosivos (RD 130/2017), con test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('ascenso-a-cabo-cuando-puedes-presentarte', 'articulo', 'Ascenso a cabo: cuándo puedes presentarte y cómo es la promoción interna', 'El ascenso a cabo se logra por concurso-oposición y curso de capacitación, con dos años de servicios como mínimo. Qué exige la Ley 29/2014, qué pruebas fija la Orden PJC/325/2024 y cómo es el curso de 340 horas.', 'Antes de pensar en ser cabo conviene tener claro cómo es el camino, porque no se asciende solo por antigüedad.

**Respuesta corta:** el empleo de cabo se alcanza por **concurso-oposición** y tras superar un **curso de capacitación**. Pueden optar los guardias civiles con **al menos dos años de tiempo de servicios** en el Cuerpo, cumplidos en la fecha de inicio del curso. Cada aspirante tiene un máximo de **cinco convocatorias**, y el curso dura **340 horas**. Todo ello está en la Ley 29/2014, en el Reglamento de evaluaciones y ascensos y en la Orden PJC/325/2024; lo que cambia cada año (plazas, fechas, temario concreto) lo fija la convocatoria.

Es un tema que interesa a quien ya es guardia y a quien está empezando y quiere saber hacia dónde va la carrera. Si estás en el segundo caso, repasa antes [la Academia de Baeza](/blog/academia-baeza-guardia-civil) y [cómo funcionan los destinos](/blog/destinos-especialidades-guardia-civil).

## Qué dice la ley

La [Ley 29/2014, de Régimen del Personal de la Guardia Civil (BOE-A-2014-12408)](https://www.boe.es/buscar/act.php?id=BOE-A-2014-12408) establece:

- **Sistema:** los ascensos al empleo de cabo se hacen por concurso-oposición (artículo 64.2).
- **Curso:** es requisito superar un curso de capacitación (artículo 71.1).
- **Quién puede optar:** las plazas se ofertan con carácter general a los guardias civiles con, al menos, dos años de tiempo de servicios en el Cuerpo (artículo 71.1).
- **Orden:** el ascenso se produce con ocasión de vacante, según el orden que resulta de las puntuaciones del concurso-oposición y del curso (artículo 71.3).
- **Después:** el ascenso a cabo otorga la aptitud para el de cabo primero, que se hace por antigüedad (artículos 64.1 y 64.2).
- **Equivalencia académica:** con el título de Bachiller o equivalente, el nombramiento de cabo permite obtener la equivalencia con el título de Técnico Superior de Formación Profesional, a efectos académicos y de acceso directo a los estudios universitarios de grado (artículo 71.4).

## Cuándo puedes presentarte

El Reglamento de evaluaciones y ascensos ([Real Decreto 512/2017, BOE-A-2017-5862](https://www.boe.es/buscar/act.php?id=BOE-A-2017-5862), artículo 29.4, en la redacción del Real Decreto 91/2024) concreta tres condiciones:

1. Tener cumplidos **al menos dos años de tiempo de servicios** en el Cuerpo **en la fecha de inicio del curso de capacitación**, no en la de la solicitud.
2. Estar en alguna de las **situaciones administrativas** que permiten ascender (artículo 18.1 del reglamento).
3. Reunir los requisitos de la normativa de enseñanza.

El mismo reglamento fija como tiempo mínimo de servicios en el empleo de guardia civil, para el ascenso, **dos años**; en el de cabo, uno; y en el de cabo primero, cinco.

¿Y la fecha? No hay ninguna fija. Las convocatorias se publican en el **Boletín Oficial de la Guardia Civil**, tras su aprobación por la persona titular de la Jefatura de Enseñanza (artículo 4 de la Orden PJC/325/2024).

## Requisitos de la orden de bases

La [Orden PJC/325/2024 (BOE-A-2024-7480)](https://www.boe.es/buscar/act.php?id=BOE-A-2024-7480) aprueba las bases generales del proceso. Se dictó tras anular el Tribunal Supremo, en 2022, la orden general de 2019 que regulaba antes esta materia, porque debía tener rango de orden ministerial. Su artículo 5 añade estos requisitos:

| Requisito | Detalle |
|---|---|
| Hoja de servicios | Sin penas ni sanciones por faltas graves o muy graves anotadas y sin cancelar |
| Antecedentes | Carecer de antecedentes penales |
| Salud | No estar de baja para el servicio por motivos de salud en los días de las pruebas |
| Derechos civiles | No estar privado de ellos |
| Procedimientos | No estar procesado, investigado o acusado con apertura de juicio oral por delito doloso |
| Convocatorias | **No superar cinco.** Se consume una al alcanzar la condición de aspirante admitido |

Hay excepciones a ese cómputo: si no te presentas por **fuerza mayor justificada**, por **embarazo, parto o posparto** acreditados o por usar el **permiso de lactancia** de un hijo menor de doce meses, puedes pedir, antes de la primera prueba, que no se te compute la convocatoria.

## Cómo es el proceso selectivo

Tiene **fase de concurso** (valoración de méritos según la normativa de evaluaciones) y **fase de oposición**, que hay que superar. La puntuación del concurso **nunca** puede usarse para alcanzar los mínimos de la oposición (artículo 6.1).

La oposición incluye tres pruebas:

1. **Conocimientos profesionales:** cuestionario escrito de materias jurídicas, socioculturales, técnico-científicas y **lengua inglesa** (artículo 8). El temario lo incluye cada convocatoria. Con carácter general no cambia de una a otra; si cambia, debe publicarse con al menos cuatro meses de antelación a las pruebas.
2. **Psicotécnica:** aptitudes intelectuales y perfil de personalidad. La puntuación de aptitudes intelectuales tiene una incidencia del **20 %** sobre la fase de oposición; el perfil de personalidad se tiene en cuenta en la entrevista (artículo 9).
3. **Aptitud psicofísica:** pruebas físicas, reconocimiento médico (que puede sustituirse por certificado médico oficial o ficha médica, según la convocatoria) y entrevista personal. Es eliminatoria y se califica como «apto», «no apto» o «no apto circunstancial» (artículo 10).

Solo pasan a la prueba psicofísica los aspirantes declarados aptos en conocimientos y psicotécnico, por orden de puntuación y según el coeficiente que fije la convocatoria (artículo 6).

### Cómo se calcula el orden

- La calificación de la oposición es la suma ponderada de conocimientos profesionales y aptitudes intelectuales (artículo 11).
- La fase de concurso tiene una **incidencia del 23 %** sobre la puntuación final que da el orden de prelación para el ascenso (disposición adicional, que modifica la Orden PCI/346/2019).
- **Empates:** primero cuenta la nota de conocimientos profesionales y, si persiste, el número inferior en el escalafón (artículo 12.3).
- La relación de seleccionados se publica en el Boletín Oficial de la Guardia Civil y nunca puede superar el número de plazas.

## El curso de capacitación

La misma orden aprueba el plan de estudios del **Curso de Capacitación para el Ascenso al empleo de Cabo (CCACAB)**:

| Fase | Carga lectiva | Duración máxima |
|---|---|---|
| No presencial (a distancia) | 90 horas | 10 semanas |
| Presencial | 190 horas | 8 semanas |
| Prácticas en unidades | 60 horas | 2 semanas |
| **Total** | **340 horas** | |

Los módulos son Seguridad Ciudadana, Nuevas Tecnologías, Derecho (procesal-penal y administrativo especial), Gestión de Recursos (deontología profesional y habilidades directivas) y Técnica Policial (instrucción y adiestramiento). Para aprobar hace falta una nota final de **5 sobre 10** y superar todas las asignaturas, con un máximo de dos convocatorias por parte de asignatura. El curso se puede repetir una sola vez sin nueva evaluación en supuestos tasados, como faltas de asistencia por encima del 18 % de las horas o bajo rendimiento.

## Un caso práctico (hipotético)

Sara se incorporó a su primer destino tras terminar la formación. Quiere presentarse a cabo en cuanto pueda. Lo que debe comprobar no es cuánto tiempo lleva cuando sale la convocatoria, sino si tendrá **dos años de servicios cumplidos el día que empiece el curso** que fije esa convocatoria. Además, revisa que no tiene sanciones graves sin cancelar y prepara el inglés, porque forma parte de la prueba de conocimientos. Si suspende, sabe que esa convocatoria cuenta como una de sus cinco, porque fue admitida.

Es un ejemplo inventado: el cómputo exacto del tiempo de servicios depende de tu situación administrativa.

## Errores frecuentes

- **Creer que se asciende por antigüedad.** A cabo, no; a cabo primero, sí.
- **Contar los dos años hasta la solicitud.** Se cuentan hasta el inicio del curso.
- **No saber que hay un límite de cinco convocatorias** y que se gasta una al ser admitido.
- **Descuidar el inglés**, que forma parte de la prueba de conocimientos profesionales.
- **Pensar que el concurso salva una mala oposición.** No puede usarse para alcanzar los mínimos.

## Checklist

- [ ] Sé cuándo cumplo dos años de tiempo de servicios.
- [ ] Mi hoja de servicios no tiene sanciones graves o muy graves sin cancelar.
- [ ] Llevo la cuenta de las convocatorias que he consumido.
- [ ] He leído el temario de la última convocatoria en el Boletín Oficial de la Guardia Civil.
- [ ] Mantengo la forma física y el inglés.

## Qué hacer si aún estás opositando

Ser cabo está lejos, pero hay una conclusión práctica: la base de todo es entrar bien. El inglés, que aparece en la prueba de conocimientos del ascenso, es también una prueba de la oposición actual: repasa la [prueba de inglés](/blog/ingles-oposicion-guardia-civil). El régimen disciplinario, que condiciona el acceso, lo tienes en [derechos, deberes y régimen disciplinario](/blog/derechos-deberes-y-regimen-disciplinario-del-guardia-civil), y lo que se cobra en cada empleo, en [el sueldo](/blog/sueldo-guardia-civil). Todo empieza por aprobar: en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te ayudamos a conseguirlo.

## Preguntas frecuentes

### ¿Cuántos años hay que tener de servicio para ser cabo?

Al menos dos años de tiempo de servicios en el Cuerpo, cumplidos en la fecha de inicio del curso de capacitación.

### ¿Se asciende por antigüedad?

No. El ascenso a cabo es por concurso-oposición y curso de capacitación. El de cabo primero, después, es por antigüedad.

### ¿Cuántas veces puedo presentarme?

Un máximo de cinco convocatorias. Se consume una cuando alcanzas la condición de aspirante admitido, salvo las excepciones de la orden.

### ¿Hay pruebas físicas para ascender a cabo?

Sí. La prueba de aptitud psicofísica incluye pruebas físicas, reconocimiento médico y entrevista, y es eliminatoria. Las marcas son las de la normativa de pruebas físicas de la Guardia Civil.

### ¿Cuánto dura el curso de capacitación?

340 horas: 90 a distancia, 190 presenciales y 60 de prácticas en unidades.

### ¿Dónde se publican las convocatorias?

En el Boletín Oficial de la Guardia Civil, tras su aprobación por la Jefatura de Enseñanza.',
   NULL, NULL, 'publicado', '2027-02-13T06:43:00.000Z', 'acceso-guardia-civil',
   ARRAY['ascenso a cabo', 'promoción interna', 'concurso-oposición', 'carrera']::text[], '{"title":"Ascenso a cabo Guardia Civil: requisitos y sistema","description":"Ascenso a cabo en la Guardia Civil: dos años de servicios, concurso-oposición, máximo de cinco convocatorias y curso de 340 horas. Qué dice la normativa."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('casas-cuartel-como-es-vivir-en-un-pabellon-de-la-guardia-civil', 'articulo', 'Casas cuartel y pabellones de la Guardia Civil: qué son y qué dice la norma', 'Vivir en una casa cuartel no es obligatorio ni automático. Qué dicen la Ley Orgánica 11/2007 y el Real Decreto 274/2018 sobre pabellones, residencia y localización, en qué se diferencian de las residencias del Cuerpo y qué no está publicado.', 'Es una de las dudas que más se repiten entre quienes se plantean la oposición: «¿tendré que vivir en un cuartel?». La respuesta corta es que **no hay una obligación general de vivir en una casa cuartel**. Lo que sí hay son reglas sobre dónde puedes fijar tu residencia, sobre qué ocurre si aceptas un pabellón oficial y sobre cómo debes estar localizable. Y hay mucho que se cuenta en los foros que no he podido verificar: no he encontrado una norma pública y vigente con las condiciones de adjudicación, uso o coste de los pabellones. Prefiero decirlo y quedarme con lo comprobado.

## Tres conceptos que conviene no mezclar

| Concepto | Qué es | Norma |
|---|---|---|
| Residencia oficial | El municipio donde radica tu unidad de destino | Real Decreto 274/2018 y Reglamento de destinos |
| Residencia habitual | Donde vives de verdad; por defecto, el municipio de la residencia oficial | Real Decreto 274/2018, artículo 3 |
| Pabellón oficial | Vivienda del Cuerpo que se adjudica y se acepta; pasa a ser tu residencia habitual y tu domicilio | Real Decreto 274/2018, artículo 3.3; Ley Orgánica 11/2007, artículo 5 |

A estos tres se suma una cuarta figura distinta, las **residencias** de la Guardia Civil, que son alojamientos temporales con precio público. Las veremos al final.

## La regla general: la residencia habitual

El [Real Decreto 274/2018](https://www.boe.es/buscar/act.php?id=BOE-A-2018-6895) regula la residencia, los desplazamientos y la localización del personal de la Guardia Civil, y se aplica también a los alumnos (artículo 2.1). Su artículo 3 dice, en lo esencial:

- La **residencia habitual** es el término municipal donde radica tu **residencia oficial**, es decir, tu destino.
- Puedes fijarla **en otro municipio**, previa comunicación, si cumples **todas** estas condiciones: que esté en territorio nacional; que puedas cumplir tus obligaciones profesionales, incluida la disponibilidad permanente para el servicio; que no genere una incompatibilidad manifiesta para hacer tu jornada en buenas condiciones psicofísicas, y que el desplazamiento no pase, en condiciones normales, de **una hora y media**. Algunos mandos pueden fijar un plazo inferior en determinadas unidades, de forma motivada.

Es la concreción del artículo 21 de la [Ley Orgánica 11/2007](https://www.boe.es/buscar/act.php?id=BOE-A-2007-18391), de derechos y deberes de los guardias civiles, que permite fijar el domicilio en un municipio distinto del de destino siempre que se asegure el cumplimiento de las obligaciones profesionales.

### Cómo se comunica

El procedimiento está en el artículo 4 del real decreto:

1. Comunicas por escrito a tu unidad el lugar de residencia y tus medios de localización.
2. Si es un municipio distinto del de destino, tu jefe lo remite con su informe, en cinco días hábiles, al jefe de zona o de la jefatura correspondiente.
3. Si no cumples las condiciones, esa autoridad puede denegarlo por resolución motivada en diez días hábiles. Si vence el plazo sin resolución, puedes entender que no hay impedimento.

Además, por necesidades extraordinarias del servicio puede dejarse sin efecto temporalmente, y si desaparece alguna de las condiciones tienes que comunicarlo de nuevo. Existen también autorizaciones especiales por necesidad personal o familiar justificada o por motivos de seguridad personal (artículo 5).

## Qué dice la norma de los pabellones

Hay dos referencias directas que he podido contrastar en el BOE:

1. **Residencia.** Cuando se acepta la adjudicación de un pabellón oficial, la residencia habitual se fija en ese pabellón, con independencia del municipio en que esté (artículo 3.3 del Real Decreto 274/2018).
2. **Domicilio.** A efectos del derecho a la intimidad y a la inviolabilidad del domicilio, el pabellón que tenga asignado el guardia civil en su unidad se considera su **domicilio habitual** (artículo 5.1 de la Ley Orgánica 11/2007).

De ahí se leen tres ideas, sin añadir nada:

- La norma habla de **aceptar** una adjudicación, no de una asignación obligatoria.
- Aceptarla implica **residir allí**: tu residencia habitual queda fijada en el pabellón.
- Aunque esté dentro de un acuartelamiento, **tu pabellón es tu domicilio**, con la protección constitucional que eso supone.

## Localización y disponibilidad: vivas donde vivas

Con independencia de dónde vivas, tienes obligaciones que conviene conocer desde ahora:

- Comunicar en tu unidad la dirección de tu domicilio y tus datos de contacto actualizados (artículo 9.1 del Real Decreto 274/2018 y artículo 21.2 de la Ley Orgánica 11/2007).
- En estados de alarma, excepción o sitio, o cuando así se disponga ante alteraciones graves de la seguridad ciudadana, catástrofes o emergencias, presentarte en tu unidad o en la más próxima (artículo 20 de la Ley Orgánica 11/2007 y artículo 9.2 del real decreto).
- Puedes desplazarte libremente por el territorio nacional. Para viajar al extranjero debes comunicarlo antes, salvo viajes a la Unión Europea o a países con frontera terrestre con España de hasta cuatro días sin cambios en tus medios de localización (artículo 8).

## Qué NO he podido verificar

Esto es lo que suele contarse y que, sin una fuente oficial pública, no voy a dar por bueno:

- Quién tiene prioridad para que le adjudiquen un pabellón y cómo se baremea.
- Si se paga una cuota o canon, y cuánto.
- Cómo son las viviendas, su tamaño o su estado, que varían mucho de un acuartelamiento a otro.
- Las normas de convivencia de cada casa cuartel, que suelen estar en el régimen interior del acuartelamiento.
- Cuánto tiempo puedes permanecer en un pabellón.

Si estas condiciones influyen en tu decisión, pregunta en tu **unidad de destino** cuando lo tengas o a través de los canales oficiales de la Guardia Civil.

## No lo confundas con las residencias del Cuerpo

La Guardia Civil tiene **residencias**, reguladas por la [Orden INT/126/2021](https://www.boe.es/buscar/doc.php?id=BOE-A-2021-2289), que fija su clasificación, usuarios y precios públicos. Son alojamiento temporal, situado en el interior o junto a un acuartelamiento (artículo 3), y hay tres tipos:

- **Residencias de Unidad:** para quien debe desplazarse por necesidades del servicio, con motivo de **destino** o comisión de servicio, a unidades de la misma zona o comandancia (artículo 5). Es la figura pensada para la llegada a un nuevo destino.
- **Residencias de Descanso:** para vacaciones y descanso del personal y sus familias (artículo 6).
- **Residencias de Estudiantes:** para hijos del personal que cursan enseñanza superior (artículo 7).

Los alumnos que ingresan por acceso directo en la Escala de Cabos y Guardias son titulares del derecho de uso desde su nombramiento (artículo 4.2.c). Los precios se actualizan cada año, así que no los copio aquí.

Y en Baeza ocurre algo distinto: durante la formación, los alumnos están en [régimen de internado](/blog/un-dia-en-la-academia-de-baeza-horarios-normas-y-permisos), con el alojamiento a cargo del Estado.

## Errores frecuentes

1. **Dar por hecho que te obligarán a vivir en el cuartel.** La norma general es la residencia habitual en el municipio de destino, con posibilidad de vivir en otro.
2. **Fijar tu vivienda sin comunicarlo.** La comunicación previa es obligatoria y se puede denegar si no cumples las condiciones.
3. **Calcular el trayecto en un día sin tráfico.** El límite de hora y media se mide «en condiciones normales» y puede ser menor en algunas unidades.
4. **Tomar como norma lo que cuenta un compañero de otra comandancia.** Las condiciones de cada acuartelamiento cambian.

## Caso práctico (hipotético)

Pablo obtiene su primer destino en un puesto de un pueblo pequeño y quiere vivir en la capital de provincia, a cincuenta minutos en coche. Debe comunicarlo por escrito en su unidad. Si se cumplen todas las condiciones del artículo 3.2, y su unidad no tiene fijado un plazo inferior, la autoridad no tendría motivo para denegarlo; si no responde en diez días hábiles, puede entender que no hay impedimento. Si meses después le ofrecen un pabellón y lo acepta, su residencia habitual pasa a ser ese pabellón. El caso es inventado; las reglas son las del Real Decreto 274/2018.

## Qué te conviene saber ya

- El destino con el que sales de Baeza se asigna según las vacantes ofertadas y tu escalafón: [lo explicamos aquí](/blog/como-se-eligen-los-destinos-al-salir-de-baeza-guardia-civil). Dónde vivirás es posterior a eso.
- Si tienes pareja guardia civil e hijos, el Reglamento de destinos prevé un derecho preferente de agrupamiento familiar, que se explica en ese mismo artículo.
- La disponibilidad para el servicio es uno de los deberes del Cuerpo: repasa el marco en [derechos, deberes y régimen disciplinario](/blog/derechos-deberes-y-regimen-disciplinario-del-guardia-civil).
- Para el aspecto económico, consulta [cuánto cobra un guardia civil](/blog/sueldo-guardia-civil).

Si estás empezando, nada de esto decide si te presentas: antes está el temario, y en el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) vamos paso a paso.

## Preguntas frecuentes

### ¿Es obligatorio vivir en una casa cuartel?
No hay una obligación general en la normativa revisada. Si aceptas la adjudicación de un pabellón oficial, tu residencia habitual pasa a ser ese pabellón.

### ¿Puedo vivir en otro pueblo distinto al de mi destino?
Sí, con comunicación previa y cumpliendo todas las condiciones del artículo 3.2 del Real Decreto 274/2018, entre ellas un desplazamiento máximo de hora y media en condiciones normales.

### ¿El pabellón se considera mi casa a efectos legales?
Sí: la Ley Orgánica 11/2007 considera domicilio habitual el pabellón asignado, a efectos de intimidad e inviolabilidad del domicilio.

### ¿Cuánto se paga por un pabellón?
No he encontrado una fuente oficial pública con esa información, así que no doy cifras. Consúltalo en tu unidad.

### ¿Dónde me alojo al llegar a un destino nuevo?
La Orden INT/126/2021 prevé las Residencias de Unidad para quien se desplaza por destino o comisión de servicio, con precios públicos y sujetas a disponibilidad.

### ¿Los alumnos de Baeza viven en casas cuartel?
No: durante el curso en el centro docente, los alumnos están, con carácter general, en régimen de internado.',
   NULL, NULL, 'publicado', '2027-02-12T06:26:00.000Z', 'acceso-guardia-civil',
   ARRAY['casas cuartel', 'pabellones', 'residencia', 'destinos']::text[], '{"title":"Casas cuartel de la Guardia Civil: qué dice la norma","description":"Casas cuartel y pabellones de la Guardia Civil: residencia habitual, pabellón como domicilio, residencias del Cuerpo y lo que no regula una norma pública."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-saber-si-estas-preparado-para-aprobar-los-indicadores', 'articulo', 'Cómo saber si estás preparado: indicadores medibles frente a la nota de corte', 'Cómo traducir tus simulacros a puntos reales: la fórmula oficial, el margen sobre cada mínimo eliminatorio, tu total frente a las notas de corte de 2022 a 2026 y otros cuatro indicadores medibles. Con ejemplos resueltos y las cautelas necesarias.', '«¿Estoy preparado?» no se responde con la sensación, sino con **números comparables**. La sensación engaña en los dos sentidos: hay quien se ve mal con notas suficientes y quien se ve bien sin haber hecho nunca un simulacro completo. Eso sí, ningún indicador garantiza el resultado: te dice dónde estás, no lo que pasará.

**Respuesta corta:** calcula tus simulacros con la fórmula oficial (aciertos menos un tercio de los errores), comprueba que superas **todos** los mínimos eliminatorios con margen y a la vez, suma tu puntuación de oposición y de concurso y compárala con las notas de corte históricas. Completa el cuadro con la tendencia de tus últimos simulacros, el tiempo, el temario dominado y las marcas físicas.

## Indicador 1: la puntuación, calculada como en la convocatoria

Según la base 7.3 de la [convocatoria de 2026](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), la puntuación de cada prueba es Y × (A − E/(N − 1)) / T, donde Y es la puntuación máxima, T el número de preguntas, A los aciertos, E los errores y N las opciones (4). En la práctica, cada error resta un tercio de acierto y las preguntas en blanco no restan:

| Prueba | Preguntas | Puntuación | Cálculo práctico |
| --- | --- | --- | --- |
| Conocimientos | 100 | 0-100 | aciertos − errores/3 |
| Inglés | 20 | 0-20 | aciertos − errores/3 |
| Aptitudes intelectuales | 80 | 0-30 | (aciertos − errores/3) × 30 / 80 |

En aptitudes, cada acierto vale 0,375 y cada error resta 0,125. El desarrollo completo está en [cómo calcular la nota del examen](/blog/calcular-nota-examen-guardia-civil).

**Ejemplo propio resuelto:** 72 aciertos y 21 errores en conocimientos dan 72 − 7 = **65**. En inglés, 14 aciertos y 3 errores dan 14 − 1 = **13**. En aptitudes, 58 aciertos y 12 errores dan (58 − 4) × 30 / 80 = **20,25**.

## Indicador 2: el margen sobre los mínimos eliminatorios

Los mínimos están en las bases 7.4 a 7.8:

| Prueba | Mínimo | Equivale a |
| --- | --- | --- |
| Ortografía | Menos de 6 errores | 5 errores como máximo |
| Gramática | Menos de 6 errores | 5 errores como máximo |
| Conocimientos | 50 sobre 100 | 50 aciertos netos |
| Inglés | 8 sobre 20 | 8 aciertos netos |
| Aptitudes intelectuales | 12 sobre 30 | 32 aciertos netos de 80 (12 × 80 / 30) |

Tu objetivo no es rozar el mínimo, sino superarlo **con margen en todas las pruebas a la vez**, porque basta con fallar una. El día del examen hay nervios y preguntas que no controlas. Un criterio **propio y orientativo** para leer tus simulacros:

| Prueba | Zona de riesgo | Zona razonable |
| --- | --- | --- |
| Ortografía y gramática | 4-5 errores | 2 errores o menos |
| Conocimientos | Menos de 55 | Más de 60 |
| Inglés | Menos de 10 | 12 o más |
| Aptitudes | Menos de 15 | 18 o más |

No son cifras oficiales ni garantizan nada: sirven para decidir dónde poner tus horas.

## Indicador 3: tu total frente a las notas de corte

La nota de corte, tal como la calculamos en ProLince con las resoluciones de aspirantes propuestos, es la puntuación final del último aspirante que obtuvo plaza en el acceso libre, sobre **195 puntos**: oposición (conocimientos + inglés + aptitudes, hasta 150) más concurso (méritos, hasta 45). No existe una nota de corte oficial publicada como cifra aislada.

| Año | Nota de corte (acceso libre, sobre 195) |
| --- | --- |
| 2022 | 110,58 |
| 2023 | 95,75 |
| 2024 | 103,08 |
| 2025 | 95,80 |
| 2026 | 90,61 |

Cómo funciona la cifra y por qué cambia, en [la nota de corte](/blog/nota-de-corte-guardia-civil).

### Cuánto necesitas en la oposición según tus méritos

Lo útil es restar tus puntos de concurso para saber qué puntuación de oposición te habría hecho falta cada año. **Ejemplo propio**, con 9 puntos de méritos:

| Año | Nota de corte | Oposición necesaria con 9 de concurso |
| --- | --- | --- |
| 2022 | 110,58 | 101,58 |
| 2023 | 95,75 | 86,75 |
| 2024 | 103,08 | 94,08 |
| 2025 | 95,80 | 86,80 |
| 2026 | 90,61 | 81,61 |

Con el simulacro del indicador 1 (65 + 13 + 20,25 = **98,25** de oposición) y 9 de concurso, el total sería **107,25**: por encima de las notas de corte de 2023 a 2026 y por debajo de la de 2022. Es una comparación ilustrativa, no una predicción. Qué méritos puedes sumar depende del baremo de cada convocatoria: compruébalo en la vigente.

## Indicador 4: la tendencia, no un simulacro suelto

Un simulacro aislado tiene mucho ruido. Mira lo que hacen **tus últimos cuatro o cinco**:

- ¿La media sube, se estanca o baja?
- ¿Cuánta diferencia hay entre el mejor y el peor? Una dispersión grande indica que tu nota depende mucho de las preguntas que te toquen.
- ¿Superas los mínimos en **todos** o solo en algunos?
- ¿Tus errores son de lectura, de confusión o de temario?

Apúntalos en una hoja con fecha, nota por prueba y número de errores. Cómo analizarlos en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Indicador 5: el tiempo

La prueba de conocimientos teórico-prácticos dura **140 minutos** para ortografía, gramática, conocimientos e inglés, y las aptitudes intelectuales, **55 minutos** para 80 preguntas. Pregúntate:

- ¿Termino el simulacro completo dentro de los 140 minutos, con tiempo para repasar?
- ¿Completo el psicotécnico o me quedan preguntas sin ver?
- ¿Mi nota baja en la última parte del simulacro? Si es así, el problema puede ser de resistencia o de ritmo, no de temario.

## Indicador 6: temario dominado, no leído

Haz una tabla con los 23 temas del programa y marca cada uno como **visto**, **repasado** o **dominado**. «Dominado» significa que respondes un test del tema, sin apuntes, con pocos fallos, y que lo has hecho al menos dos veces en días distintos. Si la mayoría está en «visto», tienes lectura, no preparación.

## Indicador 7: las pruebas físicas, con margen

Las pruebas físicas son de apto o no apto, y un «no apto» te excluye aunque tu nota sea excelente. Cronometra tus marcas en un día normal, sin preparación especial, y compáralas con las del apéndice II de la convocatoria. Para menores de 35 años:

| Prueba | Hombres | Mujeres |
| --- | --- | --- |
| Carrera de 2.000 m | 9:25 | 11:14 |
| Circuito de agilidad | 14,00 s | 16,00 s |
| Extensiones de brazos | 16 | 11 |
| Natación 50 m libre | 70 s | 81 s |

Las marcas de los demás tramos de edad y cómo entrenarlas están en [las pruebas físicas y sus marcas](/blog/pruebas-fisicas-guardia-civil-marcas-entrenamiento). Si tienes dolor o una lesión, consulta con un profesional antes de forzar.

## Caso práctico: leer el cuadro completo

**Caso hipotético.** Una opositora registra sus cinco últimos simulacros de conocimientos: 58, 61, 57, 63 y 64. En inglés: 9, 11, 10, 12, 11. En aptitudes, entre 17 y 19. Ortografía y gramática, entre 1 y 3 errores. Tiene 5 puntos de concurso por un B2.

- **Conocimientos:** tendencia al alza, en zona razonable.
- **Inglés:** por encima del mínimo, pero con una nota de 9 reciente: margen corto.
- **Total aproximado** con sus últimos resultados (64 + 11 + 18 + 5): **98**. Por encima de las notas de corte de 2023, 2025 y 2026, y por debajo de las de 2022 y 2024.

Su conclusión: no está «preparada» ni «sin preparar». Está en una zona competitiva, pero sin margen ante un año exigente. Decide subir el inglés, que es la prueba con más riesgo y la que más puntos le puede dar en poco tiempo, y seguir con un simulacro semanal. Así se usa el cuadro: para decidir, no para tranquilizarse.

## Cautelas importantes

- **Los simulacros no son el examen.** Su dificultad depende de quién los elabora; no los trates como una predicción.
- **La nota de corte no se conoce de antemano** y cambia mucho de un año a otro, como se ve en la tabla. Un margen amplio sobre el histórico da tranquilidad, pero no garantiza plaza.
- **Hay pruebas posteriores:** físicas, reconocimiento médico y entrevista personal.
- **Los números no miden tu bienestar.** Si la presión te desborda, habla con un profesional.

## Qué hacer con el resultado

- **Por debajo de algún mínimo:** esa prueba es tu única prioridad hasta tener margen.
- **Mínimos superados, total por debajo del histórico:** busca los puntos más baratos (errores de lectura, inglés, aptitudes, méritos).
- **Total por encima del histórico con margen:** mantén el ritmo, no cambies el método a última hora y cuida las físicas.

Si estás a pocos meses del examen, encaja estas decisiones en [el plan de repaso de los últimos tres meses](/blog/plan-de-repaso-para-los-ultimos-tres-meses-antes-del-examen). Y si no entraras, lo siguiente es [replantear la siguiente convocatoria](/blog/si-suspendes-como-replantear-la-siguiente-convocatoria). Para practicar con simulacros corregidos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye pruebas tipo test.

## Checklist: ¿estás preparado?

- [ ] Calculo mis simulacros con la fórmula oficial.
- [ ] Supero los cinco mínimos eliminatorios en mis últimos simulacros, con margen.
- [ ] Sé cuántos puntos de concurso tengo.
- [ ] Sé a qué distancia está mi total de las notas de corte de los últimos años.
- [ ] La tendencia de mis últimos cuatro o cinco simulacros es estable o al alza.
- [ ] Termino el examen completo dentro del tiempo.
- [ ] La mayoría de los temas están en «dominado».
- [ ] Supero las marcas físicas con margen.

## Preguntas frecuentes

### ¿Qué nota de simulacro garantiza el aprobado?

Ninguna. La nota de corte cambia cada año y los simulacros no coinciden con el examen real.

### ¿Cómo calculo el psicotécnico?

Aciertos menos errores/3, multiplicado por 30 y dividido entre 80. Necesitas 12 sobre 30 como mínimo, que equivale a 32 aciertos netos.

### ¿Cuántos simulacros necesito para valorar mi nivel?

No hay una cifra oficial. La tendencia de cuatro o cinco seguidos es más fiable que uno solo.

### ¿Cuenta el concurso en la nota de corte?

Sí: la puntuación final sobre 195 suma concurso (hasta 45) y oposición (hasta 150).

### ¿Qué pasa si empato con otro aspirante?

La base 7.10 desempata por mayor nota en conocimientos, luego en inglés, luego en aptitudes intelectuales y, por último, por mayor edad.

### ¿Cuenta la entrevista o el test de personalidad en la nota?

No suman puntos a la puntuación final. La entrevista se califica como apto o no apto, y el perfil de personalidad se utiliza en ella.

### ¿Hay una nota de corte oficial?

No se publica como cifra aislada. Las de este artículo las calculamos a partir de las resoluciones de aspirantes propuestos.',
   NULL, NULL, 'publicado', '2027-02-18T06:08:00.000Z', 'acceso-guardia-civil',
   ARRAY['nota de corte', 'simulacros', 'puntuación', 'preparación']::text[], '{"title":"Cómo saber si estás preparado: indicadores y nota de corte","description":"Siete indicadores para saber si estás preparado para la oposición de Guardia Civil: fórmula oficial, mínimos, simulacros y notas de corte de 2022 a 2026."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('examen-del-colegio-de-guardias-jovenes-estructura-y-temas', 'articulo', 'Examen del Colegio de Guardias Jóvenes: qué pruebas tiene y cómo prepararlo', 'Conocimientos, lengua española, inglés y aptitudes intelectuales: son las pruebas escritas que cita la web oficial para el ingreso en el Colegio de Guardias Jóvenes. Qué está confirmado, dónde se publica la oferta y cómo prepararlo.', '**Respuesta corta:** según la web oficial de la Guardia Civil, las pruebas escritas del proceso de ingreso en el Colegio de Guardias Jóvenes del curso 2026/2027 fueron **cuatro: conocimientos, lengua española, lengua inglesa y una prueba psicotécnica de aptitudes intelectuales**, y comenzaron el **27 de agosto de 2026** en el propio Colegio, en Valdemoro. El detalle de cada prueba (número de preguntas, tiempo, temas, puntuaciones mínimas y penalización) lo fija la **oferta de plazas** de cada curso, que se publica en el **Boletín Oficial de la Guardia Civil**, no en el BOE.

Una advertencia de honestidad: la oferta del curso 2026/2027 existe y la enlaza la web oficial, pero su texto se aloja en la intranet del Cuerpo y **no hemos podido consultarlo en una fuente pública**. Por eso aquí no damos número de preguntas, temas, marcas ni fórmulas de esa oferta: te explicamos lo confirmado, dónde mirar el resto y cómo prepararte para unas pruebas de ese tipo. Si aún no tienes claro qué es el Colegio, empieza por [qué es el Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil); la edad y el resto de requisitos están en [los requisitos de edad del Colegio](/blog/colegio-de-guardias-jovenes-requisitos-de-edad).

## Qué está confirmado y qué no

| Dato | ¿Confirmado en fuente oficial pública? | Fuente |
|---|---|---|
| Existe una oferta de plazas para el curso 2026/2027 | Sí | [Web de la Guardia Civil, ingreso en el Colegio](https://web.guardiacivil.es/es/tramites/ingresos/Colegio_Guardias_Jovenes/) |
| Se publicó en el Boletín Oficial de la Guardia Civil, número 41 de 2026 | Sí, por el enlace oficial al documento | Misma página |
| Pruebas escritas: conocimientos, lengua española, lengua inglesa y aptitudes intelectuales (punto 5.2 de la oferta) | Sí | Misma página |
| Comienzo de las pruebas escritas: 27 de agosto de 2026, a las 08:00, en el Colegio «Duque de Ahumada» | Sí | Misma página |
| Número de preguntas, tiempo, temario, mínimos, penalización y fórmula de la nota final | No hemos podido verificarlo | El texto está en la intranet del Cuerpo |
| Pruebas físicas y sus marcas | No hemos podido verificarlo | Ídem |

Lo que circula en foros y academias sobre esos datos puede ser correcto, pero sin el texto oficial a la vista no lo vamos a afirmar.

## Qué es lo que se juega en este examen

La [página institucional del Colegio](https://web.guardiacivil.es/es/institucional/conocenos/centros_docentes/guardiasjovenes/) explica que el centro prepara a los **hijos e hijas del personal del Cuerpo** y que la enseñanza dura dos cursos de nueve meses:

1. **Primer año:** preparar a quienes han superado el **examen de ingreso en el centro** para obtener una de las plazas reservadas al Colegio en la convocatoria de ingreso en la Guardia Civil.
2. **Segundo año:** formación técnico-profesional de quienes obtienen plaza, completada con 40 semanas de prácticas en unidades.

El examen de este artículo es, por tanto, **el de entrada al primer año**. No es todavía la oposición a la Guardia Civil: esa llega después, por el cupo reservado de la convocatoria del BOE, que en 2026 fue de **240 plazas** de 3.240 ([BOE-A-2026-9982](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982), base 1.1).

## Dónde se publica la oferta y cómo leerla

- **Boletín Oficial de la Guardia Civil.** Es el diario oficial donde sale la oferta. El enlace de la web oficial apunta a la intranet del Cuerpo; si tu padre o tu madre es guardia civil, puede consultarlo desde allí.
- **Web de la Guardia Civil**, apartado de ingreso en el Colegio. Ahí se anuncian la oferta y avisos como la fecha de las pruebas; la web indica además que las listas de aspirantes se publican en la intranet.

Cuando tengas el texto delante, localiza en este orden:

1. **Requisitos**, empezando por la edad y el vínculo con el Cuerpo.
2. **Plazo y forma de solicitud.**
3. **Descripción de cada prueba**: número de preguntas, tiempo, opciones de respuesta y si los errores restan.
4. **Temario**: qué temas entran y con qué alcance (no es lo mismo «la Constitución» que «un título concreto»).
5. **Mínimos** de cada prueba y cómo se calcula la nota final.
6. **Pruebas físicas y médicas**, con marcas y certificados.

Anota todo en una hoja: será tu plan de trabajo.

## Cómo preparar cada prueba (con independencia de la oferta)

### Lengua española

Es la parte donde más se gana con constancia. Trabaja tres frentes: **tildes**, **palabras que se confunden** (homófonos, b/v, g/j, h) y **gramática** (concordancias, leísmo, dequeísmo). La técnica de la oposición ordinaria sirve como referencia: allí se subrayan cuatro palabras por frase y cuenta como error tanto no marcar una falta como marcar algo correcto. Si la oferta del Colegio usa un formato parecido, «marcar por si acaso» penaliza. Lo explicamos en [ortografía y gramática, la parte que elimina](/blog/ortografia-gramatica-examen-guardia-civil).

**Ejercicio propio** (no es una pregunta oficial): ¿cuál de estas tiene falta? A) «Haber si vienes», B) «Echo de menos», C) «Por qué lo dices», D) «Ahí está». Es la A: debe ser «a ver». Repite este tipo de ejercicio diez minutos al día.

### Lengua inglesa

Prioriza lo que aparece en cualquier prueba de nivel escolar: tiempos verbales, preposiciones, vocabulario frecuente y comprensión de textos cortos. Una lectura breve en inglés al día, con un cuaderno de vocabulario, rinde más que una sesión larga a la semana. Ideas concretas en [el inglés de la oposición](/blog/ingles-oposicion-guardia-civil).

### Conocimientos

Hasta que tengas el temario de la oferta vigente, no estudies a ciegas un temario completo de adulto. Lo sensato es:

1. Conseguir el **apéndice de temas** de la oferta.
2. Leer el **alcance** de cada tema y empezar por el más largo.
3. Hacer **test desde el primer día**, no al final.
4. Repasar con espaciado: volver a cada tema a los pocos días, a la semana y al mes. La técnica está en [cómo memorizar leyes con repaso espaciado](/blog/como-memorizar-leyes-repaso-espaciado-aplicado-al-temario).

### Aptitudes intelectuales

El psicotécnico se entrena: series, razonamiento verbal, cálculo y aptitud espacial mejoran con práctica breve y frecuente. Dos o tres sesiones cortas por semana, cronometradas. Lo tienes en [el psicotécnico: aptitudes y personalidad](/blog/psicotecnico-guardia-civil-aptitudes-personalidad).

### Si los errores restan

En la oposición ordinaria de la Escala de Cabos y Guardias, con cuatro opciones, **cada error resta un tercio de acierto** y las respuestas en blanco no restan (base 7.3 de la convocatoria de 2026). Si la oferta del Colegio aplica una regla así, la estrategia es la misma: contestar cuando puedes descartar al menos una opción y dejar en blanco lo que sería puro azar.

**Ejemplo propio** con esa regla: 50 aciertos y 15 errores dan 50 − 15/3 = **45 puntos**; si contestas al azar 6 preguntas más y fallas 5, quedas en 51 − 20/3 ≈ **44,3**. Contestar a ciegas te ha bajado la nota.

## Un plan de 12 semanas (orientativo)

| Semanas | Prioridad | Rutina tipo |
|---|---|---|
| 1-2 | Diagnóstico | Un test de cada prueba; leer la oferta y su temario |
| 3-6 | Base | Un tema de conocimientos por semana, lengua e inglés a diario, psicotécnico dos días |
| 7-10 | Consolidación | Repaso espaciado, test por temas y un simulacro parcial semanal |
| 11-12 | Simulacros | Simulacros completos con el tiempo que fije la oferta y análisis de errores |

Es un esquema propio, no oficial: ajústalo al tiempo real que tengas. Sobre cuándo y cómo hacer simulacros, mira [cada cuánto hacer simulacros](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Un caso práctico (hipotético)

Carla, hija de un guardia civil, quiere presentarse el próximo verano. En vez de comprar el primer temario que encuentra, pide a su padre que localice la oferta vigente en la intranet. Con ella delante, apunta la edad exigida, el plazo, los temas y los mínimos. Detecta que su punto débil es el inglés y le dedica veinte minutos diarios, mientras avanza un tema de conocimientos por semana. Es un ejemplo inventado para ilustrar el orden: primero el texto oficial, después el plan.

## Errores frecuentes

- **Estudiar con datos de foros** sin contrastarlos con la oferta vigente.
- **Buscar la oferta en el BOE.** Se publica en el Boletín Oficial de la Guardia Civil.
- **Confundir este examen con la oposición a la Escala de Cabos y Guardias.** Son procesos distintos, con requisitos y pruebas distintos.
- **Dejar la lengua y el inglés para el final.** Son las partes que más mejoran con práctica diaria.
- **Contestar todo al azar** sin saber si los errores penalizan.

## Checklist

- [ ] Tengo el texto de la oferta vigente.
- [ ] Sé qué pruebas, temas y mínimos fija.
- [ ] Practico lengua e inglés a diario.
- [ ] Hago test de conocimientos desde la primera semana.
- [ ] Entreno el psicotécnico con tiempo.
- [ ] He revisado las pruebas físicas que exige la oferta y entreno en paralelo.

Si quieres prepararlo con un programa organizado, tienes el [curso de acceso al Colegio de Guardias Jóvenes](/cursos/colegio-guardias-jovenes).

## Preguntas frecuentes

### ¿Qué pruebas tiene el examen del Colegio de Guardias Jóvenes?

Según la web oficial, las pruebas escritas de la oferta 2026/2027 fueron de conocimientos, lengua española, lengua inglesa y aptitudes intelectuales. El resto de pruebas y su detalle los fija cada oferta.

### ¿Cuántas preguntas tiene?

No lo hemos podido verificar en una fuente pública: está en el texto de la oferta, publicado en el Boletín Oficial de la Guardia Civil.

### ¿Cuándo es el examen?

En la oferta 2026/2027, las pruebas escritas comenzaron el 27 de agosto de 2026. La fecha de cada año la anuncia la Guardia Civil.

### ¿Dónde se publica la oferta?

En el Boletín Oficial de la Guardia Civil, no en el BOE. La del curso 2026/2027 está en el número 41 de 2026, según el enlace de la web oficial.

### ¿Los errores restan?

Depende de lo que diga la oferta vigente. En la oposición ordinaria a la Escala de Cabos y Guardias, sí: con cuatro opciones, un error resta un tercio de acierto.

### ¿Hay ya oferta para el curso 2027/2028?

No teníamos texto oficial al preparar este artículo. Cada oferta fija sus propias reglas, así que revisa la nueva cuando salga.',
   NULL, NULL, 'publicado', '2027-02-17T06:51:00.000Z', 'colegio-guardias-jovenes',
   ARRAY['colegio de guardias jóvenes', 'examen', 'temario', 'preparación']::text[], '{"title":"Examen Colegio de Guardias Jóvenes: pruebas y preparación","description":"Examen del Colegio de Guardias Jóvenes: qué pruebas escritas confirma la web oficial, dónde se publica la oferta de plazas y cómo preparar cada parte."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('opositar-con-hijos-un-plan-de-estudio-realista-guardia-civil', 'articulo', 'Opositar con hijos: un plan de estudio realista', 'Estudiar una oposición con niños en casa es posible, pero exige renunciar al plan ideal. Cómo auditar tu tiempo real, qué tarea encaja en cada hueco, cómo repartir el cuidado y organizar los simulacros, y una semana tipo para adaptar.', 'Opositar con hijos pequeños, o con adolescentes que también necesitan tiempo y atención, obliga a cambiar el enfoque: **el plan que funciona no es el de las ocho horas seguidas, sino el que cabe en tu día real**. Y tu día real tiene interrupciones, imprevistos y noches cortas.

**Respuesta corta:** parte de una auditoría honesta de tu tiempo, usa bloques cortos y frecuentes para repasar y tests, protege uno o dos tramos largos a la semana para lo que exige concentración, pon el reparto del cuidado por escrito y ajusta la fecha objetivo a tu realidad. Sin compararte con quien no tiene tus cargas.

## Paso 1: audita tu día real, no el ideal

Durante una semana, apunta cuándo tienes tiempo de verdad libre: siestas, horario escolar, extraescolares, noches, ratos en los que otra persona se queda con los niños. No lo que crees que tienes, sino lo que pasa. Una plantilla sencilla:

| Franja | Lunes | Martes | Miércoles | Jueves | Viernes | Sábado | Domingo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Mañana | | | | | | | |
| Mediodía | | | | | | | |
| Tarde | | | | | | | |
| Noche | | | | | | | |

Marca cada hueco con su duración y con lo interrumpible que es (por ejemplo, «30 min, siesta, puede despertarse»). Muchas veces aparecen más huecos de los que creías, pero fragmentados. Si además trabajas, cruza esta tabla con [el plan de estudio trabajando](/blog/plan-estudio-guardia-civil-trabajando).

## Paso 2: cada hueco, su tarea

No todo el estudio necesita una hora ininterrumpida, pero tampoco todo cabe en diez minutos:

| Hueco | Tarea adecuada | Tarea que no encaja |
| --- | --- | --- |
| 10-20 min, interrumpible | Fichas, tanda de psicotécnico, vocabulario de inglés | Temario nuevo |
| 20-45 min | Test por tema, repaso activo con preguntas, ortografía | Simulacro |
| 1-2 h protegidas | Temario nuevo, esquemas, corrección a fondo | — |
| 140 min protegidos | Simulacro completo | — |

La regla de fondo: **lo que exige más concentración, a los tramos largos; lo que es recuperar y repasar, a los cortos**. Hacer preguntas sin mirar los apuntes, aunque sea en diez minutos, es una de las técnicas con más respaldo en la investigación sobre aprendizaje. Ideas para estructurar los bloques en [bloques de estudio y técnica Pomodoro](/blog/bloques-de-estudio-y-tecnica-pomodoro-para-opositores).

Un truco práctico: **ten el material de los huecos cortos siempre preparado** (fichas en el bolso, una aplicación de tests en el móvil, la lista de vocabulario en la nevera). Si tienes que buscar qué hacer, el hueco se va en decidir.

## Paso 3: según la edad de tus hijos

No hay reglas fijas, pero sí patrones que suelen repetirse:

- **Bebés y niños muy pequeños:** huecos cortos e imprevisibles. Prioriza tareas que se puedan interrumpir sin perder el hilo y protege los tramos largos con ayuda de otra persona.
- **Edad escolar:** el horario escolar da tramos fijos y previsibles; las tardes, menos. Un buen momento para estudiar puede ser mientras hacen sus deberes, en la misma mesa.
- **Adolescentes:** más autonomía, pero también necesitan tu tiempo. Explicarles lo que estás haciendo y por qué ayuda a que respeten tus bloques.

## Paso 4: reparte el cuidado, y ponlo por escrito

Si tienes pareja, acordad **franjas semanales** en las que el otro se hace cargo de los niños mientras estudias, y escribidlas en un calendario compartido. Hablarlo antes de empezar evita muchos conflictos: hay ideas en [opositar en pareja](/blog/opositar-en-pareja-como-compaginarlo-sin-que-se-resienta).

Si crías solo o sola, valora si algún familiar, amistad o recurso de tu zona puede cubrir uno o dos tramos fijos al mes, sobre todo para los simulacros. Las ayudas y servicios de conciliación varían según el lugar; pregunta en tu ayuntamiento o en los servicios sociales de tu zona.

## Paso 5: los simulacros, el reto de las condiciones de examen

La prueba de conocimientos teórico-prácticos dura **140 minutos seguidos** e incluye ortografía, gramática, las 100 preguntas de conocimientos y las 20 de inglés. Es justo lo más difícil de encajar con niños en casa, y lo que más conviene ensayar.

- **Planifícalos con semanas de antelación,** como una cita fija.
- **Busca un sitio sin interrupciones:** si en casa no es posible, una biblioteca o la casa de un familiar.
- **Si no puedes hacer 140 minutos,** haz al menos un simulacro de conocimientos completo cuando puedas y practica por separado ortografía, gramática e inglés; pero intenta llegar a hacer varios completos antes del examen.

Cada cuánto hacerlos y cómo sacarles partido: [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).

## Una semana tipo, para adaptar

**Caso hipotético** de una madre con dos hijos en primaria, que trabaja por las mañanas y comparte el cuidado con su pareja:

| Día | Estudio | Quién cuida |
| --- | --- | --- |
| Lunes a jueves | 21:30-22:30, temario o test; 20 min de fichas mientras los niños hacen deberes | Ella acuesta; él recoge la cocina |
| Viernes | Descanso de estudio; entrenamiento físico | — |
| Sábado | 9:00-11:30, simulacro o bloque largo de temario | La pareja |
| Domingo | 17:00-18:00, repaso de errores de la semana | La pareja |

Son algo menos de 9 horas semanales: menos que las de alguien con dedicación completa, y por eso **el plazo será más largo**. Eso no es un fallo del plan, es el plan.

## Cómo medir si el plan funciona

Con pocas horas, cada una cuenta, así que conviene comprobar cada mes si estás avanzando. Tres datos sencillos: la nota de tus simulacros, calculada con la fórmula oficial (aciertos menos un tercio de los errores); cuántos temas puedes responder sin apuntes con pocos fallos, y cuántas semanas has cumplido tu mínimo. Si las horas son las mismas pero la nota no se mueve en un mes, cambia el método (más preguntas, menos lectura) antes de intentar sacar más horas de donde no las hay.

## Entrenamiento físico

Las pruebas físicas también necesitan tiempo. Parte del entrenamiento puede hacerse con los niños (paseos, parque, bici) y lo específico, en sesiones breves y bien planificadas. Ante cualquier duda sobre cargas o lesiones, consulta con un profesional. Cómo combinarlo con el estudio: [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil).

## Piensa también en el después

Si apruebas, la formación en la Academia de Baeza es, con carácter general, en régimen de internado según la normativa de los centros docentes, y después vienen las prácticas y un destino que no eliges libremente. Con hijos, conviene pensar desde el principio quién se haría cargo de ellos durante ese tiempo y qué opciones tendríais como familia.

## Cuida tu energía

Dormir mal por los niños y estudiar de noche puede pasar factura. Si notas agotamiento persistente, irritabilidad o desánimo que no remite, **consúltalo con tu médico o con un profesional de la salud mental**. No es un problema de organización que se arregle con otro horario.

## Errores frecuentes

- **Copiar el plan de alguien sin cargas familiares.**
- **Usar los huecos cortos para temario nuevo** y frustrarte porque no avanzas.
- **Dejar los simulacros para el final** porque «no hay tiempo».
- **No tener el material preparado** para los huecos.
- **Sacrificar siempre el sueño** para estudiar.
- **Sentirte culpable** por el tiempo de estudio o por el tiempo con tus hijos. Ambos son legítimos.

## Checklist

- [ ] He auditado una semana real de mi tiempo.
- [ ] Sé qué tarea va en cada tipo de hueco.
- [ ] Tengo el material de los huecos cortos siempre a mano.
- [ ] El reparto del cuidado está escrito.
- [ ] Tengo fechas para los simulacros y quién se queda con los niños.
- [ ] He ajustado mi fecha objetivo a las horas reales.
- [ ] Reviso cada mes si el plan es sostenible.

Si buscas una estructura ya organizada, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) te evita diseñar el calendario desde cero.

## Preguntas frecuentes

### ¿Es posible opositar con hijos pequeños?

Sí, mucha gente lo hace, pero requiere reajustar tiempos y pedir apoyo. No hay una garantía de plazo.

### ¿Cuántas horas puedo estudiar al día?

Las que tu situación permita de forma sostenible. Es mejor una cantidad menor y constante que una semana intensa seguida de dos sin estudiar.

### ¿Sirven de algo los ratos de diez minutos?

Sí, si los usas para recuperar lo estudiado: fichas, preguntas, vocabulario. No sirven tanto para temario nuevo.

### ¿Cómo hago los simulacros de 140 minutos?

Planifícalos con antelación y con alguien que se quede con los niños, en casa o fuera. Intenta hacer varios completos antes del examen.

### ¿Debo esperar a que los niños sean mayores?

Es una decisión personal. Ten en cuenta la edad máxima: no cumplir 41 años en el año de la convocatoria. Revisa los [requisitos](/blog/requisitos-guardia-civil).

### ¿Y si tardo más que otros en estar preparado?

Es lo esperable si tienes menos horas. Mide tu avance con tus simulacros, no con el calendario de otros.',
   '/blog/opositar-con-hijos-un-plan-de-estudio-realista-guardia-civil.jpg', 'Madre estudiando en la mesa de la cocina mientras su hija dibuja a su lado', 'publicado', '2027-02-15T06:17:00.000Z', 'acceso-guardia-civil',
   ARRAY['conciliación', 'hijos', 'planificación', 'organización']::text[], '{"title":"Opositar con hijos: plan de estudio realista","description":"Cómo preparar la oposición a Guardia Civil con hijos: auditar tu tiempo, bloques cortos, reparto del cuidado, simulacros de 140 minutos y semana tipo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('opositar-en-pareja-como-compaginarlo-sin-que-se-resienta', 'articulo', 'Opositar en pareja: cómo organizarlo para cuidar la relación', 'Preparar una oposición cambia el ritmo de la casa y de la relación. Acuerdos prácticos para opositar con pareja: la conversación inicial, tiempos, tareas, dinero, qué pasa si apruebas y qué hacer si opositáis los dos.', 'La oposición no la prepara solo quien se sienta a estudiar: también la vive quien comparte casa con él o con ella. Fines de semana de simulacro, entrenamientos, planes cancelados y un estado de ánimo que sube y baja con los resultados afectan a la pareja, aunque no se hable de ello.

**Respuesta corta:** habla de la preparación antes de empezar y pacta cosas concretas: horarios de estudio, tiempo juntos que no se toca, reparto de tareas, dinero y qué haréis si se alarga o si apruebas y te toca irte. Lo que no se acuerda suele acabar en reproches. Revisad los acuerdos cada mes. Y no hay una fórmula única: cada pareja es distinta.

## Antes de empezar: una conversación con datos

Opositar no es un esfuerzo de un mes. Para que la conversación sea realista, conviene que los dos sepáis cómo es el proceso: lo tienes resumido en [preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero), y la dedicación orientativa en [cuántas horas al día estudiar](/blog/cuantas-horas-al-dia-hay-que-estudiar-para-la-guardia-civil).

Un guion de preguntas para esa primera charla:

1. **¿Cuánto tiempo estimo que voy a necesitar?** ¿Qué pasa si no entro a la primera y hay que repetir convocatoria?
2. **¿Qué horarios voy a necesitar** para estudiar y entrenar, y cuáles chocan con los de la casa?
3. **¿Qué cambia en las tareas?** ¿Quién asume qué, y durante cuánto tiempo?
4. **¿Qué cambia en el dinero?** Si reduzco horas de trabajo o pago academia, ¿cómo lo cubrimos?
5. **¿Qué necesito de ti, y qué no?** Apoyo no es lo mismo que control de horas ni exigencia de resultados.
6. **¿Qué pasa si apruebo?** La formación y el destino implican cambios que conviene hablar antes.

No hace falta resolverlo todo el primer día. Hace falta que ninguna de estas preguntas os pille por sorpresa dentro de seis meses.

## Acuerdos prácticos que suelen ayudar

| Tema | Ejemplo de acuerdo |
| --- | --- |
| Tiempo de estudio | Franjas fijas, visibles en un calendario compartido |
| Tiempo juntos | Uno o dos momentos a la semana que no se tocan |
| Tareas del hogar | Reparto escrito y revisado cada mes, no improvisado |
| Fines de semana | Sábado de simulacro; domingo libre o ligero |
| Dinero | Presupuesto realista si se reducen ingresos o hay gastos de preparación |
| Señal de «ahora no» | Una forma acordada de pedir que no te interrumpan sin que suene a rechazo |

Que haya **tiempo juntos protegido** evita que la oposición se convierta en lo que se lo lleva todo. Y que haya **tiempo de estudio protegido** evita las interrupciones constantes. Es un trato de ida y vuelta: si tú pides respeto para tus bloques, el tiempo pactado juntos también se respeta.

### Ejemplo propio de semana compartida

**Caso hipotético** de una pareja en la que solo uno oposita y los dos trabajan:

| Día | Opositor | Tiempo juntos |
| --- | --- | --- |
| Lunes a jueves | Estudio de 17:00 a 20:00; entrenamiento 3 días | Cena juntos, sin temario |
| Viernes | Estudio corto, 1 hora | Plan juntos por la noche |
| Sábado | Simulacro y corrección por la mañana | Tarde libre |
| Domingo | Descanso o repaso ligero de 1 hora | Día compartido |

Las tareas de casa se reparten de forma que quien oposita asume más el fin de semana y menos entre semana. Al final de cada mes revisan qué ha funcionado.

## El dinero, sin tabúes

Preparar una oposición tiene costes: material o academia, quizá menos horas de trabajo, desplazamientos al examen. Algunos son pequeños (la tasa de examen de la convocatoria de 2026 fue de 11,66 €, con reducciones y exenciones en algunos supuestos), pero otros pesan. Hacer juntos un presupuesto mensual y decidir hasta cuándo es sostenible evita discusiones que en realidad no son sobre la oposición, sino sobre dinero.

## Si apruebas: lo que conviene hablar antes

Aprobar no es el final del cambio. Después de la oposición viene la formación en la Academia de Baeza (Jaén), donde la normativa establece con carácter general el **régimen de internado**; lo tienes explicado en [la vida en la Academia de Baeza](/blog/un-dia-en-la-academia-de-baeza-horarios-normas-y-permisos). Después vienen las prácticas y la asignación de destino, que no se elige libremente y puede estar lejos de casa.

No sabemos dónde os tocará ni cuánto tiempo estaréis separados, y nadie os lo puede asegurar de antemano. Por eso conviene hablar **antes** de empezar qué haríais si te toca irte: si la pareja se mudaría, si mantendríais la relación a distancia una temporada, qué pasa con el trabajo del otro.

## Lo que conviene que la pareja sepa

- **Las notas de un simulacro no miden quién eres.** Si cada resultado malo se vive como drama en casa, la presión se multiplica. Cómo leer esos resultados está en [simulacros: cada cuánto hacerlos y cómo analizarlos](/blog/simulacros-cada-cuanto-hacerlos-y-como-analizar-los-resultados).
- **El resultado depende de factores que no controla nadie,** como la nota de corte de cada año, que cambia mucho de una convocatoria a otra. Está explicado en [la nota de corte](/blog/nota-de-corte-guardia-civil).
- **Los días malos existen** y no significan que algo vaya mal en la relación.
- **Preguntar «¿cuánto has estudiado hoy?»** puede sonar a control aunque no lo sea. Mejor preguntar «¿cómo te ha ido?».

## Si opositáis los dos

Opositar a la vez tiene ventajas claras: os entendéis, compartís calendario y podéis haceros preguntas del temario el uno al otro, que es una forma sencilla de practicar la recuperación (intentar recordar sin mirar), una de las técnicas de estudio con más respaldo. También tiene riesgos:

- **Comparaciones.** Cada uno tiene su ritmo y su punto de partida; las notas no se comparan en la cena.
- **Un solo espacio para dos.** Alternad quién usa la mesa o la habitación tranquila y respetad los bloques del otro.
- **Resultados desiguales.** Las plazas no son una competición entre vosotros, pero uno puede aprobar y el otro no. Hablad antes de qué haréis en ese caso.
- **Destinos.** Que los dos aprobéis no garantiza que os destinen al mismo sitio; no lo deis por hecho. Más en [destinos y especialidades](/blog/destinos-especialidades-guardia-civil).

## Caso práctico

**Caso hipotético.** Marta oposita y Dani trabaja a turnos. Los primeros dos meses discuten cada sábado: él quiere aprovechar su día libre y ella tiene simulacro. En lugar de discutir cada semana, se sientan con el calendario de turnos de él y fijan el simulacro en los sábados en que Dani trabaja, y los sábados libres de él, el simulacro pasa al domingo por la mañana. No han cambiado las horas de estudio; han cambiado cuándo.

## Señales para hablar a tiempo

Si discutís siempre por lo mismo, si uno de los dos se siente invisible o si el estrés de la oposición se contagia a todo, **no esperéis a que explote**. Parad, revisad los acuerdos y, si hace falta, buscad ayuda profesional (un psicólogo o terapia de pareja). No es un signo de debilidad, y cuanto antes, más fácil.

## Errores frecuentes

- **Empezar sin hablarlo,** dando por hecho que la pareja «ya lo entenderá».
- **Acuerdos de palabra que nadie recuerda.** Mejor por escrito y en un calendario compartido.
- **Cancelar siempre el tiempo juntos** porque «esta semana es importante».
- **Usar la oposición como excusa** para no hacer nada en casa durante meses.
- **No hablar de qué pasa si apruebas** hasta que llega la carta.

## Checklist para la pareja

- [ ] Hemos hablado de duración, horarios, tareas y dinero.
- [ ] Hay un calendario compartido con los bloques de estudio.
- [ ] Hay tiempo juntos protegido cada semana.
- [ ] El reparto de tareas está escrito y se revisa cada mes.
- [ ] Hemos hablado de qué pasa con Baeza y el destino si apruebo.
- [ ] Sabemos qué hacer si las discusiones se repiten.

Si te interesa un plan estructurado que podáis consultar los dos, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye calendario.

## Preguntas frecuentes

### ¿Es compatible opositar con tener pareja?

Sí, mucha gente lo hace. Requiere acuerdos claros y revisarlos con el tiempo.

### ¿Cómo evito que la oposición lo ocupe todo?

Protege tiempos de ocio compartido y respeta tus descansos. Un calendario común ayuda a que los dos sepáis qué toca cada día.

### ¿Qué hago si mi pareja me presiona con los resultados?

Habladlo en un momento tranquilo y explica qué tipo de apoyo necesitas. Si la situación persiste, un profesional puede ayudaros.

### ¿Y si opositamos los dos a la vez?

Es posible y tiene ventajas, como preguntaros el temario. Evitad las comparaciones y acordad de antemano qué haréis según los resultados.

### ¿Nos destinarán juntos si aprobamos los dos?

No se puede dar por hecho. La asignación de destinos sigue su propio procedimiento; consulta la normativa vigente cuando llegue el momento.

### ¿Hay que irse de casa durante la formación?

Con carácter general, la formación en la Academia de Baeza es en régimen de internado, según la normativa de los centros docentes. Conviene hablarlo en pareja antes de empezar.',
   NULL, NULL, 'publicado', '2027-02-14T06:00:00.000Z', 'acceso-guardia-civil',
   ARRAY['pareja', 'conciliación', 'organización', 'opositor']::text[], '{"title":"Opositar en pareja: cómo organizarlo en casa","description":"Cómo compaginar la oposición a Guardia Civil con tu pareja: conversación inicial, tiempos, tareas, dinero, Baeza y qué hacer si opositáis los dos."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('responsabilidad-penal-de-los-menores-lo-5-2000-lo-que-mas', 'articulo', 'Responsabilidad penal de los menores (LO 5/2000): claves del tema', 'La LO 5/2000 se aplica a mayores de catorce y menores de dieciocho años. Edad, jueces, detención en 24 y 48 horas, medidas y su duración, prescripción y estructura del tema 20, con caso práctico y test propio.', 'La [Ley Orgánica 5/2000, de 12 de enero, reguladora de la responsabilidad penal de los menores](https://www.boe.es/buscar/act.php?id=BOE-A-2000-641) es el **tema 20** del programa y entra completa (consulta el [temario](/temario-guardia-civil)). Es una ley muy práctica para quien va a detener, custodiar y tomar declaración a menores.

**Respuesta corta:** se aplica a quienes tengan **más de catorce y menos de dieciocho años** cuando cometen el hecho. Por debajo de catorce no hay responsabilidad con arreglo a esta ley, sino medidas de protección de menores. La detención policial de un menor dura como máximo **24 horas** y el Fiscal resuelve dentro de las **48 horas** desde la detención.

## Estructura de la ley

| Título | Artículos | Contenido |
|---|---|---|
| Preliminar | 1 | Declaración general |
| I | 2 a 6 | Ámbito: jueces, menores de 14, víctimas, bases de la responsabilidad, Fiscal |
| II | 7 a 15 | Medidas: tipos, duración, reglas especiales, mayoría de edad, prescripción |
| III | 16 a 30 | Instrucción: incoación, detención, desistimiento, conciliación, medidas cautelares |
| IV | 31 a 37 | Fase de audiencia |
| V | 38 a 40 | Sentencia |
| VI | 41 y 42 | Recursos |
| VII | 43 a 60 | Ejecución de las medidas, centros y derechos de los internados |
| VIII | 61 a 64 | Responsabilidad civil |

## Ámbito: edad, jueces y Fiscal

- **Art. 1**: responsabilidad de los mayores de catorce y menores de dieciocho por hechos tipificados como delitos (el texto mantiene «o faltas») en el Código Penal o las leyes penales especiales. Gozan de todos los derechos de la Constitución, de la LO 1/1996 de Protección Jurídica del Menor y de la Convención sobre los Derechos del Niño.
- **Art. 3**: si el autor es **menor de catorce**, se aplican las normas de protección de menores; el Fiscal remite testimonio a la entidad pública de protección.
- **Art. 5.3**: las edades se refieren al **momento de la comisión de los hechos**; cumplirlas después no cambia la competencia.
- **Art. 2**: competen los **Jueces de Menores** del lugar del hecho, también para la responsabilidad civil. Los delitos de terrorismo (arts. 571 a 580 del Código Penal) y los cometidos por menores en el extranjero cuando sean competencia española corresponden al **Juzgado Central de Menores de la Audiencia Nacional**.
- **Art. 6**: el **Ministerio Fiscal** defiende los derechos del menor, **dirige personalmente la investigación** y ordena a la policía judicial las actuaciones necesarias.

Desde 2025, la LO 1/2025 ha transformado los juzgados en secciones de los tribunales de instancia (los de menores, en Secciones de Menores), pero la LO 5/2000 conserva la denominación de «Jueces de Menores»: en el examen, usa la de la ley.

## La detención de menores (art. 17)

Es el artículo más relevante para el trabajo policial:

| Regla | Contenido |
|---|---|
| Forma | La que **menos perjudique** al menor; información inmediata y en lenguaje claro de los hechos, las razones y sus derechos (art. 520 LECrim) |
| Notificación | Inmediata a los **representantes legales** y al **Ministerio Fiscal**; si es extranjero con residencia habitual fuera de España, a las autoridades consulares |
| Declaración | Siempre en presencia de su **letrado** y de quienes ejerzan la patria potestad, tutela o guarda, salvo que las circunstancias aconsejen lo contrario; en su defecto, ante el Fiscal (persona distinta del instructor). Entrevista reservada con el abogado antes y después |
| Custodia | En dependencias **adecuadas y separadas** de las de los mayores de edad |
| Plazo policial | Lo estrictamente necesario y, **como máximo, 24 horas**: libertad o puesta a disposición del Fiscal |
| Plazo del Fiscal | Resuelve **dentro de las 48 horas desde la detención**: libertad, desistimiento o incoación del expediente |
| Habeas corpus | Juez de Instrucción del lugar donde esté el menor |

Compáralo con las 72 horas del régimen general que explicamos en [detención y habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre).

## Las medidas (art. 7)

El juez puede imponer, ordenadas de mayor a menor restricción de derechos: internamiento en régimen **cerrado, semiabierto o abierto**; internamiento terapéutico; tratamiento ambulatorio; asistencia a centro de día; **permanencia de fin de semana** (hasta 36 horas entre el viernes y el domingo); **libertad vigilada**; prohibición de aproximarse o comunicarse con la víctima; convivencia con otra persona, familia o grupo educativo; **prestaciones en beneficio de la comunidad** (que no pueden imponerse sin su consentimiento); tareas socioeducativas; **amonestación**; privación del permiso de conducir o de licencias de caza o armas; e inhabilitación absoluta.

Para elegirlas se atiende «de modo flexible» no solo a los hechos, sino especialmente a la **edad, las circunstancias familiares y sociales, la personalidad y el interés del menor** (art. 7.3). Las medidas de internamiento tienen dos periodos: uno en el centro y otro en libertad vigilada (art. 7.2). En los delitos contra la libertad sexual (capítulos I y II del título VIII del Código Penal) se impone además la obligación de seguir **programas de educación sexual y de educación en igualdad** (art. 7.5, añadido por la LO 10/2022).

## Duración de las medidas (arts. 9 y 10)

| Supuesto | Límite |
|---|---|
| Regla general (art. 9.3) | **2 años**; prestaciones, 100 horas; fines de semana, 8 |
| Internamiento cerrado (art. 9.2) | Solo delitos graves; menos graves con violencia, intimidación o grave riesgo; o cometidos en grupo o banda |
| Hechos imprudentes (art. 9.4) | Nunca internamiento en régimen cerrado |
| Casos del 9.2, menor de 14 o 15 años (art. 10.1.a) | Hasta 3 años |
| Casos del 9.2, menor de 16 o 17 años (art. 10.1.b) | Hasta 6 años |
| Delitos del art. 10.2 (asesinato, homicidio, ciertos delitos sexuales, terrorismo o penas de 15 años o más), 14-15 años | Internamiento cerrado de 1 a 5 años + libertad vigilada hasta 3 |
| Mismos delitos, 16-17 años | Internamiento cerrado de 1 a 8 años + libertad vigilada hasta 5 |

Al cumplir los **18 años** sigue la medida; si es internamiento cerrado y la conducta no responde a los objetivos, el juez puede ordenar su cumplimiento en un centro penitenciario. A los **21 años**, el juez lo ordenará salvo que excepcionalmente aprecie otra solución (art. 14).

## Prescripción (art. 15)

| Hecho | Prescribe |
|---|---|
| Homicidio, asesinato, ciertos delitos sexuales, terrorismo y delitos con pena de 15 años o más | Según el Código Penal |
| Delito grave con pena superior a 10 años | 5 años |
| Otros delitos graves | 3 años |
| Delitos menos graves | 1 año |

## Salidas alternativas al juicio

- **Desistimiento** (art. 18): el Fiscal puede no incoar expediente en delitos menos graves sin violencia ni intimidación, salvo que el menor haya cometido antes hechos de la misma naturaleza.
- **Conciliación o reparación** (art. 19): puede desistir de continuar el expediente si el menor se concilia con la víctima o se compromete a reparar el daño o a cumplir una actividad educativa.

## Caso práctico (hipotético)

Una patrulla sorprende a un chico de 15 años forzando motos en una zona rural. Lo detienen a las 22:00.

1. Le informan en lenguaje claro de los hechos, los motivos y sus derechos, y comunican de inmediato la detención a sus padres y al Fiscal.
2. Queda custodiado en una dependencia separada de los adultos.
3. Si se le toma declaración, será con su abogado y, salvo que no proceda, con sus padres.
4. Como máximo a las 22:00 del día siguiente debe estar en libertad o a disposición del Fiscal.
5. El Fiscal decide antes de las 22:00 del segundo día (48 horas desde la detención).

Si tuviera 13 años, no se le aplicaría esta ley: el Fiscal remitiría testimonio a la entidad de protección (art. 3).

## Errores frecuentes

- Aplicar la ley a los menores de 14 años.
- Tomar la edad del juicio y no la del hecho (art. 5.3).
- Confundir las 24 horas de la policía con las 48 del Fiscal, que se cuentan **desde la detención**.
- Pensar que dirige la investigación el juez: la dirige el **Fiscal** (art. 6).
- Olvidar que la duración general es de dos años y que las reglas del artículo 10 son excepciones.

## Mini test (preguntas propias)

1. La LO 5/2000 se aplica a: a) menores de 18; b) mayores de 12 y menores de 18; c) mayores de 14 y menores de 18; d) mayores de 16 y menores de 21.
2. La detención policial de un menor no puede superar: a) 6 horas; b) 24 horas; c) 48 horas; d) 72 horas.
3. Dirige la investigación en el procedimiento de menores: a) el Juez de Menores; b) la policía judicial; c) el Ministerio Fiscal; d) el equipo técnico.
4. Con carácter general, las medidas no pueden exceder de: a) 1 año; b) 2 años; c) 3 años; d) 5 años.
5. Un delito menos grave cometido por un menor prescribe: a) a los 3 meses; b) al año; c) a los 3 años; d) a los 5 años.

**Soluciones:** 1-c (art. 1.1); 2-b (art. 17.4); 3-c (art. 6); 4-b (art. 9.3); 5-b (art. 15.1).

## Cómo estudiarla

Aprende la edad y el art. 17 casi literalmente, haz la tabla de duraciones y esquematiza las fases (instrucción, audiencia, sentencia, recursos y ejecución). Relaciónala con los [conceptos de delito y penas](/blog/derecho-penal-para-guardia-civil-delito-penas-y-grados) y con el trato a colectivos vulnerables del [Código de Conducta](/blog/deontologia-profesional-el-codigo-de-conducta-que-entra). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye este tema.

## Preguntas frecuentes

### ¿Desde qué edad se responde penalmente según esta ley?

Desde los catorce años cumplidos y hasta los dieciocho, referidos al momento del hecho (arts. 1 y 5.3).

### ¿Qué ocurre con un menor de catorce años?

No se le aplica la LO 5/2000: se aplican las normas de protección de menores y el Fiscal remite testimonio a la entidad pública de protección (art. 3).

### ¿Cuánto puede durar la detención policial de un menor?

Lo estrictamente necesario y, como máximo, 24 horas; después, libertad o puesta a disposición del Fiscal, que resuelve dentro de las 48 horas desde la detención (art. 17).

### ¿Puede declarar un menor sin abogado?

No. Toda declaración del menor detenido se hace en presencia de su letrado (art. 17.2).

### ¿Qué pasa si cumple 18 años durante la medida?

Sigue cumpliéndola; en internamiento cerrado, el juez puede ordenar que continúe en un centro penitenciario si no responde a los objetivos, y a los 21 años lo ordenará salvo excepción (art. 14).

### ¿Qué ley regula esta materia hoy?

La LO 5/2000, modificada varias veces; la última reforma que recoge el texto consolidado es la de la LO 1/2025, que afectó a los artículos 4 y 23. Trabaja siempre con la versión vigente.',
   NULL, NULL, 'publicado', '2027-02-10T06:52:00.000Z', 'acceso-guardia-civil',
   ARRAY['lo 5/2000', 'menores', 'temario', 'detención']::text[], '{"title":"Responsabilidad penal de menores LO 5/2000: resumen","description":"LO 5/2000 para opositores: ámbito de edad, menores de 14 años, detención de menores, medidas y duración, prescripción, estructura de la ley y test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('tasas-de-examen-de-la-guardia-civil-importe-y-exenciones', 'articulo', 'Tasas de examen de la Guardia Civil: importe y exenciones', 'En la convocatoria de 2026 la tasa de examen fue de 11,66 euros, con 5,83 euros para familias numerosas de categoría general y exención en tres supuestos. Qué dice la base 3.3, cómo se acredita y cuándo se devuelve.', '**Respuesta corta:** en la convocatoria de 2026, los derechos de examen para ingresar en la Escala de Cabos y Guardias fueron de **11,66 euros** con carácter general. Las familias numerosas de **categoría general** pagaron **5,83 euros** (bonificación del 50 %), y quedaron **exentos** los demandantes de empleo que cumplían ciertas condiciones, las familias numerosas de **categoría especial** y las **víctimas del terrorismo** y determinados familiares. Son datos de la convocatoria de 2026: la de 2027, cuando se publique, puede fijar otros.

La fuente es la base 3.3 de la [convocatoria de 2026 (BOE-A-2026-9982)](https://www.boe.es/diario_boe/txt.php?id=BOE-A-2026-9982).

## Resumen en una tabla

| Situación | Qué pagas | Base |
|---|---|---|
| Caso general | 11,66 € | 3.3.1 |
| Familia numerosa de categoría general | 5,83 € | 3.3.3 |
| Familia numerosa de categoría especial | 0 € | 3.3.2 |
| Demandante de empleo con los requisitos de la base | 0 € | 3.3.2 |
| Víctima del terrorismo y familiares previstos | 0 € | 3.3.2 |

## Importe general

La base 3.3.1 fija **once euros con sesenta y seis céntimos (11,66 euros)** en concepto de derechos de examen «con carácter general». El pago es telemático, dentro del propio procedimiento de [solicitud en la sede electrónica](/blog/como-rellenar-la-solicitud-de-la-guardia-civil-paso-a-paso).

Un dato útil: hemos comprobado en el BOE que las convocatorias de **2023, 2024 y 2025** fijaron exactamente los mismos importes, 11,66 euros y 5,83 euros. Esa estabilidad no garantiza nada para 2027, pero sí indica que no conviene creer cifras muy distintas sin ver el texto. Recuerda también que la tasa no la fija la [oferta de empleo público](/blog/oferta-de-empleo-publico-2027-que-es-y-que-significa-para-ti), que solo autoriza plazas, sino la convocatoria de cada año.

## Bonificación del 50 %: familia numerosa general

Quien acredite ser miembro de una **familia numerosa de categoría general** paga **5,83 euros** (base 3.3.3). La acreditación es el **título de familia numerosa en vigor**, expedido por la comunidad autónoma correspondiente.

Atención a dos detalles: el título debe estar **en vigor**, y la bonificación es solo para la categoría general. Si tu familia es de categoría especial, no te corresponde la bonificación, sino la exención total.

## Las exenciones, una por una

### 1. Demandantes de empleo

Están exentos quienes cumplan **a la vez** estas tres condiciones (base 3.3.2):

- figurar como demandantes de empleo durante, al menos, **un mes anterior a la fecha de publicación** de la convocatoria;
- no haber rechazado en ese plazo una oferta de empleo adecuado ni haberse negado, sin causa justificada, a participar en acciones de promoción, formación o reconversión profesionales;
- **no tener rentas superiores, en cómputo mensual, al salario mínimo interprofesional**.

Se acredita con una **certificación del Servicio Público de Empleo Estatal** sobre esa condición y requisitos, y con una **declaración escrita** del propio aspirante sobre sus rentas.

Fíjate en la fecha: el mes se cuenta hacia atrás **desde la publicación de la convocatoria**, no desde que presentas la solicitud. Si te inscribes como demandante después de que salga la convocatoria, no llegas.

### 2. Familia numerosa de categoría especial

Exención total, acreditada con el título de familia numerosa en vigor.

### 3. Víctimas del terrorismo

Están exentas las personas que hayan sufrido daños físicos o psíquicos como consecuencia de la actividad terrorista y lo acrediten mediante **sentencia judicial firme o resolución administrativa** que reconozca esa condición. La exención alcanza también a:

- sus **hijos**;
- su **cónyuge** o la persona con quien hayan convivido en análoga relación de afectividad durante **los últimos dos años**;
- los **hijos y el cónyuge del fallecido**.

## Qué modalidad elegir: árbol de decisión

Al inscribirte tienes que escoger entre tres modalidades. Hazte estas preguntas en este orden:

1. **¿Eres víctima del terrorismo, o hijo, cónyuge o pareja de hecho en los términos de la base?** Si puedes acreditarlo con sentencia firme o resolución administrativa, elige **con exención**.
2. **¿Tu familia numerosa es de categoría especial y el título está en vigor?** Elige **con exención**.
3. **¿Eras demandante de empleo al menos un mes antes de la publicación, sin rechazar ofertas ni acciones de formación, y sin rentas mensuales por encima del salario mínimo?** Si cumples las tres cosas, elige **con exención**.
4. **¿Tu familia numerosa es de categoría general y el título está en vigor?** Elige **con bonificación** y paga 5,83 euros.
5. **Si no encajas en nada de lo anterior**, elige **sin reducción** y paga 11,66 euros.

Si dudas entre dos opciones, quédate con la que puedas demostrar con un documento. Y si tu caso no encaja claramente, la convocatoria de 2026 indica que las dudas sobre la inscripción las resuelve la Jefatura de Enseñanza, con los teléfonos y el correo que da su base 4.10.

## Cuándo y cómo se acredita

La convocatoria distingue dos momentos:

1. **Al inscribirte**, eliges la modalidad: sin reducción, con bonificación o con exención.
2. **Después**, la Jefatura de Enseñanza comprueba los datos. La solicitud lleva implícita tu autorización para consultarlos de oficio en otras administraciones, entre ellas el Servicio Público de Empleo Estatal y la Dirección General de Apoyo a Víctimas del Terrorismo (base 2.3). Si no das esa autorización o falla la consulta, te pedirán los documentos (título de familia numerosa, certificación de demandante de empleo con declaración de rentas o resolución de víctima del terrorismo) cuando lo requiera el Tribunal de Selección.

Pide solo la exención o la bonificación que puedas acreditar: la comprobación llega, aunque sea más tarde.

## Devolución de la tasa

La base 3.3.4 se remite al artículo 12 de la **Ley 8/1989, de Tasas y Precios Públicos**: **procede devolver** lo pagado cuando **no se realice el hecho imponible por causas no imputables al interesado**. Y lo dice expresamente al revés: **no hay devolución si te excluyen por una causa que te sea imputable**, por ejemplo por no cumplir un requisito.

| Situación | ¿Se devuelve? |
|---|---|
| Te excluyen por no cumplir un requisito de la base 2 | No: es causa imputable a ti |
| No subsanas un defecto en el plazo de diez días | No, por la misma razón |
| No se realiza el hecho imponible por causas ajenas a ti | Sí, según la Ley 8/1989 |

Por eso conviene comprobar [los requisitos](/blog/requisitos-guardia-civil) antes de pagar, no después.

## Casos prácticos (hipotéticos)

- **Elena** es de una familia numerosa general con el título caducado desde hace dos meses. Antes de inscribirse lo renueva en su comunidad autónoma, porque la base exige el título **en vigor**. Paga 5,83 euros.
- **Rubén** se apunta al paro el día que sale la convocatoria. No puede pedir la exención: le falta el mes previo a la publicación. Paga 11,66 euros.
- **Ana** es hija de una víctima del terrorismo con resolución administrativa que reconoce esa condición. Elige la modalidad con exención y conserva la resolución por si el Tribunal se la pide.

Son ejemplos inventados para ilustrar cómo se aplican las bases de 2026.

## Errores frecuentes

- **Elegir «con exención» sin cumplir los tres requisitos** del demandante de empleo.
- **Confundir categoría general y especial** de familia numerosa.
- **Usar un título de familia numerosa caducado.**
- **Contar el mes de demandante desde la solicitud** y no desde la publicación.
- **Pagar sin comprobar requisitos** y esperar que te devuelvan la tasa si te excluyen.

## Checklist

- [ ] Sé qué modalidad me corresponde: sin reducción, bonificación o exención.
- [ ] Tengo el documento que lo acredita, en vigor.
- [ ] Si soy demandante de empleo, lo era al menos un mes antes de la publicación.
- [ ] He comprobado los requisitos antes de pagar.
- [ ] Guardo el justificante de pago y de registro.

Para saber cómo se estructura el resto del proceso, lee la [convocatoria de 2026 y su calendario](/blog/convocatoria-guardia-civil-2026-plazas-calendario) y, para el año que viene, lo que se sabe de [la convocatoria de 2027](/blog/convocatoria-guardia-civil-2027-que-se-sabe-y-cuando-saldra). Si quieres un método de estudio, está el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil).

## Preguntas frecuentes

### ¿Cuánto cuesta presentarse a la oposición de la Guardia Civil?

En la convocatoria de 2026, 11,66 euros de derechos de examen con carácter general. La cifra de 2027 dependerá de su convocatoria.

### ¿Quién está exento de pagar la tasa?

En 2026: demandantes de empleo con las condiciones de la base 3.3.2, familias numerosas de categoría especial y víctimas del terrorismo y los familiares que prevé la base.

### ¿Cuánto paga una familia numerosa?

Categoría general: 5,83 euros (bonificación del 50 %). Categoría especial: nada, porque está exenta.

### ¿Tengo que adjuntar el título de familia numerosa al inscribirme?

No necesariamente: la Jefatura de Enseñanza puede consultarlo de oficio. Si no autorizas la consulta o falla, lo presentarás cuando lo pida el Tribunal.

### ¿Me devuelven la tasa si no me admiten?

Solo si la causa no te es imputable. Si te excluyen por algo atribuible a ti, no se devuelve.

### ¿La tasa ha cambiado en los últimos años?

No en las convocatorias de 2023 a 2026 que hemos comprobado: 11,66 euros y 5,83 euros con bonificación.',
   NULL, NULL, 'publicado', '2027-02-16T06:34:00.000Z', 'acceso-guardia-civil',
   ARRAY['tasas', 'derechos de examen', 'exenciones', 'familia numerosa']::text[], '{"title":"Tasas examen Guardia Civil: importe y exenciones","description":"Tasa de examen de la Guardia Civil en la convocatoria 2026: 11,66 euros, 5,83 para familia numerosa general y quién está exento según la base 3.3."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

