SELECT employee_id, first_name, last_name, email, phone_number, department_id FROM employees
UPDATE employees SET phone_number = "303.404.505"
WHERE phone_number is NULL;
