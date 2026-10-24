import Link from "next/link";
import { Mail, MessageCircle, Phone } from "lucide-react";
import { MarcaCompleta } from "@/components/ui/logo";
import { Container } from "./container";
import { navegacion, redesActivas, site } from "@/content/site";
import { IconoRed } from "@/components/ui/iconos-redes";
import { cursos } from "@/content/cursos";
import { cursosVisibles, rutas } from "@/lib/links";

const legales = [
  { etiqueta: "Aviso legal", href: rutas.avisoLegal },
  { etiqueta: "Privacidad", href: rutas.privacidad },
  { etiqueta: "Cookies", href: rutas.cookies },
];

export function Footer() {
  const { email, telefono, whatsapp } = site.contacto;
  const hayContacto = Boolean(email || telefono || whatsapp);
  const redes = redesActivas();

  return (
    <footer className="pie bg-primary-deep text-white">
      <Container>
        <div className="grid gap-12 py-16 md:grid-cols-[1.3fr_1fr_1fr_1fr]">
          <div>
            <MarcaCompleta alto={36} negativo />
            <p className="mt-4 max-w-xs text-body-sm text-white/70">
              Preparación online de oposiciones. El acceso a tu curso, tus tests y tus simulacros
              ocurre en la plataforma.
            </p>
            {hayContacto && (
              <ul className="mt-6 grid gap-2 text-body-sm">
                {email && (
                  <li className="mb-2">
                    {/* el email no se enseña: el formulario de contacto lo envía a ese buzón */}
                    <Link
                      href={rutas.contacto}
                      className="inline-flex h-10 items-center gap-2 rounded-md border border-white/30 px-4 font-semibold text-white transition-colors hover:border-white hover:bg-white/10"
                    >
                      <Mail size={16} aria-hidden />
                      Contactar
                    </Link>
                  </li>
                )}
                {telefono && (
                  <li>
                    <a href={`tel:${telefono}`} className="inline-flex items-center gap-2 hover:underline">
                      <Phone size={16} aria-hidden />
                      {telefono}
                    </a>
                  </li>
                )}
                {whatsapp && (
                  <li>
                    <a
                      href={`https://wa.me/${whatsapp}?text=${encodeURIComponent(site.contacto.mensajeWhatsapp)}`}
                      className="inline-flex items-center gap-2 hover:underline"
                    >
                      <MessageCircle size={16} aria-hidden />
                      WhatsApp
                    </a>
                  </li>
                )}
              </ul>
            )}
            {redes.length > 0 && (
              <ul className="mt-6 flex flex-wrap gap-2" aria-label="Redes sociales">
                {redes.map((r) => (
                  <li key={r.red}>
                    <a
                      href={r.url}
                      target="_blank"
                      rel="noopener me"
                      aria-label={`${site.nombreLargo} en ${r.nombre}${r.usuario ? ` (${r.usuario})` : ""}`}
                      className="grid size-10 place-items-center rounded-full bg-white/8 text-white/80 transition-colors hover:bg-white/16 hover:text-white"
                    >
                      <IconoRed red={r.red} />
                    </a>
                  </li>
                ))}
              </ul>
            )}
          </div>

          <nav aria-label="Secciones">
            <h2 className="mb-4 text-eyebrow uppercase text-white/50">Secciones</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {navegacion
                .filter((item) => item.href && !item.hijos)
                .map((item) => (
                  <li key={item.etiqueta}>
                    <Link href={item.href!} className="text-white/80 hover:text-white">
                      {item.etiqueta}
                    </Link>
                  </li>
                ))}
            </ul>
          </nav>

          {cursosVisibles && (
          <nav aria-label="Cursos">
            <h2 className="mb-4 text-eyebrow uppercase text-white/50">Cursos</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {cursos.map((c) => (
                <li key={c.slug}>
                  <Link href={rutas.curso(c.slug)} className="text-white/80 hover:text-white">
                    {c.nombre}
                  </Link>
                </li>
              ))}
            </ul>
            <h2 className="mb-4 mt-8 text-eyebrow uppercase text-white/50">Recursos</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {cursos.map((c) =>
                rutas.temario(c.slug) ? (
                  <li key={c.slug}>
                    <Link href={rutas.temario(c.slug)!} className="text-white/80 hover:text-white">
                      Temario {c.nombreCorto}
                    </Link>
                  </li>
                ) : null,
              )}
              {cursos.map((c) =>
                rutas.test(c.slug) ? (
                  <li key={`test-${c.slug}`}>
                    <Link href={rutas.test(c.slug)!} className="text-white/80 hover:text-white">
                      Test gratis {c.nombreCorto}
                    </Link>
                  </li>
                ) : null,
              )}
              <li>
                <Link href={rutas.calculadora} className="text-white/80 hover:text-white">
                  Calculadora de nota
                </Link>
              </li>
            </ul>
          </nav>
          )}

          <nav aria-label="Legal">
            <h2 className="mb-4 text-eyebrow uppercase text-white/50">Legal</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {legales.map((item) => (
                <li key={item.href}>
                  <Link href={item.href} className="text-white/80 hover:text-white">
                    {item.etiqueta}
                  </Link>
                </li>
              ))}
            </ul>
          </nav>
        </div>

        <div className="flex flex-wrap items-center justify-between gap-3 border-t border-white/12 py-6 text-body-sm text-white/55">
          <p>
            © {new Date().getFullYear()} {site.nombreLargo}
          </p>
          <p>Hecho para quien se está preparando.</p>
        </div>
      </Container>
    </footer>
  );
}
