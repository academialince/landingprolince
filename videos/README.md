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

## Historias animadas con monigotes

Vídeos verticales (≈1 min) que cuentan un hecho del temario con monigotes animados: intro, escenas con fecha, línea de tiempo, bocadillos, texto que se escribe solo, recuadro «CAE EN EXAMEN», una pregunta de repaso con cuenta atrás y el cierre de la academia. Cada episodio es una entrada de `src/datos/historias.json` y aparece como composición en la carpeta «Historias» del Studio.

```bash
npm run historias                              # todas: out/<id>.mp4 y out/<id>-portada.png
npm run historias -- historia-fundacion-1844   # solo esa
```

Episodios incluidos: `historia-fundacion-1844`, `historia-constitucion-1978` y `historia-lo-2-1986`.

### Escribir un episodio nuevo

Añade un objeto a `src/datos/historias.json` (el esquema está en `src/historia/HistoriaAnimada.tsx`):

- `id`, `serie`, `titulo`, `subtitulo` y la lista de `escenas`; `repaso` (pregunta con 3 o 4 opciones, `correcta` desde 0 y `explicacion`) es opcional.
- Cada escena: `fecha`, `hito` (etiqueta corta de la línea de tiempo), `titulo`, `texto` (máx. ~170 caracteres), `escenario`, `personajes`, y opcionalmente `objetos`, `clave` (recuadro CAE EN EXAMEN) y `segundos` (si no, se calcula según lo que haya que leer).
- Escenarios: `camino`, `despacho`, `palacio`, `cuartel`, `congreso`, `plaza`, `aula`.
- Objetos (`{ tipo, x, texto? }`): `urna`, `mesa`, `bandera`, `cartel`, `boe`, `caballo`.
- Personajes (`src/historia/personajes.ts`): `guardia` (tricornio y fusil, s. XIX), `guardia-actual`, `duque`, `reina`, `rey`, `ministro`, `bandolero`, `viajero`, `ciudadano`, `ciudadana`, `diputado`, `policia`, `militar`. Se puede cambiar su `sombrero` o `accesorio`.
- Cada personaje: `x` (0 a 1000), `pose` (`de-pie`, `habla`, `saluda`, `hola`, `senala`, `brazos-arriba`, `lee`, `piensa`, `camina`, `firmes`), `mirando` (`izq`/`der`), `entra` (`izquierda`, `derecha` andando o `aparece`), `desde` (segundo en que entra), `nombre` (etiqueta a sus pies), `dice` + `diceDesde` (bocadillo) y `escala` (1.25 por defecto; 1.1 si hay tres en escena).

Comprueba cada fecha y artículo con la norma antes de publicar, y revisa un par de fotogramas con `npx remotion still <id> out/f.png --frame=N --scale=0.4`.
