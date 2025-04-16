-- VISTA 
-- cuándo se usa

--  se usan cuando querés guardar una consulta como si fuera una tabla virtual, 
-- para poder reutilizarla más fácilmente, mejorar la organización o simplificar código.

-- Si tenés una consulta larga con joins, filtros, agregaciones, etc., 
-- podés guardarla como vista y consultarla más fácil después.

-- Ocultás la lógica compleja a quienes usan los datos. 
-- Por ejemplo, una vista puede mostrar solo las columnas necesarias, con nombres amigables.

-- Podés permitir que un usuario vea una vista (por ejemplo, solo ciertas columnas o filas) 
-- sin darle acceso directo a la tabla original.

-- Para informes repetitivos (como ratios, promedios, conteos), podés crear una vista 
-- y consultarla sin repetir todo cada vez.

-- VISTA
-- ejercicio 1
-- crear vista de la tabla usuario que devuelva solo los correos electronicos

/*
CREATE VIEW mails AS
select nombre, mail
from usuarios
*/

-- consultar vista
-- select * from mails -- va nombre de la vista en lugar de nombre de una tabla

-- para modificar una vista
-- se puede usar create or replace view
-- alter view + rename to

-- CREATE OR REPLACE VIEW mails AS
-- select nombre, mail from usuarios -- debe tener igual cantidad y lista de campos cuidado 

-- se verifica si se modifico consultando
-- select * from mails

-- se renombra
-- alter view mails
-- rename to correos

-- para verificar si cambio
-- select * from correos

-- eliminar vista
-- drop view correos

