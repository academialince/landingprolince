"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useEffect, useRef, useState } from "react";
import { ChevronDown, Menu, X } from "lucide-react";
import { Marca } from "@/components/ui/logo";
import { Button } from "@/components/ui/button";
import { Container } from "./container";
import { navegacion, type ItemNav } from "@/content/site";
import { links } from "@/lib/links";

function activo(ruta: string, item: ItemNav) {
  if (item.hijos) return item.hijos.some((h) => ruta.startsWith(h.href));
  if (!item.href) return false;
  if (item.href === "/") return ruta === "/";
  return ruta.startsWith(item.href);
}

export function Header() {
  const [abierto, setAbierto] = useState(false);
  const [desplegado, setDesplegado] = useState<string | null>(null);
  const [desplazado, setDesplazado] = useState(false);
  const ruta = usePathname();
  const navRef = useRef<HTMLElement>(null);

  useEffect(() => {
    const alDesplazar = () => setDesplazado(window.scrollY > 8);
    alDesplazar();
    window.addEventListener("scroll", alDesplazar, { passive: true });
    return () => window.removeEventListener("scroll", alDesplazar);
  }, []);

  useEffect(() => {
    if (!abierto && !desplegado) return;
    const alPulsar = (e: KeyboardEvent) => {
      if (e.key !== "Escape") return;
      setAbierto(false);
      setDesplegado(null);
    };
    const fuera = (e: MouseEvent) => {
      if (navRef.current && !navRef.current.contains(e.target as Node)) setDesplegado(null);
    };
    document.addEventListener("keydown", alPulsar);
    document.addEventListener("click", fuera);
    return () => {
      document.removeEventListener("keydown", alPulsar);
      document.removeEventListener("click", fuera);
    };
  }, [abierto, desplegado]);

  /*
   * Bloqueo de scroll que conserva la posición. `overflow: hidden` a secas basta en escritorio,
   * pero en iOS la página salta al principio al cerrar. Fijando el body con un `top` negativo y
   * restaurando el scroll al soltar, se queda donde estaba.
   */
  useEffect(() => {
    if (!abierto) return;
    const y = window.scrollY;
    const { style } = document.body;
    style.position = "fixed";
    style.top = `-${y}px`;
    style.left = "0";
    style.right = "0";
    style.overflow = "hidden";
    return () => {
      style.position = "";
      style.top = "";
      style.left = "";
      style.right = "";
      style.overflow = "";
      window.scrollTo(0, y);
    };
  }, [abierto]);

  const cerrar = () => {
    setAbierto(false);
    setDesplegado(null);
  };

  return (
    <>
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

          <nav ref={navRef} aria-label="Principal" className="hidden items-center gap-0.5 lg:flex">
            {navegacion.map((item) => {
              const esActivo = activo(ruta, item);
              const clases = `rounded-md px-3 py-2 text-body-sm font-semibold transition-colors ${
                esActivo
                  ? "bg-primary-soft text-primary-soft-fg"
                  : "text-muted-foreground hover:bg-surface-tinted hover:text-foreground"
              }`;

              if (!item.hijos) {
                return item.href ? (
                  <Link
                    key={item.etiqueta}
                    href={item.href}
                    aria-current={esActivo ? "page" : undefined}
                    className={clases}
                  >
                    {item.etiqueta}
                  </Link>
                ) : null;
              }

              const hijos = item.hijos;
              const desplegadoAqui = desplegado === item.etiqueta;
              return (
                <div key={item.etiqueta} className="relative">
                  <button
                    type="button"
                    aria-expanded={desplegadoAqui}
                    onClick={() => setDesplegado(desplegadoAqui ? null : item.etiqueta)}
                    className={`${clases} inline-flex items-center gap-1.5`}
                  >
                    {item.etiqueta}
                    <ChevronDown
                      size={15}
                      aria-hidden
                      className={`transition-transform duration-200 ${desplegadoAqui ? "rotate-180" : ""}`}
                    />
                  </button>
                  {desplegadoAqui && (
                    <div className="absolute left-0 top-full z-50 mt-2 w-72 overflow-hidden rounded-xl border border-border bg-surface p-1.5 shadow-[0_18px_40px_-12px_rgba(2,67,52,0.24)]">
                      {hijos.map((h) => (
                        <Link
                          key={h.href}
                          href={h.href}
                          onClick={cerrar}
                          className="block rounded-lg px-3 py-2.5 transition-colors hover:bg-surface-tinted"
                        >
                          <span className="block font-semibold">{h.etiqueta}</span>
                          <span className="block text-body-sm text-muted-foreground">
                            {h.descripcion}
                          </span>
                        </Link>
                      ))}
                    </div>
                  )}
                </div>
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

    </header>

      {abierto && (
      <div
        id="menu-movil"
        className="fixed inset-x-0 bottom-0 top-[4.5rem] z-50 overflow-y-auto overscroll-contain border-t border-border bg-background lg:hidden"
      >
        <Container>
          <nav aria-label="Principal, móvil" className="grid py-2">
            {navegacion.map((item) =>
              item.hijos ? (
                <div key={item.etiqueta} className="border-b border-border py-3">
                  {/* Un grupo no es un destino: enlazarlo al primer curso duplicaba la entrada. */}
                  <p className="text-eyebrow uppercase text-muted-foreground">{item.etiqueta}</p>
                  <div className="mt-1 grid">
                    {item.hijos.map((h) => (
                      <Link
                        key={h.href}
                        href={h.href}
                        onClick={cerrar}
                        className="py-2.5 font-semibold"
                      >
                        {h.etiqueta}
                        <span className="block text-body-sm font-normal text-muted-foreground">
                          {h.descripcion}
                        </span>
                      </Link>
                    ))}
                  </div>
                </div>
              ) : (
                <Link
                  key={item.etiqueta}
                  href={item.href!}
                  onClick={cerrar}
                  className="border-b border-border py-4 font-semibold"
                >
                  {item.etiqueta}
                </Link>
              ),
            )}
            <a href={links.login} className="py-4 font-semibold text-primary">
              Entrar en mi cuenta
            </a>
          </nav>
        </Container>
      </div>
    )}
    </>
  );
}
