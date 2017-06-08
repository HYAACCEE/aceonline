
DROP SEQUENCE pcace.seqB_UserLogin;
CREATE SEQUENCE pcace.seqB_UserLogin MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_UserLogin;
DROP TABLE pcace.ZB_UserLogin;
prompt
prompt Creating table pcace.B_UserLogin ��¼�û�
prompt =============================
prompt
CREATE TABLE pcace.B_UserLogin(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             VARCHAR2(30),                  --�ֻ�����
    c3                             VARCHAR2(50),                  --��¼����
    c4                             NUMBER(6,0),                   --�û������
    c5                             NUMBER(14,0),                  --������֯MID
    c6                             VARCHAR2(32),                  --������֯AMID
    c7                             DATE,                          --����¼����
    c8                             CHAR(1),                       --����״̬
    c9                             NUMBER(6,0),                   --״̬
    c10                            VARCHAR2(30),                  --����¼IP
    c11                            VARCHAR2(30),                  --�ǳ�
    c12                            VARCHAR2(250),                 --ͷ��
    c13                            VARCHAR2(30),                  --ǩ��
    c14                            VARCHAR2(30),                  --�Ա�
    c15                            VARCHAR2(50),                  --����
    c16                            VARCHAR2(30),                  --ʡ��
    c17                            VARCHAR2(30),                  --����
    c18                            VARCHAR2(20),                  --����
    c19                            VARCHAR2(50),                  --openid
    c20                            VARCHAR2(20),                  --Ȩ��/��ɫ
    c21                            NUMBER(6,0),                   --�����֤��ʶ
    c22                            NUMBER(6,0) DEFAULT 0,         --��¼����
    c23                            VARCHAR2(100),                 --��ע
    c24                            NUMBER(2,0) DEFAULT 1,         --����ͼƬ�����Ŀ
    c25                            VARCHAR2(30),                  --��ʵ����
    c26                            VARCHAR2(30),                  --����
    c27                            NUMBER(6,0) DEFAULT 0,         --�Ǽ�
    c28                            VARCHAR2(20),                  --QQ
    c29                            VARCHAR2(50),                  --����
    c30                            VARCHAR2(100),                 --ͨ�ŵ�ַ
    c31                            VARCHAR2(30),                  --��ϵ�绰��������
    c32                            VARCHAR2(50),                  --��ϵEmail
    c33                            VARCHAR2(50),                  --ְλ
    c34                            VARCHAR2(30),                  --��δʹ�ã�
    c35                            VARCHAR2(30),                  --��δʹ�ã�
    c36                            VARCHAR2(30),                  --��δʹ�ã�
    c37                            VARCHAR2(30),                  --��δʹ�ã�
    c38                            VARCHAR2(30),                  --��δʹ�ã�
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30),                  --��δʹ�ã�
    c41                            DATE,                          --�������ʱ��
    c42                            VARCHAR2(30),                  --R����
    c43                            VARCHAR2(30),                  --R�Ա�
    c44                            VARCHAR2(30),                  --R���֤��
    c45                            VARCHAR2(30),                  --R��δʹ�ã�
    c46                            VARCHAR2(30),                  --R��δʹ�ã�
    c47                            VARCHAR2(200),                 --RͼƬ1
    c48                            VARCHAR2(200),                 --RͼƬ2
    c49                            VARCHAR2(200),                 --RͼƬ3
    c50                            VARCHAR2(30),                  --REmail
    c51                            VARCHAR2(50),                  --R��ϵ��ַ
    c52                            VARCHAR2(30),                  --R�ֻ���
    c53                            DATE,                          --R��֤��������
    c54                            DATE,                          --R��֤����
    c55                            NUMBER(6,0),                   --��δʹ�ã�
    c56                            NUMBER(6,0),                   --��δʹ�ã�
    c57                            NUMBER(6,0),                   --��δʹ�ã�
    c58                            NUMBER(6,0),                   --��δʹ�ã�
    c59                            NUMBER(6,0),                   --��δʹ�ã�
    c60                            NUMBER(6,0),                   --��δʹ�ã�
    CONSTRAINT B_UserLogin_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_UserLogin ��¼�û�
prompt =============================
prompt
CREATE TABLE pcace.ZB_UserLogin(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             VARCHAR2(30),                  --�ֻ�����
    c3                             VARCHAR2(50),                  --��¼����
    c4                             NUMBER(6,0),                   --�û������
    c5                             NUMBER(14,0),                  --������֯MID
    c6                             VARCHAR2(32),                  --������֯AMID
    c7                             DATE,                          --����¼����
    c8                             CHAR(1),                       --����״̬
    c9                             NUMBER(6,0),                   --״̬
    c10                            VARCHAR2(30),                  --����¼IP
    c11                            VARCHAR2(30),                  --�ǳ�
    c12                            VARCHAR2(250),                 --ͷ��
    c13                            VARCHAR2(30),                  --ǩ��
    c14                            VARCHAR2(30),                  --�Ա�
    c15                            VARCHAR2(50),                  --����
    c16                            VARCHAR2(30),                  --ʡ��
    c17                            VARCHAR2(30),                  --����
    c18                            VARCHAR2(20),                  --����
    c19                            VARCHAR2(50),                  --openid
    c20                            VARCHAR2(20),                  --Ȩ��/��ɫ
    c21                            NUMBER(6,0),                   --�����֤��ʶ
    c22                            NUMBER(6,0) DEFAULT 0,         --��¼����
    c23                            VARCHAR2(100),                 --��ע
    c24                            NUMBER(2,0) DEFAULT 1,         --����ͼƬ�����Ŀ
    c25                            VARCHAR2(30),                  --��ʵ����
    c26                            VARCHAR2(30),                  --����
    c27                            NUMBER(6,0) DEFAULT 0,         --�Ǽ�
    c28                            VARCHAR2(20),                  --QQ
    c29                            VARCHAR2(50),                  --����
    c30                            VARCHAR2(100),                 --ͨ�ŵ�ַ
    c31                            VARCHAR2(30),                  --��ϵ�绰��������
    c32                            VARCHAR2(50),                  --��ϵEmail
    c33                            VARCHAR2(50),                  --ְλ
    c34                            VARCHAR2(30),                  --��δʹ�ã�
    c35                            VARCHAR2(30),                  --��δʹ�ã�
    c36                            VARCHAR2(30),                  --��δʹ�ã�
    c37                            VARCHAR2(30),                  --��δʹ�ã�
    c38                            VARCHAR2(30),                  --��δʹ�ã�
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30),                  --��δʹ�ã�
    c41                            DATE,                          --�������ʱ��
    c42                            VARCHAR2(30),                  --R����
    c43                            VARCHAR2(30),                  --R�Ա�
    c44                            VARCHAR2(30),                  --R���֤��
    c45                            VARCHAR2(30),                  --R��δʹ�ã�
    c46                            VARCHAR2(30),                  --R��δʹ�ã�
    c47                            VARCHAR2(200),                 --RͼƬ1
    c48                            VARCHAR2(200),                 --RͼƬ2
    c49                            VARCHAR2(200),                 --RͼƬ3
    c50                            VARCHAR2(30),                  --REmail
    c51                            VARCHAR2(50),                  --R��ϵ��ַ
    c52                            VARCHAR2(30),                  --R�ֻ���
    c53                            DATE,                          --R��֤��������
    c54                            DATE,                          --R��֤����
    c55                            NUMBER(6,0),                   --��δʹ�ã�
    c56                            NUMBER(6,0),                   --��δʹ�ã�
    c57                            NUMBER(6,0),                   --��δʹ�ã�
    c58                            NUMBER(6,0),                   --��δʹ�ã�
    c59                            NUMBER(6,0),                   --��δʹ�ã�
    c60                            NUMBER(6,0)                   --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_User_Location;
CREATE SEQUENCE pcace.seqB_User_Location MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_User_Location;
DROP TABLE pcace.ZB_User_Location;
prompt
prompt Creating table pcace.B_User_Location ��¼�û�λ����Ϣ
prompt =============================
prompt
CREATE TABLE pcace.B_User_Location(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             NUMBER(12,6) NOT NULL,         --����
    c3                             NUMBER(12,6) NOT NULL,         --γ��
    c4                             NUMBER(12,6),                  --����
    c5                             NUMBER(12,6),                  --�ٶ�
    c6                             NUMBER(6,0),                   --����
    c7                             VARCHAR2(100),                 --λ����Ϣ
    c8                             VARCHAR2(30)                  --����
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_User_Location ��¼�û�λ����Ϣ
prompt =============================
prompt
CREATE TABLE pcace.ZB_User_Location(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             NUMBER(12,6) NOT NULL,         --����
    c3                             NUMBER(12,6) NOT NULL,         --γ��
    c4                             NUMBER(12,6),                  --����
    c5                             NUMBER(12,6),                  --�ٶ�
    c6                             NUMBER(6,0),                   --����
    c7                             VARCHAR2(100),                 --λ����Ϣ
    c8                             VARCHAR2(30)                  --����
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_MMOrgan;
CREATE SEQUENCE pcace.seqB_MMOrgan MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_MMOrgan;
DROP TABLE pcace.ZB_MMOrgan;
prompt
prompt Creating table pcace.B_MMOrgan ��˾/��ҵ
prompt =============================
prompt
CREATE TABLE pcace.B_MMOrgan(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AMID
    c2                             VARCHAR2(32),                  --��ҵ����
    c3                             VARCHAR2(32),                  --�����ϼ���ҵ
    c4                             NUMBER(6,0),                   --�¼���ҵ��Ŀ
    c5                             NUMBER(6,0) NOT NULL,          --��������
    c6                             NUMBER(6,0) NOT NULL,          --ҵ��״̬
    c7                             NUMBER(6,0),                   --��ҵ
    c8                             NUMBER(6,0) NOT NULL,          --״̬
    c9                             VARCHAR2(30),                  --����
    c10                            VARCHAR2(30),                  --����
    c11                            VARCHAR2(30),                  --��˾�绰
    c12                            VARCHAR2(30),                  --��ҵ��ϵ������
    c13                            VARCHAR2(30),                  --��ҵ��ϵ�˵绰
    c14                            VARCHAR2(200),                 --��ַ
    c15                            VARCHAR2(30),                  --����
    c16                            VARCHAR2(30),                  --��ҵ����������
    c17                            VARCHAR2(30),                  --��ҵ�����˵绰
    c18                            VARCHAR2(30),                  --R��������
    c19                            VARCHAR2(30),                  --R�����˺�
    c20                            VARCHAR2(50),                  --R�����˻�����
    c21                            VARCHAR2(30),                  --R����Ԥ���ֻ���
    c22                            VARCHAR2(50),                  --ҵ�񿪷���Ա
    c23                            VARCHAR2(50),                  --ҵ������Ա
    c24                            NUMBER(6,0) DEFAULT 0,         --���õȼ�
    c25                            NUMBER(14,0) DEFAULT 0,        --���ö��
    c26                            NUMBER(14,0) DEFAULT 0,        --��ǰ�������
    c27                            NUMBER(14,2) DEFAULT 0,        --��ǰ�˻����
    c28                            VARCHAR2(30),                  --��ҵ���
    c29                            VARCHAR2(100),                 --Ӣ������
    c30                            VARCHAR2(30),                  --Ӣ�ļ��
    c31                            VARCHAR2(2000),                --��ҵ����
    c32                            VARCHAR2(200),                 --��ҵLOGO
    c33                            VARCHAR2(200),                 --Ӫҵִ��
    c34                            VARCHAR2(20),                  --��������
    c35                            VARCHAR2(30),                  --��ҵ��ģ
    c36                            VARCHAR2(100),                 --��ַ2
    c37                            VARCHAR2(100),                 --��ַ3
    c38                            VARCHAR2(30),                  --�ʱ�
    c39                            VARCHAR2(30),                  --�ܻ�
    c40                            VARCHAR2(100),                 --��ַ
    CONSTRAINT B_MMOrgan_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_MMOrgan ��˾/��ҵ
prompt =============================
prompt
CREATE TABLE pcace.ZB_MMOrgan(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AMID
    c2                             VARCHAR2(32),                  --��ҵ����
    c3                             VARCHAR2(32),                  --�����ϼ���ҵ
    c4                             NUMBER(6,0),                   --�¼���ҵ��Ŀ
    c5                             NUMBER(6,0) NOT NULL,          --��������
    c6                             NUMBER(6,0) NOT NULL,          --ҵ��״̬
    c7                             NUMBER(6,0),                   --��ҵ
    c8                             NUMBER(6,0) NOT NULL,          --״̬
    c9                             VARCHAR2(30),                  --����
    c10                            VARCHAR2(30),                  --����
    c11                            VARCHAR2(30),                  --��˾�绰
    c12                            VARCHAR2(30),                  --��ҵ��ϵ������
    c13                            VARCHAR2(30),                  --��ҵ��ϵ�˵绰
    c14                            VARCHAR2(200),                 --��ַ
    c15                            VARCHAR2(30),                  --����
    c16                            VARCHAR2(30),                  --��ҵ����������
    c17                            VARCHAR2(30),                  --��ҵ�����˵绰
    c18                            VARCHAR2(30),                  --R��������
    c19                            VARCHAR2(30),                  --R�����˺�
    c20                            VARCHAR2(50),                  --R�����˻�����
    c21                            VARCHAR2(30),                  --R����Ԥ���ֻ���
    c22                            VARCHAR2(50),                  --ҵ�񿪷���Ա
    c23                            VARCHAR2(50),                  --ҵ������Ա
    c24                            NUMBER(6,0) DEFAULT 0,         --���õȼ�
    c25                            NUMBER(14,0) DEFAULT 0,        --���ö��
    c26                            NUMBER(14,0) DEFAULT 0,        --��ǰ�������
    c27                            NUMBER(14,2) DEFAULT 0,        --��ǰ�˻����
    c28                            VARCHAR2(30),                  --��ҵ���
    c29                            VARCHAR2(100),                 --Ӣ������
    c30                            VARCHAR2(30),                  --Ӣ�ļ��
    c31                            VARCHAR2(2000),                --��ҵ����
    c32                            VARCHAR2(200),                 --��ҵLOGO
    c33                            VARCHAR2(200),                 --Ӫҵִ��
    c34                            VARCHAR2(20),                  --��������
    c35                            VARCHAR2(30),                  --��ҵ��ģ
    c36                            VARCHAR2(100),                 --��ַ2
    c37                            VARCHAR2(100),                 --��ַ3
    c38                            VARCHAR2(30),                  --�ʱ�
    c39                            VARCHAR2(30),                  --�ܻ�
    c40                            VARCHAR2(100)                 --��ַ
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Job;
CREATE SEQUENCE pcace.seqB_Job MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Job;
DROP TABLE pcace.ZB_Job;
prompt
prompt Creating table pcace.B_Job ��˾/��ҵ-ְλ
prompt =============================
prompt
CREATE TABLE pcace.B_Job(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(100),                 --ְλ����
    c2                             VARCHAR2(50),                  --HR
    c3                             NUMBER(6,0),                   --״̬
    c4                             NUMBER(6,0),                   --����״̬(0,1)
    c5                             VARCHAR2(32),                  --��˾AMID
    c6                             NUMBER(11,0),                  --��˾MID
    c7                             VARCHAR2(50),                  --������ҵ
    c8                             VARCHAR2(50),                  --���ڲ���
    c9                             VARCHAR2(50),                  --��������
    c10                            VARCHAR2(50),                  --ѧ��Ҫ��
    c11                            VARCHAR2(50),                  --н�ʷ�Χ
    c12                            VARCHAR2(500),                 --ְλ�ջ�
    c13                            VARCHAR2(1000),                --ְλ����
    c14                            VARCHAR2(1000),                --��ְҪ��
    c15                            VARCHAR2(100) DEFAULT '0',     --������ַ
    c16                            CHAR(1),                       --�Ƿ�ҪӢ�ļ���
    c17                            VARCHAR2(500),                 --JD�ļ�
    c18                            DATE,                          --JD�ϴ�����
    c19                            NUMBER(6,0),                   --JD����״̬
    c20                            VARCHAR2(100),                 --JD״̬˵��
    c21                            CHAR(1),                       --�Ƿ�JD(0,1)
    c22                            VARCHAR2(30),                  --��δʹ�ã�
    c23                            VARCHAR2(30),                  --��δʹ�ã�
    c24                            VARCHAR2(20),                  --��δʹ�ã�
    c25                            VARCHAR2(30),                  --��δʹ�ã�
    CONSTRAINT B_Job_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Job ��˾/��ҵ-ְλ
prompt =============================
prompt
CREATE TABLE pcace.ZB_Job(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(100),                 --ְλ����
    c2                             VARCHAR2(50),                  --HR
    c3                             NUMBER(6,0),                   --״̬
    c4                             NUMBER(6,0),                   --����״̬(0,1)
    c5                             VARCHAR2(32),                  --��˾AMID
    c6                             NUMBER(11,0),                  --��˾MID
    c7                             VARCHAR2(50),                  --������ҵ
    c8                             VARCHAR2(50),                  --���ڲ���
    c9                             VARCHAR2(50),                  --��������
    c10                            VARCHAR2(50),                  --ѧ��Ҫ��
    c11                            VARCHAR2(50),                  --н�ʷ�Χ
    c12                            VARCHAR2(500),                 --ְλ�ջ�
    c13                            VARCHAR2(1000),                --ְλ����
    c14                            VARCHAR2(1000),                --��ְҪ��
    c15                            VARCHAR2(100) DEFAULT '0',     --������ַ
    c16                            CHAR(1),                       --�Ƿ�ҪӢ�ļ���
    c17                            VARCHAR2(500),                 --JD�ļ�
    c18                            DATE,                          --JD�ϴ�����
    c19                            NUMBER(6,0),                   --JD����״̬
    c20                            VARCHAR2(100),                 --JD״̬˵��
    c21                            CHAR(1),                       --�Ƿ�JD(0,1)
    c22                            VARCHAR2(30),                  --��δʹ�ã�
    c23                            VARCHAR2(30),                  --��δʹ�ã�
    c24                            VARCHAR2(20),                  --��δʹ�ã�
    c25                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_MMOrgan_Agreement;
CREATE SEQUENCE pcace.seqB_MMOrgan_Agreement MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_MMOrgan_Agreement;
DROP TABLE pcace.ZB_MMOrgan_Agreement;
prompt
prompt Creating table pcace.B_MMOrgan_Agreement �����ͬ
prompt =============================
prompt
CREATE TABLE pcace.B_MMOrgan_Agreement(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AMID
    c2                             DATE,                          --ǩԼ����
    c3                             VARCHAR2(20),                  --��ͬ��ʼ����
    c4                             VARCHAR2(20),                  --��ͬ��������
    c5                             NUMBER(6,0),                   --�������
    c6                             VARCHAR2(30),                  --�׷�����
    c7                             VARCHAR2(30),                  --�׷��������֤��
    c8                             VARCHAR2(30),                  --�׷�������
    c9                             VARCHAR2(30),                  --�׷����������֤��
    c10                            VARCHAR2(4000),                --ǩԼ����
    c11                            NUMBER(6,0),                   --״̬
    c12                            VARCHAR2(200),                 --��ע
    CONSTRAINT B_MMOrgan_Agreement_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_MMOrgan_Agreement �����ͬ
prompt =============================
prompt
CREATE TABLE pcace.ZB_MMOrgan_Agreement(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AMID
    c2                             DATE,                          --ǩԼ����
    c3                             VARCHAR2(20),                  --��ͬ��ʼ����
    c4                             VARCHAR2(20),                  --��ͬ��������
    c5                             NUMBER(6,0),                   --�������
    c6                             VARCHAR2(30),                  --�׷�����
    c7                             VARCHAR2(30),                  --�׷��������֤��
    c8                             VARCHAR2(30),                  --�׷�������
    c9                             VARCHAR2(30),                  --�׷����������֤��
    c10                            VARCHAR2(4000),                --ǩԼ����
    c11                            NUMBER(6,0),                   --״̬
    c12                            VARCHAR2(200)                 --��ע
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate;
CREATE SEQUENCE pcace.seqB_Candidate MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate;
DROP TABLE pcace.ZB_Candidate;
prompt
prompt Creating table pcace.B_Candidate ��ѡ��
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --���״̬
    c4                             DATE,                          --���ʱ��
    c5                             NUMBER(6,0),                   --����״̬
    c6                             DATE,                          --�����߱��ʱ��
    c7                             VARCHAR2(20),                  --�������
    c8                             VARCHAR2(30),                  --������Ϣ-��������
    c9                             VARCHAR2(30),                  --������Ϣ-Ӣ����
    c10                            VARCHAR2(30),                  --������Ϣ-��������
    c11                            NUMBER(3,0),                   --������Ϣ-����
    c12                            NUMBER(6,0),                   --������Ϣ-����
    c13                            NUMBER(6,0),                   --������Ϣ-�Ա�
    c14                            VARCHAR2(30),                  --������Ϣ-��ס���У�ʡ/ֱϽ�У�
    c15                            VARCHAR2(30),                  --������Ϣ-��ס���У��У�
    c16                            VARCHAR2(30),                  --������Ϣ-��ס���У���/�ؼ��У�
    c17                            VARCHAR2(30),                  --������Ϣ-�������ڵأ�ʡ/ֱϽ�У�
    c18                            VARCHAR2(30),                  --������Ϣ-�������ڵأ��У�
    c19                            VARCHAR2(30),                  --������Ϣ-�������ڵأ���/�ؼ��У�
    c20                            VARCHAR2(4),                   --������Ϣ-�ֻ����루���ţ�
    c21                            VARCHAR2(30),                  --������Ϣ-�ֻ�����
    c22                            VARCHAR2(30),                  --������Ϣ-��������
    c23                            VARCHAR2(30),                  --������Ϣ-����
    c24                            NUMBER(6,0),                   --������Ϣ-����״��
    c25                            NUMBER(6,0),                   --������Ϣ-���ѧ��
    c26                            NUMBER(6,0),                   --������Ϣ-������н����
    c27                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ע����
    c28                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�������
    c29                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�������Դ���
    c30                            NUMBER(11,0) DEFAULT 0,        --ͳ��-Offer����
    c31                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ְ����
    c32                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�ܾ�����
    c33                            NUMBER(11,0),                  --��δʹ�ã�
    c34                            NUMBER(11,0),                  --��δʹ�ã�
    c35                            NUMBER(11,0),                  --��δʹ�ã�
    c36                            VARCHAR2(30),                  --��δʹ�ã�
    c37                            VARCHAR2(30),                  --�Ƿ����Contractor
    c38                            VARCHAR2(50),                  --���������ҵ
    c39                            NUMBER(6,0) DEFAULT 0,         --�������ޣ��꣩
    c40                            NUMBER(6,0) DEFAULT 0,         --��ְ״̬
    c41                            VARCHAR2(100),                 --������ڹ�˾
    c42                            VARCHAR2(100),                 --���ְλ
    c43                            VARCHAR2(30),                  --�����н��Ԫ��
    c44                            VARCHAR2(30),                  --�����н����
    c45                            VARCHAR2(100),                 --���н�ʹ���
    c46                            VARCHAR2(100),                 --��������-ְλ
    c47                            VARCHAR2(100),                 --��������-ְ��
    c48                            VARCHAR2(100),                 --��������-��ҵ
    c49                            VARCHAR2(100),                 --��������-����
    c50                            VARCHAR2(100),                 --��������-������н��Ԫ��
    c51                            VARCHAR2(100),                 --��������-������н����
    c52                            VARCHAR2(4000),                --���ܱ�ǩ-ְҵ
    c53                            VARCHAR2(4000),                --���ܱ�ǩ-�Ŷӹ���
    c54                            VARCHAR2(4000),                --���ܱ�ǩ-�������
    c55                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c56                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c57                            VARCHAR2(2000),                --��������
    c58                            VARCHAR2(2000),                --��ѵ����
    c59                            VARCHAR2(2000),                --���֤��
    c60                            VARCHAR2(4000),                --��������
    c61                            VARCHAR2(200),                 --ͷ��
    c62                            VARCHAR2(200),                 --��������
    c63                            VARCHAR2(4000),                --����˾IDs
    c64                            VARCHAR2(4000),                --���ι�˾IDs
    c65                            VARCHAR2(10),                  --�������ƶ�
    c66                            NUMBER(6,0) DEFAULT 0,         --��ѡ��ʶ��0-9��
    c67                            VARCHAR2(32),                  --������ͷ��˾AMID
    c68                            NUMBER(11,0),                  --������ͷ��˾MID
    c69                            NUMBER(6,0),                   --��Ч״̬
    c70                            NUMBER(6,0),                   --��Ӫ��ʶ
    c71                            NUMBER(6,0),                   --������״̬
    c72                            DATE,                          --��������ʱ��
    c73                            DATE,                          --���������ύʱ��
    c74                            VARCHAR2(32),                  --ָ��BSҵ��Ա
    c75                            VARCHAR2(30),                  --ָ��BSҵ��Ա����
    c76                            DATE,                          --ָ��ʱ��
    c77                            VARCHAR2(50),                  --������AUID
    c78                            VARCHAR2(20),                  --����������
    c79                            DATE,                          --����ʱ��
    c80                            VARCHAR2(200),                 --����˵��
    c81                            DATE,                          --�������ʱ��
    c82                            NUMBER(6,0),                   --��������״̬
    c83                            DATE,                          --����������ʱ��
    c84                            DATE,                          --�����������ʱ��
    c85                            NUMBER(6,0),                   --������������״̬
    c86                            DATE,                          --��������������ʱ��
    c87                            DATE,                          --���������������ʱ��
    c88                            VARCHAR2(500),                 --������˽��
    c89                            VARCHAR2(500),                 --����������˽��
    c90                            VARCHAR2(500),                 --�����˽��
    CONSTRAINT B_Candidate_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate ��ѡ��
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --���״̬
    c4                             DATE,                          --���ʱ��
    c5                             NUMBER(6,0),                   --����״̬
    c6                             DATE,                          --�����߱��ʱ��
    c7                             VARCHAR2(20),                  --�������
    c8                             VARCHAR2(30),                  --������Ϣ-��������
    c9                             VARCHAR2(30),                  --������Ϣ-Ӣ����
    c10                            VARCHAR2(30),                  --������Ϣ-��������
    c11                            NUMBER(3,0),                   --������Ϣ-����
    c12                            NUMBER(6,0),                   --������Ϣ-����
    c13                            NUMBER(6,0),                   --������Ϣ-�Ա�
    c14                            VARCHAR2(30),                  --������Ϣ-��ס���У�ʡ/ֱϽ�У�
    c15                            VARCHAR2(30),                  --������Ϣ-��ס���У��У�
    c16                            VARCHAR2(30),                  --������Ϣ-��ס���У���/�ؼ��У�
    c17                            VARCHAR2(30),                  --������Ϣ-�������ڵأ�ʡ/ֱϽ�У�
    c18                            VARCHAR2(30),                  --������Ϣ-�������ڵأ��У�
    c19                            VARCHAR2(30),                  --������Ϣ-�������ڵأ���/�ؼ��У�
    c20                            VARCHAR2(4),                   --������Ϣ-�ֻ����루���ţ�
    c21                            VARCHAR2(30),                  --������Ϣ-�ֻ�����
    c22                            VARCHAR2(30),                  --������Ϣ-��������
    c23                            VARCHAR2(30),                  --������Ϣ-����
    c24                            NUMBER(6,0),                   --������Ϣ-����״��
    c25                            NUMBER(6,0),                   --������Ϣ-���ѧ��
    c26                            NUMBER(6,0),                   --������Ϣ-������н����
    c27                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ע����
    c28                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�������
    c29                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�������Դ���
    c30                            NUMBER(11,0) DEFAULT 0,        --ͳ��-Offer����
    c31                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ְ����
    c32                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�ܾ�����
    c33                            NUMBER(11,0),                  --��δʹ�ã�
    c34                            NUMBER(11,0),                  --��δʹ�ã�
    c35                            NUMBER(11,0),                  --��δʹ�ã�
    c36                            VARCHAR2(30),                  --��δʹ�ã�
    c37                            VARCHAR2(30),                  --�Ƿ����Contractor
    c38                            VARCHAR2(50),                  --���������ҵ
    c39                            NUMBER(6,0) DEFAULT 0,         --�������ޣ��꣩
    c40                            NUMBER(6,0) DEFAULT 0,         --��ְ״̬
    c41                            VARCHAR2(100),                 --������ڹ�˾
    c42                            VARCHAR2(100),                 --���ְλ
    c43                            VARCHAR2(30),                  --�����н��Ԫ��
    c44                            VARCHAR2(30),                  --�����н����
    c45                            VARCHAR2(100),                 --���н�ʹ���
    c46                            VARCHAR2(100),                 --��������-ְλ
    c47                            VARCHAR2(100),                 --��������-ְ��
    c48                            VARCHAR2(100),                 --��������-��ҵ
    c49                            VARCHAR2(100),                 --��������-����
    c50                            VARCHAR2(100),                 --��������-������н��Ԫ��
    c51                            VARCHAR2(100),                 --��������-������н����
    c52                            VARCHAR2(4000),                --���ܱ�ǩ-ְҵ
    c53                            VARCHAR2(4000),                --���ܱ�ǩ-�Ŷӹ���
    c54                            VARCHAR2(4000),                --���ܱ�ǩ-�������
    c55                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c56                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c57                            VARCHAR2(2000),                --��������
    c58                            VARCHAR2(2000),                --��ѵ����
    c59                            VARCHAR2(2000),                --���֤��
    c60                            VARCHAR2(4000),                --��������
    c61                            VARCHAR2(200),                 --ͷ��
    c62                            VARCHAR2(200),                 --��������
    c63                            VARCHAR2(4000),                --����˾IDs
    c64                            VARCHAR2(4000),                --���ι�˾IDs
    c65                            VARCHAR2(10),                  --�������ƶ�
    c66                            NUMBER(6,0) DEFAULT 0,         --��ѡ��ʶ��0-9��
    c67                            VARCHAR2(32),                  --������ͷ��˾AMID
    c68                            NUMBER(11,0),                  --������ͷ��˾MID
    c69                            NUMBER(6,0),                   --��Ч״̬
    c70                            NUMBER(6,0),                   --��Ӫ��ʶ
    c71                            NUMBER(6,0),                   --������״̬
    c72                            DATE,                          --��������ʱ��
    c73                            DATE,                          --���������ύʱ��
    c74                            VARCHAR2(32),                  --ָ��BSҵ��Ա
    c75                            VARCHAR2(30),                  --ָ��BSҵ��Ա����
    c76                            DATE,                          --ָ��ʱ��
    c77                            VARCHAR2(50),                  --������AUID
    c78                            VARCHAR2(20),                  --����������
    c79                            DATE,                          --����ʱ��
    c80                            VARCHAR2(200),                 --����˵��
    c81                            DATE,                          --�������ʱ��
    c82                            NUMBER(6,0),                   --��������״̬
    c83                            DATE,                          --����������ʱ��
    c84                            DATE,                          --�����������ʱ��
    c85                            NUMBER(6,0),                   --������������״̬
    c86                            DATE,                          --��������������ʱ��
    c87                            DATE,                          --���������������ʱ��
    c88                            VARCHAR2(500),                 --������˽��
    c89                            VARCHAR2(500),                 --����������˽��
    c90                            VARCHAR2(500)                 --�����˽��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Process;
CREATE SEQUENCE pcace.seqB_Candidate_Process MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Process;
DROP TABLE pcace.ZB_Candidate_Process;
prompt
prompt Creating table pcace.B_Candidate_Process ��ѡ��-��������
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Process(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(32),                  --����PCID
    c6                             NUMBER(6,0),                   --��������
    c7                             NUMBER(6,0),                   --��ѡ��״̬
    c8                             NUMBER(6,0),                   --����״̬
    c9                             VARCHAR2(100),                 --���̱���
    c10                            VARCHAR2(200),                 --����˵��
    c11                            VARCHAR2(1000),                --��������
    c12                            NUMBER(6,0),                   --���̹ر�״̬
    c13                            VARCHAR2(500),                 --���̹ر�״̬˵��
    c14                            DATE,                          --���̿�ʼʱ��
    c15                            DATE,                          --���̽���ʱ��
    c16                            NUMBER(6,0),                   --�����ڲ�״̬
    c17                            VARCHAR2(500),                 --�����ڲ�״̬˵��
    c18                            NUMBER(6,0) DEFAULT 0,         --�Ѿ������ִ�
    c19                            NUMBER(6,0),                   --Ʊ��״̬
    c20                            VARCHAR2(200),                 --Ʊ��˵��
    c21                            NUMBER(6,0),                   --��ע״̬
    c22                            DATE,                          --��ע����
    c23                            VARCHAR2(200),                 --����������ADMIN�ˣ�
    c24                            VARCHAR2(200),                 --����������HC�ˣ�
    c25                            VARCHAR2(200),                 --����������HR�ˣ�
    c26                            VARCHAR2(200),                 --����������C�ˣ�
    c27                            VARCHAR2(50),                  --������
    c28                            VARCHAR2(30),                  --����������
    c29                            DATE,                          --����ʱ��
    c30                            VARCHAR2(200),                 --����˵��
    c31                            VARCHAR2(32),                  --��˾AMID
    c32                            NUMBER(14,0),                  --��˾MID
    c33                            NUMBER(14,0),                  --ӦƸְλID
    c34                            VARCHAR2(30),                  --����ְλ����
    c35                            VARCHAR2(30),                  --����HR����
    c36                            VARCHAR2(50),                  --������˾���
    c37                            DATE,                          --��������ʱ��
    c38                            VARCHAR2(30),                  --��δʹ�ã�
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30),                  --��δʹ�ã�
    CONSTRAINT B_Candidate_Process_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Process ��ѡ��-��������
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Process(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(32),                  --����PCID
    c6                             NUMBER(6,0),                   --��������
    c7                             NUMBER(6,0),                   --��ѡ��״̬
    c8                             NUMBER(6,0),                   --����״̬
    c9                             VARCHAR2(100),                 --���̱���
    c10                            VARCHAR2(200),                 --����˵��
    c11                            VARCHAR2(1000),                --��������
    c12                            NUMBER(6,0),                   --���̹ر�״̬
    c13                            VARCHAR2(500),                 --���̹ر�״̬˵��
    c14                            DATE,                          --���̿�ʼʱ��
    c15                            DATE,                          --���̽���ʱ��
    c16                            NUMBER(6,0),                   --�����ڲ�״̬
    c17                            VARCHAR2(500),                 --�����ڲ�״̬˵��
    c18                            NUMBER(6,0) DEFAULT 0,         --�Ѿ������ִ�
    c19                            NUMBER(6,0),                   --Ʊ��״̬
    c20                            VARCHAR2(200),                 --Ʊ��˵��
    c21                            NUMBER(6,0),                   --��ע״̬
    c22                            DATE,                          --��ע����
    c23                            VARCHAR2(200),                 --����������ADMIN�ˣ�
    c24                            VARCHAR2(200),                 --����������HC�ˣ�
    c25                            VARCHAR2(200),                 --����������HR�ˣ�
    c26                            VARCHAR2(200),                 --����������C�ˣ�
    c27                            VARCHAR2(50),                  --������
    c28                            VARCHAR2(30),                  --����������
    c29                            DATE,                          --����ʱ��
    c30                            VARCHAR2(200),                 --����˵��
    c31                            VARCHAR2(32),                  --��˾AMID
    c32                            NUMBER(14,0),                  --��˾MID
    c33                            NUMBER(14,0),                  --ӦƸְλID
    c34                            VARCHAR2(30),                  --����ְλ����
    c35                            VARCHAR2(30),                  --����HR����
    c36                            VARCHAR2(50),                  --������˾���
    c37                            DATE,                          --��������ʱ��
    c38                            VARCHAR2(30),                  --��δʹ�ã�
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVEducation;
CREATE SEQUENCE pcace.seqB_Candidate_CVEducation MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVEducation;
DROP TABLE pcace.ZB_Candidate_CVEducation;
prompt
prompt Creating table pcace.B_Candidate_CVEducation ��ѡ��-��������
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVEducation(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --ѧУ
    c6                             VARCHAR2(50),                  --רҵ
    c7                             NUMBER(6,0),                   --ѧ��
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(30),                  --��δʹ�ã�
    c10                            VARCHAR2(50),                  --��������AUID
    c11                            VARCHAR2(30),                  --������������
    c12                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_CVEducation_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVEducation ��ѡ��-��������
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVEducation(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --ѧУ
    c6                             VARCHAR2(50),                  --רҵ
    c7                             NUMBER(6,0),                   --ѧ��
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(30),                  --��δʹ�ã�
    c10                            VARCHAR2(50),                  --��������AUID
    c11                            VARCHAR2(30),                  --������������
    c12                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVTrain;
CREATE SEQUENCE pcace.seqB_Candidate_CVTrain MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVTrain;
DROP TABLE pcace.ZB_Candidate_CVTrain;
prompt
prompt Creating table pcace.B_Candidate_CVTrain ��ѡ��-��ѵ����
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVTrain(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --��ѵ����
    c6                             VARCHAR2(200),                 --��ѵ����
    c7                             VARCHAR2(30),                  --��δʹ�ã�
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(50),                  --��������AUID
    c10                            VARCHAR2(30),                  --������������
    c11                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_CVTrain_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVTrain ��ѡ��-��ѵ����
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVTrain(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --��ѵ����
    c6                             VARCHAR2(200),                 --��ѵ����
    c7                             VARCHAR2(30),                  --��δʹ�ã�
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(50),                  --��������AUID
    c10                            VARCHAR2(30),                  --������������
    c11                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVCertificate;
CREATE SEQUENCE pcace.seqB_Candidate_CVCertificate MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVCertificate;
DROP TABLE pcace.ZB_Candidate_CVCertificate;
prompt
prompt Creating table pcace.B_Candidate_CVCertificate ��ѡ��-���֤��
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVCertificate(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --ʱ��
    c4                             VARCHAR2(50),                  --֤��
    c5                             VARCHAR2(30),                  --��Ч��
    c6                             VARCHAR2(200),                 --����1
    c7                             VARCHAR2(200),                 --����2
    c8                             VARCHAR2(50),                  --��������AUID
    c9                             VARCHAR2(30),                  --������������
    c10                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_CVCertificate_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVCertificate ��ѡ��-���֤��
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVCertificate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --ʱ��
    c4                             VARCHAR2(50),                  --֤��
    c5                             VARCHAR2(30),                  --��Ч��
    c6                             VARCHAR2(200),                 --����1
    c7                             VARCHAR2(200),                 --����2
    c8                             VARCHAR2(50),                  --��������AUID
    c9                             VARCHAR2(30),                  --������������
    c10                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVWork;
CREATE SEQUENCE pcace.seqB_Candidate_CVWork MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVWork;
DROP TABLE pcace.ZB_Candidate_CVWork;
prompt
prompt Creating table pcace.B_Candidate_CVWork ��ѡ��-��������
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVWork(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(200),                 --��˾����
    c7                             VARCHAR2(30),                  --��ҵ
    c8                             VARCHAR2(100),                 --����
    c9                             VARCHAR2(100),                 --ְλ
    c10                            VARCHAR2(100),                 --ְ��
    c11                            NUMBER(6,0),                   --������н��Ԫ��
    c12                            NUMBER(6,0),                   --������н����
    c13                            VARCHAR2(200),                 --����н�ʹ���
    c14                            VARCHAR2(100),                 --�����㱨����
    c15                            VARCHAR2(30),                  --������������
    c16                            VARCHAR2(1000),                --����ְ��
    c17                            VARCHAR2(200),                 --��������Ȩ��
    c18                            VARCHAR2(1000),                --������˾����
    c19                            NUMBER(6,0) DEFAULT 0,         --�Ƿ��ι�������
    c20                            VARCHAR2(50),                  --ְλ����
    c21                            VARCHAR2(50),                  --��������AUID
    c22                            VARCHAR2(30),                  --������������
    c23                            DATE,                          --����ʱ��
    c24                            NUMBER(6,0) DEFAULT 0,         --������ְ�ڣ��죩
    c25                            VARCHAR2(200),                 --������ְԭ��
    c26                            CHAR(1) DEFAULT '0',           --������ҵ��ֹ���ƣ�1,0��
    c27                            NUMBER(6,0) DEFAULT 0,         --��������ʱ�����꣩
    c28                            VARCHAR2(1000),                --��δʹ�ã�
    c29                            VARCHAR2(1000),                --��������ҵ��
    c30                            VARCHAR2(30),                  --��δʹ�ã�
    CONSTRAINT B_Candidate_CVWork_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVWork ��ѡ��-��������
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVWork(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(200),                 --��˾����
    c7                             VARCHAR2(30),                  --��ҵ
    c8                             VARCHAR2(100),                 --����
    c9                             VARCHAR2(100),                 --ְλ
    c10                            VARCHAR2(100),                 --ְ��
    c11                            NUMBER(6,0),                   --������н��Ԫ��
    c12                            NUMBER(6,0),                   --������н����
    c13                            VARCHAR2(200),                 --����н�ʹ���
    c14                            VARCHAR2(100),                 --�����㱨����
    c15                            VARCHAR2(30),                  --������������
    c16                            VARCHAR2(1000),                --����ְ��
    c17                            VARCHAR2(200),                 --��������Ȩ��
    c18                            VARCHAR2(1000),                --������˾����
    c19                            NUMBER(6,0) DEFAULT 0,         --�Ƿ��ι�������
    c20                            VARCHAR2(50),                  --ְλ����
    c21                            VARCHAR2(50),                  --��������AUID
    c22                            VARCHAR2(30),                  --������������
    c23                            DATE,                          --����ʱ��
    c24                            NUMBER(6,0) DEFAULT 0,         --������ְ�ڣ��죩
    c25                            VARCHAR2(200),                 --������ְԭ��
    c26                            CHAR(1) DEFAULT '0',           --������ҵ��ֹ���ƣ�1,0��
    c27                            NUMBER(6,0) DEFAULT 0,         --��������ʱ�����꣩
    c28                            VARCHAR2(1000),                --��δʹ�ã�
    c29                            VARCHAR2(1000),                --��������ҵ��
    c30                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVProject;
CREATE SEQUENCE pcace.seqB_Candidate_CVProject MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVProject;
DROP TABLE pcace.ZB_Candidate_CVProject;
prompt
prompt Creating table pcace.B_Candidate_CVProject ��ѡ��-��Ŀ����
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVProject(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(50),                  --ְλ
    c7                             VARCHAR2(1000),                --��Ŀ���
    c8                             VARCHAR2(500),                 --��Ŀְ��
    c9                             VARCHAR2(500),                 --��Ŀ�ɾ�
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(50),                  --��������AUID
    c13                            VARCHAR2(30),                  --������������
    c14                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_CVProject_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVProject ��ѡ��-��Ŀ����
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVProject(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(50),                  --ְλ
    c7                             VARCHAR2(1000),                --��Ŀ���
    c8                             VARCHAR2(500),                 --��Ŀְ��
    c9                             VARCHAR2(500),                 --��Ŀ�ɾ�
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(50),                  --��������AUID
    c13                            VARCHAR2(30),                  --������������
    c14                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Collect;
CREATE SEQUENCE pcace.seqB_Candidate_Collect MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Collect;
DROP TABLE pcace.ZB_Candidate_Collect;
prompt
prompt Creating table pcace.B_Candidate_Collect ��ע
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Collect(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --��ע��AUID
    c3                             NUMBER(6,0),                   --��ע����ݣ�2HR��3��ͷ��
    c4                             NUMBER(6,0),                   --��ע״̬��1��ע��2���࣬0ȡ����ע��
    c5                             NUMBER(6,0),                   --״̬
    CONSTRAINT B_Candidate_Collect_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Collect ��ע
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Collect(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --��ע��AUID
    c3                             NUMBER(6,0),                   --��ע����ݣ�2HR��3��ͷ��
    c4                             NUMBER(6,0),                   --��ע״̬��1��ע��2���࣬0ȡ����ע��
    c5                             NUMBER(6,0)                   --״̬
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Organ_Relation;
CREATE SEQUENCE pcace.seqB_Candidate_Organ_Relation MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Organ_Relation;
DROP TABLE pcace.ZB_Candidate_Organ_Relation;
prompt
prompt Creating table pcace.B_Candidate_Organ_Relation ��ѡ������ҵ��ϵ
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Organ_Relation(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --��˾AMID
    c3                             NUMBER(11,0),                  --��˾ID
    c4                             VARCHAR2(100),                 --��˾����
    c5                             NUMBER(6,0),                   --��ϵ״̬
    c6                             NUMBER(6,0),                   --��δʹ�ã�
    c7                             NUMBER(6,0),                   --��δʹ�ã�
    c8                             VARCHAR2(32),                  --������AUID
    c9                             VARCHAR2(30),                  --����������
    c10                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_Organ_Relation_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Organ_Relation ��ѡ������ҵ��ϵ
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Organ_Relation(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --��˾AMID
    c3                             NUMBER(11,0),                  --��˾ID
    c4                             VARCHAR2(100),                 --��˾����
    c5                             NUMBER(6,0),                   --��ϵ״̬
    c6                             NUMBER(6,0),                   --��δʹ�ã�
    c7                             NUMBER(6,0),                   --��δʹ�ã�
    c8                             VARCHAR2(32),                  --������AUID
    c9                             VARCHAR2(30),                  --����������
    c10                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Files;
CREATE SEQUENCE pcace.seqB_Candidate_Files MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Files;
DROP TABLE pcace.ZB_Candidate_Files;
prompt
prompt Creating table pcace.B_Candidate_Files ��ѡ��-����
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Files(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             NUMBER(6,0),                   --��������
    c4                             VARCHAR2(50),                  --����Ŀ¼
    c5                             VARCHAR2(100),                 --�ļ�����
    c6                             VARCHAR2(200),                 --�ļ�����
    c7                             VARCHAR2(10),                  --�ļ�����
    c8                             VARCHAR2(300),                 --����
    c9                             VARCHAR2(50),                  --�ϴ���
    CONSTRAINT B_Candidate_Files_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Files ��ѡ��-����
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Files(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             NUMBER(6,0),                   --��������
    c4                             VARCHAR2(50),                  --����Ŀ¼
    c5                             VARCHAR2(100),                 --�ļ�����
    c6                             VARCHAR2(200),                 --�ļ�����
    c7                             VARCHAR2(10),                  --�ļ�����
    c8                             VARCHAR2(300),                 --����
    c9                             VARCHAR2(50)                  --�ϴ���
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Marker;
CREATE SEQUENCE pcace.seqB_Candidate_Marker MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Marker;
DROP TABLE pcace.ZB_Candidate_Marker;
prompt
prompt Creating table pcace.B_Candidate_Marker ���ܱ�ǩ
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Marker(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             NUMBER(6,0),                   --��ǩ����
    c5                             NUMBER(6,0),                   --��ǩ
    c6                             VARCHAR2(100),                 --��ǩ˵��
    c7                             VARCHAR2(30),                  --��δʹ�ã�
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(32),                  --������AUID
    c10                            VARCHAR2(30),                  --����������
    c11                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_Marker_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Marker ���ܱ�ǩ
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Marker(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             NUMBER(6,0),                   --��ǩ����
    c5                             NUMBER(6,0),                   --��ǩ
    c6                             VARCHAR2(100),                 --��ǩ˵��
    c7                             VARCHAR2(30),                  --��δʹ�ã�
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(32),                  --������AUID
    c10                            VARCHAR2(30),                  --����������
    c11                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_HCComment;
CREATE SEQUENCE pcace.seqB_Candidate_HCComment MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_HCComment;
DROP TABLE pcace.ZB_Candidate_HCComment;
prompt
prompt Creating table pcace.B_Candidate_HCComment ��������
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_HCComment(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             DATE,                          --�����ύʱ��
    c5                             NUMBER(6,0),                   --����״̬
    c6                             DATE,                          --�������ʱ��
    c7                             VARCHAR2(2000),                --����ӡ��
    c8                             VARCHAR2(4000),                --�����ܽ�
    c9                             VARCHAR2(2000),                --��ע�ܽ�
    c10                            NUMBER(6,0),                   --����״��
    c11                            NUMBER(6,0),                   --��δʹ�ã�
    c12                            VARCHAR2(500),                 --��δʹ�ã�
    c13                            VARCHAR2(500),                 --�����Ը�
    c14                            VARCHAR2(500),                 --������ͨ����
    c15                            VARCHAR2(500),                 --��������ˮƽ
    c16                            VARCHAR2(500),                 --����ȱ�㡢����
    c17                            VARCHAR2(30),                  --��δʹ�ã�
    c18                            VARCHAR2(30),                  --��δʹ�ã�
    c19                            VARCHAR2(30),                  --��δʹ�ã�
    c20                            VARCHAR2(30),                  --������ҵ���飨�꣩
    c21                            VARCHAR2(30),                  --���������飨�꣩
    c22                            VARCHAR2(2000),                --������Ͻ����Χ
    c23                            NUMBER(6,0),                   --��δʹ�ã�
    c24                            NUMBER(6,0),                   --��δʹ�ã�
    c25                            NUMBER(6,0),                   --��δʹ�ã�
    c26                            NUMBER(6,0),                   --��δʹ�ã�
    c27                            NUMBER(6,0),                   --��δʹ�ã�
    c28                            VARCHAR2(32),                  --BS����ԱAUID
    c29                            VARCHAR2(30),                  --BS����Ա����
    c30                            DATE,                          --BS����ʱ��
    CONSTRAINT B_Candidate_HCComment_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_HCComment ��������
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_HCComment(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             DATE,                          --�����ύʱ��
    c5                             NUMBER(6,0),                   --����״̬
    c6                             DATE,                          --�������ʱ��
    c7                             VARCHAR2(2000),                --����ӡ��
    c8                             VARCHAR2(4000),                --�����ܽ�
    c9                             VARCHAR2(2000),                --��ע�ܽ�
    c10                            NUMBER(6,0),                   --����״��
    c11                            NUMBER(6,0),                   --��δʹ�ã�
    c12                            VARCHAR2(500),                 --��δʹ�ã�
    c13                            VARCHAR2(500),                 --�����Ը�
    c14                            VARCHAR2(500),                 --������ͨ����
    c15                            VARCHAR2(500),                 --��������ˮƽ
    c16                            VARCHAR2(500),                 --����ȱ�㡢����
    c17                            VARCHAR2(30),                  --��δʹ�ã�
    c18                            VARCHAR2(30),                  --��δʹ�ã�
    c19                            VARCHAR2(30),                  --��δʹ�ã�
    c20                            VARCHAR2(30),                  --������ҵ���飨�꣩
    c21                            VARCHAR2(30),                  --���������飨�꣩
    c22                            VARCHAR2(2000),                --������Ͻ����Χ
    c23                            NUMBER(6,0),                   --��δʹ�ã�
    c24                            NUMBER(6,0),                   --��δʹ�ã�
    c25                            NUMBER(6,0),                   --��δʹ�ã�
    c26                            NUMBER(6,0),                   --��δʹ�ã�
    c27                            NUMBER(6,0),                   --��δʹ�ã�
    c28                            VARCHAR2(32),                  --BS����ԱAUID
    c29                            VARCHAR2(30),                  --BS����Ա����
    c30                            DATE                          --BS����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Interview;
CREATE SEQUENCE pcace.seqB_Candidate_Interview MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Interview;
DROP TABLE pcace.ZB_Candidate_Interview;
prompt
prompt Creating table pcace.B_Candidate_Interview ��ѡ��-���Լ�¼
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Interview(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --��ѡ��AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             CHAR(1),                       --�����˶���2,3��
    c4                             VARCHAR2(50),                  --������AUID
    c5                             VARCHAR2(30),                  --��ѡ������
    c6                             VARCHAR2(100),                 --����ְλ
    c7                             DATE,                          --����ʱ��
    c8                             DATE,                          --��ѡʱ��
    c9                             VARCHAR2(200),                 --���Եص�
    c10                            NUMBER(6,0),                   --��ѡ�ˣ����Խ��״̬
    c11                            DATE,                          --��ѡ�ˣ����Խ���ύʱ��
    c12                            VARCHAR2(50),                  --��ѡ�ˣ����Խ���ύ��
    c13                            VARCHAR2(500),                 --��ѡ�ˣ����˵��
    c14                            NUMBER(6,0),                   --����״̬��0,1,9��
    c15                            DATE,                          --�����ˣ����Խ���ύʱ��
    c16                            VARCHAR2(50),                  --�����ˣ����Խ���ύ��
    c17                            VARCHAR2(500),                 --�����ˣ����˵��
    c18                            VARCHAR2(32),                  --��������PCID
    c19                            VARCHAR2(50),                  --���Ѷ���
    c20                            VARCHAR2(30),                  --��δʹ�ã�
    c21                            VARCHAR2(30),                  --��δʹ�ã�
    c22                            VARCHAR2(30),                  --��δʹ�ã�
    c23                            VARCHAR2(32),                  --������AUID
    c24                            VARCHAR2(30),                  --����������
    c25                            DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_Interview_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Interview ��ѡ��-���Լ�¼
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Interview(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --��ѡ��AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             CHAR(1),                       --�����˶���2,3��
    c4                             VARCHAR2(50),                  --������AUID
    c5                             VARCHAR2(30),                  --��ѡ������
    c6                             VARCHAR2(100),                 --����ְλ
    c7                             DATE,                          --����ʱ��
    c8                             DATE,                          --��ѡʱ��
    c9                             VARCHAR2(200),                 --���Եص�
    c10                            NUMBER(6,0),                   --��ѡ�ˣ����Խ��״̬
    c11                            DATE,                          --��ѡ�ˣ����Խ���ύʱ��
    c12                            VARCHAR2(50),                  --��ѡ�ˣ����Խ���ύ��
    c13                            VARCHAR2(500),                 --��ѡ�ˣ����˵��
    c14                            NUMBER(6,0),                   --����״̬��0,1,9��
    c15                            DATE,                          --�����ˣ����Խ���ύʱ��
    c16                            VARCHAR2(50),                  --�����ˣ����Խ���ύ��
    c17                            VARCHAR2(500),                 --�����ˣ����˵��
    c18                            VARCHAR2(32),                  --��������PCID
    c19                            VARCHAR2(50),                  --���Ѷ���
    c20                            VARCHAR2(30),                  --��δʹ�ã�
    c21                            VARCHAR2(30),                  --��δʹ�ã�
    c22                            VARCHAR2(30),                  --��δʹ�ã�
    c23                            VARCHAR2(32),                  --������AUID
    c24                            VARCHAR2(30),                  --����������
    c25                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.B_Candidate_Process_His;
DROP TABLE pcace.ZB_Candidate_Process_His;
prompt
prompt Creating table pcace.B_Candidate_Process_His ��ѡ��-����������ʷ
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Process_His(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(50),                  --����PCID
    c6                             NUMBER(6,0),                   --��������
    c7                             NUMBER(6,0),                   --��ѡ��״̬
    c8                             NUMBER(6,0),                   --����״̬
    c9                             VARCHAR2(100),                 --���̱���
    c10                            VARCHAR2(200),                 --����˵��
    c11                            VARCHAR2(1000),                --��������
    c12                            NUMBER(6,0),                   --���̹ر�״̬
    c13                            VARCHAR2(500),                 --���̹ر�״̬˵��
    c14                            DATE,                          --���̿�ʼʱ��
    c15                            DATE,                          --���̽���ʱ��
    c16                            NUMBER(6,0),                   --�����ڲ�״̬
    c17                            VARCHAR2(500),                 --�����ڲ�״̬˵��
    c18                            NUMBER(6,0) DEFAULT 0,         --�Ѿ������ִ�
    c19                            NUMBER(6,0),                   --Ʊ��״̬
    c20                            VARCHAR2(200),                 --Ʊ��˵��
    c21                            NUMBER(6,0),                   --��ע״̬
    c22                            DATE,                          --��ע����
    c23                            VARCHAR2(200),                 --����������ADMIN�ˣ�
    c24                            VARCHAR2(200),                 --����������HC�ˣ�
    c25                            VARCHAR2(200),                 --����������HR�ˣ�
    c26                            VARCHAR2(200),                 --����������C�ˣ�
    c27                            VARCHAR2(50),                  --������
    c28                            VARCHAR2(30),                  --����������
    c29                            DATE,                          --����ʱ��
    c30                            VARCHAR2(200),                 --����˵��
    c31                            VARCHAR2(32),                  --��˾AMID
    c32                            NUMBER(14,0),                  --��˾MID
    c33                            NUMBER(14,0),                  --ӦƸְλID
    c34                            VARCHAR2(30),                  --����ְλ����
    c35                            VARCHAR2(30),                  --����HR����
    c36                            VARCHAR2(30),                  --������˾���
    c37                            DATE,                          --��������ʱ��
    c38                            VARCHAR2(30),                  --��δʹ�ã�
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Process_His ��ѡ��-����������ʷ
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Process_His(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(50),                  --����PCID
    c6                             NUMBER(6,0),                   --��������
    c7                             NUMBER(6,0),                   --��ѡ��״̬
    c8                             NUMBER(6,0),                   --����״̬
    c9                             VARCHAR2(100),                 --���̱���
    c10                            VARCHAR2(200),                 --����˵��
    c11                            VARCHAR2(1000),                --��������
    c12                            NUMBER(6,0),                   --���̹ر�״̬
    c13                            VARCHAR2(500),                 --���̹ر�״̬˵��
    c14                            DATE,                          --���̿�ʼʱ��
    c15                            DATE,                          --���̽���ʱ��
    c16                            NUMBER(6,0),                   --�����ڲ�״̬
    c17                            VARCHAR2(500),                 --�����ڲ�״̬˵��
    c18                            NUMBER(6,0) DEFAULT 0,         --�Ѿ������ִ�
    c19                            NUMBER(6,0),                   --Ʊ��״̬
    c20                            VARCHAR2(200),                 --Ʊ��˵��
    c21                            NUMBER(6,0),                   --��ע״̬
    c22                            DATE,                          --��ע����
    c23                            VARCHAR2(200),                 --����������ADMIN�ˣ�
    c24                            VARCHAR2(200),                 --����������HC�ˣ�
    c25                            VARCHAR2(200),                 --����������HR�ˣ�
    c26                            VARCHAR2(200),                 --����������C�ˣ�
    c27                            VARCHAR2(50),                  --������
    c28                            VARCHAR2(30),                  --����������
    c29                            DATE,                          --����ʱ��
    c30                            VARCHAR2(200),                 --����˵��
    c31                            VARCHAR2(32),                  --��˾AMID
    c32                            NUMBER(14,0),                  --��˾MID
    c33                            NUMBER(14,0),                  --ӦƸְλID
    c34                            VARCHAR2(30),                  --����ְλ����
    c35                            VARCHAR2(30),                  --����HR����
    c36                            VARCHAR2(30),                  --������˾���
    c37                            DATE,                          --��������ʱ��
    c38                            VARCHAR2(30),                  --��δʹ�ã�
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Language;
CREATE SEQUENCE pcace.seqB_Candidate_Language MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Language;
DROP TABLE pcace.ZB_Candidate_Language;
prompt
prompt Creating table pcace.B_Candidate_Language ��ѡ������ˮƽ
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Language(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --����
    c4                             NUMBER(6,0),                   --ˮƽ
    c5                             NUMBER(6,0),                   --����AUID
    c6                             VARCHAR2(32),                  --������AUID
    c7                             VARCHAR2(30),                  --����������
    c8                             DATE,                          --����ʱ��
    CONSTRAINT B_Candidate_Language_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Language ��ѡ������ˮƽ
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Language(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --����
    c4                             NUMBER(6,0),                   --ˮƽ
    c5                             NUMBER(6,0),                   --����AUID
    c6                             VARCHAR2(32),                  --������AUID
    c7                             VARCHAR2(30),                  --����������
    c8                             DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Bill;
CREATE SEQUENCE pcace.seqB_Bill MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Bill;
DROP TABLE pcace.ZB_Bill;
prompt
prompt Creating table pcace.B_Bill Ʊ��
prompt =============================
prompt
CREATE TABLE pcace.B_Bill(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����PCID
    c3                             VARCHAR2(32),                  --HR_AMID
    c4                             VARCHAR2(32),                  --HR_AUID
    c5                             VARCHAR2(32),                  --����AMID
    c6                             VARCHAR2(32),                  --����AUID
    c7                             VARCHAR2(30),                  --��ѡ��
    c8                             VARCHAR2(30),                  --ְλ
    c9                             VARCHAR2(30),                  --��Ƹ�����
    c10                            NUMBER(6,0),                   --Ʊ��״̬
    c11                            VARCHAR2(50),                  --HR��˾����
    c12                            VARCHAR2(30),                  --HR��˾��ϵ��
    c13                            VARCHAR2(100),                 --������Ϣ
    c14                            VARCHAR2(30),                  --��Ʊ����
    c15                            VARCHAR2(32),                  --��Ʊ��
    c16                            VARCHAR2(30),                  --��Ʊ������
    c17                            DATE,                          --��Ʊʱ��
    c18                            VARCHAR2(30),                  --�����
    c19                            VARCHAR2(32),                  --������
    c20                            VARCHAR2(30),                  --����������
    c21                            DATE,                          --����ʱ��
    c22                            VARCHAR2(30),                  --��δʹ�ã�
    c23                            VARCHAR2(30),                  --��δʹ�ã�
    c24                            VARCHAR2(30),                  --��δʹ�ã�
    c25                            VARCHAR2(30),                  --��δʹ�ã�
    CONSTRAINT B_Bill_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Bill Ʊ��
prompt =============================
prompt
CREATE TABLE pcace.ZB_Bill(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����PCID
    c3                             VARCHAR2(32),                  --HR_AMID
    c4                             VARCHAR2(32),                  --HR_AUID
    c5                             VARCHAR2(32),                  --����AMID
    c6                             VARCHAR2(32),                  --����AUID
    c7                             VARCHAR2(30),                  --��ѡ��
    c8                             VARCHAR2(30),                  --ְλ
    c9                             VARCHAR2(30),                  --��Ƹ�����
    c10                            NUMBER(6,0),                   --Ʊ��״̬
    c11                            VARCHAR2(50),                  --HR��˾����
    c12                            VARCHAR2(30),                  --HR��˾��ϵ��
    c13                            VARCHAR2(100),                 --������Ϣ
    c14                            VARCHAR2(30),                  --��Ʊ����
    c15                            VARCHAR2(32),                  --��Ʊ��
    c16                            VARCHAR2(30),                  --��Ʊ������
    c17                            DATE,                          --��Ʊʱ��
    c18                            VARCHAR2(30),                  --�����
    c19                            VARCHAR2(32),                  --������
    c20                            VARCHAR2(30),                  --����������
    c21                            DATE,                          --����ʱ��
    c22                            VARCHAR2(30),                  --��δʹ�ã�
    c23                            VARCHAR2(30),                  --��δʹ�ã�
    c24                            VARCHAR2(30),                  --��δʹ�ã�
    c25                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Action;
CREATE SEQUENCE pcace.seqB_Action MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Action;
DROP TABLE pcace.ZB_Action;
prompt
prompt Creating table pcace.B_Action ҵ���¼�
prompt =============================
prompt
CREATE TABLE pcace.B_Action(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --����AUID����ѡ�ˣ�
    c2                             VARCHAR2(50),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             VARCHAR2(32),                  --����PCID
    c5                             NUMBER(6,0),                   --�¼�����
    c6                             NUMBER(6,0),                   --�¼�����
    c7                             NUMBER(6,0),                   --���̷���
    c8                             NUMBER(6,0),                   --�¼�״̬
    c9                             DATE,                          --��ʱִ�н�ֹʱ��
    c10                            VARCHAR2(20),                  --��ʱִ���¼�CODE
    c11                            NUMBER(6,0),                   --��ʱִ��״̬��0,1��
    c12                            VARCHAR2(30),                  --�¼����⣨������
    c13                            VARCHAR2(500),                 --�¼�����
    c14                            VARCHAR2(200),                 --�¼�����M
    c15                            VARCHAR2(200),                 --�¼�����BS
    c16                            VARCHAR2(200),                 --�¼�����HC
    c17                            VARCHAR2(200),                 --�¼�����HR
    c18                            VARCHAR2(200),                 --�¼�����C
    c19                            CHAR(1) DEFAULT '0',           --M�ɼ�
    c20                            CHAR(1) DEFAULT '0',           --BS�ɼ�
    c21                            CHAR(1) DEFAULT '0',           --HC�ɼ�
    c22                            CHAR(1) DEFAULT '0',           --HR�ɼ�
    c23                            CHAR(1) DEFAULT '0',           --C�ɼ�
    c24                            DATE,                          --֪ͨʱ��
    c25                            VARCHAR2(100),                 --֪ͨ����M
    c26                            VARCHAR2(100),                 --֪ͨ����BS
    c27                            VARCHAR2(100),                 --֪ͨ����HC
    c28                            VARCHAR2(100),                 --֪ͨ����HR
    c29                            VARCHAR2(100),                 --֪ͨ����C
    c30                            VARCHAR2(200),                 --֪ͨ����M
    c31                            VARCHAR2(200),                 --֪ͨ����BS
    c32                            VARCHAR2(200),                 --֪ͨ����HC
    c33                            VARCHAR2(200),                 --֪ͨ����HR
    c34                            VARCHAR2(200),                 --֪ͨ����C
    c35                            NUMBER(6,0),                   --����״̬M
    c36                            NUMBER(6,0),                   --����״̬BS
    c37                            NUMBER(6,0),                   --����״̬HC
    c38                            NUMBER(6,0),                   --����״̬HR
    c39                            NUMBER(6,0),                   --����״̬C
    c40                            CHAR(1) DEFAULT '0',           --�Ѷ����M
    c41                            CHAR(1) DEFAULT '0',           --�Ѷ����BS
    c42                            CHAR(1) DEFAULT '0',           --�Ѷ����HC
    c43                            CHAR(1) DEFAULT '0',           --�Ѷ����HR
    c44                            CHAR(1) DEFAULT '0',           --�Ѷ����C
    c45                            VARCHAR2(50),                  --������˾AMID
    c46                            VARCHAR2(30),                  --������˾MID
    c47                            VARCHAR2(30),                  --����ְλID
    c48                            VARCHAR2(50),                  --����HR_AUID
    c49                            DATE,                          --������������
    c50                            VARCHAR2(30),                  --������ѡ������
    c51                            VARCHAR2(200),                 --������ѡ��ͷ��
    c52                            VARCHAR2(100),                 --������ѡ�˵�ǰְλ
    c53                            NUMBER(6,0),                   --�����¼�����״̬
    c54                            VARCHAR2(50),                  --�����¼�����״̬˵��
    c55                            VARCHAR2(200),                 --������˾ְλHR
    c56                            VARCHAR2(100),                 --�����¼���������
    c57                            NUMBER(6,0),                   --�����¼���������
    c58                            VARCHAR2(100),                 --�����¼����ѱ�ע˵��
    c59                            CHAR(1),                       --�����Ƿ���Ƴ�
    c60                            NUMBER(16,0) DEFAULT -1,       --ԭtid
    c61                            NUMBER(6,0),                   --�¼�����״̬
    c62                            VARCHAR2(200),                 --��������
    c63                            VARCHAR2(100),                 --��������
    c64                            VARCHAR2(30),                  --�¼�CODE
    c65                            NUMBER(6,0),                   --��δʹ�ã�
    CONSTRAINT B_Action_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Action ҵ���¼�
prompt =============================
prompt
CREATE TABLE pcace.ZB_Action(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(50),                  --����AUID����ѡ�ˣ�
    c2                             VARCHAR2(50),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             VARCHAR2(32),                  --����PCID
    c5                             NUMBER(6,0),                   --�¼�����
    c6                             NUMBER(6,0),                   --�¼�����
    c7                             NUMBER(6,0),                   --���̷���
    c8                             NUMBER(6,0),                   --�¼�״̬
    c9                             DATE,                          --��ʱִ�н�ֹʱ��
    c10                            VARCHAR2(20),                  --��ʱִ���¼�CODE
    c11                            NUMBER(6,0),                   --��ʱִ��״̬��0,1��
    c12                            VARCHAR2(30),                  --�¼����⣨������
    c13                            VARCHAR2(500),                 --�¼�����
    c14                            VARCHAR2(200),                 --�¼�����M
    c15                            VARCHAR2(200),                 --�¼�����BS
    c16                            VARCHAR2(200),                 --�¼�����HC
    c17                            VARCHAR2(200),                 --�¼�����HR
    c18                            VARCHAR2(200),                 --�¼�����C
    c19                            CHAR(1) DEFAULT '0',           --M�ɼ�
    c20                            CHAR(1) DEFAULT '0',           --BS�ɼ�
    c21                            CHAR(1) DEFAULT '0',           --HC�ɼ�
    c22                            CHAR(1) DEFAULT '0',           --HR�ɼ�
    c23                            CHAR(1) DEFAULT '0',           --C�ɼ�
    c24                            DATE,                          --֪ͨʱ��
    c25                            VARCHAR2(100),                 --֪ͨ����M
    c26                            VARCHAR2(100),                 --֪ͨ����BS
    c27                            VARCHAR2(100),                 --֪ͨ����HC
    c28                            VARCHAR2(100),                 --֪ͨ����HR
    c29                            VARCHAR2(100),                 --֪ͨ����C
    c30                            VARCHAR2(200),                 --֪ͨ����M
    c31                            VARCHAR2(200),                 --֪ͨ����BS
    c32                            VARCHAR2(200),                 --֪ͨ����HC
    c33                            VARCHAR2(200),                 --֪ͨ����HR
    c34                            VARCHAR2(200),                 --֪ͨ����C
    c35                            NUMBER(6,0),                   --����״̬M
    c36                            NUMBER(6,0),                   --����״̬BS
    c37                            NUMBER(6,0),                   --����״̬HC
    c38                            NUMBER(6,0),                   --����״̬HR
    c39                            NUMBER(6,0),                   --����״̬C
    c40                            CHAR(1) DEFAULT '0',           --�Ѷ����M
    c41                            CHAR(1) DEFAULT '0',           --�Ѷ����BS
    c42                            CHAR(1) DEFAULT '0',           --�Ѷ����HC
    c43                            CHAR(1) DEFAULT '0',           --�Ѷ����HR
    c44                            CHAR(1) DEFAULT '0',           --�Ѷ����C
    c45                            VARCHAR2(50),                  --������˾AMID
    c46                            VARCHAR2(30),                  --������˾MID
    c47                            VARCHAR2(30),                  --����ְλID
    c48                            VARCHAR2(50),                  --����HR_AUID
    c49                            DATE,                          --������������
    c50                            VARCHAR2(30),                  --������ѡ������
    c51                            VARCHAR2(200),                 --������ѡ��ͷ��
    c52                            VARCHAR2(100),                 --������ѡ�˵�ǰְλ
    c53                            NUMBER(6,0),                   --�����¼�����״̬
    c54                            VARCHAR2(50),                  --�����¼�����״̬˵��
    c55                            VARCHAR2(200),                 --������˾ְλHR
    c56                            VARCHAR2(100),                 --�����¼���������
    c57                            NUMBER(6,0),                   --�����¼���������
    c58                            VARCHAR2(100),                 --�����¼����ѱ�ע˵��
    c59                            CHAR(1),                       --�����Ƿ���Ƴ�
    c60                            NUMBER(16,0) DEFAULT -1,       --ԭtid
    c61                            NUMBER(6,0),                   --�¼�����״̬
    c62                            VARCHAR2(200),                 --��������
    c63                            VARCHAR2(100),                 --��������
    c64                            VARCHAR2(30),                  --�¼�CODE
    c65                            NUMBER(6,0)                   --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_HR;
CREATE SEQUENCE pcace.seqB_HR MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_HR;
DROP TABLE pcace.ZB_HR;
prompt
prompt Creating table pcace.B_HR HR
prompt =============================
prompt
CREATE TABLE pcace.B_HR(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --������˾AMID
    c3                             NUMBER(11,0),                  --������˾
    c4                             VARCHAR2(30),                  --����
    c5                             VARCHAR2(30),                  --�Ա�
    c6                             VARCHAR2(30),                  --�ֻ���
    c7                             VARCHAR2(30),                  --��������
    c8                             VARCHAR2(30),                  --�����绰
    c9                             VARCHAR2(100),                 --��˾����
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(30),                  --��δʹ�ã�
    c13                            VARCHAR2(30),                  --��δʹ�ã�
    c14                            VARCHAR2(30),                  --����
    c15                            NUMBER(6,0),                   --ע�᷽ʽ
    c16                            VARCHAR2(50),                  --ְλ
    c17                            NUMBER(6,0) DEFAULT 203000,    --ҵ��״̬
    c18                            NUMBER(6,0) DEFAULT 130001,    --״̬
    c19                            NUMBER(14,0) DEFAULT 0,        --ְλ��Ŀ
    c20                            NUMBER(14,0) DEFAULT 0,        --��ע��Ŀ
    c21                            NUMBER(14,0) DEFAULT 0,        --����������Ŀ
    c22                            NUMBER(14,0) DEFAULT 0,        --offer��Ŀ
    c23                            NUMBER(14,0) DEFAULT 0,        --�ɽ���Ŀ
    c24                            NUMBER(14,0) DEFAULT 0,        --�����ѡ����Ŀ
    c25                            NUMBER(14,0) DEFAULT 0,        --��վ�������Ŀ
    c26                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c27                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c28                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c29                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c30                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c31                            NUMBER(6,0) DEFAULT 0,         --R��֤״̬��0,1��
    c32                            DATE,                          --R��֤����
    c33                            VARCHAR2(30),                  --R��ʵ����
    c34                            VARCHAR2(30),                  --R���֤��
    c35                            VARCHAR2(250),                 --R���֤ͼƬ1
    c36                            VARCHAR2(250),                 --R���֤ͼƬ2
    c37                            VARCHAR2(250),                 --R��ƬͼƬ1
    c38                            VARCHAR2(250),                 --R��ƬͼƬ2
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30),                  --��δʹ�ã�
    CONSTRAINT B_HR_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_HR HR
prompt =============================
prompt
CREATE TABLE pcace.ZB_HR(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --������˾AMID
    c3                             NUMBER(11,0),                  --������˾
    c4                             VARCHAR2(30),                  --����
    c5                             VARCHAR2(30),                  --�Ա�
    c6                             VARCHAR2(30),                  --�ֻ���
    c7                             VARCHAR2(30),                  --��������
    c8                             VARCHAR2(30),                  --�����绰
    c9                             VARCHAR2(100),                 --��˾����
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(30),                  --��δʹ�ã�
    c13                            VARCHAR2(30),                  --��δʹ�ã�
    c14                            VARCHAR2(30),                  --����
    c15                            NUMBER(6,0),                   --ע�᷽ʽ
    c16                            VARCHAR2(50),                  --ְλ
    c17                            NUMBER(6,0) DEFAULT 203000,    --ҵ��״̬
    c18                            NUMBER(6,0) DEFAULT 130001,    --״̬
    c19                            NUMBER(14,0) DEFAULT 0,        --ְλ��Ŀ
    c20                            NUMBER(14,0) DEFAULT 0,        --��ע��Ŀ
    c21                            NUMBER(14,0) DEFAULT 0,        --����������Ŀ
    c22                            NUMBER(14,0) DEFAULT 0,        --offer��Ŀ
    c23                            NUMBER(14,0) DEFAULT 0,        --�ɽ���Ŀ
    c24                            NUMBER(14,0) DEFAULT 0,        --�����ѡ����Ŀ
    c25                            NUMBER(14,0) DEFAULT 0,        --��վ�������Ŀ
    c26                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c27                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c28                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c29                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c30                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c31                            NUMBER(6,0) DEFAULT 0,         --R��֤״̬��0,1��
    c32                            DATE,                          --R��֤����
    c33                            VARCHAR2(30),                  --R��ʵ����
    c34                            VARCHAR2(30),                  --R���֤��
    c35                            VARCHAR2(250),                 --R���֤ͼƬ1
    c36                            VARCHAR2(250),                 --R���֤ͼƬ2
    c37                            VARCHAR2(250),                 --R��ƬͼƬ1
    c38                            VARCHAR2(250),                 --R��ƬͼƬ2
    c39                            VARCHAR2(30),                  --��δʹ�ã�
    c40                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Hunter;
CREATE SEQUENCE pcace.seqB_Hunter MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Hunter;
DROP TABLE pcace.ZB_Hunter;
prompt
prompt Creating table pcace.B_Hunter ��ͷ����
prompt =============================
prompt
CREATE TABLE pcace.B_Hunter(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --������˾AMID
    c3                             NUMBER(11,0),                  --������˾
    c4                             VARCHAR2(30),                  --����
    c5                             NUMBER(6,0),                   --�Ա�
    c6                             VARCHAR2(30),                  --�ֻ���
    c7                             VARCHAR2(30),                  --��������
    c8                             VARCHAR2(30),                  --�����绰
    c9                             VARCHAR2(100),                 --��˾����
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(30),                  --��δʹ�ã�
    c13                            VARCHAR2(30),                  --��δʹ�ã�
    c14                            VARCHAR2(30),                  --����
    c15                            NUMBER(6,0),                   --ע�᷽ʽ
    c16                            NUMBER(6,0) DEFAULT 0,         --�Ƿ������˾
    c17                            NUMBER(6,0) DEFAULT 203000,    --ҵ��״̬
    c18                            NUMBER(6,0) DEFAULT 130001,    --״̬
    c19                            NUMBER(14,0) DEFAULT 0,        --�½���ѡ����Ŀ
    c20                            NUMBER(14,0) DEFAULT 0,        --����ѡ����Ŀ
    c21                            NUMBER(14,0) DEFAULT 0,        --����ע��ѡ����Ŀ
    c22                            NUMBER(14,0) DEFAULT 0,        --���������Ժ�ѡ����Ŀ
    c23                            NUMBER(14,0) DEFAULT 0,        --��offer��ѡ����Ŀ
    c24                            NUMBER(14,0) DEFAULT 0,        --�ɽ���ѡ����Ŀ
    c25                            NUMBER(14,0) DEFAULT 0,        --��վ�������Ŀ
    c26                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c27                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c28                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c29                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c30                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c31                            NUMBER(6,0) DEFAULT 0,         --R��֤״̬��0,1��
    c32                            DATE,                          --R��֤����
    c33                            VARCHAR2(30),                  --R��ʵ����
    c34                            VARCHAR2(20),                  --R���֤��
    c35                            VARCHAR2(200),                 --R���֤ͼƬ1
    c36                            VARCHAR2(200),                 --R���֤ͼƬ2
    c37                            VARCHAR2(200),                 --R��ƬͼƬ1
    c38                            VARCHAR2(200),                 --R��ƬͼƬ2
    c39                            NUMBER(6,0),                   --��δʹ�ã�
    c40                            NUMBER(6,0),                   --��δʹ�ã�
    CONSTRAINT B_Hunter_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Hunter ��ͷ����
prompt =============================
prompt
CREATE TABLE pcace.ZB_Hunter(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --������˾AMID
    c3                             NUMBER(11,0),                  --������˾
    c4                             VARCHAR2(30),                  --����
    c5                             NUMBER(6,0),                   --�Ա�
    c6                             VARCHAR2(30),                  --�ֻ���
    c7                             VARCHAR2(30),                  --��������
    c8                             VARCHAR2(30),                  --�����绰
    c9                             VARCHAR2(100),                 --��˾����
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(30),                  --��δʹ�ã�
    c13                            VARCHAR2(30),                  --��δʹ�ã�
    c14                            VARCHAR2(30),                  --����
    c15                            NUMBER(6,0),                   --ע�᷽ʽ
    c16                            NUMBER(6,0) DEFAULT 0,         --�Ƿ������˾
    c17                            NUMBER(6,0) DEFAULT 203000,    --ҵ��״̬
    c18                            NUMBER(6,0) DEFAULT 130001,    --״̬
    c19                            NUMBER(14,0) DEFAULT 0,        --�½���ѡ����Ŀ
    c20                            NUMBER(14,0) DEFAULT 0,        --����ѡ����Ŀ
    c21                            NUMBER(14,0) DEFAULT 0,        --����ע��ѡ����Ŀ
    c22                            NUMBER(14,0) DEFAULT 0,        --���������Ժ�ѡ����Ŀ
    c23                            NUMBER(14,0) DEFAULT 0,        --��offer��ѡ����Ŀ
    c24                            NUMBER(14,0) DEFAULT 0,        --�ɽ���ѡ����Ŀ
    c25                            NUMBER(14,0) DEFAULT 0,        --��վ�������Ŀ
    c26                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c27                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c28                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c29                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c30                            NUMBER(14,0) DEFAULT 0,        --��δʹ�ã�
    c31                            NUMBER(6,0) DEFAULT 0,         --R��֤״̬��0,1��
    c32                            DATE,                          --R��֤����
    c33                            VARCHAR2(30),                  --R��ʵ����
    c34                            VARCHAR2(20),                  --R���֤��
    c35                            VARCHAR2(200),                 --R���֤ͼƬ1
    c36                            VARCHAR2(200),                 --R���֤ͼƬ2
    c37                            VARCHAR2(200),                 --R��ƬͼƬ1
    c38                            VARCHAR2(200),                 --R��ƬͼƬ2
    c39                            NUMBER(6,0),                   --��δʹ�ã�
    c40                            NUMBER(6,0)                   --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_ACEWork;
CREATE SEQUENCE pcace.seqB_ACEWork MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_ACEWork;
DROP TABLE pcace.ZB_ACEWork;
prompt
prompt Creating table pcace.B_ACEWork ACE������
prompt =============================
prompt
CREATE TABLE pcace.B_ACEWork(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             NUMBER(6,0),                   --����������
    c2                             VARCHAR2(50),                  --����
    c3                             NUMBER(6,0),                   --״̬
    c4                             NUMBER(6,0),                   --ִ��״̬
    c5                             VARCHAR2(100),                 --����
    c6                             VARCHAR2(200),                 --����
    c7                             VARCHAR2(32),                  --ָ��ִ����AUID
    c8                             VARCHAR2(30),                  --ָ��ִ��������
    c9                             DATE,                          --ָ��״̬
    c10                            VARCHAR2(100),                 --ָ��ʱ��
    c11                            VARCHAR2(32),                  --������AUID
    c12                            VARCHAR2(30),                  --����������
    c13                            DATE,                          --����ʱ��
    c14                            VARCHAR2(200),                 --������ע
    c15                            VARCHAR2(30),                  --��δʹ�ã�
    CONSTRAINT B_ACEWork_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_ACEWork ACE������
prompt =============================
prompt
CREATE TABLE pcace.ZB_ACEWork(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             NUMBER(6,0),                   --����������
    c2                             VARCHAR2(50),                  --����
    c3                             NUMBER(6,0),                   --״̬
    c4                             NUMBER(6,0),                   --ִ��״̬
    c5                             VARCHAR2(100),                 --����
    c6                             VARCHAR2(200),                 --����
    c7                             VARCHAR2(32),                  --ָ��ִ����AUID
    c8                             VARCHAR2(30),                  --ָ��ִ��������
    c9                             DATE,                          --ָ��״̬
    c10                            VARCHAR2(100),                 --ָ��ʱ��
    c11                            VARCHAR2(32),                  --������AUID
    c12                            VARCHAR2(30),                  --����������
    c13                            DATE,                          --����ʱ��
    c14                            VARCHAR2(200),                 --������ע
    c15                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_InviteCode;
CREATE SEQUENCE pcace.seqB_InviteCode MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_InviteCode;
DROP TABLE pcace.ZB_InviteCode;
prompt
prompt Creating table pcace.B_InviteCode ������
prompt =============================
prompt
CREATE TABLE pcace.B_InviteCode(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --������
    c2                             VARCHAR2(32),                  --AMID
    c3                             VARCHAR2(32),                  --AUID
    c4                             NUMBER(6,0),                   --ʹ�ô���
    c5                             NUMBER(6,0),                   --״̬
    c6                             DATE,                          --��ֹ��Ч��
    c7                             VARCHAR2(30),                  --ʹ��IP
    c8                             DATE,                          --ʹ������
    CONSTRAINT B_InviteCode_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_InviteCode ������
prompt =============================
prompt
CREATE TABLE pcace.ZB_InviteCode(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --������
    c2                             VARCHAR2(32),                  --AMID
    c3                             VARCHAR2(32),                  --AUID
    c4                             NUMBER(6,0),                   --ʹ�ô���
    c5                             NUMBER(6,0),                   --״̬
    c6                             DATE,                          --��ֹ��Ч��
    c7                             VARCHAR2(30),                  --ʹ��IP
    c8                             DATE                          --ʹ������
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Stat;
CREATE SEQUENCE pcace.seqB_Stat MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Stat;
DROP TABLE pcace.ZB_Stat;
prompt
prompt Creating table pcace.B_Stat ACEͳ��
prompt =============================
prompt
CREATE TABLE pcace.B_Stat(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             NUMBER(6,0),                   --ͳ�Ʒ���
    c2                             NUMBER(6,0),                   --״̬
    c3                             NUMBER(11,0),                  --��ʱ��ѡ��
    c4                             NUMBER(11,0),                  --�����
    c5                             NUMBER(11,0),                  --����ѡ��
    c6                             NUMBER(11,0),                  --active
    c7                             NUMBER(11,0),                  --inactive
    c8                             NUMBER(11,0),                  --blocked
    c9                             NUMBER(11,0),                  --����ע
    c10                            NUMBER(11,0),                  --��������
    c11                            NUMBER(11,0),                  --����
    c12                            NUMBER(11,0),                  --offer
    c13                            NUMBER(11,0),                  --��ְ
    c14                            NUMBER(11,0),                  --��ְ
    c15                            NUMBER(16,2),                  --��Ʊ���
    c16                            NUMBER(16,2),                  --�տ���
    c17                            NUMBER(11,0),                  --��δʹ�ã�
    c18                            NUMBER(11,0),                  --��δʹ�ã�
    c19                            NUMBER(11,0),                  --��δʹ�ã�
    c20                            NUMBER(11,0),                  --��δʹ�ã�
    c21                            NUMBER(11,0),                  --��δʹ�ã�
    c22                            NUMBER(11,0),                  --��δʹ�ã�
    c23                            NUMBER(11,0),                  --��δʹ�ã�
    c24                            NUMBER(11,0),                  --��δʹ�ã�
    c25                            NUMBER(11,0),                  --��δʹ�ã�
    CONSTRAINT B_Stat_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Stat ACEͳ��
prompt =============================
prompt
CREATE TABLE pcace.ZB_Stat(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             NUMBER(6,0),                   --ͳ�Ʒ���
    c2                             NUMBER(6,0),                   --״̬
    c3                             NUMBER(11,0),                  --��ʱ��ѡ��
    c4                             NUMBER(11,0),                  --�����
    c5                             NUMBER(11,0),                  --����ѡ��
    c6                             NUMBER(11,0),                  --active
    c7                             NUMBER(11,0),                  --inactive
    c8                             NUMBER(11,0),                  --blocked
    c9                             NUMBER(11,0),                  --����ע
    c10                            NUMBER(11,0),                  --��������
    c11                            NUMBER(11,0),                  --����
    c12                            NUMBER(11,0),                  --offer
    c13                            NUMBER(11,0),                  --��ְ
    c14                            NUMBER(11,0),                  --��ְ
    c15                            NUMBER(16,2),                  --��Ʊ���
    c16                            NUMBER(16,2),                  --�տ���
    c17                            NUMBER(11,0),                  --��δʹ�ã�
    c18                            NUMBER(11,0),                  --��δʹ�ã�
    c19                            NUMBER(11,0),                  --��δʹ�ã�
    c20                            NUMBER(11,0),                  --��δʹ�ã�
    c21                            NUMBER(11,0),                  --��δʹ�ã�
    c22                            NUMBER(11,0),                  --��δʹ�ã�
    c23                            NUMBER(11,0),                  --��δʹ�ã�
    c24                            NUMBER(11,0),                  --��δʹ�ã�
    c25                            NUMBER(11,0)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate;
DROP TABLE pcace.ZBO_Candidate;
prompt
prompt Creating table pcace.BO_Candidate ��ѡ��[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --���״̬
    c4                             DATE,                          --���ʱ��
    c5                             CHAR(1) DEFAULT '0',           --���߱�ʶ��0,1-9��
    c6                             DATE,                          --�����߱��ʱ��
    c7                             VARCHAR2(20),                  --�������
    c8                             VARCHAR2(30),                  --������Ϣ-��������
    c9                             VARCHAR2(30),                  --������Ϣ-Ӣ����
    c10                            VARCHAR2(30),                  --������Ϣ-��������
    c11                            NUMBER(3,0),                   --������Ϣ-����
    c12                            NUMBER(6,0),                   --������Ϣ-����
    c13                            NUMBER(6,0),                   --������Ϣ-�Ա�
    c14                            VARCHAR2(30),                  --������Ϣ-��ס���У�ʡ/ֱϽ�У�
    c15                            VARCHAR2(30),                  --������Ϣ-��ס���У��У�
    c16                            VARCHAR2(30),                  --������Ϣ-��ס���У���/�ؼ��У�
    c17                            VARCHAR2(30),                  --������Ϣ-�������ڵأ�ʡ/ֱϽ�У�
    c18                            VARCHAR2(30),                  --������Ϣ-�������ڵأ��У�
    c19                            VARCHAR2(30),                  --������Ϣ-�������ڵأ���/�ؼ��У�
    c20                            VARCHAR2(4),                   --������Ϣ-�ֻ����루���ţ�
    c21                            VARCHAR2(30),                  --������Ϣ-�ֻ�����
    c22                            VARCHAR2(30),                  --������Ϣ-��������
    c23                            VARCHAR2(30),                  --������Ϣ-����
    c24                            NUMBER(6,0),                   --������Ϣ-����״��
    c25                            NUMBER(6,0),                   --������Ϣ-���ѧ��
    c26                            NUMBER(6,0),                   --������Ϣ-������н����
    c27                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ע����
    c28                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�������Դ���
    c29                            NUMBER(11,0) DEFAULT 0,        --ͳ��-Offer����
    c30                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ְ����
    c31                            NUMBER(11,0) DEFAULT 0,        --ͳ��-����������
    c32                            NUMBER(11,0),                  --��δʹ�ã�
    c33                            NUMBER(11,0),                  --��δʹ�ã�
    c34                            NUMBER(11,0),                  --��δʹ�ã�
    c35                            NUMBER(11,0),                  --��δʹ�ã�
    c36                            VARCHAR2(30),                  --��δʹ�ã�
    c37                            VARCHAR2(30),                  --��δʹ�ã�
    c38                            VARCHAR2(50),                  --���������ҵ
    c39                            NUMBER(6,0) DEFAULT 0,         --�������ޣ��꣩
    c40                            NUMBER(6,0) DEFAULT 0,         --��ְ״̬
    c41                            VARCHAR2(100),                 --������ڹ�˾
    c42                            VARCHAR2(100),                 --���ְλ
    c43                            VARCHAR2(30),                  --�����н��Ԫ��
    c44                            VARCHAR2(30),                  --�����н����
    c45                            VARCHAR2(100),                 --���н�ʹ���
    c46                            VARCHAR2(100),                 --��������-ְλ
    c47                            VARCHAR2(100),                 --��������-ְ��
    c48                            VARCHAR2(100),                 --��������-��ҵ
    c49                            VARCHAR2(100),                 --��������-����
    c50                            VARCHAR2(100),                 --��������-������н��Ԫ��
    c51                            VARCHAR2(100),                 --��������-������н����
    c52                            VARCHAR2(4000),                --���ܱ�ǩ-ְҵ
    c53                            VARCHAR2(4000),                --���ܱ�ǩ-�Ŷӹ���
    c54                            VARCHAR2(4000),                --���ܱ�ǩ-�������
    c55                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c56                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c57                            VARCHAR2(2000),                --��������
    c58                            VARCHAR2(2000),                --��ѵ����
    c59                            VARCHAR2(2000),                --���֤��
    c60                            VARCHAR2(4000),                --��������
    c61                            VARCHAR2(200),                 --ͷ��
    c62                            VARCHAR2(200),                 --��������
    c63                            VARCHAR2(4000),                --����˾IDs
    c64                            VARCHAR2(4000),                --���ι�˾IDs
    c65                            VARCHAR2(10),                  --�������ƶ�
    c66                            NUMBER(6,0) DEFAULT 0,         --�Ƿ�Ʒ
    c67                            VARCHAR2(32),                  --������ͷ��˾AMID
    c68                            NUMBER(11,0),                  --������ͷ��˾MID
    c69                            NUMBER(6,0),                   --��Ч״̬
    c70                            NUMBER(6,0),                   --��Ӫ��ʶ
    c71                            NUMBER(6,0),                   --������״̬
    c72                            DATE,                          --��������ʱ��
    c73                            DATE,                          --���������ύʱ��
    c74                            VARCHAR2(32),                  --ָ��BSҵ��Ա
    c75                            VARCHAR2(30),                  --ָ��BSҵ��Ա����
    c76                            DATE,                          --ָ��ʱ��
    c77                            VARCHAR2(50),                  --������AUID
    c78                            VARCHAR2(20),                  --����������
    c79                            DATE,                          --����ʱ��
    c80                            VARCHAR2(200),                 --����˵��
    c81                            DATE,                          --�������ʱ��
    c82                            NUMBER(6,0),                   --��������״̬
    c83                            DATE,                          --����������ʱ��
    c84                            DATE,                          --�����������ʱ��
    c85                            NUMBER(6,0),                   --������������״̬
    c86                            DATE,                          --��������������ʱ��
    c87                            DATE,                          --���������������ʱ��
    c88                            VARCHAR2(500),                 --������˽��
    c89                            VARCHAR2(500),                 --����������˽��
    c90                            VARCHAR2(500)                 --�����˽��
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate ��ѡ��[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --���״̬
    c4                             DATE,                          --���ʱ��
    c5                             CHAR(1) DEFAULT '0',           --���߱�ʶ��0,1-9��
    c6                             DATE,                          --�����߱��ʱ��
    c7                             VARCHAR2(20),                  --�������
    c8                             VARCHAR2(30),                  --������Ϣ-��������
    c9                             VARCHAR2(30),                  --������Ϣ-Ӣ����
    c10                            VARCHAR2(30),                  --������Ϣ-��������
    c11                            NUMBER(3,0),                   --������Ϣ-����
    c12                            NUMBER(6,0),                   --������Ϣ-����
    c13                            NUMBER(6,0),                   --������Ϣ-�Ա�
    c14                            VARCHAR2(30),                  --������Ϣ-��ס���У�ʡ/ֱϽ�У�
    c15                            VARCHAR2(30),                  --������Ϣ-��ס���У��У�
    c16                            VARCHAR2(30),                  --������Ϣ-��ס���У���/�ؼ��У�
    c17                            VARCHAR2(30),                  --������Ϣ-�������ڵأ�ʡ/ֱϽ�У�
    c18                            VARCHAR2(30),                  --������Ϣ-�������ڵأ��У�
    c19                            VARCHAR2(30),                  --������Ϣ-�������ڵأ���/�ؼ��У�
    c20                            VARCHAR2(4),                   --������Ϣ-�ֻ����루���ţ�
    c21                            VARCHAR2(30),                  --������Ϣ-�ֻ�����
    c22                            VARCHAR2(30),                  --������Ϣ-��������
    c23                            VARCHAR2(30),                  --������Ϣ-����
    c24                            NUMBER(6,0),                   --������Ϣ-����״��
    c25                            NUMBER(6,0),                   --������Ϣ-���ѧ��
    c26                            NUMBER(6,0),                   --������Ϣ-������н����
    c27                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ע����
    c28                            NUMBER(11,0) DEFAULT 0,        --ͳ��-�������Դ���
    c29                            NUMBER(11,0) DEFAULT 0,        --ͳ��-Offer����
    c30                            NUMBER(11,0) DEFAULT 0,        --ͳ��-��ְ����
    c31                            NUMBER(11,0) DEFAULT 0,        --ͳ��-����������
    c32                            NUMBER(11,0),                  --��δʹ�ã�
    c33                            NUMBER(11,0),                  --��δʹ�ã�
    c34                            NUMBER(11,0),                  --��δʹ�ã�
    c35                            NUMBER(11,0),                  --��δʹ�ã�
    c36                            VARCHAR2(30),                  --��δʹ�ã�
    c37                            VARCHAR2(30),                  --��δʹ�ã�
    c38                            VARCHAR2(50),                  --���������ҵ
    c39                            NUMBER(6,0) DEFAULT 0,         --�������ޣ��꣩
    c40                            NUMBER(6,0) DEFAULT 0,         --��ְ״̬
    c41                            VARCHAR2(100),                 --������ڹ�˾
    c42                            VARCHAR2(100),                 --���ְλ
    c43                            VARCHAR2(30),                  --�����н��Ԫ��
    c44                            VARCHAR2(30),                  --�����н����
    c45                            VARCHAR2(100),                 --���н�ʹ���
    c46                            VARCHAR2(100),                 --��������-ְλ
    c47                            VARCHAR2(100),                 --��������-ְ��
    c48                            VARCHAR2(100),                 --��������-��ҵ
    c49                            VARCHAR2(100),                 --��������-����
    c50                            VARCHAR2(100),                 --��������-������н��Ԫ��
    c51                            VARCHAR2(100),                 --��������-������н����
    c52                            VARCHAR2(4000),                --���ܱ�ǩ-ְҵ
    c53                            VARCHAR2(4000),                --���ܱ�ǩ-�Ŷӹ���
    c54                            VARCHAR2(4000),                --���ܱ�ǩ-�������
    c55                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c56                            VARCHAR2(4000),                --���ܱ�ǩ-��δʹ�ã�
    c57                            VARCHAR2(2000),                --��������
    c58                            VARCHAR2(2000),                --��ѵ����
    c59                            VARCHAR2(2000),                --���֤��
    c60                            VARCHAR2(4000),                --��������
    c61                            VARCHAR2(200),                 --ͷ��
    c62                            VARCHAR2(200),                 --��������
    c63                            VARCHAR2(4000),                --����˾IDs
    c64                            VARCHAR2(4000),                --���ι�˾IDs
    c65                            VARCHAR2(10),                  --�������ƶ�
    c66                            NUMBER(6,0) DEFAULT 0,         --�Ƿ�Ʒ
    c67                            VARCHAR2(32),                  --������ͷ��˾AMID
    c68                            NUMBER(11,0),                  --������ͷ��˾MID
    c69                            NUMBER(6,0),                   --��Ч״̬
    c70                            NUMBER(6,0),                   --��Ӫ��ʶ
    c71                            NUMBER(6,0),                   --������״̬
    c72                            DATE,                          --��������ʱ��
    c73                            DATE,                          --���������ύʱ��
    c74                            VARCHAR2(32),                  --ָ��BSҵ��Ա
    c75                            VARCHAR2(30),                  --ָ��BSҵ��Ա����
    c76                            DATE,                          --ָ��ʱ��
    c77                            VARCHAR2(50),                  --������AUID
    c78                            VARCHAR2(20),                  --����������
    c79                            DATE,                          --����ʱ��
    c80                            VARCHAR2(200),                 --����˵��
    c81                            DATE,                          --�������ʱ��
    c82                            NUMBER(6,0),                   --��������״̬
    c83                            DATE,                          --����������ʱ��
    c84                            DATE,                          --�����������ʱ��
    c85                            NUMBER(6,0),                   --������������״̬
    c86                            DATE,                          --��������������ʱ��
    c87                            DATE,                          --���������������ʱ��
    c88                            VARCHAR2(500),                 --������˽��
    c89                            VARCHAR2(500),                 --����������˽��
    c90                            VARCHAR2(500)                 --�����˽��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVEducation;
DROP TABLE pcace.ZBO_Candidate_CVEducation;
prompt
prompt Creating table pcace.BO_Candidate_CVEducation ��ѡ��-��������[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVEducation(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --ѧУ
    c6                             VARCHAR2(50),                  --רҵ
    c7                             NUMBER(6,0),                   --ѧ��
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(30),                  --��δʹ�ã�
    c10                            VARCHAR2(50),                  --��������AUID
    c11                            VARCHAR2(30),                  --������������
    c12                            DATE                          --����ʱ��
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVEducation ��ѡ��-��������[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVEducation(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --ѧУ
    c6                             VARCHAR2(50),                  --רҵ
    c7                             NUMBER(6,0),                   --ѧ��
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(30),                  --��δʹ�ã�
    c10                            VARCHAR2(50),                  --��������AUID
    c11                            VARCHAR2(30),                  --������������
    c12                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVTrain;
DROP TABLE pcace.ZBO_Candidate_CVTrain;
prompt
prompt Creating table pcace.BO_Candidate_CVTrain ��ѡ��-��ѵ����[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVTrain(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --��ѵ����
    c6                             VARCHAR2(200),                 --��ѵ����
    c7                             VARCHAR2(30),                  --��δʹ�ã�
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(50),                  --��������AUID
    c10                            VARCHAR2(30),                  --������������
    c11                            DATE                          --����ʱ��
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVTrain ��ѡ��-��ѵ����[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVTrain(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(50),                  --��ѵ����
    c6                             VARCHAR2(200),                 --��ѵ����
    c7                             VARCHAR2(30),                  --��δʹ�ã�
    c8                             VARCHAR2(30),                  --��δʹ�ã�
    c9                             VARCHAR2(50),                  --��������AUID
    c10                            VARCHAR2(30),                  --������������
    c11                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVCertificate;
DROP TABLE pcace.ZBO_Candidate_CVCertificate;
prompt
prompt Creating table pcace.BO_Candidate_CVCertificate ��ѡ��-���֤��[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVCertificate(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --ʱ��
    c4                             VARCHAR2(50),                  --֤��
    c5                             VARCHAR2(30),                  --��Ч��
    c6                             VARCHAR2(200),                 --����1
    c7                             VARCHAR2(200),                 --����2
    c8                             VARCHAR2(50),                  --��������AUID
    c9                             VARCHAR2(30),                  --������������
    c10                            DATE                          --����ʱ��
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVCertificate ��ѡ��-���֤��[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVCertificate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --ʱ��
    c4                             VARCHAR2(50),                  --֤��
    c5                             VARCHAR2(30),                  --��Ч��
    c6                             VARCHAR2(200),                 --����1
    c7                             VARCHAR2(200),                 --����2
    c8                             VARCHAR2(50),                  --��������AUID
    c9                             VARCHAR2(30),                  --������������
    c10                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVWork;
DROP TABLE pcace.ZBO_Candidate_CVWork;
prompt
prompt Creating table pcace.BO_Candidate_CVWork ��ѡ��-��������[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVWork(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(200),                 --��˾����
    c7                             VARCHAR2(30),                  --��ҵ
    c8                             VARCHAR2(100),                 --����
    c9                             VARCHAR2(100),                 --ְλ
    c10                            VARCHAR2(100),                 --ְ��
    c11                            NUMBER(6,0),                   --������н��K��
    c12                            NUMBER(6,0),                   --������н����
    c13                            VARCHAR2(200),                 --����н�ʹ���
    c14                            VARCHAR2(100),                 --�����㱨����
    c15                            VARCHAR2(30),                  --������������
    c16                            VARCHAR2(1000),                --����ְ��
    c17                            VARCHAR2(200),                 --��������Ȩ��
    c18                            VARCHAR2(1000),                --������˾����
    c19                            NUMBER(6,0) DEFAULT 0,         --�Ƿ��ι�������
    c20                            NUMBER(6,0),                   --��δʹ�ã�
    c21                            VARCHAR2(50),                  --��������AUID
    c22                            VARCHAR2(30),                  --������������
    c23                            DATE,                          --����ʱ��
    c24                            NUMBER(6,0) DEFAULT 0,         --������ְ�ڣ��죩
    c25                            VARCHAR2(200),                 --������ְԭ��
    c26                            CHAR(1) DEFAULT '0',           --������ҵ��ֹ���ƣ�1,0��
    c27                            NUMBER(6,0) DEFAULT 0,         --��������ʱ�����꣩
    c28                            VARCHAR2(30),                  --��δʹ�ã�
    c29                            VARCHAR2(1000),                --��������ҵ��
    c30                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVWork ��ѡ��-��������[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVWork(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(200),                 --��˾����
    c7                             VARCHAR2(30),                  --��ҵ
    c8                             VARCHAR2(100),                 --����
    c9                             VARCHAR2(100),                 --ְλ
    c10                            VARCHAR2(100),                 --ְ��
    c11                            NUMBER(6,0),                   --������н��K��
    c12                            NUMBER(6,0),                   --������н����
    c13                            VARCHAR2(200),                 --����н�ʹ���
    c14                            VARCHAR2(100),                 --�����㱨����
    c15                            VARCHAR2(30),                  --������������
    c16                            VARCHAR2(1000),                --����ְ��
    c17                            VARCHAR2(200),                 --��������Ȩ��
    c18                            VARCHAR2(1000),                --������˾����
    c19                            NUMBER(6,0) DEFAULT 0,         --�Ƿ��ι�������
    c20                            NUMBER(6,0),                   --��δʹ�ã�
    c21                            VARCHAR2(50),                  --��������AUID
    c22                            VARCHAR2(30),                  --������������
    c23                            DATE,                          --����ʱ��
    c24                            NUMBER(6,0) DEFAULT 0,         --������ְ�ڣ��죩
    c25                            VARCHAR2(200),                 --������ְԭ��
    c26                            CHAR(1) DEFAULT '0',           --������ҵ��ֹ���ƣ�1,0��
    c27                            NUMBER(6,0) DEFAULT 0,         --��������ʱ�����꣩
    c28                            VARCHAR2(30),                  --��δʹ�ã�
    c29                            VARCHAR2(1000),                --��������ҵ��
    c30                            VARCHAR2(30)                  --��δʹ�ã�
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVProject;
DROP TABLE pcace.ZBO_Candidate_CVProject;
prompt
prompt Creating table pcace.BO_Candidate_CVProject ��ѡ��-��Ŀ����[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVProject(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(50),                  --ְλ
    c7                             VARCHAR2(1000),                --��Ŀ���
    c8                             VARCHAR2(500),                 --��Ŀְ��
    c9                             VARCHAR2(500),                 --��Ŀ�ɾ�
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(50),                  --��������AUID
    c13                            VARCHAR2(30),                  --������������
    c14                            DATE                          --����ʱ��
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVProject ��ѡ��-��Ŀ����[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVProject(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��CID
    c2                             NUMBER(6,0),                   --״̬
    c3                             VARCHAR2(30),                  --��ʼʱ��
    c4                             VARCHAR2(30),                  --����ʱ��
    c5                             VARCHAR2(100),                 --��˾����
    c6                             VARCHAR2(50),                  --ְλ
    c7                             VARCHAR2(1000),                --��Ŀ���
    c8                             VARCHAR2(500),                 --��Ŀְ��
    c9                             VARCHAR2(500),                 --��Ŀ�ɾ�
    c10                            VARCHAR2(30),                  --��δʹ�ã�
    c11                            VARCHAR2(30),                  --��δʹ�ã�
    c12                            VARCHAR2(50),                  --��������AUID
    c13                            VARCHAR2(30),                  --������������
    c14                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_HCComment;
DROP TABLE pcace.ZBO_Candidate_HCComment;
prompt
prompt Creating table pcace.BO_Candidate_HCComment ��������[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_HCComment(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             DATE,                          --�����ύʱ��
    c5                             NUMBER(6,0),                   --����״̬
    c6                             DATE,                          --�������ʱ��
    c7                             VARCHAR2(2000),                --����ӡ��
    c8                             VARCHAR2(4000),                --�����ܽ�
    c9                             VARCHAR2(2000),                --��ע�ܽ�
    c10                            NUMBER(6,0),                   --��δʹ�ã�
    c11                            NUMBER(6,0),                   --��δʹ�ã�
    c12                            VARCHAR2(500),                 --��δʹ�ã�
    c13                            VARCHAR2(500),                 --�����Ը�
    c14                            VARCHAR2(500),                 --������ͨ����
    c15                            VARCHAR2(500),                 --��������ˮƽ
    c16                            VARCHAR2(500),                 --����ȱ�㡢����
    c17                            VARCHAR2(30),                  --��δʹ�ã�
    c18                            VARCHAR2(30),                  --��δʹ�ã�
    c19                            VARCHAR2(30),                  --��δʹ�ã�
    c20                            VARCHAR2(30),                  --������ҵ���飨�꣩
    c21                            VARCHAR2(30),                  --���������飨�꣩
    c22                            VARCHAR2(2000),                --������Ͻ����Χ
    c23                            NUMBER(6,0),                   --��δʹ�ã�
    c24                            NUMBER(6,0),                   --��δʹ�ã�
    c25                            NUMBER(6,0),                   --��δʹ�ã�
    c26                            NUMBER(6,0),                   --��δʹ�ã�
    c27                            NUMBER(6,0),                   --��δʹ�ã�
    c28                            VARCHAR2(32),                  --BS����ԱAUID
    c29                            VARCHAR2(30),                  --BS����Ա����
    c30                            DATE                          --BS����ʱ��
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_HCComment ��������[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_HCComment(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --��������ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��AUID
    c2                             VARCHAR2(32),                  --����AUID
    c3                             NUMBER(6,0),                   --״̬
    c4                             DATE,                          --�����ύʱ��
    c5                             NUMBER(6,0),                   --����״̬
    c6                             DATE,                          --�������ʱ��
    c7                             VARCHAR2(2000),                --����ӡ��
    c8                             VARCHAR2(4000),                --�����ܽ�
    c9                             VARCHAR2(2000),                --��ע�ܽ�
    c10                            NUMBER(6,0),                   --��δʹ�ã�
    c11                            NUMBER(6,0),                   --��δʹ�ã�
    c12                            VARCHAR2(500),                 --��δʹ�ã�
    c13                            VARCHAR2(500),                 --�����Ը�
    c14                            VARCHAR2(500),                 --������ͨ����
    c15                            VARCHAR2(500),                 --��������ˮƽ
    c16                            VARCHAR2(500),                 --����ȱ�㡢����
    c17                            VARCHAR2(30),                  --��δʹ�ã�
    c18                            VARCHAR2(30),                  --��δʹ�ã�
    c19                            VARCHAR2(30),                  --��δʹ�ã�
    c20                            VARCHAR2(30),                  --������ҵ���飨�꣩
    c21                            VARCHAR2(30),                  --���������飨�꣩
    c22                            VARCHAR2(2000),                --������Ͻ����Χ
    c23                            NUMBER(6,0),                   --��δʹ�ã�
    c24                            NUMBER(6,0),                   --��δʹ�ã�
    c25                            NUMBER(6,0),                   --��δʹ�ã�
    c26                            NUMBER(6,0),                   --��δʹ�ã�
    c27                            NUMBER(6,0),                   --��δʹ�ã�
    c28                            VARCHAR2(32),                  --BS����ԱAUID
    c29                            VARCHAR2(30),                  --BS����Ա����
    c30                            DATE                          --BS����ʱ��
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Vote_JobTop;
CREATE SEQUENCE pcace.seqB_Vote_JobTop MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Vote_JobTop;
DROP TABLE pcace.ZB_Vote_JobTop;
prompt
prompt Creating table pcace.B_Vote_JobTop ְλͶƱ���
prompt =============================
prompt
CREATE TABLE pcace.B_Vote_JobTop(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --HR_AUID
    c2                             VARCHAR2(32),                  --HR��˾AMID
    c3                             DATE,                          --ͶƱ����
    c4                             VARCHAR2(500),                 --��ѡ���ְλ�б�
    c5                             VARCHAR2(500),                 --����Ȥ��ְλ
    CONSTRAINT B_Vote_JobTop_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Vote_JobTop ְλͶƱ���
prompt =============================
prompt
CREATE TABLE pcace.ZB_Vote_JobTop(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --HR_AUID
    c2                             VARCHAR2(32),                  --HR��˾AMID
    c3                             DATE,                          --ͶƱ����
    c4                             VARCHAR2(500),                 --��ѡ���ְλ�б�
    c5                             VARCHAR2(500)                 --����Ȥ��ְλ
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_T_Candidate_ViewLog;
CREATE SEQUENCE pcace.seqB_T_Candidate_ViewLog MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_T_Candidate_ViewLog;
DROP TABLE pcace.ZB_T_Candidate_ViewLog;
prompt
prompt Creating table pcace.B_T_Candidate_ViewLog ��ѡ�˱������¼
prompt =============================
prompt
CREATE TABLE pcace.B_T_Candidate_ViewLog(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --cid
    c2                             VARCHAR2(32)                  --hrAuid
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_T_Candidate_ViewLog ��ѡ�˱������¼
prompt =============================
prompt
CREATE TABLE pcace.ZB_T_Candidate_ViewLog(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --cid
    c2                             VARCHAR2(32)                  --hrAuid
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_T_Candidate_InviteLog;
CREATE SEQUENCE pcace.seqB_T_Candidate_InviteLog MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_T_Candidate_InviteLog;
DROP TABLE pcace.ZB_T_Candidate_InviteLog;
prompt
prompt Creating table pcace.B_T_Candidate_InviteLog ��ѡ�˱������¼
prompt =============================
prompt
CREATE TABLE pcace.B_T_Candidate_InviteLog(
    dataid                         NUMBER(11,0) NOT NULL,         --����ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --�������ܵȼ�
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��cid
    c2                             VARCHAR2(30),                  --��ѡ������
    c3                             VARCHAR2(32),                  --hcAuid
    c4                             VARCHAR2(30),                  --��������
    c5                             VARCHAR2(32),                  --hrAuid
    c6                             VARCHAR2(30),                  --HR����
    c7                             VARCHAR2(32),                  --hrAmid
    c8                             VARCHAR2(100),                 --HR��˾����
    c9                             NUMBER(11,0),                  --jobid
    c10                            VARCHAR2(100),                 --ְλ����
    c11                            VARCHAR2(500),                 --����ע
    c12                            NUMBER(6,0) DEFAULT 0,         --����״̬
    c13                            VARCHAR2(32),                  --������
    c14                            VARCHAR2(30),                  --����������
    c15                            DATE,                          --����ʱ��
    CONSTRAINT B_T_Candidate_InviteLog_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_T_Candidate_InviteLog ��ѡ�˱������¼
prompt =============================
prompt
CREATE TABLE pcace.ZB_T_Candidate_InviteLog(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --����ID
    dataSctLevel                   NUMBER(6,0),                   --�������ܵȼ�
    dataStatus                     NUMBER(6,0),                   --����״̬
    keyword                        VARCHAR2(200),                 --�����ؼ���
    istdate                        DATE DEFAULT sysdate,          --��������
    uptdate                        DATE DEFAULT sysdate,          --��������
    c1                             VARCHAR2(32),                  --��ѡ��cid
    c2                             VARCHAR2(30),                  --��ѡ������
    c3                             VARCHAR2(32),                  --hcAuid
    c4                             VARCHAR2(30),                  --��������
    c5                             VARCHAR2(32),                  --hrAuid
    c6                             VARCHAR2(30),                  --HR����
    c7                             VARCHAR2(32),                  --hrAmid
    c8                             VARCHAR2(100),                 --HR��˾����
    c9                             NUMBER(11,0),                  --jobid
    c10                            VARCHAR2(100),                 --ְλ����
    c11                            VARCHAR2(500),                 --����ע
    c12                            NUMBER(6,0) DEFAULT 0,         --����״̬
    c13                            VARCHAR2(32),                  --������
    c14                            VARCHAR2(30),                  --����������
    c15                            DATE                          --����ʱ��
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
