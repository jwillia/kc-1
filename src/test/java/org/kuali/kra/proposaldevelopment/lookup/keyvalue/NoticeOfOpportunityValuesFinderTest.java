/*
 * Copyright 2005-2010 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.proposaldevelopment.lookup.keyvalue;

import java.util.ArrayList;
import java.util.List;

import org.kuali.kra.keyvalue.ValuesFinderTestBase;
import org.kuali.rice.core.util.KeyLabelPair;

/**
 * This class tests NoticeOfOpportunityValuesFinder.
 */
public class NoticeOfOpportunityValuesFinderTest extends ValuesFinderTestBase {

    @Override
    protected Class<NoticeOfOpportunityValuesFinder> getTestClass() {
        return NoticeOfOpportunityValuesFinder.class;
    }

    @Override
    protected List<KeyLabelPair> getKeyValues() {
        final List<KeyLabelPair> keylabel = new ArrayList<KeyLabelPair>();
        
        keylabel.add(new KeyLabelPair("", "select"));
        keylabel.add(new KeyLabelPair("1", "Federal Solicitation"));
        keylabel.add(new KeyLabelPair("2", "Unsolicited"));
        keylabel.add(new KeyLabelPair("3", "Verbal Request for Proposal"));
        keylabel.add(new KeyLabelPair("4", "SBIR Solicitation"));
        keylabel.add(new KeyLabelPair("5", "STTR Solicitation"));
        keylabel.add(new KeyLabelPair("6", "Non-Federal Solicitation"));
        keylabel.add(new KeyLabelPair("7", "Internal"));

        return keylabel;
    }

}