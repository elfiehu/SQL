# 8a. In your new role as an executive, you would like to have an easy way of viewing the Top five genres by gross revenue. 
# Use the solution from the problem above to create a view. If you haven't solved 7h, you can substitute another query to create a view.
create view top_5_gross_revenue_cetegory as 
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