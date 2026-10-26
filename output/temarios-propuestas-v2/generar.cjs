const fs = require('node:fs');
const path = require('node:path');
const sharp = require('sharp');
const root = path.resolve(__dirname, '../..');
const out = __dirname;
const generated = '/Users/marcosocanatalavera/.codex/generated_images/01a177e1-c330-7380-88a5-461a72f606e3';
const bases = ['exec-82a912ea-3492-4585-8708-8d2b906adaac.png', 'exec-eee1b68a-a4f6-491f-bb7d-ae1b303228b4.png'];
const svg = body => Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="1254" height="1254" viewBox="0 0 1254 1254">${body}</svg>`);
const text = (x,y,s,value,color='#f3f8f1',extra='') => `<text x="${x}" y="${y}" fill="${color}" font-family="Arial, sans-serif" font-size="${s}" ${extra}>${value}</text>`;
const center = 'text-anchor="middle"';
async function data(file,w) { return 'data:image/png;base64,' + (await sharp(path.join(root,file)).resize(w).png().toBuffer()).toString('base64'); }
function img(url,x,y,w,h,extra='') { return `<image href="${url}" x="${x}" y="${y}" width="${w}" height="${h}" ${extra}/>`; }
(async()=>{
  for(let i=0;i<2;i++) fs.copyFileSync(path.join(generated,bases[i]), path.join(out,`base-${i?'resumen':'pack'}.png`));
  const logo = await data('public/brand/prolince-logo-horizontal-negativo.svg',900);
  const seal = await data('public/brand/prolince-logo.svg',700);
  for(const [course,folder,title] of [['gc','guardia-civil','GUARDIA CIVIL'],['cgj','guardias-jovenes','COLEGIO DE GUARDIAS JÓVENES']]){
    // The supplied cover is placed intact; no AI reconstruction of artwork or marks.
    const cover = await sharp(path.join(root,`public/temarios/${folder}/001.webp`)).resize(535,778,{fit:'fill'}).png().toBuffer();
    let sides = img(logo,127,392,195,60) + img(logo,940,392,195,60);
    sides += `<path d="M128 477H323M940 477H1136" stroke="#8ab69a" stroke-opacity=".5"/>`;
    sides += text(225,536,18,'TEMARIO','#bbd7c5',center) + text(225,583,39,'INGLÉS','#f3f8f1',`${center} font-weight="700"`);
    sides += text(1038,543,26,'ORTOGRAFÍA','#f3f8f1',`${center} font-weight="700"`) + text(1038,581,25,'Y GRAMÁTICA','#f3f8f1',`${center} font-weight="700"`);
    for (const cx of [225,1038]) {
      sides += course==='gc' ? text(cx,644,16,title,'#dceadf',center) : text(cx,636,14,'COLEGIO DE','#dceadf',center)+text(cx,660,14,'GUARDIAS JÓVENES','#dceadf',center);
      sides += img(seal,cx-60,700,120,120,'opacity=".55"');
      sides += text(cx,881,13,'EDICIÓN 2027','#dceadf',`${center} letter-spacing="2"`);
    }
    await sharp(path.join(out,'base-pack.png')).composite([{input:cover,left:371,top:233},{input:svg(sides)}]).webp({quality:95}).toFile(path.join(out,`${course}-pack-propuesta.webp`));
    let front = img(logo,344,211,350,104);
    front += `<path d="M344 352H940" stroke="#a6cbb5" stroke-opacity=".6"/>`;
    front += text(340,478,91,'TEMARIO','#f4f7ef','font-weight="700" letter-spacing="-2"');
    front += text(340,581,91,'RESUMEN','#a9d4b9','font-weight="400" letter-spacing="-2"');
    front += course==='gc' ? text(344,664,25,title,'#f4f7ef','letter-spacing="3"') : text(344,649,24,'COLEGIO DE','#f4f7ef','letter-spacing="2"')+text(344,689,24,'GUARDIAS JÓVENES','#f4f7ef','letter-spacing="2"');
    front += img(seal,525,749,230,230,'opacity=".8"');
    front += `<path d="M344 1020H940" stroke="#a6cbb5" stroke-opacity=".6"/>`;
    front += text(344,1070,20,'EDICIÓN 2027','#e0eee3','letter-spacing="3"');
    front += text(939,1070,16,'LIBRO RESUMEN','#e0eee3','text-anchor="end" letter-spacing="1"');
    await sharp(path.join(out,'base-resumen.png')).composite([{input:svg(front)}]).webp({quality:95}).toFile(path.join(out,`${course}-resumen-propuesta.webp`));
  }
  const tiles=[];
  const labels=[['gc-pack','Guardia Civil · Pack completo'],['gc-resumen','Guardia Civil · Resumen'],['cgj-pack','Colegio de Guardias Jóvenes · Pack completo'],['cgj-resumen','Colegio de Guardias Jóvenes · Resumen']];
  for(let i=0;i<labels.length;i++){
    const [file,label]=labels[i], left=40+(i%2)*740, top=100+Math.floor(i/2)*790;
    tiles.push({input:await sharp(path.join(out,`${file}-propuesta.webp`)).resize(700).png().toBuffer(),left,top});
    const caption=Buffer.from(`<svg width="700" height="60"><text x="350" y="38" text-anchor="middle" font-family="Arial,sans-serif" font-size="23" fill="#153b2d">${label}</text></svg>`);
    tiles.push({input:caption,left,top:top+704});
  }
  const heading=Buffer.from('<svg width="1520" height="80"><text x="760" y="51" text-anchor="middle" font-family="Arial,sans-serif" font-size="27" fill="#153b2d">PROLINCE · PROPUESTAS DE FOTOGRAFÍA</text></svg>');
  tiles.push({input:heading,left:0,top:0});
  await sharp({create:{width:1520,height:1690,channels:3,background:'#f7f5ef'}}).composite(tiles).jpeg({quality:93}).toFile(path.join(out,'comparativa.jpg'));
  console.log('Cuatro propuestas y comparativa guardadas en '+out);
})().catch(e=>{console.error(e);process.exit(1)});
