<%--
   - Kuali Coeus, a comprehensive research administration system for higher education.
   - 
   - Copyright 2005-2015 Kuali, Inc.
   - 
   - This program is free software: you can redistribute it and/or modify
   - it under the terms of the GNU Affero General Public License as
   - published by the Free Software Foundation, either version 3 of the
   - License, or (at your option) any later version.
   - 
   - This program is distributed in the hope that it will be useful,
   - but WITHOUT ANY WARRANTY; without even the implied warranty of
   - MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   - GNU Affero General Public License for more details.
   - 
   - You should have received a copy of the GNU Affero General Public License
   - along with this program.  If not, see <http://www.gnu.org/licenses/>.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<%@ attribute name="topOfStack" required="false" description="Indicates whether this is the top panel in a stacking, defaults to false" %>
<c:if test="${topOfStack == null}">
	<c:set var="topOfStack" value="false" />
</c:if>

<c:choose>
    <c:when test="${fn:length(KualiForm.disclosureHelper.newProposals) == 0}" >
        <c:set var="proposalNotFound" value=" (None found)" />
        <c:set var="proposalsTabHidden" value="true" />
        <c:set var="proposalsTabDefaultOpen" value="false" />
    </c:when>
    <c:otherwise>
        <c:set var="proposalNotFound" value="" />
        <c:set var="proposalsTabHidden" value="false" />
        <c:set var="proposalsTabDefaultOpen" value="true" />
    </c:otherwise>
</c:choose>

<kul:tab tabTitle="New Proposals for disclosure${proposalNotFound}"
         defaultOpen="${proposalsTabDefaultOpen}"
         transparentBackground="${topOfStack}"
         useCurrentTabIndexAsKey="true"
         tabErrorKey="notificationTemplates[*">
         
    <div class="tab-container" align="center" id="G100">
        <h3>
            <span class="subhead-left">Proposal List</span>
            <span class="subhead-right"><kul:help businessObjectClassName="org.kuali.kra.coi.CoiDisclosure" altText="help" /></span>
        </h3>
        
            <table style="border-top-width:1px; border-top-style:solid; border-top-color:#999999;" cellpAdding="0" cellspacing="0" width="50%" align="center" >
                                 <tr>
                                    <th><div align="center">Proposal Number</div></th> 
                                    <th><div align="center">Proposal Name</div></th> 
                                    <th><div align="center">Sponsor</div></th> 
                                    <th><div align="center">start Date</div></th> 
                                    <th><div align="center">End Date</div></th> 
                                    <th><div align="center">Action</div></th> 
                                </tr>
        <c:forEach items="${KualiForm.disclosureHelper.newProposals}" var="proposal" varStatus="status">
               <tr>
                  <td align="left" valign="middle">
					<div align="left">
                		${proposal.proposalNumber}
					</div>
				  </td>
                  <td align="left" valign="middle">
					<div align="left">
                		${proposal.title}
					</div>
				  </td>
                  <td align="left" valign="middle">
					<div align="left">
                		${proposal.sponsor.sponsorName} 
					</div>
				  </td>
                  <td align="left" valign="middle">
					<div align="left">
                 	    ${proposal.requestedStartDateInitial}
					</div>
					</td>
                  <td align="left" valign="middle">
					<div align="left">
                 	    ${proposal.requestedEndDateInitial}
					</div>
					</td>
                    <td>
                      <div align="center">
                        <a title="New Proposal Disclosure" href="coiDisclosure.do?methodToCall=newProjectDisclosure&disclosureHelper.eventTypeCode=2&disclosureHelper.newProjectId=${proposal.proposalNumber}&disclosureHelper.newModuleItemKey=${proposal.proposalNumber}&docTypeName=CoiDisclosureDocument">Report Coi</a>
                       </div>
                    </td>
               </tr>
        </c:forEach>
        
            </table>   
    </div> 
</kul:tab>
