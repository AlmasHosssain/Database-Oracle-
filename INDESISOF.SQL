CREATE TABLE JHK(
  V_NAME VARCHAR2(30)
);
SET SERVEROUTPUT ON;
DECLARE
  TYPE KLI IS TABLE OF NUMBER;
  V_VAR KLI:= KLI(2,45,12,23,78,21,34,56,78,90);
  
  V_COUNT NUMBER;
   
BEGIN
  V_VAR.DELETE(2,4);
  FORALL ID_X IN INDICES OF V_VAR
  INSERT INTO JHK(V_NAME) VALUES (V_VAR(ID_X));
  
  SELECT COUNT(*) INTO V_COUNT FROM JHK;
  DBMS_OUTPUT.PUT_LINE(V_COUNT);
END;
/
  
  