CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER(10,2));

INSERT INTO Employee VALUES (101, 'Rahul', 32500.75);
INSERT INTO Employee VALUES (102, 'Priya', 45750.45);
INSERT INTO Employee VALUES (103, 'Arun', 38999.99);
INSERT INTO Employee VALUES (104, 'Kiran', 52125.65);

COMMIT;

ROUND()

SELECT emp_name, salary, ROUND(salary) AS rounded_salary
FROM Employee;

 CEIL()

SELECT emp_name, salary, CEIL(salary) AS ceil_salary
FROM Employee;

 FLOOR()

SELECT emp_name, salary, FLOOR(salary) AS floor_salary
FROM Employee;

 TRUNC()

SELECT emp_name, salary, TRUNC(salary) AS truncated_salary
FROM Employee;

 MOD()

SELECT emp_id, MOD(emp_id, 2) AS remainder
FROM Employee;

 ABS()

SELECT ABS(-500) AS absolute_value
FROM DUAL;

POWER()

SELECT POWER(2, 3) AS power_value
FROM DUAL;

 SQRT()

SELECT SQRT(144) AS square_root
FROM DUAL;

 SIGN()

SELECT SIGN(-25) AS sign_value
FROM DUAL;

 REMAINDER()

SELECT REMAINDER(10, 3) AS remainder_value
FROM DUAL;
