-- Corrige «25 temas» por «23 temas» en los artículos ya publicados (solo cambia esas expresiones).
update public.blog_posts set cuerpo = replace(cuerpo, 'que son 25 temas', 'que son 23 temas') where slug = 'convocatoria-guardia-civil-2026-plazas-calendario';
update public.blog_posts set cuerpo = replace(replace(cuerpo, 'un temario de 25 temas', 'un temario de 23 temas'), 'retiene 25 temas', 'retiene 23 temas') where slug = 'preparar-oposicion-guardia-civil-desde-cero';
update public.blog_posts set cuerpo = replace(cuerpo, 'con los 25 temas trabajados', 'con los 23 temas trabajados') where slug = 'ortografia-gramatica-examen-guardia-civil';
update public.blog_posts set cuerpo = replace(replace(cuerpo, '| 25 temas, inglés', '| 23 temas, inglés'), 'exige 25 temas', 'exige 23 temas') where slug = 'colegio-guardias-jovenes-acceso-guardia-civil';
-- Comprobación: debe devolver 0 filas.
select slug from public.blog_posts where cuerpo ilike '%25 temas%';
