CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);




CREATE TABLE employee_project (
    emp_id INT,
    project_id INT,
    PRIMARY KEY (emp_id, project_id)
);
