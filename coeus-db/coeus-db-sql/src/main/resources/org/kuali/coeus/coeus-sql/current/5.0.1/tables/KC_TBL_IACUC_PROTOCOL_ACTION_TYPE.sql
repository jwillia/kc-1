ALTER TABLE IACUC_PROTOCOL_ACTION_TYPE ADD FINAL_ACTION_FOR_BATCH_CORRESP VARCHAR2(1) DEFAULT 'N' NOT NULL
/

-- Will need to discuss the below alteration
-- ALTER TABLE IACUC_PROTOCOL_ACTION_TYPE MODIFY FINAL_ACTION_FOR_BATCH_CORRESP DEFAULT (null)
-- /
