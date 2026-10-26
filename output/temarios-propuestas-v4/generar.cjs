const fs=require('node:fs');
const path=require('node:path');
const sharp=require('sharp');
const root=path.resolve(__dirname,'../..');
const out=__dirname;
const generated='/Users/marcosocanatalavera/.codex/generated_images/01a177e1-c330-7380-88a5-461a72f606e3';
const entries=[['gc','guardia-civil','exec-75832b69-fb5f-4651-8c5e-3a9f84d0af2a.png'],['cgj','guardias-jovenes','exec-225f4544-2a7e-4325-82a7-1dc4778cd9ad.png']];
const svg=(body,w,h)=>Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${w}" height="${h}">${body}</svg>`);
(async()=>{
  const tiles=[];
  for(let i=0;i<entries.length;i++){
    const [key,folder,file]=entries[i];
    const src=path.join(root,`public/temarios/${folder}/001.webp`);
    const original=await sharp(src).ensureAlpha().raw().toBuffer({resolveWithObject:true});
    const {width,height}=original.info;
    const region={left:80,top:445,width:1035,height:165};
    // Use only the changed title band; every other original pixel is retained.
    const generatedFull=await sharp(path.join(generated,file)).resize(width,height,{fit:'fill'}).png().toBuffer();
    const alpha=await sharp(svg(`<rect x="7" y="7" width="${region.width-14}" height="${region.height-14}" fill="white"/>`,region.width,region.height)).blur(3).png().toBuffer();
    const patch=await sharp(generatedFull).extract(region).composite([{input:alpha,blend:'dest-in'}]).png().toBuffer();
    const result=await sharp(src).composite([{input:patch,left:region.left,top:region.top}]).png().toBuffer();
    fs.writeFileSync(path.join(out,`${key}-portada-resumen.png`),result);
    const pixels=await sharp(result).ensureAlpha().raw().toBuffer();
    let outsideChanges=0;
    for(let y=0;y<height;y++) for(let x=0;x<width;x++){
      if(x>=region.left&&x<region.left+region.width&&y>=region.top&&y<region.top+region.height) continue;
      const p=(y*width+x)*4;
      for(let c=0;c<4;c++) if(original.data[p+c]!==pixels[p+c]) outsideChanges++;
    }
    if(outsideChanges) throw new Error(`${key}: altered ${outsideChanges} channels outside title band`);
    console.log(`${key}: verified identical pixels outside title band.`);
    for(const [j,kind,input] of [[0,'completo',src],[1,'resumen',result]]){
      const book=await sharp(path.join(root,'output/temarios-propuestas-v2/base-resumen.png')).composite([{input:await sharp(input).resize(705,965,{fit:'fill'}).png().toBuffer(),left:290,top:150}]).webp({quality:95}).toBuffer();
      fs.writeFileSync(path.join(out,`${key}-${kind}-propuesta.webp`),book);
      const left=40+j*640,top=90+i*680;
      tiles.push({input:await sharp(book).resize(610).png().toBuffer(),left,top});
      const label=`${key==='gc'?'Guardia Civil':'Colegio de Guardias Jóvenes'} · ${kind==='completo'?'Completo original':'Resumen'}`;
      tiles.push({input:svg(`<text x="305" y="31" text-anchor="middle" font-family="Arial,sans-serif" font-size="21" fill="#153b2d">${label}</text>`,610,50),left,top:top+612});
    }
    fs.copyFileSync(path.join(root,`output/temarios-propuestas-v3/${key}-pack-propuesta.webp`),path.join(out,`${key}-pack-propuesta.webp`));
  }
  tiles.push({input:svg('<text x="665" y="47" text-anchor="middle" font-family="Arial,sans-serif" font-size="27" fill="#153b2d">MISMA PORTADA · COMPLETO → RESUMEN</text>',1330,75),left:0,top:0});
  await sharp({create:{width:1330,height:1450,channels:3,background:'#f7f5ef'}}).composite(tiles).jpeg({quality:95}).toFile(path.join(out,'comparativa.jpg'));
})().catch(e=>{console.error(e);process.exit(1)});
