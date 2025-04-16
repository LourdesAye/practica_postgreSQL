-- Ejercicio

-- Crear tabla pedidos con las columnas
  -- id_pedido SERIAL INTEGER
  -- id_producto INTEGER
  -- cantidad INTEGER
  -- importe_total INTEGER

-- Insertar las siguientes filas
  -- id_producto = 1, cantidad = 2, importe_total= 100
  -- id_producto = 2, cantidad = 3, importe_total= 90

-- Crear la tabla productos con las columnas
  -- id_producto SERIAL 
  -- nombre VARCHAR(50)
  -- precio INTEGER

-- Insertar las siguientes filas
  -- nombre = 'Impresora', precio = 50
  -- nombre = 'Raton', precio = 30

-- Crear un inner join entre la tabla productos y pedidos para seleccionar nombre(productos) 
-- y cantidad(pedidos)

-- Crear una vista productos_vendidos que almacene los datos del JOIN anterior
