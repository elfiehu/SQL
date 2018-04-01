# 7d. Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
# Identify all movies categorized as famiy films.

SELECT title
FROM film
WHERE film_id IN
(
  SELECT film_id
  FROM film_category 
  WHERE category_id IN
  (
    SELECT category_id
    FROM category 
    WHERE name = 'Family'
  ) 
);
