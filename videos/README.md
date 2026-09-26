# Vídeos ProLince (Remotion)

Proyecto independiente de la landing para generar vídeos verticales (1080×1920) de preguntas tipo test para Reels, TikTok y Shorts.

```bash
cd videos
npm install
npm run studio        # editor visual en el navegador
npm run render        # renderiza la pregunta por defecto en out/pregunta.mp4
npm run render:todas  # un MP4 por cada pregunta de src/datos/preguntas.json (SEGUNDOS=8 para cambiar la cuenta atrás)
```

Cada pregunta en `src/datos/preguntas.json` lleva: `id`, `tema`, `enunciado`, `opciones` (4), `correcta` (índice 0–3) y `explicacion`.
