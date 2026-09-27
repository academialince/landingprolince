---
name: video-pregunta-del-dia
description: Publica la «pregunta del día» de la Academia ProLince — elige una pregunta NO repetida del banco de preguntas (Drive, GUARDIA CIVIL/TEST), monta el vídeo vertical (Reels/TikTok/Shorts) con la plantilla Remotion de videos/, redacta la descripción con la explicación y lo publica en el panel de la web (/admin/publicaciones/pregunta-del-dia/<fecha>), borrando las de días anteriores. Úsala siempre que se pida la pregunta del día, un vídeo, reel, short o tiktok de preguntas tipo test o un lote de esos vídeos.
---

# Pregunta del día

La plantilla de vídeo (`videos/`, Remotion) es FIJA: no cambies el diseño salvo petición expresa. Solo cambian los datos.

## Ubicaciones fijas

| Qué | Dónde |
| --- | --- |
| Banco de preguntas (CSV por tema, formato de importación de la web) | Drive · `GUARDIA CIVIL/TEST` (id `1hT7xX0DlbbkRr6bjK2-4LDRX2qMUUZGJ`) |
| Destino de las publicaciones | Panel de la web · Publicaciones › Pregunta del día › carpeta dd/mm/aaaa (Supabase `mfclhieniekxksdfnabj`: tabla `publicaciones` y bucket privado `publicaciones`) |
| Historial de preguntas ya publicadas (fuente de verdad anti-repetición) | `videos/pregunta-del-dia/historial.csv` en este repositorio |

## Pasos (en `videos/`)

1. **Tema.** Si el usuario no lo indica, elige el tema que lleve más tiempo sin salir según `historial.csv` (rota los 23 temas). Busca su CSV en la carpeta del banco con `search_files` (`parentId = '<id banco>'`).
2. **Banco → CSV local.** Lee el CSV con `read_file_content`. Si la salida es grande, se guarda en un archivo de `tool-results`: conviértelo con
   `node pregunta-del-dia/drive-a-csv.mjs <ruta de la salida> banco/<nombre>.csv` (`banco/` está en .gitignore).
3. **Elegir sin repetir.** `npm install` si hace falta y después
   `node pregunta-del-dia/elegir.mjs banco/<nombre>.csv --fecha AAAA-MM-DD`.
   Descarta las del historial, prefiere dificultad Media y preguntas que caben en el vídeo. Deja la pregunta en `src/datos/preguntas.json` y los datos completos en `pregunta-del-dia/elegida.json`. Para forzar una fila: `--fila N`.
   - **Comprueba la respuesta con la norma** (skill `prolince-preguntas-test`, `references/normativa`) antes de seguir. Si el banco estuviera mal, elige otra (`--fila`) y avisa al usuario de la fila errónea.
4. **Vídeo.** `npm run render` genera `out/pregunta-del-dia-<fecha>.mp4` y la portada `.png`. Revisa un fotograma de la solución (`npx remotion still PreguntaTest /tmp/x.png --frame=420 --scale=0.4`): la opción marcada debe ser la correcta y el texto no se puede cortar.
5. **Descripción** en `out/pregunta-del-dia-<fecha>.txt` (para Instagram/TikTok), con esta estructura:
   - `🟢 PREGUNTA DEL DÍA · Tema N · Título`
   - Enunciado y opciones A) a D)
   - `✅ Respuesta correcta: X) …`
   - `📘 Explicación:` de 2 o 3 párrafos breves y claros, citando el artículo y explicando el porqué (amplía la del banco con la norma)
   - `⚠️ Trampa típica:` por qué fallan los distractores
   - `💬 ¿La has acertado? Cuéntanoslo en comentarios.` y `👉 Temario, tests y simulacros cronometrados en prolinceacademia.com`
   - 6-9 hashtags (#GuardiaCivil #OposicionesGuardiaCivil #Oposiciones #PreguntaDelDía #TestGuardiaCivil + los del tema + #ProLince)
   - Al final: `---` y `Referencia del banco: <archivo> · fila N · <subtema>`
6. **Publicar en el panel.** `node pregunta-del-dia/publicar.mjs` sube el MP4, la portada y el .txt, crea la carpeta del día en /admin/publicaciones/pregunta-del-dia y **borra las de días anteriores** (vídeos, portadas y descripciones). Necesita `SUPABASE_SERVICE_ROLE_KEY` en el entorno y acceso de red a `mfclhieniekxksdfnabj.supabase.co`. Si falta cualquiera de las dos cosas, entrega los archivos con SendUserFile y dile qué falta. Nunca escribas la clave en el repositorio.
7. **Registrar.** `node pregunta-del-dia/elegir.mjs --registrar`, y después haz commit y push de `historial.csv` a la rama de trabajo. Si no se registra, la pregunta podría repetirse.
8. Entrega al usuario el MP4, la portada y el texto (SendUserFile) e indícale la ruta del panel: `/admin/publicaciones/pregunta-del-dia/<AAAA-MM-DD>`.

## Qué es fijo en la plantilla

Portada en el primer fotograma (sin cronómetro), cabecera con el logo y prolinceacademia.com a la derecha, titular «¿Sabrías responder a esta pregunta?», fondo del hero (aura y rejilla, sin órbitas ni marca de agua), móvil con la pantalla de test, cuenta atrás de 8 s, solución, tarjeta «Entiende la respuesta.» y cierre en verde profundo con «Empezar ahora». La letra se reduce sola en preguntas largas.
