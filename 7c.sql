# 7c. You want to run an email marketing campaign in Canada, for which you will need the names and email addresses of all Canadian customers. 
# Use joins to retrieve this information.
SELECT customer.first_name, customer.last_name, customer.email, country.country 
FROM customer
inner JOIN store ON
store.store_id = customer.store_id
inner join address on
address.address_id = store.address_id
inner join city on
city.city_id = address.city_id
inner join country on
country.country_id = city.country_id
where country.country = 'Canada'; 