/**
 * Catálogo de oposiciones.
 *
 * AVISO: `convocatoria` describe un proceso selectivo real y cambia cada año. Todo lo que haya
 * aquí debe cotejarse con la convocatoria vigente en el BOE antes de publicar. Mientras
 * `convocatoria` sea `null`, la portada omite el bloque de plazas y fechas en lugar de
 * enseñar cifras sin respaldo.
 */
export type Estado = "activa" | "proximamente";

export type Fase = {
  nombre: string;
  detalle: string;
};

export type Convocatoria = {
  anio: number;
  plazas: number;
  publicacionBoe: string;
  urlBoe: string;
};

export type Oposicion = {
  slug: string;
  nombre: string;
  cuerpo: string;
  estado: Estado;
  resumen: string;
  fases?: Fase[];
  convocatoria?: Convocatoria | null;
  cursoSlug?: string;
};

export const oposiciones: Oposicion[] = [
  {
    slug: "acceso-guardia-civil",
    nombre: "Acceso a la Guardia Civil",
    cuerpo: "Guardia Civil",
    estado: "activa",
    cursoSlug: "acceso-guardia-civil",
    resumen:
      "La vía de entrada al Cuerpo como Guardia Civil. Es una oposición larga, con una parte teórica exigente y unas pruebas físicas que hay que empezar a trabajar desde el primer mes.",
    convocatoria: null, // PENDIENTE: plazas, fecha y enlace al BOE de la convocatoria vigente
    fases: [
      {
        nombre: "Pruebas de conocimientos",
        detalle:
          "Examen tipo test sobre el temario oficial, junto con las pruebas de ortografía, psicotécnicas y de lengua inglesa.",
      },
      {
        nombre: "Pruebas físicas",
        detalle:
          "Las marcas se exigen desde el primer intento y varían según la categoría. Se preparan en paralelo al temario, no al final.",
      },
      {
        nombre: "Entrevista personal",
        detalle: "Valoración del perfil y contraste con los resultados de las pruebas psicotécnicas.",
      },
      {
        nombre: "Reconocimiento médico",
        detalle: "Revisión del cuadro de exclusiones médicas vigente.",
      },
    ],
  },
  {
    slug: "seprona",
    nombre: "SEPRONA",
    cuerpo: "Guardia Civil",
    estado: "proximamente",
    resumen: "Servicio de Protección de la Naturaleza.",
  },
  {
    slug: "uco",
    nombre: "UCO",
    cuerpo: "Guardia Civil",
    estado: "proximamente",
    resumen: "Unidad Central Operativa.",
  },
  {
    slug: "trafico",
    nombre: "Tráfico",
    cuerpo: "Guardia Civil",
    estado: "proximamente",
    resumen: "Agrupación de Tráfico.",
  },
  {
    slug: "policia-judicial",
    nombre: "Policía Judicial",
    cuerpo: "Guardia Civil",
    estado: "proximamente",
    resumen: "Unidades orgánicas de Policía Judicial.",
  },
  {
    slug: "fiscal-y-fronteras",
    nombre: "Fiscal y Fronteras",
    cuerpo: "Guardia Civil",
    estado: "proximamente",
    resumen: "Resguardo fiscal del Estado y control de fronteras.",
  },
  {
    slug: "maritimo",
    nombre: "Servicio Marítimo",
    cuerpo: "Guardia Civil",
    estado: "proximamente",
    resumen: "Vigilancia de costas y aguas jurisdiccionales.",
  },
];

export const oposicionesActivas = oposiciones.filter((o) => o.estado === "activa");
export const oposicionesProximas = oposiciones.filter((o) => o.estado === "proximamente");
export const oposicionPrincipal = oposicionesActivas[0];
