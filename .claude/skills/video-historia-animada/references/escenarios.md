# Escenarios y objetos

Lienzo de la escena: 1000 × 820, suelo en y = 740. En el vídeo la tarjeta está en (40, 500) del lienzo 1080 × 1920; arriba quedan la fecha y el título, debajo la tarjeta de texto.

## Escenarios (`escenario`)

| Valor | Qué se ve | Estilo |
| --- | --- | --- |
| `camino` | Campo andaluz: montañas, pueblo blanco con campanario, olivos, camino serpenteante, chumbera y poste «A MADRID» | detallado |
| `despacho` | Ministerio del XIX: papel pintado, estantería con libros, cuadro, ventana con cortinas, tarima y alfombra | detallado |
| `palacio` | Salón del trono: lámpara de araña, trono, columnas, cortinas de terciopelo, alfombra roja, mármol | detallado |
| `cuartel` | Casa cuartel: tejado de tejas, placa «TODO POR LA PATRIA», contraventanas verdes con reja y macetas, puerta de arco, farol, bandera, empedrado | detallado |
| `congreso` | Fachada con columnas, frontón y leones | sencillo (pendiente de pasar al estilo detallado) |
| `plaza` | Calle con edificios de colores | sencillo (pendiente) |
| `aula` | Pizarra con «Temario» | sencillo (pendiente) |

Zonas libres para muñecos: `cuartel` tiene la puerta en x ≈ 500 (los muñecos delante se ven bien); `camino` tiene el poste en x ≈ 790 y la chumbera en x ≈ 930; `despacho` tiene la estantería a la izquierda (x 40-360) y la ventana a la derecha (x 680-920); `palacio` tiene el trono en el centro (x 410-590), mejor muñecos a los lados (x ≈ 320 y 690).

## Objetos (`objetos: [{ tipo, x, texto? }]`)

| Valor | Qué es | Notas |
| --- | --- | --- |
| `mesa` | Escritorio de caoba con papeles, tintero, pluma y vela encendida | detallado; ocupa x ± 190 |
| `caballo` | Caballo con silla de montar, cola y cabeza en movimiento | detallado; ocupa de x − 140 a x + 230 (mira a la derecha): x ≤ 770 |
| `urna` | Urna de votación sobre mesa | sencillo |
| `bandera` | Mástil con la bandera de España ondeando | sencillo |
| `cartel` | Poste con cartel y `texto` (≤ 12 caracteres en mayúsculas) | sencillo |
| `boe` | Hoja del BOE con `texto` (fecha) | sencillo |

## Combinaciones que funcionan

- Creación por decreto: `despacho` + `mesa` + `ministro` con `lee`.
- Encargo real: `palacio` + `reina`/`rey` con `senala` + personaje que entra y `saluda`.
- Servicio en los caminos: `camino` + dos `guardia` que entran por la izquierda + `caballo`.
- Leyes actuales: `congreso` con `diputado`; competencias, `camino` con `cartel`.
- Votaciones: `plaza` + `urna` + `ciudadana` con `papeleta`.
