-- Ejercicio
-- Seleccionar los productos cuyo precio esté comprendido entre 40 y 600 (ambos inlcuidos)
--SELECT * FROM "esquema"."PRODUCTOS" WHERE "PRECIO" BETWEEN 40 AND 600

-- Ejemplo buscando rango de importes en tabla pedidos
-- SELECT * FROM "esquema"."PEDIDOS" WHERE "IMPORTE" BETWEEN 100 AND 200

--Ejemplo buscando rango de fecha tabla pedidos
-- NO incluye fechas 2020-08-04 ya que considera desde 00:00:00 hora como tope máximo
SELECT * FROM "esquema"."PEDIDOS" where "FECHA" BETWEEN '2020-08-02' AND '2020-08-04'

