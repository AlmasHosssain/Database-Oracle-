CREATE TABLE ADTE(
  ENTRY_DATE DATE,
  DDL_USER VARCHAR2(30),
  OBJ_TYPE VARCHAR2(30),
  OBJ_NAME VARCHAR2(30),
  OPERATION_NAME VARCHAR2(30) 
);
CREATE OR REPLACE TRIGGER DD_TRG
AFTER DDL ON SCHEMA
ENABLE
  INSERT INTO ADTE VALUES (
    SYSDATE,
    SYS_CONTEXT ('USERNV','CURRENT_USER'),
    ORA_DICT_OBJ_TYPE,
    ORA_DICT_OBJ_NAME,
    ORA_SYSEVENT
  );
END;
/