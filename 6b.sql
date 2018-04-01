SELECT p.staff_id, p.amount, p.payment_date
FROM payment p
JOIN staff s
ON p.staff_id = 1 or 2

SELECT staff_id, SUM(amount) as total_amount
FROM payment p 
GROUP BY p.staff_id WITH ROLLUP;