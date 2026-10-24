"""Genera las miniaturas de packs y prepara los temarios desde sus fuentes fotográficas.

Uso: python3 scripts/generar-miniaturas.py
Requiere Pillow; descarga Barlow Condensed 800 y Manrope 500 de Google Fonts en la
carpeta temporal. Los temarios se preparan con generar-temarios-realistas.py;
sus fuentes de imagen se conservan en scripts/recursos/temarios.
"""
from pathlib import Path
from tempfile import gettempdir
from urllib.request import urlretrieve
import math
import subprocess
from PIL import Image, ImageDraw, ImageFont, ImageFilter

ROOT = Path(__file__).resolve().parents[1]
TMP = Path(gettempdir())
FONTS = {
    'barlow': 'https://fonts.gstatic.com/s/barlowcondensed/v13/HTxwL3I-JCGChYJ8VI-L6OO_au7B47b1_3E.ttf',
    'manrope': 'https://fonts.gstatic.com/s/manrope/v20/xn7_YHE41ni1AdIRqAuZuw1Bx9mbZk7PFO_F.ttf',
}
for family, url in FONTS.items():
    target = TMP / f'prolince-{family}.ttf'
    if not target.exists():
        urlretrieve(url, target)
subprocess.run(['node', '-e', "const s=require('sharp');Promise.all([s('public/brand/prolince-logo.svg').resize(400).png().toFile(process.argv[1]),s('public/brand/prolince-logo-horizontal-negativo.svg').resize({width:460}).png().toFile(process.argv[2])])", str(TMP / 'prolince-sello.png'), str(TMP / 'prolince-marca.png')], cwd=ROOT, check=True)
SEAL = Image.open(TMP / 'prolince-sello.png').convert('RGBA')
LOGO = Image.open(TMP / 'prolince-marca.png').convert('RGBA')
GREEN = '#35AB6C'
WHITE = '#F2F8F4'
MUTED = '#A2C5B1'


def text(im, xy, value, size=40, color=WHITE, family='barlow'):
    ImageDraw.Draw(im).text(xy, value, font=ImageFont.truetype(str(TMP / f'prolince-{family}.ttf'), size), fill=color)


def paste(im, item, xy, size):
    im.alpha_composite(item.resize(size, Image.Resampling.LANCZOS), xy)


def shadow(im, polygon, blur=25, opacity=100):
    layer = Image.new('RGBA', im.size)
    ImageDraw.Draw(layer).polygon(polygon, fill=(0, 0, 0, opacity))
    im.alpha_composite(layer.filter(ImageFilter.GaussianBlur(blur)))


def phone():
    im = Image.new('RGBA',(400,710))
    d=ImageDraw.Draw(im)
    d.rounded_rectangle((5,5,395,705),radius=58,fill='#1D3028',outline='#739382',width=4)
    d.rounded_rectangle((22,24,378,688),radius=43,fill='#EFF6F1')
    d.rounded_rectangle((145,36,255,54),radius=9,fill='#162B20')
    paste(im,SEAL,(43,80),(55,55))
    text(im,(112,84),'TESTS',40,'#005238')
    text(im,(44,171),'PREGUNTA TIPO TEST',26,'#005238')
    for y,w in [(231,294),(251,260),(271,182)]:
        d.rounded_rectangle((44,y,44+w,y+8),radius=4,fill='#8EAB9A')
    for i,letter in enumerate('ABC'):
        y=328+i*94
        d.rounded_rectangle((42,y,357,y+75),radius=12,fill='#D9EFE1' if i==1 else '#E4EBE6',outline=GREEN if i==1 else '#BCCFC2',width=3)
        text(im,(59,y+16),letter,32,'#005238')
        d.line((107,y+36,272,y+36),fill='#54846A',width=7)
        if i==1:
            d.line([(302,y+35),(314,y+47),(338,y+23)],fill='#005238',width=6)
    text(im,(44,627),'Respuesta correcta',24,'#005238','manrope')
    return im


def exam():
    im=Image.new('RGBA',(540,650))
    d=ImageDraw.Draw(im)
    d.rounded_rectangle((5,5,500,640),radius=15,fill='#EAF2EC',outline='#93B29E',width=3)
    paste(im,SEAL,(40,38),(65,65))
    text(im,(125,44),'SIMULACRO',45,'#005238')
    d.line((42,140,460,140),fill='#35AB6C',width=5)
    for i in range(5):
        y=189+i*78
        text(im,(40,y-7),f'{i+1:02}',28,'#005238')
        d.line((95,y+6,289,y+6),fill='#8FAE9A',width=7)
        for j in range(3):
            x=325+j*46
            d.rounded_rectangle((x,y-5,x+26,y+21),radius=4,outline='#6F9580',width=2)
            if j==i%3:
                d.line([(x+5,y+7),(x+11,y+14),(x+23,y-1)],fill='#005238',width=4)
    # Cronómetro sin tiempo inventado.
    d.rounded_rectangle((419,363,465,390),radius=4,fill=GREEN)
    d.ellipse((351,386,531,566),fill='#10271B',outline=GREEN,width=9)
    d.ellipse((370,405,512,547),outline='#729D82',width=2)
    d.line((441,424,441,476,475,493),fill=WHITE,width=8)
    return im


def pack(course, kind):
    im=Image.new('RGBA',(1600,1000))
    d=ImageDraw.Draw(im)
    for y in range(1000):
        for x in range(1600):
            glow=max(0,1-math.hypot((x-1190)/1020,(y-530)/800))
            d.point((x,y),fill=(int(9+glow*4),int(22+glow*39),int(16+glow*23)))
    for x in range(0,1600,64): d.line((x,0,x,1000),fill='#203A2C')
    for y in range(0,1000,64): d.line((0,y,1600,y),fill='#203A2C')
    # Esquinas de visor decorativas; franja superior izquierda libre para etiquetas HTML.
    for x,y,sx,sy in [(42,155,1,1),(1558,42,-1,1),(42,958,1,-1),(1558,958,-1,-1)]:
        d.line([(x+sx*38,y),(x,y),(x,y+sy*38)],fill='#508568',width=3)
    paste(im,LOGO,(80,180),(335,round(LOGO.height*335/LOGO.width)))
    label='GUARDIA CIVIL' if course=='gc' else 'GUARDIAS JÓVENES'
    d.rounded_rectangle((80,330,570 if course=='cgj' else 470,394),radius=8,fill='#005238',outline='#397552',width=2)
    text(im,(103,339),label,37)
    titles={'tests':['SUSCRIPCIÓN','DE TESTS'],'simulacros':['PACK ESPECIAL','SIMULACROS'],'ahorro':['PACK','AHORRO']}[kind]
    for i,title in enumerate(titles): text(im,(76,443+i*116),title,108)
    # Barra de rayas diagonales de marca.
    for x in range(85,399,25): d.polygon([(x,800),(x+11,800),(x+35,764),(x+24,764)],fill=GREEN)
    if kind=='tests':
        item=phone().rotate(-8,Image.Resampling.BICUBIC,expand=True)
        shadow(im,[(1010,824),(1420,806),(1500,904),(940,930)],35,130)
        im.alpha_composite(item,(980,141))
    elif kind=='simulacros':
        item=exam().rotate(-7,Image.Resampling.BICUBIC,expand=True)
        shadow(im,[(930,805),(1450,801),(1500,915),(900,912)],35,130)
        im.alpha_composite(item,(900,155))
    else:
        # Temario digital en una tableta, simulacro y móvil: composición del pack ahorro.
        d.rounded_rectangle((1020,148,1468,760),radius=28,fill='#14271D',outline='#6B907B',width=5)
        front=Image.open(ROOT / f"public/temarios/{'guardia-civil' if course=='gc' else 'guardias-jovenes'}/001.webp").convert('RGBA')
        paste(im,front,(1038,171),(410,566))
        paste(im,exam(),(1230,465),(285,344))
        p=phone().rotate(6,Image.Resampling.BICUBIC,expand=True)
        paste(im,p,(854,345),(285,469))
    return im.convert('RGB')


for course in ('gc','cgj'):
    for suffix,kind in [('1','tests'),('2-1','simulacros'),('4','ahorro')]:
        path=ROOT/f'public/packs/{course}-{suffix}.webp'
        path.parent.mkdir(parents=True,exist_ok=True)
        pack(course,kind).save(path,'WEBP',quality=88,method=6)
subprocess.run(['python3', str(ROOT / 'scripts/generar-temarios-realistas.py')], check=True)
for folder in ('packs','temarios/miniaturas'):
    for path in sorted((ROOT/'public'/folder).glob('*.webp')):
        print(f'{path.relative_to(ROOT)}: {path.stat().st_size / 1000:.1f} KB · {Image.open(path).size}')
