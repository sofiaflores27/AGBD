SELECT name, car_make,car_model, plate_number FROM person n
JOIN drivers_license l on n.id = l.id
ORDER by gender
