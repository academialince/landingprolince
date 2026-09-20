"use client";

import { createBrowserClient } from "@supabase/ssr";
import { SUPABASE_ANON, SUPABASE_URL } from "./config";

export function supabaseNavegador() {
  return createBrowserClient(SUPABASE_URL, SUPABASE_ANON);
}
