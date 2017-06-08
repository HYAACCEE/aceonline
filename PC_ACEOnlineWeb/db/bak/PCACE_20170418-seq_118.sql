-----------------------------------------------------
-- Export file for user PCACE                      --
-- Created by Administrator on 2017/4/18, 20:54:08 --
-----------------------------------------------------

set define off
spool PCACE_20170418-seq_118.log

prompt
prompt Creating sequence SEQB_ACEWORK
prompt ==============================
prompt
create sequence PCACE.SEQB_ACEWORK
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_ACTION
prompt =============================
prompt
create sequence PCACE.SEQB_ACTION
minvalue 1
maxvalue 99999999999999
start with 4560
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_BILL
prompt ===========================
prompt
create sequence PCACE.SEQB_BILL
minvalue 1
maxvalue 99999999999999
start with 1070
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE
prompt ================================
prompt
create sequence PCACE.SEQB_CANDIDATE
minvalue 1
maxvalue 99999999999999
start with 1310
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_COLLECT
prompt ========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_COLLECT
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_CVCERTIFICATE
prompt ==============================================
prompt
create sequence PCACE.SEQB_CANDIDATE_CVCERTIFICATE
minvalue 1
maxvalue 99999999999999
start with 1030
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_CVEDUCATION
prompt ============================================
prompt
create sequence PCACE.SEQB_CANDIDATE_CVEDUCATION
minvalue 1
maxvalue 99999999999999
start with 1270
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_CVPROJECT
prompt ==========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_CVPROJECT
minvalue 1
maxvalue 99999999999999
start with 1040
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_CVTRAIN
prompt ========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_CVTRAIN
minvalue 1
maxvalue 99999999999999
start with 1030
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_CVWORK
prompt =======================================
prompt
create sequence PCACE.SEQB_CANDIDATE_CVWORK
minvalue 1
maxvalue 99999999999999
start with 1360
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_FILES
prompt ======================================
prompt
create sequence PCACE.SEQB_CANDIDATE_FILES
minvalue 1
maxvalue 99999999999999
start with 1480
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_HCCOMMENT
prompt ==========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_HCCOMMENT
minvalue 1
maxvalue 99999999999999
start with 1110
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_INTERVIEW
prompt ==========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_INTERVIEW
minvalue 1
maxvalue 99999999999999
start with 1250
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_LANGUAGE
prompt =========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_LANGUAGE
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_MARKER
prompt =======================================
prompt
create sequence PCACE.SEQB_CANDIDATE_MARKER
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_ORGAN_RELATION
prompt ===============================================
prompt
create sequence PCACE.SEQB_CANDIDATE_ORGAN_RELATION
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_CANDIDATE_PROCESS
prompt ========================================
prompt
create sequence PCACE.SEQB_CANDIDATE_PROCESS
minvalue 1
maxvalue 99999999999999
start with 1180
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_HR
prompt =========================
prompt
create sequence PCACE.SEQB_HR
minvalue 1
maxvalue 99999999999999
start with 1050
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_HUNTER
prompt =============================
prompt
create sequence PCACE.SEQB_HUNTER
minvalue 1
maxvalue 99999999999999
start with 1060
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_INVITECODE
prompt =================================
prompt
create sequence PCACE.SEQB_INVITECODE
minvalue 1
maxvalue 99999999999999
start with 1050
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_JOB
prompt ==========================
prompt
create sequence PCACE.SEQB_JOB
minvalue 1
maxvalue 99999999999999
start with 1050
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_MMORGAN
prompt ==============================
prompt
create sequence PCACE.SEQB_MMORGAN
minvalue 1
maxvalue 99999999999999
start with 1050
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_MMORGAN_AGREEMENT
prompt ========================================
prompt
create sequence PCACE.SEQB_MMORGAN_AGREEMENT
minvalue 1
maxvalue 99999999999999
start with 1040
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_STAT
prompt ===========================
prompt
create sequence PCACE.SEQB_STAT
minvalue 1
maxvalue 99999999999999
start with 49571
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_STAT_HC
prompt ==============================
prompt
create sequence PCACE.SEQB_STAT_HC
minvalue 1
maxvalue 99999999999999
start with 202301
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_T_CANDIDATE_INVITELOG
prompt ============================================
prompt
create sequence PCACE.SEQB_T_CANDIDATE_INVITELOG
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_T_CANDIDATE_VIEWLOG
prompt ==========================================
prompt
create sequence PCACE.SEQB_T_CANDIDATE_VIEWLOG
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_USERLOGIN
prompt ================================
prompt
create sequence PCACE.SEQB_USERLOGIN
minvalue 1
maxvalue 99999999999999
start with 1080
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_USER_LOCATION
prompt ====================================
prompt
create sequence PCACE.SEQB_USER_LOCATION
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQB_VOTE_JOBTOP
prompt ==================================
prompt
create sequence PCACE.SEQB_VOTE_JOBTOP
minvalue 1
maxvalue 99999999999999
start with 1030
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_CHAT
prompt ===========================
prompt
create sequence PCACE.SEQT_CHAT
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_LOCATION
prompt ===============================
prompt
create sequence PCACE.SEQT_LOCATION
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_PUSHSMS_ING
prompt ==================================
prompt
create sequence PCACE.SEQT_PUSHSMS_ING
minvalue 1
maxvalue 99999999999999
start with 1000
increment by 1
cache 10;

prompt
prompt Creating sequence SEQT_SMS_ING
prompt ==============================
prompt
create sequence PCACE.SEQT_SMS_ING
minvalue 1
maxvalue 99999999999999
start with 1080
increment by 1
cache 10;

prompt
prompt Creating sequence SEQ_IB_DATAATTACHFILE_ID
prompt ==========================================
prompt
create sequence PCACE.SEQ_IB_DATAATTACHFILE_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_IB_FORMATION_ID
prompt =====================================
prompt
create sequence PCACE.SEQ_IB_FORMATION_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_I_DATAMODULECOLUMN_ID
prompt ===========================================
prompt
create sequence PCACE.SEQ_I_DATAMODULECOLUMN_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_I_DATATABLECOLUMN_ID
prompt ==========================================
prompt
create sequence PCACE.SEQ_I_DATATABLECOLUMN_ID
minvalue 1
maxvalue 999999999
start with 258
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_I_DTCOLUMNEXTINFO_ID
prompt ==========================================
prompt
create sequence PCACE.SEQ_I_DTCOLUMNEXTINFO_ID
minvalue 1
maxvalue 999999999
start with 30
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_T_LOG_ID
prompt ==============================
prompt
create sequence PCACE.SEQ_T_LOG_ID
minvalue 1
maxvalue 999999999999
start with 651321
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_T_MESSAGE_ID
prompt ==================================
prompt
create sequence PCACE.SEQ_T_MESSAGE_ID
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_Z_DATAHIS_IID
prompt ===================================
prompt
create sequence PCACE.SEQ_Z_DATAHIS_IID
minvalue 1
maxvalue 999999999999
start with 454400
increment by 1
cache 20;


spool off
