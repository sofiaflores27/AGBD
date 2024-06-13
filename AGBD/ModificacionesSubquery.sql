SELECT country_id, country_name FROM countries
WHERE region_id =
    (SELECT region_id FROM regions
	    WHERE region_name LIKE "africa");

SELECT country_id
    FROM countries
    WHERE country_name IN ("Argentina", "Brazil");
///
INSERT INTO regions (region_name)
VALUES ("africa"), ("middle east");

SELECT country_id FROM countries
WHERE country_name IN  ("Israel", "Kuwait");

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name = "middle east")
WHERE country_name = (SELECT country_name FROM countries WHERE country_name LIKE "%Kuwait%")

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name LIKE "africa")
WHERE country_name IN ("Zimbabwe", "Egypt", "Zambia", "Nigeria");

INSERT INTO countries (country_id ,country_name,region_id)
VALUES ("KSA","Arabia Saudi",(SELECT region_id FROM regions WHERE region_name like "middle%")),
      ("LB","Lebano",(SELECT region_id FROM regions WHERE region_name like "middle%")),
      ("KE","Kenya",(SELECT region_id FROM regions WHERE region_name like "africa%")),
      ("TD","Chad",(SELECT region_id FROM regions WHERE region_name like "africa%"));

