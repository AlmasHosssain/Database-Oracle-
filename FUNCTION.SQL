CREATE OR REPLACE FUNCTION FIRST_FUNCTION (RADIOUS NUMBER)
RETURN NUMBER
IS 
PI CONSTANT NUMBER(7,3):= 3.1416;
AREA NUMBER(7,3);
BEGIN
AREA := PI* ( RADIOUS * RADIOUS );
RETURN AREA;
END;
/

SET SERVEROUTPUT ON;
DECLARE
  V_JK NUMBER(7,3);
BEGIN
 V_JK := FIRST_FUNCTION(25);
 DBMS_OUTPUT.PUT_LINE(V_JK);
END;
/