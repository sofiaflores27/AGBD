UPDATE employees SET salary = ((SELECT salary + ((salary * 35)/100) as salary FROM employees e  
JOIN jobs j on e.job_id = j.job_id
WHERE salary < 8000 AND job_title = "Accountant" or job_title = "Programmer"))

