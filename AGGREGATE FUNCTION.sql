CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    department VARCHAR2(50),
    salary NUMBER(10,2));

INSERT INTO Employee VALUES (101, 'Rahul', 'Computer Science', 30000);
INSERT INTO Employee VALUES (102, 'Priya', 'Computer Science', 35000);
INSERT INTO Employee VALUES (103, 'Arun', 'Information Technology', 40000);
INSERT INTO Employee VALUES (104, 'Kiran', 'Information Technology', 45000);
INSERT INTO Employee VALUES (105, 'Anitha', 'Electronics', 38000);

COMMIT;

 COUNT()

SELECT COUNT(*) AS total_employees
FROM Employee;

SUM()

SELECT SUM(salary) AS total_salary
FROM Employee;

AVG()

SELECT AVG(salary) AS average_salary
FROM Employee;

MAX()

SELECT MAX(salary) AS highest_salary
FROM Employee;

MIN()

SELECT MIN(salary) AS lowest_salary
FROM Employee;

SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee;

SELECT
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee
GROUP BY department;

SELECT
    department,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 35000;
