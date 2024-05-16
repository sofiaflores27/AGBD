SELECT name, address_street_name, address_number FROM person
WHERE address_street_name LIKE "%Franklin Ave%"
ORDER by address_number DESC 
