-- Publicaciones para redes sociales que se preparan fuera del panel (vídeos de Remotion en
-- videos/) y que el editor descarga desde /admin/publicaciones. Nada de esto es público: tanto
-- la tabla como el bucket solo los ve quien pasa `es_editor_blog()`.
--
-- Las sube videos/pregunta-del-dia/publicar.mjs con la service role key, que vive solo en el
-- entorno donde se generan los vídeos, nunca en este repositorio ni en Vercel.

create table if not exists public.publicaciones (
  id           uuid primary key default gen_random_uuid(),
  tipo         text not null,
  fecha        date not null,
  titulo       text not null,
  descripcion  text not null default '',
  video_path   text,
  portada_path text,
  datos        jsonb not null default '{}'::jsonb,
  creado_en    timestamptz not null default now(),
  constraint publicaciones_tipo_check check (tipo in ('pregunta-del-dia')),
  constraint publicaciones_tipo_fecha_key unique (tipo, fecha)
);

create index if not exists publicaciones_tipo_fecha_idx on public.publicaciones (tipo, fecha desc);

alter table public.publicaciones enable row level security;

drop policy if exists "publicaciones: el editor gestiona todo" on public.publicaciones;
create policy "publicaciones: el editor gestiona todo"
  on public.publicaciones for all to authenticated
  using (public.es_editor_blog())
  with check (public.es_editor_blog());

-- Bucket privado: los vídeos se sirven con URLs firmadas de corta duración.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('publicaciones', 'publicaciones', false, 52428800, array['video/mp4', 'image/png', 'text/plain'])
on conflict (id) do update
  set public = excluded.public,
      file_size_limit = excluded.file_size_limit,
      allowed_mime_types = excluded.allowed_mime_types;

drop policy if exists "publicaciones: el editor lee los archivos" on storage.objects;
create policy "publicaciones: el editor lee los archivos"
  on storage.objects for select to authenticated
  using (bucket_id = 'publicaciones' and public.es_editor_blog());

drop policy if exists "publicaciones: el editor borra los archivos" on storage.objects;
create policy "publicaciones: el editor borra los archivos"
  on storage.objects for delete to authenticated
  using (bucket_id = 'publicaciones' and public.es_editor_blog());
