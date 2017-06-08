
DROP SEQUENCE pcace.seqB_UserLogin;
CREATE SEQUENCE pcace.seqB_UserLogin MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_UserLogin;
DROP TABLE pcace.ZB_UserLogin;
prompt
prompt Creating table pcace.B_UserLogin 登录用户
prompt =============================
prompt
CREATE TABLE pcace.B_UserLogin(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             VARCHAR2(30),                  --手机号码
    c3                             VARCHAR2(50),                  --登录密码
    c4                             NUMBER(6,0),                   --用户主身份
    c5                             NUMBER(14,0),                  --所属组织MID
    c6                             VARCHAR2(32),                  --所属组织AMID
    c7                             DATE,                          --最后登录日期
    c8                             CHAR(1),                       --在线状态
    c9                             NUMBER(6,0),                   --状态
    c10                            VARCHAR2(30),                  --最后登录IP
    c11                            VARCHAR2(30),                  --昵称
    c12                            VARCHAR2(250),                 --头像
    c13                            VARCHAR2(30),                  --签名
    c14                            VARCHAR2(30),                  --性别
    c15                            VARCHAR2(50),                  --国家
    c16                            VARCHAR2(30),                  --省份
    c17                            VARCHAR2(30),                  --城市
    c18                            VARCHAR2(20),                  --语言
    c19                            VARCHAR2(50),                  --openid
    c20                            VARCHAR2(20),                  --权限/角色
    c21                            NUMBER(6,0),                   --身份认证标识
    c22                            NUMBER(6,0) DEFAULT 0,         --登录次数
    c23                            VARCHAR2(100),                 --备注
    c24                            NUMBER(2,0) DEFAULT 1,         --发布图片最大数目
    c25                            VARCHAR2(30),                  --真实姓名
    c26                            VARCHAR2(30),                  --生日
    c27                            NUMBER(6,0) DEFAULT 0,         --星级
    c28                            VARCHAR2(20),                  --QQ
    c29                            VARCHAR2(50),                  --邮箱
    c30                            VARCHAR2(100),                 --通信地址
    c31                            VARCHAR2(30),                  --联系电话（座机）
    c32                            VARCHAR2(50),                  --联系Email
    c33                            VARCHAR2(50),                  --职位
    c34                            VARCHAR2(30),                  --（未使用）
    c35                            VARCHAR2(30),                  --（未使用）
    c36                            VARCHAR2(30),                  --（未使用）
    c37                            VARCHAR2(30),                  --（未使用）
    c38                            VARCHAR2(30),                  --（未使用）
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30),                  --（未使用）
    c41                            DATE,                          --密码更新时间
    c42                            VARCHAR2(30),                  --R姓名
    c43                            VARCHAR2(30),                  --R性别
    c44                            VARCHAR2(30),                  --R身份证号
    c45                            VARCHAR2(30),                  --R（未使用）
    c46                            VARCHAR2(30),                  --R（未使用）
    c47                            VARCHAR2(200),                 --R图片1
    c48                            VARCHAR2(200),                 --R图片2
    c49                            VARCHAR2(200),                 --R图片3
    c50                            VARCHAR2(30),                  --REmail
    c51                            VARCHAR2(50),                  --R联系地址
    c52                            VARCHAR2(30),                  --R手机号
    c53                            DATE,                          --R认证申请日期
    c54                            DATE,                          --R认证日期
    c55                            NUMBER(6,0),                   --（未使用）
    c56                            NUMBER(6,0),                   --（未使用）
    c57                            NUMBER(6,0),                   --（未使用）
    c58                            NUMBER(6,0),                   --（未使用）
    c59                            NUMBER(6,0),                   --（未使用）
    c60                            NUMBER(6,0),                   --（未使用）
    CONSTRAINT B_UserLogin_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_UserLogin 登录用户
prompt =============================
prompt
CREATE TABLE pcace.ZB_UserLogin(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             VARCHAR2(30),                  --手机号码
    c3                             VARCHAR2(50),                  --登录密码
    c4                             NUMBER(6,0),                   --用户主身份
    c5                             NUMBER(14,0),                  --所属组织MID
    c6                             VARCHAR2(32),                  --所属组织AMID
    c7                             DATE,                          --最后登录日期
    c8                             CHAR(1),                       --在线状态
    c9                             NUMBER(6,0),                   --状态
    c10                            VARCHAR2(30),                  --最后登录IP
    c11                            VARCHAR2(30),                  --昵称
    c12                            VARCHAR2(250),                 --头像
    c13                            VARCHAR2(30),                  --签名
    c14                            VARCHAR2(30),                  --性别
    c15                            VARCHAR2(50),                  --国家
    c16                            VARCHAR2(30),                  --省份
    c17                            VARCHAR2(30),                  --城市
    c18                            VARCHAR2(20),                  --语言
    c19                            VARCHAR2(50),                  --openid
    c20                            VARCHAR2(20),                  --权限/角色
    c21                            NUMBER(6,0),                   --身份认证标识
    c22                            NUMBER(6,0) DEFAULT 0,         --登录次数
    c23                            VARCHAR2(100),                 --备注
    c24                            NUMBER(2,0) DEFAULT 1,         --发布图片最大数目
    c25                            VARCHAR2(30),                  --真实姓名
    c26                            VARCHAR2(30),                  --生日
    c27                            NUMBER(6,0) DEFAULT 0,         --星级
    c28                            VARCHAR2(20),                  --QQ
    c29                            VARCHAR2(50),                  --邮箱
    c30                            VARCHAR2(100),                 --通信地址
    c31                            VARCHAR2(30),                  --联系电话（座机）
    c32                            VARCHAR2(50),                  --联系Email
    c33                            VARCHAR2(50),                  --职位
    c34                            VARCHAR2(30),                  --（未使用）
    c35                            VARCHAR2(30),                  --（未使用）
    c36                            VARCHAR2(30),                  --（未使用）
    c37                            VARCHAR2(30),                  --（未使用）
    c38                            VARCHAR2(30),                  --（未使用）
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30),                  --（未使用）
    c41                            DATE,                          --密码更新时间
    c42                            VARCHAR2(30),                  --R姓名
    c43                            VARCHAR2(30),                  --R性别
    c44                            VARCHAR2(30),                  --R身份证号
    c45                            VARCHAR2(30),                  --R（未使用）
    c46                            VARCHAR2(30),                  --R（未使用）
    c47                            VARCHAR2(200),                 --R图片1
    c48                            VARCHAR2(200),                 --R图片2
    c49                            VARCHAR2(200),                 --R图片3
    c50                            VARCHAR2(30),                  --REmail
    c51                            VARCHAR2(50),                  --R联系地址
    c52                            VARCHAR2(30),                  --R手机号
    c53                            DATE,                          --R认证申请日期
    c54                            DATE,                          --R认证日期
    c55                            NUMBER(6,0),                   --（未使用）
    c56                            NUMBER(6,0),                   --（未使用）
    c57                            NUMBER(6,0),                   --（未使用）
    c58                            NUMBER(6,0),                   --（未使用）
    c59                            NUMBER(6,0),                   --（未使用）
    c60                            NUMBER(6,0)                   --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_User_Location;
CREATE SEQUENCE pcace.seqB_User_Location MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_User_Location;
DROP TABLE pcace.ZB_User_Location;
prompt
prompt Creating table pcace.B_User_Location 登录用户位置信息
prompt =============================
prompt
CREATE TABLE pcace.B_User_Location(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             NUMBER(12,6) NOT NULL,         --经度
    c3                             NUMBER(12,6) NOT NULL,         --纬度
    c4                             NUMBER(12,6),                  --海拔
    c5                             NUMBER(12,6),                  --速度
    c6                             NUMBER(6,0),                   --方向
    c7                             VARCHAR2(100),                 --位置信息
    c8                             VARCHAR2(30)                  --备用
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_User_Location 登录用户位置信息
prompt =============================
prompt
CREATE TABLE pcace.ZB_User_Location(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32) NOT NULL,         --AUID
    c2                             NUMBER(12,6) NOT NULL,         --经度
    c3                             NUMBER(12,6) NOT NULL,         --纬度
    c4                             NUMBER(12,6),                  --海拔
    c5                             NUMBER(12,6),                  --速度
    c6                             NUMBER(6,0),                   --方向
    c7                             VARCHAR2(100),                 --位置信息
    c8                             VARCHAR2(30)                  --备用
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_MMOrgan;
CREATE SEQUENCE pcace.seqB_MMOrgan MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_MMOrgan;
DROP TABLE pcace.ZB_MMOrgan;
prompt
prompt Creating table pcace.B_MMOrgan 公司/企业
prompt =============================
prompt
CREATE TABLE pcace.B_MMOrgan(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AMID
    c2                             VARCHAR2(32),                  --企业名称
    c3                             VARCHAR2(32),                  --所属上级企业
    c4                             NUMBER(6,0),                   --下级企业数目
    c5                             NUMBER(6,0) NOT NULL,          --机构性质
    c6                             NUMBER(6,0) NOT NULL,          --业务状态
    c7                             NUMBER(6,0),                   --行业
    c8                             NUMBER(6,0) NOT NULL,          --状态
    c9                             VARCHAR2(30),                  --城市
    c10                            VARCHAR2(30),                  --区域
    c11                            VARCHAR2(30),                  --公司电话
    c12                            VARCHAR2(30),                  --企业联系人姓名
    c13                            VARCHAR2(30),                  --企业联系人电话
    c14                            VARCHAR2(200),                 --地址
    c15                            VARCHAR2(30),                  --坐标
    c16                            VARCHAR2(30),                  --企业负责人姓名
    c17                            VARCHAR2(30),                  --企业负责人电话
    c18                            VARCHAR2(30),                  --R开户银行
    c19                            VARCHAR2(30),                  --R银行账号
    c20                            VARCHAR2(50),                  --R银行账户名称
    c21                            VARCHAR2(30),                  --R银行预留手机号
    c22                            VARCHAR2(50),                  --业务开发人员
    c23                            VARCHAR2(50),                  --业务负责人员
    c24                            NUMBER(6,0) DEFAULT 0,         --信用等级
    c25                            NUMBER(14,0) DEFAULT 0,        --信用额度
    c26                            NUMBER(14,0) DEFAULT 0,        --当前信用余额
    c27                            NUMBER(14,2) DEFAULT 0,        --当前账户余额
    c28                            VARCHAR2(30),                  --企业简称
    c29                            VARCHAR2(100),                 --英文名称
    c30                            VARCHAR2(30),                  --英文简称
    c31                            VARCHAR2(2000),                --企业介绍
    c32                            VARCHAR2(200),                 --企业LOGO
    c33                            VARCHAR2(200),                 --营业执照
    c34                            VARCHAR2(20),                  --创立日期
    c35                            VARCHAR2(30),                  --企业规模
    c36                            VARCHAR2(100),                 --地址2
    c37                            VARCHAR2(100),                 --地址3
    c38                            VARCHAR2(30),                  --邮编
    c39                            VARCHAR2(30),                  --总机
    c40                            VARCHAR2(100),                 --网址
    CONSTRAINT B_MMOrgan_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_MMOrgan 公司/企业
prompt =============================
prompt
CREATE TABLE pcace.ZB_MMOrgan(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AMID
    c2                             VARCHAR2(32),                  --企业名称
    c3                             VARCHAR2(32),                  --所属上级企业
    c4                             NUMBER(6,0),                   --下级企业数目
    c5                             NUMBER(6,0) NOT NULL,          --机构性质
    c6                             NUMBER(6,0) NOT NULL,          --业务状态
    c7                             NUMBER(6,0),                   --行业
    c8                             NUMBER(6,0) NOT NULL,          --状态
    c9                             VARCHAR2(30),                  --城市
    c10                            VARCHAR2(30),                  --区域
    c11                            VARCHAR2(30),                  --公司电话
    c12                            VARCHAR2(30),                  --企业联系人姓名
    c13                            VARCHAR2(30),                  --企业联系人电话
    c14                            VARCHAR2(200),                 --地址
    c15                            VARCHAR2(30),                  --坐标
    c16                            VARCHAR2(30),                  --企业负责人姓名
    c17                            VARCHAR2(30),                  --企业负责人电话
    c18                            VARCHAR2(30),                  --R开户银行
    c19                            VARCHAR2(30),                  --R银行账号
    c20                            VARCHAR2(50),                  --R银行账户名称
    c21                            VARCHAR2(30),                  --R银行预留手机号
    c22                            VARCHAR2(50),                  --业务开发人员
    c23                            VARCHAR2(50),                  --业务负责人员
    c24                            NUMBER(6,0) DEFAULT 0,         --信用等级
    c25                            NUMBER(14,0) DEFAULT 0,        --信用额度
    c26                            NUMBER(14,0) DEFAULT 0,        --当前信用余额
    c27                            NUMBER(14,2) DEFAULT 0,        --当前账户余额
    c28                            VARCHAR2(30),                  --企业简称
    c29                            VARCHAR2(100),                 --英文名称
    c30                            VARCHAR2(30),                  --英文简称
    c31                            VARCHAR2(2000),                --企业介绍
    c32                            VARCHAR2(200),                 --企业LOGO
    c33                            VARCHAR2(200),                 --营业执照
    c34                            VARCHAR2(20),                  --创立日期
    c35                            VARCHAR2(30),                  --企业规模
    c36                            VARCHAR2(100),                 --地址2
    c37                            VARCHAR2(100),                 --地址3
    c38                            VARCHAR2(30),                  --邮编
    c39                            VARCHAR2(30),                  --总机
    c40                            VARCHAR2(100)                 --网址
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Job;
CREATE SEQUENCE pcace.seqB_Job MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Job;
DROP TABLE pcace.ZB_Job;
prompt
prompt Creating table pcace.B_Job 公司/企业-职位
prompt =============================
prompt
CREATE TABLE pcace.B_Job(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(100),                 --职位名称
    c2                             VARCHAR2(50),                  --HR
    c3                             NUMBER(6,0),                   --状态
    c4                             NUMBER(6,0),                   --在线状态(0,1)
    c5                             VARCHAR2(32),                  --公司AMID
    c6                             NUMBER(11,0),                  --公司MID
    c7                             VARCHAR2(50),                  --所在行业
    c8                             VARCHAR2(50),                  --所在部门
    c9                             VARCHAR2(50),                  --工作经验
    c10                            VARCHAR2(50),                  --学历要求
    c11                            VARCHAR2(50),                  --薪资范围
    c12                            VARCHAR2(500),                 --职位诱惑
    c13                            VARCHAR2(1000),                --职位描述
    c14                            VARCHAR2(1000),                --任职要求
    c15                            VARCHAR2(100) DEFAULT '0',     --工作地址
    c16                            CHAR(1),                       --是否要英文简历
    c17                            VARCHAR2(500),                 --JD文件
    c18                            DATE,                          --JD上传日期
    c19                            NUMBER(6,0),                   --JD处理状态
    c20                            VARCHAR2(100),                 --JD状态说明
    c21                            CHAR(1),                       --是否JD(0,1)
    c22                            VARCHAR2(30),                  --（未使用）
    c23                            VARCHAR2(30),                  --（未使用）
    c24                            VARCHAR2(20),                  --（未使用）
    c25                            VARCHAR2(30),                  --（未使用）
    CONSTRAINT B_Job_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Job 公司/企业-职位
prompt =============================
prompt
CREATE TABLE pcace.ZB_Job(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(100),                 --职位名称
    c2                             VARCHAR2(50),                  --HR
    c3                             NUMBER(6,0),                   --状态
    c4                             NUMBER(6,0),                   --在线状态(0,1)
    c5                             VARCHAR2(32),                  --公司AMID
    c6                             NUMBER(11,0),                  --公司MID
    c7                             VARCHAR2(50),                  --所在行业
    c8                             VARCHAR2(50),                  --所在部门
    c9                             VARCHAR2(50),                  --工作经验
    c10                            VARCHAR2(50),                  --学历要求
    c11                            VARCHAR2(50),                  --薪资范围
    c12                            VARCHAR2(500),                 --职位诱惑
    c13                            VARCHAR2(1000),                --职位描述
    c14                            VARCHAR2(1000),                --任职要求
    c15                            VARCHAR2(100) DEFAULT '0',     --工作地址
    c16                            CHAR(1),                       --是否要英文简历
    c17                            VARCHAR2(500),                 --JD文件
    c18                            DATE,                          --JD上传日期
    c19                            NUMBER(6,0),                   --JD处理状态
    c20                            VARCHAR2(100),                 --JD状态说明
    c21                            CHAR(1),                       --是否JD(0,1)
    c22                            VARCHAR2(30),                  --（未使用）
    c23                            VARCHAR2(30),                  --（未使用）
    c24                            VARCHAR2(20),                  --（未使用）
    c25                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_MMOrgan_Agreement;
CREATE SEQUENCE pcace.seqB_MMOrgan_Agreement MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_MMOrgan_Agreement;
DROP TABLE pcace.ZB_MMOrgan_Agreement;
prompt
prompt Creating table pcace.B_MMOrgan_Agreement 服务合同
prompt =============================
prompt
CREATE TABLE pcace.B_MMOrgan_Agreement(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AMID
    c2                             DATE,                          --签约日期
    c3                             VARCHAR2(20),                  --合同开始日期
    c4                             VARCHAR2(20),                  --合同结束日期
    c5                             NUMBER(6,0),                   --服务费率
    c6                             VARCHAR2(30),                  --甲方法人
    c7                             VARCHAR2(30),                  --甲方法人身份证号
    c8                             VARCHAR2(30),                  --甲方代理人
    c9                             VARCHAR2(30),                  --甲方代理人身份证号
    c10                            VARCHAR2(4000),                --签约内容
    c11                            NUMBER(6,0),                   --状态
    c12                            VARCHAR2(200),                 --备注
    CONSTRAINT B_MMOrgan_Agreement_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_MMOrgan_Agreement 服务合同
prompt =============================
prompt
CREATE TABLE pcace.ZB_MMOrgan_Agreement(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AMID
    c2                             DATE,                          --签约日期
    c3                             VARCHAR2(20),                  --合同开始日期
    c4                             VARCHAR2(20),                  --合同结束日期
    c5                             NUMBER(6,0),                   --服务费率
    c6                             VARCHAR2(30),                  --甲方法人
    c7                             VARCHAR2(30),                  --甲方法人身份证号
    c8                             VARCHAR2(30),                  --甲方代理人
    c9                             VARCHAR2(30),                  --甲方代理人身份证号
    c10                            VARCHAR2(4000),                --签约内容
    c11                            NUMBER(6,0),                   --状态
    c12                            VARCHAR2(200)                 --备注
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate;
CREATE SEQUENCE pcace.seqB_Candidate MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate;
DROP TABLE pcace.ZB_Candidate;
prompt
prompt Creating table pcace.B_Candidate 候选人
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --入库状态
    c4                             DATE,                          --入库时间
    c5                             NUMBER(6,0),                   --上线状态
    c6                             DATE,                          --上下线变更时间
    c7                             VARCHAR2(20),                  --简历编号
    c8                             VARCHAR2(30),                  --基本信息-中文姓名
    c9                             VARCHAR2(30),                  --基本信息-英文名
    c10                            VARCHAR2(30),                  --基本信息-出生日期
    c11                            NUMBER(3,0),                   --基本信息-年龄
    c12                            NUMBER(6,0),                   --基本信息-星座
    c13                            NUMBER(6,0),                   --基本信息-性别
    c14                            VARCHAR2(30),                  --基本信息-居住城市（省/直辖市）
    c15                            VARCHAR2(30),                  --基本信息-居住城市（市）
    c16                            VARCHAR2(30),                  --基本信息-居住城市（区/县级市）
    c17                            VARCHAR2(30),                  --基本信息-户籍所在地（省/直辖市）
    c18                            VARCHAR2(30),                  --基本信息-户籍所在地（市）
    c19                            VARCHAR2(30),                  --基本信息-户籍所在地（区/县级市）
    c20                            VARCHAR2(4),                   --基本信息-手机号码（区号）
    c21                            VARCHAR2(30),                  --基本信息-手机号码
    c22                            VARCHAR2(30),                  --基本信息-个人邮箱
    c23                            VARCHAR2(30),                  --基本信息-国籍
    c24                            NUMBER(6,0),                   --基本信息-婚姻状况
    c25                            NUMBER(6,0),                   --基本信息-最高学历
    c26                            NUMBER(6,0),                   --基本信息-基本年薪（万）
    c27                            NUMBER(11,0) DEFAULT 0,        --统计-关注次数
    c28                            NUMBER(11,0) DEFAULT 0,        --统计-浏览次数
    c29                            NUMBER(11,0) DEFAULT 0,        --统计-邀请面试次数
    c30                            NUMBER(11,0) DEFAULT 0,        --统计-Offer次数
    c31                            NUMBER(11,0) DEFAULT 0,        --统计-入职次数
    c32                            NUMBER(11,0) DEFAULT 0,        --统计-拒绝次数
    c33                            NUMBER(11,0),                  --（未使用）
    c34                            NUMBER(11,0),                  --（未使用）
    c35                            NUMBER(11,0),                  --（未使用）
    c36                            VARCHAR2(30),                  --（未使用）
    c37                            VARCHAR2(30),                  --是否接受Contractor
    c38                            VARCHAR2(50),                  --最近所在行业
    c39                            NUMBER(6,0) DEFAULT 0,         --工作年限（年）
    c40                            NUMBER(6,0) DEFAULT 0,         --在职状态
    c41                            VARCHAR2(100),                 --最近所在公司
    c42                            VARCHAR2(100),                 --最近职位
    c43                            VARCHAR2(30),                  --最近月薪（元）
    c44                            VARCHAR2(30),                  --最近年薪（万）
    c45                            VARCHAR2(100),                 --最近薪资构成
    c46                            VARCHAR2(100),                 --工作期望-职位
    c47                            VARCHAR2(100),                 --工作期望-职级
    c48                            VARCHAR2(100),                 --工作期望-行业
    c49                            VARCHAR2(100),                 --工作期望-城市
    c50                            VARCHAR2(100),                 --工作期望-期望月薪（元）
    c51                            VARCHAR2(100),                 --工作期望-期望年薪（万）
    c52                            VARCHAR2(4000),                --技能标签-职业
    c53                            VARCHAR2(4000),                --技能标签-团队管理
    c54                            VARCHAR2(4000),                --技能标签-软件技能
    c55                            VARCHAR2(4000),                --技能标签-（未使用）
    c56                            VARCHAR2(4000),                --技能标签-（未使用）
    c57                            VARCHAR2(2000),                --教育背景
    c58                            VARCHAR2(2000),                --培训经历
    c59                            VARCHAR2(2000),                --获得证书
    c60                            VARCHAR2(4000),                --工作经验
    c61                            VARCHAR2(200),                 --头像
    c62                            VARCHAR2(200),                 --简历附件
    c63                            VARCHAR2(4000),                --意向公司IDs
    c64                            VARCHAR2(4000),                --屏蔽公司IDs
    c65                            VARCHAR2(10),                  --简历完善度
    c66                            NUMBER(6,0) DEFAULT 0,         --精选标识（0-9）
    c67                            VARCHAR2(32),                  --服务猎头公司AMID
    c68                            NUMBER(11,0),                  --服务猎头公司MID
    c69                            NUMBER(6,0),                   --有效状态
    c70                            NUMBER(6,0),                   --自营标识
    c71                            NUMBER(6,0),                   --入库审核状态
    c72                            DATE,                          --顾问面试时间
    c73                            DATE,                          --顾问面评提交时间
    c74                            VARCHAR2(32),                  --指派BS业务员
    c75                            VARCHAR2(30),                  --指派BS业务员姓名
    c76                            DATE,                          --指派时间
    c77                            VARCHAR2(50),                  --操作人AUID
    c78                            VARCHAR2(20),                  --操作人姓名
    c79                            DATE,                          --操作时间
    c80                            VARCHAR2(200),                 --操作说明
    c81                            DATE,                          --入库申请时间
    c82                            NUMBER(6,0),                   --简历更新状态
    c83                            DATE,                          --简历最后更新时间
    c84                            DATE,                          --简历最后上线时间
    c85                            NUMBER(6,0),                   --顾问面评更新状态
    c86                            DATE,                          --顾问面评最后更新时间
    c87                            DATE,                          --顾问面评最后上线时间
    c88                            VARCHAR2(500),                 --简历审核结果
    c89                            VARCHAR2(500),                 --顾问面评审核结果
    c90                            VARCHAR2(500),                 --入库审核结果
    CONSTRAINT B_Candidate_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate 候选人
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --入库状态
    c4                             DATE,                          --入库时间
    c5                             NUMBER(6,0),                   --上线状态
    c6                             DATE,                          --上下线变更时间
    c7                             VARCHAR2(20),                  --简历编号
    c8                             VARCHAR2(30),                  --基本信息-中文姓名
    c9                             VARCHAR2(30),                  --基本信息-英文名
    c10                            VARCHAR2(30),                  --基本信息-出生日期
    c11                            NUMBER(3,0),                   --基本信息-年龄
    c12                            NUMBER(6,0),                   --基本信息-星座
    c13                            NUMBER(6,0),                   --基本信息-性别
    c14                            VARCHAR2(30),                  --基本信息-居住城市（省/直辖市）
    c15                            VARCHAR2(30),                  --基本信息-居住城市（市）
    c16                            VARCHAR2(30),                  --基本信息-居住城市（区/县级市）
    c17                            VARCHAR2(30),                  --基本信息-户籍所在地（省/直辖市）
    c18                            VARCHAR2(30),                  --基本信息-户籍所在地（市）
    c19                            VARCHAR2(30),                  --基本信息-户籍所在地（区/县级市）
    c20                            VARCHAR2(4),                   --基本信息-手机号码（区号）
    c21                            VARCHAR2(30),                  --基本信息-手机号码
    c22                            VARCHAR2(30),                  --基本信息-个人邮箱
    c23                            VARCHAR2(30),                  --基本信息-国籍
    c24                            NUMBER(6,0),                   --基本信息-婚姻状况
    c25                            NUMBER(6,0),                   --基本信息-最高学历
    c26                            NUMBER(6,0),                   --基本信息-基本年薪（万）
    c27                            NUMBER(11,0) DEFAULT 0,        --统计-关注次数
    c28                            NUMBER(11,0) DEFAULT 0,        --统计-浏览次数
    c29                            NUMBER(11,0) DEFAULT 0,        --统计-邀请面试次数
    c30                            NUMBER(11,0) DEFAULT 0,        --统计-Offer次数
    c31                            NUMBER(11,0) DEFAULT 0,        --统计-入职次数
    c32                            NUMBER(11,0) DEFAULT 0,        --统计-拒绝次数
    c33                            NUMBER(11,0),                  --（未使用）
    c34                            NUMBER(11,0),                  --（未使用）
    c35                            NUMBER(11,0),                  --（未使用）
    c36                            VARCHAR2(30),                  --（未使用）
    c37                            VARCHAR2(30),                  --是否接受Contractor
    c38                            VARCHAR2(50),                  --最近所在行业
    c39                            NUMBER(6,0) DEFAULT 0,         --工作年限（年）
    c40                            NUMBER(6,0) DEFAULT 0,         --在职状态
    c41                            VARCHAR2(100),                 --最近所在公司
    c42                            VARCHAR2(100),                 --最近职位
    c43                            VARCHAR2(30),                  --最近月薪（元）
    c44                            VARCHAR2(30),                  --最近年薪（万）
    c45                            VARCHAR2(100),                 --最近薪资构成
    c46                            VARCHAR2(100),                 --工作期望-职位
    c47                            VARCHAR2(100),                 --工作期望-职级
    c48                            VARCHAR2(100),                 --工作期望-行业
    c49                            VARCHAR2(100),                 --工作期望-城市
    c50                            VARCHAR2(100),                 --工作期望-期望月薪（元）
    c51                            VARCHAR2(100),                 --工作期望-期望年薪（万）
    c52                            VARCHAR2(4000),                --技能标签-职业
    c53                            VARCHAR2(4000),                --技能标签-团队管理
    c54                            VARCHAR2(4000),                --技能标签-软件技能
    c55                            VARCHAR2(4000),                --技能标签-（未使用）
    c56                            VARCHAR2(4000),                --技能标签-（未使用）
    c57                            VARCHAR2(2000),                --教育背景
    c58                            VARCHAR2(2000),                --培训经历
    c59                            VARCHAR2(2000),                --获得证书
    c60                            VARCHAR2(4000),                --工作经验
    c61                            VARCHAR2(200),                 --头像
    c62                            VARCHAR2(200),                 --简历附件
    c63                            VARCHAR2(4000),                --意向公司IDs
    c64                            VARCHAR2(4000),                --屏蔽公司IDs
    c65                            VARCHAR2(10),                  --简历完善度
    c66                            NUMBER(6,0) DEFAULT 0,         --精选标识（0-9）
    c67                            VARCHAR2(32),                  --服务猎头公司AMID
    c68                            NUMBER(11,0),                  --服务猎头公司MID
    c69                            NUMBER(6,0),                   --有效状态
    c70                            NUMBER(6,0),                   --自营标识
    c71                            NUMBER(6,0),                   --入库审核状态
    c72                            DATE,                          --顾问面试时间
    c73                            DATE,                          --顾问面评提交时间
    c74                            VARCHAR2(32),                  --指派BS业务员
    c75                            VARCHAR2(30),                  --指派BS业务员姓名
    c76                            DATE,                          --指派时间
    c77                            VARCHAR2(50),                  --操作人AUID
    c78                            VARCHAR2(20),                  --操作人姓名
    c79                            DATE,                          --操作时间
    c80                            VARCHAR2(200),                 --操作说明
    c81                            DATE,                          --入库申请时间
    c82                            NUMBER(6,0),                   --简历更新状态
    c83                            DATE,                          --简历最后更新时间
    c84                            DATE,                          --简历最后上线时间
    c85                            NUMBER(6,0),                   --顾问面评更新状态
    c86                            DATE,                          --顾问面评最后更新时间
    c87                            DATE,                          --顾问面评最后上线时间
    c88                            VARCHAR2(500),                 --简历审核结果
    c89                            VARCHAR2(500),                 --顾问面评审核结果
    c90                            VARCHAR2(500)                 --入库审核结果
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Process;
CREATE SEQUENCE pcace.seqB_Candidate_Process MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Process;
DROP TABLE pcace.ZB_Candidate_Process;
prompt
prompt Creating table pcace.B_Candidate_Process 候选人-面试流程
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Process(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(32),                  --流程PCID
    c6                             NUMBER(6,0),                   --流程类型
    c7                             NUMBER(6,0),                   --候选人状态
    c8                             NUMBER(6,0),                   --流程状态
    c9                             VARCHAR2(100),                 --流程标题
    c10                            VARCHAR2(200),                 --流程说明
    c11                            VARCHAR2(1000),                --流程详情
    c12                            NUMBER(6,0),                   --流程关闭状态
    c13                            VARCHAR2(500),                 --流程关闭状态说明
    c14                            DATE,                          --流程开始时间
    c15                            DATE,                          --流程结束时间
    c16                            NUMBER(6,0),                   --流程内部状态
    c17                            VARCHAR2(500),                 --流程内部状态说明
    c18                            NUMBER(6,0) DEFAULT 0,         --已经面试轮次
    c19                            NUMBER(6,0),                   --票据状态
    c20                            VARCHAR2(200),                 --票据说明
    c21                            NUMBER(6,0),                   --关注状态
    c22                            DATE,                          --关注日期
    c23                            VARCHAR2(200),                 --流程描述（ADMIN端）
    c24                            VARCHAR2(200),                 --流程描述（HC端）
    c25                            VARCHAR2(200),                 --流程描述（HR端）
    c26                            VARCHAR2(200),                 --流程描述（C端）
    c27                            VARCHAR2(50),                  --操作人
    c28                            VARCHAR2(30),                  --操作人姓名
    c29                            DATE,                          --操作时间
    c30                            VARCHAR2(200),                 --操作说明
    c31                            VARCHAR2(32),                  --公司AMID
    c32                            NUMBER(14,0),                  --公司MID
    c33                            NUMBER(14,0),                  --应聘职位ID
    c34                            VARCHAR2(30),                  --附：职位名称
    c35                            VARCHAR2(30),                  --附：HR名称
    c36                            VARCHAR2(50),                  --附：公司简称
    c37                            DATE,                          --附：面试时间
    c38                            VARCHAR2(30),                  --（未使用）
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30),                  --（未使用）
    CONSTRAINT B_Candidate_Process_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Process 候选人-面试流程
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Process(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(32),                  --流程PCID
    c6                             NUMBER(6,0),                   --流程类型
    c7                             NUMBER(6,0),                   --候选人状态
    c8                             NUMBER(6,0),                   --流程状态
    c9                             VARCHAR2(100),                 --流程标题
    c10                            VARCHAR2(200),                 --流程说明
    c11                            VARCHAR2(1000),                --流程详情
    c12                            NUMBER(6,0),                   --流程关闭状态
    c13                            VARCHAR2(500),                 --流程关闭状态说明
    c14                            DATE,                          --流程开始时间
    c15                            DATE,                          --流程结束时间
    c16                            NUMBER(6,0),                   --流程内部状态
    c17                            VARCHAR2(500),                 --流程内部状态说明
    c18                            NUMBER(6,0) DEFAULT 0,         --已经面试轮次
    c19                            NUMBER(6,0),                   --票据状态
    c20                            VARCHAR2(200),                 --票据说明
    c21                            NUMBER(6,0),                   --关注状态
    c22                            DATE,                          --关注日期
    c23                            VARCHAR2(200),                 --流程描述（ADMIN端）
    c24                            VARCHAR2(200),                 --流程描述（HC端）
    c25                            VARCHAR2(200),                 --流程描述（HR端）
    c26                            VARCHAR2(200),                 --流程描述（C端）
    c27                            VARCHAR2(50),                  --操作人
    c28                            VARCHAR2(30),                  --操作人姓名
    c29                            DATE,                          --操作时间
    c30                            VARCHAR2(200),                 --操作说明
    c31                            VARCHAR2(32),                  --公司AMID
    c32                            NUMBER(14,0),                  --公司MID
    c33                            NUMBER(14,0),                  --应聘职位ID
    c34                            VARCHAR2(30),                  --附：职位名称
    c35                            VARCHAR2(30),                  --附：HR名称
    c36                            VARCHAR2(50),                  --附：公司简称
    c37                            DATE,                          --附：面试时间
    c38                            VARCHAR2(30),                  --（未使用）
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVEducation;
CREATE SEQUENCE pcace.seqB_Candidate_CVEducation MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVEducation;
DROP TABLE pcace.ZB_Candidate_CVEducation;
prompt
prompt Creating table pcace.B_Candidate_CVEducation 候选人-教育背景
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVEducation(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --学校
    c6                             VARCHAR2(50),                  --专业
    c7                             NUMBER(6,0),                   --学历
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(30),                  --（未使用）
    c10                            VARCHAR2(50),                  --操作顾问AUID
    c11                            VARCHAR2(30),                  --操作顾问姓名
    c12                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_CVEducation_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVEducation 候选人-教育背景
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVEducation(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --学校
    c6                             VARCHAR2(50),                  --专业
    c7                             NUMBER(6,0),                   --学历
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(30),                  --（未使用）
    c10                            VARCHAR2(50),                  --操作顾问AUID
    c11                            VARCHAR2(30),                  --操作顾问姓名
    c12                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVTrain;
CREATE SEQUENCE pcace.seqB_Candidate_CVTrain MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVTrain;
DROP TABLE pcace.ZB_Candidate_CVTrain;
prompt
prompt Creating table pcace.B_Candidate_CVTrain 候选人-培训经历
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVTrain(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --培训机构
    c6                             VARCHAR2(200),                 --培训内容
    c7                             VARCHAR2(30),                  --（未使用）
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(50),                  --操作顾问AUID
    c10                            VARCHAR2(30),                  --操作顾问姓名
    c11                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_CVTrain_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVTrain 候选人-培训经历
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVTrain(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --培训机构
    c6                             VARCHAR2(200),                 --培训内容
    c7                             VARCHAR2(30),                  --（未使用）
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(50),                  --操作顾问AUID
    c10                            VARCHAR2(30),                  --操作顾问姓名
    c11                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVCertificate;
CREATE SEQUENCE pcace.seqB_Candidate_CVCertificate MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVCertificate;
DROP TABLE pcace.ZB_Candidate_CVCertificate;
prompt
prompt Creating table pcace.B_Candidate_CVCertificate 候选人-获得证书
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVCertificate(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --时间
    c4                             VARCHAR2(50),                  --证书
    c5                             VARCHAR2(30),                  --有效期
    c6                             VARCHAR2(200),                 --附件1
    c7                             VARCHAR2(200),                 --附件2
    c8                             VARCHAR2(50),                  --操作顾问AUID
    c9                             VARCHAR2(30),                  --操作顾问姓名
    c10                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_CVCertificate_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVCertificate 候选人-获得证书
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVCertificate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --时间
    c4                             VARCHAR2(50),                  --证书
    c5                             VARCHAR2(30),                  --有效期
    c6                             VARCHAR2(200),                 --附件1
    c7                             VARCHAR2(200),                 --附件2
    c8                             VARCHAR2(50),                  --操作顾问AUID
    c9                             VARCHAR2(30),                  --操作顾问姓名
    c10                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVWork;
CREATE SEQUENCE pcace.seqB_Candidate_CVWork MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVWork;
DROP TABLE pcace.ZB_Candidate_CVWork;
prompt
prompt Creating table pcace.B_Candidate_CVWork 候选人-工作经验
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVWork(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(200),                 --公司描述
    c7                             VARCHAR2(30),                  --行业
    c8                             VARCHAR2(100),                 --部门
    c9                             VARCHAR2(100),                 --职位
    c10                            VARCHAR2(100),                 --职级
    c11                            NUMBER(6,0),                   --评：月薪（元）
    c12                            NUMBER(6,0),                   --评：年薪（万）
    c13                            VARCHAR2(200),                 --评：薪资构成
    c14                            VARCHAR2(100),                 --评：汇报对象
    c15                            VARCHAR2(30),                  --评：下属人数
    c16                            VARCHAR2(1000),                --工作职责
    c17                            VARCHAR2(200),                 --评：工作权重
    c18                            VARCHAR2(1000),                --评：公司介绍
    c19                            NUMBER(6,0) DEFAULT 0,         --是否多段工作经历
    c20                            VARCHAR2(50),                  --职位类型
    c21                            VARCHAR2(50),                  --操作顾问AUID
    c22                            VARCHAR2(30),                  --操作顾问姓名
    c23                            DATE,                          --操作时间
    c24                            NUMBER(6,0) DEFAULT 0,         --评：离职期（天）
    c25                            VARCHAR2(200),                 --评：离职原因
    c26                            CHAR(1) DEFAULT '0',           --评：竞业禁止限制（1,0）
    c27                            NUMBER(6,0) DEFAULT 0,         --评：限制时长（年）
    c28                            VARCHAR2(1000),                --（未使用）
    c29                            VARCHAR2(1000),                --评：工作业绩
    c30                            VARCHAR2(30),                  --（未使用）
    CONSTRAINT B_Candidate_CVWork_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVWork 候选人-工作经验
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVWork(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(200),                 --公司描述
    c7                             VARCHAR2(30),                  --行业
    c8                             VARCHAR2(100),                 --部门
    c9                             VARCHAR2(100),                 --职位
    c10                            VARCHAR2(100),                 --职级
    c11                            NUMBER(6,0),                   --评：月薪（元）
    c12                            NUMBER(6,0),                   --评：年薪（万）
    c13                            VARCHAR2(200),                 --评：薪资构成
    c14                            VARCHAR2(100),                 --评：汇报对象
    c15                            VARCHAR2(30),                  --评：下属人数
    c16                            VARCHAR2(1000),                --工作职责
    c17                            VARCHAR2(200),                 --评：工作权重
    c18                            VARCHAR2(1000),                --评：公司介绍
    c19                            NUMBER(6,0) DEFAULT 0,         --是否多段工作经历
    c20                            VARCHAR2(50),                  --职位类型
    c21                            VARCHAR2(50),                  --操作顾问AUID
    c22                            VARCHAR2(30),                  --操作顾问姓名
    c23                            DATE,                          --操作时间
    c24                            NUMBER(6,0) DEFAULT 0,         --评：离职期（天）
    c25                            VARCHAR2(200),                 --评：离职原因
    c26                            CHAR(1) DEFAULT '0',           --评：竞业禁止限制（1,0）
    c27                            NUMBER(6,0) DEFAULT 0,         --评：限制时长（年）
    c28                            VARCHAR2(1000),                --（未使用）
    c29                            VARCHAR2(1000),                --评：工作业绩
    c30                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_CVProject;
CREATE SEQUENCE pcace.seqB_Candidate_CVProject MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_CVProject;
DROP TABLE pcace.ZB_Candidate_CVProject;
prompt
prompt Creating table pcace.B_Candidate_CVProject 候选人-项目经验
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_CVProject(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(50),                  --职位
    c7                             VARCHAR2(1000),                --项目简介
    c8                             VARCHAR2(500),                 --项目职责
    c9                             VARCHAR2(500),                 --项目成就
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(50),                  --操作顾问AUID
    c13                            VARCHAR2(30),                  --操作顾问姓名
    c14                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_CVProject_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_CVProject 候选人-项目经验
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_CVProject(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(50),                  --职位
    c7                             VARCHAR2(1000),                --项目简介
    c8                             VARCHAR2(500),                 --项目职责
    c9                             VARCHAR2(500),                 --项目成就
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(50),                  --操作顾问AUID
    c13                            VARCHAR2(30),                  --操作顾问姓名
    c14                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Collect;
CREATE SEQUENCE pcace.seqB_Candidate_Collect MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Collect;
DROP TABLE pcace.ZB_Candidate_Collect;
prompt
prompt Creating table pcace.B_Candidate_Collect 关注
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Collect(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --关注人AUID
    c3                             NUMBER(6,0),                   --关注人身份（2HR，3猎头）
    c4                             NUMBER(6,0),                   --关注状态（1关注，2互相，0取消关注）
    c5                             NUMBER(6,0),                   --状态
    CONSTRAINT B_Candidate_Collect_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Collect 关注
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Collect(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --关注人AUID
    c3                             NUMBER(6,0),                   --关注人身份（2HR，3猎头）
    c4                             NUMBER(6,0),                   --关注状态（1关注，2互相，0取消关注）
    c5                             NUMBER(6,0)                   --状态
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Organ_Relation;
CREATE SEQUENCE pcace.seqB_Candidate_Organ_Relation MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Organ_Relation;
DROP TABLE pcace.ZB_Candidate_Organ_Relation;
prompt
prompt Creating table pcace.B_Candidate_Organ_Relation 候选人与企业关系
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Organ_Relation(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --公司AMID
    c3                             NUMBER(11,0),                  --公司ID
    c4                             VARCHAR2(100),                 --公司名称
    c5                             NUMBER(6,0),                   --关系状态
    c6                             NUMBER(6,0),                   --（未使用）
    c7                             NUMBER(6,0),                   --（未使用）
    c8                             VARCHAR2(32),                  --操作人AUID
    c9                             VARCHAR2(30),                  --操作人姓名
    c10                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_Organ_Relation_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Organ_Relation 候选人与企业关系
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Organ_Relation(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --公司AMID
    c3                             NUMBER(11,0),                  --公司ID
    c4                             VARCHAR2(100),                 --公司名称
    c5                             NUMBER(6,0),                   --关系状态
    c6                             NUMBER(6,0),                   --（未使用）
    c7                             NUMBER(6,0),                   --（未使用）
    c8                             VARCHAR2(32),                  --操作人AUID
    c9                             VARCHAR2(30),                  --操作人姓名
    c10                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Files;
CREATE SEQUENCE pcace.seqB_Candidate_Files MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Files;
DROP TABLE pcace.ZB_Candidate_Files;
prompt
prompt Creating table pcace.B_Candidate_Files 候选人-附件
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Files(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             NUMBER(6,0),                   --附件分类
    c4                             VARCHAR2(50),                  --附件目录
    c5                             VARCHAR2(100),                 --文件标题
    c6                             VARCHAR2(200),                 --文件名称
    c7                             VARCHAR2(10),                  --文件类型
    c8                             VARCHAR2(300),                 --附件
    c9                             VARCHAR2(50),                  --上传者
    CONSTRAINT B_Candidate_Files_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Files 候选人-附件
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Files(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             NUMBER(6,0),                   --附件分类
    c4                             VARCHAR2(50),                  --附件目录
    c5                             VARCHAR2(100),                 --文件标题
    c6                             VARCHAR2(200),                 --文件名称
    c7                             VARCHAR2(10),                  --文件类型
    c8                             VARCHAR2(300),                 --附件
    c9                             VARCHAR2(50)                  --上传者
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Marker;
CREATE SEQUENCE pcace.seqB_Candidate_Marker MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Marker;
DROP TABLE pcace.ZB_Candidate_Marker;
prompt
prompt Creating table pcace.B_Candidate_Marker 技能标签
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Marker(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             NUMBER(6,0),                   --标签分类
    c5                             NUMBER(6,0),                   --标签
    c6                             VARCHAR2(100),                 --标签说明
    c7                             VARCHAR2(30),                  --（未使用）
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(32),                  --操作人AUID
    c10                            VARCHAR2(30),                  --操作人姓名
    c11                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_Marker_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Marker 技能标签
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Marker(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             NUMBER(6,0),                   --标签分类
    c5                             NUMBER(6,0),                   --标签
    c6                             VARCHAR2(100),                 --标签说明
    c7                             VARCHAR2(30),                  --（未使用）
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(32),                  --操作人AUID
    c10                            VARCHAR2(30),                  --操作人姓名
    c11                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_HCComment;
CREATE SEQUENCE pcace.seqB_Candidate_HCComment MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_HCComment;
DROP TABLE pcace.ZB_Candidate_HCComment;
prompt
prompt Creating table pcace.B_Candidate_HCComment 顾问面评
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_HCComment(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             DATE,                          --面评提交时间
    c5                             NUMBER(6,0),                   --面评状态
    c6                             DATE,                          --面评审核时间
    c7                             VARCHAR2(2000),                --整体印象
    c8                             VARCHAR2(4000),                --工作总结
    c9                             VARCHAR2(2000),                --备注总结
    c10                            NUMBER(6,0),                   --婚姻状况
    c11                            NUMBER(6,0),                   --（未使用）
    c12                            VARCHAR2(500),                 --（未使用）
    c13                            VARCHAR2(500),                 --评：性格
    c14                            VARCHAR2(500),                 --评：沟通能力
    c15                            VARCHAR2(500),                 --评：语言水平
    c16                            VARCHAR2(500),                 --评：缺点、疑虑
    c17                            VARCHAR2(30),                  --（未使用）
    c18                            VARCHAR2(30),                  --（未使用）
    c19                            VARCHAR2(30),                  --（未使用）
    c20                            VARCHAR2(30),                  --评：行业经验（年）
    c21                            VARCHAR2(30),                  --评：管理经验（年）
    c22                            VARCHAR2(2000),                --评：管辖区域范围
    c23                            NUMBER(6,0),                   --（未使用）
    c24                            NUMBER(6,0),                   --（未使用）
    c25                            NUMBER(6,0),                   --（未使用）
    c26                            NUMBER(6,0),                   --（未使用）
    c27                            NUMBER(6,0),                   --（未使用）
    c28                            VARCHAR2(32),                  --BS操作员AUID
    c29                            VARCHAR2(30),                  --BS操作员姓名
    c30                            DATE,                          --BS操作时间
    CONSTRAINT B_Candidate_HCComment_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_HCComment 顾问面评
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_HCComment(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             DATE,                          --面评提交时间
    c5                             NUMBER(6,0),                   --面评状态
    c6                             DATE,                          --面评审核时间
    c7                             VARCHAR2(2000),                --整体印象
    c8                             VARCHAR2(4000),                --工作总结
    c9                             VARCHAR2(2000),                --备注总结
    c10                            NUMBER(6,0),                   --婚姻状况
    c11                            NUMBER(6,0),                   --（未使用）
    c12                            VARCHAR2(500),                 --（未使用）
    c13                            VARCHAR2(500),                 --评：性格
    c14                            VARCHAR2(500),                 --评：沟通能力
    c15                            VARCHAR2(500),                 --评：语言水平
    c16                            VARCHAR2(500),                 --评：缺点、疑虑
    c17                            VARCHAR2(30),                  --（未使用）
    c18                            VARCHAR2(30),                  --（未使用）
    c19                            VARCHAR2(30),                  --（未使用）
    c20                            VARCHAR2(30),                  --评：行业经验（年）
    c21                            VARCHAR2(30),                  --评：管理经验（年）
    c22                            VARCHAR2(2000),                --评：管辖区域范围
    c23                            NUMBER(6,0),                   --（未使用）
    c24                            NUMBER(6,0),                   --（未使用）
    c25                            NUMBER(6,0),                   --（未使用）
    c26                            NUMBER(6,0),                   --（未使用）
    c27                            NUMBER(6,0),                   --（未使用）
    c28                            VARCHAR2(32),                  --BS操作员AUID
    c29                            VARCHAR2(30),                  --BS操作员姓名
    c30                            DATE                          --BS操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Interview;
CREATE SEQUENCE pcace.seqB_Candidate_Interview MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Interview;
DROP TABLE pcace.ZB_Candidate_Interview;
prompt
prompt Creating table pcace.B_Candidate_Interview 候选人-面试记录
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Interview(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --候选人AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             CHAR(1),                       --面试人对象（2,3）
    c4                             VARCHAR2(50),                  --面试人AUID
    c5                             VARCHAR2(30),                  --候选人姓名
    c6                             VARCHAR2(100),                 --面试职位
    c7                             DATE,                          --面试时间
    c8                             DATE,                          --备选时间
    c9                             VARCHAR2(200),                 --面试地点
    c10                            NUMBER(6,0),                   --候选人：面试结果状态
    c11                            DATE,                          --候选人：面试结果提交时间
    c12                            VARCHAR2(50),                  --候选人：面试结果提交人
    c13                            VARCHAR2(500),                 --候选人：结果说明
    c14                            NUMBER(6,0),                   --面试状态（0,1,9）
    c15                            DATE,                          --面试人：面试结果提交时间
    c16                            VARCHAR2(50),                  --面试人：面试结果提交人
    c17                            VARCHAR2(500),                 --面试人：结果说明
    c18                            VARCHAR2(32),                  --关联流程PCID
    c19                            VARCHAR2(50),                  --提醒对象
    c20                            VARCHAR2(30),                  --（未使用）
    c21                            VARCHAR2(30),                  --（未使用）
    c22                            VARCHAR2(30),                  --（未使用）
    c23                            VARCHAR2(32),                  --操作人AUID
    c24                            VARCHAR2(30),                  --操作人姓名
    c25                            DATE,                          --操作时间
    CONSTRAINT B_Candidate_Interview_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Interview 候选人-面试记录
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Interview(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --候选人AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             CHAR(1),                       --面试人对象（2,3）
    c4                             VARCHAR2(50),                  --面试人AUID
    c5                             VARCHAR2(30),                  --候选人姓名
    c6                             VARCHAR2(100),                 --面试职位
    c7                             DATE,                          --面试时间
    c8                             DATE,                          --备选时间
    c9                             VARCHAR2(200),                 --面试地点
    c10                            NUMBER(6,0),                   --候选人：面试结果状态
    c11                            DATE,                          --候选人：面试结果提交时间
    c12                            VARCHAR2(50),                  --候选人：面试结果提交人
    c13                            VARCHAR2(500),                 --候选人：结果说明
    c14                            NUMBER(6,0),                   --面试状态（0,1,9）
    c15                            DATE,                          --面试人：面试结果提交时间
    c16                            VARCHAR2(50),                  --面试人：面试结果提交人
    c17                            VARCHAR2(500),                 --面试人：结果说明
    c18                            VARCHAR2(32),                  --关联流程PCID
    c19                            VARCHAR2(50),                  --提醒对象
    c20                            VARCHAR2(30),                  --（未使用）
    c21                            VARCHAR2(30),                  --（未使用）
    c22                            VARCHAR2(30),                  --（未使用）
    c23                            VARCHAR2(32),                  --操作人AUID
    c24                            VARCHAR2(30),                  --操作人姓名
    c25                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.B_Candidate_Process_His;
DROP TABLE pcace.ZB_Candidate_Process_His;
prompt
prompt Creating table pcace.B_Candidate_Process_His 候选人-面试流程历史
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Process_His(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(50),                  --流程PCID
    c6                             NUMBER(6,0),                   --流程类型
    c7                             NUMBER(6,0),                   --候选人状态
    c8                             NUMBER(6,0),                   --流程状态
    c9                             VARCHAR2(100),                 --流程标题
    c10                            VARCHAR2(200),                 --流程说明
    c11                            VARCHAR2(1000),                --流程详情
    c12                            NUMBER(6,0),                   --流程关闭状态
    c13                            VARCHAR2(500),                 --流程关闭状态说明
    c14                            DATE,                          --流程开始时间
    c15                            DATE,                          --流程结束时间
    c16                            NUMBER(6,0),                   --流程内部状态
    c17                            VARCHAR2(500),                 --流程内部状态说明
    c18                            NUMBER(6,0) DEFAULT 0,         --已经面试轮次
    c19                            NUMBER(6,0),                   --票据状态
    c20                            VARCHAR2(200),                 --票据说明
    c21                            NUMBER(6,0),                   --关注状态
    c22                            DATE,                          --关注日期
    c23                            VARCHAR2(200),                 --流程描述（ADMIN端）
    c24                            VARCHAR2(200),                 --流程描述（HC端）
    c25                            VARCHAR2(200),                 --流程描述（HR端）
    c26                            VARCHAR2(200),                 --流程描述（C端）
    c27                            VARCHAR2(50),                  --操作人
    c28                            VARCHAR2(30),                  --操作人姓名
    c29                            DATE,                          --操作时间
    c30                            VARCHAR2(200),                 --操作说明
    c31                            VARCHAR2(32),                  --公司AMID
    c32                            NUMBER(14,0),                  --公司MID
    c33                            NUMBER(14,0),                  --应聘职位ID
    c34                            VARCHAR2(30),                  --附：职位名称
    c35                            VARCHAR2(30),                  --附：HR名称
    c36                            VARCHAR2(30),                  --附：公司简称
    c37                            DATE,                          --附：面试时间
    c38                            VARCHAR2(30),                  --（未使用）
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Process_His 候选人-面试流程历史
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Process_His(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(50),                  --HC_AUID
    c4                             VARCHAR2(50),                  --HR_AUID
    c5                             VARCHAR2(50),                  --流程PCID
    c6                             NUMBER(6,0),                   --流程类型
    c7                             NUMBER(6,0),                   --候选人状态
    c8                             NUMBER(6,0),                   --流程状态
    c9                             VARCHAR2(100),                 --流程标题
    c10                            VARCHAR2(200),                 --流程说明
    c11                            VARCHAR2(1000),                --流程详情
    c12                            NUMBER(6,0),                   --流程关闭状态
    c13                            VARCHAR2(500),                 --流程关闭状态说明
    c14                            DATE,                          --流程开始时间
    c15                            DATE,                          --流程结束时间
    c16                            NUMBER(6,0),                   --流程内部状态
    c17                            VARCHAR2(500),                 --流程内部状态说明
    c18                            NUMBER(6,0) DEFAULT 0,         --已经面试轮次
    c19                            NUMBER(6,0),                   --票据状态
    c20                            VARCHAR2(200),                 --票据说明
    c21                            NUMBER(6,0),                   --关注状态
    c22                            DATE,                          --关注日期
    c23                            VARCHAR2(200),                 --流程描述（ADMIN端）
    c24                            VARCHAR2(200),                 --流程描述（HC端）
    c25                            VARCHAR2(200),                 --流程描述（HR端）
    c26                            VARCHAR2(200),                 --流程描述（C端）
    c27                            VARCHAR2(50),                  --操作人
    c28                            VARCHAR2(30),                  --操作人姓名
    c29                            DATE,                          --操作时间
    c30                            VARCHAR2(200),                 --操作说明
    c31                            VARCHAR2(32),                  --公司AMID
    c32                            NUMBER(14,0),                  --公司MID
    c33                            NUMBER(14,0),                  --应聘职位ID
    c34                            VARCHAR2(30),                  --附：职位名称
    c35                            VARCHAR2(30),                  --附：HR名称
    c36                            VARCHAR2(30),                  --附：公司简称
    c37                            DATE,                          --附：面试时间
    c38                            VARCHAR2(30),                  --（未使用）
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Candidate_Language;
CREATE SEQUENCE pcace.seqB_Candidate_Language MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Candidate_Language;
DROP TABLE pcace.ZB_Candidate_Language;
prompt
prompt Creating table pcace.B_Candidate_Language 候选人语言水平
prompt =============================
prompt
CREATE TABLE pcace.B_Candidate_Language(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --语言
    c4                             NUMBER(6,0),                   --水平
    c5                             NUMBER(6,0),                   --顾问AUID
    c6                             VARCHAR2(32),                  --操作人AUID
    c7                             VARCHAR2(30),                  --操作人姓名
    c8                             DATE,                          --操作时间
    CONSTRAINT B_Candidate_Language_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Candidate_Language 候选人语言水平
prompt =============================
prompt
CREATE TABLE pcace.ZB_Candidate_Language(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --语言
    c4                             NUMBER(6,0),                   --水平
    c5                             NUMBER(6,0),                   --顾问AUID
    c6                             VARCHAR2(32),                  --操作人AUID
    c7                             VARCHAR2(30),                  --操作人姓名
    c8                             DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Bill;
CREATE SEQUENCE pcace.seqB_Bill MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Bill;
DROP TABLE pcace.ZB_Bill;
prompt
prompt Creating table pcace.B_Bill 票据
prompt =============================
prompt
CREATE TABLE pcace.B_Bill(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --流程PCID
    c3                             VARCHAR2(32),                  --HR_AMID
    c4                             VARCHAR2(32),                  --HR_AUID
    c5                             VARCHAR2(32),                  --顾问AMID
    c6                             VARCHAR2(32),                  --顾问AUID
    c7                             VARCHAR2(30),                  --候选人
    c8                             VARCHAR2(30),                  --职位
    c9                             VARCHAR2(30),                  --招聘服务费
    c10                            NUMBER(6,0),                   --票据状态
    c11                            VARCHAR2(50),                  --HR公司名称
    c12                            VARCHAR2(30),                  --HR公司联系人
    c13                            VARCHAR2(100),                 --顾问信息
    c14                            VARCHAR2(30),                  --开票单号
    c15                            VARCHAR2(32),                  --开票人
    c16                            VARCHAR2(30),                  --开票人姓名
    c17                            DATE,                          --开票时间
    c18                            VARCHAR2(30),                  --付款单号
    c19                            VARCHAR2(32),                  --付款人
    c20                            VARCHAR2(30),                  --付款人姓名
    c21                            DATE,                          --付款时间
    c22                            VARCHAR2(30),                  --（未使用）
    c23                            VARCHAR2(30),                  --（未使用）
    c24                            VARCHAR2(30),                  --（未使用）
    c25                            VARCHAR2(30),                  --（未使用）
    CONSTRAINT B_Bill_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Bill 票据
prompt =============================
prompt
CREATE TABLE pcace.ZB_Bill(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --流程PCID
    c3                             VARCHAR2(32),                  --HR_AMID
    c4                             VARCHAR2(32),                  --HR_AUID
    c5                             VARCHAR2(32),                  --顾问AMID
    c6                             VARCHAR2(32),                  --顾问AUID
    c7                             VARCHAR2(30),                  --候选人
    c8                             VARCHAR2(30),                  --职位
    c9                             VARCHAR2(30),                  --招聘服务费
    c10                            NUMBER(6,0),                   --票据状态
    c11                            VARCHAR2(50),                  --HR公司名称
    c12                            VARCHAR2(30),                  --HR公司联系人
    c13                            VARCHAR2(100),                 --顾问信息
    c14                            VARCHAR2(30),                  --开票单号
    c15                            VARCHAR2(32),                  --开票人
    c16                            VARCHAR2(30),                  --开票人姓名
    c17                            DATE,                          --开票时间
    c18                            VARCHAR2(30),                  --付款单号
    c19                            VARCHAR2(32),                  --付款人
    c20                            VARCHAR2(30),                  --付款人姓名
    c21                            DATE,                          --付款时间
    c22                            VARCHAR2(30),                  --（未使用）
    c23                            VARCHAR2(30),                  --（未使用）
    c24                            VARCHAR2(30),                  --（未使用）
    c25                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Action;
CREATE SEQUENCE pcace.seqB_Action MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Action;
DROP TABLE pcace.ZB_Action;
prompt
prompt Creating table pcace.B_Action 业务事件
prompt =============================
prompt
CREATE TABLE pcace.B_Action(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --对象AUID（候选人）
    c2                             VARCHAR2(50),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             VARCHAR2(32),                  --流程PCID
    c5                             NUMBER(6,0),                   --事件分类
    c6                             NUMBER(6,0),                   --事件类型
    c7                             NUMBER(6,0),                   --流程分类
    c8                             NUMBER(6,0),                   --事件状态
    c9                             DATE,                          --限时执行截止时间
    c10                            VARCHAR2(20),                  --限时执行事件CODE
    c11                            NUMBER(6,0),                   --限时执行状态（0,1）
    c12                            VARCHAR2(30),                  --事件标题（简明）
    c13                            VARCHAR2(500),                 --事件详情
    c14                            VARCHAR2(200),                 --事件标题M
    c15                            VARCHAR2(200),                 --事件标题BS
    c16                            VARCHAR2(200),                 --事件标题HC
    c17                            VARCHAR2(200),                 --事件标题HR
    c18                            VARCHAR2(200),                 --事件标题C
    c19                            CHAR(1) DEFAULT '0',           --M可见
    c20                            CHAR(1) DEFAULT '0',           --BS可见
    c21                            CHAR(1) DEFAULT '0',           --HC可见
    c22                            CHAR(1) DEFAULT '0',           --HR可见
    c23                            CHAR(1) DEFAULT '0',           --C可见
    c24                            DATE,                          --通知时间
    c25                            VARCHAR2(100),                 --通知对象M
    c26                            VARCHAR2(100),                 --通知对象BS
    c27                            VARCHAR2(100),                 --通知对象HC
    c28                            VARCHAR2(100),                 --通知对象HR
    c29                            VARCHAR2(100),                 --通知对象C
    c30                            VARCHAR2(200),                 --通知标题M
    c31                            VARCHAR2(200),                 --通知标题BS
    c32                            VARCHAR2(200),                 --通知标题HC
    c33                            VARCHAR2(200),                 --通知标题HR
    c34                            VARCHAR2(200),                 --通知标题C
    c35                            NUMBER(6,0),                   --任务状态M
    c36                            NUMBER(6,0),                   --任务状态BS
    c37                            NUMBER(6,0),                   --任务状态HC
    c38                            NUMBER(6,0),                   --任务状态HR
    c39                            NUMBER(6,0),                   --任务状态C
    c40                            CHAR(1) DEFAULT '0',           --已读标记M
    c41                            CHAR(1) DEFAULT '0',           --已读标记BS
    c42                            CHAR(1) DEFAULT '0',           --已读标记HC
    c43                            CHAR(1) DEFAULT '0',           --已读标记HR
    c44                            CHAR(1) DEFAULT '0',           --已读标记C
    c45                            VARCHAR2(50),                  --附：公司AMID
    c46                            VARCHAR2(30),                  --附：公司MID
    c47                            VARCHAR2(30),                  --附：职位ID
    c48                            VARCHAR2(50),                  --附：HR_AUID
    c49                            DATE,                          --附：提醒日期
    c50                            VARCHAR2(30),                  --附：候选人姓名
    c51                            VARCHAR2(200),                 --附：候选人头像
    c52                            VARCHAR2(100),                 --附：候选人当前职位
    c53                            NUMBER(6,0),                   --附：事件提醒状态
    c54                            VARCHAR2(50),                  --附：事件提醒状态说明
    c55                            VARCHAR2(200),                 --附：公司职位HR
    c56                            VARCHAR2(100),                 --附：事件提醒详情
    c57                            NUMBER(6,0),                   --附：事件提醒类型
    c58                            VARCHAR2(100),                 --附：事件提醒备注说明
    c59                            CHAR(1),                       --附：是否可推迟
    c60                            NUMBER(16,0) DEFAULT -1,       --原tid
    c61                            NUMBER(6,0),                   --事件搜索状态
    c62                            VARCHAR2(200),                 --关联链接
    c63                            VARCHAR2(100),                 --关联对象
    c64                            VARCHAR2(30),                  --事件CODE
    c65                            NUMBER(6,0),                   --（未使用）
    CONSTRAINT B_Action_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Action 业务事件
prompt =============================
prompt
CREATE TABLE pcace.ZB_Action(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(50),                  --对象AUID（候选人）
    c2                             VARCHAR2(50),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             VARCHAR2(32),                  --流程PCID
    c5                             NUMBER(6,0),                   --事件分类
    c6                             NUMBER(6,0),                   --事件类型
    c7                             NUMBER(6,0),                   --流程分类
    c8                             NUMBER(6,0),                   --事件状态
    c9                             DATE,                          --限时执行截止时间
    c10                            VARCHAR2(20),                  --限时执行事件CODE
    c11                            NUMBER(6,0),                   --限时执行状态（0,1）
    c12                            VARCHAR2(30),                  --事件标题（简明）
    c13                            VARCHAR2(500),                 --事件详情
    c14                            VARCHAR2(200),                 --事件标题M
    c15                            VARCHAR2(200),                 --事件标题BS
    c16                            VARCHAR2(200),                 --事件标题HC
    c17                            VARCHAR2(200),                 --事件标题HR
    c18                            VARCHAR2(200),                 --事件标题C
    c19                            CHAR(1) DEFAULT '0',           --M可见
    c20                            CHAR(1) DEFAULT '0',           --BS可见
    c21                            CHAR(1) DEFAULT '0',           --HC可见
    c22                            CHAR(1) DEFAULT '0',           --HR可见
    c23                            CHAR(1) DEFAULT '0',           --C可见
    c24                            DATE,                          --通知时间
    c25                            VARCHAR2(100),                 --通知对象M
    c26                            VARCHAR2(100),                 --通知对象BS
    c27                            VARCHAR2(100),                 --通知对象HC
    c28                            VARCHAR2(100),                 --通知对象HR
    c29                            VARCHAR2(100),                 --通知对象C
    c30                            VARCHAR2(200),                 --通知标题M
    c31                            VARCHAR2(200),                 --通知标题BS
    c32                            VARCHAR2(200),                 --通知标题HC
    c33                            VARCHAR2(200),                 --通知标题HR
    c34                            VARCHAR2(200),                 --通知标题C
    c35                            NUMBER(6,0),                   --任务状态M
    c36                            NUMBER(6,0),                   --任务状态BS
    c37                            NUMBER(6,0),                   --任务状态HC
    c38                            NUMBER(6,0),                   --任务状态HR
    c39                            NUMBER(6,0),                   --任务状态C
    c40                            CHAR(1) DEFAULT '0',           --已读标记M
    c41                            CHAR(1) DEFAULT '0',           --已读标记BS
    c42                            CHAR(1) DEFAULT '0',           --已读标记HC
    c43                            CHAR(1) DEFAULT '0',           --已读标记HR
    c44                            CHAR(1) DEFAULT '0',           --已读标记C
    c45                            VARCHAR2(50),                  --附：公司AMID
    c46                            VARCHAR2(30),                  --附：公司MID
    c47                            VARCHAR2(30),                  --附：职位ID
    c48                            VARCHAR2(50),                  --附：HR_AUID
    c49                            DATE,                          --附：提醒日期
    c50                            VARCHAR2(30),                  --附：候选人姓名
    c51                            VARCHAR2(200),                 --附：候选人头像
    c52                            VARCHAR2(100),                 --附：候选人当前职位
    c53                            NUMBER(6,0),                   --附：事件提醒状态
    c54                            VARCHAR2(50),                  --附：事件提醒状态说明
    c55                            VARCHAR2(200),                 --附：公司职位HR
    c56                            VARCHAR2(100),                 --附：事件提醒详情
    c57                            NUMBER(6,0),                   --附：事件提醒类型
    c58                            VARCHAR2(100),                 --附：事件提醒备注说明
    c59                            CHAR(1),                       --附：是否可推迟
    c60                            NUMBER(16,0) DEFAULT -1,       --原tid
    c61                            NUMBER(6,0),                   --事件搜索状态
    c62                            VARCHAR2(200),                 --关联链接
    c63                            VARCHAR2(100),                 --关联对象
    c64                            VARCHAR2(30),                  --事件CODE
    c65                            NUMBER(6,0)                   --（未使用）
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
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --所属公司AMID
    c3                             NUMBER(11,0),                  --所属公司
    c4                             VARCHAR2(30),                  --姓名
    c5                             VARCHAR2(30),                  --性别
    c6                             VARCHAR2(30),                  --手机号
    c7                             VARCHAR2(30),                  --工作邮箱
    c8                             VARCHAR2(30),                  --座机电话
    c9                             VARCHAR2(100),                 --公司名称
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(30),                  --（未使用）
    c13                            VARCHAR2(30),                  --（未使用）
    c14                            VARCHAR2(30),                  --城市
    c15                            NUMBER(6,0),                   --注册方式
    c16                            VARCHAR2(50),                  --职位
    c17                            NUMBER(6,0) DEFAULT 203000,    --业务状态
    c18                            NUMBER(6,0) DEFAULT 130001,    --状态
    c19                            NUMBER(14,0) DEFAULT 0,        --职位数目
    c20                            NUMBER(14,0) DEFAULT 0,        --关注数目
    c21                            NUMBER(14,0) DEFAULT 0,        --邀请面试数目
    c22                            NUMBER(14,0) DEFAULT 0,        --offer数目
    c23                            NUMBER(14,0) DEFAULT 0,        --成交数目
    c24                            NUMBER(14,0) DEFAULT 0,        --浏览候选人数目
    c25                            NUMBER(14,0) DEFAULT 0,        --网站总浏览数目
    c26                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c27                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c28                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c29                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c30                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c31                            NUMBER(6,0) DEFAULT 0,         --R认证状态（0,1）
    c32                            DATE,                          --R认证日期
    c33                            VARCHAR2(30),                  --R真实姓名
    c34                            VARCHAR2(30),                  --R身份证号
    c35                            VARCHAR2(250),                 --R身份证图片1
    c36                            VARCHAR2(250),                 --R身份证图片2
    c37                            VARCHAR2(250),                 --R名片图片1
    c38                            VARCHAR2(250),                 --R名片图片2
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30),                  --（未使用）
    CONSTRAINT B_HR_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_HR HR
prompt =============================
prompt
CREATE TABLE pcace.ZB_HR(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --所属公司AMID
    c3                             NUMBER(11,0),                  --所属公司
    c4                             VARCHAR2(30),                  --姓名
    c5                             VARCHAR2(30),                  --性别
    c6                             VARCHAR2(30),                  --手机号
    c7                             VARCHAR2(30),                  --工作邮箱
    c8                             VARCHAR2(30),                  --座机电话
    c9                             VARCHAR2(100),                 --公司名称
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(30),                  --（未使用）
    c13                            VARCHAR2(30),                  --（未使用）
    c14                            VARCHAR2(30),                  --城市
    c15                            NUMBER(6,0),                   --注册方式
    c16                            VARCHAR2(50),                  --职位
    c17                            NUMBER(6,0) DEFAULT 203000,    --业务状态
    c18                            NUMBER(6,0) DEFAULT 130001,    --状态
    c19                            NUMBER(14,0) DEFAULT 0,        --职位数目
    c20                            NUMBER(14,0) DEFAULT 0,        --关注数目
    c21                            NUMBER(14,0) DEFAULT 0,        --邀请面试数目
    c22                            NUMBER(14,0) DEFAULT 0,        --offer数目
    c23                            NUMBER(14,0) DEFAULT 0,        --成交数目
    c24                            NUMBER(14,0) DEFAULT 0,        --浏览候选人数目
    c25                            NUMBER(14,0) DEFAULT 0,        --网站总浏览数目
    c26                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c27                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c28                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c29                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c30                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c31                            NUMBER(6,0) DEFAULT 0,         --R认证状态（0,1）
    c32                            DATE,                          --R认证日期
    c33                            VARCHAR2(30),                  --R真实姓名
    c34                            VARCHAR2(30),                  --R身份证号
    c35                            VARCHAR2(250),                 --R身份证图片1
    c36                            VARCHAR2(250),                 --R身份证图片2
    c37                            VARCHAR2(250),                 --R名片图片1
    c38                            VARCHAR2(250),                 --R名片图片2
    c39                            VARCHAR2(30),                  --（未使用）
    c40                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Hunter;
CREATE SEQUENCE pcace.seqB_Hunter MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Hunter;
DROP TABLE pcace.ZB_Hunter;
prompt
prompt Creating table pcace.B_Hunter 猎头顾问
prompt =============================
prompt
CREATE TABLE pcace.B_Hunter(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --所属公司AMID
    c3                             NUMBER(11,0),                  --所属公司
    c4                             VARCHAR2(30),                  --姓名
    c5                             NUMBER(6,0),                   --性别
    c6                             VARCHAR2(30),                  --手机号
    c7                             VARCHAR2(30),                  --工作邮箱
    c8                             VARCHAR2(30),                  --座机电话
    c9                             VARCHAR2(100),                 --公司名称
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(30),                  --（未使用）
    c13                            VARCHAR2(30),                  --（未使用）
    c14                            VARCHAR2(30),                  --城市
    c15                            NUMBER(6,0),                   --注册方式
    c16                            NUMBER(6,0) DEFAULT 0,         --是否从属公司
    c17                            NUMBER(6,0) DEFAULT 203000,    --业务状态
    c18                            NUMBER(6,0) DEFAULT 130001,    --状态
    c19                            NUMBER(14,0) DEFAULT 0,        --新建候选人数目
    c20                            NUMBER(14,0) DEFAULT 0,        --入库候选人数目
    c21                            NUMBER(14,0) DEFAULT 0,        --被关注候选人数目
    c22                            NUMBER(14,0) DEFAULT 0,        --被邀请面试候选人数目
    c23                            NUMBER(14,0) DEFAULT 0,        --被offer候选人数目
    c24                            NUMBER(14,0) DEFAULT 0,        --成交候选人数目
    c25                            NUMBER(14,0) DEFAULT 0,        --网站总浏览数目
    c26                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c27                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c28                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c29                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c30                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c31                            NUMBER(6,0) DEFAULT 0,         --R认证状态（0,1）
    c32                            DATE,                          --R认证日期
    c33                            VARCHAR2(30),                  --R真实姓名
    c34                            VARCHAR2(20),                  --R身份证号
    c35                            VARCHAR2(200),                 --R身份证图片1
    c36                            VARCHAR2(200),                 --R身份证图片2
    c37                            VARCHAR2(200),                 --R名片图片1
    c38                            VARCHAR2(200),                 --R名片图片2
    c39                            NUMBER(6,0),                   --（未使用）
    c40                            NUMBER(6,0),                   --（未使用）
    CONSTRAINT B_Hunter_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Hunter 猎头顾问
prompt =============================
prompt
CREATE TABLE pcace.ZB_Hunter(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             VARCHAR2(32),                  --所属公司AMID
    c3                             NUMBER(11,0),                  --所属公司
    c4                             VARCHAR2(30),                  --姓名
    c5                             NUMBER(6,0),                   --性别
    c6                             VARCHAR2(30),                  --手机号
    c7                             VARCHAR2(30),                  --工作邮箱
    c8                             VARCHAR2(30),                  --座机电话
    c9                             VARCHAR2(100),                 --公司名称
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(30),                  --（未使用）
    c13                            VARCHAR2(30),                  --（未使用）
    c14                            VARCHAR2(30),                  --城市
    c15                            NUMBER(6,0),                   --注册方式
    c16                            NUMBER(6,0) DEFAULT 0,         --是否从属公司
    c17                            NUMBER(6,0) DEFAULT 203000,    --业务状态
    c18                            NUMBER(6,0) DEFAULT 130001,    --状态
    c19                            NUMBER(14,0) DEFAULT 0,        --新建候选人数目
    c20                            NUMBER(14,0) DEFAULT 0,        --入库候选人数目
    c21                            NUMBER(14,0) DEFAULT 0,        --被关注候选人数目
    c22                            NUMBER(14,0) DEFAULT 0,        --被邀请面试候选人数目
    c23                            NUMBER(14,0) DEFAULT 0,        --被offer候选人数目
    c24                            NUMBER(14,0) DEFAULT 0,        --成交候选人数目
    c25                            NUMBER(14,0) DEFAULT 0,        --网站总浏览数目
    c26                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c27                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c28                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c29                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c30                            NUMBER(14,0) DEFAULT 0,        --（未使用）
    c31                            NUMBER(6,0) DEFAULT 0,         --R认证状态（0,1）
    c32                            DATE,                          --R认证日期
    c33                            VARCHAR2(30),                  --R真实姓名
    c34                            VARCHAR2(20),                  --R身份证号
    c35                            VARCHAR2(200),                 --R身份证图片1
    c36                            VARCHAR2(200),                 --R身份证图片2
    c37                            VARCHAR2(200),                 --R名片图片1
    c38                            VARCHAR2(200),                 --R名片图片2
    c39                            NUMBER(6,0),                   --（未使用）
    c40                            NUMBER(6,0)                   --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_ACEWork;
CREATE SEQUENCE pcace.seqB_ACEWork MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_ACEWork;
DROP TABLE pcace.ZB_ACEWork;
prompt
prompt Creating table pcace.B_ACEWork ACE工作单
prompt =============================
prompt
CREATE TABLE pcace.B_ACEWork(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             NUMBER(6,0),                   --工作单分类
    c2                             VARCHAR2(50),                  --标题
    c3                             NUMBER(6,0),                   --状态
    c4                             NUMBER(6,0),                   --执行状态
    c5                             VARCHAR2(100),                 --详情
    c6                             VARCHAR2(200),                 --链接
    c7                             VARCHAR2(32),                  --指派执行人AUID
    c8                             VARCHAR2(30),                  --指派执行人姓名
    c9                             DATE,                          --指派状态
    c10                            VARCHAR2(100),                 --指派时间
    c11                            VARCHAR2(32),                  --操作人AUID
    c12                            VARCHAR2(30),                  --操作人姓名
    c13                            DATE,                          --操作时间
    c14                            VARCHAR2(200),                 --操作备注
    c15                            VARCHAR2(30),                  --（未使用）
    CONSTRAINT B_ACEWork_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_ACEWork ACE工作单
prompt =============================
prompt
CREATE TABLE pcace.ZB_ACEWork(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             NUMBER(6,0),                   --工作单分类
    c2                             VARCHAR2(50),                  --标题
    c3                             NUMBER(6,0),                   --状态
    c4                             NUMBER(6,0),                   --执行状态
    c5                             VARCHAR2(100),                 --详情
    c6                             VARCHAR2(200),                 --链接
    c7                             VARCHAR2(32),                  --指派执行人AUID
    c8                             VARCHAR2(30),                  --指派执行人姓名
    c9                             DATE,                          --指派状态
    c10                            VARCHAR2(100),                 --指派时间
    c11                            VARCHAR2(32),                  --操作人AUID
    c12                            VARCHAR2(30),                  --操作人姓名
    c13                            DATE,                          --操作时间
    c14                            VARCHAR2(200),                 --操作备注
    c15                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_InviteCode;
CREATE SEQUENCE pcace.seqB_InviteCode MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_InviteCode;
DROP TABLE pcace.ZB_InviteCode;
prompt
prompt Creating table pcace.B_InviteCode 邀请码
prompt =============================
prompt
CREATE TABLE pcace.B_InviteCode(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --邀请码
    c2                             VARCHAR2(32),                  --AMID
    c3                             VARCHAR2(32),                  --AUID
    c4                             NUMBER(6,0),                   --使用次数
    c5                             NUMBER(6,0),                   --状态
    c6                             DATE,                          --截止有效期
    c7                             VARCHAR2(30),                  --使用IP
    c8                             DATE,                          --使用日期
    CONSTRAINT B_InviteCode_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_InviteCode 邀请码
prompt =============================
prompt
CREATE TABLE pcace.ZB_InviteCode(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --邀请码
    c2                             VARCHAR2(32),                  --AMID
    c3                             VARCHAR2(32),                  --AUID
    c4                             NUMBER(6,0),                   --使用次数
    c5                             NUMBER(6,0),                   --状态
    c6                             DATE,                          --截止有效期
    c7                             VARCHAR2(30),                  --使用IP
    c8                             DATE                          --使用日期
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Stat;
CREATE SEQUENCE pcace.seqB_Stat MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Stat;
DROP TABLE pcace.ZB_Stat;
prompt
prompt Creating table pcace.B_Stat ACE统计
prompt =============================
prompt
CREATE TABLE pcace.B_Stat(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             NUMBER(6,0),                   --统计分类
    c2                             NUMBER(6,0),                   --状态
    c3                             NUMBER(11,0),                  --临时候选人
    c4                             NUMBER(11,0),                  --入库中
    c5                             NUMBER(11,0),                  --入库候选人
    c6                             NUMBER(11,0),                  --active
    c7                             NUMBER(11,0),                  --inactive
    c8                             NUMBER(11,0),                  --blocked
    c9                             NUMBER(11,0),                  --被关注
    c10                            NUMBER(11,0),                  --邀请面试
    c11                            NUMBER(11,0),                  --面试
    c12                            NUMBER(11,0),                  --offer
    c13                            NUMBER(11,0),                  --入职
    c14                            NUMBER(11,0),                  --离职
    c15                            NUMBER(16,2),                  --开票金额
    c16                            NUMBER(16,2),                  --收款金额
    c17                            NUMBER(11,0),                  --（未使用）
    c18                            NUMBER(11,0),                  --（未使用）
    c19                            NUMBER(11,0),                  --（未使用）
    c20                            NUMBER(11,0),                  --（未使用）
    c21                            NUMBER(11,0),                  --（未使用）
    c22                            NUMBER(11,0),                  --（未使用）
    c23                            NUMBER(11,0),                  --（未使用）
    c24                            NUMBER(11,0),                  --（未使用）
    c25                            NUMBER(11,0),                  --（未使用）
    CONSTRAINT B_Stat_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Stat ACE统计
prompt =============================
prompt
CREATE TABLE pcace.ZB_Stat(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             NUMBER(6,0),                   --统计分类
    c2                             NUMBER(6,0),                   --状态
    c3                             NUMBER(11,0),                  --临时候选人
    c4                             NUMBER(11,0),                  --入库中
    c5                             NUMBER(11,0),                  --入库候选人
    c6                             NUMBER(11,0),                  --active
    c7                             NUMBER(11,0),                  --inactive
    c8                             NUMBER(11,0),                  --blocked
    c9                             NUMBER(11,0),                  --被关注
    c10                            NUMBER(11,0),                  --邀请面试
    c11                            NUMBER(11,0),                  --面试
    c12                            NUMBER(11,0),                  --offer
    c13                            NUMBER(11,0),                  --入职
    c14                            NUMBER(11,0),                  --离职
    c15                            NUMBER(16,2),                  --开票金额
    c16                            NUMBER(16,2),                  --收款金额
    c17                            NUMBER(11,0),                  --（未使用）
    c18                            NUMBER(11,0),                  --（未使用）
    c19                            NUMBER(11,0),                  --（未使用）
    c20                            NUMBER(11,0),                  --（未使用）
    c21                            NUMBER(11,0),                  --（未使用）
    c22                            NUMBER(11,0),                  --（未使用）
    c23                            NUMBER(11,0),                  --（未使用）
    c24                            NUMBER(11,0),                  --（未使用）
    c25                            NUMBER(11,0)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate;
DROP TABLE pcace.ZBO_Candidate;
prompt
prompt Creating table pcace.BO_Candidate 候选人[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --入库状态
    c4                             DATE,                          --入库时间
    c5                             CHAR(1) DEFAULT '0',           --上线标识（0,1-9）
    c6                             DATE,                          --上下线变更时间
    c7                             VARCHAR2(20),                  --简历编号
    c8                             VARCHAR2(30),                  --基本信息-中文姓名
    c9                             VARCHAR2(30),                  --基本信息-英文名
    c10                            VARCHAR2(30),                  --基本信息-出生日期
    c11                            NUMBER(3,0),                   --基本信息-年龄
    c12                            NUMBER(6,0),                   --基本信息-星座
    c13                            NUMBER(6,0),                   --基本信息-性别
    c14                            VARCHAR2(30),                  --基本信息-居住城市（省/直辖市）
    c15                            VARCHAR2(30),                  --基本信息-居住城市（市）
    c16                            VARCHAR2(30),                  --基本信息-居住城市（区/县级市）
    c17                            VARCHAR2(30),                  --基本信息-户籍所在地（省/直辖市）
    c18                            VARCHAR2(30),                  --基本信息-户籍所在地（市）
    c19                            VARCHAR2(30),                  --基本信息-户籍所在地（区/县级市）
    c20                            VARCHAR2(4),                   --基本信息-手机号码（区号）
    c21                            VARCHAR2(30),                  --基本信息-手机号码
    c22                            VARCHAR2(30),                  --基本信息-个人邮箱
    c23                            VARCHAR2(30),                  --基本信息-国籍
    c24                            NUMBER(6,0),                   --基本信息-婚姻状况
    c25                            NUMBER(6,0),                   --基本信息-最高学历
    c26                            NUMBER(6,0),                   --基本信息-基本年薪（万）
    c27                            NUMBER(11,0) DEFAULT 0,        --统计-关注次数
    c28                            NUMBER(11,0) DEFAULT 0,        --统计-邀请面试次数
    c29                            NUMBER(11,0) DEFAULT 0,        --统计-Offer次数
    c30                            NUMBER(11,0) DEFAULT 0,        --统计-入职次数
    c31                            NUMBER(11,0) DEFAULT 0,        --统计-黑名单次数
    c32                            NUMBER(11,0),                  --（未使用）
    c33                            NUMBER(11,0),                  --（未使用）
    c34                            NUMBER(11,0),                  --（未使用）
    c35                            NUMBER(11,0),                  --（未使用）
    c36                            VARCHAR2(30),                  --（未使用）
    c37                            VARCHAR2(30),                  --（未使用）
    c38                            VARCHAR2(50),                  --最近所在行业
    c39                            NUMBER(6,0) DEFAULT 0,         --工作年限（年）
    c40                            NUMBER(6,0) DEFAULT 0,         --在职状态
    c41                            VARCHAR2(100),                 --最近所在公司
    c42                            VARCHAR2(100),                 --最近职位
    c43                            VARCHAR2(30),                  --最近月薪（元）
    c44                            VARCHAR2(30),                  --最近年薪（万）
    c45                            VARCHAR2(100),                 --最近薪资构成
    c46                            VARCHAR2(100),                 --工作期望-职位
    c47                            VARCHAR2(100),                 --工作期望-职级
    c48                            VARCHAR2(100),                 --工作期望-行业
    c49                            VARCHAR2(100),                 --工作期望-城市
    c50                            VARCHAR2(100),                 --工作期望-期望月薪（元）
    c51                            VARCHAR2(100),                 --工作期望-期望年薪（万）
    c52                            VARCHAR2(4000),                --技能标签-职业
    c53                            VARCHAR2(4000),                --技能标签-团队管理
    c54                            VARCHAR2(4000),                --技能标签-软件技能
    c55                            VARCHAR2(4000),                --技能标签-（未使用）
    c56                            VARCHAR2(4000),                --技能标签-（未使用）
    c57                            VARCHAR2(2000),                --教育背景
    c58                            VARCHAR2(2000),                --培训经历
    c59                            VARCHAR2(2000),                --获得证书
    c60                            VARCHAR2(4000),                --工作经验
    c61                            VARCHAR2(200),                 --头像
    c62                            VARCHAR2(200),                 --简历附件
    c63                            VARCHAR2(4000),                --意向公司IDs
    c64                            VARCHAR2(4000),                --屏蔽公司IDs
    c65                            VARCHAR2(10),                  --简历完善度
    c66                            NUMBER(6,0) DEFAULT 0,         --是否精品
    c67                            VARCHAR2(32),                  --服务猎头公司AMID
    c68                            NUMBER(11,0),                  --服务猎头公司MID
    c69                            NUMBER(6,0),                   --有效状态
    c70                            NUMBER(6,0),                   --自营标识
    c71                            NUMBER(6,0),                   --入库审核状态
    c72                            DATE,                          --顾问面试时间
    c73                            DATE,                          --顾问面评提交时间
    c74                            VARCHAR2(32),                  --指派BS业务员
    c75                            VARCHAR2(30),                  --指派BS业务员姓名
    c76                            DATE,                          --指派时间
    c77                            VARCHAR2(50),                  --操作人AUID
    c78                            VARCHAR2(20),                  --操作人姓名
    c79                            DATE,                          --操作时间
    c80                            VARCHAR2(200),                 --操作说明
    c81                            DATE,                          --入库申请时间
    c82                            NUMBER(6,0),                   --简历更新状态
    c83                            DATE,                          --简历最后更新时间
    c84                            DATE,                          --简历最后上线时间
    c85                            NUMBER(6,0),                   --顾问面评更新状态
    c86                            DATE,                          --顾问面评最后更新时间
    c87                            DATE,                          --顾问面评最后上线时间
    c88                            VARCHAR2(500),                 --简历审核结果
    c89                            VARCHAR2(500),                 --顾问面评审核结果
    c90                            VARCHAR2(500)                 --入库审核结果
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate 候选人[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --入库状态
    c4                             DATE,                          --入库时间
    c5                             CHAR(1) DEFAULT '0',           --上线标识（0,1-9）
    c6                             DATE,                          --上下线变更时间
    c7                             VARCHAR2(20),                  --简历编号
    c8                             VARCHAR2(30),                  --基本信息-中文姓名
    c9                             VARCHAR2(30),                  --基本信息-英文名
    c10                            VARCHAR2(30),                  --基本信息-出生日期
    c11                            NUMBER(3,0),                   --基本信息-年龄
    c12                            NUMBER(6,0),                   --基本信息-星座
    c13                            NUMBER(6,0),                   --基本信息-性别
    c14                            VARCHAR2(30),                  --基本信息-居住城市（省/直辖市）
    c15                            VARCHAR2(30),                  --基本信息-居住城市（市）
    c16                            VARCHAR2(30),                  --基本信息-居住城市（区/县级市）
    c17                            VARCHAR2(30),                  --基本信息-户籍所在地（省/直辖市）
    c18                            VARCHAR2(30),                  --基本信息-户籍所在地（市）
    c19                            VARCHAR2(30),                  --基本信息-户籍所在地（区/县级市）
    c20                            VARCHAR2(4),                   --基本信息-手机号码（区号）
    c21                            VARCHAR2(30),                  --基本信息-手机号码
    c22                            VARCHAR2(30),                  --基本信息-个人邮箱
    c23                            VARCHAR2(30),                  --基本信息-国籍
    c24                            NUMBER(6,0),                   --基本信息-婚姻状况
    c25                            NUMBER(6,0),                   --基本信息-最高学历
    c26                            NUMBER(6,0),                   --基本信息-基本年薪（万）
    c27                            NUMBER(11,0) DEFAULT 0,        --统计-关注次数
    c28                            NUMBER(11,0) DEFAULT 0,        --统计-邀请面试次数
    c29                            NUMBER(11,0) DEFAULT 0,        --统计-Offer次数
    c30                            NUMBER(11,0) DEFAULT 0,        --统计-入职次数
    c31                            NUMBER(11,0) DEFAULT 0,        --统计-黑名单次数
    c32                            NUMBER(11,0),                  --（未使用）
    c33                            NUMBER(11,0),                  --（未使用）
    c34                            NUMBER(11,0),                  --（未使用）
    c35                            NUMBER(11,0),                  --（未使用）
    c36                            VARCHAR2(30),                  --（未使用）
    c37                            VARCHAR2(30),                  --（未使用）
    c38                            VARCHAR2(50),                  --最近所在行业
    c39                            NUMBER(6,0) DEFAULT 0,         --工作年限（年）
    c40                            NUMBER(6,0) DEFAULT 0,         --在职状态
    c41                            VARCHAR2(100),                 --最近所在公司
    c42                            VARCHAR2(100),                 --最近职位
    c43                            VARCHAR2(30),                  --最近月薪（元）
    c44                            VARCHAR2(30),                  --最近年薪（万）
    c45                            VARCHAR2(100),                 --最近薪资构成
    c46                            VARCHAR2(100),                 --工作期望-职位
    c47                            VARCHAR2(100),                 --工作期望-职级
    c48                            VARCHAR2(100),                 --工作期望-行业
    c49                            VARCHAR2(100),                 --工作期望-城市
    c50                            VARCHAR2(100),                 --工作期望-期望月薪（元）
    c51                            VARCHAR2(100),                 --工作期望-期望年薪（万）
    c52                            VARCHAR2(4000),                --技能标签-职业
    c53                            VARCHAR2(4000),                --技能标签-团队管理
    c54                            VARCHAR2(4000),                --技能标签-软件技能
    c55                            VARCHAR2(4000),                --技能标签-（未使用）
    c56                            VARCHAR2(4000),                --技能标签-（未使用）
    c57                            VARCHAR2(2000),                --教育背景
    c58                            VARCHAR2(2000),                --培训经历
    c59                            VARCHAR2(2000),                --获得证书
    c60                            VARCHAR2(4000),                --工作经验
    c61                            VARCHAR2(200),                 --头像
    c62                            VARCHAR2(200),                 --简历附件
    c63                            VARCHAR2(4000),                --意向公司IDs
    c64                            VARCHAR2(4000),                --屏蔽公司IDs
    c65                            VARCHAR2(10),                  --简历完善度
    c66                            NUMBER(6,0) DEFAULT 0,         --是否精品
    c67                            VARCHAR2(32),                  --服务猎头公司AMID
    c68                            NUMBER(11,0),                  --服务猎头公司MID
    c69                            NUMBER(6,0),                   --有效状态
    c70                            NUMBER(6,0),                   --自营标识
    c71                            NUMBER(6,0),                   --入库审核状态
    c72                            DATE,                          --顾问面试时间
    c73                            DATE,                          --顾问面评提交时间
    c74                            VARCHAR2(32),                  --指派BS业务员
    c75                            VARCHAR2(30),                  --指派BS业务员姓名
    c76                            DATE,                          --指派时间
    c77                            VARCHAR2(50),                  --操作人AUID
    c78                            VARCHAR2(20),                  --操作人姓名
    c79                            DATE,                          --操作时间
    c80                            VARCHAR2(200),                 --操作说明
    c81                            DATE,                          --入库申请时间
    c82                            NUMBER(6,0),                   --简历更新状态
    c83                            DATE,                          --简历最后更新时间
    c84                            DATE,                          --简历最后上线时间
    c85                            NUMBER(6,0),                   --顾问面评更新状态
    c86                            DATE,                          --顾问面评最后更新时间
    c87                            DATE,                          --顾问面评最后上线时间
    c88                            VARCHAR2(500),                 --简历审核结果
    c89                            VARCHAR2(500),                 --顾问面评审核结果
    c90                            VARCHAR2(500)                 --入库审核结果
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVEducation;
DROP TABLE pcace.ZBO_Candidate_CVEducation;
prompt
prompt Creating table pcace.BO_Candidate_CVEducation 候选人-教育背景[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVEducation(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --学校
    c6                             VARCHAR2(50),                  --专业
    c7                             NUMBER(6,0),                   --学历
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(30),                  --（未使用）
    c10                            VARCHAR2(50),                  --操作顾问AUID
    c11                            VARCHAR2(30),                  --操作顾问姓名
    c12                            DATE                          --操作时间
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVEducation 候选人-教育背景[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVEducation(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --学校
    c6                             VARCHAR2(50),                  --专业
    c7                             NUMBER(6,0),                   --学历
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(30),                  --（未使用）
    c10                            VARCHAR2(50),                  --操作顾问AUID
    c11                            VARCHAR2(30),                  --操作顾问姓名
    c12                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVTrain;
DROP TABLE pcace.ZBO_Candidate_CVTrain;
prompt
prompt Creating table pcace.BO_Candidate_CVTrain 候选人-培训经历[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVTrain(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --培训机构
    c6                             VARCHAR2(200),                 --培训内容
    c7                             VARCHAR2(30),                  --（未使用）
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(50),                  --操作顾问AUID
    c10                            VARCHAR2(30),                  --操作顾问姓名
    c11                            DATE                          --操作时间
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVTrain 候选人-培训经历[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVTrain(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --AUID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(50),                  --培训机构
    c6                             VARCHAR2(200),                 --培训内容
    c7                             VARCHAR2(30),                  --（未使用）
    c8                             VARCHAR2(30),                  --（未使用）
    c9                             VARCHAR2(50),                  --操作顾问AUID
    c10                            VARCHAR2(30),                  --操作顾问姓名
    c11                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVCertificate;
DROP TABLE pcace.ZBO_Candidate_CVCertificate;
prompt
prompt Creating table pcace.BO_Candidate_CVCertificate 候选人-获得证书[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVCertificate(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --时间
    c4                             VARCHAR2(50),                  --证书
    c5                             VARCHAR2(30),                  --有效期
    c6                             VARCHAR2(200),                 --附件1
    c7                             VARCHAR2(200),                 --附件2
    c8                             VARCHAR2(50),                  --操作顾问AUID
    c9                             VARCHAR2(30),                  --操作顾问姓名
    c10                            DATE                          --操作时间
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVCertificate 候选人-获得证书[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVCertificate(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --时间
    c4                             VARCHAR2(50),                  --证书
    c5                             VARCHAR2(30),                  --有效期
    c6                             VARCHAR2(200),                 --附件1
    c7                             VARCHAR2(200),                 --附件2
    c8                             VARCHAR2(50),                  --操作顾问AUID
    c9                             VARCHAR2(30),                  --操作顾问姓名
    c10                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVWork;
DROP TABLE pcace.ZBO_Candidate_CVWork;
prompt
prompt Creating table pcace.BO_Candidate_CVWork 候选人-工作经验[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVWork(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(200),                 --公司描述
    c7                             VARCHAR2(30),                  --行业
    c8                             VARCHAR2(100),                 --部门
    c9                             VARCHAR2(100),                 --职位
    c10                            VARCHAR2(100),                 --职级
    c11                            NUMBER(6,0),                   --评：月薪（K）
    c12                            NUMBER(6,0),                   --评：年薪（万）
    c13                            VARCHAR2(200),                 --评：薪资构成
    c14                            VARCHAR2(100),                 --评：汇报对象
    c15                            VARCHAR2(30),                  --评：下属人数
    c16                            VARCHAR2(1000),                --工作职责
    c17                            VARCHAR2(200),                 --评：工作权重
    c18                            VARCHAR2(1000),                --评：公司介绍
    c19                            NUMBER(6,0) DEFAULT 0,         --是否多段工作经历
    c20                            NUMBER(6,0),                   --（未使用）
    c21                            VARCHAR2(50),                  --操作顾问AUID
    c22                            VARCHAR2(30),                  --操作顾问姓名
    c23                            DATE,                          --操作时间
    c24                            NUMBER(6,0) DEFAULT 0,         --评：离职期（天）
    c25                            VARCHAR2(200),                 --评：离职原因
    c26                            CHAR(1) DEFAULT '0',           --评：竞业禁止限制（1,0）
    c27                            NUMBER(6,0) DEFAULT 0,         --评：限制时长（年）
    c28                            VARCHAR2(30),                  --（未使用）
    c29                            VARCHAR2(1000),                --评：工作业绩
    c30                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVWork 候选人-工作经验[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVWork(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(200),                 --公司描述
    c7                             VARCHAR2(30),                  --行业
    c8                             VARCHAR2(100),                 --部门
    c9                             VARCHAR2(100),                 --职位
    c10                            VARCHAR2(100),                 --职级
    c11                            NUMBER(6,0),                   --评：月薪（K）
    c12                            NUMBER(6,0),                   --评：年薪（万）
    c13                            VARCHAR2(200),                 --评：薪资构成
    c14                            VARCHAR2(100),                 --评：汇报对象
    c15                            VARCHAR2(30),                  --评：下属人数
    c16                            VARCHAR2(1000),                --工作职责
    c17                            VARCHAR2(200),                 --评：工作权重
    c18                            VARCHAR2(1000),                --评：公司介绍
    c19                            NUMBER(6,0) DEFAULT 0,         --是否多段工作经历
    c20                            NUMBER(6,0),                   --（未使用）
    c21                            VARCHAR2(50),                  --操作顾问AUID
    c22                            VARCHAR2(30),                  --操作顾问姓名
    c23                            DATE,                          --操作时间
    c24                            NUMBER(6,0) DEFAULT 0,         --评：离职期（天）
    c25                            VARCHAR2(200),                 --评：离职原因
    c26                            CHAR(1) DEFAULT '0',           --评：竞业禁止限制（1,0）
    c27                            NUMBER(6,0) DEFAULT 0,         --评：限制时长（年）
    c28                            VARCHAR2(30),                  --（未使用）
    c29                            VARCHAR2(1000),                --评：工作业绩
    c30                            VARCHAR2(30)                  --（未使用）
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_CVProject;
DROP TABLE pcace.ZBO_Candidate_CVProject;
prompt
prompt Creating table pcace.BO_Candidate_CVProject 候选人-项目经验[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_CVProject(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(50),                  --职位
    c7                             VARCHAR2(1000),                --项目简介
    c8                             VARCHAR2(500),                 --项目职责
    c9                             VARCHAR2(500),                 --项目成就
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(50),                  --操作顾问AUID
    c13                            VARCHAR2(30),                  --操作顾问姓名
    c14                            DATE                          --操作时间
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_CVProject 候选人-项目经验[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_CVProject(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人CID
    c2                             NUMBER(6,0),                   --状态
    c3                             VARCHAR2(30),                  --开始时间
    c4                             VARCHAR2(30),                  --结束时间
    c5                             VARCHAR2(100),                 --公司名称
    c6                             VARCHAR2(50),                  --职位
    c7                             VARCHAR2(1000),                --项目简介
    c8                             VARCHAR2(500),                 --项目职责
    c9                             VARCHAR2(500),                 --项目成就
    c10                            VARCHAR2(30),                  --（未使用）
    c11                            VARCHAR2(30),                  --（未使用）
    c12                            VARCHAR2(50),                  --操作顾问AUID
    c13                            VARCHAR2(30),                  --操作顾问姓名
    c14                            DATE                          --操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP TABLE pcace.BO_Candidate_HCComment;
DROP TABLE pcace.ZBO_Candidate_HCComment;
prompt
prompt Creating table pcace.BO_Candidate_HCComment 顾问面评[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.BO_Candidate_HCComment(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             DATE,                          --面评提交时间
    c5                             NUMBER(6,0),                   --面评状态
    c6                             DATE,                          --面评审核时间
    c7                             VARCHAR2(2000),                --整体印象
    c8                             VARCHAR2(4000),                --工作总结
    c9                             VARCHAR2(2000),                --备注总结
    c10                            NUMBER(6,0),                   --（未使用）
    c11                            NUMBER(6,0),                   --（未使用）
    c12                            VARCHAR2(500),                 --（未使用）
    c13                            VARCHAR2(500),                 --评：性格
    c14                            VARCHAR2(500),                 --评：沟通能力
    c15                            VARCHAR2(500),                 --评：语言水平
    c16                            VARCHAR2(500),                 --评：缺点、疑虑
    c17                            VARCHAR2(30),                  --（未使用）
    c18                            VARCHAR2(30),                  --（未使用）
    c19                            VARCHAR2(30),                  --（未使用）
    c20                            VARCHAR2(30),                  --评：行业经验（年）
    c21                            VARCHAR2(30),                  --评：管理经验（年）
    c22                            VARCHAR2(2000),                --评：管辖区域范围
    c23                            NUMBER(6,0),                   --（未使用）
    c24                            NUMBER(6,0),                   --（未使用）
    c25                            NUMBER(6,0),                   --（未使用）
    c26                            NUMBER(6,0),                   --（未使用）
    c27                            NUMBER(6,0),                   --（未使用）
    c28                            VARCHAR2(32),                  --BS操作员AUID
    c29                            VARCHAR2(30),                  --BS操作员姓名
    c30                            DATE                          --BS操作时间
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZBO_Candidate_HCComment 顾问面评[ONLINE]
prompt =============================
prompt
CREATE TABLE pcace.ZBO_Candidate_HCComment(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    parentDataid                   NUMBER(9,0) NOT NULL ,         --父表数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人AUID
    c2                             VARCHAR2(32),                  --顾问AUID
    c3                             NUMBER(6,0),                   --状态
    c4                             DATE,                          --面评提交时间
    c5                             NUMBER(6,0),                   --面评状态
    c6                             DATE,                          --面评审核时间
    c7                             VARCHAR2(2000),                --整体印象
    c8                             VARCHAR2(4000),                --工作总结
    c9                             VARCHAR2(2000),                --备注总结
    c10                            NUMBER(6,0),                   --（未使用）
    c11                            NUMBER(6,0),                   --（未使用）
    c12                            VARCHAR2(500),                 --（未使用）
    c13                            VARCHAR2(500),                 --评：性格
    c14                            VARCHAR2(500),                 --评：沟通能力
    c15                            VARCHAR2(500),                 --评：语言水平
    c16                            VARCHAR2(500),                 --评：缺点、疑虑
    c17                            VARCHAR2(30),                  --（未使用）
    c18                            VARCHAR2(30),                  --（未使用）
    c19                            VARCHAR2(30),                  --（未使用）
    c20                            VARCHAR2(30),                  --评：行业经验（年）
    c21                            VARCHAR2(30),                  --评：管理经验（年）
    c22                            VARCHAR2(2000),                --评：管辖区域范围
    c23                            NUMBER(6,0),                   --（未使用）
    c24                            NUMBER(6,0),                   --（未使用）
    c25                            NUMBER(6,0),                   --（未使用）
    c26                            NUMBER(6,0),                   --（未使用）
    c27                            NUMBER(6,0),                   --（未使用）
    c28                            VARCHAR2(32),                  --BS操作员AUID
    c29                            VARCHAR2(30),                  --BS操作员姓名
    c30                            DATE                          --BS操作时间
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_Vote_JobTop;
CREATE SEQUENCE pcace.seqB_Vote_JobTop MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_Vote_JobTop;
DROP TABLE pcace.ZB_Vote_JobTop;
prompt
prompt Creating table pcace.B_Vote_JobTop 职位投票结果
prompt =============================
prompt
CREATE TABLE pcace.B_Vote_JobTop(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --HR_AUID
    c2                             VARCHAR2(32),                  --HR公司AMID
    c3                             DATE,                          --投票周期
    c4                             VARCHAR2(500),                 --供选择的职位列表
    c5                             VARCHAR2(500),                 --感兴趣的职位
    CONSTRAINT B_Vote_JobTop_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcace pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_Vote_JobTop 职位投票结果
prompt =============================
prompt
CREATE TABLE pcace.ZB_Vote_JobTop(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --HR_AUID
    c2                             VARCHAR2(32),                  --HR公司AMID
    c3                             DATE,                          --投票周期
    c4                             VARCHAR2(500),                 --供选择的职位列表
    c5                             VARCHAR2(500)                 --感兴趣的职位
) tablespace TableSpace_pcaceHIS pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_T_Candidate_ViewLog;
CREATE SEQUENCE pcace.seqB_T_Candidate_ViewLog MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_T_Candidate_ViewLog;
DROP TABLE pcace.ZB_T_Candidate_ViewLog;
prompt
prompt Creating table pcace.B_T_Candidate_ViewLog 候选人被浏览记录
prompt =============================
prompt
CREATE TABLE pcace.B_T_Candidate_ViewLog(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --cid
    c2                             VARCHAR2(32)                  --hrAuid
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_T_Candidate_ViewLog 候选人被浏览记录
prompt =============================
prompt
CREATE TABLE pcace.ZB_T_Candidate_ViewLog(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --cid
    c2                             VARCHAR2(32)                  --hrAuid
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


DROP SEQUENCE pcace.seqB_T_Candidate_InviteLog;
CREATE SEQUENCE pcace.seqB_T_Candidate_InviteLog MINVALUE 1 MAXVALUE 99999999999999 START WITH 1 INCREMENT BY 1 CACHE 10;
DROP TABLE pcace.B_T_Candidate_InviteLog;
DROP TABLE pcace.ZB_T_Candidate_InviteLog;
prompt
prompt Creating table pcace.B_T_Candidate_InviteLog 候选人被邀请记录
prompt =============================
prompt
CREATE TABLE pcace.B_T_Candidate_InviteLog(
    dataid                         NUMBER(11,0) NOT NULL,         --数据ID
    dataSctLevel                   NUMBER(6,0) DEFAULT -1,        --数据秘密等级
    dataStatus                     NUMBER(6,0) DEFAULT -1,        --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人cid
    c2                             VARCHAR2(30),                  --候选人名称
    c3                             VARCHAR2(32),                  --hcAuid
    c4                             VARCHAR2(30),                  --顾问名称
    c5                             VARCHAR2(32),                  --hrAuid
    c6                             VARCHAR2(30),                  --HR名称
    c7                             VARCHAR2(32),                  --hrAmid
    c8                             VARCHAR2(100),                 --HR公司名称
    c9                             NUMBER(11,0),                  --jobid
    c10                            VARCHAR2(100),                 --职位名称
    c11                            VARCHAR2(500),                 --处理备注
    c12                            NUMBER(6,0) DEFAULT 0,         --处理状态
    c13                            VARCHAR2(32),                  --处理人
    c14                            VARCHAR2(30),                  --处理人姓名
    c15                            DATE,                          --处理时间
    CONSTRAINT B_T_Candidate_InviteLog_PK PRIMARY KEY (dataid)
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );


prompt
prompt Creating table pcace.ZB_T_Candidate_InviteLog 候选人被邀请记录
prompt =============================
prompt
CREATE TABLE pcace.ZB_T_Candidate_InviteLog(
    iid                            NUMBER(14,0) NOT NULL ,
    imemo                          VARCHAR2(500),
    dataid                         NUMBER(11,0),                  --数据ID
    dataSctLevel                   NUMBER(6,0),                   --数据秘密等级
    dataStatus                     NUMBER(6,0),                   --数据状态
    keyword                        VARCHAR2(200),                 --搜索关键字
    istdate                        DATE DEFAULT sysdate,          --插入日期
    uptdate                        DATE DEFAULT sysdate,          --更新日期
    c1                             VARCHAR2(32),                  --候选人cid
    c2                             VARCHAR2(30),                  --候选人名称
    c3                             VARCHAR2(32),                  --hcAuid
    c4                             VARCHAR2(30),                  --顾问名称
    c5                             VARCHAR2(32),                  --hrAuid
    c6                             VARCHAR2(30),                  --HR名称
    c7                             VARCHAR2(32),                  --hrAmid
    c8                             VARCHAR2(100),                 --HR公司名称
    c9                             NUMBER(11,0),                  --jobid
    c10                            VARCHAR2(100),                 --职位名称
    c11                            VARCHAR2(500),                 --处理备注
    c12                            NUMBER(6,0) DEFAULT 0,         --处理状态
    c13                            VARCHAR2(32),                  --处理人
    c14                            VARCHAR2(30),                  --处理人姓名
    c15                            DATE                          --处理时间
) tablespace TableSpace_pcaceLOG pctfree 10 initrans 1 maxtrans 255 storage ( initial 16K minextents 1 maxextents unlimited );
