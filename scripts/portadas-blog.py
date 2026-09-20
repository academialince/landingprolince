"""
Recorta las portadas del blog a 1600×900 y las deja en `public/blog/`.

Las portadas son fotografías reales de Pexels, no imágenes generadas ni composiciones de marca:
un artículo sobre la oposición se lee mejor con la escena que cuenta —el pasillo de espera, la
pista, el diccionario— que con un rótulo sobre fondo verde. La procedencia de cada una está en
`contenido/blog/portadas-fotos.md`, que es donde hay que mirar para reemplazar cualquiera.

El ancla vertical no es un capricho: un recorte centrado le corta la cabeza al corredor, que está
en el borde superior del encuadre, y parte por la mitad el pasillo, que es una foto vertical.

    python3 scripts/portadas-blog.py

"""
import os, urllib.request
from PIL import Image

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DESTINO = os.path.join(RAIZ, "public", "blog")
# slug -> (id de Pexels, ancla vertical del recorte: 0 = arriba, 0.5 = centro, 1 = abajo)
ELEGIDAS = {
 "convocatoria-guardia-civil-2026-plazas-calendario": (8057549, 0.55),
 "preparar-oposicion-guardia-civil-desde-cero":       (8553886, 0.50),
 "examen-conocimientos-guardia-civil-estructura":     (37758739, 0.55),
 "pruebas-fisicas-guardia-civil-marcas-entrenamiento":(37718409, 0.06),
 "ortografia-gramatica-examen-guardia-civil":         (6683673, 0.50),
 "psicotecnico-guardia-civil-aptitudes-personalidad": (6684047, 0.45),
 "ingles-oposicion-guardia-civil":                    (29242209, 0.50),
 "fase-concurso-guardia-civil-meritos":               (7681227, 0.55),
 "entrevista-reconocimiento-medico-guardia-civil":    (38480584, 0.40),
 "colegio-guardias-jovenes-acceso-guardia-civil":     (6471429, 0.18),
}
URL = "https://images.pexels.com/photos/{0}/pexels-photo-{0}.jpeg?auto=compress&cs=tinysrgb&w=2400"
W, H = 1600, 900
CACHE = os.path.join(RAIZ, ".portadas-originales")
os.makedirs(CACHE, exist_ok=True)

for slug, (pid, ancla) in ELEGIDAS.items():
    ruta = os.path.join(CACHE, f"{pid}.jpg")
    if not os.path.exists(ruta):
        req = urllib.request.Request(URL.format(pid), headers={"User-Agent": "Mozilla/5.0"})
        with urllib.request.urlopen(req, timeout=60) as r, open(ruta, "wb") as f:
            f.write(r.read())
    im = Image.open(ruta).convert("RGB")
    escala = max(W / im.width, H / im.height)
    im = im.resize((round(im.width * escala), round(im.height * escala)), Image.LANCZOS)
    x = (im.width - W) // 2
    y = round((im.height - H) * ancla)
    calidad = 74 if pid == 37718409 else 84   # el tartán es muy ruidoso y se dispara de peso
    im.crop((x, y, x + W, y + H)).save(f"{DESTINO}/{slug}.jpg", quality=calidad, optimize=True, progressive=True)
    print(f"✓ {slug}.jpg  ← pexels {pid}  ({os.path.getsize(f'{DESTINO}/{slug}.jpg')//1024} KB)")
