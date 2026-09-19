import Link from "next/link";
import { Mail, MessageCircle, Phone } from "lucide-react";
import { Marca } from "@/components/ui/logo";
import { Container } from "./container";
import { navegacion, site } from "@/content/site";
import { oposicionesActivas, oposicionesProximas } from "@/content/oposiciones";
import { links, rutas } from "@/lib/links";

const legales = [
  { etiqueta: "Aviso legal", href: rutas.avisoLegal },
  { etiqueta: "Privacidad", href: rutas.privacidad },
  { etiqueta: "Cookies", href: rutas.cookies },
  { etiqueta: "Preguntas frecuentes", href: rutas.preguntas },
];

export function Footer() {
  const { email, telefono, whatsapp } = site.contacto;
  const hayContacto = Boolean(email || telefono || whatsapp);

  return (
    <footer className="bg-primary-deep text-white">
      <Container>
        <div className="py-16 grid gap-12 md:grid-cols-[1.3fr_1fr_1fr_1fr]">
          <div>
            <Marca alto={30} tono="actual" />
            <p className="mt-4 text-body-sm text-white/70 max-w-xs">
              Preparación online de oposiciones. El acceso a tu curso, tus tests y tus simulacros
              ocurre en la plataforma.
            </p>
            {hayContacto && (
              <ul className="mt-6 grid gap-2 text-body-sm">
                {email && (
                  <li>
                    <a href={`mailto:${email}`} className="inline-flex items-center gap-2 hover:underline">
                      <Mail size={16} aria-hidden />
                      {email}
                    </a>
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
                      href={`https://wa.me/${whatsapp}`}
                      className="inline-flex items-center gap-2 hover:underline"
                    >
                      <MessageCircle size={16} aria-hidden />
                      WhatsApp
                    </a>
                  </li>
                )}
              </ul>
            )}
          </div>

          <nav aria-label="Secciones">
            <h2 className="text-eyebrow uppercase text-white/50 mb-4">Secciones</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {navegacion.map((item) => (
                <li key={item.href}>
                  <Link href={item.href} className="text-white/80 hover:text-white">
                    {item.etiqueta}
                  </Link>
                </li>
              ))}
            </ul>
          </nav>

          <div>
            <h2 className="text-eyebrow uppercase text-white/50 mb-4">Oposiciones</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {oposicionesActivas.map((o) => (
                <li key={o.slug}>
                  <Link href={rutas.oposicion} className="text-white/80 hover:text-white">
                    {o.nombre}
                  </Link>
                </li>
              ))}
              {oposicionesProximas.map((o) => (
                <li key={o.slug} className="text-white/45">
                  {o.nombre} · próximamente
                </li>
              ))}
            </ul>
          </div>

          <nav aria-label="Legal">
            <h2 className="text-eyebrow uppercase text-white/50 mb-4">Legal</h2>
            <ul className="grid gap-2.5 text-body-sm">
              {legales.map((item) => (
                <li key={item.href}>
                  <Link href={item.href} className="text-white/80 hover:text-white">
                    {item.etiqueta}
                  </Link>
                </li>
              ))}
              <li>
                <a href={links.login} className="text-white/80 hover:text-white">
                  Entrar en mi cuenta
                </a>
              </li>
            </ul>
          </nav>
        </div>

        <div className="py-6 border-t border-white/12 flex flex-wrap items-center justify-between gap-3 text-body-sm text-white/55">
          <p>
            © {new Date().getFullYear()} {site.legal.razonSocial ?? site.nombreLargo}
          </p>
          <p>Hecho para quien se está preparando.</p>
        </div>
      </Container>
    </footer>
  );
}
