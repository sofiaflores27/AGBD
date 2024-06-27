SELECT j.job_title AS TituloDeTrabajo,
       COUNT(*) AS CantidadDeEmpleados,
       SUM(e.salary) AS SalarioTotal
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title;