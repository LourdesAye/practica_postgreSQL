-- procedimeinto que inserta un cliente para pruebas, no recibe parametros
CREATE OR REPLACE PROCEDURE insertar_cliente_tests()
LANGUAGE plpgsql
AS $$
BEGIN
 INSERT INTO customer (store_id, first_name, last_name, address_id, active)
 VALUES (2, 'PRUEBA', 'SIN_PARAM', 1, 1);
END;
$$;