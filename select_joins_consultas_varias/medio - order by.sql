-- consultar la tabla de personas de manera que quede ordenada de forma ascendente por nombre
-- y en caso de repetirse nombre, que se ordene por edad de mayor a menor

-- SELECT * FROM "esquema"."PERSONAS" order by "NOMBRE" ASC, "EDAD" DESC

-- seleccionar las columnas PRODUCTO e IMPORTE de la tabla PEDIDOS
-- y ordenar los resultados de mayor a menor precio

SELECT "PRODUCTO", "IMPORTE" FROM "esquema"."PEDIDOS" ORDER BY "IMPORTE" DESC