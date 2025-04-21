-- Seleccionar los productos que tengan la palabra TINTA en la descripción del producto
-- LIKE para decir que contiene ciertas letras o caracteres
-- ILIKE para que no sea sensible a mayuscula y minúscula
SELECT * FROM "esquema"."PRODUCTOS" WHERE "DESCRIPCION" ILIKE '%tinta%' 