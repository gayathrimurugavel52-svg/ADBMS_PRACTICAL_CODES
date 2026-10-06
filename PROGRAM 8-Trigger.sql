CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER);
CREATE TABLE Salary_Log (
    log_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    changed_date DATE);
CREATE SEQUENCE salary_log_seq
START WITH 1
INCREMENT BY 1;

Create Trigger
CREATE OR REPLACE TRIGGER salary_update_trigger
AFTER UPDATE OF salary ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Salary_Log (
        log_id,
        emp_id,
        old_salary,
        new_salary,
        changed_date
    )
    VALUES (
        salary_log_seq.NEXTVAL,
        :OLD.emp_id,
        :OLD.salary,
        :NEW.salary,
        SYSDATE
    );
END;
/
INSERT INTO Employee (emp_id, emp_name, salary)
VALUES (101, 'Rahul', 30000);

COMMIT;
UPDATE Employee
SET salary = 35000
WHERE emp_id = 101;

COMMIT;
SELECT * FROM Employee;

SELECT * FROM Salary_Log;