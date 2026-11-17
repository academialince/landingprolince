"""
Busca incoherencias entre los artículos del calendario y `contenido/blog/HECHOS-VERIFICADOS.md`.

No sustituye a una lectura: señala frases con cifras clave que no coinciden con los valores verificados
(plazas, tasa, notas de corte, marcas físicas, mínimos, temas, fechas), para revisarlas a mano.

    python3 scripts/coherencia-blog.py
"""
import json, os, re

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BLOG = os.path.join(RAIZ, "contenido", "blog")
plan = json.load(open(os.path.join(BLOG, "plan-100-dias.json"), encoding="utf-8"))

PLAZAS_OK = {"3.240", "1.704", "1.296", "240", "2.704", "2.163", "541"}
CORTE_OK = {"90,61", "95,80", "95,8", "103,08", "95,75", "110,58"}
TASA_OK = {"11,66", "5,83"}
MARCAS_OK = {"9:25", "9:48", "10:33", "11:14", "11:35", "12:49", "14,00", "14,40", "15,10", "16,00", "16,40",
             "17,90", "14", "16", "11", "9", "70", "71", "73", "81", "83", "88"}

def frases(texto):
    return re.split(r"(?<=[.!?])\s+|\n", texto)

hallazgos = []
for p in plan:
    t = open(os.path.join(BLOG, p["slug"] + ".md"), encoding="utf-8").read()
    cuerpo = "---".join(re.split(r"^---\s*$", t, flags=re.M)[2:])
    for f in frases(cuerpo):
        fl = f.lower()
        def avisa(motivo): hallazgos.append((p["i"], p["slug"], motivo, f.strip()[:220]))
        if re.search(r"\b25 temas\b", fl) and not re.search(r"pdf|inglés|lengua|incluye", fl):
            avisa("dice 25 temas sin explicar que incluye inglés y lengua")
        if re.search(r"\b(2[0-9]|3[0-9]|1[0-9]) temas\b", fl) and not re.search(r"\b(23|25|10|12)\b temas", fl):
            avisa("número de temas distinto de 23")
        for m in re.finditer(r"(\d{1,3}(?:\.\d{3})?) plazas", f):
            if m.group(1) not in PLAZAS_OK and int(m.group(1).replace(".", "")) > 100:
                avisa(f"plazas {m.group(1)} no verificadas")
        if "corte" in fl:
            for m in re.finditer(r"\b(\d{2,3},\d{1,2})\b", f):
                if m.group(1) not in CORTE_OK and not m.group(1).startswith(("0,", "1,")):
                    avisa(f"nota de corte {m.group(1)} no verificada")
        if "tasa" in fl or "derechos de examen" in fl:
            for m in re.finditer(r"(\d{1,3},\d{2}) ?(?:€|euros)", f):
                if m.group(1) not in TASA_OK: avisa(f"tasa {m.group(1)} no verificada")
        if re.search(r"examen (será|es|se celebra|se celebrará) el \d", fl) or re.search(r"\b\d{1,2} de (junio|julio) de 202[67]\b.*examen|examen.*\b\d{1,2} de (junio|julio)", fl):
            avisa("posible fecha de examen")
        if re.search(r"(oep|oferta de empleo público|convocatoria) (de |)2027 (se publicó|ya está|tendrá|ofrece|incluye) ", fl):
            avisa("afirmación sobre 2027")
        if re.search(r"mínimo de (\d+)", fl):
            for m in re.finditer(r"mínimo de (\d+) (?:puntos|sobre)", fl):
                if m.group(1) not in {"50", "8", "12"} and ("conocimiento" in fl or "inglés" in fl or "psicot" in fl):
                    avisa(f"mínimo {m.group(1)} sospechoso")
        if re.search(r"(\d+) preguntas en (\d+) minutos", fl):
            for m in re.finditer(r"(\d+) preguntas en (\d+) minutos", fl):
                if (m.group(1), m.group(2)) not in {("80", "55"), ("100", "50")}:
                    avisa(f"{m.group(1)} preguntas en {m.group(2)} minutos")
        if re.search(r"(\d+) errores? (o más )?(excluye|te excluyen|exclu)", fl):
            for m in re.finditer(r"(\d+) errores? (?:o más )?(?:excluye|te excluyen|exclu)", fl):
                if m.group(1) != "6": avisa(f"{m.group(1)} errores que excluyen")
        if "detención preventiva" in fl and re.search(r"\b(24|48|96) horas", fl) and "72" not in fl:
            avisa("plazo de detención preventiva distinto de 72 h")
        if re.search(r"(edad máxima|no cumplir) (de )?(3\d|4[2-9])", fl):
            avisa("edad máxima distinta de 40/41")

print(f"{len(hallazgos)} frases para revisar")
for h in hallazgos:
    print(f"[{h[0]}] {h[1]} — {h[2]}\n      «{h[3]}»")
