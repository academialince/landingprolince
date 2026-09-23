-- Lista de espera para probar la plataforma.
--
-- Cualquiera puede apuntarse, pero nadie puede leer la lista salvo el editor del panel: son
-- datos personales (teléfono, correo, edad) y la clave anónima viaja en el navegador.

create table if not exists public.waitlist (
  id                uuid primary key default gen_random_uuid(),
  nombre            text not null,
  tiempo_opositando text not null,
  veces_presentado  text not null,
  edad              smallint not null,
  email             text not null,
  telefono          text not null,
  acepta_privacidad boolean not null default false,
  creado_en         timestamptz not null default now(),
  constraint waitlist_nombre_check   check (char_length(nombre) between 2 and 120),
  constraint waitlist_tiempo_check
    check (tiempo_opositando in ('sin-empezar', 'menos-6-meses', '6-12-meses', '1-2-anos', 'mas-2-anos')),
  constraint waitlist_veces_check    check (veces_presentado in ('0', '1', '2', '3+')),
  constraint waitlist_edad_check     check (edad between 14 and 99),
  constraint waitlist_email_check    check (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$' and char_length(email) <= 254),
  constraint waitlist_telefono_check check (telefono ~ '^\+?[0-9]{9,15}$'),
  -- Sin consentimiento no se guarda nada, aunque alguien salte la validación del formulario.
  constraint waitlist_privacidad_check check (acepta_privacidad)
);

-- Un correo, una plaza. Sin distinguir mayúsculas.
create unique index if not exists waitlist_email_idx on public.waitlist (lower(email));
create index if not exists waitlist_creado_idx on public.waitlist (creado_en desc);

alter table public.waitlist enable row level security;

drop policy if exists "waitlist: cualquiera se apunta" on public.waitlist;
create policy "waitlist: cualquiera se apunta"
  on public.waitlist for insert to anon, authenticated
  with check (true);

drop policy if exists "waitlist: el editor la consulta" on public.waitlist;
create policy "waitlist: el editor la consulta"
  on public.waitlist for select to authenticated
  using (public.es_editor_blog());

drop policy if exists "waitlist: el editor la depura" on public.waitlist;
create policy "waitlist: el editor la depura"
  on public.waitlist for delete to authenticated
  using (public.es_editor_blog());
