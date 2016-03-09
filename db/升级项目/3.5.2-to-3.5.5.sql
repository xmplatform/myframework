--20130910
---修改模板组件表结构,增加了字段PC_DS_LOC
alter table SY_ORG_USER_STYLE add SS_STYLE_PORTAL VARCHAR2(2000);
comment on column SY_ORG_USER_STYLE.SS_STYLE_PORTAL is '用户门户样式';
commit;

--20130911
create table SY_SERV_STYLE_PORTAL  (
   PT_ID                VARCHAR2(40)                    not null,
   ST_CONTENT           VARCHAR2(2000),
   ST_L1                VARCHAR2(40),
   ST_L2                VARCHAR2(40),
   constraint PK_SY_SERV_STYLE_PORTAL primary key (PT_ID)
);

comment on table SY_SERV_STYLE_PORTAL is
'门户样式';

comment on column SY_SERV_STYLE_PORTAL.PT_ID is
'门户ID';

comment on column SY_SERV_STYLE_PORTAL.ST_CONTENT is
'门户样式';

comment on column SY_SERV_STYLE_PORTAL.ST_L1 is
'预留';

comment on column SY_SERV_STYLE_PORTAL.ST_L2 is
'预留';

--20130916
---删除表SY_SERV_STYLE_PORTAL
drop table SY_SERV_STYLE_PORTAL;
---修改模板组件表结构,增加了字段PT_STYLE
alter table SY_COMM_TEMPL add PT_STYLE VARCHAR2(200);
comment on column SY_COMM_TEMPL.PT_STYLE is '模板样式';
commit;

--20130918
-- 扩展移动支持
alter table SY_SERV modify serv_js VARCHAR2(1000);
alter table SY_SERV modify serv_mobile_list VARCHAR2(2000);
alter table SY_SERV modify serv_card_tmpl_codes VARCHAR2(1000);
alter table SY_SERV add serv_mobile_js VARCHAR2(1000);
comment on column SY_SERV.serv_js
  is '卡片扩展HTML';
comment on column SY_SERV.serv_mobile_js
  is '卡片移动HTML,HTML语法，支持扩展CSS和JS';
  
alter table SY_SERV_ACT add act_mobile_flag VARCHAR2(40);
comment on column SY_SERV_ACT.act_mobile_flag
  is '移动标志，1：是（缺省）；2：否';
  
-- Add/modify columns 
alter table SY_ORG_USER add JIANGANG_FLAG NUMBER(2) default 2;
-- Add comments to the columns 
comment on column SY_ORG_USER.JIANGANG_FLAG
  is '兼岗标记：1兼岗用户；2非兼岗用户';

-- add JIANGANG_FLAG filed
CREATE OR REPLACE VIEW SY_BASE_USER_V AS
SELECT u.USER_CODE,u.USER_LOGIN_NAME,u.USER_NAME,u.DEPT_CODE,u.USER_PASSWORD,u.USER_SORT,u.USER_HOME_PHONE,u.USER_MOBILE,u.USER_QQ,u.USER_EMAIL,u.USER_WORK_LOC,u.USER_POST,u.USER_POST_LEVEL,u.USER_ROOM,u.USER_WORK_NUM,u.USER_IDCARD,u.USER_BIRTHDAY,u.USER_OFFICE_PHONE,u.USER_NATION,u.USER_HEIGHT,u.USER_SEX,u.USER_HOME_LAND,u.USER_POLITICS,u.USER_MARRIAGE,u.USER_EDU_LEVLE,u.USER_EDU_SCHOOL,u.USER_EDU_MAJOR,u.USER_TITLE,u.USER_TITLE_DATE,u.USER_WORK_DATE,u.USER_CMPY_DATE,u.USER_STATE,u.CMPY_CODE,u.S_FLAG,u.S_USER,u.USER_LOGIN_TYPE,u.USER_EXPIRE_DATE,u.USER_PASSWORD_DATE,u.S_MTIME,u.USER_IMG_SRC,u.PT_ID,u.USER_FROM,u.JIANGANG_FLAG,
    d.DEPT_NAME,
    d.DEPT_LEVEL,
    d.DEPT_SORT,
    d.TDEPT_CODE,
    d.ODEPT_CODE,
    d.CODE_PATH,
    d.S_FLAG DEPT_FLAG,
    d.PT_ID DEPT_PT_ID
FROM SY_ORG_USER u left join SY_ORG_DEPT d
on u.dept_code = d.dept_code;

--20131009
-- 用户增加拼音支持
alter table SY_ORG_USER add USER_SHORT_NAME VARCHAR2(20);
alter table SY_ORG_USER add USER_EN_NAME VARCHAR2(60);
-- Add comments to the columns 
comment on column SY_ORG_USER.USER_SHORT_NAME
  is '用户简称：名称拼音首字母简写';
comment on column SY_ORG_USER.USER_EN_NAME
  is '用户拼音：用户英文名或者拼音';
  
CREATE OR REPLACE VIEW SY_BASE_USER_V AS
SELECT u.USER_CODE,u.USER_LOGIN_NAME,u.USER_NAME,u.DEPT_CODE,u.USER_PASSWORD,u.USER_SORT,u.USER_HOME_PHONE,u.USER_MOBILE,u.USER_QQ,u.USER_EMAIL,u.USER_WORK_LOC,u.USER_POST,u.USER_POST_LEVEL,u.USER_ROOM,u.USER_WORK_NUM,u.USER_IDCARD,u.USER_BIRTHDAY,u.USER_OFFICE_PHONE,u.USER_NATION,u.USER_HEIGHT,u.USER_SEX,u.USER_HOME_LAND,u.USER_POLITICS,u.USER_MARRIAGE,u.USER_EDU_LEVLE,u.USER_EDU_SCHOOL,u.USER_EDU_MAJOR,u.USER_TITLE,u.USER_TITLE_DATE,u.USER_WORK_DATE,u.USER_CMPY_DATE,u.USER_STATE,u.CMPY_CODE,u.S_FLAG,u.S_USER,u.USER_LOGIN_TYPE,u.USER_EXPIRE_DATE,u.USER_PASSWORD_DATE,u.S_MTIME,u.USER_IMG_SRC,u.PT_ID,u.USER_FROM,u.JIANGANG_FLAG,u.USER_SHORT_NAME,u.USER_EN_NAME,
          d.DEPT_NAME,
          d.DEPT_LEVEL,
          d.DEPT_SORT,
          d.TDEPT_CODE,
          d.ODEPT_CODE,
          d.CODE_PATH,
          d.S_FLAG DEPT_FLAG,
          d.PT_ID DEPT_PT_ID
     FROM SY_ORG_USER u left join SY_ORG_DEPT d
    on u.dept_code = d.dept_code;

--20131028(无用)
--20131029
-- 任务时间格式改为字符串
alter table SY_COMM_SCHED_TRIGGER modify (START_TIME null);
update SY_COMM_SCHED_TRIGGER set NEXT_FIRE_TIME=null,PREV_FIRE_TIME=null,START_TIME=null,END_TIME=null;
alter table SY_COMM_SCHED_TRIGGER modify (NEXT_FIRE_TIME varchar2(25), PREV_FIRE_TIME varchar2(25), START_TIME varchar2(25), END_TIME varchar2(25));

--20131108
-- 消息监听增加监听类型设定
alter table SY_COMM_MSG_LISTENER add (LIS_ACTION varchar2(4000));
comment on column SY_COMM_MSG_LISTENER.LIS_ACTION is '监听消息类型';

delete from SY_COMM_MSG_LISTENER where LIS_CLASS='com.rh.core.wfe.attention.AttentionListener';
commit;

alter table SY_ORG_GROUP add (DATA_ID varchar2(40));
alter table SY_ORG_GROUP add (GROUP_IMG varchar2(80));
comment on column SY_ORG_GROUP.DATA_ID is '数据主键：组织类型对应部门编码，自定义和临时类型对应创建用户编码';
comment on column SY_ORG_GROUP.GROUP_IMG is '群组头像';

CREATE OR REPLACE VIEW SY_ORG_GROUP_USER_V AS
select
a.GU_ID,
a.GROUP_CODE,
a.USER_CODE,
a.GU_POST,
a.GU_ADMIN,
a.S_FLAG,
a.S_MTIME,
b.GROUP_NAME,
b.GROUP_TYPE,
b.GROUP_SORT,
b.S_FLAG GROUP_FLAG,
b.S_CMPY,
c.S_FLAG USER_FLAG,
d.ODEPT_CODE,
d.CODE_PATH
from SY_ORG_GROUP_USER a, SY_ORG_GROUP b, SY_ORG_USER c
left join SY_ORG_DEPT d on c.DEPT_CODE=d.DEPT_CODE
where a.GROUP_CODE=b.GROUP_CODE
and a.USER_CODE=c.USER_CODE;

--20131114
alter table SY_COMM_TODO_DRAFT modify (S_CMPY varchar2(40));
alter table SY_COMM_TODO_HIS modify (S_CMPY varchar2(40));

alter table SY_SERV_DICT add (DICT_CLASS varchar2(200));
comment on column SY_SERV_DICT.DICT_CLASS is '监听类，用于对字典数据进行特定处理';

--20131121
alter table SY_ORG_DEPT_DIRECTOR drop primary key;
alter table SY_ORG_DEPT_DIRECTOR  add primary key (DD_ID);
alter table SY_ORG_USER_RELATION drop primary key;
alter table SY_ORG_USER_RELATION  add primary key (UR_ID);

--20131211
alter table SY_ORG_USER_STATE add (USER_TOKEN varchar2(200));
comment on column SY_ORG_USER_STATE.USER_TOKEN is '用户令牌，用于客户端自动登录的验证';

--补上缺失的表SY_SERV_DACL
create table SY_SERV_DACL
(
  DEF_CODE  VARCHAR2(40) not null,
  DEF_NAME  VARCHAR2(40),
  SERV_ID   VARCHAR2(40),
  ITEM_CODE VARCHAR2(40),
  S_MTIME   VARCHAR2(23)
)
;
comment on table SY_SERV_DACL
  is '数据权限定义';
comment on column SY_SERV_DACL.DEF_CODE
  is '数据权限编码';
comment on column SY_SERV_DACL.DEF_NAME
  is '数据权限名称';
comment on column SY_SERV_DACL.SERV_ID
  is '服务编码';
comment on column SY_SERV_DACL.ITEM_CODE
  is '字段编码';
comment on column SY_SERV_DACL.S_MTIME
  is '更新时间';
alter table SY_SERV_DACL
  add constraint PK_SY_DATA_DEF primary key (DEF_CODE);