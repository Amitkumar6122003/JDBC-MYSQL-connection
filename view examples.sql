Create a Simple View
CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, salary
FROM Employees;


 This creates a view that shows only selected columns from the Employees table.

 2. View with a WHERE Condition
CREATE VIEW High_Salary_Employees AS
SELECT emp_id, emp_name, salary
FROM Employees
WHERE salary > 50000;


 Shows only employees earning more than 50,000.

 3. View with JOIN
CREATE VIEW Employee_Department_View AS
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
JOIN Department d ON e.dept_id = d.dept_id;


 Combines employee details with their department names.