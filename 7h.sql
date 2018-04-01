# 7h. List the top five genres in gross revenue in descending order. 
# (**Hint**: you may need to use the following tables: category, film_category, inventory, payment, and rental.)
SELECT sum(payment.amount), category.name 
FROM payment
inner JOIN rental ON
rental.rental_id = payment.rental_id
inner join inventory on
inventory.inventory_id = rental.inventory_id
inner join film_category on
film_category.film_id = inventory.film_id
inner join category on
category.category_id = film_category.category_id
group by category.name
order by sum(payment.amount) desc limit 5; 