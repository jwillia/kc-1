-- Table Script 
CREATE TABLE QUESTIONNAIRE_QUESTIONS ( 
    QUESTIONNAIRE_QUESTIONS_ID NUMBER(12,0) NOT NULL, 
    QUESTIONNAIRE_REF_ID_FK NUMBER (12,0) NOT NULL, 
    QUESTION_REF_ID_FK NUMBER (12,0) NOT NULL, 
    QUESTION_NUMBER NUMBER(6,0) NOT NULL, 
    PARENT_QUESTION_NUMBER NUMBER(6,0) NOT NULL, 
    CONDITION_FLAG VARCHAR2(1) NOT NULL, 
    CONDITION_TYPE VARCHAR2(50), 
    CONDITION_VALUE VARCHAR2(2000), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    QUESTION_SEQ_NUMBER NUMBER(3,0), 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE QUESTIONNAIRE_QUESTIONS 
ADD CONSTRAINT PK_QUESTIONNAIRE_QUESTIONS 
PRIMARY KEY (QUESTIONNAIRE_QUESTIONS_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE QUESTIONNAIRE_QUESTIONS 
-- ADD CONSTRAINT PK_QUESTIONNAIRE_QUESTIONS 
-- PRIMARY KEY (QUESTIONNAIRE_ID, QUESTION_NUMBER);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE QUESTIONNAIRE_QUESTIONS 
ADD CONSTRAINT UQ_QUESTIONNAIRE_QUESTIONS 
UNIQUE (QUESTIONNAIRE_REF_ID_FK, QUESTION_NUMBER);

-- Foreign Key Constraint(s)
ALTER TABLE QUESTIONNAIRE_QUESTIONS 
ADD CONSTRAINT FK_QUESTIONNAIRE_QUESTIONS 
FOREIGN KEY (QUESTION_REF_ID_FK) 
REFERENCES QUESTION (QUESTION_REF_ID);

ALTER TABLE QUESTIONNAIRE_QUESTIONS 
ADD CONSTRAINT FK_QUESTIONNAIRE_QUESTIONNAIRE 
FOREIGN KEY (QUESTIONNAIRE_REF_ID_FK) 
REFERENCES QUESTIONNAIRE (QUESTIONNAIRE_REF_ID);