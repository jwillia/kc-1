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
CREATE TABLE IACUC_PROC_CAT_CUSTOM_DATA ( 
    ID DECIMAL(12,0) NOT NULL, 
    PROCEDURE_CATEGORY_CODE DECIMAL(3,0) NOT NULL, 
    NAME VARCHAR(30) NOT NULL, 
    LABEL VARCHAR(30) NOT NULL, 
    DATA_TYPE_CODE VARCHAR(3) NOT NULL, 
    DATA_LENGTH DECIMAL(4,0), 
    DEFAULT_VALUE VARCHAR(2000),
	LOOKUP_CLASS      VARCHAR(100),
  	LOOKUP_RETURN     VARCHAR(30),
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    ACTIVE_FLAG CHAR(1), 
    SORT_ID DECIMAL(12,0) DEFAULT 1 NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) 
/


ALTER TABLE IACUC_PROC_CAT_CUSTOM_DATA 
ADD CONSTRAINT PK_PROC_CAT_CUSTOM_DATA 
PRIMARY KEY (ID) 
/


DELIMITER ;
