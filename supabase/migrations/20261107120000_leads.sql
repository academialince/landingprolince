-- Leads de las landing de captación (anuncios de Instagram: «¿Qué tipo de opositor eres?» y las
-- que vengan). Una sola tabla para todas: `recurso` dice de qué landing viene cada lead y
-- `resultado` guarda lo que le salió (perfil, nota, apto…), para segmentar el seguimiento.
--
-- Mismo criterio que la lista de espera: cualquiera puede dejar sus datos, pero solo el editor
-- del panel puede leerlos, porque la clave anónima viaja en el navegador.

create table if not exists public.leads (
  id                uuid primary key default gen_random_uuid(),
  recurso           text not null,
  nombre            text not null,
  email             text not null,
  telefono          text,
  resultado         text,
  respuestas        jsonb not null default '{}',
  -- utm_source, utm_medium, utm_campaign, utm_content, utm_term: de qué anuncio viene.
  utm               jsonb not null default '{}',
  acepta_privacidad boolean not null default false,
  creado_en         timestamptz not null default now(),
  constraint leads_recurso_check  check (recurso ~ '^[a-z0-9-]{2,60}$'),
  constraint leads_nombre_check   check (char_length(nombre) between 2 and 120),
  constraint leads_email_check    check (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$' and char_length(email) <= 254),
  constraint leads_telefono_check check (telefono is null or telefono ~ '^\+?[0-9]{9,15}$'),
  constraint leads_resultado_check check (resultado is null or char_length(resultado) <= 60),
  -- Sin consentimiento no se guarda nada, aunque alguien salte la validación del formulario.
  constraint leads_privacidad_check check (acepta_privacidad)
);

-- Se permiten repeticiones (la misma persona puede hacer el test dos veces o probar otra
-- landing): cada fila es una conversión. Para contar personas, agrupar por lower(email).
create index if not exists leads_creado_idx  on public.leads (creado_en desc);
create index if not exists leads_recurso_idx on public.leads (recurso, creado_en desc);
create index if not exists leads_email_idx   on public.leads (lower(email));

alter table public.leads enable row level security;

drop policy if exists "leads: cualquiera deja sus datos" on public.leads;
create policy "leads: cualquiera deja sus datos"
  on public.leads for insert to anon, authenticated
  with check (true);

drop policy if exists "leads: el editor los consulta" on public.leads;
create policy "leads: el editor los consulta"
  on public.leads for select to authenticated
  using (public.es_editor_blog());

drop policy if exists "leads: el editor los depura" on public.leads;
create policy "leads: el editor los depura"
  on public.leads for delete to authenticated
  using (public.es_editor_blog());
