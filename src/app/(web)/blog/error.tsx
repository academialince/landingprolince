"use client";

export default function BlogError({ reset }: { reset: () => void }) {
  return (
    <section className="mx-auto max-w-xl px-5 py-24 text-center">
      <h1 className="text-h2">No hemos podido cargar el blog</h1>
      <p className="mt-4 text-muted-foreground">Ha habido un problema temporal. Vuelve a intentarlo en unos instantes.</p>
      <button type="button" onClick={reset} className="mt-6 min-h-11 rounded-md border border-primary px-5 font-bold text-primary hover:bg-primary hover:text-white">Volver a intentar</button>
    </section>
  );
}
