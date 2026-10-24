import type { NextConfig } from "next";
import { indexacionPermitida } from "./src/lib/indexacion";

const supabaseHost = (() => {
  try {
    return new URL(process.env.NEXT_PUBLIC_SUPABASE_URL ?? "").hostname;
  } catch {
    return null;
  }
})();

const nextConfig: NextConfig = {
  poweredByHeader: false,
  turbopack: { root: process.cwd() },
  images: {
    // 90 conserva texturas y detalle fotográfico sin el peso de una salida sin pérdidas.
    qualities: [75, 90],
    remotePatterns: supabaseHost
      ? [{ protocol: "https", hostname: supabaseHost, pathname: "/storage/v1/object/public/**" }]
      : [],
  },
  /** La arquitectura de información cambió; estas rutas existieron durante el desarrollo. */
  async redirects() {
    return [
      { source: "/la-oposicion", destination: "/cursos/acceso-guardia-civil", permanent: true },
      { source: "/quienes-somos", destination: "/nosotros", permanent: true },
      { source: "/precios", destination: "/packs", permanent: true },
      // la tienda pasó a llamarse «Packs»
      { source: "/tienda", destination: "/packs", permanent: true },
      { source: "/plataforma", destination: "/", permanent: true },
      { source: "/metodo", destination: "/", permanent: true },
      { source: "/preguntas", destination: "/cursos/acceso-guardia-civil", permanent: true },
      // El dominio de Vercel serviría una copia exacta de la web: todo al dominio propio.
      {
        source: "/:path*",
        has: [{ type: "host", value: "landingprolince.vercel.app" }],
        destination: "https://www.prolinceacademia.com/:path*",
        permanent: true,
      },
    ];
  },

  async headers() {
    return [
      {
        source: "/:path*",
        headers: [
          ...(!indexacionPermitida ? [{ key: "X-Robots-Tag", value: "noindex, follow" }] : []),
          { key: "X-Content-Type-Options", value: "nosniff" },
          { key: "Referrer-Policy", value: "strict-origin-when-cross-origin" },
          { key: "Permissions-Policy", value: "camera=(), microphone=(), geolocation=()" },
          { key: "X-Frame-Options", value: "DENY" },
        ],
      },
    ];
  },
};

export default nextConfig;
