-- procedimeinto que inserta un cliente para pruebas,recibiendo parametros
CREATE OR REPLACE PROCEDURE insertar_cliente_param(
  nombre TEXT,
  apellido TEXT,
  email TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO customer (store_id, first_name, last_name, email, address_id, active)
  VALUES (1, nombre, apellido, email, 1, 1);
END;
$$;