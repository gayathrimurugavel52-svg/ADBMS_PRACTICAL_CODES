SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 20;
    b NUMBER := 10;
BEGIN
    -- Arithmetic Operators

    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));
    DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
    DBMS_OUTPUT.PUT_LINE('Remainder = ' || MOD(a, b));


    -- Relational Operators

    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than b');
    END IF;

    IF a <> b THEN
        DBMS_OUTPUT.PUT_LINE('a is not equal to b');
    END IF;


    -- Logical Operators

    IF a > 10 AND b < 20 THEN
        DBMS_OUTPUT.PUT_LINE('AND condition is TRUE');
    END IF;

    IF a > 10 OR b > 20 THEN
        DBMS_OUTPUT.PUT_LINE('OR condition is TRUE');
    END IF;

    IF NOT (a < b) THEN
        DBMS_OUTPUT.PUT_LINE('NOT condition is TRUE');
    END IF;
END;
/
