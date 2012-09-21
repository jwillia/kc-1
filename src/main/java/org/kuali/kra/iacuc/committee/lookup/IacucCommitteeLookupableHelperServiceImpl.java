/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.iacuc.committee.lookup;

import org.kuali.kra.common.committee.bo.CommitteeType;
import org.kuali.kra.common.committee.lookup.CommitteeLookupableHelperServiceImpl;
import org.kuali.kra.iacuc.committee.bo.IacucCommittee;
import org.kuali.kra.iacuc.committee.document.IacucCommitteeDocument;
import org.kuali.kra.infrastructure.PermissionConstants;

public class IacucCommitteeLookupableHelperServiceImpl extends CommitteeLookupableHelperServiceImpl<IacucCommittee, IacucCommitteeDocument> {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -1230794939567685359L;

    @Override
    protected String getCommitteeTypeCodeHook() {
        return CommitteeType.IACUC_TYPE_CODE;
    }

    @Override
    protected String getCommitteeMembershipFullyQualifiedClassNameHook() {
        return "org.kuali.kra.iacuc.committee.bo.IacucCommitteeMembership";
    }

    @Override
    protected String getHtmlAction() {
        return "iacucCommitteeCommittee.do";
    }

    @Override
    protected String getDocumentTypeName() {
        return "IacucCommitteeDocument";
    }

    @Override
    protected String getViewCommitteePermissionNameHook() {
        return PermissionConstants.VIEW_IACUC_COMMITTEE;
    }

    @Override
    protected String getModifyCommitteePermissionNameHook() {
        return PermissionConstants.MODIFY_IACUC_COMMITTEE;
    }

    @Override
    protected Class<IacucCommitteeDocument> getCommitteeDocumentBOClassHook() {
        return IacucCommitteeDocument.class;
    }

    @Override
    protected Class<IacucCommittee> getCommitteeBOClassHook() {
        return IacucCommittee.class;
    }


}