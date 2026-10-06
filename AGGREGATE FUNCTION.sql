-- Create Employee table

CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    department VARCHAR2(50),
    salary NUMBER(10,2)
);


-- Insert records

INSERT INTO Employee VALUES (101, 'Rahul', 'Computer Science', 30000);
INSERT INTO Employee VALUES (102, 'Priya', 'Computer Science', 35000);
INSERT INTO Employee VALUES (103, 'Arun', 'Information Technology', 40000);
INSERT INTO Employee VALUES (104, 'Kiran', 'Information Technology', 45000);
INSERT INTO Employee VALUES (105, 'Anitha', 'Electronics', 38000);

COMMIT;


-- 1. COUNT()
-- Counts the total number of employees

SELECT COUNT(*) AS total_employees
FROM Employee;


-- 2. SUM()
-- Calculates the total salary

SELECT SUM(salary) AS total_salary
FROM Employee;


-- 3. AVG()
-- Calculates the average salary

SELECT AVG(salary) AS average_salary
FROM Employee;


-- 4. MAX()
-- Finds the highest salary

SELECT MAX(salary) AS highest_salary
FROM Employee;


-- 5. MIN()
-- Finds the lowest salary

SELECT MIN(salary) AS lowest_salary
FROM Employee;


-- 6. Using all aggregate functions together

SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee;


-- 7. Aggregate functions with GROUP BY

SELECT
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee
GROUP BY department;


-- 8. Aggregate functions with HAVING

SELECT
    department,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 35000;
