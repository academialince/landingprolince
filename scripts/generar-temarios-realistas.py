"""Prepara las cuatro miniaturas de temarios (Pillow y Sharp, sin descargas).

Las bases de imagen se conservan en recursos/temarios. Para los packs completos,
la portada real se proyecta sobre la cara frontal del libro, sin redibujar textos
ni logotipos. Las portadas de inglés, ortografía y resumen son PROVISIONALES.
"""
from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess
from PIL import Image, ImageChops, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[1]
SOURCES = ROOT / 'scripts/recursos/temarios'
OUTPUT = ROOT / 'public/temarios/miniaturas'
# Vértices de la cara frontal: superior izquierdo, superior derecho,
# inferior derecho, inferior izquierdo, en coordenadas normalizadas a 1254 × 1254.
FRONTS = {
    'gc': [(364, 165), (991, 103), (990, 1095), (364, 1180)],
    'cgj': [(357, 175), (1013, 113), (1013, 1112), (357, 1202)],
}

# Planos de las cubiertas provisionales y su porción visible, sin tocar lomos,
# cantos, sombras ni los libros que están delante. Coordenadas sobre las bases.
PROVISIONAL = {
    'gc-libro-resumen': [([(300, 130), (1032, 69), (1031, 1095), (278, 1209)], None, 'resumen')],
    'cgj-libro-resumen': [([(304, 140), (1026, 57), (1023, 1093), (338, 1224)], None, 'resumen')],
    'gc-libro-completo': [
        ([(100, 273), (605, 190), (600, 920), (100, 1006)], [(100, 273), (317, 238), (317, 959), (100, 1006)], 'ingles'),
        ([(690, 313), (1238, 222), (1238, 890), (690, 1002)], [(1004, 261), (1238, 222), (1238, 890), (1004, 950)], 'ortografia'),
    ],
    'cgj-libro-completo': [
        ([(96, 250), (605, 165), (600, 920), (96, 1005)], [(96, 250), (304, 218), (304, 952), (96, 1005)], 'ingles'),
        ([(690, 300), (1240, 200), (1240, 890), (690, 1000)], [(1031, 239), (1240, 200), (1240, 890), (1031, 930)], 'ortografia'),
    ],
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


def fondo(cubierta, top, bottom):
    """Limpia la marca recreada; mantiene un degradado suave sobre el papel mate."""
    draw = ImageDraw.Draw(cubierta)
    for y in range(top, bottom):
        t = (y - top) / max(1, bottom - top)
        color = tuple(round(a * (1 - t) + b * t) for a, b in zip((0, 57, 39), (0, 40, 27)))
        draw.line((0, y, 839, y), fill=(*color, 255))


def marca_oficial(image, name, logo, isotipo):
    """Inserta los SVG oficiales; nunca vuelve a generar el león ni el wordmark."""
    for plane, visible, kind in PROVISIONAL[name]:
        quad = [plane[i] for i in (0, 3, 2, 1)]
        flat = image.transform((840, 1188), Image.Transform.QUAD,
            tuple(v for point in quad for v in point), Image.Resampling.BICUBIC)
        mask = Image.new('L', flat.size)
        mask_draw = ImageDraw.Draw(mask)
        if kind == 'resumen':
            header_bottom, lower_top = 230, 690 if name.startswith('gc-') else 620
            logo_x, logo_y, logo_w = 45, 62, 445
            seal_x, seal_y, seal_w = 220, 710, 400
            badge_x, badge_w, font_size = 215, 410, 34
        elif kind == 'ingles':
            header_bottom, lower_top = 210, 610
            logo_x, logo_y, logo_w = 30, 65, 330
            seal_x, seal_y, seal_w = 35, 690, 310
            badge_x, badge_w, font_size = 25, 335, 27
        else:
            header_bottom, lower_top = 180, 585
            logo_x, logo_y, logo_w = 535, 62, 280
            seal_x, seal_y, seal_w = 545, 700, 265
            badge_x, badge_w, font_size = 530, 295, 23
        fondo(flat, 0, header_bottom)
        fondo(flat, lower_top, 1188)
        flat.alpha_composite(logo.resize((logo_w, round(logo_w * logo.height / logo.width)), Image.Resampling.LANCZOS), (logo_x, logo_y))
        seal = isotipo.resize((seal_w, seal_w), Image.Resampling.LANCZOS)
        seal.putalpha(seal.getchannel('A').point(lambda a: round(a * .42)))
        flat.alpha_composite(seal, (seal_x, seal_y))
        draw = ImageDraw.Draw(flat)
        draw.line((logo_x, header_bottom - 14, logo_x + logo_w, header_bottom - 14), fill='#699C7F', width=2)
        draw.rounded_rectangle((badge_x, 1080, badge_x + badge_w, 1150), radius=25, outline='#91BAA1', width=2)
        font = ImageFont.truetype(str(SOURCES / 'Manrope-Bold.ttf'), font_size)
        draw.text((badge_x + badge_w / 2, 1114), 'ACTUALIZADO 2027', font=font, fill='#F2F8F4', anchor='mm')
        # Solo se sustituyen cabecera y zona de emblema, conservando los títulos.
        mask_draw.rectangle((0, 0, 839, header_bottom - 1), fill=255)
        mask_draw.rectangle((0, lower_top, 839, 1187), fill=255)
        coeff = perspective(flat.size, plane)
        layer = flat.transform(image.size, Image.Transform.PERSPECTIVE, coeff, Image.Resampling.BICUBIC)
        projected_mask = mask.transform(image.size, Image.Transform.PERSPECTIVE, coeff, Image.Resampling.BICUBIC)
        if visible:
            occlusion = Image.new('L', image.size)
            ImageDraw.Draw(occlusion).polygon(visible, fill=255)
            projected_mask = ImageChops.multiply(projected_mask, occlusion)
        image = Image.composite(layer, image, projected_mask)
    return image


# Sharp rasteriza los mismos originales que usa src/components/ui/logo.tsx.
with TemporaryDirectory(prefix='prolince-marca-') as cache:
    seal_path, logo_path = Path(cache) / 'isotipo.png', Path(cache) / 'logo.png'
    subprocess.run(['node', '-e', "const s=require('sharp');Promise.all([s('public/brand/prolince-logo.svg').resize(800).png().toFile(process.argv[1]),s('public/brand/prolince-logo-horizontal-negativo.svg').resize(1200).png().toFile(process.argv[2])])", str(seal_path), str(logo_path)], cwd=ROOT, check=True)
    ISOTIPO = Image.open(seal_path).convert('RGBA')
    LOGO = Image.open(logo_path).convert('RGBA')


OUTPUT.mkdir(parents=True, exist_ok=True)
for course, folder in [('gc', 'guardia-civil'), ('cgj', 'guardias-jovenes')]:
    for kind in ('completo', 'resumen'):
        name = f'{course}-libro-{kind}.webp'
        image = Image.open(SOURCES / name).convert('RGBA')
        image = marca_oficial(image, name.removesuffix('.webp'), LOGO, ISOTIPO)
        if kind == 'completo':
            original = Image.open(ROOT / f'public/temarios/{folder}/001.webp').convert('RGBA')
            texture = original.transform(image.size, Image.Transform.PERSPECTIVE,
                perspective(original.size, [(x * image.width / 1254, y * image.height / 1254)
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
