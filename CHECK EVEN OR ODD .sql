SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 25;
BEGIN
    IF MOD(n, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is an Even number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is an Odd number');
    END IF;
END;
/
