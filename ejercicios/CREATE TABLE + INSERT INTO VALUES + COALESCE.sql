-- crear una nueva tabla de precios que tengan las siguientes columnas
   -- articulo (VARCHAR)
   -- precio (INTEGER)
   -- descuento (INTEGER)

/*
CREATE TABLE precios(
  id_precio SERIAL PRIMARY KEY,
  articulo VARCHAR(300) NOT NULL,
  precio INTEGER CHECK (precio>0),
  descuento INTEGER
)
*/

--verificar si se creo la tabla
-- select * from precios

--Insertar 3 filas en la nueva tabla de precios
  -- articulo = 'impresora', precio = 100, descuentos = 10
  -- articulo = 'raton', precio = 30, descuentos = 5
  -- articulo = 'ordenador', precio = 500, descuentos = null

/*
INSERT INTO precios (articulo, precio, descuento)
VALUES ('impresora',100, 10),('raton',30, 5),('ordenador',500,NULL);
*/

--validar si la tabla se fue completando
-- SELECT * from precios

-- Seleccionar las columnas articulo, precio y precio_final (precio - descuento)
  -- utilizar COALESCE para calcular el precio_final (si algun valor es null cambiarlo por 0)

-- COALESCE(valor1, valor2, ..., valorN) devuelve el primer valor que NO sea NULL de la lista que le pasás.
-- resultado_final = precio - descuento 
-- Sin COALESCE, cuando uno de esos valores es NULL, el resultado va a ser también NULL

SELECT articulo,precio, 
  COALESCE(precio, 0) - COALESCE(descuento, 0) AS resultado_final
FROM precios;

-- Si precio es NULL, toma 0.
-- Si descuento es NULL, también toma 0.
-- Entonces siempre tenés un resultado numérico.