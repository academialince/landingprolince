# Importa un lote de datos nuevos (JSON de investigación) al banco y genera sus descripciones.
#   python3 dato-curioso/importar-lote.py lote.json PREFIJO NUM_INICIAL [N]   → usa los N primeros (10 por defecto)
# Añade a banco.json las entradas «Nuevo_<PREFIJO><nn>», escribe out/dato-curioso-<num>.txt
# y devuelve el plan [{numero, carpeta}] para render-lote.mjs en out/plan-<PREFIJO>.json.
import json, sys

lote, prefijo, inicio = sys.argv[1], sys.argv[2], int(sys.argv[3])
n = int(sys.argv[4]) if len(sys.argv) > 4 else 10
datos = json.load(open(lote))[:n]
banco = json.load(open("dato-curioso/banco.json"))
existentes = {c["carpeta"] for c in banco}
plan = []
for i, d in enumerate(datos):
    carpeta = f"Nuevo_{prefijo}{i + 1:02d}"
    assert d["resaltar"] in d["respuesta"], (carpeta, "resaltar")
    assert d["destacar"] in d["gancho"], (carpeta, "destacar")
    if carpeta not in existentes:
        banco.append(dict(carpeta=carpeta, driveId=None, etiqueta="Dato curioso · Guardia Civil",
                          gancho=d["gancho"], destacar=d["destacar"], fecha=d["fecha"], respuesta=d["respuesta"],
                          resaltar=d["resaltar"], cifra=d.get("cifra"), ademas=d.get("ademas"),
                          fuente="Dato nuevo. " + d["fuente"]))
    num = inicio + i
    limpia = lambda t, *pre: next((t[len(x):].lstrip() for x in pre if t.startswith(x)), t)
    ademas = limpia(d["desc_ademas"], "Y además… ", "Y además...", "Y además…")
    ademas = ademas[0].upper() + ademas[1:]
    examen = limpia(limpia(d["desc_examen"], "Para el examen: ", "Para el examen:"), "Consejo para el examen: ", "Consejo: ")
    fijos = "#GuardiaCivil #OposicionesGuardiaCivil #Oposiciones #DatoCurioso #HistoriaGuardiaCivil".split()
    tags = " ".join(fijos + [t for t in d["tags"].split() if t not in fijos] + ["#ProLince"])
    plan.append({"numero": num, "carpeta": carpeta})
    open(f"out/dato-curioso-{num}.txt", "w").write(f"""🟢 DATO CURIOSO · Historia de la Guardia Civil

{d['desc_gancho']}

{d['desc_p1']}

{d['desc_p2']}

✨ Y además… {ademas}

📌 Para el examen: {examen}

💬 ¿Lo sabías? Cuéntanoslo en comentarios.
👉 Temario, tests y simulacros cronometrados en prolinceacademia.com

{tags}

---
Referencia: dato nuevo (no está en los carruseles) · Fuente: {d['fuente']}
""")
json.dump(banco, open("dato-curioso/banco.json", "w"), indent=2, ensure_ascii=False)
open("dato-curioso/banco.json", "a").write("\n")
json.dump(plan, open(f"out/plan-{prefijo}.json", "w"))
print(f"✓ {len(plan)} importados ({plan[0]['numero']}-{plan[-1]['numero']})")
