-- select * from film
--'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies'
--'2022-09-10 17:46:03.905795+01'

UPDATE film
--SET description = 'Nueva descripción para probar el trigger'
SET description = 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies'
WHERE film_id = 1;

-- Verificá si el campo last_update cambió:
SELECT title,description,last_update
FROM film
WHERE film_id = 1;
