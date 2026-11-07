"use client";

import { useState } from "react";
import { ArrowLeft, ArrowRight, Check, Share2, Timer } from "lucide-react";
import { FormularioLead, Progreso, boton } from "./ui";
import { ResultadoViral as PantallaResultado } from "./resultado-viral";
import { bingoCasillas, especialidadesVirales, preguntasConocimiento, preguntasEspecialidad, provincias, virales, type ViralId } from "@/content/captacion/virales";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

type Datos = Record<string, unknown>;
type Resultado = { clave: string; titulo: string; detalle: string; puntuacion?: number; cuadricula?: string };


function semillaDia() {
  const d = new Date();
  return Math.floor(Date.UTC(d.getFullYear(), d.getMonth(), d.getDate()) / 86400000);
}

function nota(respuestas: number[]) {
  return respuestas.reduce((s, n, i) => s + (n === preguntasConocimiento[i]?.correcta ? 1 : 0), 0);
}

function resultadoDe(id: ViralId, datos: Datos): Resultado {
  if (id === "especialidad") {
    const rs = datos.respuestas as number[];
    const c = [0, 0, 0, 0]; rs.forEach((n) => c[n]++);
    const e = especialidadesVirales[c.indexOf(Math.max(...c))];
    return { clave: e, titulo: `Tu especialidad es ${e}`, detalle: "Tu forma de decidir combina criterio, temple y vocación de servicio." };
  }
  if (["duelo", "provincia", "1995"].includes(id)) {
    const n = nota(datos.respuestas as number[]);
    if (id === "1995") return { clave: String(n), titulo: n >= 6 ? "Habrías aprobado en 1995" : "1995 también se te resistía", detalle: `${n}/10. El temario cambia; la constancia no.`, puntuacion: n };
    if (id === "provincia") return { clave: String(n), titulo: `${datos.provincia}: ${n}/10`, detalle: n >= 7 ? "Has empujado a tu provincia hacia arriba." : "Cada punto cuenta. Toca revancha.", puntuacion: n };
    return { clave: String(n), titulo: `Has sacado ${n}/10`, detalle: "Ahora comparte el reto. Tu rival verá los dos resultados al terminar.", puntuacion: n };
  }
  if (id === "falla") {
    const ok = (datos.respuestas as number[])[0] === preguntasConocimiento[4].correcta;
    return { clave: ok ? "1" : "0", titulo: ok ? "Estás en el 20 %" : "Has caído en la trampa", detalle: ok ? "Prever se escribe con una sola e intermedia." : "La forma correcta es «prever»." , puntuacion: ok ? 1 : 0 };
  }
  if (id === "bingo") { const n = (datos.marcadas as number[]).length; return { clave: String(n), titulo: `Bingo opositor: ${n}/16`, detalle: n >= 12 ? "Nivel: esto ya es una forma de vida." : n >= 7 ? "Nivel: opositor oficialmente reconocido." : "Nivel: aún conservas vida social." }; }
  if (id === "horas") { const h = Number(datos.horas); return { clave: String(h), titulo: `${h.toLocaleString("es-ES")} horas estudiadas`, detalle: `Equivale a ${Math.max(1, Math.round(h / 24))} días completos o a ver una temporada de 10 episodios ${Math.max(1, Math.round(h / 8))} veces.` }; }
  if (id === "pasaporte") return { clave: String(datos.nivel), titulo: `${datos.nombre || "OPOSITOR"} · ${datos.nivel}`, detalle: `Racha de ${datos.racha} días · Fortaleza: ${datos.tema}. No es un documento oficial.` };
  if (id === "reflejos") { const p = Number(datos.puntos); return { clave: String(p), titulo: `${p} puntos de reflejos`, detalle: p >= 80 ? "Reflejos de élite." : p >= 50 ? "Buen pulso bajo presión." : "La revancha empieza cuando tú quieras.", puntuacion: p }; }
  const intentos = Number(datos.intentos); return { clave: String(intentos), titulo: intentos <= 6 ? `Artículo resuelto en ${intentos}/6` : "Artículo no resuelto", detalle: "Vuelve mañana: habrá un artículo nuevo.", cuadricula: String(datos.cuadricula || "") };
}

export function ExperienciaViral({ id }: { id: ViralId }) {
  const [fase, setFase] = useState<"inicio" | "juego" | "datos" | "resultado">("inicio");
  const [datos, setDatos] = useState<Datos>({});
  const [resultado, setResultado] = useState<Resultado | null>(null);
  const [comparativa, setComparativa] = useState<ResultadoLead["comparativa"]>();
  const [nombre, setNombre] = useState("");
  const reiniciar = () => { setDatos({}); setResultado(null); setComparativa(undefined); setFase("juego"); };
  const terminar = (d: Datos) => { setDatos(d); setResultado(resultadoDe(id, d)); setFase("datos"); };

  return <div className="mx-auto w-[min(100%-2rem,40rem)]">
    {fase === "inicio" && <Inicio id={id} onEmpezar={reiniciar} />}
    {fase === "juego" && <Juego id={id} onTerminar={terminar} onAtras={() => setFase("inicio")} />}
    {fase === "datos" && resultado && <FormularioLead recurso={id} respuestas={datos} etiqueta="Resultado listo" titulo="Solo falta desbloquearlo" texto="Déjanos tus datos para ver el resultado y crear tu tarjeta para historias." anticipo={<p className="text-center text-3xl font-extrabold">{resultado.titulo.replace(/[A-Za-zÁ-ú0-9]/g, "•")}</p>} onVolver={() => setFase("juego")} onListo={(r, n) => { setNombre(n); setComparativa(r.comparativa); setFase("resultado"); }} />}
    {fase === "resultado" && resultado && <PantallaResultado id={id} datos={datos} resultado={resultado} nombre={nombre} comparativa={comparativa} onRepetir={reiniciar} />}
  </div>;
}

function Inicio({ id, onEmpezar }: { id: ViralId; onEmpezar: () => void }) {
  const v = virales[id];
  return <div className="py-12 sm:py-16"><p className="text-eyebrow uppercase text-primary">{v.etiqueta}</p><h1 className="text-display-l mt-4">{v.titulo}</h1><p className="text-body-lg mt-5 text-muted-foreground">{v.descripcion}</p><div className="mt-6 flex gap-5 text-body-sm"><span className="flex items-center gap-2"><Timer size={17} className="text-primary"/>Menos de 2 min</span><span className="flex items-center gap-2"><Share2 size={17} className="text-primary"/>Resultado compartible</span></div><button className={`${boton} mt-8`} onClick={onEmpezar}>Empezar <ArrowRight size={19}/></button></div>;
}

function Juego({ id, onTerminar, onAtras }: { id: ViralId; onTerminar: (d: Datos) => void; onAtras: () => void }) {
  if (["especialidad", "duelo", "provincia", "1995", "falla"].includes(id)) return <Cuestionario id={id} onTerminar={onTerminar} onAtras={onAtras}/>;
  if (id === "bingo") return <Bingo onTerminar={onTerminar} onAtras={onAtras}/>;
  if (id === "horas") return <Horas onTerminar={onTerminar} onAtras={onAtras}/>;
  if (id === "pasaporte") return <Pasaporte onTerminar={onTerminar} onAtras={onAtras}/>;
  if (id === "reflejos") return <Reflejos onTerminar={onTerminar} onAtras={onAtras}/>;
  return <Articulo onTerminar={onTerminar} onAtras={onAtras}/>;
}

function Volver({ onClick }: { onClick: () => void }) { return <button onClick={onClick} className="mb-6 inline-flex items-center gap-2 text-body-sm font-bold text-muted-foreground"><ArrowLeft size={16}/>Atrás</button>; }

function Cuestionario({ id, onTerminar, onAtras }: { id: ViralId; onTerminar: (d: Datos) => void; onAtras: () => void }) {
  const qs = id === "especialidad" ? preguntasEspecialidad : id === "falla" ? [preguntasConocimiento[4]] : preguntasConocimiento;
  const [i, setI] = useState(0); const [rs, setRs] = useState<number[]>([]); const [provincia, setProvincia] = useState("Madrid");
  const elegir = (n: number) => { const next = [...rs, n]; setRs(next); if (i + 1 === qs.length) onTerminar({ respuestas: next, ...(id === "provincia" ? { provincia } : {}) }); else setI(i + 1); };
  return <div className="py-8"><Volver onClick={i ? () => { setI(i-1); setRs(rs.slice(0,-1)); } : onAtras}/>{id === "provincia" && i === 0 && <select value={provincia} onChange={(e) => setProvincia(e.target.value)} className="mb-5 min-h-12 w-full border border-border-strong bg-surface px-3">{provincias.map(p => <option key={p}>{p}</option>)}</select>}<Progreso total={qs.length} hechas={i}/><p className="mt-6 text-eyebrow uppercase text-primary">Pregunta {i+1} de {qs.length}</p><h1 className="mt-3 text-h2">{qs[i].pregunta}</h1><div className="mt-6 grid gap-3">{qs[i].opciones.map((o,n) => <button key={o} onClick={() => elegir(n)} className="min-h-14 border border-border-strong bg-surface px-4 text-left font-semibold hover:border-primary"><span className="mr-3 text-primary">{String.fromCharCode(65+n)}</span>{o}</button>)}</div></div>;
}

function Bingo({ onTerminar, onAtras }: { onTerminar: (d: Datos) => void; onAtras: () => void }) { const [m,setM]=useState<number[]>([]); return <div className="py-8"><Volver onClick={onAtras}/><h1 className="text-h2">Marca tus casillas</h1><div className="mt-6 grid grid-cols-2 gap-2">{bingoCasillas.map((c,i)=><button key={c} onClick={()=>setM(m.includes(i)?m.filter(x=>x!==i):[...m,i])} className={`min-h-28 border p-3 text-sm font-semibold ${m.includes(i)?"border-primary bg-primary text-primary-fg":"border-border-strong bg-surface"}`}>{m.includes(i)&&<Check className="mx-auto mb-2"/>}{c}</button>)}</div><button className={`${boton} mt-6`} onClick={()=>onTerminar({marcadas:m})}>Ver mi bingo</button></div>; }

function Horas({ onTerminar, onAtras }: { onTerminar: (d: Datos) => void; onAtras: () => void }) { const [meses,setMeses]=useState(6),[dias,setDias]=useState(5),[horas,setHoras]=useState(3); const total=Math.round(meses*4.33*dias*horas); const campos=[{l:"Meses estudiando",v:meses,s:setMeses,min:1,max:60},{l:"Días por semana",v:dias,s:setDias,min:1,max:7},{l:"Horas al día",v:horas,s:setHoras,min:1,max:14}]; return <div className="py-8"><Volver onClick={onAtras}/><h1 className="text-h2">Calcula tu esfuerzo acumulado</h1><div className="mt-7 grid gap-5">{campos.map(({l,v,s,min,max})=><label key={l} className="grid gap-2 font-semibold">{l}: <strong className="text-primary">{v}</strong><input type="range" min={min} max={max} value={v} onChange={e=>s(Number(e.target.value))}/></label>)}</div><p className="mt-7 text-center text-5xl font-extrabold text-primary">{total} h</p><button className={`${boton} mt-7`} onClick={()=>onTerminar({horas:total})}>Crear equivalencia</button></div>; }

function Pasaporte({ onTerminar, onAtras }: { onTerminar: (d: Datos) => void; onAtras: () => void }) { const [nombre,setNombre]=useState(""),[nivel,setNivel]=useState("Aspirante"),[racha,setRacha]=useState(7),[tema,setTema]=useState("Constitución"); return <div className="py-8"><Volver onClick={onAtras}/><h1 className="text-h2">Configura tu pasaporte</h1><div className="mt-6 grid gap-4"><input className="min-h-13 border border-border-strong bg-surface px-3" placeholder="Tu nombre" value={nombre} onChange={e=>setNombre(e.target.value)}/><select className="min-h-13 border border-border-strong bg-surface px-3" value={nivel} onChange={e=>setNivel(e.target.value)}>{["Cadete","Aspirante","Veterano","Élite"].map(x=><option key={x}>{x}</option>)}</select><label>Racha: {racha} días<input className="w-full" type="range" min="1" max="365" value={racha} onChange={e=>setRacha(Number(e.target.value))}/></label><select className="min-h-13 border border-border-strong bg-surface px-3" value={tema} onChange={e=>setTema(e.target.value)}>{["Constitución","Derecho Penal","Inglés","Psicotécnicos","Ortografía"].map(x=><option key={x}>{x}</option>)}</select></div><p className="mt-4 text-xs text-muted-foreground">Tarjeta lúdica de ProLince. No es una identificación ni un documento oficial.</p><button className={`${boton} mt-6`} disabled={!nombre.trim()} onClick={()=>onTerminar({nombre:nombre.trim(),nivel,racha,tema})}>Crear pasaporte</button></div>; }

function Reflejos({ onTerminar, onAtras }: { onTerminar: (d: Datos) => void; onAtras: () => void }) { const [estado,setEstado]=useState<"listo"|"espera"|"pulsa">("listo"),[puntos,setPuntos]=useState(0),[rondas,setRondas]=useState(0); const iniciar=()=>{setEstado("espera"); window.setTimeout(()=>setEstado("pulsa"),700+Math.random()*1600)}; const tocar=()=>{if(estado==="listo")return iniciar(); const bien=estado==="pulsa"; const p=Math.max(0,puntos+(bien?10:-4)); const r=rondas+1; setPuntos(p);setRondas(r);setEstado("listo"); if(r>=10)onTerminar({puntos:p});}; return <div className="py-8"><Volver onClick={onAtras}/><h1 className="text-h2">Ronda {Math.min(rondas+1,10)}/10</h1><p className="mt-2 text-muted-foreground">Puntuación: {puntos}. Pulsa solo cuando cambie a verde.</p><button onClick={tocar} className={`mt-8 grid aspect-square w-full place-items-center rounded-full text-2xl font-extrabold ${estado==="pulsa"?"bg-primary text-primary-fg":estado==="espera"?"bg-danger text-white":"bg-surface border border-border-strong"}`}>{estado==="pulsa"?"¡AHORA!":estado==="espera"?"ESPERA…":"EMPEZAR"}</button></div>; }

function Articulo({ onTerminar, onAtras }: { onTerminar: (d: Datos) => void; onAtras: () => void }) { const objetivo=[14,16,17,18,19,20,21,22,23,24,27,30,53,54,55][semillaDia()%15]; const [valor,setValor]=useState(""); const [filas,setFilas]=useState<string[]>([]); const probar=()=>{const n=Number(valor);if(!Number.isInteger(n)||n<1||n>169)return;const marca=n===objetivo?"🟩🟩🟩🟩🟩":Math.abs(n-objetivo)<=5?"🟨🟨🟨⬜⬜":"⬜⬜⬜⬜⬜";const f=[...filas,marca];setFilas(f);setValor("");if(n===objetivo||f.length===6)onTerminar({intentos:n===objetivo?f.length:7,cuadricula:f.join("\n")});}; return <div className="py-8"><Volver onClick={onAtras}/><p className="text-eyebrow uppercase text-primary">Pista del día</p><h1 className="text-h2 mt-3">Derecho fundamental · Título I</h1><div className="mt-6 grid gap-2 text-center text-2xl">{filas.map((f,i)=><p key={i}>{f}</p>)}</div><div className="mt-7 flex gap-3"><input value={valor} onChange={e=>setValor(e.target.value)} onKeyDown={e=>e.key==="Enter"&&probar()} inputMode="numeric" placeholder="N.º de artículo" className="min-h-14 min-w-0 flex-1 border border-border-strong bg-surface px-4"/><button onClick={probar} className={boton}>Probar</button></div></div>; }

