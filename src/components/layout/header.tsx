"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useEffect, useState } from "react";
import { Menu, X } from "lucide-react";
import { Marca } from "@/components/ui/logo";
import { Button } from "@/components/ui/button";
import { Container } from "./container";
import { navegacion } from "@/content/site";
import { links } from "@/lib/links";

export function Header() {
  const [abierto, setAbierto] = useState(false);
  const [desplazado, setDesplazado] = useState(false);
  const ruta = usePathname();

  useEffect(() => {
    const alDesplazar = () => setDesplazado(window.scrollY > 8);
    alDesplazar();
    window.addEventListener("scroll", alDesplazar, { passive: true });
    return () => window.removeEventListener("scroll", alDesplazar);
  }, []);

  useEffect(() => {
    if (!abierto) return;
    const alPulsar = (e: KeyboardEvent) => {
      if (e.key === "Escape") setAbierto(false);
    };
    document.addEventListener("keydown", alPulsar);
    document.body.style.overflow = "hidden";
    return () => {
      document.removeEventListener("keydown", alPulsar);
      document.body.style.overflow = "";
    };
  }, [abierto]);

  return (
    <header
      className={`sticky top-0 z-40 transition-[background-color,border-color] duration-200 ease-[var(--ease-product)] ${
        desplazado
          ? "border-b border-border bg-background/85 backdrop-blur-md"
          : "border-b border-transparent bg-background"
      }`}
    >
      <Container>
        <div className="flex h-[4.5rem] items-center justify-between gap-2 sm:gap-4">
          <Link href="/" aria-label="ProLince, inicio" className="shrink-0">
            <Marca alto={28} />
          </Link>

          <nav aria-label="Principal" className="hidden items-center gap-0.5 lg:flex">
            {navegacion.map((item) => {
              const activo = ruta === item.href;
              return (
                <Link
                  key={item.href}
                  href={item.href}
                  aria-current={activo ? "page" : undefined}
                  className={`rounded-md px-3 py-2 text-body-sm font-semibold transition-colors ${
                    activo
                      ? "bg-primary-soft text-primary-soft-fg"
                      : "text-muted-foreground hover:bg-surface-tinted hover:text-foreground"
                  }`}
                >
                  {item.etiqueta}
                </Link>
              );
            })}
          </nav>

          <div className="flex items-center gap-2">
            <span className="hidden sm:block">
              <Button href={links.login} variante="fantasma">
                Entrar
              </Button>
            </span>
            <Button href={links.registro}>
              <span className="sm:hidden">Empezar</span>
              <span className="hidden sm:inline">Empezar ahora</span>
            </Button>
            <button
              type="button"
              onClick={() => setAbierto((v) => !v)}
              aria-expanded={abierto}
              aria-controls="menu-movil"
              aria-label={abierto ? "Cerrar menú" : "Abrir menú"}
              className="inline-flex size-11 shrink-0 items-center justify-center rounded-md transition-colors hover:bg-surface-tinted lg:hidden"
            >
              {abierto ? <X size={22} aria-hidden /> : <Menu size={22} aria-hidden />}
            </button>
          </div>
        </div>
      </Container>

      {abierto && (
        <div id="menu-movil" className="border-t border-border bg-background lg:hidden">
          <Container>
            <nav aria-label="Principal, móvil" className="grid py-3">
              {navegacion.map((item) => (
                <Link
                  key={item.href}
                  href={item.href}
                  onClick={() => setAbierto(false)}
                  className="border-b border-border py-3 font-semibold last:border-0"
                >
                  {item.etiqueta}
                </Link>
              ))}
              <a href={links.login} className="py-3 font-semibold text-primary">
                Entrar en mi cuenta
              </a>
            </nav>
          </Container>
        </div>
      )}
    </header>
  );
}
