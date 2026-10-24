"""Prepara las cuatro miniaturas fotográficas de temarios (Pillow, sin descargas).

Las bases de imagen se conservan en recursos/temarios. Para los packs completos,
la portada real se proyecta sobre la cara frontal del libro, sin redibujar textos
ni logotipos. Las portadas de inglés, ortografía y resumen son PROVISIONALES.
"""
from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
SOURCES = ROOT / 'scripts/recursos/temarios'
OUTPUT = ROOT / 'public/temarios/miniaturas'
# Vértices de la cara frontal: superior izquierdo, superior derecho,
# inferior derecho, inferior izquierdo, en coordenadas normalizadas a 1280 × 1280.
FRONTS = {
    'gc': [(277, 164), (930, 202), (902, 1196), (274, 1084)],
    'cgj': [(277, 164), (927, 207), (915, 1205), (277, 1114)],
}


def perspective(source_size, target):
    """Resuelve la homografía inversa para aplicar la portada original con Pillow."""
    width, height = source_size
    source = [(0, 0), (width, 0), (width, height), (0, height)]
    rows = []
    for (x, y), (u, v) in zip(target, source):
        rows.append([x, y, 1, 0, 0, 0, -u*x, -u*y, u])
        rows.append([0, 0, 0, x, y, 1, -v*x, -v*y, v])
    for column in range(8):
        pivot = max(range(column, 8), key=lambda r: abs(rows[r][column]))
        rows[column], rows[pivot] = rows[pivot], rows[column]
        divisor = rows[column][column]
        rows[column] = [value / divisor for value in rows[column]]
        for r in range(8):
            if r != column:
                factor = rows[r][column]
                rows[r] = [a-factor*b for a, b in zip(rows[r], rows[column])]
    return tuple(row[-1] for row in rows)


OUTPUT.mkdir(parents=True, exist_ok=True)
for course, folder in [('gc', 'guardia-civil'), ('cgj', 'guardias-jovenes')]:
    for kind in ('completo', 'resumen'):
        name = f'{course}-libro-{kind}.webp'
        image = Image.open(SOURCES / name).convert('RGBA')
        if kind == 'completo':
            original = Image.open(ROOT / f'public/temarios/{folder}/001.webp').convert('RGBA')
            texture = original.transform(image.size, Image.Transform.PERSPECTIVE,
                perspective(original.size, [(x * image.width / 1280, y * image.height / 1280)
                    for x, y in FRONTS[course]]), Image.Resampling.BICUBIC)
            image.alpha_composite(texture)
        # Margen constante: ni libros ni sombras quedan pegados al borde de la tarjeta.
        canvas = Image.new('RGBA', (1200, 1200))
        canvas.alpha_composite(image.resize((1100, 1100), Image.Resampling.LANCZOS), (50, 50))
        image = canvas
        destination = OUTPUT / name
        image.save(destination, 'WEBP', quality=88, method=6)
        assert destination.stat().st_size < 250_000, f'Miniatura demasiado pesada: {name}'
        print(f'{name}: {destination.stat().st_size / 1000:.1f} KB · 1200 × 1200')
