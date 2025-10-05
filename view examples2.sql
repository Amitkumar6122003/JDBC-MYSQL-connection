View with Aggregate Function
CREATE VIEW Department_Salary_Summary AS
SELECT dept_id, AVG(salary) AS avg_salary, COUNT(*) AS total_employees
FROM Employees
GROUP BY dept_id;


Shows average salary and employee count per department.

 5. View Using ORDER BY
CREATE VIEW Top_Paid_Employees AS
SELECT emp_id, emp_name, salary
FROM Employees
ORDER BY salary DESC;


 Displays employees sorted by salary (highest first).

 6. Update Data Using View
UPDATE Employee_View
SET salary = salary + 5000
WHERE emp_id = 101;


Updates the base table data using the view (works if the view is updatable).