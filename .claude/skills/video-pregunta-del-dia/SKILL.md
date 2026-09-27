---
name: video-pregunta-del-dia
description: Monta el vídeo vertical (Reels/TikTok/Shorts) de la «pregunta del día» de la Academia ProLince con la plantilla Remotion de videos/. Úsala siempre que se pida un vídeo, reel, short o tiktok de una o varias preguntas tipo test, la pregunta del día o un lote de vídeos de preguntas, tanto si se pega la pregunta, filas del CSV del banco de la web o un archivo CSV.
---

# Vídeo de la pregunta del día

La plantilla está en `videos/` (Remotion). Es FIJA: no cambies el diseño salvo que el usuario lo pida expresamente. Solo cambian los datos.

## Entrada que puede dar el usuario

1. **Un CSV del banco de la web** (formato de importación `enunciado;tipo;opcion_a;opcion_b;opcion_c;opcion_d;respuesta_correcta;tema;subtema;dificultad;explicacion;cursos_aplicables`), entero o con números de fila.
2. **Filas pegadas** de ese CSV en el chat → guárdalas en un .csv con la cabecera de arriba.
3. **La pregunta en texto libre** (enunciado, 4 opciones, cuál es la correcta, explicación) → escribe `videos/src/datos/preguntas.json` a mano.

Si no da tema, explicación o la correcta, pregúntalo: no te lo inventes. Si la explicación no existe, redáctala breve (máx. ~250 caracteres) citando el artículo y la trampa, y dilo en la respuesta.

## Pasos

```bash
cd videos
npm install                                  # solo la primera vez en la sesión
npm run desde-csv -- ruta/banco.csv 3 7      # filas 3 y 7 (sin números = todas) → src/datos/preguntas.json
npm run render                               # out/<id>.mp4 + out/<id>-portada.png por pregunta
```

- Cuenta atrás por defecto: 8 s. Otra duración: `SEGUNDOS=10 npm run render`.
- Formato de `preguntas.json`: `[{ id, tema, enunciado, opciones: [4], correcta: 0-3, explicacion }]`. `tema` se muestra como «Tema N · Título».
- Antes de entregar, revisa al menos un fotograma de la solución: `npx remotion still PreguntaTest /tmp/x.png --frame=400 --scale=0.4 --props='<json de la pregunta con segundosCuenta>'` y comprueba que la opción marcada es la correcta y que no se corta el texto.
- Entrega los MP4 y las portadas con SendUserFile. `out/` está en .gitignore: no se suben al repositorio.

## Qué es fijo en la plantilla

Portada en el primer fotograma (escena completa, sin cronómetro), cabecera con logo y prolinceacademia.com, titular «¿Sabrías responder a esta pregunta?», móvil con la pantalla de test, cuenta atrás de 8 s, solución, tarjeta «Entiende la respuesta.» y cierre en verde profundo con «Empezar ahora». La letra se reduce sola en preguntas largas.
