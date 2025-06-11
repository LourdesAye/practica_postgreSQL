-- group by + having SIEMPRE porque having es establecer condiciones sobre columnas modificadas por operaciones 
-- NUNCA group by + where porque where es para columnas no modificadas con operaciones

-- agrupa por producto, de cada agrupación por producto hace la suma dentro de esa agrupación
SELECT "PRODUCTO", SUM("IMPORTE") AS "SUMA" 
FROM "esquema"."PEDIDOS"
GROUP BY "PRODUCTO"
HAVING SUM("IMPORTE")>200 -- selecciona de cada suma por agrupacion las que tengan valor mayor a 200
-- no va SUMA, si va SUM("IMPORTE") porque la asignacion de nombre de la columna
-- se da después de la ejecución de todas las instrucciones

-- mostrar la columna PRODUCTO y Precio Renombrada como valor de la tabla productos
-- SELECT "PRODUCTO", "PRECIO" as "VALOR" 
-- from "esquema"."PRODUCTOS"
