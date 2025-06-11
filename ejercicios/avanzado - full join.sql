-- ejercicio FULL JOIN entre las tablas PERSONAS y DEPARTAMENTOS
-- seleccionando las columnas NOMBRE, APELLIDO1, DNI de la tabla personas
-- y la columna DEPARTAMENTO de la tabla DEPARTAMENTOS
-- utilizando la columna en común en ambas tablas

SELECT "NOMBRE","APELLIDO1","DNI","DEPARTAMENTO" 
FROM "esquema"."PERSONAS"
FULL JOIN "esquema"."DEPARTAMENTOS"
ON "esquema"."PERSONAS"."DEP"="esquema"."DEPARTAMENTOS"."DEP"