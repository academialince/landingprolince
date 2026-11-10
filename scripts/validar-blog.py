"""
Valida los artículos del calendario (`contenido/blog/plan-100-dias.json`) antes de generar el SQL.

Comprueba, para cada artículo del rango pedido: que exista el fichero, que slug y hora coincidan con el
plan, longitudes de entradilla y SEO, número de palabras, que no enlace a artículos que se publican
después (darían 404 ese día) y que los enlaces internos apunten a slugs o rutas conocidas.

    python3 scripts/validar-blog.py 28 99
"""
import glob, json, os, re, sys
from datetime import datetime

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BLOG = os.path.join(RAIZ, "contenido", "blog")
desde, hasta = (int(sys.argv[1]), int(sys.argv[2])) if len(sys.argv) > 2 else (0, 99)

plan = json.load(open(os.path.join(BLOG, "plan-100-dias.json"), encoding="utf-8"))
PUBLICADOS = """colegio-guardias-jovenes-acceso-guardia-civil entrevista-reconocimiento-medico-guardia-civil
fase-concurso-guardia-civil-meritos ingles-oposicion-guardia-civil psicotecnico-guardia-civil-aptitudes-personalidad
ortografia-gramatica-examen-guardia-civil pruebas-fisicas-guardia-civil-marcas-entrenamiento
examen-conocimientos-guardia-civil-estructura preparar-oposicion-guardia-civil-desde-cero
convocatoria-guardia-civil-2026-plazas-calendario requisitos-guardia-civil calcular-nota-examen-guardia-civil
academia-baeza-guardia-civil sueldo-guardia-civil errores-preparar-oposicion-guardia-civil
constitucion-oposicion-guardia-civil tatuajes-guardia-civil plan-estudio-guardia-civil-trabajando
destinos-especialidades-guardia-civil""".split()
RUTAS = {"/cursos/acceso-guardia-civil", "/cursos/colegio-guardias-jovenes", "/requisitos-guardia-civil",
         "/calculadora-nota-guardia-civil", "/nota-de-corte", "/test-guardia-civil", "/temario-guardia-civil",
         "/plan-de-estudio", "/nivel-ingles", "/pruebas-fisicas", "/blog", "/temario-colegio-guardias-jovenes",
         "/test-guardias-jovenes"}
fecha = {p["slug"]: datetime.fromisoformat(p["publicado_en"]) for p in plan}

def campo(meta, clave):
    m = re.search(rf"^{clave}: (.*)$", meta, re.M)
    return m.group(1).strip() if m else None

errores, avisos = [], []
for p in plan[desde:hasta + 1]:
    f = os.path.join(BLOG, p["slug"] + ".md")
    if not os.path.exists(f):
        errores.append(f"{p['i']} {p['slug']}: FALTA el fichero"); continue
    t = open(f, encoding="utf-8").read()
    partes = re.split(r"^---\s*$", t, flags=re.M)
    if len(partes) < 3:
        errores.append(f"{p['slug']}: sin frontmatter"); continue
    meta, cuerpo = partes[1], "---".join(partes[2:])
    yo = p["slug"]
    if campo(meta, "slug") != yo: errores.append(f"{yo}: slug distinto ({campo(meta, 'slug')})")
    if campo(meta, "publicado_en") != p["publicado_en"]: errores.append(f"{yo}: hora distinta del plan")
    if campo(meta, "estado") != "publicado": errores.append(f"{yo}: estado no es publicado")
    for c in ("titulo", "entradilla", "seo_title", "seo_description", "etiquetas", "curso", "tipo"):
        if not campo(meta, c): errores.append(f"{yo}: falta {c}")
    datos = campo(meta, "datos")
    try: json.loads(datos or "")
    except Exception: errores.append(f"{yo}: datos no es JSON válido")
    ent = len(campo(meta, "entradilla") or ""); st = len(campo(meta, "seo_title") or ""); sd = len(campo(meta, "seo_description") or "")
    if ent > 300: errores.append(f"{yo}: entradilla de {ent} caracteres")
    if st > 60: avisos.append(f"{yo}: seo_title de {st} caracteres")
    if sd > 160: avisos.append(f"{yo}: seo_description de {sd} caracteres")
    palabras = len(cuerpo.split())
    if palabras < 500: avisos.append(f"{yo}: solo {palabras} palabras")
    if re.search(r"^# ", cuerpo, re.M): avisos.append(f"{yo}: tiene un # (h1) en el cuerpo")
    if "## Preguntas frecuentes" not in cuerpo: avisos.append(f"{yo}: sin preguntas frecuentes")
    if "acceso-uco-pj" in cuerpo: errores.append(f"{yo}: menciona el producto UCO oculto")
    for destino in re.findall(r"\]\((/[^)\s#]*)", cuerpo):
        if destino.startswith("/blog/"):
            s = destino[len("/blog/"):].rstrip("/")
            if s in PUBLICADOS: continue
            if s not in fecha: errores.append(f"{yo}: enlaza a un slug inexistente /blog/{s}")
            elif fecha[s] >= fecha[yo]: errores.append(f"{yo}: enlaza hacia delante a /blog/{s}")
        elif destino not in RUTAS:
            avisos.append(f"{yo}: ruta interna no comprobada {destino}")

print(f"Revisados {hasta - desde + 1} artículos ({desde}-{hasta}).")
print(f"ERRORES ({len(errores)}):", *errores, sep="\n  ")
print(f"AVISOS ({len(avisos)}):", *avisos, sep="\n  ")
sys.exit(1 if errores else 0)
