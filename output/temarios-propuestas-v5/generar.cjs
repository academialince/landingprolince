const fs=require('node:fs');
const path=require('node:path');
const sharp=require('sharp');
const root=path.resolve(__dirname,'../..'),out=__dirname;
const S=(body,w=1254,h=1254)=>Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${w}" height="${h}">${body}</svg>`);
const T=(x,y,s,value,color='#f3f8f1',extra='')=>`<text x="${x}" y="${y}" fill="${color}" font-family="Arial,sans-serif" font-size="${s}" ${extra}>${value}</text>`;
const I=(url,x,y,w,h,extra='')=>`<image href="${url}" x="${x}" y="${y}" width="${w}" height="${h}" ${extra}/>`;
async function data(file,w){return 'data:image/png;base64,'+(await sharp(path.join(root,file)).resize(w).png().toBuffer()).toString('base64');}
(async()=>{
  fs.copyFileSync('/Users/marcosocanatalavera/.codex/generated_images/01a177e1-c330-7380-88a5-461a72f606e3/exec-bc7d8e64-a5f9-4408-b598-f8e33c0a778f.png',path.join(out,'base-pack.png'));
  const logo=await data('public/brand/prolince-logo-horizontal-negativo.svg',900),seal=await data('public/brand/prolince-logo.svg',700);
  for(const [course,folder] of [['gc','guardia-civil'],['cgj','guardias-jovenes']]){
    let rear='<defs><clipPath id="left"><path d="M85 290H449V317H391V891H85Z"/></clipPath><clipPath id="right"><path d="M822 289H1193V890H845V327H840V317H822Z"/></clipPath></defs>';
    for(const [side,x,kind] of [['left',85,'ingles'],['right',822,'ortografia']]){
      let art=I(logo,x+26,330,230,70);
      art+=`<path d="M${x+26} 422H${x+342}" stroke="#9bbda5" stroke-opacity=".6"/>`;
      art+=T(x+26,486,49,'TEMARIO','#f1f5ed','font-weight="700"');
      if(kind==='ingles') art+=T(x+26,554,56,'INGLÉS','#afd0ba','font-weight="700"');
      else art+=T(x+26,543,38,'ORTOGRAFÍA','#afd0ba','font-weight="700"')+T(x+26,591,37,'Y GRAMÁTICA','#afd0ba','font-weight="700"');
      art+=course==='gc'?T(x+26,650,18,'GUARDIA CIVIL','#e4eee4'):T(x+26,640,17,'COLEGIO DE','#e4eee4')+T(x+26,667,17,'GUARDIAS JÓVENES','#e4eee4');
      art+=I(seal,x+108,699,150,150,'opacity=".5"');
      art+=T(x+26,866,12,'EDICIÓN 2027','#e1ece2','letter-spacing="2"');
      rear+=`<g clip-path="url(#${side})">${art}</g>`;
    }
    const original=await sharp(path.join(root,`public/temarios/${folder}/001.webp`)).resize(430,641,{fit:'fill'}).png().toBuffer();
    await sharp(path.join(out,'base-pack.png')).composite([{input:S(rear)},{input:original,left:414,top:327}]).webp({quality:95}).toFile(path.join(out,`${course}-pack-propuesta.webp`));
    const approved=path.join(root,`output/temarios-propuestas-v4/${course}-resumen-propuesta.webp`);
    const summary=path.join(out,`${course}-resumen-propuesta.webp`);
    fs.copyFileSync(approved,summary);
    if(!fs.readFileSync(approved).equals(fs.readFileSync(summary))) throw new Error('Summary changed');
  }
  const tiles=[];
  const labels=[['gc-pack','Guardia Civil · Pack completo'],['gc-resumen','Guardia Civil · Resumen'],['cgj-pack','Colegio de Guardias Jóvenes · Pack completo'],['cgj-resumen','Colegio de Guardias Jóvenes · Resumen']];
  for(let i=0;i<labels.length;i++){
    const [file,label]=labels[i],left=40+(i%2)*740,top=100+Math.floor(i/2)*790;
    tiles.push({input:await sharp(path.join(out,`${file}-propuesta.webp`)).resize(700).png().toBuffer(),left,top});
    tiles.push({input:S(T(350,38,23,label,'#153b2d','text-anchor="middle"'),700,60),left,top:top+704});
  }
  tiles.push({input:S(T(760,51,27,'PROLINCE · PACKS Y RESÚMENES','#153b2d','text-anchor="middle"'),1520,80),left:0,top:0});
  await sharp({create:{width:1520,height:1690,channels:3,background:'#f7f5ef'}}).composite(tiles).jpeg({quality:95}).toFile(path.join(out,'comparativa.jpg'));
  console.log('Packs actualizados; resúmenes idénticos a los aprobados.');
})().catch(e=>{console.error(e);process.exit(1)});
