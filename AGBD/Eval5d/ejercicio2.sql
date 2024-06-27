SELECT e.first_name, e.last_name, j.job_title, d.department_name  FROM employees e
JOIN departments d ON e.department_id = d.department_id 
JOIN jobs j ON j.job_title = j.job_title