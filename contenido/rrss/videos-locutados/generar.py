"""
Generador de los vídeos locutados «Los artículos que más caen».

    python3 generar.py <carpeta>

La carpeta debe tener:
  - guion.json   escenas del vídeo; cada elemento lleva una «cue» (las primeras palabras de la frase
                 de la locución con la que aparece). El generador las busca en la transcripción.
  - palabras.json transcripción de ElevenLabs Scribe con tiempos por palabra
  - locucion.mp3

y deja en ella video.html, palabras.js, render.mjs y los recursos (fuentes, logo, león), listos para
`node render.mjs`. La plantilla visual está en _plantilla/ (estética de prolinceacademia.com).
Si guion.json lleva "tempo" (p. ej. 1.05), la locución ya se aceleró con `python3 generar.py <carpeta> --tempo 1.05`.
Ningún vídeo puede pasar de MAX_DUR segundos.
"""
import json, re, shutil, sys, unicodedata
from pathlib import Path

AQUI = Path(__file__).resolve().parent
BASE = AQUI / "_plantilla"
MAX_DUR = 89.0  # duración máxima de cada vídeo (s)


def norm(s):
    s = unicodedata.normalize("NFD", s.lower())
    s = "".join(c for c in s if unicodedata.category(c) != "Mn")
    return re.sub(r"[^a-z0-9ñ ]", " ", s).split()


class Cues:
    """Busca cada cue en orden dentro de la transcripción y devuelve su segundo de inicio."""

    def __init__(self, palabras):
        self.w = palabras
        self.toks = [(norm(x["text"]) or [""])[0] for x in palabras]
        self.pos = 0

    def t(self, cue, atras=False):
        objetivo = norm(cue)
        n = len(objetivo)
        desde = 0 if atras else self.pos
        for i in range(desde, len(self.toks) - n + 1):
            if self.toks[i:i + n] == objetivo:
                if not atras:
                    self.pos = i + 1
                return self.w[i]["start"]
        raise SystemExit(f"No encuentro la cue «{cue}» (desde la palabra {desde})")


SUBE = ' data-an="sube"'


def em(texto):
    return re.sub(r"\*(.+?)\*", r"<em>\1</em>", texto)


def ico(nombre, cls="icono"):
    return f'<span class="{cls}" data-icono="{nombre}"></span>'


def construir(g, cues):
    html = []
    escenas = g["escenas"]
    tiempos = []
    cuerpo = []
    for n, esc in enumerate(escenas):
        partes = []
        t_ini = None
        for el in esc["el"]:
            k = el["k"]
            t = cues.t(el["cue"]) if "cue" in el else None
            if t is not None and t_ini is None:
                t_ini = t
            dt = f' data-t="{t:.2f}"' if t is not None else ""
            an = el.get("an")
            da = f' data-an="{an}"' if an else ""
            if k == "ceja":
                partes.append(f'<p class="ceja{" aviso" if el.get("aviso") else ""}"{dt}>{el["txt"]}</p>')
            elif k == "lineas":
                spans = []
                for txt, cue in el["l"]:
                    tt = cues.t(cue)
                    t_ini = t_ini if t_ini is not None else tt
                    spans.append(f'<span data-t="{tt:.2f}" data-an="sube">{em(txt)}</span>')
                partes.append(f'<h1 class="tit {el.get("cls", "t120")}">{"<br>".join(spans)}</h1>')
            elif k == "tit":
                partes.append(f'<h2 class="tit {el.get("cls", "t104")}"{dt}{da or SUBE}>{em(el["txt"])}</h2>')
            elif k == "grande":
                partes.append(f'<p class="tit" style="font-size:{el.get("px", 300)}px;line-height:.8;color:{el.get("color", "var(--primary)")}"{dt} data-an="{an or "golpe"}">{em(el["txt"])}</p>')
            elif k == "mono":
                partes.append(f'<p class="mono" style="font-size:{el.get("px", 34)}px;color:{el.get("color", "var(--fg)")}"{dt} data-an="{an or "sube"}">{el["txt"]}</p>')
            elif k == "nota":
                partes.append(f'<p class="nota"{dt} data-an="{an or "sube"}">{el["txt"]}</p>')
            elif k == "texto":
                partes.append(f'<p class="texto"{dt} data-an="sube">{el["txt"]}</p>')
            elif k == "boton":
                i = f'<span data-icono="{el["ico"]}"></span>' if el.get("ico") else ""
                partes.append(f'<div class="boton{" borde" if el.get("borde") else ""}"{dt} data-an="pop">{i}{el["txt"]}</div>')
            elif k == "tarjeta":
                partes.append(f'<div class="tarjeta hud-marco fila"{dt} data-an="izq">{ico(el["ico"])}<p class="respuesta" style="font-size:{el.get("px", 68)}px">{em(el["txt"])}</p></div>')
            elif k == "chips":
                cs = "".join(f'<span class="chip{" on" if el.get("on") else ""}" data-t="{cues.t(cue):.2f}" data-an="pop">{txt}</span>' for txt, cue in el["l"])
                partes.append(f'<div class="chips">{cs}</div>')
            elif k == "cuatro":
                cs = "".join(f'<div data-t="{cues.t(c):.2f}" data-an="pop">{i + 1}</div>' for i, c in enumerate(el["cues"]))
                partes.append(f'<div class="cuatro">{cs}</div>')
            elif k == "idea":
                partes.append(f'<div class="idea-cab"{dt} data-an="golpe"><span class="idea-num">{el["num"]}</span><p class="ceja" style="padding-bottom:18px">{el["txt"]}</p></div>')
            elif k == "historico":
                partes.append(f'<div class="tarjeta hud-marco"{dt} data-an="sube"><p class="mono" style="font-size:26px;color:var(--muted-fg);margin-bottom:22px">Exámenes oficiales revisados</p><div class="anios" id="anios"></div></div>')
                partes.append(f'<div class="contador"{dt} data-an="pop"><span class="num" id="cuenta">0</span><span class="lab">veces<br><span style="color:var(--muted-fg);font-size:56px">en exámenes oficiales</span></span></div>')
            elif k == "trampa":
                filas = []
                for ic, txt, cue, *extra in el["l"]:
                    tt = cues.t(cue)
                    nota = f'<p class="nota" style="margin:10px 0 0 74px;color:var(--fg)">{extra[0]}</p>' if extra else ""
                    filas.append(f'<div data-t="{tt:.2f}" data-an="izq" style="margin-top:16px"><div class="par" style="font-size:{el.get("px", 58)}px">{ico(ic, "ico")}<span>{em(txt)}</span></div>{nota}</div>')
                partes.append(f'<div class="tarjeta trampa"{dt} data-an="tiembla"><div class="rayas"></div><p class="ceja aviso" style="margin-bottom:6px">{el.get("ceja", "Trampa típica")}</p>{"".join(filas)}</div>')
            elif k == "sino":
                si, no = el["si"], el["no"]
                partes.append(f'<div class="si-no"><div class="op" style="font-size:{el.get("px", 70)}px" data-t="{cues.t(si[1]):.2f}" data-an="izq">{ico("check")}<span>{si[0]}</span></div>'
                              f'<div class="op no" style="font-size:{el.get("px", 70)}px" data-t="{cues.t(no[1]):.2f}" data-an="izq">{ico("x")}<span id="tachon">{no[0]}</span></div></div>')
            elif k == "repaso":
                filas = []
                for fila in el["l"]:
                    kk, vv, cue = fila[:3]
                    aviso = len(fila) > 3 and fila[3]
                    tt = cues.t(cue)
                    if aviso:
                        filas.append(f'<div class="r tarjeta trampa" data-t="{tt:.2f}" data-an="izq"><span class="icono" style="background:var(--warning)" data-icono="alert"></span><span class="k" style="color:var(--warning)">{kk}</span><span class="v">{vv}</span></div>')
                    else:
                        filas.append(f'<div class="r tarjeta" data-t="{tt:.2f}" data-an="izq">{ico("check")}<span class="k">{kk}</span><span class="v">{vv}</span></div>')
                partes.append(f'<div class="repaso">{"".join(filas)}</div>')
            elif k == "cierre":
                c = cues
                tg = c.t("guardate")
                t_ini = t_ini if t_ini is not None else tg
                partes.append(f'<img src="iso.svg" alt="" style="width:230px;align-self:center" data-t="{tg:.2f}" data-an="pop">')
                partes.append(f'<h2 class="tit t120" data-t="{c.t("guardate", atras=True):.2f}" data-an="sube">Guárdalo para tu <em>repaso</em></h2>')
                partes.append(f'<p class="texto" data-t="{c.t("si quieres practicar"):.2f}" data-an="sube">Practica con <b>todas las preguntas oficiales</b>, simulacros y estadísticas por tema.</p>')
                partes.append(f'<div class="boton" data-t="{c.t("tienes siete"):.2f}" data-an="pop">7 días gratis <span data-icono="arrowRight"></span></div>')
                partes.append(f'<p class="mono" style="font-size:40px;color:var(--primary)" data-t="{c.t("prolinceacademia"):.2f}" data-an="sube">prolinceacademia.com</p>')
            else:
                raise SystemExit(f"Elemento desconocido: {k}")
        tiempos.append(0.0 if n == 0 else max(0.0, t_ini - 0.06))
        cuerpo.append((esc, partes))
    for n, (esc, partes) in enumerate(cuerpo):
        a = tiempos[n]
        b = tiempos[n + 1] - 0.02 if n + 1 < len(tiempos) else 999
        cls = ' style="align-items:center;text-align:center"' if esc.get("centrada") else ""
        html.append(f'  <section class="escena" id="s{n + 1}" data-a="{a:.2f}" data-b="{b:.2f}"{cls}>\n    ' + "\n    ".join(partes) + "\n  </section>\n")
    return "\n".join(html), tiempos


def main(carpeta):
    d = (AQUI / carpeta).resolve()
    g = json.loads((d / "guion.json").read_text(encoding="utf-8"))
    palabras = [x for x in json.loads((d / "palabras.json").read_text(encoding="utf-8"))["words"]
                if x["type"] == "word" and not x["text"].startswith("[")]
    # «prolinceacademia punto com.» (alineación de la locución) → una sola palabra en subtítulos
    for i in range(len(palabras) - 2):
        a, b, c = palabras[i:i + 3]
        if a["text"].lower().startswith("prolinceacademia") and b["text"].lower() == "punto" and c["text"].lower().startswith("com"):
            palabras[i:i + 3] = [{**a, "text": "prolinceacademia.com" + c["text"][3:], "end": c["end"]}]
            break
    cues = Cues(palabras)
    escenas, tiempos = construir(g, cues)

    base = (BASE / "video.html").read_text(encoding="utf-8")
    a = base.index("  <!-- 1 · Gancho -->")
    b = base.index("  <!-- Visor fijo -->")
    s = base[:a] + escenas + "\n" + base[b:]
    s = re.sub(r"<title>.*?</title>", f"<title>{g['titulo']} · vídeo locutado</title>", s)
    s = s.replace("<span>Top 30 · Nº 2</span>", f"<span>Top 30 · Nº {g['top']}</span>")
    fin = round(palabras[-1]["end"] + 0.95, 2)
    if fin > MAX_DUR:
        raise SystemExit(f"✘ {d.name}: {fin} s > {MAX_DUR} s. Acorta el guion o acelera la locución con --tempo.")
    s = re.sub(r"const FIN = [\d.]+;.*", f"const FIN = {fin};     // fin de la locución + cola para el cierre", s)
    s = re.sub(r"/\* Años del histórico.*?\nconst VECES = \{.*?\};", "/* Años del histórico: veces que cayó el artículo en cada convocatoria */\nconst VECES = " + json.dumps(g["veces"]) + ";", s, flags=re.S)
    orden = [y for y, v in g["veces"].items() if v]
    s = re.sub(r"const orden = \[.*?\];", "const orden = " + json.dumps(orden) + ";", s)
    t_veces = cues.t(g.get("cue_veces", "veces"), atras=True)
    s = re.sub(r"const on = i >= 0 && t >= [\d.]+ \+ i \* [\d.]+;", f"const on = i >= 0 && t >= {t_veces - 0.1:.2f} + i * 0.12;", s)
    total = sum(g["veces"].values())
    s = re.sub(r'\$\("#cuenta"\)\.textContent = Math\.round\(\d+ \* ease\(p\(t, [\d.]+, [\d.]+\)\)\);',
               f'$("#cuenta").textContent = Math.round({total} * ease(p(t, {t_veces - 0.1:.2f}, {t_veces + 0.9:.2f})));', s)
    if 'id="tachon"' in escenas:
        t_no = float(re.search(r'class="op no"[^>]*data-t="([\d.]+)"', escenas).group(1))
        s = re.sub(r'\$\("#tachon"\)\.style\.setProperty\("--tachon", ease\(p\(t, [\d.]+, [\d.]+\)\)\);',
                   f'$("#tachon").style.setProperty("--tachon", ease(p(t, {t_no + 0.35:.2f}, {t_no + 0.85:.2f})));', s)
    else:
        s = re.sub(r'\n  // S9: tachón.*\n  \$\("#tachon"\).*\n', "\n", s)
    s = re.sub(r"clamp\(t / [\d.]+\) \* 100", f"clamp(t / {palabras[-1]['end']:.1f}) * 100", s)
    portada = tiempos[g.get("portada_escena", 2)] + 3.0
    s = re.sub(r"PORTADA: [\d.]+", f"PORTADA: {portada:.1f}", s)
    s = s.replace("// S2: años que se encienden y contador 0 → 8 al decir «ocho veces»", "// S2: años que se encienden y contador al decir las veces")
    (d / "video.html").write_text(s, encoding="utf-8")

    # Subtítulos
    pag, cur = [], []
    for x in palabras:
        cur.append({"t": x["text"], "a": x["start"], "b": x["end"]})
        if len(cur) >= 3 or re.search(r"[.,:?!]$", x["text"]):
            pag.append(cur)
            cur = []
    if cur:
        pag.append(cur)
    (d / "palabras.js").write_text("/* Subtítulos: páginas de palabras con su tiempo (transcripción de ElevenLabs Scribe de locucion.mp3) */\nwindow.PAGINAS = " + json.dumps(pag, ensure_ascii=False) + ";\n", encoding="utf-8")

    # Recursos y render
    for f in ["iso.svg", "logo-negativo.svg"]:
        shutil.copy(BASE / f, d / f)
    shutil.copytree(BASE / "fuentes", d / "fuentes", dirs_exist_ok=True)
    r = (BASE / "render.mjs").read_text(encoding="utf-8")
    r = r.replace('process.env.NOMBRE || "articulo-principios-basicos"', f'process.env.NOMBRE || "{g["nombre"]}"')
    (d / "render.mjs").write_text(r, encoding="utf-8")
    print(f"✔ {d.name}: {len(g['escenas'])} escenas, {fin} s, portada en {portada:.1f} s")


def acelerar(carpeta, factor):
    """Acelera locucion.mp3 (sin cambiar el tono) y reescala los tiempos de palabras.json."""
    import subprocess
    d = (AQUI / carpeta).resolve()
    orig = d / "locucion-original.mp3"
    if not orig.exists():
        shutil.copy(d / "locucion.mp3", orig)
    porig = d / "palabras-original.json"
    if not porig.exists():
        shutil.copy(d / "palabras.json", porig)
    subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", str(orig), "-filter:a", f"atempo={factor}",
                    "-c:a", "libmp3lame", "-b:a", "128k", str(d / "locucion.mp3")], check=True)
    j = json.loads(porig.read_text(encoding="utf-8"))
    for w in j["words"]:
        w["start"] = round(w["start"] / factor, 3)
        w["end"] = round(w["end"] / factor, 3)
    (d / "palabras.json").write_text(json.dumps(j, ensure_ascii=False), encoding="utf-8")
    print(f"✔ {d.name}: locución acelerada ×{factor}")


if __name__ == "__main__":
    if "--tempo" in sys.argv:
        acelerar(sys.argv[1], float(sys.argv[sys.argv.index("--tempo") + 1]))
    else:
        main(sys.argv[1])
