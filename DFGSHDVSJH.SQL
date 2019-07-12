SET serveroutput on;
DECLARE
 V_BULL BOOLEAN := TRUE;
 V_COUNTER NUMBER := 1;
 V_RESULT NUMBER;
BEGIN
  WHILE V_BULL LOOP
    V_RESULT := 19 * V_COUNTER;
    DBMS_OUTPUT.PUT_LINE('19 * '||' '||V_COUNTER||' '||
    '='||' '||V_RESULT);
    V_COUNTER:=V_COUNTER+1;
    
    IF V_COUNTER = 10 THEN
    V_BULL := FALSE;
    END IF;
  END LOOP;
END;
/
  