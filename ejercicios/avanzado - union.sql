--utilizar union para unir los resultados de dos select
-- SELECT 1: seleccionar producto, importe y fecha de los pedidos cuyo importe sea igual a 150
-- SELECT 2: seleccionar producto, importe y fecha de los pedidos cuyo producto sea un ORDENADOR

SELECT "PRODUCTO","IMPORTE","FECHA"
FROM "esquema"."PEDIDOS" 
WHERE "IMPORTE"=150
UNION
SELECT "PRODUCTO","IMPORTE","FECHA"
FROM "esquema"."PEDIDOS"
WHERE "PRODUCTO"='ORDENADOR'