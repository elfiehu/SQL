#6c. List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. Use inner join.

select count(film_actor.actor_id), film_actor.film_id, film.title
FROM film_actor
INNER JOIN film ON
film_actor.film_id = film.film_id
group by title;









