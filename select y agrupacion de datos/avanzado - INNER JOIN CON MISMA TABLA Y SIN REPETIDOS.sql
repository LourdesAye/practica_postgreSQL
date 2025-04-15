-- SELECCIONAR PARES DE PRODUCTOS DE LA TABLA PEDIDOS QUE TENGAN EL MISMO VALOR EN LA COLUMNA CANTIDAD
select P1."PRODUCTO", P2."PRODUCTO", P1."CANTIDAD"
from "esquema"."PEDIDOS" P1
inner join "esquema"."PEDIDOS" P2
ON P1."CANTIDAD"=P2."CANTIDAD"
and P1."ID" < P2."ID"
-- ocurre que raton ordenador coinciden varias veces porque son compras varias del mismo producto
-- para resolver eso esta esta consulta:

SELECT DISTINCT -- DISTINCT elimina repeticiones exactas, en este caso, pares iguales
    LEAST(P1."PRODUCTO", P2."PRODUCTO") AS "Producto_1", -- LEAST se queda con el nombre más chico del par (orden alfabetico)
    GREATEST(P1."PRODUCTO", P2."PRODUCTO") AS "Producto_2", -- GREATEST se queda con el nombre más grande del par (orden alfabetico)
-- LEAST y GREATEST ponen los productos siempre en el mismo orden, para no tener (Mouse, Ordenador) y (Ordenador, Mouse).
    P1."CANTIDAD"
FROM "esquema"."PEDIDOS" P1
INNER JOIN "esquema"."PEDIDOS" P2
    ON P1."CANTIDAD" = P2."CANTIDAD"
   AND P1."ID" < P2."ID"

 -- esta consulta dice:
 -- dame todos los pares de productos que tengan la misma cantidad, sin comparar un producto consigo mismo 
 -- y que no haya par repetidos espejos. (esto con la condición del ON < del inner join)
 -- sin embargo puede haber pares iguales de productos porque puede haber pedidos de igual producto
 -- realizados en distintos días 
 -- entonces podria pasar que haya repetidos por eso. 
 -- entonces podria haber repetidos y espejados pero no por la condición del join sino
 -- por la forma en que esta hecha la tabla de que puede haber varios pedidos de la misma cantidad 
 -- pero en distintas fechas
 -- entonces se usa  least y greatest. 
 -- least va tomando el que esta antes alfabeticamente de un par 
 -- y least toma el que esta depues alfabeticamente, de manera que deja pares repetidos iguales 
 -- aunque originalmente eran invertidos. 
 -- luego con el distint, a partir de esos pares iguales solo queda uno
   