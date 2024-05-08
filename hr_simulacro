SELECT department_name FROM departments
ORDER by department_name ASC

SELECT DISTINCT salary FROM employees
ORDER by salary DESC

SELECT job_title, min_salary, max_salary FROM jobs
WHERE job_title LIKE "%manager%"
ORDER by min_salary, max_salary DESC

SELECT first_name, last_name, department_name, salary FROM employees e
JOIN departments d ON e.department_id = d.department_id 
WHERE salary >= 9000 AND salary <= 17000
