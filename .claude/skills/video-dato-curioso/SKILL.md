---
name: video-dato-curioso
description: Publica el «dato curioso» de la Guardia Civil de la Academia ProLince — elige una curiosidad NO repetida de la base de curiosidades (Drive, Prolince RRSS/Curiosidades, carruseles Curiosidad_NN), la contrasta, monta el vídeo vertical (Reels/TikTok/Shorts) con la plantilla Remotion DatoCurioso de videos/, redacta la descripción y lo guarda en Drive (Prolince RRSS/Publicaciones/Dato curioso/<dd/mm/aaaa>). Úsala siempre que se pida un dato curioso, curiosidad, «¿sabías que…?» o un vídeo, reel, short o tiktok de historia o curiosidades de la Guardia Civil.
---

# Dato curioso

Hermana de `video-pregunta-del-dia`: misma estética de prolinceacademia.com y las mismas buenas prácticas. La plantilla (`videos/src/DatoCurioso.tsx`, con las piezas compartidas en `videos/src/comun.tsx`) es FIJA: no cambies el diseño salvo petición expresa. Solo cambian los datos. Si tocas `comun.tsx`, comprueba que los fotogramas de `PreguntaTest` siguen idénticos.

## Ubicaciones fijas

| Qué | Dónde |
| --- | --- |
| Base de curiosidades (carruseles de 3 PNG: gancho, respuesta, «Y además…») | Drive · `Prolince RRSS/Curiosidades/03_Curiosidades/Instagram/Feed` (id `1ISbzqVFBxBiKt-u8DLfy-rQ53fH95Tcz`), carpetas `Curiosidad_01` a `Curiosidad_30` |
| Curiosidades ya transcritas a texto | `videos/dato-curioso/banco.json` |
| Historial de publicadas (fuente de verdad anti-repetición) | `videos/dato-curioso/historial.csv` |
| Destino de las publicaciones | Drive · `Prolince RRSS/Publicaciones/Dato curioso` (id `1qOTlE6tbE-CP_5hnE4H2gbpDC3Jdvi9_`) |

## Pasos (en `videos/`)

1. **Elegir sin repetir.** `node dato-curioso/elegir.mjs --pendientes` muestra las carpetas ya publicadas. Si en `banco.json` no queda ninguna libre, transcribe la siguiente `Curiosidad_NN` que no esté en el historial (la de número más bajo; `Curiosidad_01` es el tricornio):
   - Lista sus PNG con `search_files` (`parentId = '<id carpeta>'`). `read_file_content` solo saca el texto de algunas; si viene vacío, descárgala con `download_file_content` (la salida se guarda en `tool-results`), decodifícala con `jq -r .content <salida> | base64 -d > x.png` y mírala con Read.
   - Añade una entrada a `banco.json`: `gancho` (pregunta de la diapositiva 1), `destacar` (palabra del gancho que se subraya), `fecha` (del hecho, para la etiqueta; `""` si no aporta), `respuesta` (diapositiva 2, literal), `resaltar` (fragmento literal de la respuesta en negrita), `cifra` y `ademas`, y `fuente`.
   - **Las cifras grandes NO son obligatorias.** `cifra: { "valor": 1844, "desde": 1800 }` pone un número grande animado en la ficha solo si es el protagonista del dato y no se repite en la respuesta; si no, `null`. `ademas: { "texto": "…", "cifra": 438 | null }` es la tarjeta «Y además…» (la cifra solo si es un número llamativo; el texto se lee tras ella); `null` si la diapositiva 3 no aporta nada.
2. **Contrastar el dato** con una fuente fiable (web de la Guardia Civil, efemérides, BOE). Si el carrusel tiene un error, corrígelo en `banco.json` y avisa al usuario.
3. `npm install` si hace falta y `node dato-curioso/elegir.mjs --fecha AAAA-MM-DD` (o `--carpeta Curiosidad_NN`). Deja los datos en `src/datos/curiosidad.json`.
4. **Vídeo.** `npm run render:curiosidad` genera `out/dato-curioso-<fecha>.mp4` (la duración se calcula sola según lo que haya que leer, unos 15-20 s) y la portada `-portada.png`. Revisa fotogramas (`npx remotion still DatoCurioso /tmp/x.png --frame=0 --scale=0.4`): la portada es la captura con todo el contenido, así que ahí no debe cortarse ni solaparse nada. La letra del gancho y de la respuesta se reduce sola si son largos.
5. **Descripción** en `out/dato-curioso-<fecha>.txt`:
   - `🟢 DATO CURIOSO · Historia de la Guardia Civil`
   - El gancho con emoji, 2 párrafos breves con el dato ampliado y contrastado (`📅 fecha…`)
   - `✨ Y además…`
   - `📌 Para el examen:` enlace con el temario (datos que sí caen)
   - `💬 ¿Lo sabías? Cuéntanoslo en comentarios.` y `👉 Temario, tests y simulacros cronometrados en prolinceacademia.com`
   - 6-9 hashtags (#GuardiaCivil #OposicionesGuardiaCivil #Oposiciones #DatoCurioso #HistoriaGuardiaCivil + los del dato + #ProLince)
   - Al final: `---` y `Referencia: Prolince RRSS/Curiosidades · Curiosidad_NN · Fuente: …`
6. **Drive.** Dentro de «Dato curioso», crea la carpeta `dd/mm/aaaa` (o reutilízala) y sube el `.txt` con `create_file` (`textContent`, `contentMimeType: text/plain`, `disableConversionToGoogleType: true`) y el `.mp4` con `node pregunta-del-dia/subir-drive.mjs out/<archivo>.mp4 <id carpeta fecha>` (necesita `GDRIVE_CLIENT_ID`, `GDRIVE_CLIENT_SECRET`, `GDRIVE_REFRESH_TOKEN`; si faltan, entrega el MP4 con SendUserFile y pide que lo arrastre a la carpeta).
7. **Registrar.** `node dato-curioso/elegir.mjs --registrar` y commit y push de `historial.csv` y `banco.json`.
8. Entrega el MP4, la portada y el texto (SendUserFile) con el enlace a la carpeta de Drive.

## Qué es fijo en la plantilla

No es un test: **sin cuenta atrás ni incógnita**, el dato se cuenta directamente y cada bloque dura lo que se tarda en leerlo. Portada en el primer fotograma: una captura del contenido completo en pantalla (gancho, ficha y «Y además…»), sin brillos a medias. Cabecera con el logo y prolinceacademia.com, etiqueta «Dato curioso · Guardia Civil», gancho palabra a palabra con subrayado verde suave, fondo del hero, ficha blanca con brillo y sello del emblema, fecha opcional, cifra grande opcional, respuesta con el fragmento clave en verde, tarjeta «Y además…» opcional (con o sin contador) y cierre en verde profundo con «¿Lo sabías?» y «Empezar ahora». El contenido se centra en vertical, así que funciona con o sin cifras.
