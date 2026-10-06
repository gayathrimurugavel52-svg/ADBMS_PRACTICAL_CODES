SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 48;
    b NUMBER := 18;
    temp NUMBER;
    gcd NUMBER;
BEGIN
    WHILE b <> 0 LOOP
        temp := MOD(a, b);
        a := b;
        b := temp;
    END LOOP;

    gcd := a;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || gcd);
END;
/
