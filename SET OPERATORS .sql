CREATE TABLE Student1 (
    student_id NUMBER,
    student_name VARCHAR2(50));

CREATE TABLE Student2 (
    student_id NUMBER,
    student_name VARCHAR2(50));

INSERT INTO Student1 VALUES (101, 'Rahul');
INSERT INTO Student1 VALUES (102, 'Priya');
INSERT INTO Student1 VALUES (103, 'Arun');

INSERT INTO Student2 VALUES (103, 'Arun');
INSERT INTO Student2 VALUES (104, 'Kiran');
INSERT INTO Student2 VALUES (105, 'Anitha');

COMMIT;

SELECT student_id, student_name
FROM Student1
UNION
SELECT student_id, student_name
FROM Student2;

SELECT student_id, student_name
FROM Student1
UNION ALL
SELECT student_id, student_name
FROM Student2;

SELECT student_id, student_name
FROM Student1
INTERSECT
SELECT student_id, student_name
FROM Student2;

SELECT student_id, student_name
FROM Student1
MINUS
SELECT student_id, student_name
FROM Student2;




