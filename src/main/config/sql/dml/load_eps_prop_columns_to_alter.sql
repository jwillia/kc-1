﻿INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('PROPOSAL_TYPE_CODE', 'Proposal Type', 'NUMBER', 3, 'Y', 'W_ARG_CODE_TBL', 'org.kuali.kra.proposaldevelopment.bo.ProposalType', SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('TITLE', 'Title', 'STRING', 150, 'N', null, null, SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('NOTICE_OF_OPPORTUNITY_CODE', 'Notice of Opportunity', 'NUMBER', 3, 'Y', 'W_ARG_CODE_TBL', 'org.kuali.kra.bo.NoticeOfOpportunity', SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('ACTIVITY_TYPE_CODE', 'Activity Type', 'NUMBER', 3, 'Y', 'W_ARG_CODE_TBL', 'org.kuali.kra.proposaldevelopment.bo.ActivityType', SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('DEADLINE_DATE', 'Sponsor Deadline Date', 'DATE', 10, 'N', null, null, SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('DEADLINE_TYPE', 'Deadline Type', 'STRING', 1, 'N', null, null, to_date('18-06-2008 11:19:38', 'dd-mm-yyyy hh24:mi:ss'), 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('PROGRAM_ANNOUNCEMENT_NUMBER', 'Program Number', 'STRING', 50, 'N', null, null, SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('PROGRAM_ANNOUNCEMENT_TITLE', 'Program Title', 'STRING', 255, 'N', null, null, SYSDATE, 'KRADEV');
INSERT INTO  EPS_PROP_COLUMNS_TO_ALTER (COLUMN_NAME, COLUMN_LABEL, DATA_TYPE, DATA_LENGTH, HAS_LOOKUP, LOOKUP_WINDOW, LOOKUP_ARGUMENT, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('MAILING_ADDRESS_ID', 'Mailing Address', 'NUMBER', 22, 'N', null, null, SYSDATE, 'KRADEV');