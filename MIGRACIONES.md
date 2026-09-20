# Base de datos de la web

La web tiene **su propio proyecto de Supabase**, separado del producto. Comparten organización
(`Prolince`) y nada más.

| | |
| --- | --- |
| Proyecto | `prolince-landing` |
| Reference ID | `mfclhieniekxksdfnabj` |
| Región | West EU (Ireland) |
| URL | `https://mfclhieniekxksdfnabj.supabase.co` |

El producto usa `AcademiaProlince` (`nmazxerskrvofjtepkfk`). No se tocan entre sí.

## Aplicar una migración

```bash
supabase db push --dry-run   # comprobar qué subiría
supabase db push
```

Hace falta la contraseña de la base de datos, que se generó al crear el proyecto y **está en el
gestor de contraseñas, no en el repositorio**. Se puede pasar con `SUPABASE_DB_PASSWORD`.

## Historia

Durante unas horas el blog vivió en la base de datos del producto, y eso dio dos problemas que
conviene recordar por si alguien vuelve a plantear compartir backend:

1. **Colisión de versiones.** `20260920100000_blog.sql` chocaba con `assessment_categories` del
   producto, así que `supabase db push` lo habría ignorado en silencio y la tabla nunca se
   habría creado.
2. **Historial único.** Una base de datos solo admite un historial de migraciones. Con el
   fichero en este repositorio, el CLI se negaba a aplicarlo y proponía marcar como revertidas
   las 22 migraciones del producto.

Con un proyecto propio, este repositorio es el único que toca su base de datos y ninguno de los
dos problemas existe. Los objetos que llegaron a crearse en el producto se retiraron con
`20260920174500_drop_blog.sql`, tras comprobar que la tabla estaba vacía.

## Lo que ya no se comparte

El plan anterior daba por hecho que el blog reutilizaría dos piezas del producto. Con proyectos
separados ya no existen aquí:

- **`public.is_superadmin()`** sobre `platform_admins`. En su lugar, la puerta de escritura es
  `public.es_editor_blog()`, que comprueba el correo del editor. Es autónoma.
- **El bucket `public-assets`** para imágenes. De momento el editor acepta la portada como URL,
  así que no hace falta. Si algún día se quieren subidas, hay que crear un bucket en este
  proyecto con sus propias políticas.
