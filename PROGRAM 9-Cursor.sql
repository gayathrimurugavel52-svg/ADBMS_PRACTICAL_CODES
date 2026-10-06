CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER);

INSERT INTO Employee VALUES (101, 'Rahul', 30000);
INSERT INTO Employee VALUES (102, 'Priya', 35000);
INSERT INTO Employee VALUES (103, 'Arun', 40000);

COMMIT;

SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, salary
        FROM Employee;

    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_salary Employee.salary%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_salary;

        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_emp_id ||
            '  Name: ' || v_emp_name ||
            '  Salary: ' || v_salary
        );
    END LOOP;

    CLOSE emp_cursor;
END;
/


