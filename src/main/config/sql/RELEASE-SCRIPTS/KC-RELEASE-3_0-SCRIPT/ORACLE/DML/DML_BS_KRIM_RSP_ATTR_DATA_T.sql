INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Reviewer Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'), 'ProtocolOnlineReviewDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Reviewer Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'), 'OnlineReviewer');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Reviewer Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'), 'false');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Reviewer Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'), 'false');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'), 'ProtocolOnlineReviewDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'), 'IRBAdminReview');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'), 'false');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Online Review'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'), 'false');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Review Request'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'), 'ProtocolOnlineReviewDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Review Request'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'routeNodeName'), 'IRBAdminInitialReview');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Review Request'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'required'), 'false');

INSERT INTO KRIM_RSP_ATTR_DATA_T ( ATTR_DATA_ID, OBJ_ID, VER_NBR, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL )
VALUES ( KRIM_ATTR_DATA_ID_S.NEXTVAL, SYS_GUID(), 1, (SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Review Request'), (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Document Type, Routing Node & Action Information'), (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'actionDetailsAtRoleMemberLevel'), 'false');

COMMIT;