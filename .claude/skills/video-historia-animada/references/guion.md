# Guion: esquema, reglas y descripción

## Esquema de un episodio (`src/datos/historias.json`)

```jsonc
{
  "id": "historia-fundacion-1844",          // nombre de la composición y del MP4
  "serie": "Historia de la Guardia Civil",  // antetítulo en mayúsculas de la portada
  "titulo": "Así nació la Guardia Civil",   // portada, palabra a palabra (máx. ~35 caracteres)
  "subtitulo": "1844 · Isabel II · Duque de Ahumada",
  "escenas": [
    {
      "fecha": "28 de marzo de 1844",       // píldora verde
      "hito": "Mar 1844",                   // etiqueta de la línea de tiempo (≤ 11 caracteres)
      "titulo": "Un Real Decreto crea el Cuerpo", // ≤ 30 car. en una línea; hasta ~40 baja a dos
      "texto": "…",                          // ≤ 170 caracteres; se escribe solo
      "escenario": "despacho",
      "objetos": [{ "tipo": "mesa", "x": 300 }],
      "personajes": [
        { "personaje": "ministro", "x": 640, "pose": "lee", "nombre": "González Bravo", "mirando": "izq" }
      ],
      "clave": "28 de marzo de 1844: Real Decreto de creación.", // recuadro CAE EN EXAMEN (≤ 90 car.)
      "segundos": 8                          // opcional; si no, se calcula
    }
  ],
  "repaso": {                                // opcional, pero recomendado
    "enunciado": "¿…?",                      // ≤ 120 caracteres
    "opciones": ["…", "…", "…", "…"],        // 3 o 4, cortas
    "correcta": 2,                           // índice desde 0
    "explicacion": "…"                       // ≤ 150 caracteres, con el artículo o la fecha
  }
}
```

Campos de cada personaje: ver `personajes.md`. Escenarios y objetos: ver `escenarios.md`.

## Tiempos

- Intro 3,4 s · repaso 11 s · cierre 3,6 s · cortinilla entre escenas 0,6 s.
- Escena: `max(6, 0,8 + max(texto/34, fin del último bocadillo) + 2,8)` segundos. El texto se escribe a 34 caracteres por segundo; un bocadillo empieza en `diceDesde` (por defecto, 1,3 s después de que entre su personaje).
- Objetivo: 50-65 s en total → 5 o 6 escenas con textos de 110-170 caracteres.

## Reglas de redacción

- **Una idea por escena** y lo que cae en el examen en `clave`: fechas, órganos, artículos, números («169 artículos»), dependencias.
- Fechas en formato del temario («13 de mayo de 1844»). Artículos como en la ley («Artículo 9.b», «Art. 104.2»).
- Frases cortas, sin subordinadas largas. Nada de opiniones ni lenguaje político.
- **Bocadillos**: frases breves (≤ 45 caracteres). Si son dramatizaciones («¡A la orden!») no pueden parecer citas reales; las citas reales van entre comillas latinas y deben ser literales (art. 1 de la Cartilla: «El honor ha de ser la principal divisa del guardia civil»).
- Como mucho **dos bocadillos a la vez**, en personajes separados (x ≤ 350 y x ≥ 650) y con `diceDesde` escalonados.
- El repaso pregunta por el dato más «examinable» del vídeo, con distractores que también aparecen en el vídeo (las otras fechas, el otro ministerio).
- Todo dato se comprueba con la norma o la fuente oficial antes de renderizar. Si no se puede confirmar, se quita.

## Descripción para redes (`out/<id>.txt`)

```
🎬 <TÍTULO> · <serie>

<2-3 frases que resumen la historia>

📌 Lo que cae en el examen:
• <fecha / dato 1>
• <fecha / dato 2>
• <fecha / dato 3>

❓ Repaso: <enunciado>
✅ <respuesta correcta> — <explicación breve con el artículo>

💬 ¿Lo sabías? Cuéntanoslo en comentarios.
👉 Temario, tests y simulacros cronometrados en prolinceacademia.com

#GuardiaCivil #OposicionesGuardiaCivil #Oposiciones #HistoriaGuardiaCivil #ProLince <2-3 del tema>
```

De 6 a 9 hashtags, sin carga política ni repetidos.
