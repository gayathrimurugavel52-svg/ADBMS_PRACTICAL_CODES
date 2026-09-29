DECLARE
    n NUMBER := 5;
    sum NUMBER := 0;
BEGIN
    FOR i IN 1..n LOOP
        sum := sum + (i * i);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of series = ' || sum);
END;
/
