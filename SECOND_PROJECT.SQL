CREATE TABLE V_HEROES(
  H_NAME VARCHAR2(30)
);

------AUDIT TABLE---------

CREATE TABLE AUDIT_VHEROES(
  NEW_NAME   VARCHAR2(30),
  OLD_NAME   VARCHAR2(30),
  USER_NAME  VARCHAR2(30),
  ENTRY_DATE VARCHAR2(50),
  OPERATION  VARCHAR2(30)
);

-------BACK-UP TABLE-------

CREATE TABLE BAC_VHEROES AS 
SELECT * FROM HEROES;


SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER BACK_VHE
BEFORE INSERT OR DELETE OR UPDATE ON V_HEROES
FOR EACH ROW
ENABLE
DECLARE
BEGIN
  IF INSERTING THEN
    INSERT INTO BAC_VHEROES (H_NAME) VALUES (:NEW.H_NAME);
  ELSIF DELETING THEN
    DELETE FROM BAC_VHEROES WHERE H_NAME = :OLD.H_NAME;
  ELSIF UPDATING THEN
    UPDATE BAC_VHEROES SET H_NAME = :NEW.H_NAME
    WHERE H_NAME=:OLD.H_NAME;
  END IF;
END;
/
INSERT INTO V_HEROES (H_NAME) VALUES ('ALMAS'); 

SELECT * FROM V_HEROES;
SELECT * FROM BAC_VHEROES;

CREATE OR REPLACE TRIGGER HERO_AUDIT
BEFORE INSERT OR DELETE OR UPDATE ON V_HEROES
FOR EACH ROW
ENABLE
DECLARE
  V_USER  VARCHAR2(30);
  V_DATE  VARCHAR2(30);
BEGIN 
  SELECT USER,TO_CHAR(SYSDATE, 'DD/MON/YYYY  HH24:MI:SS')
  INTO V_USER,V_DATE FROM DUAL;
  
  IF INSERTING THEN
    INSERT INTO AUDIT_VHEROES (NEW_NAME,OLD_NAME,
    USER_NAME,ENTRY_DATE,OPERATION) VALUES(:NEW.H_NAME,NULL,
    V_USER,V_DATE,'INSERTION');
  ELSIF DELETING THEN
    INSERT INTO AUDIT_VHEROES (NEW_NAME,OLD_NAME,
    USER_NAME,ENTRY_DATE,OPERATION) VALUES(NULL,:OLD.H_NAME,
    V_USER,V_DATE,'DELETION');
  ELSIF UPDATING THEN
    INSERT INTO AUDIT_VHEROES (NEW_NAME,OLD_NAME,
    USER_NAME,ENTRY_DATE,OPERATION) VALUES(:NEW.H_NAME,:OLD.H_NAME,
    V_USER,V_DATE,'UPDTING');
  END IF;
END;
/
INSERT INTO V_HEROES (H_NAME) VALUES ('HOSSAIN'); 
SELECT * FROM AUDIT_VHEROES;
INSERT INTO V_HEROES (H_NAME) values ('ALMSA');
DELETE FROM V_HEROES WHERE H_NAME= 'HOSSAIN';


