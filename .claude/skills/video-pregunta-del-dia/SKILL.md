---
name: video-pregunta-del-dia
description: Publica la «pregunta del día» de la Academia ProLince — elige una pregunta NO repetida del banco de preguntas (GUARDIA CIVIL/TEST en Google Drive), la comprueba con la norma, monta el vídeo vertical (Reels/TikTok/Shorts) con la plantilla Remotion de videos/, redacta la descripción con la explicación y la guarda en Drive (Prolince RRSS/Publicaciones/Pregunta del día/<número secuencial>). Úsala siempre que se pida la pregunta del día, un vídeo, reel, short o tiktok de preguntas tipo test o un lote de esos vídeos.
---

# Pregunta del día

La plantilla de vídeo (`videos/`, Remotion) es FIJA: no cambies el diseño salvo petición expresa. Solo cambian los datos. Todos los comandos se ejecutan dentro de `videos/`. Funciona igual que su hermana `video-dato-curioso`: cada publicación lleva un **número secuencial** (1, 2, 3…), nunca la fecha.

## Ubicaciones

| Qué | Dónde |
| --- | --- |
| Banco de preguntas (CSV por tema, formato de importación de la web) | Google Drive · `GUARDIA CIVIL/TEST` (id de carpeta `1hT7xX0DlbbkRr6bjK2-4LDRX2qMUUZGJ`) |
| Destino de las publicaciones | Google Drive · `Prolince RRSS/Publicaciones/Pregunta del día` (id `1TZixJnlpnVXa86uxpsquDtyCns4tO5zW`), una carpeta por publicación llamada con su número (`1`, `2`…) |
| Historial anti-repetición (fuente de verdad) | `videos/pregunta-del-dia/historial.csv` (la columna `numero` es el número de la publicación) |
| Configuración local | `videos/.env.local` (copia de `.env.example`, fuera de git): `PROLINCE_BANCO_DIR` y, para el panel, `SUPABASE_SERVICE_ROLE_KEY` |

## 0. Preparación (una vez por equipo o sesión)

- `npm install` si no existe `videos/node_modules`.
- Remotion descarga su propio Chromium en el primer render (en la nube usa el preinstalado, ya configurado en `remotion.config.ts`).

## 1. Número y tema

- **N** es el número de la publicación: el siguiente al mayor de la columna `numero` de `historial.csv`. Comprueba también en Drive que no exista ya la carpeta `N`.
- Si el usuario no indica el tema, elige el (1 a 23) que lleve más tiempo sin salir según `historial.csv`, para rotarlos todos.

## 2. Elegir la pregunta sin repetir

Usa la primera vía disponible:

- **A. Carpeta sincronizada** (VS Code con Google Drive para escritorio). Si `.env.local` tiene `PROLINCE_BANCO_DIR`:
  `npm run elegir -- --tema T --numero N`
- **B. Conector de Google Drive** (tools `mcp__*Google_Drive*`). Busca los CSV del tema con `search_files` (`parentId = '1hT7xX0DlbbkRr6bjK2-4LDRX2qMUUZGJ'`), léelos con `read_file_content` y conviértelos con
  `node pregunta-del-dia/drive-a-csv.mjs <salida guardada o JSON> banco/<nombre>.csv`. Después:
  `npm run elegir -- banco/<nombre>.csv --numero N`
- **C. Ninguna de las dos.** Pide al usuario el CSV del tema.

`elegir` descarta las del historial, prefiere dificultad Media y preguntas que caben en el vídeo, y quita del enunciado la norma y el epígrafe que antepone el banco. Deja la pregunta en `src/datos/preguntas.json` y los datos completos en `pregunta-del-dia/elegida.json`. Para forzar una fila: `--fila F`.

**Comprueba la respuesta con la norma** antes de seguir (skill `prolince-preguntas-test`, `references/normativa`, o el texto legal vigente). Si el banco estuviera mal, elige otra con `--fila` y avisa al usuario de la fila errónea. Descarta también, y sustituye, las preguntas que dependan de datos de actualidad («revisar antes del examen») o que ya estén en el calendario de carruseles de Drive (`Prolince RRSS/Preguntas del dia/…/soluciones_preguntas_del_dia.csv`).

## 3. Vídeo

`npm run render` genera `out/pregunta-<N>.mp4` y `out/pregunta-<N>-portada.png` (los vídeos se nombran siempre `pregunta-<nº>`).
Revisa el fotograma de la solución **del MP4 final**: `npx remotion ffmpeg -y -ss 14 -i out/pregunta-<N>.mp4 -frames:v 1 -vf scale=324:-1 out/revision.png` y míralo con Read. La opción marcada debe ser la correcta, debe verse sobre la tarjeta de la explicación y ningún texto puede cortarse. Borra después `out/revision.png`.

## 4. Descripción

Escríbela en `out/pregunta-del-dia-<N>.txt` (UTF-8), para Instagram y TikTok, con esta estructura:

- `🟢 PREGUNTA DEL DÍA · Tema N · Título`
- Enunciado y opciones A) a D)
- `✅ Respuesta correcta: X) …`
- `📘 Explicación:` de 2 o 3 párrafos breves y claros, que citen el artículo y expliquen el porqué (amplía la explicación del banco con la norma)
- `⚠️ Trampa típica:` por qué fallan los distractores
- `💬 ¿La has acertado? Cuéntanoslo en comentarios.` y `👉 Temario, tests y simulacros cronometrados en prolinceacademia.com`
- De 6 a 9 hashtags: #GuardiaCivil #OposicionesGuardiaCivil #Oposiciones #PreguntaDelDía #TestGuardiaCivil, los del tema y #ProLince (sin hashtags con carga política ni repetidos)
- Al final: `---` y `Referencia del banco: <archivo> · fila N · <subtema>`

## 5. Guardar en Drive

Dentro de «Pregunta del día», crea la carpeta `N` (`create_file` con `contentMimeType: application/vnd.google-apps.folder`) y sube el `.txt` con `create_file` (`title: pregunta-del-dia-<N>.txt`, `textContent` con el contenido exacto del archivo, `contentMimeType: text/plain`, `disableConversionToGoogleType: true`). Comprueba que el `fileSize` que devuelve coincide con los bytes del archivo local (`wc -c`).
El conector no puede subir el MP4, porque habría que pegarlo entero en base64. Entrega el vídeo y la portada con SendUserFile y pide al usuario que los arrastre a la carpeta `N`.

## 6. Registrar

`npm run registrar` (o `npm run registrar -- <json> …` en lotes) añade la pregunta a `historial.csv` con su número. Después haz commit y push de `historial.csv`, porque es lo que evita repeticiones en otros equipos y sesiones.

## 7. Entrega

Indica al usuario el número, el tema y la respuesta de cada publicación, y el enlace a la carpeta de Drive. Adjunta el MP4, la portada y el .txt (SendUserFile en la nube; en local, las rutas de `out/`).

## Lotes (varios vídeos de una vez)

- Números consecutivos a partir del siguiente libre y **un tema distinto por vídeo**.
- Por cada número: `npm run elegir -- <csv del tema> --numero N` y `cp pregunta-del-dia/elegida.json pregunta-del-dia/lote/<N>.json` (`lote/` está fuera de git).
- Une el lote para el render: `jq -s 'sort_by(.numero) | [.[] | {id, tema, enunciado, opciones, correcta, explicacion: .explicacionVideo}]' pregunta-del-dia/lote/*.json > src/datos/preguntas.json`, y después `npm run render`. Tarda unos 2 minutos por vídeo, así que lánzalo en segundo plano y mientras tanto escribe las descripciones y crea las carpetas de Drive.
- Registra todas con `npm run registrar -- pregunta-del-dia/lote/*.json`.

## Panel de la web (opcional)

Si el usuario lo pide, `npm run publicar -- pregunta-del-dia/lote/<N>.json` (o sin argumento, la última elegida) sube la publicación a /admin/publicaciones/pregunta-del-dia y **borra las anteriores**. Necesita `SUPABASE_SERVICE_ROLE_KEY` y acceso de red a `mfclhieniekxksdfnabj.supabase.co`. Nunca escribas la clave en archivos de git ni la muestres.

## Qué es fijo en la plantilla

Portada en el primer fotograma (sin cronómetro), cabecera con el logo y prolinceacademia.com a la derecha, titular «¿Sabrías responder a esta pregunta?», fondo del hero (aura y rejilla, sin órbitas ni marca de agua), móvil con la pantalla de test, cuenta atrás de 8 s y solución. Al llegar la explicación, las opciones incorrectas se recogen para que la correcta quede siempre a la vista, y sube la tarjeta «Entiende la respuesta.». Cierre en verde profundo con «Empezar ahora». La letra se reduce sola en preguntas largas.
