SET SERVEROUTPUT ON;
  DECLARE 
    TYPE ERT IS TABLE OF NUMBER;
    V_VAR  ERT := ERT(2,34,77,56,23,23,45);
  BEGIN
    DBMS_OUTPUT.PUT_LINE('FIRST INDEX IS '|| V_VAR(V_VAR.FIRST));
    DBMS_OUTPUT.PUT_LINE('LAST INDEX IS '|| V_VAR(V_VAR.LAST));
  END;
  /