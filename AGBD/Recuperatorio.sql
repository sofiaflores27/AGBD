1-
SELECT 
    jobs.job_title AS Tipo_de_Trabajo,
    COUNT(employees.employee_id) AS Cantidad_de_Empleados,
    SUM(employees.salary) AS Gasto_Total_En_Sueldos
FROM 
    employees
JOIN 
    jobs ON employees.job_id = jobs.job_id
GROUP BY 
    jobs.job_title
ORDER BY salary DESC;


2-
SELECT 
    employees.first_name,
    employees.last_name,
    jobs.job_title,
    departments.department_name,
    locations.city
FROM 
    employees
JOIN 
    jobs ON employees.job_id = jobs.job_id
JOIN 
    departments ON employees.department_id = departments.department_id
JOIN 
    locations ON departments.location_id = locations.location_id;


3-
UPDATE employees SET salary = ((SELECT salary + ((salary * 55)/100) as salary FROM employees e  
JOIN departments d on e.department_id = d.department_id
WHERE salary < 7500 AND department_name = "Finance"))


4-
DELETE FROM employees WHERE department_id = 2 ;
DELETE FROM departments WHERE location_id = 1800 ;
DELETE FROM locations WHERE  country_id = "CA" ;

5-
SELECT employee_id, first_name, last_name, phone_number FROM employees
UPDATE employees SET phone_number = "333.444.555"
WHERE phone_number is NULL;

6-
INSERT INTO departments (department_name, location_id)
VALUES ('Consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));

INSERT INTO jobs (job_title, min_salary,max_salary)
VALUES ('Consultant', 1200 , 3000);

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, job_id, department_id, manager_id)
VALUES('Raul', 'Lopez', 'rlopez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       105),
         ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       106),
         ('Laura', 'Fernandez', 'lfernandez@gmail.com', '334.445.556', '2024-07-01', 5000,
       (SELECT job_id FROM jobs WHERE job_title = 'Consultant'),
       (SELECT department_id FROM departments WHERE department_name = 'Consultants'),
       107);
