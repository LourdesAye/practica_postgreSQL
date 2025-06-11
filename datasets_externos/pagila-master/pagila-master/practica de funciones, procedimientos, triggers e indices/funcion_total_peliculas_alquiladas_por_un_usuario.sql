-- Crear una función que devuelva el número total de películas alquiladas por un cliente dado su customer_id

CREATE OR REPLACE FUNCTION sus_peliculas_alquiladas(p_customer_id integer)
RETURNS integer AS $$
DECLARE
 total_peliculas_alquiladas INTEGER;
BEGIN
 SELECT count(*) INTO total_peliculas_alquiladas
 from rental R
 where R.customer_id=p_customer_id;
 
 RETURN total_peliculas_alquiladas;
END;
$$ language plpgsql;

select sus_peliculas_alquiladas(408) as "total_pelis_alquiladas" 

-- para validar se puede hacer en otra query:
/*
select count(*) from rental
where customer_id = 408
*/