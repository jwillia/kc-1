ALTER TABLE COMM_SCHEDULE_MINUTES
ADD CONSTRAINT COMM_SCH_MIN_IACPRO_FK
FOREIGN KEY (IACUC_PROTOCOL_ID_FK)
REFERENCES IACUC_PROTOCOL (PROTOCOL_ID)
/

ALTER TABLE COMM_SCHEDULE_MINUTES
ADD CONSTRAINT COMM_SCH_MIN_IACPRO_SUB_FK
FOREIGN KEY (IACUC_SUBMISSION_ID_FK)
REFERENCES IACUC_PROTOCOL_SUBMISSION (IACUC_PROTOCOL_SUBMISSION_ID)
/

ALTER TABLE COMM_SCHEDULE_MINUTES
ADD CONSTRAINT COMM_SCH_MIN_IACPRO_REV_FK
FOREIGN KEY (REVIEWER_ID_FK)
REFERENCES IACUC_PROTOCOL_REVIEWERS (PROTOCOL_REVIEWER_ID)
/
