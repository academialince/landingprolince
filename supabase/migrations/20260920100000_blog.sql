-- Blog de la web pública de ProLince.
--
-- Una sola tabla: los tipos de entrada son datos (columna `tipo` más `datos` jsonb), no
-- esquema, así que añadir «convocatoria» o «prueba física» no es una migración.
--
-- El vocabulario de `estado` es el mismo que usa el módulo de Novedades del producto.

create table if not exists public.blog_posts (
  id             uuid primary key default gen_random_uuid(),
  slug           text not null unique,
  tipo           text not null default 'articulo',
  titulo         text not null,
  entradilla     text,
  cuerpo         text not null default '',
  portada_url    text,
  portada_alt    text,
  estado         text not null default 'borrador',
  publicado_en   timestamptz,
  curso          text,
  etiquetas      text[] not null default '{}',
  seo            jsonb not null default '{}'::jsonb,
  datos          jsonb not null default '{}'::jsonb,
  autor_id       uuid references auth.users (id) on delete set null,
  creado_en      timestamptz not null default now(),
  actualizado_en timestamptz not null default now(),
  constraint blog_posts_estado_check
    check (estado in ('borrador', 'programado', 'publicado', 'retirado'))
);

create index if not exists blog_posts_publicados_idx
  on public.blog_posts (publicado_en desc) where estado = 'publicado';
create index if not exists blog_posts_tipo_idx      on public.blog_posts (tipo);
create index if not exists blog_posts_curso_idx     on public.blog_posts (curso);
create index if not exists blog_posts_etiquetas_idx on public.blog_posts using gin (etiquetas);

-- `actualizado_en` alimenta el lastModified del sitemap, que es la señal con la que un
-- rastreador decide volver a pasar por un artículo. No puede depender de que el cliente lo mande.
create or replace function public.blog_touch()
returns trigger language plpgsql as $$
begin
  new.actualizado_en = now();
  return new;
end;
$$;

drop trigger if exists blog_posts_touch on public.blog_posts;
create trigger blog_posts_touch before update on public.blog_posts
  for each row execute function public.blog_touch();

-- Editor único. Para cambiar la cuenta, se reemplaza el correo aquí y se vuelve a aplicar.
create or replace function public.es_editor_blog()
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select coalesce(auth.jwt() ->> 'email', '') = 'admin@academiaprolince.com'
$$;

revoke all on function public.es_editor_blog() from public;
grant execute on function public.es_editor_blog() to authenticated;

alter table public.blog_posts enable row level security;

-- Un borrador es invisible para el público en la base de datos, no solo en la interfaz.
drop policy if exists "blog: cualquiera lee lo publicado" on public.blog_posts;
create policy "blog: cualquiera lee lo publicado"
  on public.blog_posts for select to anon, authenticated
  using (estado = 'publicado' and publicado_en is not null and publicado_en <= now());

drop policy if exists "blog: el editor gestiona todo" on public.blog_posts;
create policy "blog: el editor gestiona todo"
  on public.blog_posts for all to authenticated
  using (public.es_editor_blog())
  with check (public.es_editor_blog());
