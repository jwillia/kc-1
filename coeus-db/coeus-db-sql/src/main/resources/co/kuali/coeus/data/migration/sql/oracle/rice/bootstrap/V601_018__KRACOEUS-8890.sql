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

DELETE FROM KRIM_ROLE_PERM_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Budget Creator Document Level' AND NMSPC_CD='KC-PD') AND PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Modify ProposalDevelopmentDocument' and NMSPC_CD = 'KC-PD');
/
DELETE FROM KRIM_ROLE_PERM_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Budget Creator Only Document Level' AND NMSPC_CD='KC-PD') AND PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Modify ProposalDevelopmentDocument' and NMSPC_CD = 'KC-PD');
/
