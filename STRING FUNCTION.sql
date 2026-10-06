CREATE TABLE Student (
    student_id NUMBER,
    student_name VARCHAR2(50));

INSERT INTO Student VALUES (101, 'Rahul');
INSERT INTO Student VALUES (102, 'Priya');
INSERT INTO Student VALUES (103, 'Arun');

COMMIT;

SELECT student_name,
       UPPER(student_name) AS UPPER_NAME,
       LOWER(student_name) AS LOWER_NAME,
       LENGTH(student_name) AS NAME_LENGTH,
       SUBSTR(student_name, 1, 3) AS SUB_STRING,
       INSTR(student_name, 'a') AS POSITION
FROM Student;

SELECT
    'Hello' || ' ' || 'World' AS CONCATENATION,
    UPPER('oracle') AS UPPER_CASE,
    LOWER('DATABASE') AS LOWER_CASE,
    INITCAP('oracle database') AS INIT_CAPITAL,
    LENGTH('Oracle') AS STRING_LENGTH,
    SUBSTR('Oracle', 1, 3) AS SUB_STRING,
    INSTR('Oracle Database', 'Database') AS POSITION,
    TRIM('   Oracle   ') AS TRIMMED_STRING,
    REPLACE('Oracle SQL', 'SQL', 'Database') AS REPLACED_STRING
FROM DUAL;
