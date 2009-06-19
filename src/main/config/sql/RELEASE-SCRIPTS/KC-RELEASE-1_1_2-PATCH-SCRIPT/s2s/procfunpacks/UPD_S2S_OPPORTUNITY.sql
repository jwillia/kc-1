CREATE OR REPLACE PROCEDURE UPD_S2S_OPPORTUNITY (
	   AV_PROPOSAL_NUMBER 		  	IN	OSP$S2S_OPPORTUNITY.PROPOSAL_NUMBER%TYPE :=NULL,
	   AV_OPPORTUNITY_TITLE 		IN 	OSP$S2S_OPPORTUNITY.OPPORTUNITY_TITLE%TYPE :=NULL,
	   AV_COMPETETION_ID			IN	OSP$S2S_OPPORTUNITY.COMPETETION_ID%TYPE :=NULL,
	   AV_OPENING_DATE				IN	OSP$S2S_OPPORTUNITY.OPENING_DATE%TYPE :=NULL,
	   AV_CLOSING_DATE				IN	OSP$S2S_OPPORTUNITY.CLOSING_DATE%TYPE :=NULL,
	   AV_SCHEMA_URL				IN	OSP$S2S_OPPORTUNITY.SCHEMA_URL%TYPE :=NULL,
	   AV_INSTRUCTION_URL			IN	OSP$S2S_OPPORTUNITY.INSTRUCTION_URL%TYPE :=NULL,
	   AV_S2S_SUBMISSION_TYPE_CODE	IN 	OSP$S2S_OPPORTUNITY.S2S_SUBMISSION_TYPE_CODE%TYPE :=NULL,
	   AV_REVISION_CODE				IN  OSP$S2S_OPPORTUNITY.REVISION_CODE%TYPE :=NULL,
	   AV_REVISION_OTHER_DESCRIPTION IN OSP$S2S_OPPORTUNITY.REVISION_OTHER_DESCRIPTION%TYPE :=NULL,
	   AV_UPDATE_TIMESTAMP 		  	IN	OSP$S2S_OPPORTUNITY.UPDATE_TIMESTAMP%TYPE :=NULL,
	   AV_UPDATE_USER				IN	OSP$S2S_OPPORTUNITY.UPDATE_USER%TYPE :=NULL,
	   AW_PROPOSAL_NUMBER			IN	OSP$S2S_OPPORTUNITY.PROPOSAL_NUMBER%TYPE :=NULL,
	   AW_UPDATE_TIMESTAMP			IN	OSP$S2S_OPPORTUNITY.UPDATE_TIMESTAMP%TYPE :=NULL,
	   AC_TYPE IN CHAR )

IS
    DATA_CHANGED    EXCEPTION;

BEGIN

  IF AC_TYPE = 'I' THEN
    INSERT INTO OSP$S2S_OPPORTUNITY (
		   PROPOSAL_NUMBER,
		   OPPORTUNITY_TITLE,
		   COMPETETION_ID,
		   OPENING_DATE,
		   CLOSING_DATE,
		   SCHEMA_URL,
		   INSTRUCTION_URL,
		   S2S_SUBMISSION_TYPE_CODE,
		   REVISION_CODE,
		   REVISION_OTHER_DESCRIPTION,
		   UPDATE_TIMESTAMP,
		   UPDATE_USER)
    VALUES (
		AV_PROPOSAL_NUMBER,
		AV_OPPORTUNITY_TITLE,
		AV_COMPETETION_ID,
		AV_OPENING_DATE,
		AV_CLOSING_DATE,
		AV_SCHEMA_URL,
		AV_INSTRUCTION_URL,
		AV_S2S_SUBMISSION_TYPE_CODE,
		AV_REVISION_CODE,
		AV_REVISION_OTHER_DESCRIPTION,
		AV_UPDATE_TIMESTAMP,
		AV_UPDATE_USER) ;

  ELSIF AC_TYPE = 'U' THEN
    UPDATE OSP$S2S_OPPORTUNITY SET
		PROPOSAL_NUMBER = AV_PROPOSAL_NUMBER,
		OPPORTUNITY_TITLE = AV_OPPORTUNITY_TITLE,
		COMPETETION_ID = AV_COMPETETION_ID,
		OPENING_DATE = AV_OPENING_DATE,
		CLOSING_DATE = AV_CLOSING_DATE,
		SCHEMA_URL = AV_SCHEMA_URL,
		INSTRUCTION_URL = AV_INSTRUCTION_URL,
		S2S_SUBMISSION_TYPE_CODE = AV_S2S_SUBMISSION_TYPE_CODE,
		REVISION_CODE = AV_REVISION_CODE,
		REVISION_OTHER_DESCRIPTION = AV_REVISION_OTHER_DESCRIPTION,
		UPDATE_TIMESTAMP = AV_UPDATE_TIMESTAMP,
		UPDATE_USER = AV_UPDATE_USER
    WHERE
      PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER AND
      UPDATE_TIMESTAMP = AW_UPDATE_TIMESTAMP ;

    IF SQL%NOTFOUND THEN
      RAISE DATA_CHANGED;
    END IF;

  ELSIF AC_TYPE = 'D' THEN
    DELETE FROM OSP$S2S_OPP_FORMS
	WHERE PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER;
    
	DELETE FROM OSP$S2S_OPPORTUNITY
    WHERE
      PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER AND
      UPDATE_TIMESTAMP = AW_UPDATE_TIMESTAMP ;
	
	UPDATE OSP$EPS_PROPOSAL
     	SET CFDA_NUMBER = null,
			PROGRAM_ANNOUNCEMENT_NUMBER = null,
			PROGRAM_ANNOUNCEMENT_TITLE = null
	WHERE PROPOSAL_NUMBER = AW_PROPOSAL_NUMBER ;
	
	
  END IF;

EXCEPTION
  WHEN DATA_CHANGED THEN
    RAISE_APPLICATION_ERROR(-20100, 'DATA CHANGED BETWEEN RETRIEVE AND UPDATE');

END;
/

