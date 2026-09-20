import type { Metadata, Viewport } from "next";
import type { ReactNode } from "react";
import "./globals.css";
import { JsonLd, organizacionJsonLd } from "@/lib/seo";
import { site } from "@/content/site";
import { siteUrl } from "@/lib/links";

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: `${site.nombreLargo} · ${site.claim}`,
    template: `%s · ${site.nombre}`,
  },
  description: site.descripcion,
  applicationName: site.nombreLargo,
  alternates: { canonical: "/" },
  openGraph: {
    type: "website",
    locale: "es_ES",
    siteName: site.nombreLargo,
    title: `${site.nombreLargo} · ${site.claim}`,
    description: site.descripcion,
    url: siteUrl,
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
    <html lang="es-ES" data-scroll-behavior="smooth">
      <body>
        {children}
        <JsonLd data={organizacionJsonLd()} />
      </body>
    </html>
  );
}
