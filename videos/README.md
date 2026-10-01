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

## Stories de Instagram (datos del temario y consejos)

Plantilla `StoryInfo` (1080×1920, 12–18 s) para Stories: el contenido queda entre las franjas que tapa Instagram (250 px arriba y 340 abajo) y termina con el cierre verde y prolinceacademia.com. Las stories viven en `src/datos/stories.json`, una por objeto:

| Campo | Qué es |
| --- | --- |
| `id` | Nombre del archivo de salida (`story-…`) |
| `tipo` | `dato` (dato del temario), `consejo` (consejo de estudio, puntos numerados) o `trampa` (en naranja) |
| `tema` | Opcional: «Tema 4 · Derecho Constitucional» |
| `titulo` | Titular; lo que va entre `**dobles asteriscos**` sale resaltado |
| `destacado` | Opcional: cifra grande `{ "valor": "169", "etiqueta": "artículos" }`; cuenta hacia arriba salvo `"contar": false` |
| `puntos` | De 1 a 4; `"Clave \| Valor"` se pinta en dos columnas (fechas, plazos, órganos) |
| `cierre` | Opcional: frase final (si no, una por tipo) |

La duración se calcula sola según lo que haya que leer.

```bash
npm run stories                       # todas: out/stories/<id>.mp4 y <id>.png
npm run stories -- story-ce-cifras    # solo las indicadas
npm run studio                        # carpeta «Stories» con una entrada por story
```
