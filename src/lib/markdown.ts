import rehypeSanitize from "rehype-sanitize";
import rehypeSlug from "rehype-slug";
import rehypeStringify from "rehype-stringify";
import remarkGfm from "remark-gfm";
import remarkParse from "remark-parse";
import remarkRehype from "remark-rehype";
import { unified } from "unified";

/**
 * Markdown a HTML, en servidor y saneado.
 *
 * Sin `allowDangerousHtml`: el autor es de confianza, pero una cuenta comprometida no debe
 * poder inyectar un script en la web pública. `rehype-slug` pone anclas en los encabezados para
 * poder enlazar a un epígrafe.
 */
export async function markdownAHtml(markdown: string): Promise<string> {
  const archivo = await unified()
    .use(remarkParse)
    .use(remarkGfm)
    .use(remarkRehype)
    .use(rehypeSanitize)
    .use(rehypeSlug)
    .use(rehypeStringify)
    .process(markdown);

  return String(archivo);
}

/** Minutos de lectura, redondeando hacia arriba sobre 200 palabras por minuto. */
export function minutosLectura(markdown: string) {
  const palabras = markdown.trim().split(/\s+/).filter(Boolean).length;
  return Math.max(1, Math.ceil(palabras / 200));
}
