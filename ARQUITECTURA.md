# Landing de ProLince — arquitectura y guía de arranque

Documento de partida para construir la web pública de la academia **ProLince**. Recoge las
decisiones tomadas, el stack, la estructura de carpetas, el sistema visual heredado del
producto, el blog con su administración y el orden concreto en el que levantar las cosas.

El producto autenticado vive en un repositorio aparte (`~/Prolince`, `prolince-academias`) y
declara explícitamente que no incluye landing, blog ni SEO. Este repositorio cubre ese hueco.

---

## 1. Alcance

**Qué es.** Una web pública escrita para el opositor, con tres piezas: un **sitio de varias
páginas** que convierte visitas en registros, un **blog** que trae tráfico orgánico, y un
**panel de administración** propio para publicar en ese blog. Arranca con **Acceso a la Guardia
Civil** como única oposición viva.

**Qué no es.** No es el producto. Aquí no hay alumnos, ni cursos, ni progreso, ni pagos. Todo
eso ocurre al otro lado del CTA, en la plataforma.

### Decisiones tomadas

| Decisión | Elección | Consecuencia |
| --- | --- | --- |
| Papel de ProLince | **Es la academia**, un tenant de la plataforma | Los CTA apuntan a `/academiaprolince/...`. No hay selector de academia. |
| Conversión | **Registro directo** | Sin formularios de lead ni captación por correo. El CTA lleva a crear cuenta. |
| Estructura | **Varias páginas, no one-page** | Una ruta por tema, enlazadas desde la portada. Mejor para SEO y para leer sin scroll infinito. |
| Audiencia | **El alumno, no el sector** | Rige el tono, el contenido y el orden de las secciones (§2). |
| SEO | **Objetivo primario, no acabado** | Condiciona el renderizado, el enlazado interno y el modelo de datos (§10). |
| Presencia visual | **Mockups de producto** | Marcos de móvil y navegador con la interfaz real representada (§7.3). |
| Contacto | **WhatsApp flotante** | Botón fijo abajo a la derecha, presente en todas las páginas. |
| Blog | **Con admin propio en este repo** | La web suma Supabase, sesión y editor (§8). |
| Tipos de contenido | **Flexibles** | Un solo modelo de entrada con tipo y campos libres; añadir un tipo no toca la base de datos. |

> **El alcance creció sobre la marcha.** El plan de partida era un one-page estático sin
> backend. Hoy es un sitio de varias páginas y, con el blog, tendrá base de datos, sesión y
> superficie de escritura. Es la decisión correcta si el SEO es prioridad, pero conviene saber
> que **el editor del blog es la pieza más cara del proyecto**, por encima de la web entera.


## 2. El alumno en el centro

La web está escrita para una persona concreta: alguien que se plantea opositar a la Guardia
Civil y no sabe si podrá. No para el sector, no para la competencia, no para quedar bien.

**Cada sección responde a una pregunta que el alumno se hace**, no a un mensaje que la academia
quiere lanzar. Si una sección no contesta ninguna pregunta real, sobra.

| Se escribe así | No así |
| --- | --- |
| «Puedes estudiar de noche: el temario y los tests están disponibles a cualquier hora» | «Plataforma disponible 24/7» |
| «Cuántas horas necesitas a la semana y cómo se reparten» | «Metodología de éxito contrastada» |
| «Qué marcas tienes que hacer en las pruebas físicas» | «Preparación física integral» |
| «Qué pasa si no apruebas a la primera» | (silencio) |

Reglas de escritura:

- **Tutear.** El lector es una persona, no un target.
- **Nombrar los miedos reales**: compaginarlo con el trabajo, cuánto tarda de verdad, las
  pruebas físicas, el psicotécnico, suspender y volver a empezar. Una academia que esquiva
  estos temas parece que esconde algo.
- **Sin jerga corporativa.** Nada de «excelencia», «sinergias», «líderes del sector»,
  «metodología disruptiva».
- **Cifras verificables o ninguna.** Si no se puede sostener un dato, no se publica.
- **El protagonista del testimonio es el alumno**, con su nombre, su promoción y su destino, no
  la academia que lo cuenta.
- **Sin urgencia inventada.** Nada de «quedan 3 plazas» si no es literalmente cierto. Una
  academia de oposiciones se juega la reputación en eso.

Esto no es decoración: el sistema de diseño del producto ya incluye el principio de «diseño
honesto» y aquí manda igual.

---

## 3. Stack

Se replica el del producto para que el salto entre landing y plataforma sea invisible y para
que lo aprendido en un repo sirva en el otro.

| Pieza | Elección | Motivo |
| --- | --- | --- |
| Framework | Next.js (App Router) | Mismo que el producto. SSG e ISR reales para SEO. |
| Lenguaje | TypeScript estricto | Mismo que el producto. |
| Estilos | Tailwind CSS v4 vía `@tailwindcss/postcss` | Mismo que el producto; los tokens se comparten. |
| Tipografía | `@fontsource-variable/manrope` | Misma familia, autoalojada: sin petición externa en el camino crítico. |
| Iconos | `lucide-react` | Mismo set que el producto. |
| Datos y sesión | `@supabase/supabase-js` + `@supabase/ssr` | **Mismo proyecto Supabase que el producto.** Reutiliza identidad, roles y almacenamiento. |
| Validación | `zod` | Formularios del admin. Mismo que el producto. |
| Markdown | `unified` + `remark-parse` + `remark-gfm` + `remark-rehype` + `rehype-sanitize` + `rehype-slug` | Render en servidor, indexable, sin HTML crudo. |
| Despliegue | Vercel | Ya en uso en el producto. |

**Lo que sigue fuera:** Resend y cualquier envío de correo (no hay formularios públicos), CMS
externo, gestor de estado, librería de animación, WYSIWYG. Añadir cualquiera exige una razón
escrita.

> **Next 16.3 / React 19.3.** Esta versión trae cambios que rompen respecto a lo que se da por
> sabido, verificados en `node_modules/next/dist/docs/`:
>
> - **`middleware.ts` pasa a llamarse `proxy.ts`**, la función exportada a `proxy`, y su runtime
>   es Node.js y no configurable.
> - **`params` y `searchParams` son promesas** en `page`, `layout` y `route`; hay que
>   `await`. `npx next typegen` genera los tipos `PageProps<'/blog/[slug]'>`.
> - `cookies()`, `headers()` y `draftMode()` ya solo son asíncronas.
> - `revalidateTag` exige un segundo argumento de perfil de caché; `revalidatePath` no cambia.
> - Next ya no fuerza `scroll-behavior` en las transiciones salvo que `<html>` lleve
>   `data-scroll-behavior="smooth"`.
> - Turbopack es el empaquetador por defecto.

---

## 4. Frontera con la plataforma

Dos fronteras distintas que conviene no confundir.

### 4.1. Enlaces salientes

> **La landing nunca conoce rutas internas de la plataforma salvo a través de `src/lib/links.ts`.**

```ts
const APP = process.env.NEXT_PUBLIC_APP_URL ?? "https://prolince-lovat.vercel.app";
const ACADEMY = "academiaprolince";

export const links = {
  registro: `${APP}/${ACADEMY}/registro`,  // «Empezar ahora»
  login:    `${APP}/${ACADEMY}/`,          // «Entrar»
  catalogo: `${APP}/${ACADEMY}/registro`,
} as const;
```

Comprobado contra la plataforma en marcha: `/academiaprolince/` **es** la pantalla de acceso, y
el alta cuelga de `/academiaprolince/registro`. El catálogo de cursos vive detrás del muro de
acceso, así que «ver cursos» lleva al alta y no a una página que devolvería un login.

El mismo fichero exporta `rutas`, con las rutas internas de esta web, para que la navegación,
el pie y el sitemap no se separen entre sí.

### 4.2. Base de datos compartida

Llega con el blog (§8). La web usará **el mismo proyecto Supabase** que el producto y se apoyará
en piezas que ya existen allí en lugar de duplicarlas:

| Pieza existente | Uso aquí |
| --- | --- |
| `public.is_superadmin()` sobre `public.platform_admins` | Única puerta de escritura del blog. El blog es contenido **de marca**, no de academia, así que el rol correcto es el de plataforma y no `academy_admin`. |
| Bucket `public-assets` (lectura pública, escritura para superadmin) | Portadas e imágenes de los artículos. Ya tiene las políticas puestas. |
| Supabase Auth | Entrada al admin. Sin sistema de identidad propio. |

**Regla innegociable:** la web usa exclusivamente la **clave anónima** más la sesión del
usuario. La *service role key* nunca entra en este repositorio, ni en variables de entorno, ni
en una ruta de API: se salta RLS por diseño y este sitio es público.


## 5. Estructura de carpetas

Lo que ya existe va marcado; el resto llega con el blog (§8).

```
landingprolince/
├── ARQUITECTURA.md
├── next.config.ts · tsconfig.json · postcss.config.mjs · eslint.config.mjs
├── public/brand/
│   ├── prolince-isotipo.svg       ← vectorial, verde de marca, sin fondo
│   └── prolince-isotipo-mono.svg  ← mismo trazado con currentColor
├── scripts/build-logo.py          ← regenera los SVG desde el PNG original
└── src/
    ├── app/
    │   ├── layout.tsx             ← fuente, metadatos base, JSON-LD, WhatsApp
    │   ├── globals.css            ← tokens y capa base
    │   ├── page.tsx               ← portada: compone los bloques de home/
    │   ├── la-oposicion/          ← requisitos, fases y convocatoria
    │   ├── metodo/                ← los cuatro pasos y la semana tipo
    │   ├── plataforma/            ← mockups y todo lo que incluye
    │   ├── quienes-somos/         ← historia, principios y compromisos
    │   ├── precios/ · preguntas/
    │   ├── (legal)/               ← aviso legal, privacidad, cookies
    │   ├── sitemap.ts · robots.ts · opengraph-image.tsx · icon.svg
    │   ├── blog/                  ← PENDIENTE (§8)
    │   └── admin/                 ← PENDIENTE (§8)
    ├── components/
    │   ├── layout/                ← Header, Footer, Container, Section, PageHero,
    │   │                            Reveal, BotonWhatsapp
    │   ├── ui/                    ← Button, Logo, Icono, EnlaceSeccion
    │   ├── mockups/               ← marcos de dispositivo y pantallas simuladas (§7.3)
    │   ├── home/                  ← bloques exclusivos de la portada
    │   └── sections/              ← bloques reutilizados entre páginas
    ├── content/                   ← el contenido, tipado (§9)
    │   ├── site.ts · oposiciones.ts · propuesta.ts
    │   ├── planes.ts · faq.ts · testimonios.ts · quienes-somos.ts
    │   └── blog-tipos.ts          ← PENDIENTE (§8.2)
    └── lib/
        ├── links.ts               ← URLs de la plataforma y rutas internas
        └── seo.tsx                ← metadata y JSON-LD
```

Cinco reglas que mantienen esto ordenado:

1. `content/` no importa de `components/`. El contenido es dato, no JSX.
2. Cada bloque lee su propio módulo de `content/`; las páginas quedan como índice legible.
3. `ui/` no sabe nada del dominio. Un `Button` no conoce ProLince.
4. `home/` es solo de la portada; lo que se repite en dos páginas vive en `sections/`.
5. `admin/` no comparte componentes con la web pública: su ritmo de cambio no tiene nada que ver.


## 6. Sistema visual

### 6.1. El logo

El isotipo ya está vectorizado en `public/brand/`, trazado desde el PNG original con
`scripts/build-logo.py` (marching squares con interpolación subpíxel → RDP → cúbicas con
detección de esquinas). Fidelidad medida: **IoU 0,976** contra el original, con la diferencia
concentrada en un fleco de un píxel en los bordes. 13 subtrazados, `fill-rule="evenodd"`, sin
rectángulo de fondo, 13,4 KB con gzip.

| Fichero | Relleno | Uso |
| --- | --- | --- |
| `prolince-isotipo.svg` | `#024334` fijo | Cabecera, hero, favicon, OG |
| `prolince-isotipo-mono.svg` | `currentColor` | Pie oscuro, sobre fotografía, cualquier fondo donde el verde no contraste |

Reglas heredadas del sistema de diseño del producto:

- No redibujar, deformar, simplificar ni añadir efectos.
- Mantener proporción con `object-fit: contain`.
- No aplicar filtros CSS para recolorear: para eso existe la variante `currentColor`.
- Altura en cabecera: 28–34 px. En el hero puede crecer sin límite.
- Si el nombre «ProLince» aparece como texto al lado, el SVG es decorativo (`aria-hidden`).

Para regenerarlo desde un PNG nuevo:

```bash
python3 scripts/build-logo.py ruta/al/logo.png public/brand
```

### 6.2. Color

El verde del logo es `#024334` = `oklch(0.341 0.065 171.5)`. Está a un paso del `--primary` del
producto (`oklch(0.371 0.072 163.8)`): mismo tono, algo más oscuro y algo más hacia el
turquesa. En una web de marketing el logo aparece a gran tamaño junto a los CTA, así que **la
rampa se ancla al verde del logo** y no al del producto.

```css
:root {
  --background: oklch(1 0 0);
  --foreground: oklch(0.212 0.017 158);

  --surface: oklch(1 0 0);
  --surface-subtle: oklch(0.985 0.003 163);
  --surface-tinted: oklch(0.975 0.009 163);

  /* Rampa primaria anclada a #024334 */
  --primary: oklch(0.341 0.065 171.5);
  --primary-hover: oklch(0.296 0.061 171.5);
  --primary-active: oklch(0.262 0.055 171.5);
  --primary-foreground: oklch(0.99 0.005 171.5);
  --primary-soft: oklch(0.951 0.017 171.5);
  --primary-soft-foreground: oklch(0.31 0.063 171.5);
  --primary-deep: oklch(0.228 0.045 171.5);

  --muted: oklch(0.972 0.006 163);
  --muted-foreground: oklch(0.47 0.017 158);
  --border: oklch(0.912 0.008 163);
  --border-strong: oklch(0.84 0.014 163);

  --success: oklch(0.48 0.11 155);
  --warning: oklch(0.58 0.13 78);
  --danger: oklch(0.52 0.18 27);
  --info: oklch(0.52 0.12 240);

  --radius-sm: 12px;
  --radius-md: 14px;
  --radius-lg: 18px;
  --radius-xl: 22px;
  --radius-2xl: 28px;

  --shadow-sm: 0 6px 18px color-mix(in oklch, var(--foreground) 7%, transparent);
  --ease-product: cubic-bezier(0.22, 1, 0.36, 1);
}
```

Contrastes verificados: blanco sobre `--primary` **11,34:1**, sobre `--primary-hover` 13,41:1,
sobre `--primary-deep` 16,72:1, y `--primary-soft-foreground` sobre `--primary-soft` 11,12:1.
Todos por encima de AAA. Al cambiar cualquier valor, hay que volver a medir.

Uso: `--primary` para CTA y enlaces; `--primary-deep` para el pie y bandas oscuras;
`--primary-soft` para fondos de sección y badges. Los colores de estado son semánticos, nunca
decoración.

**Modo oscuro: fuera del MVP.** Si se añade después, el producto ya tiene resuelto el bloque
`html[data-theme="dark"]` y se copia.

### 6.3. Tipografía

Manrope, sin segunda familia. El producto define una escala de interfaz que llega hasta 40 px;
una portada necesita más aire arriba y un artículo necesita ritmo de lectura. La escala de la
web **extiende** la del producto y no toca nada por debajo de 18 px.

| Token | Desktop | Móvil | Peso | Uso |
| --- | ---: | ---: | ---: | --- |
| Display XL | 64 px | 40 px | 780 | Titular del hero, una sola vez por página |
| Display L | 48 px | 32 px | 760 | Cabecera de sección mayor, título de artículo |
| H2 | 32 px | 26 px | 700 | Título de sección |
| H3 | 22 px | 20 px | 680 | Tarjeta, pregunta de FAQ, epígrafe de artículo |
| Body large | 18 px | 17 px | 400 | Entradilla y **cuerpo del artículo** |
| Body | 16 px | 16 px | 400 | Texto general de interfaz |
| Body small | 14 px | 14 px | 450 | Metadatos, notas legales |
| Eyebrow | 12 px | 12 px | 600 | Etiqueta superior, versales, tracking 0.08em |

Interlineado 1,1–1,2 en los displays, 1,4–1,5 en interfaz, **1,7 en el cuerpo de los
artículos**. Ancho de lectura máximo 68–76 caracteres: en el blog es un requisito, no una
sugerencia. Nada por debajo de 12 px. Cifras con `font-variant-numeric: tabular-nums`.

### 6.4. Movimiento

Discreto y con un único easing, `--ease-product`. Aparición al hacer scroll con
`IntersectionObserver` (12 px de desplazamiento y opacidad, 240 ms), hover a 120 ms. Sin
parallax, sin autoplay, sin contadores animados. `prefers-reduced-motion: reduce` desactiva
toda animación, no la suaviza.

---

## 7. Mapa del sitio

### 7.1. Las páginas

| Ruta | Qué responde | Contenido |
| --- | --- | --- |
| `/` | «¿Esto es para mí?» | Hero con mockup, y un resumen de cada página con enlace. Es el índice comercial del sitio. |
| `/la-oposicion` | «¿Qué se pide exactamente?» | Requisitos, las cuatro fases del proceso, convocatoria y hoja de ruta de especialidades. |
| `/metodo` | «¿Qué hago el lunes por la mañana?» | Los cuatro pasos, una semana tipo hora a hora y el bloque de compaginar con el trabajo. |
| `/plataforma` | «¿Qué me llevo por mi dinero?» | Mockups de móvil y escritorio, todo lo que incluye y el bloque de simulacros. |
| `/quienes-somos` | «¿Y estos quiénes son?» | Por qué existe la academia, cuatro principios y una lista explícita de lo que se hace y lo que no. |
| `/precios` | «¿Cuánto cuesta?» | Los tres planes y las preguntas frecuentes. |
| `/preguntas` | Las dudas que quedan | Acordeón completo, que alimenta el JSON-LD de `FAQPage`. |
| `/aviso-legal`, `/privacidad`, `/cookies` | Obligación legal | Con `noindex`. Avisan en pantalla mientras falten los datos fiscales. |

Cabecera fija con las cinco secciones y los dos CTA, pie con todo el mapa, y **botón flotante
de WhatsApp** abajo a la derecha en todas las páginas.

### 7.2. Cómo se compone la portada

Hero · La oposición · La plataforma · Método · Simulacros · Quiénes somos · Precios ·
Resultados · Preguntas · CTA final. Cada bloque cierra con un enlace a su página, de modo que
la portada nunca es un callejón sin salida.

`Resultados` **no se renderiza** mientras `content/testimonios.ts` esté vacío. Un testimonio es
una afirmación sobre una persona: o es real y está autorizado, o no se publica.

### 7.3. Los mockups

`components/mockups/` tiene dos marcos —`Telefono` y `Navegador`— y tres pantallas construidas
con HTML: el test del alumno, el área de curso y el resultado de un simulacro con su ranking.

- **No son capturas.** Escalan sin pixelarse, pesan lo que pesa el HTML y se actualizan solas
  si cambian los tokens.
- **Aceptan `imagen`**, así que el día que haya capturas reales del producto se sustituyen sin
  tocar el resto.
- **Van marcadas como decorativas** salvo que lleven imagen real: el texto que las acompaña es
  el que carga con el significado.
- **Restablecen el color de texto** en el marco. Se usan también dentro de bandas oscuras y, sin
  eso, heredan `text-white` sobre sus propios fondos claros y el contenido desaparece.


## 8. El blog

La pieza que trae el tráfico y, con el editor, el mayor bloque de trabajo del proyecto.

### 8.1. Modelo de datos

Una sola tabla. Los tipos de entrada son **datos, no esquema**: añadir «convocatoria» o
«prueba física» no es una migración.

```sql
create table public.blog_posts (
  id            uuid primary key default gen_random_uuid(),
  slug          text not null unique,
  tipo          text not null default 'articulo',
  titulo        text not null,
  entradilla    text,
  cuerpo        text not null default '',        -- markdown
  portada_url   text,
  portada_alt   text,
  estado        text not null default 'borrador',
  publicado_en  timestamptz,
  oposicion     text,                            -- slug de content/oposiciones.ts
  etiquetas     text[] not null default '{}',
  seo           jsonb  not null default '{}',    -- title, description, canonical, noindex
  datos         jsonb  not null default '{}',    -- campos propios del tipo
  autor_id      uuid references auth.users (id),
  creado_en     timestamptz not null default now(),
  actualizado_en timestamptz not null default now(),
  constraint blog_posts_estado_check
    check (estado in ('borrador', 'programado', 'publicado', 'retirado'))
);

create index blog_posts_publicados_idx
  on public.blog_posts (publicado_en desc) where estado = 'publicado';
create index blog_posts_tipo_idx      on public.blog_posts (tipo);
create index blog_posts_oposicion_idx on public.blog_posts (oposicion);
create index blog_posts_etiquetas_idx on public.blog_posts using gin (etiquetas);
```

`datos` es lo que hace flexible el modelo: una convocatoria guarda ahí `plazas`, `fecha_boe` y
`organismo`; una guía de pruebas físicas guarda `marcas` y `categoria`; un artículo normal no
guarda nada. El vocabulario de `estado` es el mismo que usa el módulo de Novedades del producto
(borrador, programado, publicado, retirado), por coherencia entre ambos lados.

**RLS**, con la puerta que ya existe en la plataforma:

```sql
alter table public.blog_posts enable row level security;

create policy "cualquiera lee lo publicado"
  on public.blog_posts for select to anon, authenticated
  using (estado = 'publicado' and publicado_en <= now());

create policy "los administradores de plataforma gestionan el blog"
  on public.blog_posts for all to authenticated
  using (public.is_superadmin())
  with check (public.is_superadmin());
```

Un borrador es invisible para el público **en la base de datos**, no solo en la interfaz. Esa
es la diferencia entre ocultar y proteger.

### 8.2. Tipos de entrada

El registro vive en TypeScript y decide tres cosas: cómo se llama el tipo, qué campos extra
enseña el editor y qué marcado estructurado emite.

```ts
// src/content/blog-tipos.ts
export type CampoExtra = {
  clave: string;
  etiqueta: string;
  tipo: "texto" | "numero" | "fecha" | "url" | "lista";
  obligatorio?: boolean;
};

export type TipoEntrada = {
  clave: string;
  etiqueta: string;
  schema: "Article" | "NewsArticle" | "HowTo";
  campos: CampoExtra[];
};

export const tiposEntrada: TipoEntrada[] = [
  { clave: "articulo",     etiqueta: "Artículo",     schema: "Article",     campos: [] },
  { clave: "convocatoria", etiqueta: "Convocatoria", schema: "NewsArticle", campos: [
      { clave: "plazas",    etiqueta: "Plazas",           tipo: "numero" },
      { clave: "organismo", etiqueta: "Organismo",        tipo: "texto"  },
      { clave: "fecha_boe", etiqueta: "Publicación BOE",  tipo: "fecha"  },
      { clave: "url_boe",   etiqueta: "Enlace al BOE",    tipo: "url"    },
    ] },
  { clave: "guia",         etiqueta: "Guía de estudio",  schema: "HowTo",   campos: [
      { clave: "duracion",  etiqueta: "Tiempo estimado",  tipo: "texto"  },
    ] },
  // Añadir un tipo es añadir una entrada aquí. Sin migración.
];
```

El editor recorre `campos` y pinta el formulario; `lib/seo.ts` mira `schema` y emite el JSON-LD
correcto. Los valores acaban en la columna `datos`.

### 8.3. Renderizado y frescura

| Ruta | Estrategia | Motivo |
| --- | --- | --- |
| `/` | Estática | No cambia salvo despliegue, excepto el bloque «Desde el blog», que se revalida con el resto. |
| `/blog` y `/blog/[slug]` | `generateStaticParams` + ISR | Se sirven como HTML estático: es lo que necesita el rastreador. |
| `/admin/**` | Dinámica, sin caché | Datos en vivo, y fuera del presupuesto de rendimiento público. |

Al publicar, la *server action* llama a `revalidatePath("/blog")`, `revalidatePath("/blog/" + slug)`
y `revalidatePath("/")`. La entrada aparece en segundos, sin esperar a una ventana de ISR y sin
desplegar. Las entradas **programadas** necesitan además una revalidación periódica, porque
nadie pulsa un botón a las 8:00: un cron de Vercel diario que revalide el índice basta, y evita
montar una cola de trabajos.

### 8.4. El editor

La tentación es un WYSIWYG. La recomendación es **markdown con vista previa en vivo**: cubre el
95 % de lo que necesita un artículo, no arrastra un árbol de dependencias y no se rompe al
pegar desde Word. Si algún día hace falta texto enriquecido de verdad, Tiptap es la salida.

El formulario, por orden de importancia:

1. Título, slug (sugerido desde el título, editable, inmutable una vez publicado).
2. Tipo, que despliega los campos de §8.2.
3. Entradilla: es la que acaba en la meta description y en la tarjeta del índice.
4. Cuerpo en markdown, con vista previa y subida de imágenes por arrastre.
5. Portada y **su texto alternativo, obligatorio**. Sin `alt`, no se publica.
6. Oposición y etiquetas.
7. Bloque de SEO plegado: título y descripción propios si se quieren distintos, canónica,
   `noindex`.
8. Estado y fecha de publicación.

Las imágenes van al bucket `public-assets`, que ya acepta escritura de superadmin. En el cliente
se valida tipo y tamaño (máximo 2 MB, JPEG/PNG/WebP/AVIF) y se redimensiona antes de subir; el
límite real lo pone la política del bucket.

**Markdown sin HTML crudo.** `rehype-sanitize` con la configuración por defecto y sin
`allowDangerousHtml`. El autor es de confianza, pero una cuenta comprometida no debe poder
inyectar un script en la web pública.

### 8.5. Panel

`/admin` con lo justo: listado con filtro por estado y tipo, buscador por título, y el editor.
Sin papelera, sin versiones, sin flujo de aprobación, sin roles intermedios. Todo eso se añade
el día que haya dos personas escribiendo y no antes.

Entrada por `/admin/entrar` con correo y contraseña de Supabase Auth. `proxy.ts` refresca
la sesión y redirige a quien no la tenga; **la comprobación real de permisos es RLS**, y el
proxy solo evita enseñar un panel vacío. `layout.tsx` del admin emite `noindex, nofollow` y
`robots.ts` bloquea `/admin`.

---

## 9. El contenido estático también es dato

Lo que no vive en la base de datos vive en `src/content/` como objetos tipados. Ningún literal
de negocio dentro de un componente.

```ts
// src/content/oposiciones.ts
export type Estado = "activa" | "proximamente";

export type Oposicion = {
  slug: string;
  nombre: string;
  cuerpo: string;
  estado: Estado;
  resumen: string;
  plazas?: number;
  fases?: { nombre: string; detalle: string }[];
  cursoSlug?: string;       // enlaza con el catálogo de la plataforma
};

export const oposiciones: Oposicion[] = [
  {
    slug: "acceso-guardia-civil",
    nombre: "Acceso a la Guardia Civil",
    cuerpo: "Guardia Civil",
    estado: "activa",
    resumen: "...",
    cursoSlug: "acceso-guardia-civil",
  },
  { slug: "seprona", nombre: "SEPRONA", cuerpo: "Guardia Civil", estado: "proximamente", resumen: "..." },
  // UCO, Tráfico, Policía Judicial, Fiscal y Fronteras, Marítimo
];
```

Cuesta lo mismo que escribirlo en el JSX y compra tres cosas: la sección «Próximamente» se
genera filtrando por `estado`, el blog puede agrupar entradas por oposición usando el mismo
slug, y el día que cada oposición necesite su propia página basta con añadir una ruta que lea
este array.

---

## 10. SEO

Es objetivo primario, así que condiciona la arquitectura en lugar de añadirse al final.

### 10.1. Base técnica

- **HTML servido, no montado en el cliente.** Todo el contenido público es Server Component. El
  cuerpo del artículo se convierte a HTML en el servidor.
- **Metadata API** en cada ruta, con `metadataBase`, canónica, Open Graph y Twitter Card. En el
  artículo, los valores salen de `seo` con la entradilla y el título como respaldo.
- **JSON-LD**: `EducationalOrganization` en el layout, `Course` para Guardia Civil, `FAQPage`
  desde `content/faq.ts`, `BreadcrumbList` en el blog y, por entrada, el `schema` que dicte su
  tipo (§8.2).
- **`sitemap.ts` dinámico**: portada, legales, índice del blog y cada entrada publicada, con
  `lastModified` tomado de `actualizado_en`. Es la señal que hace que Google vuelva a pasar por
  un artículo actualizado.
- **`robots.ts`** permitiendo todo menos `/admin`.
- **RSS** en `/blog/rss.xml`. Barato, y en el mundo de las oposiciones todavía se lee.
- **Un solo `<h1>` por página**, `lang="es-ES"`, jerarquía de encabezados sin saltos.
- **Slugs** en minúsculas, sin acentos ni palabras vacías, inmutables tras publicar. Si alguna
  vez hay que cambiar uno, se añade una redirección 301 en `next.config.ts`.

### 10.2. Estrategia de contenido

La estructura que hace que el blog rinda:

- **Un pilar por oposición** (la sección `Oposicion` de la portada) y artículos satélite que
  enlazan hacia él. El enlazado interno es lo que concentra autoridad.
- **Cada artículo enlaza a la oposición y la oposición al registro.** Ese es el camino de
  tráfico a alumno y hay que poder recorrerlo con el dedo.
- **Convocatorias y noticias** captan picos de búsqueda con poca competencia; **guías y pruebas
  físicas** dan tráfico estable. Conviene mezclar: lo primero trae visitas, lo segundo las
  sostiene.
- **Actualizar antes que publicar de nuevo.** Una convocatoria revisada con su `actualizado_en`
  al día rinde más que un artículo nuevo sobre lo mismo, y además evita canibalizarse.

Objetivo del MVP: marca («ProLince», «academia ProLince»), oposición más provincia, y las
consultas de convocatoria. Competir en genérico por «oposiciones guardia civil» es un objetivo
a doce meses, no de lanzamiento.

---

## 11. Rendimiento y accesibilidad

Presupuesto para las **rutas públicas**, medido con Lighthouse en móvil sobre producción. El
admin queda fuera: es una herramienta interna.

| Métrica | Objetivo |
| --- | --- |
| LCP | < 2,0 s |
| CLS | < 0,05 |
| INP | < 200 ms |
| JS de la ruta | < 90 KB con gzip |
| Lighthouse (los cuatro) | ≥ 95 |

Cómo se consigue:

- `"use client"` solo en el menú móvil, el acordeón de FAQ, el observador de scroll y **todo el
  admin**, que al estar en su propio segmento de rutas no contamina el bundle público.
- Imágenes con `next/image`, `width`/`height` siempre, AVIF y WebP, `priority` solo en la del
  hero. `remotePatterns` apuntando al dominio de Supabase Storage.
- Manrope autoalojada con `font-display: swap` y precarga del subconjunto latino.
- Sin librería de animación: `IntersectionObserver` y CSS bastan.

Accesibilidad, WCAG 2.1 AA como mínimo:

- Contraste AA en todo texto; la rampa de §6.2 ya cumple AAA.
- Teclado completo con foco visible (`--primary`, 2 px de grosor y 2 px de separación).
- Enlace «Saltar al contenido» como primer elemento enfocable.
- Acordeón de FAQ con `aria-expanded` y `aria-controls`.
- `prefers-reduced-motion` respetado de verdad.
- Ningún dato transmitido solo por color.
- En el blog: `alt` obligatorio por formulario, y los encabezados del markdown con anclas
  (`rehype-slug`) para poder enlazar a un epígrafe.

---

## 12. Seguridad

Corta, porque ahora hay superficie de escritura donde antes no había ninguna.

1. **RLS es la frontera.** El proxy y la interfaz son comodidad; si fallan, la base de
   datos sigue negando. Toda política se prueba con un usuario sin permisos.
2. **La *service role key* no entra en este repositorio.** Ni en `.env`, ni en Vercel, ni en una
   ruta de API. Solo clave anónima y sesión de usuario.
3. **Markdown sin HTML crudo**, saneado en el servidor.
4. **`/admin` con `noindex` y bloqueado en `robots.ts`.** No es seguridad, es higiene: evita que
   la pantalla de acceso acabe indexada.
5. **Subidas validadas** por tipo MIME y tamaño en cliente, y limitadas por la política del
   bucket en servidor.
6. **Sin formularios públicos**, así que no hay que resolver antispam ni límites de petición. Si
   algún día entra un formulario, esta línea deja de ser cierta.

---

## 13. Despliegue

Vercel, misma organización que el producto, repositorio distinto. Producción en `prolince.es`;
la plataforma en `app.prolince.es`. Dominios separados desde el principio: mucho más barato que
separarlos con enlaces ya indexados.

| Variable | Producción | Preview |
| --- | --- | --- |
| `NEXT_PUBLIC_SITE_URL` | `https://prolince.es` | URL de preview propia |
| `NEXT_PUBLIC_APP_URL` | `https://app.prolince.es` | Preview de la plataforma |
| `NEXT_PUBLIC_SUPABASE_URL` | Proyecto compartido | Mismo |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Clave anónima | Misma |

`NEXT_PUBLIC_SITE_URL` alimenta `metadataBase`, el sitemap y las canónicas: sin él, las
canónicas de preview apuntarían a producción y se indexaría el sitio equivocado.

Cron de Vercel diario para revalidar el índice del blog y sacar a la luz lo programado.

---

## 14. Estado y siguientes pasos

### Hecho

**La web pública está construida y verificada.** Diez rutas estáticas, el sistema visual
completo, los mockups, el botón de WhatsApp, metadatos, JSON-LD, sitemap, robots e imagen
Open Graph generada.

Verificaciones pasadas: `tsc --noEmit` y `eslint --max-warnings=0` limpios, y **cero desborde
horizontal en las diez páginas a 390 px y 1440 px**, medido con el protocolo DevTools de Chrome
(a 320 px quedan 2 px residuales, por debajo del umbral de barra de desplazamiento).

Tres fallos que solo aparecieron al mirar el render y conviene no repetir:

1. **Clases de `display` en conflicto.** `hidden sm:inline` sobre un componente cuya clase base
   ya trae `inline-flex` no oculta nada: en Tailwind gana el orden del CSS generado, no el del
   atributo. Se resuelve envolviendo, no pasando la clase.
2. **`!important` cambió de sitio en Tailwind v4.** Es sufijo (`bg-transparent!`), no prefijo.
3. **La animación de entrada tiene que fallar abriendo.** Ocultar con `IntersectionObserver`
   deja el contenido a opacidad cero para quien no se desplaza: una captura de página completa,
   una impresión o un rastreador que no haga scroll. De ahí el respaldo por tiempo y el
   `beforeprint` de `components/layout/reveal.tsx`.

### Siguiente: el blog

```bash
npm i unified remark-parse remark-gfm remark-rehype rehype-sanitize rehype-slug rehype-stringify
```

1. **Migración** de `blog_posts` con sus índices y políticas (§8.1), y prueba de que un anónimo
   no ve borradores.
2. **Lectura**: `lib/supabase/server.ts`, `lib/supabase/posts.ts` y `lib/markdown.ts`.
3. **Rutas** `/blog`, `/blog/[slug]` y `/blog/tipo/[tipo]`, con una entrada sembrada a mano.
   Recuerda que en Next 16 `params` es una promesa.
4. **SEO del blog**: JSON-LD por tipo, entradas en el sitemap y RSS.

### Después: el panel

5. **Sesión**: `proxy.ts` (no `middleware.ts`), `/admin/entrar`, guardia del segmento.
6. **Listado** con filtros por estado y tipo.
7. **Editor**: formulario con Zod, campos por tipo, markdown con vista previa.
8. **Subida de imágenes** al bucket `public-assets`.
9. **Publicación** con `revalidatePath` y el cron para lo programado.

### Cierre

10. Lighthouse en móvil, navegación solo con teclado y lectura con VoiceOver.
11. Vercel, dominio, y verificar que los CTA llegan de verdad al alta.


## 15. Pendiente

Nada de esto se puede deducir del código, y varias cosas impiden publicar.

**Bloquea la publicación:**

1. **Número de WhatsApp real.** `site.contacto.whatsapp` tiene un marcador de un rango no
   asignado, así que hoy el botón no abre conversación con nadie.
2. **Identidad fiscal**: razón social, NIF y domicilio. Las páginas legales avisan en pantalla
   mientras falten.
3. **Precios.** Los planes se muestran sin cifra y el botón dice «Ver precio y matricularme».
   En cuanto haya importes, se rellena `precio` en `content/planes.ts`.
4. **Correo y teléfono públicos**, para el pie y el aviso legal.

**Mejora lo que ya hay:**

5. **Datos de la convocatoria vigente**: plazas, fechas y enlace al BOE. Mientras
   `convocatoria` sea `null`, la web omite esos bloques en lugar de inventarlos.
6. **Testimonios reales** con nombre, promoción y destino. La sección no aparece hasta tenerlos.
7. **Equipo**: nombres, cargos y fotos con permiso, para `content/quienes-somos.ts`.
8. **Capturas reales del producto**, para sustituir las pantallas simuladas de los mockups.
9. **Dominio definitivo** y variables de entorno en Vercel.
10. **Alta en `platform_admins`** de quien vaya a escribir en el blog. Sin eso no hay panel.
11. **Analítica**: si entra algo, qué y con qué base legal. Sin analítica no hace falta banner
    de cookies, y eso es una ventaja que conviene no regalar.


## 16. Cuando lleguen las especialidades

Escrito ahora para que la decisión no se improvise entonces. El disparador es tener una segunda
oposición **vendible**, no anunciada.

1. Añadir la entrada a `content/oposiciones.ts` con `estado: "activa"`.
2. Crear `app/oposiciones/[slug]/page.tsx` leyendo ese array, con `generateStaticParams`.
3. Convertir la sección `Oposicion` de la portada en una rejilla que enlace a cada página.
4. Añadir las rutas al sitemap y un `Course` de JSON-LD por oposición.
5. Filtrar el blog por `oposicion` en cada página, que ya es una columna indexada.

No hace falta tocar componentes, tokens, layout ni base de datos. Es exactamente el motivo de
que el contenido viva separado desde el primer día.
