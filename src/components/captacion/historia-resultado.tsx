"use client";

import { useEffect, useState } from "react";
import { Download, Eye, Share2, X } from "lucide-react";
import { crearHistoriaProlince, type HistoriaProlince } from "@/lib/historia-prolince";

export function HistoriaResultado({ datos }: { datos: HistoriaProlince }) {
  const [url,setUrl]=useState<string>();
  const [blob,setBlob]=useState<Blob>();
  const [abierto,setAbierto]=useState(false);
  const [estado,setEstado]=useState("");
  const [generando,setGenerando]=useState(false);
  useEffect(()=>()=>{if(url)URL.revokeObjectURL(url);},[url]);
  const generar=async()=>{
    if(blob)return blob;
    setGenerando(true);setEstado("");
    try {const b=await crearHistoriaProlince(datos);setBlob(b);setUrl(URL.createObjectURL(b));return b;}
    catch(e){setEstado(e instanceof Error?e.message:"No se pudo generar. Vuelve a intentarlo.");}
    finally{setGenerando(false);}
  };
  const descargar=async()=>{const b=await generar();if(!b)return;const u=URL.createObjectURL(b);const a=document.createElement("a");a.href=u;a.download="prolince-mi-resultado.png";a.click();setTimeout(()=>URL.revokeObjectURL(u),1000);setEstado("Historia descargada. Lista para subir a Instagram.");};
  const compartir=async()=>{
    if(!blob){await generar();setEstado("Imagen preparada. Pulsa de nuevo para compartirla.");return;}
    const file=new File([blob],"prolince-mi-resultado.png",{type:"image/png"});
    try {if(navigator.canShare?.({files:[file]})){await navigator.share({files:[file],title:datos.titulo});}else await descargar();}
    catch(e){if(!(e instanceof DOMException&&e.name==="AbortError"))setEstado("No se pudo compartir. Puedes descargar la imagen.");}
  };
  return <section className="mt-6 rounded-sm border border-primary/30 bg-primary-soft p-5">
    <p className="text-eyebrow uppercase text-primary">Tu esfuerzo merece una historia</p>
    <p className="mt-2 text-sm text-muted-foreground">Tarjeta ProLince · formato vertical · lista para Instagram y WhatsApp</p>
    <div className="mt-4 flex flex-wrap gap-3">
      <button disabled={generando} onClick={async()=>{setAbierto(true);await generar();}} className="inline-flex min-h-12 items-center gap-2 cta-button bg-primary px-4 font-bold text-primary-fg disabled:opacity-50"><Eye size={18}/>{generando?"Creando…":"Ver mi historia"}</button>
      <button disabled={generando} onClick={descargar} className="inline-flex min-h-12 items-center gap-2 px-3 font-bold text-primary"><Download size={18}/>Descargar PNG</button>
      <button disabled={generando} onClick={compartir} className="inline-flex min-h-12 items-center gap-2 px-3 font-bold text-primary"><Share2 size={18}/>Compartir imagen</button>
    </div>
    <p role="status" className="mt-2 text-sm">{estado}</p>
    {abierto&&<div className="mt-5"><div className="mb-3 flex items-center justify-between"><span className="text-xs text-muted-foreground">VISTA PREVIA · 1080 × 1920</span><button aria-label="Cerrar vista previa" onClick={()=>setAbierto(false)} className="p-3"><X size={18}/></button></div>{url?/* eslint-disable-next-line @next/next/no-img-element */
    <img src={url} alt={`Historia descargable: ${datos.titulo}`} width={1080} height={1920} className="mx-auto w-full max-w-80 rounded-sm shadow-2xl"/>:<p className="py-10 text-center">{generando?"Preparando tu tarjeta…":estado}</p>}</div>}
  </section>;
}
