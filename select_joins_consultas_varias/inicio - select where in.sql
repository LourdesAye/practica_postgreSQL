-- Aca devuelve todas las filas de la tabla PEDIDOS
--SELECT * FROM "esquema"."PEDIDOS"

-- seleccionar los pedidos que tenga alguno de estos importes: 150, 500, 600
SELECT * FROM "esquema"."PEDIDOS" WHERE "IMPORTE" IN (150,500,600)