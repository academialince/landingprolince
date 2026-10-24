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


def cubierta_provisional(kind, name, logo, isotipo):
    """Una única cubierta continua: fondo, tipografía y marca comparten perspectiva."""
    flat = Image.new('RGBA', (840, 1188))
    draw = ImageDraw.Draw(flat)
    for y in range(1188):
        t = y / 1187
        color = tuple(round(a * (1 - t) + b * t) for a, b in zip((5, 66, 46), (0, 39, 27)))
        draw.line((0, y, 839, y), fill=(*color, 255))

    def font(size):
        return ImageFont.truetype(str(SOURCES / 'Manrope-Bold.ttf'), size)

    def label(x, y, value, size, anchor='la'):
        draw.text((x + 1, y + 2), value, font=font(size), fill='#002A1D', anchor=anchor)
        draw.text((x, y), value, font=font(size), fill='#EEF6F0', anchor=anchor)

    if kind == 'resumen':
        logo_x, logo_y, logo_w = 50, 65, 445
        seal_x, seal_y, seal_w = 220, 720, 400
        label(50, 255, 'TEMARIO', 156)
        label(50, 415, 'RESUMEN', 156)
        draw.line((50, 610, 790, 610), fill='#659D7B', width=3)
        if name.startswith('gc-'):
            label(50, 650, 'GUARDIA CIVIL', 34)
        else:
            label(50, 640, 'COLEGIO DE', 30)
            label(50, 683, 'GUARDIAS JÓVENES', 30)
        badge_x, badge_w, footer_size = 215, 410, 34
    elif kind == 'ingles':
        logo_x, logo_y, logo_w = 30, 65, 330
        seal_x, seal_y, seal_w = 40, 700, 305
        label(30, 270, 'TEMARIO', 78)
        label(30, 370, 'INGLÉS', 78)
        draw.line((30, 475, 360, 475), fill='#659D7B', width=2)
        if name.startswith('gc-'):
            label(30, 515, 'GUARDIA CIVIL', 28)
        else:
            label(30, 510, 'COLEGIO DE', 24)
            label(30, 555, 'GUARDIAS JÓVENES', 24)
        badge_x, badge_w, footer_size = 25, 335, 27
    else:
        logo_x, logo_y, logo_w = 535, 62, 280
        seal_x, seal_y, seal_w = 550, 710, 260
        # Se reduce el tamaño de fuente, nunca la anchura de las letras.
        label(676, 270, 'ORTOGRAFÍA', 42, 'mm')
        label(676, 340, 'Y GRAMÁTICA', 42, 'mm')
        draw.line((530, 435, 820, 435), fill='#659D7B', width=2)
        if name.startswith('gc-'):
            label(676, 520, 'GUARDIA CIVIL', 24, 'mm')
        else:
            label(676, 500, 'COLEGIO DE', 23, 'mm')
            label(676, 555, 'GUARDIAS JÓVENES', 22, 'mm')
        badge_x, badge_w, footer_size = 530, 295, 23
    flat.alpha_composite(logo.resize((logo_w, round(logo_w * logo.height / logo.width)), Image.Resampling.LANCZOS), (logo_x, logo_y))
    seal = isotipo.resize((seal_w, seal_w), Image.Resampling.LANCZOS)
    seal.putalpha(seal.getchannel('A').point(lambda a: round(a * .44)))
    flat.alpha_composite(seal, (seal_x, seal_y))
    draw = ImageDraw.Draw(flat)
    draw.line((logo_x, 210 if kind == 'resumen' else 185 if kind == 'ingles' else 170,
               logo_x + logo_w, 210 if kind == 'resumen' else 185 if kind == 'ingles' else 170), fill='#659D7B', width=2)
    draw.rounded_rectangle((badge_x, 1080, badge_x + badge_w, 1150), radius=25, outline='#91BAA1', width=2)
    label(badge_x + badge_w / 2, 1114, 'ACTUALIZADO 2027', footer_size, 'mm')
    return flat


def marca_oficial(image, name, logo, isotipo):
    """Proyecta cada cubierta de una pieza; conserva cantos, lomos y sombras."""
    for plane, visible, kind in PROVISIONAL[name]:
        flat = cubierta_provisional(kind, name, logo, isotipo)
        coeff = perspective(flat.size, plane)
        layer = flat.transform(image.size, Image.Transform.PERSPECTIVE, coeff, Image.Resampling.BICUBIC)
        mask = Image.new('L', flat.size, 255).transform(image.size, Image.Transform.PERSPECTIVE, coeff, Image.Resampling.BICUBIC)
        if visible:
            occlusion = Image.new('L', image.size)
            ImageDraw.Draw(occlusion).polygon(visible, fill=255)
            mask = ImageChops.multiply(mask, occlusion)
        image = Image.composite(layer, image, mask)
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
