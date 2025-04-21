-- ALTER : MODIFICAR ESTRUCTURA DE LA TABLA
-- agregar columna, borrar columna, renombrar columna, agregar o eliminar restricciones

-- DELETE : para borrar filas
-- DROP : para borrar tabla, base de datos, schema
-- ALTER : para borra columna

--agrego columna tipo_ocupacion_extra para despues borrarla 
--ALTER TABLE ocupaciones
--ADD tipo_ocupacion_extra varchar(200)

-- validar si se insertó la columna
-- select * from ocupaciones

-- borrar una columna
-- ALTER TABLE ocupaciones
-- DROP COLUMN tipo_ocupacion_extra

--para validar que se haya borrado la columna
select * from ocupaciones




