# 7f. Write a query to display how much business, in dollars, each store brought in.

SELECT sum(payment.amount) as revenue, store.store_id, staff.staff_id 
FROM payment
JOIN staff ON
payment.staff_id = staff.staff_id
join store on
staff.store_id = store.store_id
group by store_id;









