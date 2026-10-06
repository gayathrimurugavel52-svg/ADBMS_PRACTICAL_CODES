CREATE TABLE Department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50),
    location VARCHAR2(50));

CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    dept_id NUMBER,
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id));


INSERT INTO Department VALUES (10, 'Computer Science', 'Chennai');
INSERT INTO Department VALUES (20, 'Information Technology', 'Bangalore');
INSERT INTO Department VALUES (30, 'Electronics', 'Chennai');


INSERT INTO Employee VALUES (101, 'Rahul', 30000, 10);
INSERT INTO Employee VALUES (102, 'Priya', 45000, 20);
INSERT INTO Employee VALUES (103, 'Arun', 35000, 10);
INSERT INTO Employee VALUES (104, 'Kiran', 50000, 30);
INSERT INTO Employee VALUES (105, 'Anitha', 40000, 20);

COMMIT;

Single-row nested subquery

SELECT emp_id, emp_name, salary
FROM Employee
WHERE salary > (
    SELECT salary
    FROM Employee
    WHERE emp_name = 'Rahul');

Nested subquery using IN

SELECT emp_id, emp_name, salary, dept_id
FROM Employee
WHERE dept_id IN (
    SELECT dept_id
    FROM Department
    WHERE location = 'Chennai');

Nested subquery using MAX

SELECT emp_id, emp_name, salary
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee);

 Nested subquery using AVG

SELECT emp_id, emp_name, salary
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee);

 Multi-level nested subquery

SELECT emp_id, emp_name, salary
FROM Employee
WHERE dept_id = (
    SELECT dept_id
    FROM Department
    WHERE location = 'Bangalore');

 Nested subquery using EXISTS
   
SELECT dept_id, dept_name
FROM Department D
WHERE EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.dept_id = D.dept_id);
