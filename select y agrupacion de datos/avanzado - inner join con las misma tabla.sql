-- mostrar pares de productos que tengan el mismo importe en la tabla pedidos
SELECT T1."PRODUCTO", T2."PRODUCTO", T1."IMPORTE"
FROM "esquema"."PEDIDOS" T1
INNER JOIN "esquema"."PEDIDOS" T2
  ON T1."IMPORTE" = T2."IMPORTE"
  AND T1."ID" < T2."ID"

-- T1."ID" != T2."ID" evita la comparacion con si mismo , en este caso no tiene sentido
-- pero no evita duplicados espejos 

--  AND T1."ID" < T2."ID" 
-- evita comparacion con si mismo porque no es verdad que 1<1
-- evita duplicados espejos porque es verdad que 1<2 pero no es verdad que 2<1 