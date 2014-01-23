CREATE TABLE BUDGET_MODULAR (
		PROPOSAL_NUMBER VARCHAR2(8) constraint BUDGET_MODULARN1 NOT NULL ENABLE,
		VERSION_NUMBER NUMBER(3, 0) constraint BUDGET_MODULARN2 NOT NULL ENABLE,
		BUDGET_PERIOD NUMBER(3, 0) constraint BUDGET_MODULARN3 NOT NULL ENABLE,
		DIRECT_COST_LESS_CONSOR_FNA NUMBER(12 , 2),
		CONSORTIUM_FNA NUMBER(12, 2),
		TOTAL_DIRECT_COST NUMBER(12, 2),
		UPDATE_TIMESTAMP DATE constraint BUDGET_MODULARN4 NOT NULL ENABLE,
		UPDATE_USER VARCHAR2(60) constraint BUDGET_MODULARN5 NOT NULL ENABLE,
		VER_NBR NUMBER(8,0) DEFAULT 1 constraint BUDGET_MODULARN6 NOT NULL ENABLE,
		OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() constraint BUDGET_MODULARN7 NOT NULL ENABLE,
		CONSTRAINT PK_BUDGET_MODULAR_KRA PRIMARY KEY (PROPOSAL_NUMBER, VERSION_NUMBER, BUDGET_PERIOD) ENABLE
	);
ALTER TABLE BUDGET_MODULAR ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_MODULAR MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_MODULAR_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_MODULAR ADD CONSTRAINT FK_BUDGET_MODULAR_BP_KRA FOREIGN KEY (BUDGET_PERIOD_NUMBER) REFERENCES BUDGET_PERIODS;