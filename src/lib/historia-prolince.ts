export type HistoriaProlince = {
  titulo: string; texto: string; etiqueta?: string; valor?: string; nombre?: string;
  barras?: { nombre: string; valor: number }[]; cuadricula?: string; pie?: string; bingo?: number[];
};

function cargarImagen(url: string): Promise<HTMLImageElement> {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.onload = () => resolve(img);
    img.onerror = () => reject(new Error("No se ha podido cargar el logo de ProLince."));
    img.src = url;
  });
}

/** Un único original para la vista previa y el PNG: sin diferencias entre ambos. */
export async function crearHistoriaProlince(d: HistoriaProlince): Promise<Blob> {
  await document.fonts.ready;
  // Leer la misma paleta que está viendo el usuario, sin mantener una segunda marca.
  const raiz = document.querySelector<HTMLElement>(".tactico") || document.body;
  const estilo = getComputedStyle(raiz);
  const color = (token: string) => estilo.getPropertyValue(`--color-${token}`).trim();
  const paleta = { fondo: color("background"), superficie: color("surface"), texto: color("foreground"),
    primario: color("primary"), contraste: color("primary-fg"), tenue: color("muted-foreground"),
    borde: color("border"), muted: color("muted"), aviso: color("warning") };
  const oscuro = raiz.dataset.tema === "oscuro";
  const logo = await cargarImagen(oscuro ? "/brand/prolince-logo-horizontal-negativo.svg" : "/brand/prolince-logo-horizontal.svg");
  const c = document.createElement("canvas"); c.width = 1080; c.height = 1920;
  const x = c.getContext("2d"); if (!x) throw new Error("Tu navegador no permite generar imágenes.");
  const font = estilo.fontFamily;
  const display = estilo.getPropertyValue("--font-display").trim() || font;
  const hud = estilo.getPropertyValue("--font-hud").trim() || font;
  const fondo = x.createLinearGradient(0, 0, 1080, 1920);
  fondo.addColorStop(0, paleta.superficie); fondo.addColorStop(1, paleta.fondo);
  x.fillStyle = fondo; x.fillRect(0, 0, 1080, 1920);
  x.strokeStyle = paleta.borde; x.lineWidth = 1;
  for (let n = 0; n < 1920; n += 60) { x.beginPath(); x.moveTo(0,n); x.lineTo(1080,n); x.stroke(); }
  for (let n = 0; n < 1080; n += 60) { x.beginPath(); x.moveTo(n,0); x.lineTo(n,1920); x.stroke(); }
  x.strokeStyle = paleta.borde; x.lineWidth = 2;
  for (const r of [310,390,470]) { x.beginPath(); x.arc(1020,690,r,0,Math.PI*2); x.stroke(); }
  x.fillStyle = paleta.primario; x.fillRect(72,242,80,6);
  x.drawImage(logo,72,100,470,470*1252/4347);
  x.strokeStyle=paleta.primario; x.lineWidth=3;
  for(const [cx,cy,dx,dy] of [[40,64,1,1],[1040,64,-1,1],[40,1856,1,-1],[1040,1856,-1,-1]]) {
    x.beginPath();x.moveTo(cx+40*dx,cy);x.lineTo(cx,cy);x.lineTo(cx,cy+40*dy);x.stroke();
  }
  const lineas = (texto:string, y:number, size:number, max:number, color=paleta.texto, weight=800, family=font) => {
    let lines:string[]=[];
    do {
      x.font = `${weight} ${size}px ${family}`; lines=[];
      let line="";
      for(const w of texto.split(/\s+/)) { const test=line?`${line} ${w}`:w; if(line && x.measureText(test).width>936) {lines.push(line);line=w;} else line=test; }
      if(line)lines.push(line);
      if(lines.length<=max)break; size-=2;
    } while(size>18);
    x.fillStyle=color;
    lines.forEach((l,i)=>x.fillText(l,72,y+i*size*1.22));
    return y+lines.length*size*1.22;
  };
  lineas((d.etiqueta||"MI RESULTADO").toUpperCase(),310,27,1,paleta.primario,700,hud);
  lineas(d.nombre?`${d.nombre} · RETO COMPLETADO`:"ENTRENA. SUPÉRATE. COMPARTE.",366,23,1,paleta.tenue,600);
  lineas(d.titulo.toUpperCase(),492,86,3,paleta.texto,800,display);
  if(d.valor) {
    x.fillStyle=paleta.primario; x.font=`800 160px ${display}`;
    let size=160; while(x.measureText(d.valor).width>936){size-=4;x.font=`800 ${size}px ${display}`;}
    x.fillText(d.valor,72,935);
  } else {
    x.strokeStyle=paleta.primario; x.lineWidth=5; x.beginPath(); x.arc(180,880,88,0,Math.PI*2); x.stroke();
    x.beginPath(); x.moveTo(140,880); x.lineTo(170,910); x.lineTo(225,845); x.stroke();
    lineas("MISIÓN COMPLETADA",1020,26,1,paleta.primario);
  }
  lineas(d.texto,1115,35,4,paleta.texto,500);
  if(d.barras?.length) d.barras.slice(0,4).forEach((b,i)=>{
    const y=1395+i*60; x.font=`600 23px ${font}`;x.fillStyle=paleta.texto;x.fillText(b.nombre,72,y);
    x.fillStyle=paleta.muted;x.fillRect(390,y-18,480,16);x.fillStyle=paleta.primario;x.fillRect(390,y-18,480*Math.min(100,Math.max(0,b.valor))/100,16);
    x.fillText(`${b.valor}%`,900,y);
  });
  if(d.cuadricula) d.cuadricula.split("\n").slice(0,6).forEach((f,i)=>Array.from(f).slice(0,5).forEach((v,j)=>{
    x.fillStyle=v==="🟩"?paleta.primario:v==="🟨"?paleta.aviso:paleta.muted;x.fillRect(72+j*57,1335+i*43,47,33);
  }));
  if(d.bingo) for(let i=0;i<16;i++) {
    const activo=d.bingo.includes(i), bx=72+(i%4)*236, by=1320+Math.floor(i/4)*74;
    x.fillStyle=activo?paleta.primario:paleta.muted;x.fillRect(bx,by,218,62);
    x.fillStyle=activo?paleta.contraste:paleta.tenue;x.font=`800 27px ${font}`;x.fillText(`${String(i+1).padStart(2,"0")} ${activo?"✓":"—"}`,bx+60,by+42);
  }
  x.fillStyle=paleta.primario; x.fillRect(72,1660,936,2);
  lineas("¿Y TÚ? DEMUESTRA TU NIVEL.",1730,33,1);
  lineas(d.pie||"Academia ProLince · Tu plaza empieza contigo",1790,23,2,paleta.tenue,500);
  return new Promise((resolve,reject)=>c.toBlob(b=>b?resolve(b):reject(new Error("No se pudo crear la historia.")),"image/png"));
}
