import type { Metadata, Viewport } from "next";
import type { ReactNode } from "react";
import { Manrope } from "next/font/google";
import "./globals.css";
import { JsonLd, organizacionJsonLd } from "@/lib/seo";
import { site } from "@/content/site";
import { siteUrl } from "@/lib/links";
import { indexacionPermitida } from "@/lib/indexacion";

/**
 * Con next/font la fuente se sirve desde el propio dominio, se precarga y lleva un respaldo con
 * métricas ajustadas: el texto no salta al cambiar de la fuente del sistema a Manrope (CLS).
 */
const manrope = Manrope({ subsets: ["latin", "latin-ext"], display: "swap", variable: "--font-manrope" });

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: `${site.nombreLargo} · ${site.claim}`,
    template: `%s · ${site.nombre}`,
  },
  description: site.descripcion,
  applicationName: site.nombreLargo,
  robots: { index: indexacionPermitida, follow: true, googleBot: { index: indexacionPermitida, follow: true, "max-image-preview": "large" } },
  alternates: { types: { "application/rss+xml": [{ url: "/blog/rss.xml", title: `Blog de ${site.nombreLargo}` }] } },
  openGraph: {
    type: "website",
    locale: "es_ES",
    siteName: site.nombreLargo,
    title: `${site.nombreLargo} · ${site.claim}`,
    description: site.descripcion,
  },
  twitter: {
    card: "summary_large_image",
    title: `${site.nombreLargo} · ${site.claim}`,
    description: site.descripcion,
  },
};

/*
 * El producto bloquea el zoom con `maximumScale: 1`. Aquí no: en una web pública impedir
 * ampliar incumple el criterio 1.4.4 de WCAG y castiga justo a quien más lo necesita.
 */
export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
};

export default function RootLayout({ children }: Readonly<{ children: ReactNode }>) {
  return (
    <html lang="es-ES" data-scroll-behavior="smooth" className={manrope.variable}>
      <body>
        {children}
        <JsonLd data={organizacionJsonLd()} />
      </body>
    </html>
  );
}
