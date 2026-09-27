# Vídeos ProLince (Remotion)

Plantilla fija de «pregunta del día» en vertical (1080×1920) para Reels, TikTok y Shorts, con la estética de prolinceacademia.com. El flujo completo (elegir sin repetir, vídeo, descripción y publicación en el panel) lo sigue la skill `.claude/skills/video-pregunta-del-dia`: en Claude Code basta con pedir «pregunta del día» o escribir `/video-pregunta-del-dia`.

## Puesta en marcha en tu ordenador

```bash
cd videos
npm install
cp .env.example .env.local   # y rellena SUPABASE_SERVICE_ROLE_KEY y PROLINCE_BANCO_DIR
```

## Comandos

```bash
npm run elegir -- --tema 5            # pregunta no publicada del tema 5 (desde PROLINCE_BANCO_DIR)
npm run elegir -- banco/tema-5.csv    # o desde un CSV concreto
npm run render                        # out/<id>.mp4 y out/<id>-portada.png
npm run publicar                      # sube al panel y borra las de días anteriores
npm run registrar                     # la apunta en pregunta-del-dia/historial.csv
npm run studio                        # editor visual en el navegador
```

`SEGUNDOS=10 npm run render` cambia la cuenta atrás (por defecto 8 s).
