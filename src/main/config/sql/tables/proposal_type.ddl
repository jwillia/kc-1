CREATE TABLE PROPOSAL_TYPE ( 
    PROPOSAL_TYPE_CODE	VARCHAR2(3) constraint PROPOSAL_TYPE_N1 NOT NULL,
    DESCRIPTION       	VARCHAR2(200) constraint PROPOSAL_TYPE_N2 NOT NULL,
    UPDATE_TIMESTAMP  	DATE constraint PROPOSAL_TYPE_N3 NOT NULL,
    UPDATE_USER       	VARCHAR2(60) constraint PROPOSAL_TYPE_N4 NOT NULL,
    VER_NBR            	NUMBER(8,0) DEFAULT 1 CONSTRAINT PROPOSAL_TYPE_N5 NOT NULL,
    OBJ_ID             	VARCHAR2(36) DEFAULT SYS_GUID() CONSTRAINT PROPOSAL_TYPE_N6 NOT NULL,
    constraint PROPOSAL_TYPE_P1 PRIMARY KEY(PROPOSAL_TYPE_CODE),
    constraint PROPOSAL_TYPE_C0 unique (obj_id)
)
/