SET SERVEROUTPUT ON;
DECLARE
  V_BOSS VARCHAR2(30 BYTE) :='ALMAS HOSSAIN ANTAR';
  V_OCCUPATION VARCHAR2(40 BYTE) := 'DATABASE ADMINISTRATOR';
  NAME VARCHAR2(20):= 'BOSS';
  WORK VARCHAR2(20):='ENGINEER';
BEGIN
  IF V_BOSS='ALMAS HOSSAIN ANTAR' AND V_OCCUPATION='DATABASE ADMINISTRATOR'
  THEN
    DBMS_OUTPUT.PUT_LINE(NAME);
  END IF;
    DBMS_OUTPUT.PUT_LINE(WORK);
END;
/
SET SERVEROUTPUT ON;
DECLARE
V_NUM NUMBER :=9;
BEGIN
  IF V_NUM > 10 THEN 
  DBMS_OUTPUT.PUT_LINE('INSIDE THE LOP');
  END IF;
  DBMS_OUTPUT.PUT_LINE('OUTSIDE THE LOOP');
END;
/