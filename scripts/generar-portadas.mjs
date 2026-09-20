/**
 * Genera las portadas del blog en `public/blog/`.
 *
 * Las portadas son tipográficas a propósito: no hay banco de fotos que resista diez artículos
 * sobre la misma oposición sin repetirse, y una foto de archivo con un agente de espaldas dice
 * menos que el titular del artículo. Se componen con la tipografía y el verde de la marca, así
 * que el índice del blog se parece al resto de la web.
 *
 * Se renderizan con Chrome en modo headless —la única forma de usar Manrope variable y el
 * isotipo sin reimplementar el diseño— y se pasan a JPEG con `sips`. Ambos son de macOS, que es
 * donde se edita este sitio; si algún día se genera en CI, hay que sustituir las dos llamadas.
 *
 *   node scripts/generar-portadas.mjs [slug...]
 */
import { execFileSync } from "node:child_process";
import { mkdirSync, writeFileSync, rmSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const raiz = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome";
const FUENTE = `${raiz}/node_modules/@fontsource-variable/manrope/files/manrope-latin-wght-normal.woff2`;
const ISOTIPO = `${raiz}/public/brand/prolince-logo.svg`;
const DESTINO = `${raiz}/public/blog`;
const TEMPORAL = `${raiz}/.portadas-tmp`;

/**
 * El texto de cada portada. Vive aquí y no en el frontmatter del artículo porque no es un dato
 * de la entrada: es el rótulo de una imagen. Lo que sí tiene que cuadrar es con `portada_alt`,
 * que es lo que lee quien no ve la imagen.
 */
const portadas = [
  { slug: "convocatoria-guardia-civil-2026-plazas-calendario", eyebrow: "Acceso a la Guardia Civil", titulo: "Convocatoria 2026", lema: "3.240 plazas", motivo: "anillos" },
  { slug: "preparar-oposicion-guardia-civil-desde-cero", eyebrow: "Acceso a la Guardia Civil", titulo: "Desde cero", lema: "Los primeros 90 días", motivo: "escalera" },
  { slug: "examen-conocimientos-guardia-civil-estructura", eyebrow: "Acceso a la Guardia Civil", titulo: "El examen", lema: "140 minutos, cuatro partes", motivo: "rejilla" },
  { slug: "pruebas-fisicas-guardia-civil-marcas-entrenamiento", eyebrow: "Acceso a la Guardia Civil", titulo: "Pruebas físicas", lema: "Cuatro pruebas, un solo día", motivo: "pista" },
  { slug: "ortografia-gramatica-examen-guardia-civil", eyebrow: "Acceso a la Guardia Civil", titulo: "Ortografía", lema: "Apto o no apto", motivo: "subrayado" },
  { slug: "psicotecnico-guardia-civil-aptitudes-personalidad", eyebrow: "Acceso a la Guardia Civil", titulo: "Psicotécnico", lema: "Aptitudes y personalidad", motivo: "puntos" },
  { slug: "ingles-oposicion-guardia-civil", eyebrow: "Acceso a la Guardia Civil", titulo: "Inglés", lema: "Veinte preguntas", motivo: "rejilla" },
  { slug: "fase-concurso-guardia-civil-meritos", eyebrow: "Acceso a la Guardia Civil", titulo: "Fase de concurso", lema: "45 puntos en juego", motivo: "barras" },
  { slug: "entrevista-reconocimiento-medico-guardia-civil", eyebrow: "Acceso a la Guardia Civil", titulo: "Entrevista y médico", lema: "La última fase", motivo: "anillos" },
  { slug: "colegio-guardias-jovenes-acceso-guardia-civil", eyebrow: "Colegio de Guardias Jóvenes", titulo: "Guardias Jóvenes", lema: "Duque de Ahumada", motivo: "escudo" },
];

/**
 * El pie no lleva dominio a propósito: `NEXT_PUBLIC_SITE_URL` todavía apunta a localhost y
 * quemar una URL sin confirmar en diez imágenes se paga regenerándolas todas.
 */

/** Motivos de fondo. Son SVG en línea para que escalen con el lienzo y no pesen nada. */
const motivos = {
  anillos: `<g fill="none" stroke="var(--oro)" stroke-width="1.5">
      ${[0, 1, 2, 3, 4, 5].map((i) => `<circle cx="1320" cy="460" r="${120 + i * 62}"/>`).join("")}
    </g>`,
  escalera: `<g fill="none" stroke="var(--oro)" stroke-width="1.5">
      ${[0, 1, 2, 3, 4, 5, 6].map((i) => `<path d="M${1060 + i * 46} 760 v${-90 - i * 72} h${46}"/>`).join("")}
    </g>`,
  rejilla: `<g fill="none" stroke="var(--oro)" stroke-width="1.2">
      ${Array.from({ length: 9 }, (_, f) => Array.from({ length: 9 }, (_, c) => `<rect x="${1010 + c * 62}" y="${150 + f * 62}" width="42" height="42" rx="6"/>`).join("")).join("")}
    </g>`,
  pista: `<g fill="none" stroke="var(--oro)" stroke-width="1.5">
      ${[0, 1, 2, 3, 4].map((i) => `<rect x="${1000 - i * 30}" y="${230 - i * 30}" width="${430 + i * 60}" height="${300 + i * 60}" rx="${150 + i * 30}"/>`).join("")}
    </g>`,
  subrayado: `<g stroke="var(--oro)" stroke-width="3" stroke-linecap="round">
      ${[0, 1, 2, 3, 4, 5, 6].map((i) => `<path d="M${1040 + (i % 2) * 40} ${200 + i * 78} h${240 - (i % 3) * 60}"/>`).join("")}
    </g>`,
  puntos: `<g fill="var(--oro)">
      ${Array.from({ length: 8 }, (_, f) => Array.from({ length: 8 }, (_, c) => `<circle cx="${1040 + c * 64}" cy="${190 + f * 64}" r="${(f + c) % 3 === 0 ? 7 : 3}"/>`).join("")).join("")}
    </g>`,
  barras: `<g fill="var(--oro)">
      ${[120, 210, 330, 260, 420, 350, 500].map((h, i) => `<rect x="${1020 + i * 62}" y="${700 - h}" width="34" height="${h}" rx="6"/>`).join("")}
    </g>`,
  escudo: `<g fill="none" stroke="var(--oro)" stroke-width="1.5">
      <path d="M1320 160 l210 78 v250 q0 210 -210 302 q-210 -92 -210 -302 v-250 z"/>
      <path d="M1320 226 l150 56 v196 q0 156 -150 226 q-150 -70 -150 -226 v-196 z"/>
    </g>`,
};

function html({ eyebrow, titulo, lema, motivo }) {
  return `<!doctype html><html lang="es"><head><meta charset="utf-8"><style>
    @font-face { font-family: "Manrope"; src: url("file://${FUENTE}") format("woff2"); font-weight: 200 800; }
    :root { --verde: #03512d; --verde-hondo: #01200f; --oro: #d5b45e; --claro: #e7f0e8; }
    * { margin: 0; box-sizing: border-box; }
    body { width: 1600px; height: 900px; overflow: hidden; font-family: "Manrope"; color: #fff;
           background: radial-gradient(120% 130% at 85% 12%, #0a6d3d 0%, var(--verde) 42%, var(--verde-hondo) 100%); }
    .lienzo { position: relative; width: 100%; height: 100%; padding: 88px 96px; display: flex;
              flex-direction: column; justify-content: space-between; }
    .motivo { position: absolute; inset: 0; opacity: 0.22; }
    .sello { position: absolute; right: -170px; bottom: -230px; width: 760px; opacity: 0.07; }
    .marca { position: relative; display: flex; align-items: center; gap: 14px; }
    .marca img { width: 44px; height: 44px; }
    .marca span { font-weight: 700; font-size: 26px; letter-spacing: -0.02em; }
    .bloque { position: relative; max-width: 1000px; }
    .eyebrow { font-size: 21px; font-weight: 600; letter-spacing: 0.16em; text-transform: uppercase; color: var(--oro); }
    .regla { width: 92px; height: 4px; background: var(--oro); border-radius: 2px; margin: 26px 0 30px; }
    h1 { font-size: 118px; line-height: 1.02; letter-spacing: -0.04em; font-weight: 780; text-wrap: balance; }
    .lema { margin-top: 26px; font-size: 40px; font-weight: 500; color: var(--claro); letter-spacing: -0.015em; }
    .pie { position: relative; font-size: 20px; font-weight: 600; color: rgba(231,240,232,0.62); letter-spacing: 0.02em; }
  </style></head><body>
    <svg class="motivo" viewBox="0 0 1600 900" xmlns="http://www.w3.org/2000/svg">${motivos[motivo]}</svg>
    <img class="sello" src="file://${ISOTIPO}" alt="">
    <div class="lienzo">
      <div class="marca"><img src="file://${ISOTIPO}" alt=""><span>ProLince</span></div>
      <div class="bloque">
        <p class="eyebrow">${eyebrow}</p>
        <div class="regla"></div>
        <h1>${titulo}</h1>
        <p class="lema">${lema}</p>
      </div>
      <p class="pie">Preparación de oposiciones</p>
    </div>
  </body></html>`;
}

const pedidos = process.argv.slice(2);
const lista = pedidos.length ? portadas.filter((p) => pedidos.includes(p.slug)) : portadas;
if (!lista.length) {
  console.error("Ningún slug coincide. Slugs disponibles:\n" + portadas.map((p) => "  " + p.slug).join("\n"));
  process.exit(1);
}

mkdirSync(TEMPORAL, { recursive: true });
mkdirSync(DESTINO, { recursive: true });

for (const portada of lista) {
  const fuenteHtml = `${TEMPORAL}/${portada.slug}.html`;
  const png = `${TEMPORAL}/${portada.slug}.png`;
  const jpg = `${DESTINO}/${portada.slug}.jpg`;

  writeFileSync(fuenteHtml, html(portada));
  execFileSync(CHROME, [
    "--headless",
    "--disable-gpu",
    "--hide-scrollbars",
    "--force-device-scale-factor=1",
    "--window-size=1600,900",
    `--screenshot=${png}`,
    `file://${fuenteHtml}`,
  ], { stdio: "ignore" });
  execFileSync("sips", ["-s", "format", "jpeg", "-s", "formatOptions", "82", png, "--out", jpg], { stdio: "ignore" });
  console.log(`✓ public/blog/${portada.slug}.jpg`);
}

rmSync(TEMPORAL, { recursive: true, force: true });
