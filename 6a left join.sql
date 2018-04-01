SELECT first_name, last_name, address
FROM sakila.staff
LEFT JOIN sakila.address
ON staff.address_id = address.address_id;