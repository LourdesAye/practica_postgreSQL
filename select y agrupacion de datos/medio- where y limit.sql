-- Seleccionar las primeras 2 filas de la tabla pedidos cuyo importe sea mayor a 100
SELECT * FROM "esquema"."PEDIDOS" WHERE "IMPORTE">100 LIMIT 2
-- Sin el LIMIT 2 hay 3 filas