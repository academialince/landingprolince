---
name: video-historia-animada
description: Crea los vídeos animados de historia y temario de la Academia ProLince — muñecos de estilo chibi (cabeza grande, sombreado suave, uniformes de época) que cuentan en ~1 minuto un hecho de la oposición de Guardia Civil (historia del Cuerpo, Constitución, LO 2/1986, leyes, fechas clave) con escenas, línea de tiempo, bocadillos, recuadro «CAE EN EXAMEN», pregunta de repaso con cuenta atrás y cierre de la academia. Vídeo vertical 1080×1920 para Reels/TikTok/Shorts hecho con la plantilla Remotion de videos/ (src/historia). Úsala SIEMPRE que se pida un vídeo, reel, short o tiktok animado de historia de la Guardia Civil, un «episodio», una historia con monigotes o muñecos, o un vídeo que explique una ley, una fecha o un hecho del temario con personajes, aunque no se mencione Remotion ni la plantilla. Para la pregunta del día usa video-pregunta-del-dia.
---

# Historias animadas con muñecos

Vídeos verticales de unos 60 segundos que cuentan un hecho del temario con muñecos animados. Cada episodio es **solo datos**: una entrada de `videos/src/datos/historias.json`. El diseño (muñecos, fondos, maquetación, tiempos, cierre) está en `videos/src/historia/` y **no se toca** salvo petición expresa. Todos los comandos se ejecutan dentro de `videos/`.

## Estructura de un vídeo (fija)

1. **Portada / intro (3,4 s)**: serie, título palabra a palabra, subtítulo y un guardia de 1844 y uno actual saludando ante la casa cuartel. El fotograma 0 es la portada (miniatura).
2. **Escenas** (una por fecha o idea): línea de tiempo arriba, píldora con la fecha, título, tarjeta con el escenario y los muñecos (entran andando, hablan con bocadillo, saludan, señalan…), texto que se escribe solo y, si la escena tiene `clave`, recuadro **CAE EN EXAMEN**. La duración se calcula sola según lo que hay que leer.
3. **Repaso (11 s, opcional)**: pregunta tipo test, cuenta atrás de 5 s, solución marcada y explicación.
4. **Cierre (3,6 s)**: verde profundo, emblema, «La historia también cae.» y prolinceacademia.com.

## Flujo

1. **Tema y fuentes.** Elige el hecho (o el que pida el usuario). Saca cada fecha, órgano y artículo **del texto legal vigente o de la fuente oficial** (BOE, web de la Guardia Civil, skills `prolince-temario` / `prolince-preguntas-test` y sus `references/normativa`). Nada de memoria: si un dato no se puede confirmar, redacta la escena sin él (como «1844 - 1845» en las parejas). Lista de ideas en `references/temas.md`.
2. **Guion.** De 4 a 6 escenas, cada una con una sola idea. Reglas de redacción, longitudes y el esquema completo en `references/guion.md`. Personajes, poses y vestuario en `references/personajes.md`; escenarios, objetos y posiciones en `references/escenarios.md`.
3. **Añadir el episodio** a `src/datos/historias.json` con `id` `historia-<tema>-<año>` (por ejemplo `historia-cartilla-1845`). Comprueba con `npx tsc --noEmit` y, si el Studio está abierto, aparece en la carpeta «Historias».
4. **Revisión de fotogramas** antes del render completo (rápido, a media escala):
   `npx remotion still <id> out/rev/f<N>.png --frame=<N> --log=error --scale=0.5`
   Mira con Read la portada (frame 0) y un fotograma de cada escena con el bocadillo ya abierto (frames aproximados: 30 × (3,4 + inicio de la escena + diceDesde + 1)). Revisa: nadie se corta por los bordes ni se solapa con otro, el bocadillo no tapa caras, títulos en una o dos líneas sin pisar la línea de tiempo, y el texto cabe en la tarjeta. Borra `out/rev` al acabar.
5. **Render**: `npm run historias -- <id>` → `out/<id>.mp4` y `out/<id>-portada.png` (unos 3 min por vídeo; en segundo plano y **sin** `| head`, que corta el render). Comprueba un fotograma del MP4 final:
   `npx remotion ffmpeg -y -loglevel error -ss 20 -i out/<id>.mp4 -frames:v 1 -vf scale=432:-1 out/revision.png`
6. **Descripción** en `out/<id>.txt` (estructura en `references/guion.md`, apartado «Descripción para redes»).
7. **Entrega**: MP4, portada y .txt (SendUserFile en la nube). Commit y push de `historias.json` (y de cualquier cambio de código pedido).

## Preparación

- `npm install` si no existe `videos/node_modules`.
- En la nube, `remotion.config.ts` ya usa el Chromium preinstalado. El aviso de versión de zod (4.6.5 frente a 4.5.4) es antiguo y no impide renderizar.

## Ampliar la plantilla (solo si el usuario lo pide)

Si un episodio necesita un personaje, escenario u objeto que no existe, sigue `references/estilo.md`: mismo acabado (degradados suaves, brillo, sombra difusa, sin contornos negros) y añádelo también a los esquemas de `HistoriaAnimada.tsx` y a las references de esta skill. Revisa después la portada y una escena de cada episodio ya hecho, porque los muñecos y fondos son compartidos.
