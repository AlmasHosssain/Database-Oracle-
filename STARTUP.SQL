CREATE TABLE STR(
  EVENT_TYPE VARCHAR2(30),
  STR_DATE DATE,
  STR_TIME VARCHAR2(30)
);
CREATE OR REPLACE TRIGGER STRTIG
AFTER STARTUP ON DATABASE
BEGIN
 INSERT INTO STR VALUES(
  ORA_SYSEVENT,
  SYSDATE,
  TO_CHAR(SYSDATE,'HH24:HI:SI')
 );
 COMMIT;
END;
/