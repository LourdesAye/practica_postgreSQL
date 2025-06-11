--importar un fichero .csv
-- tiene 3 columnas

-- paso 1: crear tabla con 3 columnas
/*
CREATE TABLE tabla1(
 columna1 VARCHAR(50),
 columna2 VARCHAR(50),
 columna3 VARCHAR(50)
)
*/

-- Verificar si fue creada
-- select * from tabla1

-- luego de crear la tabla hay que ir a la misma y cargar desde allí con el import
-- agreagndo el archivo y el delimitador
-- si quisiera podria eliminar una columna de la tabla y no inlcuirla (no se importaria)
-- aceptar la importacion

-- validar que se hayan cargado los datos
select * from tabla1
