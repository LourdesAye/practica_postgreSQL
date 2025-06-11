-- Ejercicio

-- PARA AGREGAR FOREIGN KEY PRIMERO SE CREAR LA TABLA A LA QUE SE VA A HACER REFERENCIA
-- Crear la tabla productos con las columnas
  -- id_producto SERIAL 
  -- nombre VARCHAR(50)
  -- precio INTEGER

/*
CREATE TABLE productos(
  id_producto SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  precio INTEGER CHECK (precio>0)
)
*/

-- validar si se creo la tabla
-- select * from productos
 
-- Insertar las siguientes filas
  -- nombre = 'Impresora', precio = 50
  -- nombre = 'Raton', precio = 30
/*
INSERT INTO productos(nombre,precio)
VALUES ('Impresora',50),('Raton',30);
*/

-- validar que se haya llenado la tabla
-- select * from productos

-- Crear tabla pedidos con las columnas
  -- id_pedido SERIAL INTEGER
  -- id_producto INTEGER
  -- cantidad INTEGER
  -- importe_total INTEGER

/*
CREATE TABLE pedidos(
 id_pedido SERIAL PRIMARY KEY,
 id_producto INTEGER REFERENCES productos(id_producto), -- Foreign Key
 cantidad INTEGER CHECK (cantidad>0),
 importe_total INTEGER CHECK (importe_total>0)
)
*/

--validar que tabla se haya creado
-- select * from pedidos

-- Insertar las siguientes filas
  -- id_producto = 1, cantidad = 2, importe_total= 100
  -- id_producto = 2, cantidad = 3, importe_total= 90

/*
INSERT INTO pedidos(id_producto,cantidad,importe_total)
VALUES (1,2,100),(2,3,90);
*/

-- validar que se haya llenado de datos la tabla pedidos
-- select * from pedidos

-- Crear un inner join entre la tabla productos y pedidos para seleccionar nombre(productos) 
-- y cantidad(pedidos)

/*
Select PR. "nombre", PE."cantidad"
from productos PR inner join pedidos PE
on PR.id_producto = PE. id_producto
*/

-- Crear una vista productos_vendidos que almacene los datos del JOIN anterior
/*
CREATE OR REPLACE VIEW producto_cantidad_pedida AS
Select PR. "nombre", PE."cantidad"
from productos PR inner join pedidos PE
on PR.id_producto = PE. id_producto
*/

-- validar que la vista devuelva lo deseado
select * from producto_cantidad_pedida -- considerar para la proxima vez el nombre adecuado : productos_vendidos
