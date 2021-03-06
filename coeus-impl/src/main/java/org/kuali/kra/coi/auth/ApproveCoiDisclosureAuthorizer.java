/*
 * Kuali Coeus, a comprehensive research administration system for higher education.
 * 
 * Copyright 2005-2015 Kuali, Inc.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.kuali.kra.coi.auth;

import org.kuali.kra.coi.CoiDisclosure;
import org.kuali.kra.infrastructure.PermissionConstants;

public class ApproveCoiDisclosureAuthorizer extends CoiDisclosureAuthorizer {

    @Override
    public boolean isAuthorized(String userId, CoiDisclosureTask task) {
        return hasPermission(userId, task.getCoiDisclosure(), PermissionConstants.APPROVE_COI_DISCLOSURE) && isSubmitted(task);
    }

    protected boolean isSubmitted(CoiDisclosureTask task) {
        CoiDisclosure disclosure = task.getCoiDisclosure();
        
        if (disclosure.getCoiDisclosureDocument().getDocumentHeader().hasWorkflowDocument() &&
            disclosure.getCoiDisclosureDocument().getDocumentHeader().getWorkflowDocument().isEnroute()) {
            return true;
        }
        return false;
    }
}
