# Vídeos ProLince (Remotion)

Plantilla fija de «pregunta del día» en vertical (1080×1920) para Reels, TikTok y Shorts, con la estética de prolinceacademia.com.

```bash
cd videos
npm install
npm run desde-csv -- banco.csv 3 7   # filas del CSV del banco de la web → src/datos/preguntas.json (sin números = todas)
npm run render                       # out/<id>.mp4 y out/<id>-portada.png por cada pregunta
SEGUNDOS=10 npm run render           # otra duración de la cuenta atrás (por defecto 8 s)
npm run studio                       # editor visual en el navegador
```

`src/datos/preguntas.json`: `[{ id, tema, enunciado, opciones: [4], correcta: 0-3, explicacion }]`.

El primer fotograma del vídeo es la portada (la escena completa sin cronómetro), para que la red social la use de miniatura; también se exporta aparte como PNG.

## Dato curioso

Plantilla `DatoCurioso` (21 s) para curiosidades de la Guardia Civil, con las mismas piezas de la web (`src/comun.tsx`).

```bash
node dato-curioso/elegir.mjs --fecha 2026-09-27   # banco.json → src/datos/curiosidad.json, sin repetir (historial.csv)
npm run render:curiosidad                          # out/dato-curioso-<fecha>.mp4 y su portada
node dato-curioso/elegir.mjs --registrar           # tras publicarlo
```
