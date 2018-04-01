#* 6d. How many copies of the film `Hunchback Impossible` exist in the inventory system?

select count(inventory.inventory_id), film.film_id, film.title
FROM inventory
JOIN film ON
inventory.film_id = film.film_id
group by film.title;
