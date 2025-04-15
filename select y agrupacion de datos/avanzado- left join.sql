-- realizar un LEFT JOIN entre las tablas PERSONAS y DEPARTAMENTOS
-- seleccionando las columnas "NOMBRE","APELLIDO1" y "DNI" de la tabla "PERSONAS"
-- y la columna "DEPARTAMENTO" de la tabla "DEPARTAMENTOS"

SELECT "NOMBRE","APELLIDO1","DNI","DEPARTAMENTO"
FROM "esquema"."PERSONAS" LEFT JOIN "esquema"."DEPARTAMENTOS"
ON "esquema"."PERSONAS"."DEP"="esquema"."DEPARTAMENTOS"."DEP"
