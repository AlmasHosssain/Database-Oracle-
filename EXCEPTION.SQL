SET SERVEROUTPUT ON;

DECLARE 
    V_KOS         NUMBER:=25;
    V_GOS         NUMBER:=&input;
    V_EXCEPTION   EXCEPTION ;
    V_RESULT      NUMBER;
BEGIN
  IF V_GOS=0 THEN
    RAISE V_EXCEPTION;
  END IF;
   V_RESULT:= V_KOS/V_GOS;
   DBMS_OUTPUT.PUT_LINE('V_RESULT IS ' || V_RESULT);
  
  EXCEPTION WHEN V_EXCEPTION THEN
  DBMS_OUTPUT.PUT_LINE('ERROR OCCURE!!!!');
END;
/

