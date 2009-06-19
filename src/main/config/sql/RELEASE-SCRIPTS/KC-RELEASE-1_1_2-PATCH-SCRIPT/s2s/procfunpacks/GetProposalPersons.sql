CREATE OR REPLACE PROCEDURE GetProposalPersons
 (AW_PROPOSAL_NUMBER IN OSP$BUDGET_PERIODS.PROPOSAL_NUMBER%TYPE,
 cur_generic IN OUT result_sets.cur_generic) is

begin

open cur_generic for


SELECT PP.PERSON_ID , sort_id,
		 DECODE(PP.LAST_NAME,NULL,'Unknown',PP.LAST_NAME) LAST_NAME,
		 DECODE(PP.FIRST_NAME,NULL,' ',PP.FIRST_NAME) FIRST_NAME,
		 DECODE( PP.MIDDLE_NAME,NULL,' ',PP.MIDDLE_NAME) MIDDLE_NAME,
       DECODE( substr(PP.SSN,6,4),NULL,' ',substr(PP.SSN,6,4)) SSN,
   	 decode(pi.principal_investigator_flag,'Y',
														'Principal Investigator','Co-PI') PROJECT_ROLE,
    	 DECODE(pp.email_address,NULL,' ',PP.EMAIL_ADDRESS) EMAIL_ADDRESS,
		 DECODE(date_of_birth,NULL,'UNKNOWN',DATE_OF_BIRTH) DATE_OF_BIRTH,
	    DECODE(degree,NULL,'UNKNOWN',DEGREE) DEGREE, 
		 DECODE(office_phone, NULL,' ',OFFICE_PHONE) OFFICE_PHONE,
        DECODE(PI.percentage_effort,NULL,0,PI.PERCENTAGE_EFFORT) PERCENTAGE_EFFORT,
		 DECODE (FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CC',1,PP.PERSON_ID),NULL,'0',
               FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CC',1,PP.PERSON_ID) ) + 
       DECODE (FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CY',1,PP.PERSON_ID),NULL,'0',
               FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CY',1,PP.PERSON_ID) ) CALENDAR_MONTHS,
		 FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'AP',1,PP.PERSON_ID) ACADEMIC_MONTHS,
		 FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'SP',1,PP.PERSON_ID) SUMMER_MONTHS														
FROM  OSP$EPS_PROP_PERSON PP, OSP$eps_PROP_INVESTIGATORS PI
WHERE PP.PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER
AND PP.PERSON_ID = PI.PERSON_ID
AND PP.PROPOSAL_NUMBER = PI.PROPOSAL_NUMBER

UNION

SELECT PP.PERSON_ID, sort_id,
   DECODE(PP.LAST_NAME ,  NULL,'Unknown',PP.LAST_NAME) LAST_NAME,
   DECODE(PP.FIRST_NAME, NULL,' ',PP.FIRST_NAME) FIRST_NAME,
   DECODE(PP.MIDDLE_NAME,NULL,' ',PP.MIDDLE_NAME) MIDDLE_NAME,
   DECODE( substr(PP.SSN,6,4),NULL,' ',substr(PP.SSN,6,4)) SSN,
   K.PROJECT_ROLE,
   DECODE(pp.email_address,NULL,' ',PP.EMAIL_ADDRESS) EMAIL_ADDRESS,
   DECODE(date_of_birth,NULL,'UNKNOWN',DATE_OF_BIRTH) DATE_OF_BIRTH,
   DECODE(degree,NULL,'UNKNOWN',DEGREE) DEGREE, 
   DECODE(office_phone, NULL,' ',OFFICE_PHONE) OFFICE_PHONE,
   DECODE(k.percentage_effort,NULL,0,K.PERCENTAGE_EFFORT) PERCENTAGE_EFFORT,
   DECODE (FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CC',1,PP.PERSON_ID),NULL,'0',
           FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CC',1,PP.PERSON_ID) ) + 
   DECODE (FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CY',1,PP.PERSON_ID),NULL,'0',
           FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'CY',1,PP.PERSON_ID) ) CALENDAR_MONTHS,
	 FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'AP',1,PP.PERSON_ID) ACADEMIC_MONTHS,
	 FN_GET_FUNDING_MONTHS(AW_PROPOSAL_NUMBER,'SP',1,PP.PERSON_ID) SUMMER_MONTHS								
FROM  OSP$EPS_PROP_PERSON PP, OSP$EPS_PROP_KEY_PERSONS K
WHERE PP.PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER
AND PP.PERSON_ID = K.PERSON_ID
AND PP.PROPOSAL_NUMBER = K.PROPOSAL_NUMBER
ORDER BY sort_id;

END;
      									

/

