CREATE TABLE LIFE(
  LIFE_ID NUMBER PRIMARY KEY,
  LIFE_NAME VARCHAR2(30),
  LIFE_SALARY NUMBER,
  LIFE_ADVANCE NUMBER
);
CREATE TABLE SUPPORT(
  SUPPORT_ID NUMBER references LIFE(LIFE_ID),
  SUPPORT_NAME VARCHAR2(30),
  SUPPORT_SALARY NUMBER,
  SUPPORT_ADVANCE NUMBER
);
INSERT INTO LIFE VALUES (1,'ALMAS',1000000,2);
INSERT INTO LIFE VALUES (2,'HOSSAIN',2000000,3);
INSERT INTO LIFE VALUES (3,'ANTAR',400000,4);
INSERT INTO LIFE VALUES (4,'BOSS',300000,3);
INSERT INTO LIFE VALUES (5,'DBA',4500000,2);
SELECT * FROM LIFE;

INSERT INTO SUPPORT VALUES (1,'KOP',1000000,2);
INSERT INTO SUPPORT VALUES (1,'ICT',3000000,3);
INSERT INTO SUPPORT VALUES (2,'MIKE',300000,2);
INSERT INTO SUPPORT VALUES (3,'JON',400000,2);
INSERT INTO SUPPORT VALUES (4,'DON',500000,2);
INSERT INTO SUPPORT VALUES (5,'FON',3600000,2);
SELECT * FROM SUPPORT;
DESC SUPPORT;

CREATE TABLE IMAGE(
  IMG_ID NUMBER,
  IMAGE BLOB,
  QTT NUMBER,
  UPRIZE NUMBER,
  TPRIZE NUMBER
);
CREATE TABLE FIMAGE(
  IMG_ID NUMBER,
  PIC BLOB,
  QTT NUMBER,
  UPRIZE NUMBER,
  TPRIZE NUMBER
);
select * from FIMAGE;






















