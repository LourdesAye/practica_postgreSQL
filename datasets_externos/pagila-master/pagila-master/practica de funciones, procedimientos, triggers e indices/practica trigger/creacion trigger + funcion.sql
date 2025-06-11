-- Escribe el trigger que actualice el last_update de una película cuando se cambie su descripción.

-- Paso 1: Función del trigger
CREATE OR REPLACE FUNCTION cambiar_last_update()
RETURNS TRIGGER AS $$
BEGIN
  NEW.last_update := NOW();  -- cambia el valor directamente no necesita update
 RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Paso 2: Trigger que se activa al actualizar la descripción
CREATE TRIGGER actualizar_last_update
BEFORE UPDATE OF description ON film
FOR EACH ROW
EXECUTE FUNCTION cambiar_last_update();
