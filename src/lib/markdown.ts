import rehypeSanitize from "rehype-sanitize";
import rehypeSlug from "rehype-slug";
import rehypeStringify from "rehype-stringify";
import remarkGfm from "remark-gfm";
import remarkParse from "remark-parse";
import remarkRehype from "remark-rehype";
import { unified } from "unified";
import type { Root, Element, RootContent } from "hast";

/**
 * Markdown a HTML, en servidor y saneado.
 *
 * Sin `allowDangerousHtml`: el autor es de confianza, pero una cuenta comprometida no debe
 * poder inyectar un script en la web pública. `rehype-slug` pone anclas en los encabezados para
 * poder enlazar a un epígrafe.
 */
export async function prepararArticulo(markdown: string) {
  const indice: { id: string; texto: string }[] = [];
  const texto = (nodo: RootContent): string => "value" in nodo ? String(nodo.value) : "children" in nodo ? nodo.children.map(texto).join("") : "";
  function recorrer(arbol: Root | Element, visitar: (nodo: Element) => void) {
    for (const nodo of arbol.children) {
      if (nodo.type === "element") { visitar(nodo); recorrer(nodo, visitar); }
    }
  }
  const archivo = await unified()
    .use(remarkParse)
    .use(remarkGfm)
    .use(remarkRehype)
    .use(rehypeSanitize)
    .use(() => (arbol: Root) => recorrer(arbol, (nodo) => {
      // El título del post es el único h1, incluso si el editor pega uno en Markdown.
      if (nodo.tagName === "h1") nodo.tagName = "h2";
      if (nodo.tagName === "img") {
        nodo.properties.loading = "lazy";
        nodo.properties.decoding = "async";
        if (String(nodo.properties.src).startsWith("/blog/")) {
          nodo.properties.width = 1600;
          nodo.properties.height = 900;
        }
      }
    }))
    .use(rehypeSlug, { prefix: "seccion-" })
    .use(() => (arbol: Root) => recorrer(arbol, (nodo) => {
      if (nodo.tagName === "h2") indice.push({ id: String(nodo.properties.id), texto: texto(nodo) });
    }))
    .use(rehypeStringify)
    .process(markdown);

  return { html: String(archivo), indice };
}

export async function markdownAHtml(markdown: string): Promise<string> {
  return (await prepararArticulo(markdown)).html;
}

/** Minutos de lectura, redondeando hacia arriba sobre 200 palabras por minuto. */
export function minutosLectura(markdown: string) {
  const palabras = markdown.trim().split(/\s+/).filter(Boolean).length;
  return Math.max(1, Math.ceil(palabras / 200));
}
