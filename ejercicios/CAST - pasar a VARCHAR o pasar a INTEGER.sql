-- Ejercicio
-- Seleccionar las columnas precio y una nueva llamada longitud 
-- siendo longitud el numero de caracteres del campo precio

-- valiando cuales son las columnas y filas de la tabla precios
-- select * from precios

select articulo, precio, length(cast(precio as varchar)) as longitud_precio
from precios


