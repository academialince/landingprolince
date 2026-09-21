/** Activación explícita en el dominio público; las previews nunca se indexan. */
export const indexacionPermitida = process.env.ALLOW_INDEXING === "true"
  && process.env.VERCEL_ENV !== "preview"
  && process.env.VERCEL_ENV !== "development"
  && Boolean(process.env.NEXT_PUBLIC_SITE_URL)
  && !/localhost|127\.0\.0\.1/.test(process.env.NEXT_PUBLIC_SITE_URL ?? "");
