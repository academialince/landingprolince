import type { Metadata } from "next";
import type { ReactNode } from "react";
import Link from "next/link";
import { Logo } from "@/components/ui/logo";
import { Salir } from "@/components/admin/salir";
import { supabaseServidor } from "@/lib/supabase/server";

export const metadata: Metadata = {
  title: { default: "Panel", template: "%s · Panel de ProLince" },
  // No es seguridad, es higiene: evita que la pantalla de acceso acabe indexada.
  robots: { index: false, follow: false },
};

export default async function AdminLayout({ children }: { children: ReactNode }) {
  const sb = await supabaseServidor();
  const correo = sb ? (await sb.auth.getUser()).data.user?.email ?? null : null;

  return (
    <div className="min-h-dvh bg-surface-subtle">
      <header className="border-b border-border bg-surface">
        <div className="mx-auto flex h-16 w-[min(100%-2rem,72rem)] items-center justify-between gap-4">
          <Link href="/admin" className="inline-flex items-center gap-2.5">
            <Logo alto={26} decorativo />
            <span className="font-extrabold tracking-[-0.02em]">Panel</span>
          </Link>
          <div className="flex items-center gap-4">
            <Link
              href="/admin/waitlist"
              className="text-body-sm font-semibold text-muted-foreground hover:text-foreground"
            >
              Lista de espera
            </Link>
            <Link
              href="/blog"
              className="text-body-sm font-semibold text-muted-foreground hover:text-foreground"
            >
              Ver el blog
            </Link>
            {correo && <Salir correo={correo} />}
          </div>
        </div>
      </header>
      <main className="mx-auto w-[min(100%-2rem,72rem)] py-10">{children}</main>
    </div>
  );
}
