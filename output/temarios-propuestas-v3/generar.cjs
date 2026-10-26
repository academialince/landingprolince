const fs = require('node:fs');
const path = require('node:path');
const sharp = require('sharp');
const root = path.resolve(__dirname, '../..');
const out = __dirname;
const S = (body,w=1254,h=1254) => Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="${w}" height="${h}" viewBox="0 0 ${w} ${h}">${body}</svg>`);
const T = (x,y,s,value,color='#f3f8f1',extra='') => `<text x="${x}" y="${y}" fill="${color}" font-family="Arial, sans-serif" font-size="${s}" ${extra}>${value}</text>`;
const C = 'text-anchor="middle"';
const B = 'font-weight="700"';
const I = (url,x,y,w,h,extra='') => `<image href="${url}" x="${x}" y="${y}" width="${w}" height="${h}" ${extra}/>`;
async function data(file,w) { return 'data:image/png;base64,'+(await sharp(path.join(root,file)).resize(w).png().toBuffer()).toString('base64'); }
(async()=>{
  fs.copyFileSync('/Users/marcosocanatalavera/.codex/generated_images/01a177e1-c330-7380-88a5-461a72f606e3/exec-48bc5ca0-20eb-46f6-943c-f88e194f7465.png',path.join(out,'base-pack.png'));
  const logo=await data('public/brand/prolince-logo-horizontal-negativo.svg',900);
  const seal=await data('public/brand/prolince-logo.svg',900);
  const summaryFiles=[];
  for (const [course,folder,name] of [['gc','guardia-civil','GUARDIA CIVIL'],['cgj','guardias-jovenes','COLEGIO DE GUARDIAS JÓVENES']]) {
    // Full-width rear covers are composed first and clipped by the foreground book.
    // Their typography is deliberately not squeezed into the exposed strips.
    let rear='<defs><clipPath id="left"><rect x="74" y="235" width="270" height="694"/></clipPath><clipPath id="right"><rect x="908" y="235" width="296" height="694"/></clipPath></defs>';
    for(const [side,x,kind] of [['left',74,'ingles'],['right',670,'ortografia']]){
      let art=I(logo,x+35,276,270,80);
      art+=`<path d="M${x+35} 381H${x+499}" stroke="#9bbda5" stroke-opacity=".6"/>`;
      art+=T(x+35,466,67,'TEMARIO','#f1f5ed',B);
      if(kind==='ingles') art+=T(x+35,551,75,'INGLÉS','#afd0ba',B);
      else art+=T(x+35,535,49,'ORTOGRAFÍA','#afd0ba',B)+T(x+35,594,47,'Y GRAMÁTICA','#afd0ba',B);
      art+=course==='gc' ? T(x+35,653,22,name,'#e4eee4') : T(x+35,649,19,'COLEGIO DE','#e4eee4')+T(x+35,677,19,'GUARDIAS JÓVENES','#e4eee4');
      art+=I(seal,x+175,710,190,190,'opacity=".5"');
      art+=T(x+35,899,13,'EDICIÓN 2027','#e1ece2','letter-spacing="2"');
      rear+=`<g clip-path="url(#${side})">${art}</g>`;
    }
    const original=await sharp(path.join(root,`public/temarios/${folder}/001.webp`)).resize(535,778,{fit:'fill'}).png().toBuffer();
    await sharp(path.join(out,'base-pack.png')).composite([{input:S(rear)},{input:original,left:371,top:233}]).webp({quality:95}).toFile(path.join(out,`${course}-pack-propuesta.webp`));
    // New, editable summary cover in the same visual family as the complete cover.
    // All brand images are the official SVGs; the existing supplied covers stay intact.
    let cover='<defs><linearGradient id="green" x2=".8" y2="1"><stop stop-color="#0a452e"/><stop offset="1" stop-color="#002719"/></linearGradient><linearGradient id="paper"><stop stop-color="#fcfefb"/><stop offset="1" stop-color="#eaf6ed"/></linearGradient><filter id="shadow" x="-30%" y="-30%" width="160%" height="170%"><feDropShadow dx="0" dy="12" stdDeviation="12" flood-color="#00271b" flood-opacity=".3"/></filter></defs>';
    cover+='<rect width="1191" height="1684" fill="url(#green)"/>';
    cover+=I(seal,700,280,710,710,'opacity=".065"');
    // Exact original header, including official branding and course identification.
    const header='data:image/png;base64,'+(await sharp(path.join(root,`public/temarios/${folder}/001.webp`)).extract({left:0,top:0,width:1191,height:190}).png().toBuffer()).toString('base64');
    cover+=I(header,0,0,1191,190);
    cover+='<rect x="410" y="208" width="371" height="42" rx="21" fill="#e4f3e7"/>';
    cover+=T(595,236,20,'REPASO · EDICIÓN 2027','#075137',`${C} ${B}`);
    cover+=T(595,431,169,'TEMARIO','#f6fcf5',`${C} ${B} letter-spacing="-5" filter="url(#shadow)"`);
    cover+=T(595,588,142,'RESUMEN','#a4d5b4',`${C} letter-spacing="6"`);
    cover+='<path d="M350 645H500M690 645H840" stroke="#8eb89c" stroke-width="3"/>';
    cover+=T(595,652,19,'LO ESENCIAL','#dceee1',`${C} letter-spacing="2"`);
    if(course==='gc') {
      cover+=T(595,715,24,'ACCESO A LA ESCALA DE','#f0f7ee',`${C} letter-spacing="6"`);
      cover+=T(595,765,43,'CABOS Y GUARDIAS','#f8fcf5',`${C} ${B} letter-spacing="4"`);
      cover+=T(595,807,26,'DE LA GUARDIA CIVIL','#f0f7ee',`${C} letter-spacing="6"`);
    } else {
      cover+=T(595,715,24,'INGRESO EN EL','#f0f7ee',`${C} letter-spacing="6"`);
      cover+=T(595,765,39,'COLEGIO DE GUARDIAS JÓVENES','#f8fcf5',`${C} ${B} letter-spacing="1"`);
      cover+=T(595,807,24,'«DUQUE DE AHUMADA» · GUARDIA CIVIL','#f0f7ee',`${C} letter-spacing="3"`);
    }
    cover+='<rect x="0" y="1000" width="1191" height="684" fill="url(#paper)"/>';
    cover+='<g filter="url(#shadow)"><circle cx="595" cy="1004" r="164" fill="#075136" stroke="#f5fff6" stroke-width="9"/><circle cx="595" cy="1004" r="145" fill="none" stroke="#b8d8bf" stroke-width="2"/>';
    cover+=I(seal,463,872,264,264)+'</g>';
    cover+=T(595,1250,28,'EL TEMARIO, CONDENSADO EN UN SOLO LIBRO','#164932',`${C} ${B}`);
    cover+=T(595,1300,24,'Para repasar lo esencial de cada tema.','#53715e',C);
    for(const [cx,a,b] of [[235,'TEMARIO','CONDENSADO'],[595,'CONCEPTOS','ESENCIALES'],[955,'REPASO','POR TEMAS']]){
      cover+=`<rect x="${cx-145}" y="1353" width="290" height="99" rx="18" fill="#e1f1e6"/>`;
      cover+=T(cx,1393,21,a,'#0b5235',`${C} ${B}`)+T(cx,1425,21,b,'#0b5235',`${C} ${B}`);
    }
    cover+='<path d="M0 1565Q0 1535 30 1535H1161Q1191 1535 1191 1565V1684H0Z" fill="#002b1c"/>';
    cover+=I(logo,65,1566,280,80);
    cover+=T(1120,1590,22,'TEMARIO RESUMEN','#eef6ee','text-anchor="end"');
    cover+=T(1120,1635,18,'EDICIÓN 2027','#a9c5b2','text-anchor="end" letter-spacing="3"');
    fs.writeFileSync(path.join(out,`${course}-portada-resumen.svg`),S(cover,1191,1684));
    const coverPng=await sharp(S(cover,1191,1684)).png().toBuffer();
    await sharp(coverPng).png().toFile(path.join(out,`${course}-portada-resumen.png`));
    await sharp(path.join(root,'output/temarios-propuestas-v2/base-resumen.png')).composite([{input:await sharp(coverPng).resize(705,965,{fit:'fill'}).png().toBuffer(),left:290,top:150}]).webp({quality:95}).toFile(path.join(out,`${course}-resumen-propuesta.webp`));
  }
  const tiles=[];
  const labels=[['gc-pack','Guardia Civil · Pack completo'],['gc-resumen','Guardia Civil · Resumen'],['cgj-pack','Colegio de Guardias Jóvenes · Pack completo'],['cgj-resumen','Colegio de Guardias Jóvenes · Resumen']];
  for(let i=0;i<labels.length;i++){
    const [file,label]=labels[i],left=40+(i%2)*740,top=100+Math.floor(i/2)*790;
    tiles.push({input:await sharp(path.join(out,`${file}-propuesta.webp`)).resize(700).png().toBuffer(),left,top});
    tiles.push({input:S(T(350,38,23,label,'#153b2d',C),700,60),left,top:top+704});
  }
  tiles.push({input:S(T(760,51,27,'PROLINCE · PROPUESTAS CORREGIDAS','#153b2d',C),1520,80),left:0,top:0});
  await sharp({create:{width:1520,height:1690,channels:3,background:'#f7f5ef'}}).composite(tiles).jpeg({quality:94}).toFile(path.join(out,'comparativa.jpg'));
  console.log('Generadas las cuatro propuestas y las dos portadas de resumen.');
})().catch(e=>{console.error(e);process.exit(1)});
