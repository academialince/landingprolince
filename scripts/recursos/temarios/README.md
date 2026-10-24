# Fuentes de los mockups realistas de temarios

Bases creadas con la herramienta integrada de generación de imágenes, siguiendo
la preferencia de Marcos: «Libros realistas, con volumen y sombras suaves».
Se conservan en WebP de calidad 95 con transparencia. Las miniaturas públicas se
preparan con `python3 scripts/generar-temarios-realistas.py`.

Las portadas de inglés, ortografía y gramática y resumen son **provisionales**.
Las portadas principales reales se componen por perspectiva desde
`public/temarios/guardia-civil/001.webp` y
`public/temarios/guardias-jovenes/001.webp`, sin volver a generar sus textos.

## Prompts de la serie

Instrucción común: fotografía de producto fotorrealista para catálogo de Academia
ProLince; libros de proporciones A4 naturales, cubierta laminada mate verde oscuro
#005238, tipografía blanca y sello del león de las referencias. Luz grande de
estudio arriba a la izquierda, cantos de papel marfil con hojas finas visibles,
lomos creíbles y sombras de contacto suaves. Fondo realmente transparente y
encuadre cuadrado. Libros enteros, sin recortes. Sin pedestal, decorados, personas,
armas, marcas ajenas, precios, promesas o textos fuera de las cubiertas.

- `gc-libro-completo.webp`: exactamente tres libros; principal «TEMARIO COMPLETO»
  delante, más grande y voluminoso, tomando como referencia la portada real de
  Guardia Civil. Dos complementarios más finos detrás, ligeramente escalonados:
  «TEMARIO INGLÉS» y «ORTOGRAFÍA Y GRAMÁTICA», «GUARDIA CIVIL» y
  «ACTUALIZADO 2027». Frente ancho y legible, perspectiva suave de tres cuartos.
- `cgj-libro-completo.webp`: misma composición e iluminación del pack anterior,
  usando la portada real del Colegio y «COLEGIO DE GUARDIAS JÓVENES» en los dos
  complementarios. El principal toma la portada del Colegio, no la de Guardia Civil.
- `gc-libro-resumen.webp`: un solo libro de resumen, grosor de 8–12 mm, ligeramente
  girado en tres cuartos con frente ancho. Textos: «ACADEMIA PROLINCE»,
  «TEMARIO RESUMEN», «GUARDIA CIVIL», «ACTUALIZADO 2027». Título grande arriba,
  león sutil en la mitad inferior y actualización discreta abajo.
- `cgj-libro-resumen.webp`: un solo libro con el mismo tratamiento fotográfico;
  textos «ACADEMIA PROLINCE», «TEMARIO RESUMEN»,
  «COLEGIO DE GUARDIAS JÓVENES», «ACTUALIZADO 2027».

Las bases completas generadas son una referencia de escena: la preparación final
sustituye siempre su cara principal por la portada original para conservar todos
sus detalles.
