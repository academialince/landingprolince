import type { ReactNode } from "react";
import Link from "next/link";
import { MarcaCompleta } from "@/components/ui/logo";
import { AvisoCookies } from "@/components/cookies/aviso-cookies";
import { BotonTema, scriptTema } from "@/components/layout/boton-tema";
import { site } from "@/content/site";
import { rutas } from "@/lib/links";

/**
 * Armazón de las landing de captación (anuncios de Instagram). La misma estética táctica que la
 * web, pero sin menú, sin pie completo y sin WhatsApp flotante: quien llega desde un anuncio
 * tiene una sola cosa que hacer, y el botón flotante taparía las opciones del test en el móvil.
 */
export default function CaptacionLayout({ children }: { children: ReactNode }) {
  return (
    <div className="tactico flex min-h-dvh flex-col" data-tema="oscuro" suppressHydrationWarning>
      <script dangerouslySetInnerHTML={{ __html: scriptTema }} />
      <header className="border-b border-border">
        <div className="mx-auto flex h-14 w-[min(100%-2rem,46rem)] items-center justify-between">
          <Link href={rutas.inicio} aria-label="Ir a la web de ProLince">
            <span className="logo-tema-claro">
              <MarcaCompleta alto={30} />
            </span>
            <span className="logo-tema-oscuro">
              <MarcaCompleta alto={30} negativo />
            </span>
          </Link>
          <BotonTema />
        </div>
      </header>

      <main id="contenido" className="flex-1">
        {children}
      </main>

      <footer className="border-t border-border py-6 text-body-sm text-muted-foreground">
        <div className="mx-auto flex w-[min(100%-2rem,46rem)] flex-wrap items-center justify-between gap-x-6 gap-y-2">
          <span>© {new Date().getFullYear()} {site.nombreLargo}</span>
          <nav aria-label="Legal" className="flex gap-4">
            <Link href={rutas.avisoLegal} className="hover:text-foreground">Aviso legal</Link>
            <Link href={rutas.privacidad} className="hover:text-foreground">Privacidad</Link>
            <Link href={rutas.cookies} className="hover:text-foreground">Cookies</Link>
          </nav>
        </div>
      </footer>
      <AvisoCookies />
    </div>
  );
}
