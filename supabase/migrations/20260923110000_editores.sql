-- Segunda cuenta con acceso al panel. La lista tiene que coincidir con `CORREOS_EDITORES` en
-- `src/lib/supabase/config.ts`. Esta función guarda tanto el blog como la lista de espera.
create or replace function public.es_editor_blog()
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select lower(coalesce(auth.jwt() ->> 'email', '')) in (
    'admin@academiaprolince.com',
    'marcos@academiaprolince.com'
  )
$$;
