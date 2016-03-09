INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RPUB','*公共角色',1,null,'2','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RPUB1','*公共角色(一级)',2,null,'2','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RPUB2','*公共角色(二级)',3,null,'2','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RPUB3','*公共角色(三级)',4,null,'2','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RPUB4','*公共角色(四级)',5,null,'2','1',1,1,'3','2012-12-12 12:12:12:222',511);

INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RGSLD','*公司领导',6,'','1','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RBMLD','*部门领导',7,'','1','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RCSLD','*处室领导',8,'','1','1',1,1,'3','2012-12-12 12:12:12:222',511);
INSERT INTO SY_ORG_ROLE (ROLE_CODE,ROLE_NAME,ROLE_SORT,ROLE_MEMO,ROLE_CATALOG,CMPY_CODE,S_PUBLIC,S_FLAG,S_USER,S_MTIME,ROLE_SCOPE) VALUES ('RADMIN','*系统管理',9,'','1','1',1,1,'3','2012-12-12 12:12:12:222',511);

insert into SY_ORG_CMPY (CMPY_CODE, CMPY_NAME, CMPY_FULLNAME, CMPY_COUNTRY, CMPY_PROVINCE, CMPY_CITY, CMPY_ADDRESS, CMPY_POSTCODE, CMPY_PHONE, CMPY_FAX, CMPY_CONTACTOR, CMPY_PCODE, CMPY_SORT, CMPY_DESC, CMPY_LEVEL, S_FLAG, S_USER, CODE_PATH, S_MTIME, PT_ID)
values ('1', 'gbl_com', 'global company', null, null, null, null, null, null, null, null, null, 1, null, 1, 1, null, '1^', '2012-05-31 13:45:30:427', null);

insert into SY_ORG_DEPT (DEPT_CODE, DEPT_NAME, DEPT_PCODE, DEPT_SORT, DEPT_MEMO, DEPT_EMAIL, CMPY_CODE, S_FLAG, S_USER, CODE_PATH, DEPT_LEVEL, DEPT_TYPE, S_MTIME, DEPT_SHORT_NAME, ODEPT_CODE, TDEPT_CODE, DEPT_SRC_TYPE1, DEPT_SRC_TYPE2, DEPT_LINE, PT_ID, DEPT_FULL_NAME, DEPT_SRC_TYPE3, DEPT_SRC_TYPE4)
values ('2', 'gbl_dept', null, 1, null, null, '1', 1, null, '2^', 1, 2, '2012-09-19 20:02:17:571', 'gbl_dept', '2', '2', null, null, null, null, 'gbl_com', null, null);

insert into SY_ORG_USER (USER_CODE, USER_LOGIN_NAME, USER_NAME, DEPT_CODE, USER_PASSWORD, USER_SORT, USER_HOME_PHONE, USER_MOBILE, USER_QQ, USER_EMAIL, USER_WORK_LOC, USER_POST, USER_POST_LEVEL, USER_ROOM, USER_WORK_NUM, USER_IDCARD, USER_BIRTHDAY, USER_OFFICE_PHONE, USER_NATION, USER_HEIGHT, USER_SEX, USER_HOME_LAND, USER_POLITICS, USER_MARRIAGE, USER_EDU_LEVLE, USER_EDU_SCHOOL, USER_EDU_MAJOR, USER_TITLE, USER_TITLE_DATE, USER_WORK_DATE, USER_CMPY_DATE, USER_STATE, CMPY_CODE, S_FLAG, S_USER, USER_LOGIN_TYPE, USER_EXPIRE_DATE, USER_PASSWORD_DATE, S_MTIME, USER_IMG_SRC, PT_ID, USER_FROM)
values ('3', 'superadmin', '超级管理员', '2', 'e10adc3949ba59abbe56e057f20f883e', 500, null, null, null, null, null, null, 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', 1, null, 1, null, null, '2012-12-20 11:31:22:764', null, null, null);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('10010__1', '集中管控', 4, null, '100__1', 1, 1, '1', 2, 'system', 2, '100__1^10010__1^', '2013-07-19 16:41:33:943', '1', null, 2, null, null, 0, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('100__1', '集中管控管理', 4, null, null, 101, 1, '1', 2, null, 1, '100__1^', '2013-07-19 16:11:16:793', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001007__1', '公司管理', 1, 'SY_ORG_CMPY', '10010__1', 100, 1, '1', 2, 'info', 3, '100__1^10010__1^1001007__1^', '2013-07-19 16:45:36:523', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001010__1', '菜单管理（公共）', 1, 'SY_COMM_MENU_PUBLIC', '10010__1', 104, 1, '1', 2, null, 3, '100__1^10010__1^1001010__1^', '2013-07-19 16:46:52:644', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001003__1', '菜单管理', 1, 'SY_COMM_MENU', '10010__1', 20, 1, '1', 2, null, 3, '100__1^10010__1^1001003__1^', '2013-07-19 16:44:37:399', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('10010101__1', '服务定义', 1, 'SY_SERV', '10010__1', 10, 1, '1', 2, 'xitong', 3, '100__1^10010__1^10010101__1^', '2013-07-19 16:43:57:240', '2', null, 2, null, '集中管控', 1, 3, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001009__1', '角色管理（公共）', 1, 'SY_ORG_ROLE_PUBLIC', '10010__1', 102, 1, '1', 2, null, 3, '100__1^10010__1^1001009__1^', '2013-07-19 16:46:41:779', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001002__1', '字典管理', 1, 'SY_SERV_DICT', '10010__1', 12, 1, '1', 2, null, 3, '100__1^10010__1^1001002__1^', '2013-07-19 16:44:19:333', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001006__1', '系统信息', 1, 'SY_COMM_MESSAGE', '10010__1', 50, 1, '1', 2, 'person_info', 3, '100__1^10010__1^1001006__1^', '2013-07-19 16:45:08:391', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001004__1', '权限管理', 2, 'SY_ORG_ACL.show.do', '10010__1', 22, 1, '1', 2, null, 3, '100__1^10010__1^1001004__1^', '2013-07-19 16:44:48:971', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001012__1', '任务调度（公共）', 1, 'SY_COMM_SCHED', '10010__1', 110, 1, '1', 2, null, 3, '100__1^10010__1^1001012__1^', '2013-07-19 16:47:13:068', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001008__1', '系统配置（公共）', 1, 'SY_COMM_CONFIG_PUBLIC', '10010__1', 101, 1, '1', 2, null, 3, '100__1^10010__1^1001008__1^', '2013-07-19 16:46:25:664', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1001011__1', '流程管理（公共）', 1, 'SY_WFE_PROC_DEF_PUBLIC', '10010__1', 108, 1, '1', 2, null, 3, '100__1^10010__1^1001011__1^', '2013-07-19 16:47:02:153', '1', null, 2, null, null, 1, 2, 2, null, null, null, 63);

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('06jhkZQ6t9qV4NKiTjkkRz', '100__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('28Gr2inDN3mri8CpLAo2Tu', '10010101__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('2Bt17vkRdeIXZFf1L86glF', '1001002__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('2RkZ2At0d7_VnswfDbO39T', '1001003__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('0JctY83rpaWrBDyuVblIHX', '1001007__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('0sNzmyLbhfioaw0HJMvKQV', '1001009__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('1Er8bzOql6cav10ySqTI8K', '1001010__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('2r4HFrvXd4OUhzQDDbnmfh', '1001008__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('0KWeH7kMdexENu8gNCePpd', '1001012__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('1wQnxIuRV8xHm-8tKfAXw3', '1001004__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('2uVCJ9KbZeKq4Izzk2RG1y', '1001011__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('0ybtzgpV5cGHoLc2ERAQ7W', '1001006__1', null, 2, '3', 3, '1');

insert into SY_ORG_ACL (ACL_ID, SERV_ID, ACT_CODE, ACL_TYPE, ACL_OWNER, ACL_OTYPE, S_CMPY)
values ('3Kj-qlsrteypxzexz4ybrc', '10010__1', null, 2, '3', 3, '1');



insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2KnXgA1Zt4jUmtHtm1RCvg9', '有几种样式可用', 'SY_STYLE_DEF_COMS', '[{"title":"高对比蓝色(默认)","name":"rh-slideStyle-allBlue","menu":"pageBody-gray","back":"bodyBack-gray","block":"conHeaderTitle"},{"title":"浅蓝","name":"rh-slideStyle-allLightBlue","menu":"pageBody-lightBlue","back":"bodyBack-gray","block":"conHeaderTitle-blue"}]', 1, 0, '设置可供选择的几种风格样式', 2, '1', 1, '2013-05-16 13:48:27:816');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0urgnF5VRePbzTA_FHqgOB', '搜索服务搜索建议服务器地址', 'SY_PLUG_SEARCH_SUGGEST_SERVER', 'http://172.16.0.4:8888/searchserver/suggestion', 2, 0, '搜索服务搜索建议服务器地址', 1, '1', 1, '2013-04-07 11:11:13:110');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('39tdSgdCpcErrEJCyKrBtx', 'LOGO图标', 'SY_PORTAL_ICON', '/sy/comm/page/img/logo_ruaho.gif', 1, 0, '系统使用的LOGO图标 例如：/sy/comm/page/img/logo_ruaho.gif', 1, '1', 1, '2013-04-04 12:05:11:787');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('13xePPjbxdZ9jpeNwapUd-', '系统风格定义', 'SY_STYLE_DEF', null, 1, 0, '系统默认风格定义 {"SS_STYLE_MENU":"pageBody-lightBlue","SS_STYLE_BACK":"bodyBack-27","SS_STYLE_BLOCK":"conHeaderTitle-blue"}', 1, '1', 1, '2012-09-18 14:52:37:485');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3CUtqAWHJc0E1NHXNmXY2m', '超级公司编码', 'SY_ORG_SUPER_CMPY', '1', 2, 0, '超级公司是系统可以统筹管理其他公司的公司，缺省超级公司编码为：1', 1, '1', 1, '2012-12-24 21:21:06:694');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0xiRlwveddtbBVx3Wa7im6', 'home首页的配置', 'SY_HOME_CONFIG', null, 1, 0, '有此参数则直接进入相应系统的home页 {"tTitle":"系统首页{"tTitle":"系统首页","url":"SY_COMM_TEMPL.show.do?pkCode=1v84qOett8QWe8sJvkW9UW","closeFlag":false,"menuFlag":3}', 1, '1', 1, '2013-02-26 17:05:35:400');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1gk-at9ZB18rD24VtMVLNV', '待办提醒更新时间', 'SY_DESK_MSG_INTERVAL', '300000', 1, 0, '待办提醒更新时间，单位毫秒，默认值为5分钟即300000ms
', 1, '1', 1, '2013-03-14 14:13:57:851');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0C-KHG7_h5ZbuChkYc9QJO', '是否启用智能索引服务', 'SY_HUB_SEARCH', 'true', 2, 0, '是否启用搜索，true启用，false不启用（缺省）', 1, '1', 1, '2012-12-24 21:21:06:140');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('38mddJiYh40alFv1-Q_hrb', '流程下一步', 'SY_WF_NEXT_STEP', null, 1, 0, 'saveAndSend   进入卡片页面，不显示工作流送交按钮，只有当点击了 保存并送交(cmSaveAndSend) 之后，才显示下一步的按钮', 1, '1', 1, '2012-09-04 17:34:00:564');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3XhBtM1b5dyWdB70XaVAf8', '返回上一节点的字段设定', 'SY_WF_BACK_NODE_NAME', null, 1, 0, 'NODE_NAME 节点名称
NODE_MEMO 节点描述
如果不填，按钮就是   返回张三 ', 1, '1', 1, '2012-09-04 17:33:00:753');

Insert into SY_COMM_CONFIG
   (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, 
    CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, 
    S_MTIME)
 Values
   ('1Dp92qmhh3QqnJbuun6q0JLa', 'SY_WF_BTN_RENDER', 'SY_WF_BTN_RENDER', '110', 1, 
    0, '默认模式为全部平铺，若要使用其他模式，请配置系统配置：SY_WF_BTN_RENDER，0:操作按钮平铺，流程按钮平铺，10：操作按钮平铺，流程按钮下拉组，11：操作按钮平铺，流程按钮单独按钮条，100：操作按钮下拉组，流程按钮平铺，110：操作按钮下拉组，流程按钮下拉组，111：操作按钮下拉组，流程按钮单独按钮条', 1, 'zhbx', 2, 
    '2013-05-24 09:32:47:413');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3n3FDsahV749nCaueKwger', '即时通讯启用标志', 'SY_WBIM_FLAG', 'false', 1, 0, '即时通讯启用标志 true为启用，默认不启用', 1, '1', 1, '2013-07-02 18:18:23:683');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2qRgngEHR06HBgPhh4S7jv', '用户登录名自动转小写', 'SY_LOGIN_NAME_LOWERCASE', 'true', 2, 0, '是否自动将用户登录名转为小写，缺省为true，以小写的英文名作为登录名。', 1, '1', 1, '2012-12-24 21:21:06:561');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3Kno22Br5dgHrS-9Cqcz03', '系统开发用户', 'SY_DEV_USERS', 'admin,superadmin', 1, 0, '系统开发用户，可双击卡片字段的配置。预留以后开发用户的一些功能时的开关', 1, '1', 1, '2012-07-05 10:20:56:597');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3xdhYCzsZ6pWY84VAlrbw_', 'page浏览器标题', 'SY_PAGE_TITLE', '软虹-云智能信息处理平台', 1, 0, '浏览器标题', 2, '1', 1, '2013-06-27 10:31:04:868');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2UYvEPNGRfqUxbashVsXl6', '一个人是否直接送交', 'SY_WF_DIRECT_SEND', 'true', 1, 0, '添加全局系统配置，实现当角色下只有一人时，是否直送可根据需要配置。
true  直接送交
false  出机构树，让用户选择这个人，确定之后再发送', 1, '1', 1, '2012-09-19 18:09:59:886');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3ur7EmPad0oU56K5oFmRpJ', 'tab颜色', 'SY_TAB_COLOR', '{"1":{"li":"grayLi","a":"grayA"}}', 1, 0, '一共5种，可选取其中几种作为指定的颜色：{"1":{"li":"qingLi","a":"qingA"},"2":{"li":"yellowLi","a":"yellowA"},
                     "3":{"li":"grayLi","a":"grayA"},"4":{"li":"blueLi","a":"blueA"},"5":{"li":"redLi","a":"redA"},"6":{"li":"lightLi","a":"lightA"},};', 2, '1', 1, '2013-04-03 11:49:58:264');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1wBp8JZB5fH8h8E4BZzGxN', '搜索服务器拼写检查服务器地址', 'SY_PLUG_SEARCH_SPELLCHECK_SERVER', 'http://172.16.0.4:8888/searchserver/spellcheck/', 2, 0, '搜索服务器拼写检查服务器地址', 1, '1', 1, '2013-04-07 11:11:06:597');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0KwedmAMla2b3BNyylKbqp', '是否开启链接登录方式', 'SY_LOGIN_LINK', '2', 2, 0, '是否开启链接登录方式，1，开启，2，未开启', 1, '1', 1, '2012-12-24 21:21:06:339');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2aisp4F0x2-rslBMgNHzqZ', '意见显示排序规则', 'CM_MIND_SORT_TYPE', 'TYPE', 1, 0, 'TIME 按照时间倒排序
TYPE 按照意见类型排序，意见类型下面再按时间倒排', 1, '1', 1, '2012-09-04 17:33:00:753');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2tZSUTeGh14pEFkfJNPNV_', '文件根路径 ', 'SY_COMM_FILE_ROOT_PATH', '', 2, 0, '不填写为临时路径，支持网络路径，例如 smb://oa:oa@172.16.0.2/oa_files/', 1, '1', 1, '2013-04-07 11:02:01:704');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('01ItH41S5bs8QEfrzgxeUc', 'SQL批量处理单次数量', 'SY_SQL_BATCH_SIZE', '10000', 2, 0, '缺省值为10000，出于性能考虑，执行批量处理的SQL超过此设定后会自动分段执行。', 1, '1', 1, '2012-12-24 21:21:07:292');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2uS96S2dV3yFvy1DZDFmz_', '头部banner的配置', 'SY_BANNER_CONFIG', '{"banner":"/sy/comm/page/img/head_logo.gif","bannerBack":"/sy/comm/page/img/head_bg.gif"}
', 1, 0, 'banner:banner的含login的图片
bannerBack:整个banner的背景图片', 1, '1', 1, '2012-12-11 17:26:51:407');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3-7v-Dlo502bTBaILCJMGH', '手机链接显示', 'SY_MB_LINK', 'true', 1, 0, '手机链接显示', 1, '1', 1, '2013-01-11 10:41:25:060');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0Sk6afiLpbTVBPMkN42OVF', 'web爬虫服务器地址', 'SY_PLUG_SEARCH_WEBCRAWLER_SERVER', 'http://172.16.0.110:1976/', 2, 0, 'web爬虫服务器地址', 1, '1', 1, '2012-12-24 21:21:07:140');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0shYBRkGtay9JGe8bg0Vs4', '文档一体同步地址', 'DA_MSV_SYNC_URL', 'http://172.16.0.8:8089/services/MsvSync', 2, 0, null, 1, '1', 1, '2012-12-24 21:21:05:699');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3SlErOo7x20Vr6utjz6U_h', '系统登录认证服务名', 'SY_LOGIN_MODULE_NAME', null, 2, 0, '名称为空，使用缺省的用户名密码认证服务；<br/>ldap，使用ldap认证<br/>custom，使用自定义认证服务', 1, '1', 1, '2012-12-24 21:21:06:453');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0xDtf8QqFf48zPX0B09p4B', '节日风格覆盖', 'SY_STYLE_FEST', '{"SS_STYLE_MENU":"pageBody__festival","SS_STYLE_BACK":"bodyBack__festival","SS_STYLE_BLOCK":"conHeaderTitle__festival"}', 1, 0, '此配置值优先级 > 个人风格(优先级) > 系统默认风格(优先级),在/sy/theme/default/images/style/festival目录下，覆盖相应图片即可', 2, '1', 1, '2013-04-03 11:43:01:507');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2wHiWMNc98wqX08oXn1r4S', '批量保存日志时间间隔', 'SY_COMM_BATCH_SAVE_LOG_INTERVAL', '300', 1, 0, '单位为:秒', 1, '1', 1, '2013-03-29 23:33:18:962');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2_z_dlsS5bzX8_TUNZ7OWO', '批量保存日志最大数据量', 'SY_COMM_BATCH_SAVE_LOG_MAX_SIZE', '500', 1, 0, '当日志数据缓存到${SY_COMM_BATCH_SAVE_LOG_MAX_SIZE}条时，进行批量保存', 1, '1', 1, '2013-03-29 23:34:07:261');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2QqPAjHQiBaipZZ5MV4Hnj6', '新闻静态文件存储根路径', 'SY_COMM_NEWS_STATIC_FILE_ROOT', '/Users/liwei/Desktop/zhidao/', 1, 0, '用于存储新闻的静态文件，
可以为系统目录: /Users/liwei/Desktop/
可以是共享目录:smb://oa:oa@172.16.0.2/news_files/', 1, '1', 1, '2013-05-10 13:58:20:420');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3E9C1sUEt4QU7oVwQ_HekY', '用户菜单文件缓存路径规则设置', 'SY_COMM_MENU_PATH_LEVEL', '2', 2, 0, '为了将大量的菜单缓存文件分散目录存放，启用此配置，按照设定的层级长度对用户编码截串生成对应的目录，支持多层目录设定，例如：【2,2】表示建立两层目录，每层两个字符作为目录名称。', 1, '1', 1, '2013-04-04 15:39:43:849');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1Fan_7zvJa3bWn6reTL6C0', '系统URL根路径', 'SY_HTTP_URL', '', 2, 0, '非80端口的要求包含端口号，不需要包含虚路径，此配置用于后台没有用户交互的程序，有用户交互的程序自动从request中获取。', 1, '1', 1, '2013-03-14 17:02:44:623');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3I1KFNeDxaQUSth_DWs6nY', 'Banner右侧搜索', 'SY_BANNER_SEARCH', 'false', 1, 0, '是否显示banner区的全文搜索框_NEW_', 1, '1', 1, '2013-04-08 10:52:19:245');


insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1CifOo7gB8dGMmKeChSBq6', 'Banner图标主页配置', 'SY_BANNER_ICON', '{"cmpy":{"url":"SY_COMM_TEMPL.show.do?pkCode=1-QuWdguJ0L8f8tG8YbHMy&model=view","name":"公司门户","menuId":""},
"dept":{"url":"SY_COMM_TEMPL.show.do?pkCode=1PL1etY999C8jjte_iE68G&model=view","name":"部门门户","menuId":""},
"user":{"url":"SY_COMM_TEMPL.show.do?pkCode=29PnOt0Bl8eauAM9M74cVT&model=view","name":"个人门户","menuId":""}}', 1, 0, 'portal:值为系统处理，不需要url和menuId
其它可以选增相应图标显示_NEW_', 2, '1', 1, '2013-06-25 16:35:47:508');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0PpeUOgcR6-b3SGyoln4d-', '自动发催办的用户', 'SY_WFE_REMIND_USER', 'admin', 2, 0, '对超时的节点发催办的时候，发送人的loginName', 1, '1', 1, '2013-03-21 12:16:10:176');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1D9tfatVd0WbWV48cRiGZN', '日志异步处理队列最大值', 'SY_ASYNC_LOG_HANDLER_MAX_MSG_COUNT', '300', 1, 0, '日志异步处理队列上限，当队列数据量达到该上限时则会进行处理。默认200', 1, '1', 1, '2012-03-30 14:21:01:271');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1QKq90n-Z5lXu284Wdcmlt', '系统登录认证服务类', 'SY_LOGIN_MODULE_CLASS', null, 2, 0, '缺省不填写为：com.rh.core.auth.login.PasswordLoginModule<br/>ldap为：com.rh.core.auth.login.LdapLoginModule', 1, '1', 1, '2012-12-24 21:21:06:403');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0Qys0SxeN5WHnp8eouvoyE', '首页菜单显示位置', 'SY_HOMEMENU_LOC', '2', 1, 0, '1:顶部菜单，2：左侧菜单', 1, '1', 1, '2012-04-17 17:02:07:527');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0nBQTKx2V3hXtTi8t5ry92', '系统管理角色', 'SY_ROLE_ADMIN', 'RADMIN', 2, 0, '此角色下的用户缺省可以看到所有数据，不会判断数据权限。', 1, '1', 1, '2012-12-24 21:21:07:234');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0Ry8FhI9R6tb1tIVR5kyY1', '最大导出数量', 'SY_EXP_NUM', '5000', 1, 0, '导出功能最大一次导出数据量。', 1, '1', 1, '2012-05-23 11:21:48:397');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1znOeZYSV9vbSfLguo6-3p', '用户密码加密方式', 'SY_USER_PASSWORD_ENCRYPT', 'MD5', 2, 0, '密码加密方式，支持DES（缺省）、MD5、SHA', 1, '1', 1, '2012-12-24 21:21:07:363');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2YHYjc5St85EgvKdWIg4B3', 'IM服务器IP地址', 'SY_HUB_IM_SERVIP', '127.0.0.1', 2, 0, '集成RTX服务器的IP地址，如果为本机，则为127.0.0.1', 1, '1', 1, '2012-12-24 21:21:06:068');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('06S0UehXZ3BX-tXz67wcW_', 'IM服务器端口号', 'SY_HUB_IM_PORT', '6000', 2, 0, '调用RTX服务器的端口号', 1, '1', 1, '2012-12-24 21:21:05:982');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3Ds743yhB6rqrxuI5lkcbh', 'IM集成即时消息类名', 'SY_HUB_IM', 'com.rh.core.plug.im.ImRtx', 1, 0, '缺省为空，不集成即时通讯工具，如果集成RTX，配置值为：com.rh.core.hub.im.ImRtx', 1, '1', 1, '2013-07-01 15:27:37:934');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0ZQjCCF6F4Nqjq_4ncVDir', '用户初始密码', 'SY_USER_PASSWORD_INIT', '123456', 2, 0, '创建用户的缺省密码', 1, '1', 1, '2012-12-24 21:21:07:441');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('25YodUA0ZcwaZQChZfq3Cm', '提醒消息发送邮件实现类', 'MSG_SENDER_IMPL_PREFIX_EMAIL', 'com.rh.core.comm.msg.MailMsgSender', 1, 0, '提醒消息发送邮件实现类', 1, '1', 1, '2013-01-17 17:34:05:812');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3N-2dIQfx1cqeiIhe6B3FS', '即时通讯服务器地址', 'SY_PLUG_WEBIM_SERVER', 'http://172.16.0.4:7070/http-bind/', 1, 0, null, 1, '1', 1, '2013-04-07 10:39:20:408');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1YwgH2BsR8lbVLAuBshRwb', '润乾报表服务器地址', 'SY_PLUG_REPORT_RQ', 'http://localhost:9090/report/runqianReport.jsp', 2, 0, '报表服务器地址', 1, '1', 1, '2013-01-16 21:58:21:542');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2Ys1x2Xatf9ExlnmhC1ayB', '帆软报表服务器地址', 'SY_PLUG_REPORT_FR', 'http://localhost:9090/report/ReportServer', 1, 0, null, 1, '1', 1, '2013-01-16 21:39:26:482');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3httR4QPp6aVASs2ydNcBP', '提醒数据的查询时间范围', 'SY_COMM_REMIND_TIME_RANGE', '5', 1, 0, '按时间提醒数据的查询时间范围，即与当前时间相差几分钟的数据能被查询出来，准备发送', 1, '1', 1, '2013-01-17 14:43:23:943');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('04qecft7188FUpAQ0sOLRM', '发送邮件提醒的邮件服务器地址', 'MAIL_MESSAGE_HOST', 'smtp.exmail.qq.com', 1, 0, '发送邮件提醒的邮件服务器地址', 1, '1', 1, '2013-01-17 14:54:31:681');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2WVi2q9cNdVUJikQ-muH-w', 'xdoc服务地址', 'SY_PLUG_REPORT_XDOC', 'http://localhost:8080/xdoc', 1, 0, null, 1, '1', 1, '2013-01-19 10:26:02:984');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0BOKonRwtduVi5TZLAmYkO', '无Session可以展示的字典', 'SY_SERV_DICT_NOSESSION', 'SY_ORG_CMPY', 2, 0, '多个字典逗号分隔', 1, '1', 1, '2013-01-24 09:37:31:992');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0lDdFBRDF49pWhpOhtmcp9', '提醒消息实时发送数据的过期时间', 'SY_COMM_REMIND_TIME_VALID', '30', 1, 0, '提醒消息实时发送数据的过期时间，用于去掉很久之前提交的已失去时效的提醒数据', 1, '1', 1, '2013-01-17 14:37:53:183');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3I1SRLmwl3AXBWdtC0NFIn', '上班时间设定', 'SY_COMM_WORK_TIME', '08:30:00,11:30:00,13:00:00,18:00:00', 1, 0, '分别为上午上班时间，下班时间
      下午上班时间，下班时间', 1, '1', 1, '2012-12-25 11:17:41:738');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0isytKAcR2AV4vLmRlmlrV', '系统标签最大个数', 'SY_TAB_MAX', '10', 1, 0, '最外层系统的标签打开个数限制', 1, '1', 1, '2013-01-28 16:27:26:304');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1AekLH2b9a0EFZHK5KXBdU', '是否返回按钮显示在列表卡片', 'SY_PJ_BACKBTN', 'true', 1, 0, '设置返回按钮的位置,默认显示在标题条
', 2, '1', 1, '2013-05-08 16:21:42:130');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1E5ooAJppbkqqZYpfW3hxr', '大字体显示', 'SY_FONT_BIG', 'true', 1, 0, '为true，则系统将启用大字体风格', 2, '1', 1, '2013-01-28 21:19:36:752');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1P_1NAAx9aO9FzOrgTSs8c', '项目级扩展js文件', 'SY_PJ_JS', null, 1, 0, '工程级扩展js文件,项目公用js定义文件,如：/sy/test.js', 2, '1', 1, '2012-12-13 15:06:04:039');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2uUJK_dol2GrsITvbTIuvz', '项目级扩展css文件', 'SY_PJ_CSS', '/sy/theme/default/projectResetSystem_demo.css', 1, 0, '工程级公用css文件定义，用于覆盖系统的css样式，如：/sy/test.css', 2, '1', 1, '2013-05-02 11:02:11:163');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1yPQOYPld06XLzWQL-6m3n', '组织-用户-缺省头像', 'SY_ORG_USER_DEFAULT_IMG', '07zeB-fqx38ELGprH0ay_M.png', 1, 0, null, 1, '1', 1, '2012-12-29 18:11:51:262');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1sntfOwd56ko9qiccv2kvD', '图表服务地址', 'SY_PLUG_REPORT_CHART', 'SY_COMM_INFO.chart.do', 1, 0, null, 1, '1', 1, '2013-03-19 14:18:51:250');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1cas0inflcjH4G3T8KbGUg', '单点登录服务器地址', 'SY_SSO_URL', '', 1, 0, '单点登录服务器地址', 2, '1', 1, '2013-04-23 14:57:09:225');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1aKWjepkxezaqUnyP1eBTq', '提醒消息待办发送实现类', 'MSG_SENDER_IMPL_PREFIX_TODO', 'com.rh.core.comm.msg.TodoMsgSender', 1, 0, '提醒消息中发送类型选择待办发送实现类', 1, '1', 1, '2013-01-17 14:37:53:183');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3AnSCn4Fx9y8QK4sxdxQkw', '发送邮件提醒的邮箱用户名', 'MAIL_MESSAGE_USER_NAME', 'test1@staff.ruaho.com', 1, 0, '发送邮件提醒的邮箱用户名', 1, '1', 1, '2013-01-17 14:54:31:681');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('28YAForxFeiV9BzJ-D-DQm', '发送邮件系统的邮箱密码', 'MAIL_MESSAGE_PASSWORD', 'ruaho1234', 1, 0, '发送邮件系统的邮箱密码', 1, '1', 1, '2013-01-17 14:54:31:681');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1YjN4Z0H10qo1A7ht0GXUN', '发送邮件提醒的邮箱是否要求用户验证', 'MAIL_MESSAGE_IF_AUTH', 'true', 1, 0, '发送邮件提醒的邮箱是否要求用户验证', 1, '1', 1, '2013-01-17 14:54:31:681');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1UMgUk9WBegrm7VUvh4jQb', '发送邮件提醒的邮箱地址', 'MAIL_MESSAGE_SENDER', '测试<test1@staff.ruaho.com>', 1, 0, '发送邮件提醒的邮箱地址', 1, '1', 1, '2013-01-17 15:09:24:622');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('39MMphMVp7dEpItz6G3KdP', '日志异步处理调度间隔', 'SY_ASYNC_LOG_HANDLER_INTERVAL', '120000', 1, 0, '日志异步处理调度间隔,单位为秒。默认为60000ms(1分钟)', 1, '1', 1, '2012-05-25 12:57:15:418');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('0ucqGuO1J5h8Mhohg1Eifj', '公共角色编码', 'SY_ORG_ROLE_PUBLIC', 'RPUB', 2, 0, '系统提供公共角色支持，每个用户缺省都具有此角色，无需单独在角色中添加用户，在授权管理中可以通过对公共角色设置一些所有人都有的功能权限。', 1, '1', 1, '2012-12-24 21:21:06:648');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3KKHEGCc54fruHqmKsWRKZ', '搜索服务器地址', 'SY_PLUG_SEARCH_SERVER', 'http://172.16.0.4:8888/searchserver/rhsearch', 2, 0, '搜索服务器地址', 1, '1', 1, '2013-04-07 11:11:00:190');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3nOnJgfc5atUb5eY6auv4O', '搜索服务文件服务器', 'SY_PLUG_SEARCH_FILE_SERVER', 'http://172.16.0.4:8888/searchserver/file/', 2, 0, '搜索服务-文件服务器地址', 1, '1', 1, '2013-04-07 11:10:45:204');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3XxW7R2Ep9ha_yMpTL830o', '搜索服务分词服务器地址', 'SY_PLUG_SEARCH_SEG_SERVER', 'http://172.16.0.4:8888/searchserver/seg', 2, 0, '搜索服务分词服务器地址', 1, '1', 1, '2013-04-07 11:10:51:860');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1yOA3D3InF3creboyHWu2wi', '按钮条是否启用按钮组方式渲染按钮', 'SY_WF_BTN_GROUP_RENDER', 'true', 1, 0, '如果启用，那么操作按钮中配置了groupcode的按钮将会以下拉框的方式显示，流程按钮会默认也以下拉框的方式显示', 1, '1', 1, null);

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3awrggXsbR0kauDbGetOZgd', '搜索文件服务器redirect地址', 'SY_PLUG_SEARCH_FILE_REDIRECT_SERVER', null, 1, 0, '搜索文件服务器客户端redirect地址,如:http://staff.zotn.com:1897/file/
如果于SY_PLUG_SEARCH_FILE_SERVER相同,该值则不填写.', 1, '1', 1, '2013-05-30 18:24:24:668');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('3n3FDsahV749nCaueKwgzz', '邮件启用标志', 'SY_EMAIL_ADDR', 'mailto:#USER_CODE#@staff.zotn.com', 1, 0, '邮件启用标志其中#USER_CODE#是要发送邮件人的名称，比如<hedongyang@staff.zotn.com>，此处会在程序中替换成相应的用户名,没有值则不显示', 1, '1', 1, '2013-06-27 13:18:03:899');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2YmmP32xV5qXtjaZv5ahvw', '刷新图标', 'SY_REFRESH_ICON_SHOW', 'false', 1, 0, '用于判断是否显示刷新按钮', 2, '1', 1, '2013-06-24 13:30:07:209');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('16363A7c517EPpXrgRpbjH', '桌面的搜索图标显示设置', 'SY_DESK_SEARCHICON', 'false', 1, 0, '桌面的搜索图标显示设置,默认显示，false则隐藏', 1,
 '1', 1, '2013-06-03 15:43:10:831');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('1HJaEn6thdKbDsc0LiDMLE', '系统运行日志文件路径', 'SY_LOGS_PATH', '', 1, 0,null, 1, '1', 1, '2013-07-16 14:19:56:344');

insert into SY_COMM_CONFIG (CONF_ID,CONF_NAME,CONF_KEY,CONF_VALUE,CONF_MEMO,CONF_FLAG,S_PUBLIC,S_FLAG,CONF_ORDER,S_CMPY,S_MTIME)
values ('1XmQu8OPMh6Db6ZCMonXGJx','工作流节点缺省大小（宽高设置）','SY_WF_NODE_SIZE','100,40','新增节点时缺省大小尺寸设置，格式为：宽,高 例如缺省大小： 85,30',1,'1',1,0,'1','2013-08-09 17:56:52:602');

insert into SY_COMM_CONFIG (CONF_ID,CONF_KEY,CONF_NAME,CONF_VALUE,CONF_MEMO,CONF_FLAG,S_FLAG,S_PUBLIC,CONF_ORDER,S_CMPY,S_MTIME)
values ('3vrbVclXl8nH2Q15AgXdNw','SY_CROSS_DOMAIN_LIST','允许跨域域名列表','','允许跨域访问网站域名列表，多个逗号，不设置则不允许跨域访问，设置为*则允许所有网站跨域访问，设置域名部分匹配即可，例如：localhost,172.16,ruaho.com',2,1,1,0,'1','2013-12-14 15:16:22:583');

insert into SY_COMM_CONFIG (CONF_ID, CONF_NAME, CONF_KEY, CONF_VALUE, CONF_FLAG, CONF_ORDER, CONF_MEMO, S_FLAG, S_CMPY, S_PUBLIC, S_MTIME)
values ('2gcd9CeTF3Gq1sflQxvwcQA', '图片展示类型', 'SY_IMG_SHOW_TYPE', 'image', 1, 0, '图片展示类型  image 或 flash', 1, '1', 1, '2014-02-21 16:17:30:417');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('39sAotTjd01q57habdOXfd', 'SY_DELETE_OK', '{1}条数据已经成功删除。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0XVBpwFn54HWYclBaiokeq', 'SY_BATCHSAVE_OK', '{1}条数据保存成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('11Z6ptjr9fZbZ-npyUSIhH', 'SY_BATCHSAVE_NONE', '批量保存失败：没有数据保存成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2PiIpdHxd9kWF04h0ODuyN', 'SY_BYID_ERROR', '无效的数据主键：【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2uxVqiR1F0hbKQjtT2I52B', 'SY_SERV_DICT_INNER_PUBLIC', '保存失败：不允许设定内部字典为私有（公共标志为否）字典。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0VxsJG3sd3obr9rnq9kYQj', 'SY_ORG_USER_RELATE_MAIN_ERROR', '主兼岗人错误：主兼岗人一旦设置过，就不允许作为子兼岗人使用。', 2, 'ruaho', 1, '2013-01-29 21:32:19:025');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1e6e1DWox0F9VUkEUtH-Kn', 'SY_DATA_RESTOR_OK', '{1}条数据已经成功恢复。', 2, 'ruaho', 1, '2013-01-26 17:40:26:076');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('23dF62jFJ8eGdg-Z6yck_v', 'SY_SERV_DICT_PCODE_ERROR', '保存失败：不能将自身或子数据设置为上级。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3JS8N1UBJ2VU-xcIAlJGl4', 'SY_ORG_USER_AGT_EXIST', '当前用户存在尚未结束的委托！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0j57Y0s9VffG35cSju8udW', 'SY_DATE_BEFORE_END_ERROR', '开始日期不能晚于结束日期!', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0Ls6BFz696UWeuwbaaKanv', 'SY_ORG_USER_AGT_SELF_ERROR', '不能设置自己（或可能循环委托）为受委托人!', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3yZs5GT9xfQoXS4_NoHicr', 'SY_SAVE_LOOP_ERROR', '保存失败，可能会出现死循环。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1duoHIqdt0-aVH6a3DS1ey', 'SY_SAVE_MTIME_ERROR', '数据更新时间检查错误：修改的不是最新数据，请刷新后再修改。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('22HYwrbQh5EqlDSQz__aYs', 'SY_SAVE_UNIQUE_EXISTS', '唯一约束错误：{1}存在相同数据。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2fJNZYEpB74auz0rkyR86_', 'SY_SAVE_NOTEXISTS', '保存失败，主键为:【{1}】的数据不存在。', 1, '1', 1, '2013-01-31 15:09:02:188');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('132KBJrZt9FqvMdpxamBhd', 'SY_SERV_AUTH_ERROR', '您没有此功能的权限：{1}({2})', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1PEoPbiGh9bG-7JSM-E92w', 'SY_DELETE_EXIST_SUB_ERROR', '删除失败：当前数据下存在{1}条子数据，请先删除子数据。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1vtcTwFoB6abn5hGu1uddU', 'SY_WF_PROC_ENNAME_NOT_EXIST', '没有查询到流程编号为【{1}】公司ID为【{2}】的流程定义', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3AcGjO5_VeZaCnAJt3vfGD', 'SY_WF_PROC_PUB_NOT_EXIST', '没有查询到流程编号为【{1}】的公共流程定义', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3e6kNA3px6wFlol4m55Rc2', 'SY_WF_PROC_NOT_EXIST', '没有查询到流程编号为【{1}】的流程定义', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0ySdEgSbN8oEUWKWUkuixO', 'SY_WF_PROC_INST_NOT_EXIST', '没有查询到流程实例ID为【{1}】的流程实例', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('30grUKEV93R8LNA9IafEPg', 'SY_WF_PROC_INST_HIS_NOT_EXIST', '在流程实例历史表中没有查询到流程实例ID为【{1}】的流程实例', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3bMwvtl-x3MVk6KFbjpxGd', 'SY_SCHED_ERROR', '任务调度管理器异常.', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1dI79z3h9138YsJXAps89c', 'SY_WF_NODE_INSTHIS_ID_ERROR', '在节点实例历史表中没有查询到节点实例ID为【{1}】的节点实例', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1UlbqxtbVferxiotQc1ES3', 'SY_WF_NOT_FOUND_NODE_INST', '没有查询到流程ID为【{1}】的流程节点实例', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2GdiHWuH5d4VUEXM69jRhy', 'SY_WF_NODE_INST_ID_ERROR', '没有查询到节点实例ID为【{1}】的节点实例', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1DITzZVztfqXU1XB0xA1_e', 'SY_WF_NODE_DEF_ERROR', '没有查询到流程编号为【{1}】节点编号为【{2}】公司ID为【{3}】的节点定义', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_TABLE_CODE_ERROR', 'SY_TABLE_CODE_ERROR', '无效的表编码：【{1}】。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_PARAM_ERROR', 'SY_REQUEST_ERROR', '无效的请求【{1}】！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('06djdWe7RawV2WdhpyDkZH', 'SY_WF_START_NODE_ERROR', '没有查询到流程编码为【{1}】公司ID为【{2}】流程的起始节点', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_CACHE_NOT_FOUND', 'SY_CACHE_NOT_FOUND', '当前缓存不存在：【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_DATABASE_ERROR', 'SY_DATABASE_ERROR', '数据库错误。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_DIC_CODE_ERROR', 'SY_DIC_CODE_ERROR', '无效的字典编码：【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_DOC_STANDARD_ERROR', 'SY_DOC_STANDARD_ERROR', '您选择的文件不符合规范。详细信息请阅读操作使用手册。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_EXPORT_EXCEL_ERROR', 'SY_EXPORT_EXCEL_ERROR', '导出Excel文件错误。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0xWTST1cJaNX0_KKTU29T0', 'SY_DATA_NOT_EXIST', '数据{1}不存在。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1iSNxrVw56Fpax-bhW9BLV', 'SY_WF_LINE_ERROR', '没有查询到流程编码为 【{1}】前节点为【{2}】后节点为【{3}】公司ID为【{4}】流程定义连线', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1oXn7x-dZbP8765Ydh4C15', 'SY_WF_BIND_ERROR', '没有查询到流程编码为 【{1}】 表单为 【{2}】 公司ID为 【{3}】的绑定 定义', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0OUIpkJid0gpL7pZRyFDL8', 'SY_START_OPERATION_SUCCESSFUL', '启动操作成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3U3MByrINbIXFn_F1YOmGD', 'SY_STATE_PAUSED', '暂停', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0a4dbfMJ141UJGrpTaibSj', 'SY_STATE_ALIVE', '活动中', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1Nl5_5lTB47qcDLP1252It', 'SY_STATE_STOPED', '停止', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3YPHj0Nvp0YHvJ-qhRRJ_8', 'SY_OPERATION_SUCCESSFUL', '【{1}操作】成功', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_USER_PREPASS_WRONG', 'SY_USER_PREPASS_WRONG', '输入的当前密码错误！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_WF_PROC_DEF_BEGIN', 'SY_WF_PROC_DEF_BEGIN', '工作流程无法启动，请检查编号为{1}的工作流定义，确认是否存在有效的起始点。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_FILE_NOT_EXIST', 'SY_COMM_FILE_NOT_EXIST', '文件不存在或者路径错误：{1}', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_FILE_OPERATION_ERROR', 'SY_FILE_OPERATION_ERROR', '文件操作错误。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_FUNC_ACL_NO', 'SY_FUNC_ACL_NO', '对不起，您没有权限使用此项功能！【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_IMPORT_ERROR', 'SY_IMPORT_ERROR', '数据导入错误。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_COUNT_LOCKED', 'SY_LOGIN_COUNT_LOCKED', '对不起，您的帐号已被锁定，请联系系统管理员进行解锁！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_COUNT_OVER', 'SY_LOGIN_COUNT_OVER', '对不起，您已经连续输入了{1}次错误的密码，为了安全起见，您的帐号已被锁定，请联系系统管理员进行解锁！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_ERROR', 'SY_LOGIN_ERROR', '用户名或密码错误', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_IP_DENY', 'SY_LOGIN_IP_DENY', '你的IP地址不允许登录系统，请和管理员联系！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_IP_LIMIT', 'SY_LOGIN_IP_LIMIT', '由于系统安全的要求,同一用户同时只能在一台机器上登录,如果需要用此用户登录,请先将其他机器上登录的此用户退出！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_WF_INST_ERROR', 'SY_WF_INST_ERROR', '工作审批流程不存在，可能是流程已经删除或取消，或者单据被删除。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_NO_PASS', 'SY_LOGIN_NO_PASS', '密码为空。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('SY_LOGIN_NO_NAME', 'SY_LOGIN_NO_NAME', '用户名为空。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0jBVmn43BdREivt194dEib', 'SY_DELETE_LINK_ERROR', '删除失败：关联服务【{1}】下有{2}条关联数据。', 1, '1', 1, '2013-01-31 15:06:39:857');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1P9UyE3zpa-bOsHe-5Qy_g', 'SY_IMPORT_OK', '{1}条数据导入成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('24vcXcNAB5c914qYqJ1vQp', 'SY_RETURN_NULL', '返回对象为空。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1KoEojTld3VGIdprrZ5bZx', 'SY_RUN_ERROR', '执行方法【{1}】]错误。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('39qiWN1U14QEHQdMcEGtJy', 'SY_SERV_ID_ERROR', '无效的服务ID：【{1}】。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3Gz8eD4659oVEGC1qbUTSi', 'SY_SERV_ACT_INVALID', '无效操作：不符合数据要求的操作。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2sh1a63_h83ryKxg7zM03W', 'SY_WF_START_NO_VALID_FLOW', '流程启动失败：当前功能【{1}】没有符合规则的流程定义。', 1, '1', 1, '2013-03-08 17:43:24:968');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2lINHLtxRbXEEKlZT40DAC', 'SY_SAVE_OK', '修改保存成功。', 1, '1', 1, '2013-03-20 13:15:54:982');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1mK2zYXKh7B88lrsQQb8cl', 'SY_SAVE_ERROR', '保存失败。', 1, '1', 1, '2013-01-31 15:09:02:173');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3oKnWEXId8AXCeiP1wauIF', 'SY_SAVE_NOCHANGE', '保存取消，因为没有修改任何数据。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2nCWvVVlR3aqoBvB0jza-O', 'SY_ADD_OK', '添加的数据保存成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('00ogy8-Ox3BFmfy5DjfhZ4', 'SY_SERV_DISABLED', '被禁用的服务ID：【{1}】。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0JlYqfI3R0NEEbUheh4QGD', 'SY_DELETE_WHERE_ERROR', '删除失败：系统禁止没有where条件的批量删除。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2mXLAmXkN9NUd889h8MZs2', 'SY_SAVE_WHERE_ERROR', '保存失败：禁止没有where条件的批量更新。', 1, '1', 1, '2013-01-31 15:09:02:374');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0Z6MNRvQJeQHMevO0CqvnX', 'SY_CMPY_NOT_FOUND', '无效的公司编码：{1}。', 1, '1', 1, '2013-06-20 16:30:31:516');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2ZXGlGhmBawVRSLZHTXEW4', 'SY_DICT_NOT_FOUND', '无效的字典定义：【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3gsYgoRSld_XfAQ07zUSjo', 'SY_ROLE_NOT_FOUND', '无效的角色编码：【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('32iC-5ULB1VFnd1O8WCUfo', 'SY_DEPT_NOT_FOUND', '无效的部门编码：【{1}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1LgZ9Z9ud3UEuuwWDeE1OD', 'SY_USER_NOT_FOUND', '无效的用户编码：【{1}】。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3DKlXPcDx2fF4CWYwTozBn', 'SY_TODO_ERROR', 'SY_TODO:【{1}】操作,缺失参数【{2}】', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2LxdUuTst7E8tsczEJRZR_', 'SY_DELETE_ERROR', '删除失败：没有数据删除成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('3OYLoBhnBaUHf1RwO8e_Wv', 'SY_WF_START_OK', '流程已经成功启动。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('25SLQnJbR8mbuv1nZx7yRj', 'SY_PARAM_INVALID', '参数非法或缺少参数。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1Rk9Safxpf9phs4xhLqIQ3', 'SY_TEMPLATE_ERRO', '生成模板内容【{1}】,【{2}】有误！', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2W7-K-Emp6QoefBXOmYbD-', 'SY_BATCHSAVE_ERROR', '{1}条数据保存失败。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('15EBl_95B3HE1yoKyy71u9', 'SY_IMPORT_EXISTS', '数据导入失败：无法导入已经存在的数据。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2guBIYlN995pPclK5DqFeO', 'SY_SYNC_OK', '【{1}】条数据同步成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2y2K0LyYl0JHIZtb9x63N5', 'SY_SYNC_ERROR', '同步失败，没有数据同步成功。', 1, '1', 1, null);

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('0SeXEOzU1chUFT4-ygloMT', 'SY_ADD_ERROR', '添加的数据保存失败。', 1, '1', 1, '2013-01-25 21:48:41:267');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('2KSWthMCNboF351kTzmLUf', 'SY_IMPORT_MSG', '导入结果：{1}条数据导入成功，{2}条数据导入失败。', 2, 'ruaho', 1, '2013-04-08 11:47:48:225');

insert into SY_COMM_MESSAGE (MSG_ID, MSG_CODE, MSG_NAME, S_PUBLIC, S_CMPY, S_FLAG, S_MTIME)
values ('1d4d4togx1wFxojoUZ5LkM', 'SY_CMPY_FORBIDDEN', '公司被禁用，编码为：{1}。', 2, 'ruaho', 1, '2013-06-20 16:30:31:509');



insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('3ZqWErdIV27a_mIMWvx9pV', '列表字符串截串显示', 2, 'Format.substr(m,n)', 15, 'm为要显示字符串的起始位置。
n为要显示的字符串的最大长度。', '2012-12-14 23:01:48:484');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('0uznjDbbZ9xrm7ySN7j9bN', '日期正则表达式格式', 1, '^\d{4}-\d{2}-\d{2}$', 10, null, '2012-04-23 22:18:01:059');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('1WFN7Azzd3RaYjtjhlHv3a', '日期正则表达式格式：年', 1, '^\d{4}$', 30, null, '2012-04-23 22:18:10:020');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('0EnZ9zfi52WpDs2D1WtB7K', '日期正则表达式格式：年月', 1, '^\d{4}-\d{2}$', 40, null, '2012-04-23 22:18:18:653');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('1JBI5UE9B6wGVBZvSyeGeX', '时间正则表达式格式', 1, '^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$', 50, null, '2012-04-23 22:18:40:945');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('02Gbq6sNh4NHGMnyD0vj2L', '周正则表达式格式', 1, '^\d{4}-第\d{1,2}周$', 60, null, '2012-04-23 22:18:50:880');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('2xO_Uy4x977HrMuiPFryJv', '季度正则表达式格式', 1, '^\d{4}-第[1-4]季度$', 70, null, '2012-04-23 22:18:58:535');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('0mm9qZbGFbHW3xQmUF7Jz6', '数字科学计数法分隔', 2, 'Format.formatNum()', 20, '例子：将1230000.00转为1,230,000.00格式', '2012-04-23 21:45:18:065');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('0I8KVuBxJ3WqUjYNDxNNbA', '数字格式处理（常用在文件大小处理）', 2, 'Format.formatSize(subNumer, fixedNumber)', 30, '例子：Format.formatSize(1048576, 2)     431616 (byte) 显示为0.41 (MB)', '2012-04-23 22:07:51:509');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('3cPekhvUJbuWARxzzpOX7y', '邮件正则表达式格式', 1, '^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$', 1, null, '2013-01-08 16:37:15:093');

insert into SY_COMM_EXPRSSION (EXP_ID, EXP_NAME, EXP_TYPE, EXP_CONTENT, EXP_SORT, EXP_MEMO, S_MTIME)
values ('2iUUoquKx6g9awFOfi6eYL', '列表字符串截串显示', 2, 'Format.limit(n)', 10, 'n为要显示的字符串的最大长度，超出部分会被截掉，以...代替。Format.limit(40)表示最多显示40个字符。', '2012-04-23 17:36:37:506');



insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('1hgXxQmdV5abqZS8xWMWlg', 'SY_COMM_MIND_TYPE', 'SP', '审批意见', null, 10, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('0elOuYxph59aLVjJbdNTvH', 'SY_COMM_MIND_TYPE', 'PS', '行领导批示意见', null, 15, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('1AhGUFrNtfnr2XxovI_4XA', 'SY_COMM_MIND_TYPE', 'SC', '主办部门意见', null, 20, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('3szFXF4CJ2YENSNivaqs1C', 'SY_COMM_MIND_TYPE', 'FG', '分管部门意见', null, 25, 1, null, 1, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('2bi8K_8Y94_EP_oIQkcUT_', 'SY_COMM_MIND_TYPE', 'FL', '法律部门意见', null, 30, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('3q3--VOQ5cgXZAybpVWdGd', 'SY_COMM_MIND_TYPE', 'HQ', '会商部门意见', null, 40, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('1pjp4Ri5h33apM0uGGu_LK', 'SY_COMM_MIND_TYPE', 'NB', '办公室意见', null, 50, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('3VbXv8GKp0oaTJ8SuGrFKa', 'SY_COMM_MIND_TYPE', 'FZ', '支行意见', null, 60, 1, null, null, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('3nJfw3zfh5w97afPDkehOL', 'SY_COMM_MIND_TYPE', 'SH', '审核', null, 150, 1, null, 0, null, null, 1, '1', '^', 0);

insert into SY_SERV_DICT_ITEM (ITEM_ID, DICT_ID, ITEM_CODE, ITEM_NAME, ITEM_PCODE, ITEM_ORDER, ITEM_FLAG, ITEM_IMG, ITEM_LEAF, ITEM_FIELD1, ITEM_FIELD2, S_PUBLIC, S_CMPY, CODE_PATH, ITEM_LEVEL)
values ('05pS-F_8deQXMMdk7EcMVo', 'SY_COMM_MIND_TYPE', 'SD', '部门意见', null, 180, 1, null, 0, null, null, 1, '1', '^', 0);


insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0YojLnIHR1dE9zJAg1G0rl', '任务调度执行日志', 1, 'SY_COMM_SCHED_HIS', '0mcgtM0bV7NUEP3TcW6HuOk', 900, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^0mcgtM0bV7NUEP3TcW6HuOk^0YojLnIHR1dE9zJAg1G0rl^', '2013-08-02 16:42:35:111', '1', '任务调度执行日志记录', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3zVqw91IJ6ea8Hn6NaGlECt', '系统运行参数', 2, 'SY_COMM_CONFIG.showAPPConf.do', '2utF2kSHR9Jb9XYlQsTqw34', 900, 1, '1', 1, 'basedata', 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^3zVqw91IJ6ea8Hn6NaGlECt^', '2013-08-02 16:42:35:090', '1', '显示web.xml等设定的参数，支持动态修改生效，不存储到对应文件', 2, null, null, 1, 2, 2, null, '2', 0, 0);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('02IEu8cn3J6hGTB3HxkQyQ5', '服务配置', 1, 'SY_SERV', '3ijge10IsddOqygTiieZZYg', 901, 1, '1', 1, 'xitong', 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^02IEu8cn3J6hGTB3HxkQyQ5^', '2013-08-02 16:44:35:513', '2,3', '系统所有的服务定义信息', 2, null, '系统管理', 1, 2, 2, 'xitong', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2xfSACpyd2tHJ803iAWxDP', '数据字典', 1, 'SY_SERV_DICT', '3ijge10IsddOqygTiieZZYg', 905, 1, '1', 1, 'wf_log', 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^2xfSACpyd2tHJ803iAWxDP^', '2013-08-02 16:42:35:053', '1', '系统字典的定义信息，常用的预定义好的数据', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3p4jafXdsJajpnoheKCzzE2A', '报表配置', 1, 'SY_PLUG_REPORT', '3ijge10IsddOqygTiieZZYg', 910, 1, '1', 1, 'info', 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^3p4jafXdsJajpnoheKCzzE2A^', '2013-08-02 16:42:35:056', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('37rpmVrVAhdibEtqn9uYnAv', '图表配置', 1, 'SY_COMM_DATA_VIEW', '3ijge10IsddOqygTiieZZYg', 915, 1, '1', 1, 'info', 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^37rpmVrVAhdibEtqn9uYnAv^', '2013-08-02 16:42:35:059', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3eWRyZeCV44o3FxvgYSAaG', '数据库表', 1, 'SY_SERV_TABLE', '3ijge10IsddOqygTiieZZYg', 920, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^3eWRyZeCV44o3FxvgYSAaG^', '2013-08-02 16:42:35:061', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3ubKxUDbOR5Aa7xUBsFXhLmR', '提示信息', 1, 'SY_COMM_MESSAGE', '3ijge10IsddOqygTiieZZYg', 991, 1, '1', 1, 'person_info', 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^3ubKxUDbOR5Aa7xUBsFXhLmR^', '2013-08-02 16:42:35:064', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3aWkwfEmV9A909dXGTGSm0', '工作台管理', 1, 'SY_COMM_DESK', '3ijge10IsddOqygTiieZZYg', 999, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^3aWkwfEmV9A909dXGTGSm0^', '2013-08-02 16:42:35:067', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0it1YeXod0QVNXnxoWnAmg', '数据权限配置', 1, 'SY_SERV_DACL', '3ijge10IsddOqygTiieZZYg', 1000, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^0it1YeXod0QVNXnxoWnAmg^', '2013-08-02 16:42:35:069', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1eXaD56LNar9HbA4kDEtUH', '模板和组件', 4, null, '3ijge10IsddOqygTiieZZYg', 1003, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^1eXaD56LNar9HbA4kDEtUH^', '2013-08-02 16:42:35:084', '1', null, 2, null, null, 1, 2, 2, null, null, 1, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2IQrFvL3l1p897O6CzQDPC', '工作日设置', 2, 'SY_COMM_WORK_DAY.show.do', '2utF2kSHR9Jb9XYlQsTqw34', 1003, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^2IQrFvL3l1p897O6CzQDPC^', '2013-08-02 16:42:35:092', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('32zi9NL7Vf39Kup5ynC9DP', '服务监听', 1, 'SY_SERV_LISTENER', '2utF2kSHR9Jb9XYlQsTqw34', 2000, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^32zi9NL7Vf39Kup5ynC9DP^', '2013-08-02 16:42:35:094', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2h2hgWuS93ersKdWd20OHzE', '消息监听', 1, 'SY_COMM_MSG_LISTENER', '2utF2kSHR9Jb9XYlQsTqw34', 2010, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^2h2hgWuS93ersKdWd20OHzE^', '2013-08-02 16:42:35:097', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0NG0x7HmVcxrogqUswIZAz', '意见编码', 1, 'SY_COMM_MIND_CODE', '0fzOpxdY5fcavc89skfU9lL', 10, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^11P3BLlxl9lV1gfjTiMykt^0fzOpxdY5fcavc89skfU9lL^0NG0x7HmVcxrogqUswIZAz^', '2013-08-02 16:42:35:041', '1', '意见编码设置', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2N1eCXt19arExLnBBjNa7H', '角色管理(全部)', 1, 'SY_ORG_ROLE_ALL', '0oKOxzv2JbCEsVTHnrBDXEm', 10, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0oKOxzv2JbCEsVTHnrBDXEm^2N1eCXt19arExLnBBjNa7H^', '2013-08-02 16:42:34:995', '1', '管理所有机构的角色和用户', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0Aylrb03h7irH7pDX7WrA3', '用户管理(全部)', 1, 'SY_ORG_USER_ALL', '2Oh41jvLR8THjcaWMzvb1F9', 10, 1, '1', 1, '', 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^2Oh41jvLR8THjcaWMzvb1F9^0Aylrb03h7irH7pDX7WrA3^', '2013-08-02 16:43:46:199', '1', '管理所有机构的用户', 2, null, '用户管理', 3, 2, 2, 'xitong', '2', 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3z3ANA4aZ2SrlMHDiWWFqIG', '机构管理(全部)', 1, 'SY_ORG_DEPT_ALL', '0P7DzstSdcRVbVFYfKOdba', 10, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0P7DzstSdcRVbVFYfKOdba^3z3ANA4aZ2SrlMHDiWWFqIG^', '2013-08-02 16:42:34:972', '2', '管理所有机构', 2, null, '组织管理', 1, 2, 2, 'xiezuo', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2wAMOFvERcVWlQIvOMFtS6', '用户管理(含下级)', 1, 'SY_ORG_USER_SUB', '2Oh41jvLR8THjcaWMzvb1F9', 20, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^2Oh41jvLR8THjcaWMzvb1F9^2wAMOFvERcVWlQIvOMFtS6^', '2013-08-02 16:42:34:987', '1', '管理本机及下级机构的用户', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3fVI2lISBBfqo020REjdAdp', '机构管理(含下级)', 1, 'SY_ORG_DEPT_SUB', '0P7DzstSdcRVbVFYfKOdba', 20, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0P7DzstSdcRVbVFYfKOdba^3fVI2lISBBfqo020REjdAdp^', '2013-08-02 16:42:34:976', '1', '管理本级及所有下级机构', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('25tyPOdYn179Ua4veIVkz3k', '角色管理(含下级)', 1, 'SY_ORG_ROLE_SUB', '0oKOxzv2JbCEsVTHnrBDXEm', 20, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0oKOxzv2JbCEsVTHnrBDXEm^25tyPOdYn179Ua4veIVkz3k^', '2013-08-02 16:42:34:998', '1', '管理本机及下级机构的角色和用户', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1Fh4Cp0Z15098wi2YYtYOQ', '机构管理(本级)', 1, 'SY_ORG_DEPT', '0P7DzstSdcRVbVFYfKOdba', 30, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0P7DzstSdcRVbVFYfKOdba^1Fh4Cp0Z15098wi2YYtYOQ^', '2013-08-02 16:42:34:979', '1', '管理本机构', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('016rSA6jYN9aHdmVfZJU42d', '角色管理(本级)', 1, 'SY_ORG_ROLE', '0oKOxzv2JbCEsVTHnrBDXEm', 30, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0oKOxzv2JbCEsVTHnrBDXEm^016rSA6jYN9aHdmVfZJU42d^', '2013-08-02 16:42:35:000', '1', '管理本级机构的角色和用户', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2TYE7PF1d3PXXK3q7BFw0I', '用户管理(本级)', 1, 'SY_ORG_USER', '2Oh41jvLR8THjcaWMzvb1F9', 30, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^2Oh41jvLR8THjcaWMzvb1F9^2TYE7PF1d3PXXK3q7BFw0I^', '2013-08-02 16:42:34:990', '1', '管理本机构下的用户', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3jbuROYC5478XkKIAuroiU', '意见类型', 1, 'SY_COMM_MIND_TYPE', '0fzOpxdY5fcavc89skfU9lL', 30, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^11P3BLlxl9lV1gfjTiMykt^0fzOpxdY5fcavc89skfU9lL^3jbuROYC5478XkKIAuroiU^', '2013-08-02 16:42:35:044', '1', '意见类型设置：审批类、批示类...', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('23QuLaGr965HiHOomoUiLo', '群组职务类型', 2, 'SY_SERV_DICT_ITEM_CMPY.list.do?data={"DICT_ID":"SY_ORG_GROUP_USER_POST","links":{"DICT_ID":"SY_ORG_GROUP_USER_POST"}} ', '23Vu3ftU545bT8NerBgPUP', 490, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^23Vu3ftU545bT8NerBgPUP^23QuLaGr965HiHOomoUiLo^', '2013-08-02 16:42:35:017', '1', '用于群组用户职务设置', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2oveOCm4FaNWTonGulPoov', '组织管理', 4, null, '1Rpa0eh9B5JamQ0XBuPKtn', 10, 1, '1', 1, 'lvshi', 2, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^', '2013-08-02 16:42:35:028', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('11P3BLlxl9lV1gfjTiMykt', '流程管理', 4, null, '1Rpa0eh9B5JamQ0XBuPKtn', 20, 1, '1', 1, 'line', 2, '1Rpa0eh9B5JamQ0XBuPKtn^11P3BLlxl9lV1gfjTiMykt^', '2013-08-02 16:42:35:046', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3ijge10IsddOqygTiieZZYg', '开发管理', 4, null, '1Rpa0eh9B5JamQ0XBuPKtn', 30, 1, '1', 1, null, 2, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^', '2013-08-02 16:42:35:085', '1', null, 2, null, '默认图标', 1, 3, 2, 'default', null, 0, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2utF2kSHR9Jb9XYlQsTqw34', '系统设置', 4, null, '1Rpa0eh9B5JamQ0XBuPKtn', 40, 1, '1', 1, 'basedata', 2, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^', '2013-08-02 16:42:35:108', '1', '系统参数配置等', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0mcgtM0bV7NUEP3TcW6HuOk', '日志管理', 4, null, '1Rpa0eh9B5JamQ0XBuPKtn', 50, 1, '1', 1, 'log', 2,
'1Rpa0eh9B5JamQ0XBuPKtn^0mcgtM0bV7NUEP3TcW6HuOk^', '2013-08-02 16:42:35:122', '1', null, 2, null, '日志管理夹', 1, 2, 1, 'folder', '2', 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1Rpa0eh9B5JamQ0XBuPKtn', '系统管理', 4, null, null, 900, 1, '1', 1, null, 1, '1Rpa0eh9B5JamQ0XBuPKtn^', '2013-08-02 16:42:35:178', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 63);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2Z1Gu6o4x9gEnkX7dZMfRlW2', '流程定义', 1, 'SY_WFE_PROC_DEF', '11P3BLlxl9lV1gfjTiMykt', 10, 1, '1', 1, 'workflow', 3, '1Rpa0eh9B5JamQ0XBuPKtn^11P3BLlxl9lV1gfjTiMykt^2Z1Gu6o4x9gEnkX7dZMfRlW2^', '2013-08-02 16:42:35:032', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0P7DzstSdcRVbVFYfKOdba', '机构管理', 4, null, '2oveOCm4FaNWTonGulPoov', 10, 1, '1', 1, 'bangong', 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0P7DzstSdcRVbVFYfKOdba^', '2013-08-02 16:42:34:980', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0kOb8PzAuFcaUBbtpXAdtzR', '流程分类', 2, 'SY_SERV_DICT_ITEM_CMPY.list.do?data={"DICT_ID":"SY_WFE_CATALOG","links":{"DICT_ID":"SY_WFE_CATALOG"}}', '11P3BLlxl9lV1gfjTiMykt', 20, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^11P3BLlxl9lV1gfjTiMykt^0kOb8PzAuFcaUBbtpXAdtzR^', '2013-08-02 16:42:35:035', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2Oh41jvLR8THjcaWMzvb1F9', '用户管理', 4, null, '2oveOCm4FaNWTonGulPoov', 20, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^2Oh41jvLR8THjcaWMzvb1F9^', '2013-08-02 16:42:34:991', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0oKOxzv2JbCEsVTHnrBDXEm', '角色管理', 4, null, '2oveOCm4FaNWTonGulPoov', 30, 1, '1', 1, 'hrms', 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^0oKOxzv2JbCEsVTHnrBDXEm^', '2013-08-02 16:42:35:001', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1PANylALR21q78DcyHjgus5', '群组管理', 1, 'SY_ORG_GROUP', '2oveOCm4FaNWTonGulPoov', 40, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^1PANylALR21q78DcyHjgus5^', '2013-08-02 16:42:35:005', '1', '虚拟群组管理', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0fzOpxdY5fcavc89skfU9lL', '意见设置', 4, null, '11P3BLlxl9lV1gfjTiMykt', 90, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^11P3BLlxl9lV1gfjTiMykt^0fzOpxdY5fcavc89skfU9lL^', '2013-08-02 16:42:35:045', '1', null, 2, null, null, 1, 2, 2, null, '2', 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2suLs00tCRaDUA00J3a5eflo', '在线用户监控', 1, 'SY_ORG_USER_ONLINE', '0mcgtM0bV7NUEP3TcW6HuOk', 100, 1, '1', 1,
'tian', 3, '1Rpa0eh9B5JamQ0XBuPKtn^0mcgtM0bV7NUEP3TcW6HuOk^2suLs00tCRaDUA00J3a5eflo^', '2013-08-02 16:42:35:114', '1', '在线用户信息', 2, null, '在线用户监控', 3, 2, 2, 'jianbao', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0pfCCUIzVd4rpdrIY58WYA', '系统配置', 1, 'SY_COMM_CONFIG', '2utF2kSHR9Jb9XYlQsTqw34', 100, 1, '1', 1, null, 3,
'1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^0pfCCUIzVd4rpdrIY58WYA^', '2013-08-02 16:42:35:099', '1', null, 2, null, null, 3, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2fvpJ6gE9fC8SSkug3Vq4K', '菜单管理', 1, 'SY_COMM_MENU', '2oveOCm4FaNWTonGulPoov', 100, 1, '1', 1, 'roll_manage', 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^2fvpJ6gE9fC8SSkug3Vq4K^', '2013-08-02 16:42:35:007', '1', null, 2, null, '菜单管理', 1, 2, 2, 'default', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3rm13tqRNdgpP7JOMMGZLd', '权限管理', 2, 'SY_ORG_ACL.show.do?scrollFlag=true', '2oveOCm4FaNWTonGulPoov', 150, 1, '1', 1, 'default', 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^3rm13tqRNdgpP7JOMMGZLd^', '2013-08-02 16:42:35:010', '1', null, 2, null, '权限管理', 1, 2, 2, 'default', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2JMxmDacVaLWBFW3MSGLvh', '机构回收站', 1, 'SY_COMM_ENTITY_TRASH_ORG', '2oveOCm4FaNWTonGulPoov', 160, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^2JMxmDacVaLWBFW3MSGLvh^', '2013-08-02 16:42:35:013', '1', '机构内所有已删除数据的回收站', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2eDj7PilV8a9oTrwftff7HQ', '用户操作监控', 1, 'SY_SERV_LOG_ACT', '0mcgtM0bV7NUEP3TcW6HuOk', 200, 1, '1', 1,
'jiaoliu', 3, '1Rpa0eh9B5JamQ0XBuPKtn^0mcgtM0bV7NUEP3TcW6HuOk^2eDj7PilV8a9oTrwftff7HQ^', '2013-08-02 16:42:35:116', '1', '登录、退出、删除等敏感操作记录', 2, null, '用户操作监控', 3, 2, 2, 'banwenbanshi', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('10DLihccVadXKxSY0wiJMOT', '任务调度', 1, 'SY_COMM_SCHED', '2utF2kSHR9Jb9XYlQsTqw34', 300, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^10DLihccVadXKxSY0wiJMOT^', '2013-08-02 16:42:35:102', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0jPQFwWPF199NhJqGujmZT', '数据变更监控', 1, 'SY_SERV_LOG_ITEM', '0mcgtM0bV7NUEP3TcW6HuOk', 300, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^0mcgtM0bV7NUEP3TcW6HuOk^0jPQFwWPF199NhJqGujmZT^', '2013-08-02 16:42:35:118', '1', '类型、金额、编号等核心数据项变更记录', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('23Vu3ftU545bT8NerBgPUP', '组织扩展设置', 4, null, '2oveOCm4FaNWTonGulPoov', 400, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^23Vu3ftU545bT8NerBgPUP^', '2013-08-02 16:42:35:027', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3um2gxY5d0ZFdedluCA2kj', '表达式', 1, 'SY_COMM_EXPRESSION', '2utF2kSHR9Jb9XYlQsTqw34', 400, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^3um2gxY5d0ZFdedluCA2kj^', '2013-08-02 16:42:35:104', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2dNNnOYeB8gUuNHhlRIxmO', '系统日志文件下载', 1, 'SY_COMM_LOGS', '0mcgtM0bV7NUEP3TcW6HuOk', 400, 1, '1', 1, 'doc', 3, '1Rpa0eh9B5JamQ0XBuPKtn^0mcgtM0bV7NUEP3TcW6HuOk^2dNNnOYeB8gUuNHhlRIxmO^', '2013-08-02 16:42:35:121', '1', null, 2, null, null, 1, 2, 2, null, '2', 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0vCO5dxod7EHI23JL944ub', '文件管理', 1, 'SY_COMM_FILE', '2utF2kSHR9Jb9XYlQsTqw34', 500, 1, '1', 1, null, 3, '1Rpa0eh9B5JamQ0XBuPKtn^2utF2kSHR9Jb9XYlQsTqw34^0vCO5dxod7EHI23JL944ub^', '2013-08-02 16:42:35:107', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('2YLs3y1ERe0r914pBaScz4', '机构扩展分类1', 2, 'SY_SERV_DICT_ITEM_CMPY.list.do?data={"DICT_ID":"SY_ORG_DEPT_SRC_TYPE1","links":{"DICT_ID":"SY_ORG_DEPT_SRC_TYPE1"}}', '23Vu3ftU545bT8NerBgPUP', 500, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^23Vu3ftU545bT8NerBgPUP^2YLs3y1ERe0r914pBaScz4^', '2013-08-02 16:42:35:019', '1', '用于机构扩展属性', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1Svz3xei91mG1eL0DmNiPv', '门户模版', 1, 'SY_COMM_TEMPL', '1eXaD56LNar9HbA4kDEtUH', 1001, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^1eXaD56LNar9HbA4kDEtUH^1Svz3xei91mG1eL0DmNiPv^', '2013-08-02 16:42:35:073', '1', null, 2, null, null, 1, 2, 2, 'bangongjianbao', null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('3y1fYDEK15Qb3JMV4KMDE1', '机构扩展分类2', 2, 'SY_SERV_DICT_ITEM_CMPY.list.do?data={"DICT_ID":"SY_ORG_DEPT_SRC_TYPE2","links":{"DICT_ID":"SY_ORG_DEPT_SRC_TYPE2"}}', '23Vu3ftU545bT8NerBgPUP', 510, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^23Vu3ftU545bT8NerBgPUP^3y1fYDEK15Qb3JMV4KMDE1^', '2013-08-02 16:42:35:022', '1', '用于机构扩展属性', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1GOhlUnKN5yUxfs1P2rdVUF', '机构业务条线', 2, 'SY_SERV_DICT_ITEM_CMPY.list.do?data={"DICT_ID":"SY_ORG_DEPT_LINE","links":{"DICT_ID":"SY_ORG_DEPT_LINE"}}', '23Vu3ftU545bT8NerBgPUP', 610, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^2oveOCm4FaNWTonGulPoov^23Vu3ftU545bT8NerBgPUP^1GOhlUnKN5yUxfs1P2rdVUF^', '2013-08-02 16:42:35:026', '1', '用于机构业务条线设置', 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('32mMoRYRxcrE9l3VZqyu41h', '模版类型管理', 2, 'SY_SERV_DICT_ITEM.list.do?data={"DICT_ID":"SY_COMM_TEMPL_TYPE","links":{"DICT_ID":"SY_COMM_TEMPL_TYPE"}} ', '1eXaD56LNar9HbA4kDEtUH', 1002, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^1eXaD56LNar9HbA4kDEtUH^32mMoRYRxcrE9l3VZqyu41h^', '2013-08-02 16:42:35:076', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0qow053HNecWohz3ktKkLM', '模板组件', 1, 'SY_COMM_TEMPL_COMS', '1eXaD56LNar9HbA4kDEtUH', 1003, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^1eXaD56LNar9HbA4kDEtUH^0qow053HNecWohz3ktKkLM^', '2013-08-02 16:42:35:078', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('1lFlp9FmJ7O4GtwVRVtdzX0', '组件类别管理', 2, 'SY_SERV_DICT_ITEM.list.do?data={"DICT_ID":"SY_COMM_TEMPL_COMTYPE",
"links":{"DICT_ID":"SY_COMM_TEMPL_COMTYPE"}} ', '1eXaD56LNar9HbA4kDEtUH', 1004, 1, '1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^1eXaD56LNar9HbA4kDEtUH^1lFlp9FmJ7O4GtwVRVtdzX0^', '2013-08-02 16:42:35:080', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 511);

insert into SY_COMM_MENU (MENU_ID, MENU_NAME, MENU_TYPE, MENU_INFO, MENU_PID, MENU_ORDER, S_FLAG, S_CMPY, S_PUBLIC, MENU_ICON, MENU_LEVEL, CODE_PATH, S_MTIME, MENU_AREA, MENU_TIP, MENU_TODO_FLAG, MENU_TODO_TYPE, DS_NAME, DS_MENU_FLAG, DS_NORMAL_FLAG, DS_FOLDER_FLAG, DS_ICON, MENU_NODE_VIRTUAL, MENU_OTYPE, MENU_SCOPE)
values ('0Dt686scp1Q8eQPoLH6lZ0', '模版组件权限', 2, 'SY_COMM_TEMPL_COMS_ACL.show.do', '1eXaD56LNar9HbA4kDEtUH', 1005, 1,
'1', 1, null, 4, '1Rpa0eh9B5JamQ0XBuPKtn^3ijge10IsddOqygTiieZZYg^1eXaD56LNar9HbA4kDEtUH^0Dt686scp1Q8eQPoLH6lZ0^', '2013-08-02 16:42:35:083', '1', null, 2, null, null, 1, 2, 2, null, null, 0, 63);

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TASK_ASSIGN', '我分配的任务', 'SY_COMM_TASK_ASSIGN.ftl', 'height,icon,title,refresh', '', '', '1', '', 2, 1, 'ruaho', 'liuxinhe', '2013-08-15 16:18:59:495', 'SY_COMM_TASK_ASSIGN.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"CAL_ID,CAL_TITLE,START_TIME,END_TIME"}', '[{"id":"servId","value":"SY_COMM_TASK_ASSIGN","name":"服务ID"}]', '', '', '1');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_BACKTIME', '倒计时牌', 'SY_COMM_BACKTIME.ftl', 'height,icon,title,titleBar', '', '', '1', '', 2, 1, '1', '8542', '2013-09-09 17:15:30:920', '', '[{"id":"endTime","name":"结束日期(到天,如：2013-2-9)"},{"id":"endTitle","name":"到计标题"}]', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_ENTITY', '个人主办', 'SY_COMM_ENTITY.ftl', '', '', '', '1', '', 2, 1, 'ruaho', '2YVZnwr3135FmX_6gfbHkt', '2013-08-22 16:50:45:226', 'SY_COMM_ENTITY.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"ENTITY_ID,TITLE,S_EMERGENCY,MEMO,SERV_ID,DATA_ID,S_USER,S_DEPT,S_TDEPT,S_ODEPT,S_CMPY,S_ATIME,SERV_NAME","_searchWhere":""}', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TODO_READ', '待阅事务', 'SY_COMM_TODO_READ.ftl', '', '', '获取待阅事务', '1', '', 2, 1, 'ruaho', '2YVZnwr3135FmX_6gfbHkt', '2013-01-29 12:19:16:599', 'SY_COMM_TODO_READ.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"TODO_ID,OWNER_CODE,TODO_URL,TODO_CODE,TODO_SEND_TIME,TODO_CODE_NAME,TODO_OBJECT_ID1,TODO_TITLE,SEND_USER_CODE,S_EMERGENCY,TODO_CONTENT","_searchWhere":" and TODO_CATALOG =2 and OWNER_CODE=\''@USER_CODE@\'' and  TODO_CONTENT is null"}', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_ENTITY_DONE_RUN', '已办未结', 'SY_COMM_ENTITY_DONE_RUN.ftl', '', '', '', '1', '', 2, 1, 'ruaho', '2YVZnwr3135FmX_6gfbHkt', '2013-01-31 14:59:20:866', 'SY_COMM_ENTITY_DONE_RUN.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"ENTITY_ID,TITLE,S_EMERGENCY,MEMO,SERV_ID,DATA_ID,S_USER,S_DEPT,S_TDEPT,S_ODEPT,S_CMPY,S_ATIME,SERV_NAME","_searchWhere":""}', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_CM_TODO_TAB', '多TAB待办事务', 'SY_COMM_TODO_TAB.ftl', '', '', '多TAB代办事务', '1', '', 2, 1, '1', '8542', '2013-01-29 12:18:27:376', 'SY_COMM_TODO.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"TODO_ID,OWNER_CODE,TODO_URL,TODO_CODE,TODO_SEND_TIME,TODO_CODE_NAME,TODO_OBJECT_ID1,TODO_TITLE,SEND_USER_CODE,S_EMERGENCY,TODO_CONTENT","_searchWhere":" and (TODO_CATALOG =0 or TODO_CATALOG =1) and OWNER_CODE=\''@USER_CODE@\'' and TODO_CONTENT is null"};;SY_COMM_TODO_READ.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"TODO_ID,OWNER_CODE,TODO_URL,TODO_CODE,TODO_SEND_TIME,TODO_CODE_NAME,TODO_OBJECT_ID1,TODO_TITLE,SEND_USER_CODE,S_EMERGENCY,TODO_CONTENT","_searchWhere":" and TODO_CATALOG =2 and OWNER_CODE=\''@USER_CODE@\'' and  TODO_CONTENT is null"}', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_CHART_PIE3D', '性别统计饼图', '', '', '', '示例3D饼图', '1', '', 2, 1, 'ruaho', 'admin', '2013-03-11 17:55:05:557', '<iframe src="SY_COMM_INFO.chart.do?_PK_=SY_ORG_USER_SEX" border=''0'' frameborder=''0'' width=''100%'' height=''400px'' scrolling=no ></iframe>', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_BAIDU', '百度搜索', '', '', '', '百度搜索', '1', '', 2, 1, '1', '8542', '2013-01-13 21:22:02:838', '<iframe src="http://www.baidu.com" border=''0'' frameborder=''0'' width=''100%'' height=''300px'' scrolling=no ></iframe>', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_WEATHER', '天气情况', 'SY_WEATHER.ftl', '', '', '天气预报', '1', '', 2, 1, '1', '8542', '2012-11-07 14:31:24:066', '', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_CHART_COLUMN3D', '各机构人数统计', '', '', '', '3D柱形示例', '1', '', 2, 1, 'ruaho', 'admin', '2013-01-31 10:10:20:840', '<iframe src="SY_COMM_INFO.chart.do?_PK_=SY_ORG_USER_COUNT_ORG" border=''0'' frameborder=''0'' width=''100%'' height=''200px'' scrolling=no ></iframe>', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_EXTEND_LINK', '常用链接', 'SY_EXTEND_LINK.ftl', '', '', '系统的快速链接', '1', '', 2, 1, '1', '8542', '2013-01-23 15:39:56:630', '', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_CM_TODO', '待办事务', 'SY_COMM_TODO.ftl', 'icon,title,boxTheme,titleBar', '', '根据个人权限过滤的代办事宜', '1', '', 2, 1, '1', '8542', '2013-03-04 16:49:26:648', 'SY_COMM_TODO.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"TODO_ID,OWNER_CODE,TODO_URL,TODO_CODE,TODO_SEND_TIME,TODO_CODE_NAME,TODO_OBJECT_ID1,TODO_TITLE,SEND_USER_CODE,S_EMERGENCY,TODO_CONTENT","_searchWhere":" and (TODO_CATALOG =0 or TODO_CATALOG =1) and OWNER_CODE=\''@USER_CODE@\''"}', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_CHART_LINE', '系统每日登录次数（本月）', '', '', '', '线形图示例', '1', '', 2, 1, '1', '8542', '2013-03-11 17:37:40:266', '<iframe src="SY_COMM_INFO.chart.do?_PK_=SY_ORG_LOGIN_COUNT_DAY" border=''0'' frameborder=''0'' width=''100%'' height=''400px'' scrolling=no ></iframe>', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_ALL_SEARCH', '站内全文搜索', 'SY_ALL_SEARCH.ftl', 'height,icon,title', '', '站内全文搜索', '1', '', 2, 1, 'ruaho', 'admin', '2013-01-19 16:27:59:826', '', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_NEWS_JIAODIAN', '图片切换', 'SY_COMM_NEWS_JIAODIAN.ftl', 'boxTheme,titleBar', '', '焦点', '1', '', 2, 1, 'ruaho', 'admin', '2013-01-23 14:24:00:446', 'SY_COMM_NEWS.query.do?data={"_PAGE_":{"SHOWNUM":7},"_NOPAGE_":"true"}', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TASK_DONE', '已完成任务', 'SY_COMM_TASK.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'liuxinhe', '2013-01-31 22:02:26:504', 'SY_COMM_TASK_DONE.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"CAL_USER_ID,CAL_ID,CAL_TITLE,START_TIME,END_TIME"}', '[{"id":"servId","value":"SY_COMM_TASK_DONE","name":"服务ID"}]', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TASK_UNDONE', '未完成任务', 'SY_COMM_TASK.ftl', 'height,icon,title,showNum', '', '', '1', '', 2, 1, 'ruaho', 'liuxinhe', '2013-01-31 18:35:48:718', 'SY_COMM_TASK_UNDONE.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"CAL_USER_ID,CAL_ID,CAL_TITLE,START_TIME,END_TIME"}', '[{"id":"servId","value":"SY_COMM_TASK_UNDONE","name":"服务ID"}]', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_LIST_VIEW', '系统列表', 'SY_LIST_VIEW.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'liujinkai', '2013-03-15 22:21:08:627', '', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_WORK_REMIND', '我被提醒的流程', 'SY_COMM_LIST_ZDY.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', '2nUDp31wt8QHRUFsg8LkE_', '2013-04-02 11:40:50:860', 'SY_COMM_TODO.query.do?data={"_PAGE_":{"SHOWNUM":5},"_SELECT_":"*","_searchWhere":" and TODO_FROM=\''wf\''"}', '[
		{"id":"titleT","value":"被提醒的流程"},
		{"id":"fieldCode","value":"TODO_TITLE,TODO_OPERATION,TODO_DEADLINE1","type":"1"},
		{"id":"fieldName","value":"流程名称,处理环节,办理时限,超时时间","type":"1"},
		{"id":"fieldPercent","value":"38,15,20,22","type":"1"},
		{"id":"emergField","value":"S_EMERGENCY"},
		{"id":"servId","value":"SY_COMM_TODO"},
                {"id":"servType","value":"todo"},
                {"id":"linkField","value":"TODO_TITLE"}
]', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('2l7WQ8oINdQbzZBro7N5Cr', '待办_DEMO', 'SY_COMM_TODO_DEMO.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'liujinkai', '2013-03-08 17:34:39:771', 'SY_COMM_TODO.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"TODO_ID,OWNER_CODE,TODO_URL,TODO_CODE,TODO_SEND_TIME,TODO_CODE_NAME,TODO_OBJECT_ID1,TODO_TITLE,SEND_USER_CODE,S_EMERGENCY,TODO_CONTENT","_searchWhere":" and (TODO_CATALOG =0 or TODO_CATALOG =1) and OWNER_CODE=\''@USER_CODE@\''"}', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('2YJ-qe1Sh9gbUSNjqDjWuJ', '日程安排', 'SY_COMM_CAL_REC_V.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'chujie', '2013-03-11 17:33:09:878', 'SY_COMM_CAL_REC_V.query.do', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_WORKFLOW_CENTER_2', '流程中心审批单起草组件—风格2', 'SY_WORKFLOW_CENTER_2.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'yangjinyun', '2013-03-11 22:09:53:481', 'SY_COMM_MENU.getMenu.do?data={"PID":"$MENU_ID$"}', '[{"id":"$MENU_ID$","value":"ruahoSY","name":"菜单虚拟节点ID","type":"2"},{"id":"defaultMenuId","value":"123","name":"默认菜单ID","type":"2"}]', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TODO_AND_AGENT_MULTI', '多人TAB待办委托', 'SY_COMM_TODO_AND_AGENT_MULTI.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'wangchen', '2013-03-12 14:09:58:831', 'SY_COMM_TODO.query.do?data={
	"_PAGE_":{"SHOWNUM":8},
	"_NOPAGE_":"true",
	"_SELECT_":"TODO_ID,OWNER_CODE,TODO_URL,TODO_CODE,TODO_SEND_TIME,TODO_CODE_NAME,TODO_OBJECT_ID1,TODO_TITLE,SEND_USER_CODE,S_EMERGENCY,TODO_CONTENT",
	"_searchWhere":" and (TODO_CATALOG =0 or TODO_CATALOG =1) and OWNER_CODE=\''@USER_CODE@\'' and TODO_CONTENT is null"
};;SY_ORG_USER_AGENT.getAgtUser.do?data={}', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_CARD_VIEW', '系统卡片', 'SY_CARD_VIEW.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'liujinkai', '2013-03-15 22:35:02:330', '', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TIME_MARGER_VIEW', '时间中心', 'SY_COMM_TIME_MARGER_VIEW.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', '2nUDp31wt8QHRUFsg8LkE_', '2013-03-20 21:23:57:342', '', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_LIST_ZDY', '自定义列表', 'SY_COMM_LIST_ZDY.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', '2nUDp31wt8QHRUFsg8LkE_', '2013-04-01 14:54:22:151', '$serv$.query.do?data={"_PAGE_":{"SHOWNUM":"$shownum$"},"_SELECT_":"$select$","_searchWhere":"$where$"}', '[	
	{"id":"json","name":"json参数","value":{		
		"titleT":"用户表",
		"fieldCode":"USER_CODE,USER_LOGIN_NAME,USER_NAME",
		"fieldName":"编码,登录名称,用户名",
		"fieldPercent":"40,30,25",
		"servId":"SY_ORG_USER",
		"linkField":"USER_CODE"},"type":"2"
	},{"id":"$where$","name":"查询条件","value":" and 1=1"},{"id":"$serv$","name":"服务ID","value":"SY_ORG_USER"},
        {"id":"$select$","name":"查询字段","value":"*","type":"2"},{"id":"$shownum$","name":"显示条数","value":"6","type":"2"}
]', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_WORKFLOW_CENTER_1', '流程中心审批单起草组件—风格1', 'SY_WORKFLOW_CENTER_1.ftl', 'height,icon,title', '', '常用于流程中心，展示所有能启动的审批单。', '1', '', 2, 1, 'ruaho', 'yangjinyun', '2013-03-11 22:09:02:968', 'SY_COMM_MENU.getMenu.do?data={"PID":"$MENU_ID$"}', '[{"id":"$MENU_ID$","value":"ruahoSY","name":"菜单虚拟节点ID","type":"2"},{"id":"defaultMenuId","value":"123","name":"默认菜单ID","type":"2"}]', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_WIN', 'win8风格区块', 'SY_COMM_WIN.ftl', 'title,boxTheme,titleBar', '', '', '1', '', 2, 1, '1', '8542', '2013-04-01 10:24:06:736', '', '', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_COMM_TASK_TODAY', '今日任务', 'SY_COMM_TASK.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'liuxinhe', '2013-01-31 18:06:49:614', 'SY_COMM_TASK_TODAY.query.do?data={"_PAGE_":{"SHOWNUM":8},"_NOPAGE_":"true","_SELECT_":"CAL_USER_ID,CAL_ID,CAL_TITLE,START_TIME,END_TIME"}', '[{"id":"servId","value":"SY_COMM_TASK_TODAY","name":"服务ID"}]', '', '', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_OPEN_TAB', '打开新的TAB页', 'SY_OPEN_TAB.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'admin', '2013-05-09 12:31:46:157', '', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_DOWNLOAD', '文件下载', 'SY_DOWNLOAD.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'admin', '2013-05-09 12:36:51:789', '', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('SY_QUERY_SQL', 'SQL编辑器', 'SY_QUERY_SQL.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'admin', '2013-05-09 11:17:15:698', '', '', '', '1', '');

insert into SY_COMM_TEMPL_COMS (PC_ID, PC_NAME, PC_CON, PC_PARAM, PC_EXP, PC_TIP, PC_TYPE, PC_COMMNET, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PC_DATA, PC_SELF_PARAM, PC_SELF_PARAM_JS, PC_USE_AREA, PC_DS_LOC)
values ('0gKYaKXaJ2db4m85LWBTJz', '搜索组件', '/sy/comm/home/ftl/SY_COMM_SEARCH.ftl', 'height,icon,title', '', '', '1', '', 2, 1, 'ruaho', 'admin', '2013-07-30 13:53:02:707', '', '', '', '1', '');

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_NEWS_CENTER', '资讯中心', '<DIV style="HEIGHT: 700px" class="portal-target wp28 floatLeft" sizset="true" sizcache042287434697949266="58 16 92">[SY_COM_CHOSEN_PT][SY_COM_NEWS_TWA]</DIV>
<DIV style="HEIGHT: 700px" class="portal-target wp40 floatLeft" sizset="true" sizcache09613337170438813="564 28 1439">[NE_HOT_LIST][NE_ZIXUN][SY_COM_NEWS_TABS]</DIV>
<DIV style="HEIGHT: 700px" class="portal-target wp32 floatLeft" sizset="true" sizcache09613337170438813="512 28 1315">[SY_WEATHER]</DIV>', '1', '{"SY_COM_CHOSEN_PT":{"title":"\u6700\u65b0\u8d44\u8baf","boxTheme":"portal-null","imgWid":"300","imgHei":"200","showCount":"1"},"NE_ZIXUN":{"height":"210","title":"\u4eca\u65e5\u65b0\u95fb","boxTheme":"portal-null"},"SY_COM_NEWS_TABS":{"height":"200","boxTheme":"portal-null"},"SY_WEATHER":{"height":"240"},"SY_COM_NEWS_TWA":{"height":"395","undefined":"\u6df1\u5ea6\u62a5\u9053","title":"\u6df1\u5ea6\u62a5\u9053","COUNT":"8"},"NE_HOT_LIST":{"height":"160","boxTheme":"portal-null"}}', '', '资讯中心模版', '', 1, 1, '1', '8542', '2013-03-12 10:57:19:597', '', '', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('2uyWMoDQB0LX2cL6lOQxEo', '软虹默认门户', '<div class="portal-target wp100 floatLeft">[2Fgn7N9rJbMoy0Rndc9U14]</div><div class="portal-target wp67 floatLeft">[COMPANY_INFOS]</div><div class="portal-target wp33 floatLeft">[SY_COM_LINKS]</div><div class="portal-target wp100 floatLeft">[NE_HOT_LIST]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'admin', '2013-09-04 10:39:05:707', '', '', '', 1);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_MSG_CENTER', '消息中心', '<div style="height: 246px;" class="portal-target wp67 floatLeft">[SY_CM_TODO_TAB][SY_COMM_ENTITY]</div><div class="portal-target wp33 floatLeft">[SY_COMM_REMIND_ME][SY_COMM_SEND_REMIND]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'yangjinyun', '2013-08-20 18:39:57:185', '', '', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_TASK_CENTER', '任务中心', '<div class="portal-target wp33 floatLeft">[SY_COMM_TASK_TODAY][SY_COMM_TASK_DONE]</div><div class="portal-target wp67 floatLeft">[SY_COMM_TASK_ASSIGN][SY_COMM_TASK_UNDONE]</div>', '1', '', '', '任务中心', '', 1, 1, 'ruaho', 'liuxinhe', '2013-01-31 23:12:45:965', '', '', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_WORKFLOW_CENTER', '流程中心', '<div class="portal-target wp67 floatLeft">[SY_WORKFLOW_CENTER][SY_CM_TODO_TAB]</div>', '1', '{"SY_WORKFLOW_CENTER":{"$MENU_ID$":"ruahoSY"}}', '', '', '', 1, 1, 'ruaho', 'chujie', '2013-04-22 13:23:54:650', '', '', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_TIME_CENTER', '时间中心', '<div style="height:800px" class="portal-target wp100 floatLeft">[SY_COMM_MEMO_PAD]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'yangjinyun', '2013-03-13 09:50:10:399', '', '', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_USER_CENTER', '个人首页', '<div style="height: 246px;" class="portal-target wp67 floatLeft">[SY_CM_TODO_TAB][SY_COMM_ENTITY][SY_COMM_ENTITY_DONE_RUN]</div><div class="portal-target wp33 floatLeft">[SY_COMM_REMIND_ME][SY_COMM_SEND_REMIND]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'wangchen', '2013-07-26 18:14:57:466', '', '2', '', 2);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_COMM_CONFIG', '系统配置[左列表右卡片]', '<div class="portal-target wp40 floatLeft">[SY_LIST_VIEW]</div><div class="portal-target wp60 floatLeft">[SY_CARD_VIEW]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'liujinkai', '2013-03-20 13:17:21:588', '', '2', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('1Jv5lvKbt6DrGYSxU0ZMEc', '流程中心【new】', '<div class="portal-target wp100">
	[SY_COMM_WORKFLOW_TOP]
</div>
<div>
	<div class="portal-target wp69 floatLeft">
		[SY_WF_TODO]
		[SY_WF_DEADLINE]
		[SY_WF_MINE]
	</div>
	<div class="portal-target floatLeft" style="width:30.5% ">
		[SY_COMM_WORKFLOW_RIGHT]
	</div>
<div>', '1', '', '', '', '', 1, 1, 'ruaho', '2nUDp31wt8QHRUFsg8LkE_', '2013-04-11 15:11:28:721', '', '2', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('3ez7op2-t6TExSDZT2HmB6', '系统配置[上列表下卡片]', '<div class="portal-target wp100 floatLeft">[SY_LIST_VIEW]</div><div class="portal-target wp100 floatLeft">[SY_CARD_VIEW]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'liujinkai', '2013-03-18 17:40:28:760', '', '2', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('SY_COMMU_CENTER', '通讯录【new】', '<div class="portal-target wp100">[SY_COMM_ADDRESS_VIEW_NEW]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'wangchen', '2013-03-28 14:10:17:218', '', '', '', null);

insert into SY_COMM_TEMPL (PT_ID, PT_TITLE, PT_CONTENT, PT_TYPE, PT_PARAM, PT_EXP, PT_TIP, USER_CODE, S_PUBLIC, S_FLAG, S_CMPY, S_USER, S_MTIME, PT_INCL_CSSJS, PT_TYPE_DEFAULT, PT_TYPE_ATTRIBUTE, PT_EXP_ORDER)
values ('3xiR4u3q1dl8Cl35z8l3m3D', '用户导航', '<div class="portal-target wp25 floatLeft">[SY_OPEN_TAB]</div><div class="portal-target wp35 floatLeft">[SY_DOWNLOAD]</div><div class="portal-target wp40 floatLeft">[SY_CM_KM]</div><div class="portal-target wp100 floatLeft">[SY_QUERY_SQL]</div>', '1', '', '', '', '', 1, 1, 'ruaho', 'admin', '2013-05-09 12:38:54:523', '', '2', '', null);

insert into SY_COMM_MSG_LISTENER (LIS_ID,LIS_CLASS,LIS_CONF,LIS_ACTION,LIST_DESC,LIS_SORT,S_MTIEM,S_FLAG) values ('0avzviZUF9gpxjvrx3CTmD','com.rh.core.wfe.attention.AttentionReceiver','','[{"TYPE":"_ATTENTION"}]','流程关注提醒',100,'2013-11-08 19:37:35',1);
insert into SY_COMM_MSG_LISTENER (LIS_ID,LIS_CLASS,LIS_CONF,LIS_ACTION,LIST_DESC,LIS_SORT,S_MTIEM,S_FLAG) values ('19md3Q3OGZ2vosUctFymVEo','com.rh.core.plug.search.IndexReceiver','','[{"TYPE":"_INDEX"}]','索引消息接收',110,'2013-11-08 20:38:06',1);

INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('2SJaFRDeF0Pqou4gLKoz5W','SY_ORG_USER_INFO_SELF','com.rh.core.serv.listener.CompleteDegreeListener',null,'用户资料完整度',1,0,null);
INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('1jnleUwX11C9DLGyCdfokC','SY_ORG_USER_IMG','com.rh.core.serv.listener.CompleteDegreeListener',null,'用户资料完整度',1,0,null);
INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('30Xs937SV3SoSnDL3kFyCz','SY_ORG_USER_RESUME_WORK','com.rh.core.serv.listener.CompleteDegreeListener',null,'用户资料完整度',1,0,null);
INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('27ucquXyVaLVY3Ieb-f0Ng','SY_ORG_USER_RESUME','com.rh.core.serv.listener.CompleteDegreeListener',null,'用户资料完整度',1,0,null);
INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('3NmU2X2oh5maQKsQ4cuNKg','SY_ORG_LOGIN','com.rh.core.serv.listener.ActMsgListener','login,logout','操作操作完成，向消息中心发送消息',2,0,null);
INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('38_uzEdBJbBXBPd0DJeEq-','SY_ORG_USER_REWARD','com.rh.core.serv.listener.CompleteDegreeListener',null,'用户资料完整度',1,0,null);
INSERT INTO SY_SERV_LISTENER (LIS_ID,SERV_ID,LIS_CLASS,LIS_CONF,LIS_DESC,S_FLAG,LIS_SORT,S_MTIEM) VALUES ('3aITO83nV33rpBD7ZjRakQ','SY_ORG_USER_CONTACT','com.rh.core.serv.listener.CompleteDegreeListener',null,'用户资料完整度',1,0,null);


commit;