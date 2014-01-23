-
- $Id: PERSON_DEGREE.sql,v 1.4 2008-07-23 19:16:50 gmcgrego Exp $
-
create table PERSON_DEGREE(
  DEGREE_ID			  NUMBER	NOT NULL PRIMARY KEY,
  PERSON_ID           VARCAR(40) NOT NULL,
  GRADUATION_YEAR     VARCHAR2(4),
  DEGREE_CODE         VARCHAR2(6),
  DEGREE              VARCHAR2(80),
  FIELD_OF_STUDY      VARCHAR2(80),
  SPECIALIZATION      VARCHAR2(80),
  SCHOOL              VARCHAR2(50),
  SCHOOL_ID_CODE      VARCHAR2(3),
  SCHOOL_ID           VARCHAR2(20),
  update_timestamp  date         not null,
  update_user       varchar2 (60) not null,
  VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
  OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL,
);
CREATE SEQUENCE SEQ_PERSON_DEGREE INCREMENT BY 1 START WITH 1000 NOCYCLE;

ALTER TABLE PERSON_DEGREE
  ADD ( CONSTRAINT EPS_PROP_PERSON_DEGREE_C0
      UNIQUE (OBJ_ID) 
      NOT DEFERRABLE INITIALLY IMMEDIATE);