---
name: video-pregunta-del-dia
description: Publica la «pregunta del día» de la Academia ProLince — elige una pregunta NO repetida del banco de preguntas (GUARDIA CIVIL/TEST en Google Drive), monta el vídeo vertical (Reels/TikTok/Shorts) con la plantilla Remotion de videos/, redacta la descripción con la explicación y lo publica en el panel de la web (/admin/publicaciones/pregunta-del-dia/<fecha>), borrando las de días anteriores. Úsala siempre que se pida la pregunta del día, un vídeo, reel, short o tiktok de preguntas tipo test o un lote de esos vídeos.
---

# Pregunta del día

La plantilla de vídeo (`videos/`, Remotion) es FIJA: no cambies el diseño salvo petición expresa. Solo cambian los datos. Todos los comandos se ejecutan dentro de `videos/`.

## Ubicaciones

| Qué | Dónde |
| --- | --- |
| Banco de preguntas (CSV por tema, formato de importación de la web) | Google Drive · `GUARDIA CIVIL/TEST` (id de carpeta `1hT7xX0DlbbkRr6bjK2-4LDRX2qMUUZGJ`) |
| Destino | Panel de la web · Publicaciones › Pregunta del día › carpeta dd/mm/aaaa (Supabase `mfclhieniekxksdfnabj`: tabla y bucket privado `publicaciones`) |
| Historial anti-repetición (fuente de verdad) | `videos/pregunta-del-dia/historial.csv` |
| Configuración local | `videos/.env.local` (copia de `.env.example`, fuera de git): `SUPABASE_SERVICE_ROLE_KEY` y `PROLINCE_BANCO_DIR` |

## 0. Preparación (una vez por equipo o sesión)

- `npm install` si no existe `videos/node_modules`.
- Remotion descarga su propio Chromium en el primer render (en la nube usa el preinstalado, ya configurado en `remotion.config.ts`).

## 1. Tema

Si el usuario no lo indica, elige el tema (1 a 23) que lleve más tiempo sin salir según `historial.csv`, para rotarlos todos.

## 2. Elegir la pregunta sin repetir

Usa la primera vía disponible:

- **A. Carpeta sincronizada** (VS Code con Google Drive para escritorio). Si `.env.local` tiene `PROLINCE_BANCO_DIR`:
  `npm run elegir -- --tema N --fecha AAAA-MM-DD`
- **B. Conector de Google Drive** (tools `mcp__*Google_Drive*`). Busca los CSV del tema con `search_files` (`parentId = '1hT7xX0DlbbkRr6bjK2-4LDRX2qMUUZGJ'`), léelos con `read_file_content` y conviértelos con
  `node pregunta-del-dia/drive-a-csv.mjs <salida guardada o JSON> banco/<nombre>.csv`. Después:
  `npm run elegir -- banco/<nombre>.csv --fecha AAAA-MM-DD`
- **C. Ninguna de las dos.** Pide al usuario el CSV del tema.

`elegir` descarta las del historial, prefiere dificultad Media y preguntas que caben en el vídeo. Deja la pregunta en `src/datos/preguntas.json` y los datos completos en `pregunta-del-dia/elegida.json`. Para forzar una fila: `--fila N`.

**Comprueba la respuesta con la norma** antes de seguir (skill `prolince-preguntas-test`, `references/normativa`, o el texto legal vigente). Si el banco estuviera mal, elige otra con `--fila` y avisa al usuario de la fila errónea.

## 3. Vídeo

`npm run render` genera `out/pregunta-del-dia-<fecha>.mp4` y `out/pregunta-del-dia-<fecha>-portada.png`.
Revisa un fotograma de la solución: `npx remotion still PreguntaTest out/revision.png --frame=420 --scale=0.4`. Míralo: la opción marcada debe ser la correcta y ningún texto puede cortarse. Borra después `out/revision.png`.

## 4. Descripción

Escríbela en `out/pregunta-del-dia-<fecha>.txt` (UTF-8), para Instagram y TikTok, con esta estructura:

- `🟢 PREGUNTA DEL DÍA · Tema N · Título`
- Enunciado y opciones A) a D)
- `✅ Respuesta correcta: X) …`
- `📘 Explicación:` de 2 o 3 párrafos breves y claros, que citen el artículo y expliquen el porqué (amplía la explicación del banco con la norma)
- `⚠️ Trampa típica:` por qué fallan los distractores
- `💬 ¿La has acertado? Cuéntanoslo en comentarios.` y `👉 Temario, tests y simulacros cronometrados en prolinceacademia.com`
- De 6 a 9 hashtags: #GuardiaCivil #OposicionesGuardiaCivil #Oposiciones #PreguntaDelDía #TestGuardiaCivil, los del tema y #ProLince
- Al final: `---` y `Referencia del banco: <archivo> · fila N · <subtema>`

## 5. Publicar en el panel

`npm run publicar` sube el MP4, la portada y el .txt, crea la carpeta del día y **borra las de días anteriores** (vídeos, portadas y descripciones).
Necesita `SUPABASE_SERVICE_ROLE_KEY` (en `.env.local` o en el entorno) y acceso de red a `mfclhieniekxksdfnabj.supabase.co`. Si falla por cualquiera de las dos cosas, di qué falta y entrega los archivos de `out/`. Nunca escribas la clave en archivos que se suban a git ni la muestres en la conversación.

## 6. Registrar

`npm run registrar` añade la pregunta a `historial.csv`. Después haz commit y push de `historial.csv`, porque es lo que evita repeticiones en otros equipos y sesiones. Si no se registra, la pregunta podría repetirse.

## 7. Entrega

Indica al usuario la pregunta (tema y respuesta), las rutas de `out/` y la del panel: `/admin/publicaciones/pregunta-del-dia/<AAAA-MM-DD>`. Si tienes una herramienta para enviar archivos (por ejemplo, SendUserFile en la nube), adjunta el MP4, la portada y el .txt.

## Lotes (varios vídeos de una vez)

- Asigna una fecha a cada vídeo, en días consecutivos desde mañana salvo que el usuario diga otra cosa, y **un tema distinto por vídeo**.
- Por cada fecha: `npm run elegir -- <csv del tema> --fecha AAAA-MM-DD` y `cp pregunta-del-dia/elegida.json pregunta-del-dia/lote/<fecha>.json` (`lote/` está fuera de git).
- Descarta y sustituye (con `--fila`) las preguntas que dependan de datos de actualidad («revisar antes del examen») o que ya estén en el calendario de carruseles de Drive (`Prolince RRSS/Preguntas del dia/…/soluciones_preguntas_del_dia.csv`).
- Une el lote para el render: `jq -s '[.[] | {id: "pregunta-del-dia-\(.fecha)", tema, enunciado, opciones, correcta, explicacion: .explicacionVideo}]' pregunta-del-dia/lote/*.json > src/datos/preguntas.json`, y después `npm run render`. Tarda unos 2 minutos por vídeo, así que lánzalo en segundo plano y escribe mientras tanto las descripciones.
- Registra todas: `npm run registrar -- pregunta-del-dia/lote/*.json`.
- **No publiques el lote entero en el panel.** El panel solo conserva el último día, así que publicar el lote dejaría solo el último vídeo. Entrega los archivos y publica cada uno en su día, con `npm run publicar -- pregunta-del-dia/lote/<fecha>.json` si el lote sigue en ese equipo.

## Qué es fijo en la plantilla

Portada en el primer fotograma (sin cronómetro), cabecera con el logo y prolinceacademia.com a la derecha, titular «¿Sabrías responder a esta pregunta?», fondo del hero (aura y rejilla, sin órbitas ni marca de agua), móvil con la pantalla de test, cuenta atrás de 8 s, solución, tarjeta «Entiende la respuesta.» y cierre en verde profundo con «Empezar ahora». La letra se reduce sola en preguntas largas.
