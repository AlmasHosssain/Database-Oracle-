------MASTER TABLE------

CREATE TABLE CUSTOMER(
  CUSTOMRE_ID NUMBER,
  CUSTOMER_NAME VARCHAR2(30),
  CUSTOMER_CITY VARCHAR2(30),
  CUSTOMER_ADDRESS VARCHAR2(30),
  CONSTRAINTS DJ PRIMARY KEY(CUSTOMRE_ID)
);
DROP TABLE CUSTOMER;
INSERT INTO CUSTOMER VALUES(1,'ALMAS','KUSHTIA','KHULNA');
INSERT INTO CUSTOMER VALUES(2,'HOSSAIN','MAGURA','KHULNA');
INSERT INTO CUSTOMER VALUES(3,'ANTAR','JHENIDAH','RAJSHAHI');
INSERT INTO CUSTOMER VALUES(4,'BOSS','CUMILLA','CTG');
INSERT INTO CUSTOMER VALUES(5,'DBA','DHAKA','DHAKA');
DESC CUSTOMER;
SELECT * FROM CUSTOMER;

-------DETAILS TABLE-------
CREATE TABLE COSTOMER_ORDER(
  CUS_ID NUMBER,
  ORDER_NAME VARCHAR2(30) CONSTRAINTS PG PRIMARY KEY,
  ORDER_TYPE VARCHAR2(30),
  ORDER_PRICE NUMBER,
  ORDER_ADDRESS VARCHAR2(30),
  CONSTRAINTS ASD FOREIGN KEY(CUS_ID) REFERENCES CUSTOMER (CUSTOMER_ID)
);
CREATE TABLE INTP(
  BOOK_ID NUMBER,
  BOOK_AS VARCHAR2(30),
  BOOK_TU VARCHAR2(30)
);
INSERT INTO INTP VALUES(1,'ROBI THAKUR','GITA');
INSERT INTO INTP VALUES(2,'NOZRUL HOSSAIN','BIDROHI');
INSERT INTO INTP VALUES(3,'MIKALE MODHU','MAGNATH');
INSERT INTO INTP VALUES(1,'JIBONANONDO DASH','SHONAT');

SELECT * FROM INTP;
DESC INTP;

------LOV_TEST-------
CREATE TABLE KIP_LOV(
  LOV_ID NUMBER,
  LOV_NAME VARCHAR2(30),
  LOV_CITY VARCHAR2(50),
  LOV_ADDRESS VARCHAR2(60)
);
SELECT DISTINCT * FROM KIP_LOV ORDER BY LOV_ID;
/

CREATE TABLE EMO_INFO(
  EMP_STATUS VARCHAR2(30),
  EMP_ID NUMBER(4) PRIMARY KEY,
  F_NAME VARCHAR2(30),
  L_NAME VARCHAR2(30),
  GENDER VARCHAR2(30),
  MARTIAL_STATUS VARCHAR2(30),
  SALARY NUMBER,
  JOI_DATE DATE
);
DESC EMO_INFO;
SELECT * FROM EMO_INFO;
/
CREATE TABLE INFO_KIP(
  KIP_ID NUMBER PRIMARY KEY,
  KIP_NAME VARCHAR2(50),
  KIP_SALATY NUMBER,
  KIP_ADVANCE NUMBER
);
INSERT INTO INFO_KIP VALUES(6,'ALMAS',120000,2);
INSERT INTO INFO_KIP VALUES(7,'HOSSAIN',100000,2);
INSERT INTO INFO_KIP VALUES(8,'ANATR',90000,2);
INSERT INTO INFO_KIP VALUES(9,'BOSS',70000,3);
INSERT INTO INFO_KIP VALUES(10,'DBA',60000,3);
DESC INFO_KIP;
SELECT * FROM INFO_KIP;
























