CREATE OR REPLACE PROCEDURE PRO_FIRST
IS
  V_NAME VARCHAR2(30) :='HE IS THE BEST';
  V_WORK VARCHAR2(30) :='HE IS A SOFTWARE ENGINEER';
BEGIN
  DBMS_OUTPUT.PUT_LINE(V_NAME||' '||V_WORK);
END;
/
SET SERVEROUTPUT ON;
EXECUTE PRO_FIRST;
/
BEGIN
PRO_FIRST;
END;
/
