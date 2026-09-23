import type { Metadata } from "next";
import { AlertTriangle } from "lucide-react";
import { Marca } from "@/components/ui/logo";
import { FormularioEntrar } from "@/components/admin/formulario-entrar";
import { CORREO_EDITOR, supabaseConfigurado } from "@/lib/supabase/config";

export const metadata: Metadata = { title: "Entrar" };

export default function Entrar() {
  return (
    <div className="mx-auto max-w-[26rem] py-10">
      <div className="flex justify-center">
        <Marca alto={32} />
      </div>
      <h1 className="text-h2 mt-8 text-center">Panel de contenidos</h1>
      <p className="mt-2 text-center text-muted-foreground">
        Acceso restringido a las cuentas editoras.
      </p>

      {supabaseConfigurado ? (
        <FormularioEntrar correoSugerido={CORREO_EDITOR} />
      ) : (
        <div className="mt-8 flex gap-3 rounded-xl border border-warning/40 bg-warning/8 p-5">
          <AlertTriangle size={20} className="mt-0.5 shrink-0 text-warning" aria-hidden />
          <div className="min-w-0 text-body-sm [&_code]:break-all">
            <p className="font-bold">Supabase no está configurado</p>
            <p className="mt-1 text-muted-foreground">
              Falta definir <code>NEXT_PUBLIC_SUPABASE_URL</code> y{" "}
              <code>NEXT_PUBLIC_SUPABASE_ANON_KEY</code>. Después hay que aplicar la migración{" "}
              <code>supabase/migrations/20260920100000_blog.sql</code> y dar de alta la cuenta{" "}
              <strong>{CORREO_EDITOR}</strong> en Supabase Auth.
            </p>
          </div>
        </div>
      )}
    </div>
  );
}
