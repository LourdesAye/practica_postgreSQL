-- Consultando la tabla pedidos, 
-- LAS FILAS CUYO IMPORTE SEA MAYOR A 100 Y QUE HAYA SOLICITADO VARIAS CANTIDADES
SELECT * FROM "esquema"."PEDIDOS" WHERE "IMPORTE">100 AND "CANTIDAD">1
-- Devuelve 1 sola fila, si quita lo de cantidad >1 devuelve 3 filas

