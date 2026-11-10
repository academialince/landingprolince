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
   NULL, NULL, 'publicado', '2026-12-29T06:41:00.000Z', 'acceso-guardia-civil',
   ARRAY['armas', 'explosivos', 'tema 22', 'reglamentos']::text[], '{"title":"Armas y explosivos: temario Guardia Civil (tema 22)","description":"Tema 22 de Guardia Civil: categorías de armas, licencias, tarjetas y guías del RD 137/1993 y claves del Reglamento de Explosivos (RD 130/2017), con test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('como-estudiar-la-oposicion-en-navidad-sin-perder-el-ritmo', 'articulo', 'Cómo estudiar la oposición en Navidad sin perder el ritmo', 'Las fiestas rompen horarios y tientan a dejarlo todo hasta enero. Un método realista para mantener el hábito de estudio y de entrenamiento sin renunciar a las cenas: mínimos diarios, tipos de día, plan de dos semanas y errores que conviene evitar.', '**Respuesta corta: en Navidad no hace falta estudiar como en octubre, pero sí hace falta estudiar.** Lo que más pesa en estas fechas no es la cantidad de horas, sino que el hábito no se rompa. Retomar tras dos semanas en blanco suele costar bastante más que mantener un ritmo pequeño y constante.

Una advertencia antes de empezar: no existen datos oficiales que midan cuánto temario se olvida por parar unos días. Lo que sigue es organización razonable, basada en técnicas de estudio conocidas (repaso, práctica con preguntas, planificación previa), no una fórmula mágica ni una cifra garantizada.

## Por qué las fiestas son un riesgo para el hábito

- **Se rompen las rutinas**: comidas tardías, viajes, visitas y cenas que antes no existían.
- **Desaparece la señal de «hoy toca estudiar»**: sin horario fijo, el estudio pasa a depender de la fuerza de voluntad, que es justo lo que más escasea a las once de la noche de un 24.
- **Aparece la culpa en las dos direcciones**: quien estudia siente que se pierde las fiestas; quien no estudia siente que se pierde la oposición.
- **Se acumulan las excusas razonables**: cada día, por separado, tiene un buen motivo para no estudiar. El problema es la suma.

La solución no es endurecerse, sino **decidir de antemano** qué vas a hacer y qué no, y dejarlo escrito.

## Paso 1: fija un mínimo innegociable

Define un mínimo tan pequeño que puedas cumplirlo incluso el peor día. Por ejemplo, **una sola sesión corta al día**, a la hora en que menos te molesten (para mucha gente, a primera hora). El mínimo protege el hábito; lo que añadas encima es un extra.

Ejemplos de mínimo válido (ideas propias, ajústalas a tu caso):

| Mínimo | Qué haces | Material |
|---|---|---|
| Lectura activa | Un epígrafe de un tema, subrayando y resumiendo en tres líneas | Temario y libreta |
| Tanda de test | Preguntas sobre lo estudiado en la semana, corrigiendo cada fallo | Test propios o de tu academia |
| Repaso de esquemas | Recorrer tus cuadros o tarjetas y decir en voz alta lo que recuerdas | Esquemas propios |
| Mini psicotécnico | Unos minutos de series o razonamiento | Cuaderno de ejercicios |

Si el día se complica, el mínimo se hace igual. Si sale bien, añades.

## Paso 2: reparte los días en tres tipos

| Tipo de día | Qué haces | Cuándo |
|---|---|---|
| **Día normal** | Tu mínimo más una sesión de estudio o repaso | Mañanas tranquilas, tardes sin compromisos |
| **Día de fiesta** (24, 25, 31, 1 y 6) | Solo el mínimo, a primera hora | Antes de que empiece el día |
| **Día de viaje** | Repaso ligero o test en el móvil | Trayectos y esperas |

Marca en un calendario cuáles son de cada tipo **antes** de que empiecen las fiestas. Si lo decides cada mañana, ganará siempre el sofá.

## Paso 3: un ejemplo de plan para dos semanas

Este es un ejemplo hipotético para alguien que no trabaja en esas fechas; adáptalo a tus turnos, viajes y compromisos.

| Fecha | Tipo | Propuesta |
|---|---|---|
| 23 dic | Normal | Repaso de un tema jurídico + test de ese tema |
| 24 dic | Fiesta | Mínimo: test corto a primera hora |
| 25 dic | Fiesta | Mínimo: repaso de esquemas |
| 26-30 dic | Normales | Repaso por bloques + un simulacro parcial a mitad de semana |
| 31 dic | Fiesta | Mínimo: test de inglés |
| 1 ene | Fiesta | Mínimo: o descanso completo, si lo has decidido antes |
| 2-5 ene | Normales | Repaso de los temas peor llevados + corrección de errores |
| 6 ene | Fiesta | Mínimo y preparación de la semana siguiente |

Fíjate en dos cosas: el descanso completo, si lo quieres, va **planificado**, no improvisado; y cada semana termina con una corrección de errores, que es donde más se aprende.

## Paso 4: dedica estas semanas a consolidar

Estas fechas son buenas para **repasar y fijar**, más que para abrir temas nuevos y densos:

1. **Repasa lo que ya has visto.** Sin repaso, lo estudiado se olvida; por eso conviene volver a cada tema a intervalos crecientes.
2. **Practica con test.** Responder preguntas obliga a recuperar lo que sabes y te muestra los huecos. Si quieres empezar por algo concreto, prueba el [test de 20 preguntas de Constitución](/blog/test-constitucion-20-preguntas-guardia-civil); como todos los del blog, es propio, no oficial.
3. **Haz esquemas.** Un buen cuadro de una ley te sirve durante meses. Si necesitas ideas de organización, tienes el artículo sobre [cómo preparar la oposición desde cero](/blog/preparar-oposicion-guardia-civil-desde-cero).
4. **Deja para enero lo más pesado**, si es posible, y avanza ahora en temas más ligeros.

En el [programa oficial de 23 temas](/temario-guardia-civil) encontrarás qué normas entran en cada uno, para decidir qué repasar.

## Cómo sacar partido a una tanda de test

Hacer preguntas sin corregirlas es casi perder el tiempo. Un método sencillo para estas semanas:

1. **Elige un bloque pequeño**: un tema o la mitad de uno, no el temario entero.
2. **Responde sin apuntes** y con la misma regla del examen: cada error resta un tercio de acierto y en blanco no resta. Así practicas también cuándo arriesgar.
3. **Corrige al momento** y, por cada fallo, busca el artículo exacto en el texto legal.
4. **Apunta el error en una libreta de fallos** con una frase: qué creías, qué dice la norma y por qué te confundiste.
5. **Repite esas preguntas** a los dos o tres días y otra vez la semana siguiente.

Al terminar las fiestas, esa libreta será tu mejor material de repaso para enero: concentra justo lo que todavía no dominas.

## No abandones el entrenamiento físico

Las pruebas físicas son eliminatorias y también necesitan constancia. Mantén al menos una o dos sesiones a la semana en las que practiques las cuatro pruebas o sus ejercicios de base. Si quieres combinarlo con el estudio sin que uno se coma al otro, tienes el artículo sobre [entrenar y estudiar a la vez](/blog/entrenar-y-estudiar-a-la-vez-oposicion-guardia-civil). Si tienes una lesión o dudas sobre cargas e intensidades, consulta con un profesional antes de forzar.

## Si trabajas o tienes otras obligaciones

Para algunas personas la Navidad significa más trabajo, no menos: comercio, hostelería, turnos. En ese caso, reduce la ambición sin renunciar al mínimo, aprovecha los trayectos para test cortos y concentra el estudio de calidad en los días libres. El [plan de estudio compatible con el trabajo](/blog/plan-estudio-guardia-civil-trabajando) te da una estructura semanal que puedes adaptar a estas fechas.

## Cómo hablarlo en casa

- **Avisa de tus bloques de estudio** antes de que empiecen las fiestas. Es más fácil que los respeten si los conocen.
- **Negocia horarios, no excepciones**: «estudio de nueve a diez y luego estoy con vosotros» funciona mejor que desaparecer sin explicación.
- **Elige tu sitio**: una habitación con la puerta cerrada o una biblioteca, si está abierta, rinde más que la mesa del salón.

## Errores típicos en estas fechas

- **Proponerte el doble «para compensar»** y abandonar al tercer día.
- **Estudiar de madrugada tras las cenas.** Dormir mal empeora todo lo demás, incluido el entrenamiento.
- **Dejar el móvil al lado.** Silenciarlo durante tu bloque es tan importante como el propio bloque.
- **Empezar un tema largo y nuevo el día 30**: lo dejarás a medias y te frustrará.
- **No apuntar nada.** Sin registro, el 7 de enero no sabrás qué hiciste. Si quieres más, mira los [errores más comunes al preparar la oposición](/blog/errores-preparar-oposicion-guardia-civil).

## Cómo cerrar las fiestas

Al acabar, revisa qué has cumplido y qué no, sin dramatizar:

1. Cuenta cuántos días hiciste el mínimo.
2. Anota qué temas repasaste y qué test hiciste, con su nota.
3. Elige un único punto débil para trabajar en enero.
4. Vuelve a tu horario normal el primer día laborable, no «el lunes que viene».

Comprueba también las fechas de la convocatoria en vigor en el BOE: no las deduzcas de memoria ni de años anteriores. Si todavía no tienes un método, el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) organiza el temario por semanas.

## Preguntas frecuentes

### ¿Puedo tomarme unos días completos de descanso?

Sí, y descansar bien también forma parte del plan. Lo importante es que sea una decisión consciente, con fecha de regreso, y no un abandono que se alarga. Si te preocupa perder el hilo, haz un repaso breve el día anterior a retomar.

### ¿Es mejor estudiar temas nuevos o repasar?

Depende de dónde estés, pero en fechas de poca disponibilidad suele compensar repasar y practicar con test lo ya visto, y reservar los temas nuevos y largos para cuando recuperes tus horarios.

### ¿Cuántas horas debo estudiar en Navidad?

No hay una cifra oficial ni universal. Fija un mínimo que puedas cumplir todos los días y trata el resto como extra. Lo valioso es la regularidad, no el número.

### ¿Y si me salto un día?

Ocurre. No lo compenses con el doble al día siguiente: retoma tu mínimo y sigue. Un día perdido pesa mucho menos que abandonar todo por haberlo perdido.

### ¿Qué hago si viajo y no tengo los apuntes?

Lleva el temario o tus esquemas en el móvil o en una tableta y reserva esos días para test y repaso. Si no tienes nada a mano, repasa de memoria: escribir en una hoja todo lo que recuerdas de un tema y comprobarlo después es un ejercicio muy útil.

### ¿Debo hacer un simulacro completo estas semanas?

Puede ser una buena idea si tienes una mañana tranquila, porque te da una foto de cómo vas antes de enero. Hazlo en condiciones reales, con tiempo y penalización, y dedica después el mismo esfuerzo a corregirlo.',
   NULL, NULL, 'publicado', '2026-12-23T06:59:00.000Z', 'acceso-guardia-civil',
   ARRAY['organización', 'navidad', 'planificación', 'constancia']::text[], '{"title":"Estudiar la oposición en Navidad: plan realista","description":"Estudiar la oposición de Guardia Civil en Navidad: mínimo diario, tipos de día, plan de dos semanas, test y descanso para llegar a enero con ritmo."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('deontologia-profesional-el-codigo-de-conducta-que-entra', 'articulo', 'Deontología profesional en la Guardia Civil: el Código de Conducta (RD 176/2022)', 'El tema 19 junta los Principios Básicos de la ONU sobre el empleo de la fuerza (La Habana, 1990) y el Código de Conducta de la Guardia Civil (RD 176/2022). Estructura, artículos clave, Decálogo, comparación entre textos, caso práctico y test.', 'En el programa de la Escala de Cabos y Guardias, el tema 19, «Deontología profesional», tiene dos bloques: los **Principios Básicos sobre el Empleo de la Fuerza y de Armas de Fuego por los Funcionarios Encargados de Hacer Cumplir la Ley**, adoptados por el Octavo Congreso de las Naciones Unidas sobre Prevención del Delito y Tratamiento del Delincuente (La Habana, del 27 de agosto al 7 de septiembre de 1990), y el **Real Decreto 176/2022, de 4 de marzo, por el que se aprueba el Código de Conducta del personal de la Guardia Civil** (consulta el [temario](/temario-guardia-civil)).

**Respuesta corta:** el texto nacional que debes estudiar es el **Código de Conducta** ([BOE-A-2022-3477](https://www.boe.es/buscar/act.php?id=BOE-A-2022-3477)): un real decreto de **seis artículos** que aprueba un Código de **dos títulos y 50 artículos**, más un **Decálogo** en anexo. El texto internacional son **26 principios** de la ONU agrupados en seis apartados.

## Qué no entra en el tema 19

La LO 11/2007 (derechos y deberes) y la Ley 29/2014 (régimen del personal) pertenecen al **tema 15**, junto con la [LO 2/1986](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada) y la [historia del Cuerpo](/blog/historia-de-la-guardia-civil-del-duque-de-ahumada-a-hoy). Tampoco figura en el tema el Código de Conducta de la ONU para funcionarios encargados de hacer cumplir la ley (1979), aunque el preámbulo del RD 176/2022 lo cita como inspiración. Aun así, conviene saber que el Código de Conducta se dicta para cumplir el mandato del artículo 7 de la Ley 29/2014 y que su preámbulo enlaza con el artículo 5 de la LO 2/1986.

## El Real Decreto 176/2022

Aprobado el 4 de marzo de 2022 y publicado en el BOE del 5 de marzo, entró en vigor **a los veinte días de su publicación**, el 25 de marzo de 2022, a propuesta conjunta de los ministros del Interior y de Defensa. Su parte dispositiva:

| Artículo | Contenido |
|---|---|
| 1 | Objeto: aprobar el Código de Conducta |
| 2 | El Código es la guía de valores, principios y normas; el Decálogo compendia las virtudes fundamentales |
| 3 | Se aplica al personal sujeto al régimen de derechos y deberes del Cuerpo y al **alumnado de los centros de formación** de las escalas de Oficiales y de Cabos y Guardias |
| 4 | Se incorpora a los planes de estudios y los mandos velan por que se conozca |
| 5 | Los **procesos selectivos de acceso directo** contemplarán su contenido en sus convocatorias y en su desarrollo |
| 6 | Servirá de referencia a las asociaciones profesionales para fomentar la deontología (art. 36 de la LO 11/2007) |

Su **disposición adicional única** declara aplicables al personal de la Guardia Civil las Reales Ordenanzas para las Fuerzas Armadas (RD 96/2009), aunque los capítulos I, II, III y V de su título IV solo rigen en conflicto bélico, estado de sitio, misiones militares o integración en unidades militares.

El preámbulo aclara que «Código» no se usa en el sentido de reglamento, sino como compilación de valores, y lo califica de «código ético»: su eficacia depende de que cada guardia civil lo asuma como propio.

## Estructura del Código

| Parte | Artículos | Contenido |
|---|---|---|
| Título I, capítulo I: valores fundamentales | 1 a 9 | Honor, integridad, lealtad, valor, sentido de la justicia, imparcialidad y neutralidad, responsabilidad, dignidad y espíritu de sacrificio |
| Título I, capítulo II: principios institucionales | 10 a 23 | Defensa de la Constitución; derechos fundamentales; igualdad y no discriminación; neutralidad ideológica y política; jerarquía; disciplina; subordinación; pluralidad cultural; formación; cooperación; prestigio; espíritu benemérito; espíritu de Cuerpo y compañerismo; historia y tradiciones |
| Título II, capítulo I: normas generales | 24 a 32 | Disponibilidad permanente; serenidad, prudencia y firmeza; eficacia; reserva; uniforme; sostenibilidad; igualdad, diversidad y conciliación; saludo militar; salud |
| Título II, capítulo II: normas en el servicio | 33 a 50 | Ciudadanía; autoridades civiles; Justicia; otros cuerpos; Fuerzas Armadas; transparencia; identificación; prevención de riesgos; mando; liderazgo; empleo de la fuerza; víctimas; detenidos; investigaciones; misiones militares y en el exterior; funciones docentes y técnicas |
| Anexo | — | Decálogo |

Truco para memorizar los nueve valores del capítulo I: empiezan por **honor** (art. 1) y terminan por **espíritu de sacrificio** (art. 9).

## Los preceptos que conviene leer despacio

- **Art. 1, honor**: «ha de ser la principal divisa» de los hombres y mujeres de la Guardia Civil.
- **Art. 2, integridad**: no aceptar ofrecimientos, favores o regalos que puedan comprometer su honestidad.
- **Art. 16.2, subordinación**: ante órdenes que entrañen actos que **manifiestamente** constituyan delito o sean contrarios a la Constitución o a las leyes, **se abstendrán de obedecerlas** y comunicarán su contenido y su emisor, por el medio más rápido y eficaz, a la autoridad superior.
- **Art. 22.2**: un compañerismo mal entendido nunca puede dar cabida al **encubrimiento** de conductas ilegales.
- **Art. 27, reserva**: deber de reserva (sigilo) y deber de secreto; prudencia al difundir contenidos en redes que puedan parecer oficiales.
- **Art. 39, identificación**: obligación de identificarse cuando lo pidan autoridades o ciudadanos, salvo que ello ponga en peligro la misión o la seguridad.
- **Art. 41.3, mando**: ningún mando puede ordenar actos contrarios a la Constitución, a las leyes o que constituyan delito.
- **Art. 43, empleo de la fuerza**: «la persuasión y la fuerza moral serán sus primeras armas»; la fuerza, solo si no hay un modo menos lesivo y de forma **gradual**, con **congruencia, oportunidad y proporcionalidad**; las armas de fuego, solo ante un **riesgo racionalmente grave** para la vida o la integridad propias o de terceros, o un grave riesgo para la seguridad ciudadana.
- **Art. 44**: trato respetuoso a víctimas y testigos y **especial sensibilidad** con las víctimas de violencia de género y las personas vulnerables.
- **Art. 45**: detener de la forma más respetuosa con la reputación, la imagen y la dignidad, sin vejación, maltrato ni injuria. Relaciónalo con [detención y habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre).

## El Decálogo

| N.º | Virtud | Idea |
|---|---|---|
| 1.º | Honor | «Una vez perdido, no se recobra jamás» |
| 2.º | Defensa de España y de la Constitución | Con lealtad al Rey |
| 3.º | Dignidad | Como exigen el Cuerpo y el uniforme |
| 4.º | Respeto a los derechos y libertades | Consideración hacia la vida y la dignidad |
| 5.º | Integridad | El deber cumplido como mayor recompensa |
| 6.º | Vocación de servicio | Valor, decisión, iniciativa y sacrificio |
| 7.º | Espíritu benemérito | Ayudar, en especial a los más vulnerables |
| 8.º | Lealtad y espíritu de cuerpo | Fidelidad a valores y tradiciones |
| 9.º | Disciplina | Obedecer con lealtad y responsabilidad |
| 10.º | Serenidad y empleo de la fuerza | «Prudente sin debilidad y firme sin violencia» |

## Los Principios Básicos de la ONU (1990)

| Apartado | Principios |
|---|---|
| Disposiciones generales | 1 a 8 |
| Disposiciones especiales | 9 a 11 |
| Actuación en caso de reuniones ilícitas | 12 a 14 |
| Vigilancia de personas bajo custodia o detenidas | 15 a 17 |
| Calificaciones, capacitación y asesoramiento | 18 a 21 |
| Procedimientos de presentación de informes y recursos | 22 a 26 |

Los que más conviene dominar:

- **Principio 4**: medios no violentos, en la medida de lo posible, antes de recurrir a la fuerza o a las armas de fuego.
- **Principio 5**: cuando el uso de armas sea inevitable, moderación y proporción, reducir daños, asistencia médica lo antes posible y aviso a parientes o amigos íntimos.
- **Principio 8**: ninguna situación excepcional, como la inestabilidad política, justifica quebrantarlos.
- **Principio 9**: armas de fuego contra personas solo en defensa propia o de otros ante peligro inminente de muerte o lesiones graves, para evitar un delito particularmente grave que entrañe seria amenaza para la vida, o para detener o impedir la fuga de quien represente ese peligro, y solo si no bastan medidas menos extremas. **El uso intencional de armas letales, solo cuando sea estrictamente inevitable para proteger una vida.**
- **Principio 10**: identificarse y advertir claramente de la intención de disparar, salvo que el aviso ponga en peligro a los agentes o a terceros o resulte evidentemente inútil.
- **Principios 13 y 14**: reuniones ilícitas no violentas, evitar la fuerza o reducirla al mínimo; reuniones violentas, armas de fuego solo en los supuestos del principio 9.
- **Principio 26**: no cabe alegar obediencia a órdenes superiores manifiestamente ilícitas que causen muerte o heridas graves si hubo oportunidad razonable de negarse; también responden los superiores que las dieron.

## Tres textos, una misma lógica

| Cuestión | LO 2/1986 (art. 5) | Código de Conducta | Principios ONU |
|---|---|---|---|
| Cuándo usar armas | Riesgo racionalmente grave para la vida o integridad, o grave riesgo para la seguridad ciudadana | Art. 43.2: misma fórmula | Principio 9: peligro inminente de muerte o lesiones graves |
| Criterios | Congruencia, oportunidad y proporcionalidad | Gradualidad, prudencia y firmeza, más esos tres principios | Moderación y proporción (principio 5) |
| Órdenes ilícitas | La obediencia debida no las ampara | Abstenerse y comunicarlo (art. 16.2) | No eximen de responsabilidad (principio 26) |

## Caso práctico (hipotético)

Un cabo ordena a un guardia que «no anote» en el atestado que un detenido sufrió un golpe durante el traslado. ¿Qué dice el Código? La orden supone ocultar hechos y puede ser delictiva: el guardia debe **abstenerse de cumplirla** y comunicar su contenido y quién la dio a la autoridad superior (art. 16.2); el mando no podía darla (art. 41.3); el compañerismo no ampara el encubrimiento (art. 22.2); y al detenido se le debe proteger su integridad física y moral (art. 45.2).

## Errores frecuentes

- Buscar un «Código Ético» distinto: el texto del programa es el **Código de Conducta**, aunque su preámbulo lo describa como código ético.
- Decir que el Código tiene seis artículos: esos son los del real decreto; el Código tiene 50.
- Pensar que no se aplica a los alumnos de Baeza: el artículo 3 los incluye.
- Confundir el Decálogo (anexo del RD 176/2022) con la Cartilla de 1845.
- Situar los Principios de la ONU en Nueva York o en 1979: son de **La Habana, 1990**.

## Mini test (preguntas propias)

1. El Código de Conducta del personal de la Guardia Civil tiene: a) 6 artículos; b) 23 artículos; c) 50 artículos; d) 10 artículos.
2. El primer valor fundamental del Código es: a) la lealtad; b) el honor; c) la integridad; d) la disciplina.
3. Ante una orden manifiestamente delictiva, el guardia civil debe: a) cumplirla y denunciarla después; b) pedirla por escrito; c) abstenerse de obedecerla y comunicarlo; d) consultar a un compañero.
4. Los Principios Básicos sobre el Empleo de la Fuerza se adoptaron en: a) Ginebra, 1979; b) La Habana, 1990; c) Viena, 1993; d) Roma, 1998.
5. Según el principio 9, el uso intencional de armas letales solo procede cuando: a) lo ordena un superior; b) el sospechoso huye; c) sea estrictamente inevitable para proteger una vida; d) haya alteración del orden público.

**Soluciones:** 1-c; 2-b (art. 1); 3-c (art. 16.2); 4-b; 5-c.

## Cómo estudiarlo

Lee el Código completo una vez; después, una tabla de los nueve valores, otra de los principios institucionales y otra con los artículos 16, 22, 43, 44 y 45. Memoriza el Decálogo en orden. El Código de Conducta es además una de las competencias que se valoran en la [entrevista personal](/blog/competencias-entrevista-personal-guardia-civil). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) integra ambos textos.

## Preguntas frecuentes

### ¿Cuál es el código que se estudia en deontología?

El Código de Conducta del personal de la Guardia Civil, aprobado por el RD 176/2022, junto con los Principios Básicos de la ONU de 1990.

### ¿Cuántos artículos tiene?

El Código, 50 artículos más el Decálogo en anexo; el real decreto que lo aprueba, seis artículos, una disposición adicional, una derogatoria y tres finales.

### ¿Se aplica a los aspirantes?

A los alumnos de los centros de formación, sí (art. 3). Y el artículo 5 obliga a que los procesos selectivos de acceso directo contemplen su contenido.

### ¿Se debe obedecer una orden manifiestamente delictiva?

No. Hay que abstenerse de obedecerla y comunicar su contenido y su emisor a la autoridad superior por el medio más rápido y eficaz (art. 16.2).

### ¿Cuándo puede usar un guardia civil su arma de fuego?

Solo ante un riesgo racionalmente grave para su vida o integridad o las de terceros, o ante un grave riesgo para la seguridad ciudadana, y conforme a los principios de congruencia, oportunidad y proporcionalidad (art. 43.2 del Código y art. 5.2.d de la LO 2/1986).

### ¿Qué dice el último punto del Decálogo?

«Serenidad y empleo de la fuerza»: «seré prudente sin debilidad y firme sin violencia».',
   NULL, NULL, 'publicado', '2026-12-26T06:50:00.000Z', 'acceso-guardia-civil',
   ARRAY['deontología', 'código de conducta', 'rd 176/2022', 'uso de la fuerza']::text[], '{"title":"Deontología Guardia Civil: Código de Conducta RD 176/2022","description":"Tema 19 de Guardia Civil: estructura del Código de Conducta (RD 176/2022), Decálogo y Principios Básicos de la ONU sobre el uso de la fuerza, con test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada', 'articulo', 'Fuerzas y Cuerpos de Seguridad (LO 2/1986): competencias de cada cuerpo', 'La Ley Orgánica 2/1986 reparte la seguridad pública entre Estado, comunidades autónomas y ayuntamientos. Qué hace cada cuerpo, dónde actúa la Guardia Civil, los principios de actuación, la policía judicial y la coordinación, con caso práctico y test.', 'La [Ley Orgánica 2/1986, de 13 de marzo](https://www.boe.es/buscar/act.php?id=BOE-A-1986-6859), desarrolla el artículo 104 de la Constitución: fija las **funciones, los principios básicos de actuación y los estatutos** de las Fuerzas y Cuerpos de Seguridad. En el programa de la Escala de Cabos y Guardias figura **completa** como primer bloque del tema 15 (consulta el [temario](/temario-guardia-civil)).

**Respuesta corta:** la seguridad pública es competencia exclusiva del Estado; la ejercen tres niveles de cuerpos (Estado, comunidades autónomas y corporaciones locales); y entre los dos cuerpos estatales, la Policía Nacional actúa en las capitales de provincia y en los núcleos que determine el Gobierno, y la Guardia Civil **en el resto del territorio nacional y su mar territorial**, además de sus competencias materiales propias.

## Estructura de la ley

| Título | Contenido | Artículos |
|---|---|---|
| I | Disposiciones generales, principios básicos de actuación y disposiciones estatutarias comunes | 1 a 8 |
| II | Fuerzas y Cuerpos de Seguridad del Estado: funciones, Guardia Civil, Policía y policía judicial | 9 a 36 |
| III | Policías de las comunidades autónomas | 37 a 44 |
| IV | Colaboración y coordinación entre el Estado y las comunidades autónomas | 45 a 50 |
| V | Policías locales | 51 a 54 |

Trabaja con el texto consolidado: conserva términos de 1986 como «Gobernador civil» (figura que desapareció en 1997 y cuyas funciones asumieron los subdelegados del Gobierno), «Director de la Seguridad del Estado» o «Cuerpo Nacional de Policía», hoy Policía Nacional. Además, la Ley Orgánica 9/2015 **derogó los artículos 16 a 26**, sobre el personal de la Policía.

## Título I: disposiciones comunes

### Los tres niveles (arts. 1 y 2)

El artículo 1 establece que la seguridad pública es **competencia exclusiva del Estado** y que su mantenimiento corresponde al Gobierno de la Nación. Comunidades autónomas y corporaciones locales participan en los términos de sus estatutos y de la Ley de Bases de Régimen Local.

| Nivel | Cuerpos | Naturaleza |
|---|---|---|
| Estado | Policía Nacional y Guardia Civil | Civil y militar, respectivamente (art. 9) |
| Comunidades autónomas | Policías autonómicas | Institutos armados de naturaleza civil (art. 41.2) |
| Corporaciones locales | Policías locales | Institutos armados de naturaleza civil (art. 52.1) |

El artículo 4 impone a todos el deber de auxiliar a las Fuerzas y Cuerpos de Seguridad en la investigación de delitos, y una **especial obligación** a quienes ejercen funciones de vigilancia y seguridad privadas.

### Principios básicos de actuación (art. 5)

| Bloque | Ideas clave |
|---|---|
| 1. Adecuación al ordenamiento jurídico | Respeto a la Constitución; neutralidad política e imparcialidad; integridad y oposición a la corrupción; jerarquía y subordinación, pero **la obediencia debida nunca ampara actos manifiestamente delictivos** o contrarios a la Constitución o a las leyes; colaboración con la Justicia |
| 2. Relaciones con la comunidad | Impedir prácticas abusivas o discriminatorias; trato correcto y esmerado; actuar sin demora ante un daño grave, inmediato e irreparable, con **congruencia, oportunidad y proporcionalidad**; **armas solo ante un riesgo racionalmente grave** para la vida o la integridad propias o de terceros, o para la seguridad ciudadana |
| 3. Tratamiento de detenidos | Identificarse al detener; velar por la vida e integridad del detenido; cumplir trámites y plazos |
| 4. Dedicación profesional | Intervenir siempre, en cualquier tiempo y lugar, **de servicio o no** |
| 5. Secreto profesional | Riguroso secreto; no obligación de revelar fuentes salvo ley |
| 6. Responsabilidad | Personal y directa, sin perjuicio de la patrimonial de la Administración |

Estos principios reaparecen casi literalmente en el Código de Conducta de la Guardia Civil, que veremos en el artículo de deontología.

### Estatuto común (arts. 6 a 8)

- Juramento o promesa de acatamiento a la Constitución (art. 6.3).
- **Prohibición de la huelga** y de acciones sustitutivas (art. 6.8).
- Carácter de **agentes de la autoridad**; ante atentados con armas de fuego, explosivos u otros medios de análoga peligrosidad, protección penal de **autoridad** (art. 7.1 y 7.2).
- La Guardia Civil **solo es fuerza armada** en el cumplimiento de misiones de carácter militar (art. 7.3).
- Jurisdicción ordinaria para los delitos cometidos contra ellos o por ellos en el ejercicio de sus funciones (art. 8.1).

## Título II: las Fuerzas y Cuerpos de Seguridad del Estado

### Naturaleza y dependencia (arts. 9 y 10)

La Policía es un instituto armado **de naturaleza civil** dependiente del Ministro del Interior. La Guardia Civil es un instituto armado **de naturaleza militar**, que depende del Ministro del Interior en las funciones de esta ley y del Ministro de Defensa en las misiones militares; **en tiempo de guerra y durante el estado de sitio, depende exclusivamente del de Defensa**. Al Ministro del Interior le corresponde el mando superior (art. 10.1).

### Funciones comunes (art. 11.1)

Su misión es proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana mediante nueve funciones: a) velar por el cumplimiento de las leyes; b) auxiliar y proteger a las personas y bienes en peligro; c) vigilar edificios e instalaciones públicos; d) proteger a altas personalidades; e) mantener y restablecer el orden y la seguridad ciudadana; f) prevenir delitos; g) investigar delitos; h) captar y analizar datos de interés para el orden y la seguridad; i) colaborar con protección civil.

### Reparto territorial (art. 11.2 a 11.6)

- **Policía Nacional**: capitales de provincia y términos municipales y núcleos urbanos que determine el Gobierno.
- **Guardia Civil**: el resto del territorio nacional y su mar territorial.
- La Policía puede investigar y coordinar datos (funciones g y h) en todo el territorio; la Guardia Civil puede investigar en todo el territorio cuando lo exijan sus competencias propias. **Siempre se da cuenta al otro cuerpo.**
- Fuera de su ámbito, por mandato judicial o fiscal o en casos excepcionales, comunicándolo de inmediato.
- **Conflicto de competencias**: se hace cargo el cuerpo que haya realizado las **primeras actuaciones** hasta que se resuelva.
- El Ministerio del Interior puede ordenar que un cuerpo asuma funciones del otro en zonas determinadas.

### Competencias materiales (art. 12)

| Guardia Civil (12.1.B) | Policía Nacional (12.1.A) |
|---|---|
| Armas y explosivos | DNI y pasaportes |
| Resguardo fiscal del Estado y contrabando | Entrada y salida del territorio nacional |
| Tráfico, tránsito y transporte en vías interurbanas | Extranjería, refugio y asilo, extradición, expulsión, emigración e inmigración |
| Custodia de vías de comunicación terrestre, costas, fronteras, puertos, aeropuertos e instalaciones | Juego |
| Naturaleza, medio ambiente, recursos hidráulicos, caza, pesca y riqueza forestal | Delitos relacionados con la droga |
| Conducción interurbana de presos y detenidos | Colaboración con policías de otros países |
| Otras que le atribuya la ley | Control de la seguridad privada; otras que le atribuya la ley |

Para ver estas competencias en la práctica, repasa [seguridad ciudadana y seguridad privada](/blog/seguridad-ciudadana-y-seguridad-privada-que-cae-del-temario) y la comparación [Guardia Civil o Policía Nacional](/blog/guardia-civil-o-policia-nacional).

### La Guardia Civil (arts. 13 a 15)

Estructura jerárquica por empleos, conforme a su naturaleza militar. El **Ministerio del Interior** dispone lo relativo a servicios, retribuciones, destinos, acuartelamientos y material; **conjuntamente Interior y Defensa**, la selección, formación, perfeccionamiento, armamento y despliegue territorial, y proponen el nombramiento del director general; **Defensa**, los ascensos, las situaciones del personal y las misiones militares (art. 14). Sus miembros **no pueden pertenecer a partidos políticos ni sindicatos ni hacer peticiones colectivas** (art. 15.2). La estructura actual de su Dirección General la tienes en [Ministerio del Interior y Ministerio de Defensa](/blog/ministerio-del-interior-y-ministerio-de-defensa-estructura).

### Policía judicial (arts. 29 a 36)

Las funciones del artículo 126 de la Constitución las ejercen las Fuerzas y Cuerpos de Seguridad del Estado a través de **unidades de policía judicial**; las policías autonómicas y locales actúan como **colaboradoras**. Sus miembros dependen **orgánicamente del Ministerio del Interior y funcionalmente de jueces, tribunales y fiscales** (art. 31.1), y no pueden ser apartados de una investigación sin decisión o autorización del juez o fiscal (art. 34.1).

## Títulos III a V: policías autonómicas, coordinación y policías locales

- **Policías autonómicas**: solo actúan en su comunidad, salvo emergencia previo requerimiento estatal (art. 42). Cuando concurren con fuerzas estatales en una misma actuación, la dirección corresponde a los mandos de estas últimas (art. 46.2).
- **Consejo de Política de Seguridad** (art. 48): presidido por el Ministro del Interior, con los consejeros autonómicos y un número igual de representantes del Estado; dentro de él, un **Comité de Expertos** de ocho miembros, cuatro y cuatro (art. 49).
- **Junta de Seguridad** (art. 50): en las comunidades con policía propia, paritaria.
- **Policías locales**: actúan en su municipio (art. 51.3); entre sus funciones, ordenar el tráfico en el casco urbano e instruir atestados por accidentes dentro de él, y participar en la policía judicial como colaboradoras (art. 53). La **Junta Local de Seguridad** la preside el alcalde (art. 54).

## Caso práctico (hipotético)

En un polígono industrial de un municipio que no es capital de provincia y no figura entre los núcleos asignados a la Policía Nacional, una patrulla de la Guardia Civil y otra de la Policía Nacional, que investigaba una red de robos, llegan a la vez a un almacén asaltado. ¿Quién se hace cargo?

1. Territorialmente es demarcación de la Guardia Civil (art. 11.2.b).
2. La Policía puede investigar fuera de su ámbito (art. 11.3), pero debe dar cuenta a la Guardia Civil.
3. Si surge un conflicto, se hace cargo **quien haya realizado las primeras actuaciones** hasta que resuelva la autoridad competente (art. 11.5).
4. Si actuaba por mandato judicial, sigue haciéndolo, comunicándolo de inmediato (art. 11.4).

## Errores frecuentes

- Decir que la Guardia Civil depende «solo de Interior»: en guerra y estado de sitio depende **exclusivamente** de Defensa.
- Atribuir a la Guardia Civil la expedición del DNI o la extranjería: son de la Policía Nacional.
- Confundir dependencia orgánica (Interior) y funcional (jueces y fiscales) en la policía judicial.
- Olvidar que las policías autonómicas y locales también son institutos armados de naturaleza civil.

## Mini test (preguntas propias)

1. Según la LO 2/1986, la Guardia Civil es un instituto armado de naturaleza: a) civil; b) militar; c) mixta; d) paramilitar.
2. En tiempo de guerra y durante el estado de sitio, la Guardia Civil depende exclusivamente del Ministro: a) del Interior; b) de Defensa; c) de la Presidencia; d) de Justicia.
3. Es competencia de la Guardia Civil según el art. 12: a) el control de entrada y salida del territorio; b) el juego; c) la conducción interurbana de presos y detenidos; d) el control de la seguridad privada.
4. En un conflicto de competencias entre cuerpos estatales se hace cargo del servicio: a) la Guardia Civil; b) la Policía Nacional; c) el cuerpo que realizó las primeras actuaciones; d) el que designe el juez de guardia.
5. El Comité de Expertos del Consejo de Política de Seguridad lo forman: a) 4 miembros; b) 6; c) 8; d) 10.

**Soluciones:** 1-b (art. 9.b); 2-b (art. 9.b); 3-c (art. 12.1.B.f); 4-c (art. 11.5); 5-c (art. 49.1).

## Cómo estudiarla

Haz un cuadro de los tres niveles, otro con las dos columnas del artículo 12 y aprende el reparto del artículo 11 con sus excepciones. Para los plazos de la detención que el artículo 5 obliga a respetar, tienes [detención y habeas corpus](/blog/detencion-y-habeas-corpus-los-plazos-que-caen-siempre). El tema 15 incluye además la LO 11/2007, la Ley 29/2014, la estructura de los servicios centrales y la historia del Cuerpo; el [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) las organiza por semanas.

## Preguntas frecuentes

### ¿Dónde actúa la Guardia Civil según la LO 2/1986?

En el resto del territorio nacional y su mar territorial, es decir, fuera de las capitales de provincia y de los núcleos que el Gobierno asigne a la Policía (art. 11.2.b), además de sus competencias materiales en todo el territorio.

### ¿La Guardia Civil depende de Interior o de Defensa?

De ambos, según la función: de Interior en las funciones que le atribuye la ley y de Defensa en las misiones militares; en guerra y estado de sitio, solo de Defensa (art. 9.b).

### ¿Pueden hacer huelga los guardias civiles?

No. El artículo 6.8 prohíbe el derecho de huelga a todos los miembros de las Fuerzas y Cuerpos de Seguridad, y el 15.2 impide a los guardias civiles pertenecer a partidos o sindicatos.

### ¿Son agentes de la autoridad o autoridad?

Agentes de la autoridad a todos los efectos; a efectos de su protección penal, autoridad cuando el atentado se comete con armas de fuego, explosivos u otros medios de análoga peligrosidad (art. 7).

### ¿Quién preside la Junta Local de Seguridad?

El alcalde; si asiste el representante del Gobierno en la provincia (el «Gobernador civil» del texto), la presidencia es compartida (art. 54.2).',
   NULL, NULL, 'publicado', '2026-12-24T06:16:00.000Z', 'acceso-guardia-civil',
   ARRAY['lo 2/1986', 'temario', 'competencias', 'fuerzas y cuerpos de seguridad']::text[], '{"title":"LO 2/1986 Fuerzas y Cuerpos de Seguridad: competencias","description":"LO 2/1986 para opositores: niveles policiales, competencias de Guardia Civil y Policía Nacional, principios, policía judicial, coordinación y test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('historia-de-la-guardia-civil-del-duque-de-ahumada-a-hoy', 'articulo', 'Historia de la Guardia Civil: del Duque de Ahumada a hoy', 'De los decretos de 1844 al Código de Conducta de 2022: cronología de la Guardia Civil por etapas, con fechas contrastadas en su web oficial, la trampa de los dos decretos fundacionales, un esquema de estudio y un test propio.', 'El programa oficial incluye en el tema 15 la «Historia de la Guardia Civil» desde los inicios del siglo XIX hasta la democracia, en dos bloques: fundación, consolidación, Sexenio Revolucionario y Restauración; y reinado de Alfonso XIII, Segunda República, Guerra Civil, franquismo, Transición y democracia (consulta el [temario](/temario-guardia-civil)).

**Respuesta corta:** el Cuerpo se creó por el **Real Decreto de 28 de marzo de 1844**, pero ese decreto se derogó sin llegar a entrar en vigor; el que la web oficial llama «auténtico decreto fundacional» es el **Real Decreto de 13 de mayo de 1844**. Su organizador fue **Francisco Javier Girón y Ezpeleta, II Duque de Ahumada**, primer inspector general.

Todos los datos de este artículo proceden de la sección «Historia» de [guardiacivil.es](https://web.guardiacivil.es/es/institucional/conocenos/historiaguacivil/) y, en lo normativo, del BOE. Hemos dejado fuera lo que no hemos podido contrastar allí.

## Antecedentes: los inicios del siglo XIX

Tras la Guerra de la Independencia, la debilidad del Estado llena los caminos de **bandoleros**: excombatientes, desertores y delincuentes que hacen del bandolerismo su forma de vida. La Milicia Nacional, disuelta en 1814, se reconstituye en 1820 y desaparece en 1823.

En **1820**, con el alzamiento de Riego, el teniente general **Pedro Agustín Girón**, primer duque de Ahumada y padre del fundador, es nombrado ministro de la Guerra y concibe la **Legión de Salvaguardias Nacionales**, inspirada en la Gendarmería francesa. Las Cortes no la aprobaron, pero la web oficial la considera inspiración de la futura Guardia Civil.

## La fundación (1844-1845)

| Fecha | Hecho |
|---|---|
| 28 de marzo de 1844 | Real Decreto que crea un «cuerpo especial de fuerza armada de Infantería y Caballería» con «la denominación de Guardias Civiles», dependiente de Gobernación; se comisiona al Duque de Ahumada para organizarlo |
| 20 de abril de 1844 | Informe del Duque, que propone una plantilla selecta y mejor pagada; provoca la derogación del decreto anterior, que «ni siquiera entró en vigor» |
| 13 de mayo de 1844 | Real Decreto presentado por **Ramón María Narváez**: «auténtico decreto fundacional». Doble dependencia: **Guerra** (organización, personal, disciplina, material y haberes) y **Gobernación** (servicio peculiar y movimiento) |
| Verano de 1844 | Reclutamiento e instrucción en Leganés y Vicálvaro |
| 1 de septiembre de 1844 | Presentación oficial con una parada militar de 1.870 guardias; el Duque es designado **Inspector General**; aparece el **tricornio** |
| 9 de octubre de 1844 | Reglamento para el Servicio |
| 15 de octubre de 1844 | Reglamento Militar, elaborado por el Ministerio de la Guerra |
| 20 de diciembre de 1845 | **Cartilla del Guardia Civil**, de la mano del Duque |

La organización inicial fue de **14 jefes, 232 oficiales y 5.769 guardias en 14 tercios**. Del Duque es la frase «servirán más y ofrecerán más garantías de orden cinco mil hombres buenos que quince mil, no malos, sino medianos».

### La Cartilla

La web oficial la describe como «el auténtico código moral de la Institución». Su artículo más famoso: «el honor es la principal divisa del guardia civil; debe, por consiguiente, conservarlo sin mancha. Una vez perdido, no se recobra jamás». El preámbulo del Real Decreto 176/2022, del Código de Conducta, la cita como precedente e incorpora sus principios, y el primer punto de su Decálogo repite esa misma idea del honor.

## Consolidación (1844-1868)

- Contexto de la Segunda (1846-1849) y la Tercera Guerra Carlista (1872-1876) y de bandolerismo endémico.
- **1847**: primera misión internacional, con una unidad de Caballería patrullando **Oporto**.
- **1848**: rescate de los náufragos de la goleta *Mary* en Sanlúcar de Barrameda.
- **1853** (1 de abril): Real Orden que crea la **Compañía de Guardias Jóvenes**, origen del actual [Colegio de Guardias Jóvenes](/blog/colegio-guardias-jovenes-acceso-guardia-civil) «Duque de Ahumada».
- **1854**: tras la Vicalvarada, en el Bienio progresista, se plantea disolver el Cuerpo por haber sido leal al Gobierno.
- **1855**: auxilio a la población en la epidemia de cólera.
- El bandolerismo se considera virtualmente erradicado a finales del siglo XIX.

## Sexenio Revolucionario (1868-1874)

Tras la revolución de 1868, el Gobierno provisional suprime la Guardia Rural para que la Guardia Civil asuma sus cometidos; en **1871**, con Amadeo I, se reorganiza el despliegue. En la Primera República, Pi y Margall hace depender el Cuerpo solo de Gobernación, decisión que el gobierno siguiente revoca para recuperar la **doble dependencia**. En **enero de 1874**, soldados y guardias civiles a las órdenes del general Pavía entran en el Congreso y ponen fin a la República.

## Restauración (1874-1902)

- **1878**: la Ley Constitutiva del Ejército incluye a la Guardia Civil en el Ejército.
- **1886**: asume a nivel nacional la escolta de los trenes de viajeros.
- **1898**: tras la pérdida de Cuba, Puerto Rico y Filipinas, se disuelven los tercios de Ultramar y sus efectivos permiten crear la Comandancia de Canarias y las secciones de Ceuta y Melilla.

## Siglo XX hasta la Guerra Civil

| Año | Hecho |
|---|---|
| 1902 | Sección de ciclistas |
| 1913 | La **Virgen del Pilar**, patrona de la Guardia Civil |
| 1921 | Primer museo del Cuerpo; pistola Star de 9 mm |
| 1922 | Parque de Máquinas de Locomoción (mayo); estreno del himno (1 de agosto) |
| 1926 | Se crean las **Zonas**: cuatro, con sede en Madrid, Barcelona, Sevilla y Burgos |
| 1929 | Gran Cruz de la Orden Civil de Beneficencia (Real Decreto de 4 de octubre), reconocimiento del carácter «benemérito» |
| 1931-1933 | Sucesos de Castilblanco, Arnedo y Casas Viejas; tras la Sanjurjada (1932), la Dirección General pasa a ser Inspección General dependiente de Gobernación |
| 1935 | Corbata de la Orden de la República (12 de febrero) |

## Guerra Civil (1936-1939)

En 1936 la componían **33.500 hombres**. El Cuerpo quedó dividido, como España: su inspector general, el general Pozas, se mantuvo fiel a la República. Sufrió **2.714 muertos y 4.117 heridos**. En la zona republicana se reorganizó como **Guardia Nacional Republicana** (agosto de 1936) y desapareció en diciembre de ese año al unificarse los cuerpos policiales.

## Franquismo (1939-1975)

- **15 de marzo de 1940**: ley que suprime el **Cuerpo de Carabineros** y atribuye sus funciones a la Guardia Civil.
- **1942**: nuevo Reglamento Militar (23 de julio).
- Lucha contra el maquis, con apogeo entre 1944 y 1948.
- **1959**: se encomienda al Cuerpo la vigilancia del tráfico y se crea la **Agrupación de Tráfico**.
- Años sesenta y setenta: Servicio de Montaña, actividades subacuáticas, helicópteros (enero de 1973) y desactivación de explosivos (1974).
- **1968**: asesinato del guardia civil José Pardines, con el que, según la web oficial, se abre la larga lista de víctimas del terrorismo separatista.

## Transición y democracia

| Fecha | Hecho |
|---|---|
| 23-2-1981 | Intento de golpe de Estado, con participación de algunos guardias civiles |
| 30-10-1981 | Real Decreto 3543/1981: figura del **guardia civil auxiliar** |
| 13-3-1986 | [LO 2/1986](/blog/fuerzas-y-cuerpos-de-seguridad-lo-2-1986-competencias-de-cada): instituto armado de naturaleza militar |
| 1988 | **SEPRONA** y Agrupación de Reserva y Seguridad; un real decreto ley regula la incorporación de la mujer a las Fuerzas Armadas y abre su ingreso en el Cuerpo |
| 1991 | Servicio Marítimo |
| 2005 | Participación en la Fuerza de Gendarmería Europea (EUROGENDFOR) |
| 2007 | LO 11/2007 (derechos y deberes) y LO 12/2007 (régimen disciplinario) |
| 20-10-2011 | ETA anuncia el cese definitivo de su actividad armada |
| 28-11-2014 | Ley 29/2014, de Régimen del Personal |
| 2020 | María Gámez, primera mujer directora general (hasta marzo de 2023) |
| 4-3-2022 | Real Decreto 176/2022, Código de Conducta |

## La trampa de 1844, explicada

Si un enunciado pregunta por el decreto «de creación», la referencia es el de **28 de marzo**; si pregunta por el «decreto fundacional» efectivo o por el que estableció la doble dependencia Guerra-Gobernación, es el de **13 de mayo**. El propio preámbulo del RD 176/2022 lo resume así: creada por el decreto de 28 de marzo y «reorganizada definitivamente» por el de 13 de mayo. Lee siempre el verbo del enunciado.

## Errores frecuentes

- Atribuir la fundación al padre, Pedro Agustín Girón: su proyecto de 1820 no se aprobó.
- Confundir la Cartilla (1845) con los reglamentos de 1844.
- Situar la creación de la Agrupación de Tráfico en la democracia: es de 1959.
- Pensar que el Colegio de Guardias Jóvenes es reciente: su origen es la compañía de 1853.

## Mini test (preguntas propias)

1. El decreto que la web oficial llama «auténtico decreto fundacional» es de: a) 28 de marzo de 1844; b) 20 de abril de 1844; c) 13 de mayo de 1844; d) 1 de septiembre de 1844.
2. La Cartilla del Guardia Civil está fechada el: a) 9 de octubre de 1844; b) 15 de octubre de 1844; c) 20 de diciembre de 1845; d) 1 de abril de 1853.
3. ¿Cuántos tercios tenía la organización inicial? a) 10; b) 12; c) 14; d) 19.
4. El Cuerpo de Carabineros se suprimió y sus funciones pasaron a la Guardia Civil en: a) 1878; b) 1931; c) 1940; d) 1959.
5. El SEPRONA se creó en: a) 1959; b) 1981; c) 1986; d) 1988.

**Soluciones:** 1-c; 2-c; 3-c; 4-c; 5-d.

## Cómo estudiarla

Haz una línea del tiempo con las etapas del programa y tarjetas de «fecha → hecho». Agrupa los hitos por tipo (normas, unidades, misiones, distinciones). Si quieres ver cómo esas unidades siguen hoy, repasa [destinos y especialidades](/blog/destinos-especialidades-guardia-civil). El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) integra el tema.

## Preguntas frecuentes

### ¿Quién fundó la Guardia Civil?

Francisco Javier Girón y Ezpeleta, II Duque de Ahumada, comisionado en 1844 para organizarla y designado inspector general el 1 de septiembre de ese año.

### ¿Qué es la Cartilla del Guardia Civil?

Un texto de 20 de diciembre de 1845, redactado por el Duque de Ahumada, que la web oficial considera el código moral de la Institución.

### ¿De qué ministerios dependía la Guardia Civil al nacer?

Del de la Guerra en organización, personal, disciplina, material y haberes, y del de la Gobernación en su servicio peculiar y movimiento.

### ¿Cuántos guardias tenía al principio?

Según la web oficial, 14 jefes, 232 oficiales y 5.769 guardias en 14 tercios.

### ¿Desde cuándo pueden ingresar mujeres?

Un real decreto ley de 1988 reguló su incorporación a las Fuerzas Armadas y abrió el camino a su ingreso en el Cuerpo; antes, desde 1948, prestaban servicio las «matronas» uniformadas para el registro aduanero de mujeres, desarmadas y sin la condición de funcionarias públicas.

### ¿La historia entra entera en el examen?

El programa abarca desde los inicios del siglo XIX hasta la democracia, pero ningún dato oficial indica qué se pregunta. Consulta la convocatoria vigente.',
   NULL, NULL, 'publicado', '2026-12-25T06:33:00.000Z', 'acceso-guardia-civil',
   ARRAY['historia', 'duque de ahumada', 'temario', 'cronología']::text[], '{"title":"Historia de la Guardia Civil: fundación y fechas clave","description":"Historia de la Guardia Civil por etapas: decretos de 1844, Duque de Ahumada, Cartilla de 1845, siglo XX y democracia, con fechas oficiales y test."}'::jsonb, '{}'::jsonb)
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
   NULL, NULL, 'publicado', '2026-12-28T06:24:00.000Z', 'acceso-guardia-civil',
   ARRAY['lo 5/2000', 'menores', 'temario', 'detención']::text[], '{"title":"Responsabilidad penal de menores LO 5/2000: resumen","description":"LO 5/2000 para opositores: ámbito de edad, menores de 14 años, detención de menores, medidas y duración, prescripción, estructura de la ley y test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

insert into public.blog_posts
  (slug, tipo, titulo, entradilla, cuerpo, portada_url, portada_alt, estado, publicado_en, curso, etiquetas, seo, datos)
values
  ('violencia-de-genero-lo-1-2004-claves-para-el-examen', 'articulo', 'Violencia de género (LO 1/2004): claves para estudiar el tema', 'La Ley Orgánica 1/2004 forma el tema 21 y entra completa. Qué define como violencia de género, cómo se organiza en un título preliminar y cinco títulos, qué papel tienen las Fuerzas y Cuerpos de Seguridad y qué medidas judiciales prevé, con caso práctico y test.', 'La [Ley Orgánica 1/2004, de 28 de diciembre, de Medidas de Protección Integral contra la Violencia de Género](https://www.boe.es/buscar/act.php?id=BOE-A-2004-21760) es el **tema 21** del programa de la Escala de Cabos y Guardias, donde figura completa (consulta el [temario](/temario-guardia-civil)). No se estudia solo para el examen: la Guardia Civil la aplica a diario, y su Código de Conducta pide «especial sensibilidad» con estas víctimas (art. 44.2, que vimos en [deontología profesional](/blog/deontologia-profesional-el-codigo-de-conducta-que-entra)).

**Respuesta corta:** es una ley **integral**. No solo castiga: también previene, sensibiliza, reconoce derechos a las víctimas, organiza la respuesta institucional y especializa a jueces y fiscales. Por eso tiene un título preliminar y cinco títulos que van de la escuela al juzgado.

## Qué es violencia de género según la ley (art. 1)

| Elemento | Lo que dice la ley |
|---|---|
| Fundamento | Violencia que se ejerce sobre las mujeres «como manifestación de la discriminación, la situación de desigualdad y las relaciones de poder de los hombres sobre las mujeres» |
| Autor | Quien sea o haya sido su **cónyuge** o esté o haya estado ligado a ella por **relación similar de afectividad**, **aun sin convivencia** |
| Conductas (art. 1.3) | Todo acto de violencia **física y psicológica**, incluidas las agresiones a la libertad sexual, las amenazas, las coacciones o la privación arbitraria de libertad |
| Violencia vicaria (art. 1.4) | La ejercida sobre **familiares o allegados menores** de edad para causar perjuicio o daño a las mujeres (añadido por la LO 8/2021) |
| Protegidos (art. 1.2) | Las mujeres, sus hijos menores y los menores sujetos a su tutela o guarda y custodia |

Importante: la ley no abarca cualquier violencia contra una mujer, sino la que se produce **en el ámbito de la pareja o expareja**. Una agresión de un desconocido en la calle no es violencia de género a efectos de esta ley, aunque pueda ser delito.

## Estructura de la ley

| Título | Artículos | Contenido |
|---|---|---|
| Preliminar | 1 y 2 | Objeto y principios rectores |
| I | 3 a 16 | Sensibilización, prevención y detección: planes de sensibilización y ámbitos educativo (cap. I), publicitario y de medios (cap. II) y sanitario (cap. III) |
| II | 17 a 28 ter | Derechos de las víctimas: información, asistencia social y jurídica (cap. I); laborales y de Seguridad Social (cap. II); de las funcionarias (cap. III); económicos (cap. IV); reparación (cap. V) |
| III | 29 a 32 | Tutela institucional |
| IV | 33 a 42 | Tutela penal |
| V | 43 a 72 | Tutela judicial: juzgados, competencias, medidas de protección y Fiscal contra la Violencia sobre la Mujer |

El artículo 2 enumera los fines: sensibilización y prevención, derechos de las víctimas, servicios sociales, derechos laborales y económicos, tutela institucional, marco penal y procesal, coordinación de recursos, participación de la sociedad civil, especialización profesional y transversalidad.

## Título I: prevenir antes de castigar

- **Educación** (arts. 4 a 9): el sistema educativo debe formar en igualdad; los hijos de víctimas tienen derecho a escolarización inmediata si cambian de residencia (art. 5).
- **Publicidad y medios** (arts. 10 a 14): es ilícita la publicidad que utilice la imagen de la mujer con carácter vejatorio o discriminatorio.
- **Sanidad** (arts. 15 y 16): detección precoz y protocolos en el Consejo Interterritorial del Sistema Nacional de Salud.

## Título II: derechos de las víctimas

- **Servicios esenciales** (art. 17.3): información y orientación, atención psicosocial inmediata, telefónica y en línea, asesoramiento jurídico 24 horas y acogida.
- **Derecho a la información** (art. 18), accesible a mujeres con discapacidad o que desconozcan el idioma.
- **Atención integral** (art. 19) y **sanitaria** (art. 19 bis).
- **Asistencia jurídica** (art. 20).
- **Derechos laborales** (art. 21), como la reducción o reordenación del tiempo de trabajo, la movilidad geográfica o la suspensión del contrato, y equivalentes para las funcionarias (arts. 24 a 26).
- **Acreditación** (art. 23): mediante sentencia condenatoria, orden de protección u otra resolución judicial cautelar, informe del Ministerio Fiscal o informe de los servicios sociales o especializados, entre otros medios.
- **Reparación** (arts. 28 bis y 28 ter), añadida por la LO 10/2022.

## Título III: tutela institucional

- **Delegación del Gobierno contra la Violencia de Género** (art. 29): formula las políticas públicas y elabora la Macroencuesta de Violencia contra las Mujeres.
- **Observatorio Estatal de Violencia sobre la Mujer** (art. 30): informe **anual** al Gobierno y a las comunidades autónomas.
- **Fuerzas y Cuerpos de Seguridad** (art. 31): el Gobierno establecerá en las del Estado **unidades especializadas en la prevención de la violencia de género y en el control de la ejecución de las medidas judiciales**; las policías locales cooperan en asegurar su cumplimiento; y la actuación debe tener en cuenta el **Protocolo de actuación y coordinación con los órganos judiciales**.
- **Planes de colaboración** (art. 32), con protocolos que implican a sanidad, justicia, fuerzas de seguridad, servicios sociales y organismos de igualdad.

## Título IV: tutela penal

Sus artículos modificaron el Código Penal para reforzar la protección: suspensión y sustitución de penas (arts. 33 a 35), lesiones (art. 36), malos tratos (art. 37), amenazas (art. 38), coacciones (art. 39), quebrantamiento de condena (art. 40) y vejaciones leves (art. 41). Hoy esos tipos se estudian en el propio Código Penal, que se ha reformado después; relaciónalos con [derecho penal](/blog/derecho-penal-para-guardia-civil-delito-penas-y-grados).

## Título V: tutela judicial

- **Juzgados de Violencia sobre la Mujer** (art. 43, que añadió el art. 87 bis a la LOPJ) y su competencia penal y civil (art. 44, art. 87 ter LOPJ). El texto que la ley incorporó a la LOPJ declara **vedada la mediación** en todos estos asuntos.
- **Orden de protección** (art. 62): el juez actúa conforme al artículo 544 ter de la Ley de Enjuiciamiento Criminal.
- **Medidas** (arts. 64 a 67): salida del domicilio, alejamiento con distancia mínima y posibles dispositivos telemáticos, suspensión de comunicaciones; suspensión de la patria potestad o la custodia; suspensión del régimen de visitas; y **suspensión del derecho a la tenencia, porte y uso de armas**, con obligación de depositarlas.
- **Garantías** (art. 68): auto motivado, proporcionalidad y necesidad, con intervención del Ministerio Fiscal.
- **Fiscal contra la Violencia sobre la Mujer** (art. 70) y secciones especializadas en las fiscalías (art. 71).

Un matiz de actualidad: la LO 1/2025, de eficiencia del Servicio Público de Justicia, ha transformado los juzgados en **secciones de los tribunales de instancia**, de modo que los Juzgados de Violencia sobre la Mujer pasan a ser **Secciones de Violencia sobre la Mujer**. El texto consolidado de la LO 1/2004 conserva la denominación original; si una pregunta cita la ley, responde con sus términos.

## Caso práctico (hipotético)

Una mujer llama al 062 porque su expareja, con quien nunca convivió, la espera a la salida del trabajo y le envía amenazas. ¿Encaja en la LO 1/2004?

1. Sí: el autor es una expareja y la ley protege «aun sin convivencia» (art. 1.1); las amenazas están expresamente incluidas (art. 1.3).
2. La patrulla la atiende con trato personalizado e informa de sus derechos (art. 18 de la ley y art. 44 del Código de Conducta).
3. Se instruyen diligencias y la víctima puede solicitar una **orden de protección** (art. 62).
4. El juez podrá acordar alejamiento, prohibición de comunicación y, si el investigado tiene armas, la suspensión de su tenencia (arts. 64 y 67).
5. Las unidades especializadas controlarán el cumplimiento de las medidas (art. 31).

## Errores frecuentes

- Exigir convivencia o matrimonio: basta una relación de afectividad, presente o pasada.
- Incluir cualquier violencia contra una mujer: la ley se ciñe a la pareja o expareja (y a la violencia vicaria sobre menores).
- Olvidar el título preliminar al contar títulos: son preliminar más cinco.
- Confundir la Delegación del Gobierno (políticas públicas) con el Observatorio (informes y evaluación).
- Pensar que la mediación es posible en estos asuntos: está vedada.

## Mini test (preguntas propias)

1. La LO 1/2004 exige, para que haya violencia de género, que agresor y víctima: a) estén casados; b) convivan; c) sean o hayan sido pareja, aun sin convivencia; d) tengan hijos en común.
2. Las unidades especializadas de las Fuerzas y Cuerpos de Seguridad del Estado se prevén en el artículo: a) 17; b) 29; c) 31; d) 62.
3. El Observatorio Estatal de Violencia sobre la Mujer remite su informe con periodicidad: a) mensual; b) semestral; c) anual; d) bienal.
4. La tutela judicial se regula en el título: a) II; b) III; c) IV; d) V.
5. La orden de protección se tramita conforme al artículo de la LECrim: a) 520; b) 544 bis; c) 544 ter; d) 17.

**Soluciones:** 1-c (art. 1.1); 2-c; 3-c (art. 30.2); 4-d; 5-c (art. 62).

## Cómo estudiarla

1. Esquema por títulos con sus artículos, como la tabla anterior.
2. La definición del art. 1, casi literal, con sus matices (sin convivencia, violencia vicaria).
3. Contrasta con la [igualdad efectiva de mujeres y hombres](/blog/igualdad-efectiva-de-mujeres-y-hombres-claves-de-la-ley).
4. Test propios por título.

El texto consolidado se ha modificado varias veces (entre otras, por la LO 8/2015, la LO 8/2021 y la LO 10/2022): trabaja con la versión vigente. El [curso de acceso a Guardia Civil](/cursos/acceso-guardia-civil) incluye el tema.

## Preguntas frecuentes

### ¿La ley exige convivencia entre agresor y víctima?

No. El artículo 1.1 incluye a quienes sean o hayan sido cónyuges o estén o hayan estado ligados por relaciones similares de afectividad «aun sin convivencia».

### ¿Qué es la violencia vicaria en esta ley?

La violencia ejercida sobre familiares o allegados menores de edad con el objetivo de causar daño a la mujer (art. 1.4, añadido por la LO 8/2021).

### ¿Qué papel tiene la Guardia Civil?

Como Fuerza y Cuerpo de Seguridad del Estado, cuenta con unidades especializadas en prevención y en el control de las medidas judiciales, y actúa conforme a los protocolos de los artículos 31 y 32.

### ¿Qué medidas puede adoptar el juez?

Entre otras, salida del domicilio, alejamiento, prohibición de comunicación, suspensión de la patria potestad, la custodia o las visitas, y suspensión de la tenencia de armas (arts. 64 a 67), siempre por auto motivado (art. 68).

### ¿Siguen existiendo los Juzgados de Violencia sobre la Mujer?

Con la LO 1/2025 se han integrado como Secciones de Violencia sobre la Mujer de los tribunales de instancia; la LO 1/2004 conserva el nombre original en su texto.

### ¿Entra la ley entera?

Sí: el programa la incluye completa en el tema 21. Comprueba la convocatoria vigente por si cambia.',
   NULL, NULL, 'publicado', '2026-12-27T06:07:00.000Z', 'acceso-guardia-civil',
   ARRAY['violencia de género', 'lo 1/2004', 'temario', 'víctimas']::text[], '{"title":"Violencia de género LO 1/2004: resumen para opositores","description":"LO 1/2004 para opositores a Guardia Civil: definición, estructura por títulos, derechos de las víctimas, unidades policiales, juzgados, medidas y test."}'::jsonb, '{}'::jsonb)
on conflict (slug) do update set
  tipo = excluded.tipo, titulo = excluded.titulo, entradilla = excluded.entradilla,
  cuerpo = excluded.cuerpo, portada_url = excluded.portada_url, portada_alt = excluded.portada_alt,
  estado = excluded.estado, publicado_en = excluded.publicado_en, curso = excluded.curso,
  etiquetas = excluded.etiquetas, seo = excluded.seo, datos = excluded.datos;

