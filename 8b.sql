# 8b. How would you display the view that you created in 8a?
create view 8b as
SELECT category.name as category_name, sum(payment.amount) as total_revenue
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