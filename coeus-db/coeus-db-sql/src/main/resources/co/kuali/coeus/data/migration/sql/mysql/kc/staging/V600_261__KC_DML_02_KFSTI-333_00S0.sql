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
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/
-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055075', 'Kuali LOC Testing', '5', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2003', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055076', 'Kuali Milestone Testing', '0', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2004', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055078', 'Kuali Predetermined Billing Testing', '0', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, 'KUAL', 'KUA2006', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055079', 'Kuali Monthly Testing', '1', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2007', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055119', 'Kuali Other Testing', '0', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2000', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055120', 'Kuali PYPDBS Testing', '0', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2001', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055121', 'Kuali Other2 Testing', '0', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2002', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055122', 'Kuali Monthly Testing', '1', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, null, 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055124', 'Kuali LOC Testing2', '5', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, 'KUAL', 'KUA2005', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055125', 'Kuali LOC Testing3', '1', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, 'KUAL', 'KUA2008', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055126', 'Kuali Monthly 3', '1', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, 'KUAL', 'KUA2009', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055127', 'Kuali Monthly 4', '1', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, 'KUAL', 'KUA2010', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/
INSERT INTO SEQ_ROLODEX_ID VALUES(NULL)
/

-- ROLODEX and SPONSOR
insert into ROLODEX (ROLODEX_ID, ORGANIZATION, OWNED_BY_UNIT, SPONSOR_ADDRESS_FLAG, ADDRESS_LINE_1,
CITY, STATE, POSTAL_CODE, COUNTRY_CODE, ACTV_IND, CREATE_USER,
UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ((SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), 'Kuali Foundation', '000001', 'Y', '123 SOUTH STREET',
'MYTOWN', 'NE', '12345', 'US', 'Y', 'admin', NOW(), 'admin', 1, UUID())
/

insert into SPONSOR (SPONSOR_CODE, SPONSOR_NAME, SPONSOR_TYPE_CODE, ROLODEX_ID, OWNED_BY_UNIT,
DUNS_PLUS_FOUR_NUMBER, DUNNING_CAMPAIGN_ID, CUSTOMER_NUMBER, ACTV_IND,
CREATE_USER, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
values ('055128', 'Kuali Other 3', '1', (SELECT (MAX(ID)) FROM SEQ_ROLODEX_ID), '000001',
null, null, 'KUA2011', 'Y',
'admin', NOW(), 'admin', 1, UUID())
/

DELIMITER ;
