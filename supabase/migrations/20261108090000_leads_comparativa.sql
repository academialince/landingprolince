-- Comparativa de resultados de las landing con nota (simulacro, ortografía, psicotécnico…).
--
-- La tabla `leads` no se puede leer con la clave anónima (son datos personales). Esta función
-- solo devuelve dos números agregados —cuántos resultados hay y cuántos están por debajo del
-- valor dado— para poder decir «has superado al X % de quienes lo han hecho» con datos reales,
-- sin exponer ninguna fila.

create or replace function public.comparativa_lead(p_recurso text, p_valor numeric)
returns table (total bigint, por_debajo bigint)
language sql
stable
security definer
set search_path = ''
as $$
  select
    count(*)                                   as total,
    count(*) filter (where resultado::numeric < p_valor) as por_debajo
  from public.leads
  where recurso = p_recurso
    and resultado ~ '^-?[0-9]+(\.[0-9]+)?$'
$$;

revoke all on function public.comparativa_lead(text, numeric) from public;
grant execute on function public.comparativa_lead(text, numeric) to anon, authenticated;
