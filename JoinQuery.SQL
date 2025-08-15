SELECT e.*, d.department_name
FROM employee e
JOIN department d
ON e.department_id = d.department_id
ORDER BY e.First_Name ASC;
