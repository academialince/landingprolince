# Personajes

Definidos en `videos/src/historia/personajes.ts` y dibujados por `Monigote.tsx` (muñeco chibi de frente: cabeza grande, ojos con brillo, mofletes, sombreado suave).

## Personajes listos

| `personaje` | Aspecto | Úsalo para |
| --- | --- | --- |
| `guardia` | Casaca azul, correaje amarillo cruzado, pantalón blanco, tricornio de charol, fusil con bayoneta, bigote | Guardia civil del siglo XIX |
| `guardia-actual` | Uniforme verde, gorra con emblema, cinturón | Guardia civil de hoy |
| `duque` | Uniforme de general, charreteras, fajín rojo, bicornio, bigote y patillas canosos | El duque de Ahumada (solo él) |
| `militar-1844` | Uniforme azul con charreteras y fajín, bicornio, sin bigote | Mandos militares o el Ministerio de la Guerra en el XIX |
| `reina` | Vestido morado, corona, melena (mujer) | Isabel II u otra reina |
| `rey` | Uniforme de gala, fajín, charreteras, corona | Un rey (p. ej. Juan Carlos I) |
| `ministro` | Levita, camisa, corbatín, chistera, pergamino, bigote | Gobierno y ministros del XIX |
| `bandolero` | Calañés con madroños, chaquetilla, faja roja, trabuco | Bandolerismo |
| `viajero` | Traje gris, corbata, maleta | Viajeros, civiles del XIX |
| `ciudadano` / `ciudadana` | Ropa de calle / vestido verde y melena (mujer) | Ciudadanía, votantes |
| `diputado` | Traje oscuro, corbata roja | Cortes, Congreso, Senado |
| `policia` | Uniforme azul y gorra | Policía Nacional |
| `militar` | Uniforme verde oliva y gorra | Fuerzas Armadas actuales, Ministerio de Defensa |

Desde el guion solo se pueden sobrescribir `sombrero` y `accesorio`. Para otro vestuario hay que añadir un personaje a `personajes.ts` (ver `estilo.md`).

## Campos de cada personaje en una escena

| Campo | Valores | Notas |
| --- | --- | --- |
| `personaje` | nombre de la tabla | obligatorio |
| `x` | 0 a 1000 | centro del muñeco en la escena; deja ≥ 200 entre muñecos (≥ 240 con sombreros anchos: bicornio, calañés) y ≥ 100 a los bordes |
| `pose` | `de-pie`, `firmes`, `habla`, `saluda`, `hola`, `senala`, `brazos-arriba`, `lee`, `piensa`, `camina` | `saluda` = saludo militar; `lee` = sujeta el objeto delante con las dos manos |
| `mirando` | `izq`, `der` | por defecto, hacia el centro |
| `entra` | `izquierda`, `derecha` (andando 1,2 s), `aparece` (salta) | por defecto aparece |
| `desde` | segundos | cuándo entra en la escena |
| `nombre` | texto corto | etiqueta blanca a sus pies (≤ 18 caracteres) |
| `dice` / `diceDesde` | texto / segundos | bocadillo que se escribe solo; la boca se mueve mientras habla |
| `escala` | número | 1,12 por defecto; **1,0** si hay tres muñecos en escena |
| `sombrero` | `ninguno`, `tricornio`, `bicornio`, `corona`, `calanes`, `chistera`, `gorra` | |
| `accesorio` | `ninguno`, `fusil`, `trabuco`, `pergamino`, `libro`, `pluma`, `papeleta`, `maleta` | el fusil pasa a la mano libre si la derecha saluda; la maleta cae al suelo con `brazos-arriba` |

## Detalles del dibujo

- Mujeres (`mujer: true` en `personajes.ts`): melena larga con flequillo y mechones delante, pestañas, cejas finas, labios rosados, más rubor.
- Los sombreros no llevan visera delantera (dibujaba una línea negra sobre las cejas).
- Parpadean cada ~3,4 s, respiran y rebotan al andar.
