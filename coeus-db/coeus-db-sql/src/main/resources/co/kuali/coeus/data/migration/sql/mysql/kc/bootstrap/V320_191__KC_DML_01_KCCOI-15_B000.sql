--
-- Kuali Coeus, a comprehensive research administration system for higher education.
-- 
-- Copyright 2005-2015 Kuali, Inc.
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

DELIMITER /
INSERT INTO COMMITTEE_TYPE (COMMITTEE_TYPE_CODE, DESCRIPTION, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID, VER_NBR)
VALUES ('2', 'COI', 'admin', NOW(), UUID(), 1)
/

TRUNCATE TABLE COI_REVIEW_TYPE
/
INSERT INTO COI_REVIEW_TYPE (COI_REVIEW_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Full','admin',NOW(),UUID(),1)
/
INSERT INTO COI_REVIEW_TYPE (COI_REVIEW_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Expedited','admin',NOW(),UUID(),1)
/
INSERT INTO COI_REVIEW_TYPE (COI_REVIEW_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','COI Review not required','admin',NOW(),UUID(),1)
/
INSERT INTO COI_REVIEW_TYPE (COI_REVIEW_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Response','admin',NOW(),UUID(),1)
/
INSERT INTO COI_REVIEW_TYPE (COI_REVIEW_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','FYI','admin',NOW(),UUID(),1)
/


TRUNCATE TABLE COI_COMMITTEE_ROLE_TYPE
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Chair','admin',NOW(),UUID(),1)
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Vice Chair','admin',NOW(),UUID(),1)
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Expedited Reviewer','admin',NOW(),UUID(),1)
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','COI Coordinator/Administrator','admin',NOW(),UUID(),1)
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','Legal Counsel','admin',NOW(),UUID(),1)
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6','Other Staff','admin',NOW(),UUID(),1)
/
INSERT INTO COI_COMMITTEE_ROLE_TYPE (COI_COMMITTEE_ROLE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('7','IP/Tech Transfer Office Staff','admin',NOW(),UUID(),1)
/
DELIMITER ;
