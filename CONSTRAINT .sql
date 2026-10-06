CREATE TABLE Department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) UNIQUE NOT NULL);

CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    age NUMBER CHECK (age >= 18),
    salary NUMBER DEFAULT 25000,
    dept_id NUMBER,

    CONSTRAINT fk_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id));


INSERT INTO Department (dept_id, dept_name)
VALUES (10, 'Computer Science');

INSERT INTO Department (dept_id, dept_name)
VALUES (20, 'Information Technology');

INSERT INTO Department (dept_id, dept_name)
VALUES (30, 'Electronics');


INSERT INTO Employee
    (emp_id, emp_name, email, age, salary, dept_id)
VALUES
    (101, 'Rahul', 'rahul@gmail.com', 21, 30000, 10);

INSERT INTO Employee
    (emp_id, emp_name, email, age, salary, dept_id)
VALUES
    (102, 'Priya', 'priya@gmail.com', 22, 35000, 20);

INSERT INTO Employee
    (emp_id, emp_name, email, age, dept_id)
VALUES
    (103, 'Arun', 'arun@gmail.com', 23, 30);

COMMIT;

SELECT * FROM Department;

SELECT * FROM Employee;
