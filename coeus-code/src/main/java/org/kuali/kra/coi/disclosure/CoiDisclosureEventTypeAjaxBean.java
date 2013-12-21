/*
 * Copyright 2005-2013 The Kuali Foundation
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
package org.kuali.kra.coi.disclosure;

import org.kuali.kra.coi.CoiDisclosureEventType;
import org.kuali.rice.core.api.util.KeyValue;

import java.util.List;

public class CoiDisclosureEventTypeAjaxBean {

    private CoiDisclosureEventType disclosureEventType;
    private List<KeyValue> keyValues;
    
    public CoiDisclosureEventType getDisclosureEventType() {
        return disclosureEventType;
    }
    public void setDisclosureEventType(CoiDisclosureEventType disclosureEventType) {
        this.disclosureEventType = disclosureEventType;
    }
    public List<KeyValue> getKeyValues() {
        return keyValues;
    }
    public void setKeyValues(List<KeyValue> keyValues) {
        this.keyValues = keyValues;
    }
}