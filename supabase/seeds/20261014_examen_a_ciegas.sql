-- Alinea «Cómo es el examen de conocimientos» con «Cómo se calcula la nota»: con cuatro opciones,
-- contestar a ciegas sale a 0 de media (1/4 − 3/4 · 1/3 = 0); resta en la práctica porque las
-- opciones falsas están pensadas para atraer. (Sin enlace al artículo de la nota: sale el 18/10.)
-- Pegar en Supabase > SQL Editor y pulsar Run. Debe decir «1 row affected».

update public.blog_posts
set cuerpo = replace(
  cuerpo,
  '**Contestar a ciegas resta.** Si no tienes nada, en blanco.',
  '**Contestar a ciegas no suma.** De media sale a cero, y en la práctica resta: las opciones falsas están hechas para atraerte. Si no tienes nada, en blanco.'
)
where slug = 'examen-conocimientos-guardia-civil-estructura'
  and cuerpo like '%**Contestar a ciegas resta.** Si no tienes nada, en blanco.%';
