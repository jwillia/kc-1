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
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00001','001002-00001','000000-00000','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00002','001002-00001','001002-00001','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00003','001002-00001','001002-00001','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00004','001002-00001','001002-00003','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00005','001002-00001','001002-00001','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00006','001002-00001','001002-00005','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00007','001002-00001','001002-00005','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00008','001002-00001','001002-00007','001002-00001','Y','quickstart',NOW(),UUID(),0)
/
INSERT INTO SEQUENCE_AWARD_ID VALUES(NULL)
/
INSERT INTO AWARD_HIERARCHY (AWARD_HIERARCHY_ID,AWARD_NUMBER,ROOT_AWARD_NUMBER,PARENT_AWARD_NUMBER,ORIGINATING_AWARD_NUMBER,ACTIVE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQUENCE_AWARD_ID),'001002-00009','001002-00001','001002-00002','001002-00002','Y','quickstart',NOW(),UUID(),0)
/
DELIMITER ;
