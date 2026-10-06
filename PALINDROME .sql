DECLARE
    n NUMBER := 121;
    temp NUMBER;
    digit NUMBER;
    reverse_num NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        reverse_num := (reverse_num * 10) + digit;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF n = reverse_num THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Palindrome number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Palindrome number');
    END IF;
END;
/
