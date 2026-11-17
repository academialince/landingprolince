"use client";

import { useMemo, useState } from "react";
import { ArrowRight, Check, RotateCcw, Swords, Target, Trophy } from "lucide-react";
import { HistoriaResultado } from "./historia-resultado";
import { bingoCasillas, especialidadesVirales, preguntasConocimiento, virales, type ViralId } from "@/content/captacion/virales";
import { destinoEmpezar } from "@/lib/links";
import type { ResultadoLead } from "@/app/(captacion)/acciones";

type Resultado = { clave:string; titulo:string; detalle:string; puntuacion?:number; cuadricula?:string };
const perfiles: Record<string,{lema:string;fortaleza:string;paso:string}> = {
  GRS:{lema:"La calma cuando todo se mueve.",fortaleza:"Coordinación, decisión y compromiso con el equipo.",paso:"Alterna sesiones de estudio con objetivos cortos y ejercicios de atención bajo presión."},
  SEPRONA:{lema:"Tu instinto es proteger lo que importa.",fortaleza:"Observación, paciencia y sensibilidad por el entorno.",paso:"Convierte cada tema en un mapa de conceptos. Relacionar ideas es tu mejor herramienta."},
  "Tráfico":{lema:"Cada detalle cuenta. Tú lo sabes.",fortaleza:"Atención sostenida, precisión y prevención.",paso:"Entrena con bloques cronometrados y registra los errores que se repiten."},
  "Policía Judicial":{lema:"Donde otros ven datos, tú ves pistas.",fortaleza:"Curiosidad, análisis y perseverancia.",paso:"Después de cada test, explica por qué las opciones incorrectas no encajan."},
};

export function ResultadoViral({id,datos,resultado,nombre,comparativa,onRepetir}:{id:ViralId;datos:Record<string,unknown>;resultado:Resultado;nombre:string;comparativa?:ResultadoLead["comparativa"];onRepetir:()=>void}) {
  const [mensaje,setMensaje]=useState("");
  const rival=useMemo(()=>{
    if(typeof window==="undefined"||id!=="duelo")return null;
    const p=new URLSearchParams(location.search); if(!p.has("r"))return null;
    const n=Number(p.get("r"));return Number.isInteger(n)&&n>=0&&n<=10?{nota:n,nombre:(p.get("n")||"Tu rival").slice(0,50)}:null;
  },[id]);
  const respuestas=Array.isArray(datos.respuestas)?datos.respuestas as number[]:[];
  const barras=id==="especialidad"?especialidadesVirales.map((n,i)=>({nombre:n,valor:respuestas.filter(r=>r===i).length*10})):undefined;
  const perfil=perfiles[resultado.clave];
  const puntuable=["duelo","provincia","1995"].includes(id);
  const valor=id==="especialidad"?resultado.clave:id==="bingo"?`${resultado.clave}/16`:id==="horas"?`${Number(resultado.clave).toLocaleString("es-ES")} h`:id==="pasaporte"?resultado.clave:id==="articulo"?(Number(resultado.clave)<=6?`${resultado.clave}/6`:"6/6"):id==="falla"?(resultado.clave==="1"?"ACIERTO":"A REPASAR"):puntuable?`${resultado.clave}/10`:`${resultado.clave} pts`;
  const titulo=id==="falla"?(resultado.clave==="1"?"Has visto la trampa":"Una palabra para recordar"):id==="1995"?"Tu resultado en preguntas clásicas":resultado.titulo;
  const detalle=id==="1995"?"Test de práctica: esta puntuación no acredita un aprobado en una convocatoria histórica.":id==="provincia"?`Has obtenido ${resultado.clave} aciertos representando a ${datos.provincia}.`:resultado.detalle;
  const marcadas=Array.isArray(datos.marcadas)?datos.marcadas as number[]:[];
  const lineasBingo=[...[0,1,2,3].map(r=>[0,1,2,3].map(c=>r*4+c)),...[0,1,2,3].map(c=>[0,1,2,3].map(r=>r*4+c)),[0,5,10,15],[3,6,9,12]].filter(l=>l.every(n=>marcadas.includes(n))).length;
  const compartirReto=async()=>{
    const u=new URL(location.origin+location.pathname);u.searchParams.set("r",String(resultado.puntuacion??0));u.searchParams.set("n",nombre||"Un amigo");
    try {if(navigator.share)await navigator.share({title:"Duelo ProLince",text:`${nombre||"Un amigo"}: ${valor}. ¿Me superas?`,url:u.href});else {await navigator.clipboard.writeText(u.href);setMensaje("Reto copiado. Envíalo a tu rival.");}}
    catch(e){if(!(e instanceof DOMException&&e.name==="AbortError"))setMensaje("No se pudo compartir el reto. Inténtalo de nuevo.");}
  };
  return <div className="py-8 sm:py-12">
    <div className="relative isolate overflow-hidden hud-marco border border-border-strong bg-surface p-6 text-foreground sm:p-10">
      <div aria-hidden className="pointer-events-none absolute -right-24 top-10 -z-10 size-96 rounded-full border border-primary/15"/>
      <div className="flex items-center justify-between gap-3"><span className="text-eyebrow uppercase text-primary">{virales[id].palabra} / RESULTADO</span><Trophy size={24} className="text-primary"/></div>
      <p className="mt-10 text-sm text-muted-foreground">{nombre?`${nombre}, este es tu resultado.`:"Reto completado."}</p>
      <h1 className="mt-3 text-2xl font-extrabold leading-tight sm:text-4xl">{titulo}</h1>
      <p className="my-7 font-[family-name:var(--font-display)] uppercase break-words text-5xl font-black tracking-tighter text-primary sm:text-7xl">{valor}</p>
      <p className="max-w-lg text-base leading-relaxed text-muted-foreground">{perfil?.lema||detalle}</p>
      <div className="mt-8 flex items-center gap-2 border-t border-border pt-5 text-xs font-semibold tracking-widest text-muted-foreground"><Check size={15}/> ACADEMIA PROLINCE · CADA PASO CUENTA</div>
    </div>

    {barras&&perfil&&<section className="mt-6 rounded-sm border border-border bg-surface p-6"><h2 className="text-xl font-bold">Tu mapa de afinidad</h2><p className="mt-2 text-sm text-muted-foreground">Reparto de tus 10 elecciones. Orientación lúdica, no evaluación profesional.</p><div className="mt-6 grid gap-5">{barras.map(b=><div key={b.nombre}><div className="mb-2 flex justify-between text-sm font-bold"><span>{b.nombre}</span><span className="text-primary">{b.valor}%</span></div><div className="h-3 overflow-hidden rounded-full bg-muted"><div className="h-full rounded-full bg-primary" style={{width:`${b.valor}%`}}/></div></div>)}</div><p className="mt-6 font-semibold">{perfil.fortaleza}</p><p className="mt-2 text-muted-foreground">{perfil.paso}</p></section>}

    {rival&&<section className="mt-6 rounded-sm border border-primary bg-primary-soft p-6"><h2 className="text-center text-xl font-bold">{Number(resultado.clave)>rival.nota?"¡Duelo ganado!":Number(resultado.clave)===rival.nota?"Empate. Toca revancha.":"Esta vez gana tu rival."}</h2><div className="mt-6 grid grid-cols-3 items-center text-center"><div><p className="text-4xl font-black">{rival.nota}</p><p className="mt-2 break-words text-sm">{rival.nombre}</p></div><Swords className="mx-auto text-primary"/><div><p className="text-4xl font-black text-primary">{resultado.clave}</p><p className="mt-2 text-sm">Tú</p></div></div></section>}

    {puntuable&&<section className="mt-6"><div className="grid grid-cols-3 gap-3">{[[resultado.clave,"Aciertos"],[String(10-Number(resultado.clave)),"A repasar"],[`${Number(resultado.clave)*10}%`,"Precisión"]].map(([v,l])=><div key={l} className="rounded-sm border border-border bg-surface p-4 text-center"><p className="text-2xl font-black text-primary">{v}</p><p className="mt-1 text-xs text-muted-foreground">{l}</p></div>)}</div><details className="mt-4 rounded-sm border border-border bg-surface p-5"><summary className="cursor-pointer font-bold">Revisar mis 10 respuestas</summary><ol className="mt-5 grid gap-4">{preguntasConocimiento.map((p,i)=><li key={p.pregunta} className="border-t border-border pt-4"><p className="font-semibold">{i+1}. {p.pregunta}</p><p className="mt-2 text-sm text-muted-foreground">Tu respuesta: {p.opciones[respuestas[i]]??"Sin respuesta"} {respuestas[i]===p.correcta?"✓":"✕"}</p><p className="mt-1 text-sm font-bold text-primary">Correcta: {p.opciones[p.correcta!]}</p></li>)}</ol></details></section>}

    {id==="bingo"&&<section className="mt-6"><h2 className="mb-4 text-xl font-bold">{lineasBingo} líneas completas · Tu cartón</h2><div className="grid grid-cols-2 gap-2 sm:grid-cols-4">{bingoCasillas.map((b,i)=><div key={b} className={`flex min-h-28 flex-col justify-center rounded-sm border p-3 text-xs font-semibold ${marcadas.includes(i)?"border-primary bg-primary text-primary-fg":"border-border bg-surface text-muted-foreground"}`}>{marcadas.includes(i)&&<Check size={18} className="mb-2"/>}{b}</div>)}</div></section>}
    {id==="horas"&&<section className="mt-6 grid grid-cols-2 gap-4">{[[Math.round(Number(datos.horas)/24),"días completos de esfuerzo"],[Math.floor(Number(datos.horas)*60/25),"bloques de 25 minutos"]].map(([v,l])=><div key={l} className="rounded-sm border border-border bg-surface p-5"><p className="text-3xl font-black text-primary">{Number(v).toLocaleString("es-ES")}</p><p className="mt-2 text-sm text-muted-foreground">{l}</p></div>)}</section>}
    {id==="pasaporte"&&<section className="mt-6 rounded-sm border border-border bg-surface p-6"><p className="text-xs font-bold tracking-widest text-primary">PASAPORTE DE OPOSITOR · PROLINCE</p><h2 className="mt-4 text-2xl font-black">{String(datos.nombre)}</h2><dl className="mt-5 grid grid-cols-2 gap-4"><div><dt className="text-xs text-muted-foreground">Racha declarada</dt><dd className="mt-1 text-xl font-bold">{String(datos.racha)} días</dd></div><div><dt className="text-xs text-muted-foreground">Tema fuerte</dt><dd className="mt-1 text-xl font-bold">{String(datos.tema)}</dd></div></dl><p className="mt-6 text-xs text-muted-foreground">Tarjeta lúdica. No es un documento oficial ni acredita pertenencia a la Guardia Civil.</p></section>}
    {resultado.cuadricula&&<pre className="mt-6 overflow-x-auto rounded-sm border border-border bg-surface p-5 text-center text-2xl">{resultado.cuadricula}</pre>}
    {comparativa&&comparativa.total>=20&&<div className="mt-6 rounded-sm border border-primary/30 bg-primary-soft p-6"><p className="text-4xl font-black text-primary">{Math.round(comparativa.porDebajo/comparativa.total*100)}%</p><p className="mt-2 text-sm">de los {comparativa.total} resultados registrados quedan por debajo del tuyo.</p></div>}
    <HistoriaResultado datos={{titulo,texto:perfil?.lema||detalle,valor,nombre,etiqueta:virales[id].etiqueta,barras,bingo:id==="bingo"?marcadas:undefined,cuadricula:resultado.cuadricula,pie:id==="pasaporte"?"Tarjeta lúdica ProLince · No es un documento oficial":undefined}}/>
    {id==="duelo"&&<button onClick={compartirReto} className="cta-button mt-4 inline-flex min-h-14 w-full items-center justify-center gap-3 rounded-sm bg-primary font-bold text-primary-fg"><Swords size={20}/>Enviar mi reto</button>}
    <p role="status" className="mt-2 text-sm">{mensaje}</p>
    <section className="mt-8 rounded-sm border border-border p-6"><Target className="text-primary"/><h2 className="mt-3 text-xl font-bold">Convierte este resultado en progreso</h2><p className="mt-2 text-sm text-muted-foreground">{puntuable?"Repasa tus errores antes de repetir. Entender una respuesta vale más que memorizar una letra.":"El siguiente paso es construir una rutina. Reserva un bloque de estudio y termina con un pequeño test."}</p><a href={destinoEmpezar} className="mt-5 inline-flex items-center gap-2 font-bold text-primary">Entrenar con ProLince <ArrowRight size={18}/></a></section>
    <button onClick={onRepetir} className="mt-6 inline-flex min-h-12 items-center gap-2 font-semibold text-muted-foreground"><RotateCcw size={17}/>Volver a intentarlo</button>
  </div>;
}
