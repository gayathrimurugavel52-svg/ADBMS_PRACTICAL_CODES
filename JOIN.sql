CREATE TABLE Department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50));

CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    dept_id NUMBER,
    CONSTRAINT fk_employee_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id));

INSERT INTO Department VALUES (10, 'Computer Science');
INSERT INTO Department VALUES (20, 'Information Technology');
INSERT INTO Department VALUES (30, 'Electronics');
INSERT INTO Department VALUES (40, 'Mechanical');

INSERT INTO Employee VALUES (101, 'Rahul', 30000, 10);
INSERT INTO Employee VALUES (102, 'Priya', 35000, 20);
INSERT INTO Employee VALUES (103, 'Arun', 40000, 10);
INSERT INTO Employee VALUES (104, 'Kiran', 32000, 30);


COMMIT;

 INNER JOIN

SELECT
    Employee.emp_id,
    Employee.emp_name,
    Employee.salary,
    Department.dept_name
FROM Employee
INNER JOIN Department
ON Employee.dept_id = Department.dept_id;

LEFT OUTER JOIN

SELECT
    Employee.emp_id,
    Employee.emp_name,
    Employee.salary,
    Department.dept_name
FROM Employee
LEFT OUTER JOIN Department
ON Employee.dept_id = Department.dept_id;

RIGHT OUTER JOIN

SELECT
    Employee.emp_id,
    Employee.emp_name,
    Employee.salary,
    Department.dept_name
FROM Employee
RIGHT OUTER JOIN Department
ON Employee.dept_id = Department.dept_id;

FULL OUTER JOIN

SELECT
    Employee.emp_id,
    Employee.emp_name,
    Employee.salary,
    Department.dept_name
FROM Employee
FULL OUTER JOIN Department
ON Employee.dept_id = Department.dept_id;

CROSS JOIN

SELECT
    Employee.emp_name,
    Department.dept_name
FROM Employee
CROSS JOIN Department;
