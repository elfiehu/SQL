 #6e. Using the tables `payment` and `customer` and the `JOIN` command, list the total paid by each customer. 
 #List the customers alphabetically by last name:

select sum(payment.amount), payment.customer_id, customer.first_name, customer.last_name
FROM payment
JOIN customer ON
payment.customer_id = customer.customer_id
group by customer.customer_id
order by customer.last_name asc;