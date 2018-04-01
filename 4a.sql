SELECT last_name,COUNT(DISTINCT(actor_id))
FROM sakila.actor
GROUP BY last_name;