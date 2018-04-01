# 7g. Write a query to display for each store its store ID, city, and country.
SELECT store.store_id, city.city, country.country 
FROM store
JOIN address ON
store.address_id = address.address_id
join city on
address.city_id = city.city_id
join country on
country.country_id = city.country_id;
