 # 7e. Display the most frequently rented movies in descending order.

SELECT count(rental.rental_id) as rental_count, inventory.film_id, film.title 
FROM rental
JOIN inventory ON
inventory.inventory_id = rental.rental_id
join film on
film.film_id = inventory.film_id
group by film.title;

