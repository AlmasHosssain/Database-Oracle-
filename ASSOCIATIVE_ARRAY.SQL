SET SERVEROUTPUT ON;
DECLARE 
  TYPE HJK IS TABLE OF NUMBER
    INDEX BY VARCHAR2(30);
  ASS0SIATIVE_VARIABLE HJK;
  COUNTER VARCHAR2(30);

BEGIN 
  ASS0SIATIVE_VARIABLE('SQL'):=123;
  ASS0SIATIVE_VARIABLE('MySqL'):=835687;
  ASS0SIATIVE_VARIABLE('FORM SQL'):=87246827;
  
  COUNTER:=ASS0SIATIVE_VARIABLE.FIRST;
  WHILE COUNTER IS NOT NULL
    LOOP
      DBMS_OUTPUT.PUT_LINE('KEY-> ' || COUNTER||' ' ||
      'VALUE-> '|| ASS0SIATIVE_VARIABLE(COUNTER));
      COUNTER:=ASS0SIATIVE_VARIABLE.NEXT(COUNTER);
    END LOOP;
END;
///////////


-------------NOT WORKING AREA-------------
SET SERVEROUTPUT ON;
DECLARE 
  TYPE BOOK IS TABLE OF VARCHAR2(30)
    INDEX BY NUMBER;
  ASS0SIATIVE_VARIABLE HJK;
  COUNTER NUMBER;

BEGIN 
  ASS0SIATIVE_VARIABLE(1):='SQL';
  ASS0SIATIVE_VARIABLE(3):='MySqL';
  ASS0SIATIVE_VARIABLE(4):='FORM SQL';
  
  COUNTER:=ASS0SIATIVE_VARIABLE.FIRST;
  WHILE COUNTER IS NOT NULL
    LOOP
      DBMS_OUTPUT.PUT_LINE('KEY-> ' || COUNTER||' ' ||
      'VALUE-> '|| ASS0SIATIVE_VARIABLE(COUNTER));
      COUNTER:=ASS0SIATIVE_VARIABLE.NEXT(COUNTER);
    END LOOP;
END;
/