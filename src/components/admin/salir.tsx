"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { LogOut } from "lucide-react";
import { supabaseNavegador } from "@/lib/supabase/client";

export function Salir({ correo }: { correo: string }) {
  const router = useRouter();
  const [saliendo, setSaliendo] = useState(false);

  return (
    <div className="flex items-center gap-3">
      <span className="hidden text-body-sm text-muted-foreground sm:inline">{correo}</span>
      <button
        type="button"
        disabled={saliendo}
        onClick={async () => {
          setSaliendo(true);
          await supabaseNavegador().auth.signOut();
          router.replace("/admin/entrar");
          router.refresh();
        }}
        className="inline-flex min-h-9 items-center gap-2 rounded-md border border-border px-3 text-body-sm font-semibold transition-colors hover:bg-surface-tinted disabled:opacity-50"
      >
        <LogOut size={15} aria-hidden />
        Salir
      </button>
    </div>
  );
}
