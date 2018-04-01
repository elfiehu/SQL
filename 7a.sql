# 7a. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. As an unintended consequence, 
# films starting with the letters `K` and `Q` have also soared in popularity. 
# Use subqueries to display the titles of movies starting with the letters `K` and `Q` whose language is English.

select sakila.language.name as film_language, film.film_id, film.title
from sakila.film
join sakila.language
on sakila.language.language_id = sakila.film.language_id;

SELECT film.title
FROM sakila.film
WHERE film.film_language = 'English' 
and film.title like 'K%' or 'Q%';
 

