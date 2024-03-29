DROP TABLE DEPARTMENT;
CREATE TABLE DEPARTMEN T(
  DEPARTMENT_ID NUMBER PRIMARY KEY,
  DEPARTMENT_NAME VARCHAR2(20),
  LOCATION_ID NUMBER
);
DESC DEPARTMENT;
INSERT INTO DEPARTMENT VALUES(101,'ICT',501);
INSERT INTO DEPARTMENT VALUES(102,'CSE',501);
INSERT INTO DEPARTMENT VALUES(103,'EEE',501);
INSERT INTO DEPARTMENT VALUES(104,'ETE',501);
SELECT * FROM DEPARTMENT ORDER BY DEPARTMENT_ID;

--TRUNCATE TABLE DEPARTMENT;
UPDATE DEPARTMENT SET LOCATION_ID = 502 WHERE DEPARTMENT_ID = 102;
UPDATE DEPARTMENT SET LOCATION_ID = 503 WHERE DEPARTMENT_ID = 103;
UPDATE DEPARTMENT SET LOCATION_ID = 504 WHERE DEPARTMENT_ID = 104;

CREATE TABLE EMP_INFO(
  EMP_STATUS VARCHAR2(1),
  EMPID NUMBER PRIMARY KEY,
  ENAME VARCHAR2(30),
  DOB DATE,
  GENDER VARCHAR2(10),
  MARITAL_STATUS VARCHAR2(30),
  ADDRESS VARCHAR2(200),
  SALARY NUMBER,
  DEPNO NUMBER constraint DEPT_FK references DEPARTMENT(DEPARTMENT_ID),
  EMP_PHOTP BLOB
);
DESC EMP_INFO;


FUNCTION ADD_NUM (S NUMBER,B NUMBER)
RETURN NUMBER
IS
V_VAR NUMBER(20);
BEGIN
  SELECT S+B INTO V_VAR FROM dual;
  RETURN V_VAR;  
END;
/



CREATE TABLE USERINFO(
  USERID NUMBER,
  USERANAME VARCHAR2(20),
  PASS NUMBER,
  USERTYPE VARCHAR2(20)
);
DESC USERINFO;
INSERT INTO USERINFO VALUES(101,'ALMAS',123,'DBA');
INSERT INTO USERINFO VALUES(102,'HOSSAIN',123,'DATABASE ENGINEER');
INSERT INTO USERINFO VALUES(103,'ANATR',123,'DATABASE PROGRAMMER');
INSERT INTO USERINFO VALUES(104,'BOSS',123,'OPERATOR');
SELECT * FROM USERINFO;





























