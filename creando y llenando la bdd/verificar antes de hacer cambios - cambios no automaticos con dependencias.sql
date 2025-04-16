--para ver dependencias de una columna en otras tablas
SELECT *
FROM information_schema.constraint_column_usage
WHERE table_name = 'usuarios' AND column_name = 'id_usuario';

-- para ver si tabla aparece en algun triggers
SELECT *
FROM information_schema.triggers
WHERE event_object_table = 'usuarios'