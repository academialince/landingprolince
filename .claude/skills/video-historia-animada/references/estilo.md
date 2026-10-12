# Estilo visual y cómo ampliar la plantilla

Referencia: muñecos tipo figura de juguete chibi — cabeza muy grande respecto al cuerpo, ojos ovalados negros con un punto de brillo, mofletes rosados, nariz en «c», sonrisa pequeña, ropa con volumen, sin contornos negros. Los fondos siguen el mismo acabado.

## Archivos

| Archivo | Qué contiene |
| --- | --- |
| `videos/src/historia/Monigote.tsx` | El muñeco: geometría, poses, cara, peinados, sombreros, uniformes, accesorios y utilidades de color (`claro`, `oscuro`, `mezcla`) |
| `videos/src/historia/personajes.ts` | Personajes listos (aspecto de cada uno) |
| `videos/src/historia/fondos.tsx` | Fondos detallados (camino, despacho, palacio, cuartel) y objetos detallados (mesa, caballo) |
| `videos/src/historia/Escenario.tsx` | Selector de escenarios y objetos, y los fondos sencillos que faltan por pasar |
| `videos/src/historia/HistoriaAnimada.tsx` | Composición: esquemas (zod), tiempos, maquetación, intro, escenas, repaso y cierre |
| `videos/src/Root.tsx` | Registra una composición por episodio (carpeta «Historias») |
| `videos/render-historias.mjs` | `npm run historias [-- <id>…]` |

## Reglas de dibujo

- **Color con volumen**: cada relleno usa un degradado (claro arriba a la izquierda, oscuro abajo a la derecha). En el muñeco, `gl(color)` apunta a un degradado que debe estar en la lista `colores` de `Monigote`; si añades un color nuevo y no lo registras, la pieza sale **transparente**.
- **Ids de degradados únicos** en los fondos (`cieloCamino`, `paredPalacio`…): durante la cortinilla conviven dos escenas y un id repetido con otros colores pintaría mal.
- **Brillos** con trazos blancos semitransparentes (`#ffffff55`-`#ffffffb0`) y **sombras** con elipses negras al 10-25 % bajo pies y objetos.
- **Nada sobre la cara**: viseras, alas y flequillos no deben bajar de la línea de las cejas (y − 26 desde el centro de la cabeza; los sombreros se suben 12 px).
- Fondos con colores suaves y poco contraste detrás de los muñecos para que estos destaquen; detalles (macetas, piedras, libros) en los bordes.
- Animaciones discretas en función de `t`: nubes, banderas, llamas, cortinas, cola del caballo.

## Añadir un personaje

1. Aspecto en `personajes.ts` (piel, pelo, peinado, sombrero, chaqueta, pantalón o vestido y detalles: correaje, botones, fajín, charreteras, camisa, corbata, cinturón, pañuelo, collar, bigote, patillas, `mujer`).
2. Si necesita un sombrero o accesorio nuevo, dibújalo en `Monigote.tsx` y añádelo al tipo y al `z.enum` de `HistoriaAnimada.tsx`.
3. Documenta el personaje en `references/personajes.md`.

## Añadir un escenario u objeto

1. Componente en `fondos.tsx` (lienzo 1000 × 820, suelo en 740), con sus `<defs>` propios.
2. Caso en `Escenario.tsx` (`Escenario` u `Objeto`) y valor en el tipo y en el `z.enum` de `HistoriaAnimada.tsx`.
3. Documenta en `references/escenarios.md` las zonas libres para muñecos.

Tras cualquier cambio: `npx tsc --noEmit`, fotogramas de la portada y de una escena de cada episodio (los muñecos y fondos son compartidos) y commit.
