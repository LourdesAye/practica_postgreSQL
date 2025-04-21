-- función que devuelve un array
CREATE OR REPLACE FUNCTION obtener_nombre_como_array()
RETURNS text[] AS $$
DECLARE 
    nombres text[];
BEGIN
    SELECT ARRAY_AGG(nombre) INTO nombres FROM usuarios; -- ARRAY_AGG convierte columna en array
    RETURN nombres;
END;
$$ LANGUAGE plpgsql;

-- para devolver la columna 
select obtener_nombre_como_array() as array_de_nombres;

-- qué es el $$?
-- “Acá empieza y termina el código en PL/pgSQL”.
-- delimitador de cuerpo (body delimiter).

/*
AS $$
BEGIN
   -- Código aquí
END;
$$ LANGUAGE plpgsql;
*/