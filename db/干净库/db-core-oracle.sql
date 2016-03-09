create table SY_COMM_ATTENTION(
ATT_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
PROC_CODE VARCHAR2(40),
PI_ID VARCHAR2(40),
ATT_TYPE NUMBER(4),
USER_CODE VARCHAR2(40),
REMIND_TYPE VARCHAR2(40),
REMIND_CONTENT VARCHAR2(2000),
S_WF_STATE NUMBER(4),
S_USER VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_MTIME VARCHAR2(40),
TITLE VARCHAR2(800),
NODE_CODE VARCHAR2(40),
S_FLAG NUMBER(4),
USER_NAME VARCHAR2(80),
constraint PK_SY_COMM_ATTENTION primary key (ATT_ID)
);
comment on table SY_COMM_ATTENTION is '关注';
comment on column SY_COMM_ATTENTION.ATT_ID is '主键ID';
comment on column SY_COMM_ATTENTION.SERV_ID is '服务ID';
comment on column SY_COMM_ATTENTION.DATA_ID is '数据ID';
comment on column SY_COMM_ATTENTION.PROC_CODE is '流程编码';
comment on column SY_COMM_ATTENTION.PI_ID is '流程实例ID';
comment on column SY_COMM_ATTENTION.ATT_TYPE is '关注类型 1,用户，2,节点';
comment on column SY_COMM_ATTENTION.USER_CODE is '用户编码';
comment on column SY_COMM_ATTENTION.REMIND_TYPE is '提醒方式  TODO,EMAIL,MESSAGE';
comment on column SY_COMM_ATTENTION.REMIND_CONTENT is '提醒内容';
comment on column SY_COMM_ATTENTION.S_WF_STATE is '流程的状态';
comment on column SY_COMM_ATTENTION.S_USER is '用户';
comment on column SY_COMM_ATTENTION.S_TDEPT is '部门';
comment on column SY_COMM_ATTENTION.S_ODEPT is '机构';
comment on column SY_COMM_ATTENTION.S_MTIME is '更新时间';
comment on column SY_COMM_ATTENTION.TITLE is '标题';
comment on column SY_COMM_ATTENTION.NODE_CODE is '节点ID';
comment on column SY_COMM_ATTENTION.S_FLAG is '是否有效  1,是，2,否';
comment on column SY_COMM_ATTENTION.USER_NAME is '用户名';
create table SY_COMM_COMPLETE_DATA(
ID VARCHAR2(40) not null,
SRC_SERV_CODE VARCHAR2(40),
SERV_CODE VARCHAR2(40),
DATA_ID VARCHAR2(40),
CMLE_DEG NUMBER(3),
constraint PK_SY_COMM_COMPLETE_DATA primary key (ID)
);
comment on table SY_COMM_COMPLETE_DATA is '完成度数据记录';
comment on column SY_COMM_COMPLETE_DATA.ID is '主键，UUID';
comment on column SY_COMM_COMPLETE_DATA.SRC_SERV_CODE is '主服务ID';
comment on column SY_COMM_COMPLETE_DATA.SERV_CODE is '服务ID';
comment on column SY_COMM_COMPLETE_DATA.DATA_ID is '数据ID';
comment on column SY_COMM_COMPLETE_DATA.CMLE_DEG is '完成度，字段是否完成乘以权重求和';
create table SY_COMM_COMPLETE_SETTINGS(
CMLE_ID VARCHAR2(40),
SRC_SERV_CODE VARCHAR2(40),
SERV_CODE VARCHAR2(40),
ITEM_CODE VARCHAR2(1000),
ITEM_WEIGHT NUMBER(2),
S_FLAG NUMBER(1),
constraint PK_SY_COMM_COMPLETE_SETTINGS primary key (CMLE_ID)
);
comment on table SY_COMM_COMPLETE_SETTINGS is '通用完成度表（记录某几个服务形成的主服务的字段填写完整度）';
comment on column SY_COMM_COMPLETE_SETTINGS.CMLE_ID is '主键，UUID';
comment on column SY_COMM_COMPLETE_SETTINGS.SRC_SERV_CODE is '主服务code';
comment on column SY_COMM_COMPLETE_SETTINGS.SERV_CODE is '服务ID';
comment on column SY_COMM_COMPLETE_SETTINGS.ITEM_CODE is '字段ID，超长是因为要存等价服务串的原因';
comment on column SY_COMM_COMPLETE_SETTINGS.ITEM_WEIGHT is '字段权重，99代表1对多的关联表外键标识';
comment on column SY_COMM_COMPLETE_SETTINGS.S_FLAG is '启用标志，1：是；2：否';
create table SY_COMM_CONFIG(
CONF_ID VARCHAR2(40) not null,
CONF_NAME VARCHAR2(40),
CONF_KEY VARCHAR2(40),
CONF_VALUE VARCHAR2(2000),
CONF_FLAG NUMBER(4),
CONF_ORDER NUMBER(4),
CONF_MEMO VARCHAR2(400),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_MTIME VARCHAR2(23),
constraint PK_SY_COMM_CONFIG primary key (CONF_ID)
);
comment on table SY_COMM_CONFIG is '配置';
comment on column SY_COMM_CONFIG.CONF_ID is '配置主键';
comment on column SY_COMM_CONFIG.CONF_NAME is '配置名称';
comment on column SY_COMM_CONFIG.CONF_KEY is '配置key';
comment on column SY_COMM_CONFIG.CONF_VALUE is '配置值';
comment on column SY_COMM_CONFIG.CONF_FLAG is '前端使用？ 1：是；2：否（缺省）';
comment on column SY_COMM_CONFIG.CONF_ORDER is '配置排序';
comment on column SY_COMM_CONFIG.CONF_MEMO is '配置说明';
comment on column SY_COMM_CONFIG.S_FLAG is '启用标志，1：是；2否';
comment on column SY_COMM_CONFIG.S_CMPY is '公司主键';
comment on column SY_COMM_CONFIG.S_PUBLIC is '公共标志，1：是；2否';
comment on column SY_COMM_CONFIG.S_MTIME is '更新时间';
create table SY_COMM_DATA_VIEW(
DV_ID VARCHAR2(40) not null,
DV_NAME VARCHAR2(200),
DS_TYPE VARCHAR2(20),
DS_CONF VARCHAR2(4000),
VIEW_TYPE VARCHAR2(20),
DV_CONFIG VARCHAR2(2000),
S_USER VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
DS_COUNT NUMBER(4),
DS_CMPY VARCHAR2(40),
SHOW_TABLE NUMBER(4),
THEME VARCHAR2(20),
constraint PK_SY_COMM_DATA_VIEW primary key (DV_ID)
);
comment on table SY_COMM_DATA_VIEW is ' 数据展现';
comment on column SY_COMM_DATA_VIEW.DV_ID is 'ID';
comment on column SY_COMM_DATA_VIEW.DV_NAME is '名称';
comment on column SY_COMM_DATA_VIEW.DS_TYPE is '数据源类型';
comment on column SY_COMM_DATA_VIEW.DS_CONF is '数据源配置';
comment on column SY_COMM_DATA_VIEW.VIEW_TYPE is '展示类型';
comment on column SY_COMM_DATA_VIEW.DV_CONFIG is '数据展示配置';
comment on column SY_COMM_DATA_VIEW.S_USER is '最后修改用户';
comment on column SY_COMM_DATA_VIEW.S_CMPY is '用户所属公司';
comment on column SY_COMM_DATA_VIEW.S_MTIME is '最后修改时间';
comment on column SY_COMM_DATA_VIEW.S_FLAG is '删除标识，1：正常，2：删除';
comment on column SY_COMM_DATA_VIEW.DS_COUNT is '最大记录数';
comment on column SY_COMM_DATA_VIEW.DS_CMPY is '数据源公司字段';
comment on column SY_COMM_DATA_VIEW.SHOW_TABLE is '是否展示表格(1：展示，2：不展示)';
comment on column SY_COMM_DATA_VIEW.THEME is '风格';
create table SY_COMM_DATA_VIEW_ITEM(
ITEM_ID VARCHAR2(40) not null,
DV_ID VARCHAR2(40),
ITEM_CODE VARCHAR2(80),
ITEM_NAME VARCHAR2(200),
ITEM_ALIGN VARCHAR2(20),
ITEM_SORT NUMBER(10),
ITEM_TYPE VARCHAR2(20),
ITEM_CONFIG VARCHAR2(2000),
ITEM_VIEW_TYPE VARCHAR2(20),
S_MTIME VARCHAR2(23),
DICT_ID VARCHAR2(40),
ITEM_URL VARCHAR2(200),
SHOW_SUM NUMBER(4),
TABLE_SHOW NUMBER(4),
constraint PK_SY_COMM_DATA_VIEW_ITEM primary key (ITEM_ID)
);
comment on table SY_COMM_DATA_VIEW_ITEM is ' 数据展现数据项';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_ID is '数据项ID';
comment on column SY_COMM_DATA_VIEW_ITEM.DV_ID is '展现ID';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_CODE is '编号';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_NAME is '名称';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_ALIGN is '对齐方式';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_SORT is '排序';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_TYPE is '数据项类型';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_CONFIG is '数据展示项配置';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_VIEW_TYPE is '数据展示类型';
comment on column SY_COMM_DATA_VIEW_ITEM.S_MTIME is '最后修改时间';
comment on column SY_COMM_DATA_VIEW_ITEM.DICT_ID is '对应字典编码';
comment on column SY_COMM_DATA_VIEW_ITEM.ITEM_URL is '对应URL，支持穿透查询';
comment on column SY_COMM_DATA_VIEW_ITEM.SHOW_SUM is '是否显示合计';
comment on column SY_COMM_DATA_VIEW_ITEM.TABLE_SHOW is '表格显示(1：是，2：否)';
create table SY_COMM_DESK(
DS_ID VARCHAR2(40) not null,
DS_NAME VARCHAR2(100),
MENU_ID VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(4),
S_PUBLIC NUMBER(4),
DS_ICON VARCHAR2(40),
DS_MENU_FLAG VARCHAR2(4),
DS_NORMAL_FLAG VARCHAR2(4),
DS_ALERT_FLAG VARCHAR2(4),
DS_COUNT_SERV VARCHAR2(60),
S_MTIME VARCHAR2(23),
DS_FOLDER_FLAG VARCHAR2(4),
DS_FOLDER_MINBLOCK VARCHAR2(800),
DS_FOLDER_MINBLOCK_NAME VARCHAR2(800),
constraint PK_SY_COMM_DESK primary key (DS_ID)
);
comment on table SY_COMM_DESK is '工作台管理';
comment on column SY_COMM_DESK.DS_ID is '图标主键';
comment on column SY_COMM_DESK.DS_NAME is '图标名称';
comment on column SY_COMM_DESK.MENU_ID is '关联菜单编码';
comment on column SY_COMM_DESK.S_CMPY is '公司主键';
comment on column SY_COMM_DESK.S_FLAG is '启用标志，1：是；2否';
comment on column SY_COMM_DESK.S_PUBLIC is '公共标志，1：是；2否';
comment on column SY_COMM_DESK.DS_ICON is '';
comment on column SY_COMM_DESK.DS_MENU_FLAG is '';
comment on column SY_COMM_DESK.DS_NORMAL_FLAG is '';
comment on column SY_COMM_DESK.DS_ALERT_FLAG is '';
comment on column SY_COMM_DESK.DS_COUNT_SERV is '';
comment on column SY_COMM_DESK.S_MTIME is '更新时间';
comment on column SY_COMM_DESK.DS_FOLDER_FLAG is '文件夹图标';
comment on column SY_COMM_DESK.DS_FOLDER_MINBLOCK is '文件夹包含的图标';
comment on column SY_COMM_DESK.DS_FOLDER_MINBLOCK_NAME is '文件夹包含的图标名称';
create table SY_COMM_ENTITY(
ENTITY_ID VARCHAR2(40) not null,
TITLE VARCHAR2(1000),
S_EMERGENCY NUMBER(4),
MEMO VARCHAR2(4000),
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
S_USER VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_ATIME VARCHAR2(23),
S_MTIME VARCHAR2(23),
S_WF_NODE VARCHAR2(2000),
S_WF_USER VARCHAR2(2000),
S_WF_STATE NUMBER(4),
S_WF_INST VARCHAR2(40),
SERV_NAME VARCHAR2(40),
ENTITY_CODE VARCHAR2(200),
SERV_SRC_ID VARCHAR2(40),
S_FLAG NUMBER(4),
S_WF_USER_STATE VARCHAR2(4000),
DEL_USER VARCHAR2(40),
DEL_ODEPT VARCHAR2(40),
S_HAS_PS_MIND VARCHAR2(1000),
QUERY_ODEPT VARCHAR2(40),
constraint PK_SY_COMM_ENTITY primary key (ENTITY_ID)
);
comment on table SY_COMM_ENTITY is '完整数据实体表。所有审批单的数据在此表都会有记录。';
comment on column SY_COMM_ENTITY.ENTITY_ID is '数据ID';
comment on column SY_COMM_ENTITY.TITLE is '标题';
comment on column SY_COMM_ENTITY.S_EMERGENCY is '缓急';
comment on column SY_COMM_ENTITY.MEMO is '备注';
comment on column SY_COMM_ENTITY.SERV_ID is '服务ID';
comment on column SY_COMM_ENTITY.DATA_ID is '数据ID';
comment on column SY_COMM_ENTITY.S_USER is '所属用户ID。如起草人';
comment on column SY_COMM_ENTITY.S_DEPT is '所属处室';
comment on column SY_COMM_ENTITY.S_TDEPT is '所属部门';
comment on column SY_COMM_ENTITY.S_ODEPT is '所属机构';
comment on column SY_COMM_ENTITY.S_CMPY is '所属公司';
comment on column SY_COMM_ENTITY.S_ATIME is '增加时间';
comment on column SY_COMM_ENTITY.S_MTIME is '修改时间';
comment on column SY_COMM_ENTITY.S_WF_NODE is '办理中的节点名称。多个名称之间使用逗号分隔';
comment on column SY_COMM_ENTITY.S_WF_USER is '办理中的用户ID。多个ID之间使用逗号风格';
comment on column SY_COMM_ENTITY.S_WF_STATE is '流程状态。';
comment on column SY_COMM_ENTITY.S_WF_INST is '所属流程实例';
comment on column SY_COMM_ENTITY.SERV_NAME is '功能名称';
comment on column SY_COMM_ENTITY.ENTITY_CODE is '编号';
comment on column SY_COMM_ENTITY.SERV_SRC_ID is '引用自';
comment on column SY_COMM_ENTITY.S_FLAG is '有效标志';
comment on column SY_COMM_ENTITY.S_WF_USER_STATE is '流程用户状态';
comment on column SY_COMM_ENTITY.DEL_USER is '删除用户';
comment on column SY_COMM_ENTITY.DEL_ODEPT is '删除机构';
comment on column SY_COMM_ENTITY.S_HAS_PS_MIND is '指定公司有批示意见';
comment on column SY_COMM_ENTITY.QUERY_ODEPT is '';
create table SY_COMM_ENTITY_TAG(
ET_ID VARCHAR2(40) not null,
TAG_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
SERV_ID VARCHAR2(40),
S_USER VARCHAR2(40),
S_ATIME VARCHAR2(23),
constraint PK_SY_COMM_ENTITY_TAG primary key (ET_ID)
);
comment on table SY_COMM_ENTITY_TAG is '审批单与标签关联表，保存审批单关联的标签';
comment on column SY_COMM_ENTITY_TAG.ET_ID is '关联数据ID';
comment on column SY_COMM_ENTITY_TAG.TAG_ID is '标签ID';
comment on column SY_COMM_ENTITY_TAG.DATA_ID is '关联审批ID';
comment on column SY_COMM_ENTITY_TAG.SERV_ID is '服务ID';
comment on column SY_COMM_ENTITY_TAG.S_USER is '创建用户';
comment on column SY_COMM_ENTITY_TAG.S_ATIME is '创建时间';
create table SY_COMM_EXPRSSION(
EXP_ID VARCHAR2(40) not null,
EXP_NAME VARCHAR2(80),
EXP_TYPE NUMBER(4),
EXP_CONTENT VARCHAR2(400),
EXP_SORT NUMBER(4),
EXP_MEMO VARCHAR2(400),
S_MTIME VARCHAR2(23),
constraint PK_SY_COMM_EXPRSSION primary key (EXP_ID)
);
comment on table SY_COMM_EXPRSSION is '表达式，正则表达式或者自定义表达式';
comment on column SY_COMM_EXPRSSION.EXP_ID is '表达式主键，自增';
comment on column SY_COMM_EXPRSSION.EXP_NAME is '表达式名称';
comment on column SY_COMM_EXPRSSION.EXP_TYPE is '表达式类型，1：正则表达式；2：数据格式表达';
comment on column SY_COMM_EXPRSSION.EXP_CONTENT is '表达式内容';
comment on column SY_COMM_EXPRSSION.EXP_SORT is '排序';
comment on column SY_COMM_EXPRSSION.EXP_MEMO is '表达式说明';
comment on column SY_COMM_EXPRSSION.S_MTIME is '更新时间';
create table SY_COMM_FAVORITES(
FAVORITE_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40),
SERV_ID VARCHAR2(40),
SERV_GROUP VARCHAR2(100),
DATA_ID VARCHAR2(40),
DATA_DIS_NAME VARCHAR2(200),
DATA_OWNER VARCHAR2(40),
S_USER VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_ATIME VARCHAR2(23),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
TAGS VARCHAR2(2000),
constraint PK_SY_COMM_FAVORITES primary key (FAVORITE_ID)
);
comment on table SY_COMM_FAVORITES is '收藏';
comment on column SY_COMM_FAVORITES.FAVORITE_ID is '主键';
comment on column SY_COMM_FAVORITES.USER_CODE is '用户编码';
comment on column SY_COMM_FAVORITES.SERV_ID is '服务ID';
comment on column SY_COMM_FAVORITES.SERV_GROUP is '服务分组';
comment on column SY_COMM_FAVORITES.DATA_ID is '数据项ID';
comment on column SY_COMM_FAVORITES.DATA_DIS_NAME is '数据项显示名称';
comment on column SY_COMM_FAVORITES.DATA_OWNER is '数据所属人';
comment on column SY_COMM_FAVORITES.S_USER is '最后修改用户';
comment on column SY_COMM_FAVORITES.S_CMPY is '用户所属公司';
comment on column SY_COMM_FAVORITES.S_ATIME is '创建时间';
comment on column SY_COMM_FAVORITES.S_MTIME is '最后修改时间';
comment on column SY_COMM_FAVORITES.S_FLAG is '删除标识，1：正常，2：删除';
comment on column SY_COMM_FAVORITES.TAGS is '标签';
create table SY_COMM_FAVORITES_MARK(
ID VARCHAR2(40),
FAVORITE_ID VARCHAR2(40),
MARK_ID VARCHAR2(40),
constraint PK_SY_COMM_FAVORITES_MARK primary key (ID)
);
comment on table SY_COMM_FAVORITES_MARK is '';
comment on column SY_COMM_FAVORITES_MARK.ID is '主键';
comment on column SY_COMM_FAVORITES_MARK.FAVORITE_ID is '收藏夹ID';
comment on column SY_COMM_FAVORITES_MARK.MARK_ID is '标签ID';
create table SY_COMM_FILE(
FILE_ID VARCHAR2(40) not null,
FILE_NAME VARCHAR2(400),
DIS_NAME VARCHAR2(400),
FILE_PATH VARCHAR2(400),
FILE_SIZE NUMBER(12),
FILE_MTYPE VARCHAR2(100),
FILE_MEMO VARCHAR2(400),
FILE_SORT NUMBER(4),
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
DATA_TYPE NUMBER(4),
FILE_CAT VARCHAR2(40),
ITEM_CODE VARCHAR2(40),
WF_NI_ID VARCHAR2(40),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(100),
S_DEPT VARCHAR2(40),
S_DNAME VARCHAR2(100),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
FILE_HIST_COUNT NUMBER(4),
FILE_CHECKSUM VARCHAR2(40),
ORIG_FILE_ID VARCHAR2(40),
constraint PK_SY_COMM_FILE primary key (FILE_ID)
);
comment on table SY_COMM_FILE is '系统文件';
comment on column SY_COMM_FILE.FILE_ID is '文件ID';
comment on column SY_COMM_FILE.FILE_NAME is '文件名称';
comment on column SY_COMM_FILE.DIS_NAME is '显示名称';
comment on column SY_COMM_FILE.FILE_PATH is '文件路径';
comment on column SY_COMM_FILE.FILE_SIZE is '文件大小';
comment on column SY_COMM_FILE.FILE_MTYPE is '文件MIME类型';
comment on column SY_COMM_FILE.FILE_MEMO is '文件说明';
comment on column SY_COMM_FILE.FILE_SORT is '文件排序';
comment on column SY_COMM_FILE.SERV_ID is '服务ID';
comment on column SY_COMM_FILE.DATA_ID is 'DATA_ID';
comment on column SY_COMM_FILE.DATA_TYPE is '类型?1:卡片,2:字段';
comment on column SY_COMM_FILE.FILE_CAT is '分类';
comment on column SY_COMM_FILE.ITEM_CODE is '类型字段';
comment on column SY_COMM_FILE.WF_NI_ID is '工作流节点实例ID';
comment on column SY_COMM_FILE.S_FLAG is '启用标志? 1：是；2否';
comment on column SY_COMM_FILE.S_USER is '用户编码';
comment on column SY_COMM_FILE.S_UNAME is '用户名称';
comment on column SY_COMM_FILE.S_DEPT is '部门编码';
comment on column SY_COMM_FILE.S_DNAME is '部门名称';
comment on column SY_COMM_FILE.S_CMPY is '公司主键';
comment on column SY_COMM_FILE.S_MTIME is '更新时间';
comment on column SY_COMM_FILE.FILE_HIST_COUNT is '历史文件数量';
comment on column SY_COMM_FILE.FILE_CHECKSUM is '校验码';
comment on column SY_COMM_FILE.ORIG_FILE_ID is '原始物理文件ID。此字段有值的数据，没有物理文件，物理文件为此ID对应数据的物理文件。';
create table SY_COMM_FILE_HIS(
HISTFILE_ID VARCHAR2(40) not null,
FILE_ID VARCHAR2(40),
HISTFILE_PATH VARCHAR2(400),
HISTFILE_SIZE NUMBER(12),
HISTFILE_MTYPE VARCHAR2(100),
HISTFILE_MEMO VARCHAR2(400),
HISTFILE_VERSION NUMBER(4),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(100),
S_DEPT VARCHAR2(40),
S_DNAME VARCHAR2(100),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
FILE_CHECKSUM VARCHAR2(40),
constraint PK_SY_COMM_FILE_HIS primary key (HISTFILE_ID)
);
comment on table SY_COMM_FILE_HIS is '历史文件';
comment on column SY_COMM_FILE_HIS.HISTFILE_ID is '历史文件主键';
comment on column SY_COMM_FILE_HIS.FILE_ID is '所属文件ID';
comment on column SY_COMM_FILE_HIS.HISTFILE_PATH is '文件存储路径';
comment on column SY_COMM_FILE_HIS.HISTFILE_SIZE is '文件大小';
comment on column SY_COMM_FILE_HIS.HISTFILE_MTYPE is '文件mimetype';
comment on column SY_COMM_FILE_HIS.HISTFILE_MEMO is '文件说明';
comment on column SY_COMM_FILE_HIS.HISTFILE_VERSION is '文件版本号';
comment on column SY_COMM_FILE_HIS.S_FLAG is '删除标识， 1：正常， 2：已删除';
comment on column SY_COMM_FILE_HIS.S_USER is '操作用户';
comment on column SY_COMM_FILE_HIS.S_UNAME is '操作用户名称';
comment on column SY_COMM_FILE_HIS.S_DEPT is '操作用户部门';
comment on column SY_COMM_FILE_HIS.S_DNAME is '操作用户部门名称';
comment on column SY_COMM_FILE_HIS.S_CMPY is '操作用户公司';
comment on column SY_COMM_FILE_HIS.S_MTIME is '操作时间';
comment on column SY_COMM_FILE_HIS.FILE_CHECKSUM is '校验码';
create table SY_COMM_MENU(
MENU_ID VARCHAR2(40) not null,
MENU_NAME VARCHAR2(60),
MENU_TYPE NUMBER(4),
MENU_INFO VARCHAR2(400),
MENU_PID VARCHAR2(40),
MENU_ORDER NUMBER(8),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_PUBLIC NUMBER(4),
MENU_ICON VARCHAR2(80),
MENU_LEVEL NUMBER(4),
CODE_PATH VARCHAR2(400),
S_MTIME VARCHAR2(23),
MENU_AREA VARCHAR2(10),
MENU_TIP VARCHAR2(200),
MENU_TODO_FLAG NUMBER(4),
MENU_TODO_TYPE VARCHAR2(400),
DS_NAME VARCHAR2(40),
DS_MENU_FLAG NUMBER(4),
DS_NORMAL_FLAG NUMBER(4),
DS_FOLDER_FLAG NUMBER(4),
DS_ICON VARCHAR2(80),
MENU_NODE_VIRTUAL VARCHAR2(4),
MENU_OTYPE NUMBER(4),
MENU_SCOPE NUMBER(4),
constraint PK_SY_COMM_MENU primary key (MENU_ID)
);
comment on table SY_COMM_MENU is '菜单';
comment on column SY_COMM_MENU.MENU_ID is '菜单主键';
comment on column SY_COMM_MENU.MENU_NAME is '菜单名称';
comment on column SY_COMM_MENU.MENU_TYPE is '菜单类型，1：服务；2：URL；3：JS';
comment on column SY_COMM_MENU.MENU_INFO is '菜单信息，服务类型的菜单对应服务主键';
comment on column SY_COMM_MENU.MENU_PID is '父菜单主键';
comment on column SY_COMM_MENU.MENU_ORDER is '菜单排序';
comment on column SY_COMM_MENU.S_FLAG is '启用标志，1：是；2否';
comment on column SY_COMM_MENU.S_CMPY is '公司主键';
comment on column SY_COMM_MENU.S_PUBLIC is '公共标志，1：是；2否';
comment on column SY_COMM_MENU.MENU_ICON is '菜单图标';
comment on column SY_COMM_MENU.MENU_LEVEL is '菜单层级';
comment on column SY_COMM_MENU.CODE_PATH is '菜单路径';
comment on column SY_COMM_MENU.S_MTIME is '更新时间';
comment on column SY_COMM_MENU.MENU_AREA is '菜单显示类型';
comment on column SY_COMM_MENU.MENU_TIP is '菜单提示信息';
comment on column SY_COMM_MENU.MENU_TODO_FLAG is '启用提醒?';
comment on column SY_COMM_MENU.MENU_TODO_TYPE is '提醒对应类型';
comment on column SY_COMM_MENU.DS_NAME is '图标名称';
comment on column SY_COMM_MENU.DS_MENU_FLAG is '桌面显示菜单?，1：是（缺省）；2：否';
comment on column SY_COMM_MENU.DS_NORMAL_FLAG is '桌面码头图标?，1：是（缺省）；2：否';
comment on column SY_COMM_MENU.DS_FOLDER_FLAG is '桌面文件夹?，1：是；2：否（缺省）';
comment on column SY_COMM_MENU.DS_ICON is '桌面图标';
comment on column SY_COMM_MENU.MENU_NODE_VIRTUAL is '是否虚拟节点';
comment on column SY_COMM_MENU.MENU_OTYPE is '菜单打开方式，1：Tab页；2：新页面；';
comment on column SY_COMM_MENU.MENU_SCOPE is '范围';
create table SY_COMM_MESSAGE(
MSG_ID VARCHAR2(40) not null,
MSG_CODE VARCHAR2(40),
MSG_NAME VARCHAR2(400),
S_PUBLIC NUMBER(4),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(23),
constraint PK_SY_COMM_MESSAGE primary key (MSG_ID)
);
comment on table SY_COMM_MESSAGE is '提示信息';
comment on column SY_COMM_MESSAGE.MSG_ID is '信息主键，UUID';
comment on column SY_COMM_MESSAGE.MSG_CODE is '信息编码';
comment on column SY_COMM_MESSAGE.MSG_NAME is '信息内容';
comment on column SY_COMM_MESSAGE.S_PUBLIC is '公共标志，1：是；2：否';
comment on column SY_COMM_MESSAGE.S_CMPY is '公司编码';
comment on column SY_COMM_MESSAGE.S_FLAG is '有效标志，1：是；2：否';
comment on column SY_COMM_MESSAGE.S_MTIME is '更新时间';
create table SY_COMM_MIND(
MIND_ID VARCHAR2(40) not null,
MIND_CONTENT VARCHAR2(4000),
MIND_CODE VARCHAR2(40),
MIND_TIME VARCHAR2(20),
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
WF_NI_ID VARCHAR2(40),
MIND_DIS_RULE NUMBER(1),
MIND_SORT NUMBER(4),
MIND_TYPE NUMBER(1),
BD_USER VARCHAR2(40),
BD_UNAME VARCHAR2(40),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_DNAME VARCHAR2(100),
S_TDEPT VARCHAR2(40),
S_TNAME VARCHAR2(100),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(1),
S_MTIME VARCHAR2(23),
USUAL_ID VARCHAR2(40),
MIND_IS_TERMINAL NUMBER(4),
S_ODEPT VARCHAR2(40),
MIND_FILE VARCHAR2(300),
MIND_CODE_NAME VARCHAR2(100),
WF_NI_NAME VARCHAR2(100),
MIND_LEVEL NUMBER(4),
IS_BD NUMBER(1),
constraint PK_SY_COMM_MIND primary key (MIND_ID)
);
comment on table SY_COMM_MIND is '意见表';
comment on column SY_COMM_MIND.MIND_ID is '意见主键';
comment on column SY_COMM_MIND.MIND_CONTENT is '意见内容,记录意见内容或文件ID';
comment on column SY_COMM_MIND.MIND_CODE is '意见编码';
comment on column SY_COMM_MIND.MIND_TIME is '填意见时间';
comment on column SY_COMM_MIND.SERV_ID is '服务主键';
comment on column SY_COMM_MIND.DATA_ID is '数据主键';
comment on column SY_COMM_MIND.WF_NI_ID is '流程节点实例ID';
comment on column SY_COMM_MIND.MIND_DIS_RULE is '意见显示规则：1，部门；2，公司';
comment on column SY_COMM_MIND.MIND_SORT is '意见排序号';
comment on column SY_COMM_MIND.MIND_TYPE is '意见类型：1，普通意见，2，手写意见,3，附件';
comment on column SY_COMM_MIND.BD_USER is '补登用户编码';
comment on column SY_COMM_MIND.BD_UNAME is '补登用户名称';
comment on column SY_COMM_MIND.S_USER is '填意见用户编码';
comment on column SY_COMM_MIND.S_UNAME is '填意见用户名称';
comment on column SY_COMM_MIND.S_DEPT is '部门编码';
comment on column SY_COMM_MIND.S_DNAME is '部门名称';
comment on column SY_COMM_MIND.S_TDEPT is '有效部门编码';
comment on column SY_COMM_MIND.S_TNAME is '有效部门名称';
comment on column SY_COMM_MIND.S_CMPY is '公司编码';
comment on column SY_COMM_MIND.S_FLAG is '启用标志:1,启用；2：未启用';
comment on column SY_COMM_MIND.S_MTIME is '更新时间';
comment on column SY_COMM_MIND.USUAL_ID is '';
comment on column SY_COMM_MIND.MIND_IS_TERMINAL is '';
comment on column SY_COMM_MIND.S_ODEPT is '机构代码';
comment on column SY_COMM_MIND.MIND_FILE is '';
comment on column SY_COMM_MIND.MIND_CODE_NAME is '意见编码名称';
comment on column SY_COMM_MIND.WF_NI_NAME is '流程节点';
comment on column SY_COMM_MIND.MIND_LEVEL is '意见级别,30:公司领导,20:部门领导,10:处室领导,0:普通';
comment on column SY_COMM_MIND.IS_BD is '是否补登; 1:是，2:否; 用于标识BD_USER，BD_UNAME是补登用户还是代理办理用户。';
create table SY_COMM_MIND_CODE(
CODE_ID VARCHAR2(40) not null,
CODE_NAME VARCHAR2(40),
MIND_TYPE VARCHAR2(40),
MIND_DIS_RULE NUMBER(4),
MIND_LEVEL NUMBER(4),
PUBLIC_LEVEL NUMBER(4),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_CMPY VARCHAR2(40),
CODE_SORT NUMBER(4),
S_MTIME VARCHAR2(23),
REGULAR_TYPE VARCHAR2(80),
IF_HAND NUMBER(1),
MIND_DESC VARCHAR2(200),
constraint PK_SY_COMM_MIND_CODE primary key (CODE_ID)
);
comment on table SY_COMM_MIND_CODE is '意见编码表';
comment on column SY_COMM_MIND_CODE.CODE_ID is '编码主键，形式如:QF_1111';
comment on column SY_COMM_MIND_CODE.CODE_NAME is '编码名称';
comment on column SY_COMM_MIND_CODE.MIND_TYPE is '意见类型，形式如：QF';
comment on column SY_COMM_MIND_CODE.MIND_DIS_RULE is '意见显示规则：1,部门内可见,2,机构内可见,3,机构外可见';
comment on column SY_COMM_MIND_CODE.MIND_LEVEL is '意见级别,30:公司领导,20:部门领导,10:处室领导,0:普通';
comment on column SY_COMM_MIND_CODE.PUBLIC_LEVEL is '共享级别：1，一级；2，二级；3，三级';
comment on column SY_COMM_MIND_CODE.S_FLAG is '启用标志：1，启用；2，未启用';
comment on column SY_COMM_MIND_CODE.S_USER is '用户编码';
comment on column SY_COMM_MIND_CODE.S_CMPY is '公司编码';
comment on column SY_COMM_MIND_CODE.CODE_SORT is '排序';
comment on column SY_COMM_MIND_CODE.S_MTIME is '更新时间';
comment on column SY_COMM_MIND_CODE.REGULAR_TYPE is '固定意见ID';
comment on column SY_COMM_MIND_CODE.IF_HAND is '启用启用手写笔？';
comment on column SY_COMM_MIND_CODE.MIND_DESC is '说明';
create table SY_COMM_MIND_USUAL(
MIND_ID VARCHAR2(40) not null,
MIND_CONTENT VARCHAR2(4000),
MIND_TYPE NUMBER(4),
S_PUBLIC NUMBER(4),
S_USER VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(4),
REGULAR_TYPE VARCHAR2(80),
S_MTIME VARCHAR2(23),
MIND_VALUE NUMBER(4),
MIND_SORT NUMBER(4),
constraint PK_SY_COMM_MIND_USUAL primary key (MIND_ID)
);
comment on table SY_COMM_MIND_USUAL is '常用意见表';
comment on column SY_COMM_MIND_USUAL.MIND_ID is '意见ID';
comment on column SY_COMM_MIND_USUAL.MIND_CONTENT is '意见内容';
comment on column SY_COMM_MIND_USUAL.MIND_TYPE is '意见类型：1，普通意见，2，手写意见';
comment on column SY_COMM_MIND_USUAL.S_PUBLIC is '共享标志';
comment on column SY_COMM_MIND_USUAL.S_USER is '用户编码';
comment on column SY_COMM_MIND_USUAL.S_TDEPT is '有效部门编码';
comment on column SY_COMM_MIND_USUAL.S_CMPY is '公司编码';
comment on column SY_COMM_MIND_USUAL.S_FLAG is '启用标志：1，启用；2，未启用';
comment on column SY_COMM_MIND_USUAL.REGULAR_TYPE is '固定意见类型';
comment on column SY_COMM_MIND_USUAL.S_MTIME is '更新时间';
comment on column SY_COMM_MIND_USUAL.MIND_VALUE is '意见属性值';
comment on column SY_COMM_MIND_USUAL.MIND_SORT is '固定意见排序';
create table SY_COMM_MSG_LISTENER(
LIS_ID VARCHAR2(40) not null,
LIS_CLASS VARCHAR2(200),
LIS_CONF VARCHAR2(2000),
LIST_DESC VARCHAR2(200),
S_FLAG NUMBER(4),
LIS_SORT NUMBER(10),
S_MTIEM VARCHAR2(23),
LIS_ACTION VARCHAR2(4000),
constraint PK_SY_COMM_MSG_LISTENER primary key (LIS_ID)
);
comment on table SY_COMM_MSG_LISTENER is '消息监听';
comment on column SY_COMM_MSG_LISTENER.LIS_ID is '监听ID';
comment on column SY_COMM_MSG_LISTENER.LIS_CLASS is '类';
comment on column SY_COMM_MSG_LISTENER.LIS_CONF is '配置';
comment on column SY_COMM_MSG_LISTENER.LIST_DESC is '描述';
comment on column SY_COMM_MSG_LISTENER.S_FLAG is '启用';
comment on column SY_COMM_MSG_LISTENER.LIS_SORT is '排序';
comment on column SY_COMM_MSG_LISTENER.S_MTIEM is '更新时间';
comment on column SY_COMM_MSG_LISTENER.LIS_ACTION is '监听消息类型';
create table SY_COMM_MSG_TYPE(
USER_CODE VARCHAR2(40) not null,
RT_TYPE VARCHAR2(40),
S_MTIME VARCHAR2(23),
constraint PK_SY_COMM_MSG_TYPE primary key (USER_CODE)
);
comment on table SY_COMM_MSG_TYPE is '待办提醒方式服务';
comment on column SY_COMM_MSG_TYPE.USER_CODE is '用户ID';
comment on column SY_COMM_MSG_TYPE.RT_TYPE is '提醒方式。来自数据字典，SY_REMIND_TYPE。默认的方式有，短信、邮件、RTX。';
comment on column SY_COMM_MSG_TYPE.S_MTIME is '修改时间';
create table SY_COMM_RECENTLY_USE(
RECENTLY_ID VARCHAR2(40) not null,
RECENTLY_USER VARCHAR2(40),
RECENTLY_TIME VARCHAR2(40),
RECENTLY_MENU_URL VARCHAR2(400),
RECENTLY_MENU_TYPE VARCHAR2(4),
RECENTLY_MENU_NAME VARCHAR2(80),
RECENTLY_MENU_PIC VARCHAR2(40),
RECENTLY_PIC_TIP VARCHAR2(40),
constraint PK_SY_COMM_RECENTLY_USE primary key (RECENTLY_ID)
);
comment on table SY_COMM_RECENTLY_USE is '最近使用';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_ID is 'ID';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_USER is '最近使用人';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_TIME is '最近一次时间';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_MENU_URL is '菜单地址';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_MENU_TYPE is '菜单类型';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_MENU_NAME is '菜单名称';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_MENU_PIC is '菜单图标';
comment on column SY_COMM_RECENTLY_USE.RECENTLY_PIC_TIP is 'TIP';
create table SY_COMM_REMIND(
REM_ID VARCHAR2(40) not null,
REM_TITLE VARCHAR2(500),
REM_CONTENT VARCHAR2(2000),
REM_URL VARCHAR2(1000),
S_USER VARCHAR2(40),
S_ATIME VARCHAR2(30),
EXECUTE_TIME VARCHAR2(30),
FINISH_TIME VARCHAR2(30),
STATUS VARCHAR2(20),
TYPE VARCHAR2(400),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(30),
S_EMERGENCY NUMBER(4),
SERV_ID VARCHAR2(200),
SERV_SRC_ID VARCHAR2(200),
DATA_ID VARCHAR2(200),
REM_GROUP VARCHAR2(400),
USER_ID VARCHAR2(400),
REMOTE_URL VARCHAR2(1000),
constraint PK_SY_COMM_REMIND primary key (REM_ID)
);
comment on table SY_COMM_REMIND is '提醒消息表';
comment on column SY_COMM_REMIND.REM_ID is '主键';
comment on column SY_COMM_REMIND.REM_TITLE is '提醒标题';
comment on column SY_COMM_REMIND.REM_CONTENT is '提醒内容';
comment on column SY_COMM_REMIND.REM_URL is '提醒URL';
comment on column SY_COMM_REMIND.S_USER is '提醒人';
comment on column SY_COMM_REMIND.S_ATIME is '提醒添加时间';
comment on column SY_COMM_REMIND.EXECUTE_TIME is '提醒时间';
comment on column SY_COMM_REMIND.FINISH_TIME is '提醒完成时间';
comment on column SY_COMM_REMIND.STATUS is '提醒状态，WAITING，待提醒，FINISHED；已完成；ERROR，已出错；CANCLE，已取消';
comment on column SY_COMM_REMIND.TYPE is '提醒类型，TODO，待办；EMAIL，邮件；MESSAGE，短消息；INTIME，即时通讯；';
comment on column SY_COMM_REMIND.S_CMPY is '公司ID';
comment on column SY_COMM_REMIND.S_FLAG is '删除标记，1：有效；2：无效';
comment on column SY_COMM_REMIND.S_MTIME is '更新时间';
comment on column SY_COMM_REMIND.S_EMERGENCY is '紧急程度，10，一般；20，紧急；30，特急';
comment on column SY_COMM_REMIND.SERV_ID is '服务ID';
comment on column SY_COMM_REMIND.SERV_SRC_ID is 'SRC服务ID';
comment on column SY_COMM_REMIND.DATA_ID is '数据ID';
comment on column SY_COMM_REMIND.REM_GROUP is '提醒消息分组';
comment on column SY_COMM_REMIND.USER_ID is '被提醒人';
comment on column SY_COMM_REMIND.REMOTE_URL is '外系统应用提醒URL';
create table SY_COMM_REMIND_GROUP(
GROUP_ID VARCHAR2(40) not null,
S_USER VARCHAR2(40),
REM_GROUP VARCHAR2(400),
constraint PK_SY_COMM_REMIND_GROUP primary key (GROUP_ID)
);
comment on table SY_COMM_REMIND_GROUP is '提醒消息的分组类型';
comment on column SY_COMM_REMIND_GROUP.GROUP_ID is '主键';
comment on column SY_COMM_REMIND_GROUP.S_USER is '当前用户';
comment on column SY_COMM_REMIND_GROUP.REM_GROUP is '消息分组名称';
create table SY_COMM_REMIND_HIS(
REM_ID VARCHAR2(40) not null,
REM_TITLE VARCHAR2(500),
REM_CONTENT VARCHAR2(2000),
REM_URL VARCHAR2(1000),
S_USER VARCHAR2(40),
S_ATIME VARCHAR2(30),
EXECUTE_TIME VARCHAR2(30),
FINISH_TIME VARCHAR2(30),
STATUS VARCHAR2(20),
TYPE VARCHAR2(400),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(30),
S_EMERGENCY NUMBER(4),
SERV_ID VARCHAR2(200),
SERV_SRC_ID VARCHAR2(200),
DATA_ID VARCHAR2(200),
constraint PK_SY_COMM_REMIND_HIS primary key (REM_ID)
);
comment on table SY_COMM_REMIND_HIS is '提醒消息历史表';
comment on column SY_COMM_REMIND_HIS.REM_ID is '主键';
comment on column SY_COMM_REMIND_HIS.REM_TITLE is '提醒标题';
comment on column SY_COMM_REMIND_HIS.REM_CONTENT is '提醒内容';
comment on column SY_COMM_REMIND_HIS.REM_URL is '提醒URL';
comment on column SY_COMM_REMIND_HIS.S_USER is '提醒人';
comment on column SY_COMM_REMIND_HIS.S_ATIME is '提醒添加时间';
comment on column SY_COMM_REMIND_HIS.EXECUTE_TIME is '提醒时间';
comment on column SY_COMM_REMIND_HIS.FINISH_TIME is '提醒完成时间';
comment on column SY_COMM_REMIND_HIS.STATUS is '提醒状态，WAITING，待提醒，FINISHED；已完成；ERROR，已出错；CANCLE，已取消';
comment on column SY_COMM_REMIND_HIS.TYPE is '提醒类型，TODO，待办；EMAIL，邮件；MESSAGE，短消息；INTIME，即时通讯；';
comment on column SY_COMM_REMIND_HIS.S_CMPY is '公司ID';
comment on column SY_COMM_REMIND_HIS.S_FLAG is '删除标记，1：有效；2：无效';
comment on column SY_COMM_REMIND_HIS.S_MTIME is '更新时间';
comment on column SY_COMM_REMIND_HIS.S_EMERGENCY is '紧急程度，10，一般；20，紧急；30，特急';
comment on column SY_COMM_REMIND_HIS.SERV_ID is '服务ID';
comment on column SY_COMM_REMIND_HIS.SERV_SRC_ID is 'SRC服务ID';
comment on column SY_COMM_REMIND_HIS.DATA_ID is '数据ID';
create table SY_COMM_REMIND_USERS(
REMIND_USER_ID VARCHAR2(40) not null,
REMIND_ID VARCHAR2(40) not null,
USER_ID VARCHAR2(40),
STATUS VARCHAR2(40),
SUCCESS VARCHAR2(400),
FAILURE VARCHAR2(400),
constraint PK_SY_COMM_REMIND_USERS primary key (REMIND_USER_ID)
);
comment on table SY_COMM_REMIND_USERS is '被提醒人员表';
comment on column SY_COMM_REMIND_USERS.REMIND_USER_ID is '主键';
comment on column SY_COMM_REMIND_USERS.REMIND_ID is '提醒主键';
comment on column SY_COMM_REMIND_USERS.USER_ID is '被提醒人';
comment on column SY_COMM_REMIND_USERS.STATUS is '状态';
comment on column SY_COMM_REMIND_USERS.SUCCESS is '成功的提醒类型';
comment on column SY_COMM_REMIND_USERS.FAILURE is '失败的提醒类型';
create table SY_COMM_SCHED(
JOB_CODE VARCHAR2(200) not null,
SCHED_NAME VARCHAR2(120),
JOB_GROUP VARCHAR2(200),
DESCRIPTION VARCHAR2(250),
JOB_CLASS_NAME VARCHAR2(250) not null,
IS_DURABLE VARCHAR2(1) not null,
IS_NONCONCURRENT VARCHAR2(1) not null,
IS_UPDATE_DATA VARCHAR2(1),
REQUESTS_RECOVERY VARCHAR2(1),
JOB_DATA VARCHAR2(1000),
JOB_STATE VARCHAR2(10),
JOB_TYPE NUMBER(4),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
JOB_CMPYS_STATUS NUMBER(4),
JOB_CMPYS VARCHAR2(500),
SERV_ID VARCHAR2(40),
JOB_CONTEXT_USER VARCHAR2(40),
constraint PK_SY_COMM_SCHED primary key (JOB_CODE)
);
comment on table SY_COMM_SCHED is '任务';
comment on column SY_COMM_SCHED.JOB_CODE is '任务CODE';
comment on column SY_COMM_SCHED.SCHED_NAME is 'sched name';
comment on column SY_COMM_SCHED.JOB_GROUP is '任务组';
comment on column SY_COMM_SCHED.DESCRIPTION is '任务说明';
comment on column SY_COMM_SCHED.JOB_CLASS_NAME is '任务实现类';
comment on column SY_COMM_SCHED.IS_DURABLE is '是否持久化';
comment on column SY_COMM_SCHED.IS_NONCONCURRENT is '暂未使用';
comment on column SY_COMM_SCHED.IS_UPDATE_DATA is '暂未使用';
comment on column SY_COMM_SCHED.REQUESTS_RECOVERY is '中断是否恢复';
comment on column SY_COMM_SCHED.JOB_DATA is '任务参数';
comment on column SY_COMM_SCHED.JOB_STATE is '任务状态';
comment on column SY_COMM_SCHED.JOB_TYPE is '任务类型, 1:public, 2: cmpy private';
comment on column SY_COMM_SCHED.S_USER is '创建人';
comment on column SY_COMM_SCHED.S_UNAME is '用户名称';
comment on column SY_COMM_SCHED.S_CMPY is '公司ID';
comment on column SY_COMM_SCHED.S_MTIME is '更新时间';
comment on column SY_COMM_SCHED.JOB_CMPYS_STATUS is '所属公司? 1:不指定,2:全公司,3:自定义';
comment on column SY_COMM_SCHED.JOB_CMPYS is '自定义公司';
comment on column SY_COMM_SCHED.SERV_ID is '服务ID';
comment on column SY_COMM_SCHED.JOB_CONTEXT_USER is '执行用户';
create table SY_COMM_SCHED_HIS(
ID VARCHAR2(200) not null,
SCHED_NAME VARCHAR2(120),
JOB_TYPE VARCHAR2(1) not null,
JOB_NAME VARCHAR2(200) not null,
JOB_GROUP VARCHAR2(200) not null,
TRIGGER_NAME VARCHAR2(200) not null,
STATUS VARCHAR2(1) not null,
FIRE_TIME VARCHAR2(40) not null,
END_TIME VARCHAR2(40),
REFIRE_COUNT NUMBER(4) not null,
INSTANCE VARCHAR2(200),
DESCRIPTION VARCHAR2(1000),
S_MTIME VARCHAR2(40),
constraint PK_SY_COMM_SCHED_HIS primary key (ID)
);
comment on table SY_COMM_SCHED_HIS is '任务执行日志';
comment on column SY_COMM_SCHED_HIS.ID is '日志主键';
comment on column SY_COMM_SCHED_HIS.SCHED_NAME is 'schedule name';
comment on column SY_COMM_SCHED_HIS.JOB_TYPE is '表示任务类型.1:普通任务,2:恢复任务';
comment on column SY_COMM_SCHED_HIS.JOB_NAME is '任务代码';
comment on column SY_COMM_SCHED_HIS.JOB_GROUP is '任务组';
comment on column SY_COMM_SCHED_HIS.TRIGGER_NAME is '触发器代码';
comment on column SY_COMM_SCHED_HIS.STATUS is '表示执行状态.1:成功,2:失败';
comment on column SY_COMM_SCHED_HIS.FIRE_TIME is '执行时间';
comment on column SY_COMM_SCHED_HIS.END_TIME is '完成时间';
comment on column SY_COMM_SCHED_HIS.REFIRE_COUNT is '重试次数';
comment on column SY_COMM_SCHED_HIS.INSTANCE is '任务计划执行实例';
comment on column SY_COMM_SCHED_HIS.DESCRIPTION is '说明';
comment on column SY_COMM_SCHED_HIS.S_MTIME is '最后修改时间';
create table SY_COMM_SCHED_TRIGGER(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_CODE VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200),
JOB_CODE VARCHAR2(200) not null,
JOB_GROUP VARCHAR2(200),
DESCRIPTION VARCHAR2(250),
NEXT_FIRE_TIME VARCHAR2(25),
PREV_FIRE_TIME VARCHAR2(25),
PRIORITY NUMBER(13),
TRIGGER_STATE VARCHAR2(16) not null,
TRIGGER_TYPE VARCHAR2(8) not null,
START_TIME VARCHAR2(25),
END_TIME VARCHAR2(25),
CALENDAR_NAME VARCHAR2(200),
MISFIRE_INSTR NUMBER(2),
JOB_DATA VARCHAR2(1000),
SIMPLE_TRIGGER_REPEAT_COUNT NUMBER(13),
SIMPLE_TRIGGER_INTERVAL NUMBER(13),
CRONTAB_EXPRESSTION VARCHAR2(50),
S_MTIME VARCHAR2(23),
constraint PK_SY_COMM_SCHED_TRIGGER primary key (TRIGGER_CODE)
);
comment on table SY_COMM_SCHED_TRIGGER is '任务触发器';
comment on column SY_COMM_SCHED_TRIGGER.SCHED_NAME is 'sched_name';
comment on column SY_COMM_SCHED_TRIGGER.TRIGGER_CODE is '触发器CODE';
comment on column SY_COMM_SCHED_TRIGGER.TRIGGER_GROUP is '触发器组';
comment on column SY_COMM_SCHED_TRIGGER.JOB_CODE is '任务CODE';
comment on column SY_COMM_SCHED_TRIGGER.JOB_GROUP is '任务组';
comment on column SY_COMM_SCHED_TRIGGER.DESCRIPTION is '说明';
comment on column SY_COMM_SCHED_TRIGGER.NEXT_FIRE_TIME is '下次启动时间';
comment on column SY_COMM_SCHED_TRIGGER.PREV_FIRE_TIME is '上次启动时间';
comment on column SY_COMM_SCHED_TRIGGER.PRIORITY is '优先级';
comment on column SY_COMM_SCHED_TRIGGER.TRIGGER_STATE is '状态';
comment on column SY_COMM_SCHED_TRIGGER.TRIGGER_TYPE is '类型';
comment on column SY_COMM_SCHED_TRIGGER.START_TIME is '开始时间';
comment on column SY_COMM_SCHED_TRIGGER.END_TIME is '停止时间';
comment on column SY_COMM_SCHED_TRIGGER.CALENDAR_NAME is 'calendar name';
comment on column SY_COMM_SCHED_TRIGGER.MISFIRE_INSTR is 'misfire_instr';
comment on column SY_COMM_SCHED_TRIGGER.JOB_DATA is 'job_data';
comment on column SY_COMM_SCHED_TRIGGER.SIMPLE_TRIGGER_REPEAT_COUNT is '重复次数';
comment on column SY_COMM_SCHED_TRIGGER.SIMPLE_TRIGGER_INTERVAL is '触发间隔';
comment on column SY_COMM_SCHED_TRIGGER.CRONTAB_EXPRESSTION is 'unix crontab表达式';
comment on column SY_COMM_SCHED_TRIGGER.S_MTIME is '更新时间';
create table SY_COMM_SEND(
SEND_ID VARCHAR2(40) not null,
SEND_NAME VARCHAR2(100),
SEND_MEMO VARCHAR2(1000),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
O_DEPT VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
SEND_ORDER NUMBER(4),
constraint PK_SY_COMM_SEND primary key (SEND_ID)
);
comment on table SY_COMM_SEND is '分发方案表';
comment on column SY_COMM_SEND.SEND_ID is '方案ID';
comment on column SY_COMM_SEND.SEND_NAME is '方案名称';
comment on column SY_COMM_SEND.SEND_MEMO is '方案说明';
comment on column SY_COMM_SEND.S_PUBLIC is '公共标志：1，公共；2：非公共';
comment on column SY_COMM_SEND.S_FLAG is '启用标志：1，启用；2：未启有';
comment on column SY_COMM_SEND.S_USER is '用户编码';
comment on column SY_COMM_SEND.O_DEPT is '所属机构编码';
comment on column SY_COMM_SEND.S_CMPY is '所属公司编码';
comment on column SY_COMM_SEND.S_MTIME is '更新时间';
comment on column SY_COMM_SEND.SEND_ORDER is '排序';
create table SY_COMM_SEND_DETAIL(
SEND_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40) not null,
DATA_ID VARCHAR2(40) not null,
SEND_TIME VARCHAR2(23),
SEND_NUM NUMBER(4),
SEND_TYPE NUMBER(4),
RECV_USER VARCHAR2(40),
RECV_UNAME VARCHAR2(100),
RECV_DEPT VARCHAR2(40),
RECV_DNAME VARCHAR2(500),
RECV_TIME VARCHAR2(20),
RECV_MIND VARCHAR2(4000),
RETN_FLAG NUMBER(4),
SEND_STATUS NUMBER(4),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(100),
S_DEPT VARCHAR2(40),
S_DNAME VARCHAR2(100),
S_TDEPT VARCHAR2(40),
S_TNAME VARCHAR2(100),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
RECV_ODEPT VARCHAR2(40),
S_ODEPT VARCHAR2(40),
RECV_TYPE VARCHAR2(40),
RECV_TDEPT VARCHAR2(40),
RECV_TNAME VARCHAR2(60),
MIND_CODE VARCHAR2(15),
RECV_REAL_USER VARCHAR2(40),
RECV_REAL_USER_NAME VARCHAR2(40),
constraint PK_SY_COMM_SEND_DETAIL primary key (SEND_ID)
);
comment on table SY_COMM_SEND_DETAIL is '分发表';
comment on column SY_COMM_SEND_DETAIL.SEND_ID is '分发主键';
comment on column SY_COMM_SEND_DETAIL.SERV_ID is '服务主键';
comment on column SY_COMM_SEND_DETAIL.DATA_ID is '数据主键';
comment on column SY_COMM_SEND_DETAIL.SEND_TIME is '分发时间';
comment on column SY_COMM_SEND_DETAIL.SEND_NUM is '分发份数';
comment on column SY_COMM_SEND_DETAIL.SEND_TYPE is '办理类型 1,办件，2，阅件';
comment on column SY_COMM_SEND_DETAIL.RECV_USER is '接收用户编码';
comment on column SY_COMM_SEND_DETAIL.RECV_UNAME is '接收用户名称';
comment on column SY_COMM_SEND_DETAIL.RECV_DEPT is '接收部门编码';
comment on column SY_COMM_SEND_DETAIL.RECV_DNAME is '接收部门名称';
comment on column SY_COMM_SEND_DETAIL.RECV_TIME is '接收时间';
comment on column SY_COMM_SEND_DETAIL.RECV_MIND is '接收意见';
comment on column SY_COMM_SEND_DETAIL.RETN_FLAG is '退回标志';
comment on column SY_COMM_SEND_DETAIL.SEND_STATUS is '发送状态，1：等待，2：发送';
comment on column SY_COMM_SEND_DETAIL.S_FLAG is '启用标志';
comment on column SY_COMM_SEND_DETAIL.S_USER is '用户编码';
comment on column SY_COMM_SEND_DETAIL.S_UNAME is '用户名称';
comment on column SY_COMM_SEND_DETAIL.S_DEPT is '部门编码';
comment on column SY_COMM_SEND_DETAIL.S_DNAME is '部门名称';
comment on column SY_COMM_SEND_DETAIL.S_TDEPT is '有效部门编码';
comment on column SY_COMM_SEND_DETAIL.S_TNAME is '有效部门名称';
comment on column SY_COMM_SEND_DETAIL.S_CMPY is '公司编码';
comment on column SY_COMM_SEND_DETAIL.S_MTIME is '更新时间';
comment on column SY_COMM_SEND_DETAIL.RECV_ODEPT is '接收人所在机构编码';
comment on column SY_COMM_SEND_DETAIL.S_ODEPT is '分发人机构编码；分发人所在机构编码';
comment on column SY_COMM_SEND_DETAIL.RECV_TYPE is '接收单位类别；OUTSIDE机构外，INSIDE机构内';
comment on column SY_COMM_SEND_DETAIL.RECV_TDEPT is '接收人所在部门编码';
comment on column SY_COMM_SEND_DETAIL.RECV_TNAME is '接收人所在部门名称';
comment on column SY_COMM_SEND_DETAIL.MIND_CODE is '意见编码';
comment on column SY_COMM_SEND_DETAIL.RECV_REAL_USER is '实际接收人';
comment on column SY_COMM_SEND_DETAIL.RECV_REAL_USER_NAME is '实际接收人姓名';
create table SY_COMM_SEND_ITEM(
ITEM_ID VARCHAR2(40) not null,
SEND_ID VARCHAR2(100),
ROLE_USER_CODE VARCHAR2(40),
ITEM_NAME VARCHAR2(100),
ITEM_SORT NUMBER(4),
DEPT_CODES VARCHAR2(4000),
DEPT_NAMES VARCHAR2(4000),
ITEM_TYPE VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_USER VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(23),
constraint PK_SY_COMM_SEND_ITEM primary key (ITEM_ID)
);
comment on table SY_COMM_SEND_ITEM is '分发明细表';
comment on column SY_COMM_SEND_ITEM.ITEM_ID is '方案明细ID';
comment on column SY_COMM_SEND_ITEM.SEND_ID is '方案ID';
comment on column SY_COMM_SEND_ITEM.ROLE_USER_CODE is '角色/用户/部门编码';
comment on column SY_COMM_SEND_ITEM.ITEM_NAME is '方案明细显示名称：类型为用户，显示用户名；类型为角色，显示角色名';
comment on column SY_COMM_SEND_ITEM.ITEM_SORT is '排序号';
comment on column SY_COMM_SEND_ITEM.DEPT_CODES is '部门编码。对于角色+部门来说，可能要保存此数据';
comment on column SY_COMM_SEND_ITEM.DEPT_NAMES is '部门名称。对于角色+部门来说，可能要保存此数据';
comment on column SY_COMM_SEND_ITEM.ITEM_TYPE is '方案类型，user:用户；orle：角色；dept：部门；other_cmpy:其他单位；other_sys：系统外单位；';
comment on column SY_COMM_SEND_ITEM.S_ODEPT is '创建人所属机构编码';
comment on column SY_COMM_SEND_ITEM.S_USER is '创建人用户编码';
comment on column SY_COMM_SEND_ITEM.S_FLAG is '启用标志，1：启用；2：未启用';
comment on column SY_COMM_SEND_ITEM.S_MTIME is '更新时间';
create table SY_COMM_TAG(
TAG_ID VARCHAR2(40) not null,
TAG_NAME VARCHAR2(60),
TAG_LEVEL VARCHAR2(60),
TAG_TYPE VARCHAR2(30),
TAG_GROUP VARCHAR2(60),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(30),
constraint PK_SY_COMM_TAG primary key (TAG_ID)
);
comment on table SY_COMM_TAG is '';
comment on column SY_COMM_TAG.TAG_ID is '';
comment on column SY_COMM_TAG.TAG_NAME is '';
comment on column SY_COMM_TAG.TAG_LEVEL is '';
comment on column SY_COMM_TAG.TAG_TYPE is '';
comment on column SY_COMM_TAG.TAG_GROUP is '';
comment on column SY_COMM_TAG.S_CMPY is '';
comment on column SY_COMM_TAG.S_USER is '';
comment on column SY_COMM_TAG.S_MTIME is '';
create table SY_COMM_TEMPL(
PT_ID VARCHAR2(40) not null,
PT_TITLE VARCHAR2(200),
PT_CONTENT VARCHAR2(4000),
PT_TYPE VARCHAR2(20),
PT_PARAM VARCHAR2(2000),
PT_EXP VARCHAR2(800),
PT_TIP VARCHAR2(400),
USER_CODE VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(30),
PT_INCL_CSSJS VARCHAR2(800),
PT_TYPE_DEFAULT VARCHAR2(4),
PT_TYPE_ATTRIBUTE VARCHAR2(20),
PT_EXP_ORDER NUMBER(4),
PT_STYLE VARCHAR2(200),
constraint PK_SY_COMM_TEMPL primary key (PT_ID)
);
comment on table SY_COMM_TEMPL is '首页模板';
comment on column SY_COMM_TEMPL.PT_ID is '主键';
comment on column SY_COMM_TEMPL.PT_TITLE is '标题';
comment on column SY_COMM_TEMPL.PT_CONTENT is '内容';
comment on column SY_COMM_TEMPL.PT_TYPE is '类型';
comment on column SY_COMM_TEMPL.PT_PARAM is '参数设定';
comment on column SY_COMM_TEMPL.PT_EXP is '规则设定';
comment on column SY_COMM_TEMPL.PT_TIP is '模版说明';
comment on column SY_COMM_TEMPL.USER_CODE is '关联用户';
comment on column SY_COMM_TEMPL.S_PUBLIC is '公共标志';
comment on column SY_COMM_TEMPL.S_FLAG is '启用标志';
comment on column SY_COMM_TEMPL.S_CMPY is '公司主键';
comment on column SY_COMM_TEMPL.S_USER is '创建者';
comment on column SY_COMM_TEMPL.S_MTIME is '更新时间';
comment on column SY_COMM_TEMPL.PT_INCL_CSSJS is '引入公共文件';
comment on column SY_COMM_TEMPL.PT_TYPE_DEFAULT is '类型默认 ';
comment on column SY_COMM_TEMPL.PT_TYPE_ATTRIBUTE is '类型(规则)';
comment on column SY_COMM_TEMPL.PT_EXP_ORDER is '规则排序';
comment on column SY_COMM_TEMPL.PT_STYLE is '模板样式';
create table SY_COMM_TEMPL_COMS(
PC_ID VARCHAR2(40) not null,
PC_NAME VARCHAR2(200),
PC_CON VARCHAR2(4000),
PC_PARAM VARCHAR2(1000),
PC_EXP VARCHAR2(800),
PC_TIP VARCHAR2(400),
PC_TYPE VARCHAR2(20),
PC_COMMNET VARCHAR2(800),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(30),
PC_DATA VARCHAR2(1000),
PC_SELF_PARAM VARCHAR2(4000),
PC_SELF_PARAM_JS VARCHAR2(2000),
PC_USE_AREA VARCHAR2(20),
PC_DS_LOC VARCHAR2(10),
constraint PK_SY_COMM_TEMPL_COMS primary key (PC_ID)
);
comment on table SY_COMM_TEMPL_COMS is '模板组件';
comment on column SY_COMM_TEMPL_COMS.PC_ID is '主键';
comment on column SY_COMM_TEMPL_COMS.PC_NAME is '名称';
comment on column SY_COMM_TEMPL_COMS.PC_CON is '对应文件';
comment on column SY_COMM_TEMPL_COMS.PC_PARAM is '参数设定';
comment on column SY_COMM_TEMPL_COMS.PC_EXP is '规则设定';
comment on column SY_COMM_TEMPL_COMS.PC_TIP is '组件说明';
comment on column SY_COMM_TEMPL_COMS.PC_TYPE is '类型';
comment on column SY_COMM_TEMPL_COMS.PC_COMMNET is '备注';
comment on column SY_COMM_TEMPL_COMS.S_PUBLIC is '公共标志';
comment on column SY_COMM_TEMPL_COMS.S_FLAG is '启用标志';
comment on column SY_COMM_TEMPL_COMS.S_CMPY is '公司主键';
comment on column SY_COMM_TEMPL_COMS.S_USER is '创建者';
comment on column SY_COMM_TEMPL_COMS.S_MTIME is '更新时间';
comment on column SY_COMM_TEMPL_COMS.PC_DATA is '数据对象';
comment on column SY_COMM_TEMPL_COMS.PC_SELF_PARAM is '个性参数定义';
comment on column SY_COMM_TEMPL_COMS.PC_SELF_PARAM_JS is '个性JS';
comment on column SY_COMM_TEMPL_COMS.PC_USE_AREA is '可应用范围 ';
comment on column SY_COMM_TEMPL_COMS.PC_DS_LOC is '';
create table SY_COMM_TODO(
TODO_ID VARCHAR2(40) not null,
OWNER_CODE VARCHAR2(40),
DEPT_CODE VARCHAR2(40),
TDEPT_CODE VARCHAR2(40),
SEND_USER_CODE VARCHAR2(40),
TODO_TITLE VARCHAR2(1000),
TODO_URL VARCHAR2(500),
TODO_SEND_TIME VARCHAR2(20),
TODO_FINISH_TIME VARCHAR2(20),
TODO_CODE VARCHAR2(40),
TODO_CODE_NAME VARCHAR2(40),
TODO_OPERATION VARCHAR2(40),
TODO_CATALOG NUMBER(1),
TODO_OBJECT_ID1 VARCHAR2(40),
TODO_OBJECT_ID2 VARCHAR2(40),
TODO_DEADLINE1 VARCHAR2(20),
TODO_DEADLINE2 VARCHAR2(20),
TODO_BENCH_FLAG NUMBER(1),
TODO_ACCESS_FLAG NUMBER(1),
S_CMPY VARCHAR2(40),
TODO_CONTENT VARCHAR2(2000),
S_MTIME VARCHAR2(23),
SERV_ID VARCHAR2(40),
SERV_DATA_CODE VARCHAR2(60),
S_EMERGENCY NUMBER(4),
TODO_FROM VARCHAR2(23),
AGT_USER_CODE VARCHAR2(40),
TODO_TYPE VARCHAR2(40),
TODO_LAST NUMBER(4),
constraint PK_SY_COMM_TODO primary key (TODO_ID)
);
comment on table SY_COMM_TODO is '待办事务表';
comment on column SY_COMM_TODO.TODO_ID is '待办表主键';
comment on column SY_COMM_TODO.OWNER_CODE is '待办用户[角色]编码';
comment on column SY_COMM_TODO.DEPT_CODE is '部门编码';
comment on column SY_COMM_TODO.TDEPT_CODE is '有效部门编码';
comment on column SY_COMM_TODO.SEND_USER_CODE is '发待办的用户编码';
comment on column SY_COMM_TODO.TODO_TITLE is '待办标题';
comment on column SY_COMM_TODO.TODO_URL is '待办链接';
comment on column SY_COMM_TODO.TODO_SEND_TIME is '发送时间';
comment on column SY_COMM_TODO.TODO_FINISH_TIME is '完成时间';
comment on column SY_COMM_TODO.TODO_CODE is '待办编码';
comment on column SY_COMM_TODO.TODO_CODE_NAME is '待办编码名称';
comment on column SY_COMM_TODO.TODO_OPERATION is '待办操作';
comment on column SY_COMM_TODO.TODO_CATALOG is '办件[阅件]标志；1：办件；2：阅件';
comment on column SY_COMM_TODO.TODO_OBJECT_ID1 is '对象ID1';
comment on column SY_COMM_TODO.TODO_OBJECT_ID2 is '对象ID2';
comment on column SY_COMM_TODO.TODO_DEADLINE1 is '办理期限1';
comment on column SY_COMM_TODO.TODO_DEADLINE2 is '办理期限2';
comment on column SY_COMM_TODO.TODO_BENCH_FLAG is '代理状态，1：已代理；2：未代理';
comment on column SY_COMM_TODO.TODO_ACCESS_FLAG is '访问标志，1：已访问；2：未访问';
comment on column SY_COMM_TODO.S_CMPY is '公司编码';
comment on column SY_COMM_TODO.TODO_CONTENT is '待办内容';
comment on column SY_COMM_TODO.S_MTIME is '更新时间';
comment on column SY_COMM_TODO.SERV_ID is '服务ID';
comment on column SY_COMM_TODO.SERV_DATA_CODE is '数据编号，如公文编号';
comment on column SY_COMM_TODO.S_EMERGENCY is '紧急程度';
comment on column SY_COMM_TODO.TODO_FROM is '待办来自哪种业务：如wf工作流，remind消息提醒';
comment on column SY_COMM_TODO.AGT_USER_CODE is '代办人code';
comment on column SY_COMM_TODO.TODO_TYPE is '待办标识，与服务提供的待办标识对应，用于分组显示待办总数';
comment on column SY_COMM_TODO.TODO_LAST is '最新标识，1：最新；0或2：不是最新';
create table SY_COMM_TODO_DRAFT(
TODO_ID VARCHAR2(40) not null,
OWNER_CODE VARCHAR2(40),
DEPT_CODE VARCHAR2(40),
TDEPT_CODE VARCHAR2(40),
SEND_USER_CODE VARCHAR2(40),
TODO_TITLE VARCHAR2(1000),
TODO_URL VARCHAR2(500),
TODO_SEND_TIME VARCHAR2(20),
TODO_FINISH_TIME VARCHAR2(20),
TODO_CODE VARCHAR2(40),
TODO_CODE_NAME VARCHAR2(40),
TODO_EMERGENCY NUMBER(1),
TODO_OPERATION VARCHAR2(40),
TODO_OBJECT_ID1 VARCHAR2(40),
TODO_OBJECT_ID2 VARCHAR2(40),
TODO_DEADLINE1 VARCHAR2(20),
TODO_DEADLINE2 VARCHAR2(20),
TODO_BENCH_FLAG NUMBER(1),
TODO_ACCESS_FLAG NUMBER(1),
TODO_CONTENT VARCHAR2(2000),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
S_WF_NODE VARCHAR2(2000),
S_WF_USER VARCHAR2(2000),
S_WF_STATE NUMBER(4),
S_WF_INST VARCHAR2(40),
TODO_TYPE VARCHAR2(40),
constraint PK_SY_COMM_TODO_DRAFT primary key (TODO_ID)
);
comment on table SY_COMM_TODO_DRAFT is '主办事务';
comment on column SY_COMM_TODO_DRAFT.TODO_ID is '主办表主键';
comment on column SY_COMM_TODO_DRAFT.OWNER_CODE is '待办用户[角色]编码';
comment on column SY_COMM_TODO_DRAFT.DEPT_CODE is '部门编码';
comment on column SY_COMM_TODO_DRAFT.TDEPT_CODE is '有效部门编码';
comment on column SY_COMM_TODO_DRAFT.SEND_USER_CODE is '发待办的用户编码';
comment on column SY_COMM_TODO_DRAFT.TODO_TITLE is '待办标题';
comment on column SY_COMM_TODO_DRAFT.TODO_URL is '待办链接';
comment on column SY_COMM_TODO_DRAFT.TODO_SEND_TIME is '发送时间';
comment on column SY_COMM_TODO_DRAFT.TODO_FINISH_TIME is '完成时间';
comment on column SY_COMM_TODO_DRAFT.TODO_CODE is '待办编码';
comment on column SY_COMM_TODO_DRAFT.TODO_CODE_NAME is '待办编码名称';
comment on column SY_COMM_TODO_DRAFT.TODO_EMERGENCY is '待办缓急';
comment on column SY_COMM_TODO_DRAFT.TODO_OPERATION is '待办操作';
comment on column SY_COMM_TODO_DRAFT.TODO_OBJECT_ID1 is '对象ID1';
comment on column SY_COMM_TODO_DRAFT.TODO_OBJECT_ID2 is '对象ID2';
comment on column SY_COMM_TODO_DRAFT.TODO_DEADLINE1 is '办理期限1';
comment on column SY_COMM_TODO_DRAFT.TODO_DEADLINE2 is '办理期限2';
comment on column SY_COMM_TODO_DRAFT.TODO_BENCH_FLAG is '代理状态，1：已代理；2：未代理';
comment on column SY_COMM_TODO_DRAFT.TODO_ACCESS_FLAG is '访问标志，1：已访问；2：未访问';
comment on column SY_COMM_TODO_DRAFT.TODO_CONTENT is '内容';
comment on column SY_COMM_TODO_DRAFT.S_CMPY is '公司编码';
comment on column SY_COMM_TODO_DRAFT.S_MTIME is '更新时间';
comment on column SY_COMM_TODO_DRAFT.S_WF_NODE is '当前节点';
comment on column SY_COMM_TODO_DRAFT.S_WF_USER is '当前用户';
comment on column SY_COMM_TODO_DRAFT.S_WF_STATE is '是否运行';
comment on column SY_COMM_TODO_DRAFT.S_WF_INST is '流程实例';
comment on column SY_COMM_TODO_DRAFT.TODO_TYPE is '待办标识，与服务提供的待办标识对应，用于分组显示待办总数';
create table SY_COMM_TODO_HIS(
TODO_ID VARCHAR2(40) not null,
OWNER_CODE VARCHAR2(40),
DEPT_CODE VARCHAR2(40),
TDEPT_CODE VARCHAR2(40),
SEND_USER_CODE VARCHAR2(40),
TODO_TITLE VARCHAR2(1000),
TODO_URL VARCHAR2(500),
TODO_SEND_TIME VARCHAR2(20),
TODO_FINISH_TIME VARCHAR2(20),
TODO_CODE VARCHAR2(40),
TODO_CODE_NAME VARCHAR2(40),
TODO_OPERATION VARCHAR2(40),
TODO_CATALOG NUMBER(1),
TODO_OBJECT_ID1 VARCHAR2(40),
TODO_OBJECT_ID2 VARCHAR2(40),
TODO_DEADLINE1 VARCHAR2(20),
TODO_DEADLINE2 VARCHAR2(20),
TODO_BENCH_FLAG NUMBER(1),
TODO_ACCESS_FLAG NUMBER(1),
S_CMPY VARCHAR2(40),
TODO_CONTENT VARCHAR2(2000),
S_MTIME VARCHAR2(23),
SERV_ID VARCHAR2(40),
SERV_DATA_CODE VARCHAR2(60),
S_EMERGENCY NUMBER(4),
TODO_FROM VARCHAR2(23),
AGT_USER_CODE VARCHAR2(40),
TODO_TYPE VARCHAR2(40),
constraint PK_SY_COMM_TODO_HIS primary key (TODO_ID)
);
comment on table SY_COMM_TODO_HIS is '待办历史表[已办表]';
comment on column SY_COMM_TODO_HIS.TODO_ID is '待办表主键';
comment on column SY_COMM_TODO_HIS.OWNER_CODE is '待办用户[角色]编码';
comment on column SY_COMM_TODO_HIS.DEPT_CODE is '部门编码';
comment on column SY_COMM_TODO_HIS.TDEPT_CODE is '有效部门编码';
comment on column SY_COMM_TODO_HIS.SEND_USER_CODE is '发待办的用户编码';
comment on column SY_COMM_TODO_HIS.TODO_TITLE is '待办标题';
comment on column SY_COMM_TODO_HIS.TODO_URL is '待办链接';
comment on column SY_COMM_TODO_HIS.TODO_SEND_TIME is '发送时间';
comment on column SY_COMM_TODO_HIS.TODO_FINISH_TIME is '完成时间';
comment on column SY_COMM_TODO_HIS.TODO_CODE is '待办编码';
comment on column SY_COMM_TODO_HIS.TODO_CODE_NAME is '待办编码名称';
comment on column SY_COMM_TODO_HIS.TODO_OPERATION is '待办操作';
comment on column SY_COMM_TODO_HIS.TODO_CATALOG is '办件[阅件]标志；1：办件；2：阅件';
comment on column SY_COMM_TODO_HIS.TODO_OBJECT_ID1 is '对象ID1';
comment on column SY_COMM_TODO_HIS.TODO_OBJECT_ID2 is '对象ID2';
comment on column SY_COMM_TODO_HIS.TODO_DEADLINE1 is '办理期限1';
comment on column SY_COMM_TODO_HIS.TODO_DEADLINE2 is '办理期限2';
comment on column SY_COMM_TODO_HIS.TODO_BENCH_FLAG is '代理状态，1：已代理；2：未代理';
comment on column SY_COMM_TODO_HIS.TODO_ACCESS_FLAG is '访问标志，1：已访问；2：未访问';
comment on column SY_COMM_TODO_HIS.S_CMPY is '公司编码';
comment on column SY_COMM_TODO_HIS.TODO_CONTENT is '';
comment on column SY_COMM_TODO_HIS.S_MTIME is '更新时间';
comment on column SY_COMM_TODO_HIS.SERV_ID is '服务ID';
comment on column SY_COMM_TODO_HIS.SERV_DATA_CODE is '数据编号，如公文编号';
comment on column SY_COMM_TODO_HIS.S_EMERGENCY is '';
comment on column SY_COMM_TODO_HIS.TODO_FROM is '待办来自哪种业务：如wf工作流，remind消息提醒';
comment on column SY_COMM_TODO_HIS.AGT_USER_CODE is '代办人code';
comment on column SY_COMM_TODO_HIS.TODO_TYPE is '待办标识，与服务提供的待办标识对应，用于分组显示待办总数';
create table SY_COMM_USUAL(
USUAL_ID VARCHAR2(40) not null,
TITLE VARCHAR2(500),
TYPE_CODE VARCHAR2(30),
S_PUBLIC NUMBER(4),
S_USER VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
USUAL_SORT NUMBER(10),
constraint PK_SY_COMM_USUAL primary key (USUAL_ID)
);
comment on table SY_COMM_USUAL is '常用批语功能';
comment on column SY_COMM_USUAL.USUAL_ID is 'ID';
comment on column SY_COMM_USUAL.TITLE is '常用批语内容';
comment on column SY_COMM_USUAL.TYPE_CODE is '类型编码，假设它是可以用在其它地方。例如，常用批语：MIND；';
comment on column SY_COMM_USUAL.S_PUBLIC is '公共标志：1，公共；2：非公共';
comment on column SY_COMM_USUAL.S_USER is '用户编码';
comment on column SY_COMM_USUAL.S_ODEPT is '所属机构编码';
comment on column SY_COMM_USUAL.S_CMPY is '所属公司编码';
comment on column SY_COMM_USUAL.S_MTIME is '更新时间';
comment on column SY_COMM_USUAL.USUAL_SORT is '常用批语排序号';
create table SY_COMM_WORK_DAY(
DAY_ID VARCHAR2(40) not null,
DAY_SPECIAL_DATE VARCHAR2(20),
DAY_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_FLAG NUMBER(4),
constraint PK_SY_COMM_WORK_DAY primary key (DAY_ID)
);
comment on table SY_COMM_WORK_DAY is '工作日期设置';
comment on column SY_COMM_WORK_DAY.DAY_ID is '主键ID';
comment on column SY_COMM_WORK_DAY.DAY_SPECIAL_DATE is '日期';
comment on column SY_COMM_WORK_DAY.DAY_FLAG is '是否工作日 (1,工作日，2，放假)';
comment on column SY_COMM_WORK_DAY.S_CMPY is '公司CODE';
comment on column SY_COMM_WORK_DAY.S_FLAG is '是否有效 (1，是，2，否)';
create table SY_ORG_ACL(
ACL_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
ACT_CODE VARCHAR2(40),
ACL_TYPE NUMBER(4),
ACL_OWNER VARCHAR2(40),
ACL_OTYPE NUMBER(4),
S_CMPY VARCHAR2(40),
ORU_NAME VARCHAR2(100),
constraint PK_SY_ORG_ACL primary key (ACL_ID)
);
comment on table SY_ORG_ACL is '权限控制列表';
comment on column SY_ORG_ACL.ACL_ID is '权限控制主键';
comment on column SY_ORG_ACL.SERV_ID is '服务[菜单]编码';
comment on column SY_ORG_ACL.ACT_CODE is '操作编码';
comment on column SY_ORG_ACL.ACL_TYPE is '权限控制类型';
comment on column SY_ORG_ACL.ACL_OWNER is '权限所有者';
comment on column SY_ORG_ACL.ACL_OTYPE is '所有者类型，1：角色；2：部门；3用户';
comment on column SY_ORG_ACL.S_CMPY is '公司主键';
comment on column SY_ORG_ACL.ORU_NAME is '所有者名称';
create table SY_ORG_CMPY(
CMPY_CODE VARCHAR2(40) not null,
CMPY_NAME VARCHAR2(40),
CMPY_FULLNAME VARCHAR2(100),
CMPY_COUNTRY VARCHAR2(30),
CMPY_PROVINCE VARCHAR2(30),
CMPY_CITY VARCHAR2(30),
CMPY_ADDRESS VARCHAR2(100),
CMPY_POSTCODE VARCHAR2(6),
CMPY_PHONE VARCHAR2(40),
CMPY_FAX VARCHAR2(40),
CMPY_CONTACTOR VARCHAR2(20),
CMPY_PCODE VARCHAR2(40),
CMPY_SORT NUMBER(4),
CMPY_DESC VARCHAR2(400),
CMPY_LEVEL NUMBER(1),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
CODE_PATH VARCHAR2(400),
S_MTIME VARCHAR2(23),
PT_ID VARCHAR2(40),
constraint PK_SY_ORG_CMPY primary key (CMPY_CODE)
);
comment on table SY_ORG_CMPY is '公司表';
comment on column SY_ORG_CMPY.CMPY_CODE is '公司编码';
comment on column SY_ORG_CMPY.CMPY_NAME is '公司名称';
comment on column SY_ORG_CMPY.CMPY_FULLNAME is '公司全称';
comment on column SY_ORG_CMPY.CMPY_COUNTRY is '所在国家';
comment on column SY_ORG_CMPY.CMPY_PROVINCE is '所在省份';
comment on column SY_ORG_CMPY.CMPY_CITY is '所在城市';
comment on column SY_ORG_CMPY.CMPY_ADDRESS is '公司地址';
comment on column SY_ORG_CMPY.CMPY_POSTCODE is '公司邮编';
comment on column SY_ORG_CMPY.CMPY_PHONE is '公司电话';
comment on column SY_ORG_CMPY.CMPY_FAX is '公司传真';
comment on column SY_ORG_CMPY.CMPY_CONTACTOR is '联系人';
comment on column SY_ORG_CMPY.CMPY_PCODE is '上级公司编码';
comment on column SY_ORG_CMPY.CMPY_SORT is '公司排序';
comment on column SY_ORG_CMPY.CMPY_DESC is '公司描述';
comment on column SY_ORG_CMPY.CMPY_LEVEL is '公司级别';
comment on column SY_ORG_CMPY.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_CMPY.S_USER is '添加者';
comment on column SY_ORG_CMPY.CODE_PATH is '编码路径';
comment on column SY_ORG_CMPY.S_MTIME is '更新时间';
comment on column SY_ORG_CMPY.PT_ID is '公司模版编码';
create table SY_ORG_DEPT(
DEPT_CODE VARCHAR2(40) not null,
DEPT_NAME VARCHAR2(100),
DEPT_PCODE VARCHAR2(40),
DEPT_SORT NUMBER(4),
DEPT_MEMO VARCHAR2(400),
DEPT_EMAIL VARCHAR2(40),
CMPY_CODE VARCHAR2(40) not null,
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
CODE_PATH VARCHAR2(4000),
DEPT_LEVEL NUMBER(4),
DEPT_TYPE NUMBER(4),
S_MTIME VARCHAR2(23),
DEPT_SHORT_NAME VARCHAR2(40),
ODEPT_CODE VARCHAR2(40),
TDEPT_CODE VARCHAR2(40),
DEPT_SRC_TYPE1 VARCHAR2(40),
DEPT_SRC_TYPE2 VARCHAR2(40),
DEPT_LINE VARCHAR2(4000),
PT_ID VARCHAR2(40),
DEPT_FULL_NAME VARCHAR2(200),
DEPT_SRC_TYPE3 VARCHAR2(80),
DEPT_SRC_TYPE4 VARCHAR2(80),
constraint PK_SY_ORG_DEPT primary key (DEPT_CODE)
);
comment on table SY_ORG_DEPT is '部门表';
comment on column SY_ORG_DEPT.DEPT_CODE is '部门编码';
comment on column SY_ORG_DEPT.DEPT_NAME is '部门名称';
comment on column SY_ORG_DEPT.DEPT_PCODE is '上级部门编码';
comment on column SY_ORG_DEPT.DEPT_SORT is '部门排序号';
comment on column SY_ORG_DEPT.DEPT_MEMO is '部门描述';
comment on column SY_ORG_DEPT.DEPT_EMAIL is '部门邮箱';
comment on column SY_ORG_DEPT.CMPY_CODE is '公司编码';
comment on column SY_ORG_DEPT.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_DEPT.S_USER is '添加者';
comment on column SY_ORG_DEPT.CODE_PATH is '编码路径';
comment on column SY_ORG_DEPT.DEPT_LEVEL is '部门层级';
comment on column SY_ORG_DEPT.DEPT_TYPE is '部门类型：1：普通部门；2：机构';
comment on column SY_ORG_DEPT.S_MTIME is '更新时间';
comment on column SY_ORG_DEPT.DEPT_SHORT_NAME is '部门简称';
comment on column SY_ORG_DEPT.ODEPT_CODE is '机构部门编码';
comment on column SY_ORG_DEPT.TDEPT_CODE is '有效部门编码';
comment on column SY_ORG_DEPT.DEPT_SRC_TYPE1 is '扩展类型1';
comment on column SY_ORG_DEPT.DEPT_SRC_TYPE2 is '扩展类型2';
comment on column SY_ORG_DEPT.DEPT_LINE is '业务条线';
comment on column SY_ORG_DEPT.PT_ID is '部门模版编码';
comment on column SY_ORG_DEPT.DEPT_FULL_NAME is '部门全称';
comment on column SY_ORG_DEPT.DEPT_SRC_TYPE3 is '扩展属性3';
comment on column SY_ORG_DEPT.DEPT_SRC_TYPE4 is '扩展属性4';
create table SY_ORG_DEPT_DIRECTOR(
DD_ID VARCHAR2(40) not null,
DEPT_CODE VARCHAR2(40) not null,
USER_CODE VARCHAR2(40) not null,
CMPY_CODE VARCHAR2(40) not null,
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_DEPT_DIRECTOR primary key (DD_ID)
);
comment on table SY_ORG_DEPT_DIRECTOR is '部门主管表';
comment on column SY_ORG_DEPT_DIRECTOR.DD_ID is '部门主管表主键';
comment on column SY_ORG_DEPT_DIRECTOR.DEPT_CODE is '部门编码';
comment on column SY_ORG_DEPT_DIRECTOR.USER_CODE is '用户编码';
comment on column SY_ORG_DEPT_DIRECTOR.CMPY_CODE is '公司编码';
comment on column SY_ORG_DEPT_DIRECTOR.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_DEPT_DIRECTOR.S_USER is '添加者';
comment on column SY_ORG_DEPT_DIRECTOR.S_MTIME is '更新时间';
create table SY_ORG_GROUP(
GROUP_CODE VARCHAR2(40) not null,
GROUP_NAME VARCHAR2(80),
GROUP_TYPE NUMBER(4),
GROUP_MEMO VARCHAR2(400),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_MTIME VARCHAR2(30),
GROUP_SORT NUMBER(10),
DATA_ID VARCHAR2(40),
GROUP_IMG VARCHAR2(80),
constraint PK_SY_ORG_GROUP primary key (GROUP_CODE)
);
comment on table SY_ORG_GROUP is '群组管理';
comment on column SY_ORG_GROUP.GROUP_CODE is '群组编码，UUID';
comment on column SY_ORG_GROUP.GROUP_NAME is '群组名称';
comment on column SY_ORG_GROUP.GROUP_TYPE is '群组类型';
comment on column SY_ORG_GROUP.GROUP_MEMO is '群组说明';
comment on column SY_ORG_GROUP.S_FLAG is '有效标志，1：有效；2：无效';
comment on column SY_ORG_GROUP.S_CMPY is '公司编码';
comment on column SY_ORG_GROUP.S_ODEPT is '组织编码';
comment on column SY_ORG_GROUP.S_MTIME is '更新时间';
comment on column SY_ORG_GROUP.GROUP_SORT is '群组排序';
comment on column SY_ORG_GROUP.DATA_ID is '数据主键：组织类型对应部门编码，自定义和临时类型对应创建用户编码';
comment on column SY_ORG_GROUP.GROUP_IMG is '群组头像';
create table SY_ORG_GROUP_USER(
GU_ID VARCHAR2(40) not null,
GROUP_CODE VARCHAR2(40),
USER_CODE VARCHAR2(40),
GU_POST VARCHAR2(40),
GU_ADMIN NUMBER(4),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(30),
constraint PK_SY_ORG_GROUP_USER primary key (GU_ID)
);
comment on table SY_ORG_GROUP_USER is '群组用户';
comment on column SY_ORG_GROUP_USER.GU_ID is '主键，UUID';
comment on column SY_ORG_GROUP_USER.GROUP_CODE is '群组编码，UUID';
comment on column SY_ORG_GROUP_USER.USER_CODE is '用户编码';
comment on column SY_ORG_GROUP_USER.GU_POST is '岗位';
comment on column SY_ORG_GROUP_USER.GU_ADMIN is '是否管理员，1：是；2：否';
comment on column SY_ORG_GROUP_USER.S_FLAG is '有效标志，1：是；2：否';
comment on column SY_ORG_GROUP_USER.S_MTIME is '更新时间';
create table SY_ORG_ROLE(
ROLE_CODE VARCHAR2(40) not null,
ROLE_NAME VARCHAR2(40),
ROLE_SORT NUMBER(4),
ROLE_MEMO VARCHAR2(400),
ROLE_CATALOG VARCHAR2(40),
CMPY_CODE VARCHAR2(40) not null,
S_PUBLIC NUMBER(1),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(23),
ROLE_SCOPE NUMBER(6),
constraint PK_SY_ORG_ROLE primary key (ROLE_CODE)
);
comment on table SY_ORG_ROLE is '角色表';
comment on column SY_ORG_ROLE.ROLE_CODE is '角色编码';
comment on column SY_ORG_ROLE.ROLE_NAME is '角色名称';
comment on column SY_ORG_ROLE.ROLE_SORT is '角色排序号';
comment on column SY_ORG_ROLE.ROLE_MEMO is '角色描述';
comment on column SY_ORG_ROLE.ROLE_CATALOG is '角色分类';
comment on column SY_ORG_ROLE.CMPY_CODE is '公司编码';
comment on column SY_ORG_ROLE.S_PUBLIC is '是否公共角色，1：是；2：否';
comment on column SY_ORG_ROLE.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_ROLE.S_USER is '添加者';
comment on column SY_ORG_ROLE.S_MTIME is '更新时间';
comment on column SY_ORG_ROLE.ROLE_SCOPE is '';
create table SY_ORG_ROLE_USER(
RU_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40) not null,
ROLE_CODE VARCHAR2(40) not null,
CMPY_CODE VARCHAR2(40),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_ROLE_USER primary key (RU_ID)
);
comment on table SY_ORG_ROLE_USER is '角色用户表';
comment on column SY_ORG_ROLE_USER.RU_ID is '角色用户表主键';
comment on column SY_ORG_ROLE_USER.USER_CODE is '用户编码';
comment on column SY_ORG_ROLE_USER.ROLE_CODE is '角色编码';
comment on column SY_ORG_ROLE_USER.CMPY_CODE is '公司编码';
comment on column SY_ORG_ROLE_USER.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_ROLE_USER.S_USER is '添加者';
comment on column SY_ORG_ROLE_USER.S_MTIME is '更新时间';
create table SY_ORG_USER(
USER_CODE VARCHAR2(40) not null,
USER_LOGIN_NAME VARCHAR2(40),
USER_NAME VARCHAR2(40),
DEPT_CODE VARCHAR2(40),
USER_PASSWORD VARCHAR2(80),
USER_SORT NUMBER(10),
USER_HOME_PHONE VARCHAR2(40),
USER_MOBILE VARCHAR2(40),
USER_QQ VARCHAR2(40),
USER_EMAIL VARCHAR2(40),
USER_WORK_LOC VARCHAR2(40),
USER_POST VARCHAR2(40),
USER_POST_LEVEL NUMBER(10),
USER_ROOM VARCHAR2(80),
USER_WORK_NUM VARCHAR2(40),
USER_IDCARD VARCHAR2(18),
USER_BIRTHDAY VARCHAR2(20),
USER_OFFICE_PHONE VARCHAR2(40),
USER_NATION VARCHAR2(20),
USER_HEIGHT NUMBER(4),
USER_SEX NUMBER(4),
USER_HOME_LAND VARCHAR2(40),
USER_POLITICS VARCHAR2(10),
USER_MARRIAGE VARCHAR2(10),
USER_EDU_LEVLE VARCHAR2(10),
USER_EDU_SCHOOL VARCHAR2(200),
USER_EDU_MAJOR VARCHAR2(200),
USER_TITLE VARCHAR2(40),
USER_TITLE_DATE VARCHAR2(20),
USER_WORK_DATE VARCHAR2(20),
USER_CMPY_DATE VARCHAR2(20),
USER_STATE NUMBER(4),
CMPY_CODE VARCHAR2(40) not null,
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
USER_LOGIN_TYPE NUMBER(4),
USER_EXPIRE_DATE VARCHAR2(20),
USER_PASSWORD_DATE VARCHAR2(20),
S_MTIME VARCHAR2(23),
USER_IMG_SRC VARCHAR2(100),
PT_ID VARCHAR2(40),
USER_FROM VARCHAR2(20),
JIANGANG_FLAG NUMBER(2),
USER_SHORT_NAME VARCHAR2(20),
USER_EN_NAME VARCHAR2(60),
constraint PK_SY_ORG_USER primary key (USER_CODE)
);
comment on table SY_ORG_USER is '用户表';
comment on column SY_ORG_USER.USER_CODE is '用户编码';
comment on column SY_ORG_USER.USER_LOGIN_NAME is '用户系统登录名';
comment on column SY_ORG_USER.USER_NAME is '用户名称';
comment on column SY_ORG_USER.DEPT_CODE is '部门编码';
comment on column SY_ORG_USER.USER_PASSWORD is '用户密码';
comment on column SY_ORG_USER.USER_SORT is '用户排序号';
comment on column SY_ORG_USER.USER_HOME_PHONE is '家庭电话';
comment on column SY_ORG_USER.USER_MOBILE is '手机号码';
comment on column SY_ORG_USER.USER_QQ is '用户QQ';
comment on column SY_ORG_USER.USER_EMAIL is '用户邮箱';
comment on column SY_ORG_USER.USER_WORK_LOC is '工位号';
comment on column SY_ORG_USER.USER_POST is '用户职位';
comment on column SY_ORG_USER.USER_POST_LEVEL is '职位级别';
comment on column SY_ORG_USER.USER_ROOM is '房间号';
comment on column SY_ORG_USER.USER_WORK_NUM is '工号';
comment on column SY_ORG_USER.USER_IDCARD is '身份证号';
comment on column SY_ORG_USER.USER_BIRTHDAY is '出生日期';
comment on column SY_ORG_USER.USER_OFFICE_PHONE is '办公电话';
comment on column SY_ORG_USER.USER_NATION is '民族';
comment on column SY_ORG_USER.USER_HEIGHT is '身高(cm)';
comment on column SY_ORG_USER.USER_SEX is '用户性别,0:男;1:女';
comment on column SY_ORG_USER.USER_HOME_LAND is '籍贯';
comment on column SY_ORG_USER.USER_POLITICS is '政治面貌';
comment on column SY_ORG_USER.USER_MARRIAGE is '婚姻状况';
comment on column SY_ORG_USER.USER_EDU_LEVLE is '学历';
comment on column SY_ORG_USER.USER_EDU_SCHOOL is '学校';
comment on column SY_ORG_USER.USER_EDU_MAJOR is '专业';
comment on column SY_ORG_USER.USER_TITLE is '职称';
comment on column SY_ORG_USER.USER_TITLE_DATE is '职称日期';
comment on column SY_ORG_USER.USER_WORK_DATE is '参加工作日期';
comment on column SY_ORG_USER.USER_CMPY_DATE is '入职日期';
comment on column SY_ORG_USER.USER_STATE is '人员状态，1：在职；2：离职；3：退休';
comment on column SY_ORG_USER.CMPY_CODE is '公司编码';
comment on column SY_ORG_USER.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_USER.S_USER is '添加者';
comment on column SY_ORG_USER.USER_LOGIN_TYPE is '登录认证类型，1：密码；2：动态口令；3：CA认证';
comment on column SY_ORG_USER.USER_EXPIRE_DATE is '用户有效日期';
comment on column SY_ORG_USER.USER_PASSWORD_DATE is '密码有效日期';
comment on column SY_ORG_USER.S_MTIME is '更新时间';
comment on column SY_ORG_USER.USER_IMG_SRC is '用户头像源图片';
comment on column SY_ORG_USER.PT_ID is '用户模版编码';
comment on column SY_ORG_USER.USER_FROM is '来自哪个系统';
comment on column SY_ORG_USER.JIANGANG_FLAG is '兼岗标记：1兼岗用户；2非兼岗用户';
comment on column SY_ORG_USER.USER_SHORT_NAME is '用户简称：名称拼音首字母简写';
comment on column SY_ORG_USER.USER_EN_NAME is '用户拼音：用户英文名或者拼音';
create table SY_ORG_USER_AGENT(
AGT_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40),
TO_USER_CODE VARCHAR2(40),
AGT_BEGIN_DATE VARCHAR2(20),
AGT_END_DATE VARCHAR2(20),
AGT_END_TYPE NUMBER(4),
AGT_NOW_TYPE VARCHAR2(800),
AGT_AFTER_TYPE VARCHAR2(800),
AGT_MEMO VARCHAR2(4000),
AGT_STATUS NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(30),
S_FLAG NUMBER(4),
TYPE_CODES VARCHAR2(1000),
constraint PK_SY_ORG_USER_AGENT primary key (AGT_ID)
);
comment on table SY_ORG_USER_AGENT is '用户委托管理';
comment on column SY_ORG_USER_AGENT.AGT_ID is '主键，UUID';
comment on column SY_ORG_USER_AGENT.USER_CODE is '被委托人';
comment on column SY_ORG_USER_AGENT.TO_USER_CODE is '受委托人';
comment on column SY_ORG_USER_AGENT.AGT_BEGIN_DATE is '委托开始日期';
comment on column SY_ORG_USER_AGENT.AGT_END_DATE is '委托截至日期';
comment on column SY_ORG_USER_AGENT.AGT_END_TYPE is '如何结束委托？1：手动结束；2：自动结束';
comment on column SY_ORG_USER_AGENT.AGT_NOW_TYPE is '现有待办委托：1：待办事务；2：待阅事务（可多选）';
comment on column SY_ORG_USER_AGENT.AGT_AFTER_TYPE is '以后待办委托：1：待办事务；2：待阅事务（可多选）';
comment on column SY_ORG_USER_AGENT.AGT_MEMO is '留言信息';
comment on column SY_ORG_USER_AGENT.AGT_STATUS is '委托状态，1：委托中；2：未启动；3：委托结束';
comment on column SY_ORG_USER_AGENT.S_CMPY is '所在公司';
comment on column SY_ORG_USER_AGENT.S_USER is '操作人';
comment on column SY_ORG_USER_AGENT.S_MTIME is '更新时间';
comment on column SY_ORG_USER_AGENT.S_FLAG is '有效标志，1：有效；2：无效';
comment on column SY_ORG_USER_AGENT.TYPE_CODES is '委托事务类型（字典手工维护）,逗号分隔多种类型';
create table SY_ORG_USER_AGT_TYPE(
AGT_TYPE_ID VARCHAR2(40) not null,
AGT_TYPE_CODE VARCHAR2(40),
AGT_TYPE_NAME VARCHAR2(1000),
AGT_COND VARCHAR2(1000),
AGT_ORDER NUMBER(4),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(40),
S_USER VARCHAR2(40),
S_FLAG NUMBER(4),
constraint PK_SY_ORG_USER_AGT_TYPE primary key (AGT_TYPE_ID)
);
comment on table SY_ORG_USER_AGT_TYPE is '用户委托业务类型表';
comment on column SY_ORG_USER_AGT_TYPE.AGT_TYPE_ID is '主键，UUID';
comment on column SY_ORG_USER_AGT_TYPE.AGT_TYPE_CODE is '业务类型代码';
comment on column SY_ORG_USER_AGT_TYPE.AGT_TYPE_NAME is '业务类型名称';
comment on column SY_ORG_USER_AGT_TYPE.AGT_COND is '业务类型条件';
comment on column SY_ORG_USER_AGT_TYPE.AGT_ORDER is '排序';
comment on column SY_ORG_USER_AGT_TYPE.S_CMPY is '公司编码';
comment on column SY_ORG_USER_AGT_TYPE.S_MTIME is '更新时间';
comment on column SY_ORG_USER_AGT_TYPE.S_USER is '创建人';
comment on column SY_ORG_USER_AGT_TYPE.S_FLAG is '有效标志，1：有效；2：无效';
create table SY_ORG_USER_DESK(
SD_ID VARCHAR2(40) not null,
SD_DESK_DEFAULT VARCHAR2(20),
SD_APP_DEFAULT VARCHAR2(100),
SD_INIT_THEME VARCHAR2(20),
SD_INIT_DESK VARCHAR2(20),
SD_INIT_APP VARCHAR2(4),
SD_MSG_FLAG VARCHAR2(4),
SD_RING_FLAG VARCHAR2(4),
SD_SYSTEM_THEME VARCHAR2(40),
SD_BACK_IMG VARCHAR2(40),
SD_SELF_DEF VARCHAR2(400),
USER_CODE VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
SD_SELF_SELECT VARCHAR2(100),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_USER_DESK primary key (SD_ID)
);
comment on table SY_ORG_USER_DESK is '工作台设置';
comment on column SY_ORG_USER_DESK.SD_ID is '主键';
comment on column SY_ORG_USER_DESK.SD_DESK_DEFAULT is '默认屏幕';
comment on column SY_ORG_USER_DESK.SD_APP_DEFAULT is '默认应用';
comment on column SY_ORG_USER_DESK.SD_INIT_THEME is '默认主题';
comment on column SY_ORG_USER_DESK.SD_INIT_DESK is '默认桌面';
comment on column SY_ORG_USER_DESK.SD_INIT_APP is '初始化系统程序';
comment on column SY_ORG_USER_DESK.SD_MSG_FLAG is '接受消息提醒';
comment on column SY_ORG_USER_DESK.SD_RING_FLAG is '接受消息声音提醒';
comment on column SY_ORG_USER_DESK.SD_SYSTEM_THEME is '系统主题';
comment on column SY_ORG_USER_DESK.SD_BACK_IMG is '背景桌面';
comment on column SY_ORG_USER_DESK.SD_SELF_DEF is '自定义';
comment on column SY_ORG_USER_DESK.USER_CODE is '关联用户';
comment on column SY_ORG_USER_DESK.S_PUBLIC is '公共标志';
comment on column SY_ORG_USER_DESK.S_FLAG is '启用标志';
comment on column SY_ORG_USER_DESK.S_CMPY is '公司主键';
comment on column SY_ORG_USER_DESK.S_USER is '创建者';
comment on column SY_ORG_USER_DESK.SD_SELF_SELECT is '';
comment on column SY_ORG_USER_DESK.S_MTIME is '更新时间';
create table SY_ORG_USER_DESK_ICON(
PI_ID VARCHAR2(40) not null,
PI_TITLE VARCHAR2(200),
PI_SERVS VARCHAR2(4000),
USER_CODE VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
PI_ORDER NUMBER(4),
PI_NORMAO_ICON VARCHAR2(400),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_USER_DESK_ICON primary key (PI_ID)
);
comment on table SY_ORG_USER_DESK_ICON is '图标化首页';
comment on column SY_ORG_USER_DESK_ICON.PI_ID is '主键';
comment on column SY_ORG_USER_DESK_ICON.PI_TITLE is '页面标题';
comment on column SY_ORG_USER_DESK_ICON.PI_SERVS is '服务集合，逗号分隔的菜单主键信息，非节点菜单项';
comment on column SY_ORG_USER_DESK_ICON.USER_CODE is '关联用户';
comment on column SY_ORG_USER_DESK_ICON.S_PUBLIC is '公共标志，1：是；2：否';
comment on column SY_ORG_USER_DESK_ICON.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_USER_DESK_ICON.S_CMPY is '公司主键';
comment on column SY_ORG_USER_DESK_ICON.S_USER is '创建者';
comment on column SY_ORG_USER_DESK_ICON.PI_ORDER is '排序';
comment on column SY_ORG_USER_DESK_ICON.PI_NORMAO_ICON is '';
comment on column SY_ORG_USER_DESK_ICON.S_MTIME is '更新时间';
create table SY_ORG_USER_DESK_MB(
SD_ID VARCHAR2(40) not null,
SD_APPS VARCHAR2(2000),
SD_INIT_DESK VARCHAR2(20),
SD_SYSTEM_THEME VARCHAR2(40),
SD_BACK_IMG VARCHAR2(40),
USER_CODE VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(40),
constraint PK_SY_ORG_USER_DESK_MB primary key (SD_ID)
);
comment on table SY_ORG_USER_DESK_MB is '';
comment on column SY_ORG_USER_DESK_MB.SD_ID is '';
comment on column SY_ORG_USER_DESK_MB.SD_APPS is '';
comment on column SY_ORG_USER_DESK_MB.SD_INIT_DESK is '';
comment on column SY_ORG_USER_DESK_MB.SD_SYSTEM_THEME is '';
comment on column SY_ORG_USER_DESK_MB.SD_BACK_IMG is '';
comment on column SY_ORG_USER_DESK_MB.USER_CODE is '';
comment on column SY_ORG_USER_DESK_MB.S_PUBLIC is '';
comment on column SY_ORG_USER_DESK_MB.S_FLAG is '';
comment on column SY_ORG_USER_DESK_MB.S_CMPY is '';
comment on column SY_ORG_USER_DESK_MB.S_USER is '';
comment on column SY_ORG_USER_DESK_MB.S_MTIME is '';
create table SY_ORG_USER_FLOATMENU(
USER_CODE VARCHAR2(40) not null,
COMS_ID VARCHAR2(2000),
COMS_NAME VARCHAR2(2000),
constraint PK_SY_ORG_USER_FLOATMENU primary key (USER_CODE)
);
comment on table SY_ORG_USER_FLOATMENU is '';
comment on column SY_ORG_USER_FLOATMENU.USER_CODE is '用户编码';
comment on column SY_ORG_USER_FLOATMENU.COMS_ID is '组件ID';
comment on column SY_ORG_USER_FLOATMENU.COMS_NAME is '组件名称';
create table SY_ORG_USER_RELATION(
UR_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40) not null,
ORIGIN_USER_CODE VARCHAR2(40) not null,
RELATION_TYPE NUMBER(1),
RELATION_BTIME VARCHAR2(20),
RELATION_ETIME VARCHAR2(20),
RELATION_MEMO VARCHAR2(400),
CMPY_CODE VARCHAR2(40) not null,
ORIGIN_CMPY_CODE VARCHAR2(40) not null,
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_USER_RELATION primary key (UR_ID)
);
comment on table SY_ORG_USER_RELATION is '用户关系表';
comment on column SY_ORG_USER_RELATION.UR_ID is '用户关系表主键';
comment on column SY_ORG_USER_RELATION.USER_CODE is '用户编码';
comment on column SY_ORG_USER_RELATION.ORIGIN_USER_CODE is '原用户编码';
comment on column SY_ORG_USER_RELATION.RELATION_TYPE is '用户关系类型;0,兼职;1，移交；2，代理';
comment on column SY_ORG_USER_RELATION.RELATION_BTIME is '开始时间';
comment on column SY_ORG_USER_RELATION.RELATION_ETIME is '结束时间';
comment on column SY_ORG_USER_RELATION.RELATION_MEMO is '用户关系描述';
comment on column SY_ORG_USER_RELATION.CMPY_CODE is '公司编码';
comment on column SY_ORG_USER_RELATION.ORIGIN_CMPY_CODE is '原公司编码';
comment on column SY_ORG_USER_RELATION.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_ORG_USER_RELATION.S_USER is '添加者';
comment on column SY_ORG_USER_RELATION.S_MTIME is '更新时间';
create table SY_ORG_USER_RESUME(
RSM_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40),
RSM_BEGIN_DATE VARCHAR2(20),
RSM_END_DATE VARCHAR2(20),
RSM_COMPANY VARCHAR2(200),
RSM_TITLE VARCHAR2(200),
RSM_MEMO VARCHAR2(4000),
RSM_WITNESS VARCHAR2(40),
RSM_TYPE NUMBER(4),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_USER_RESUME primary key (RSM_ID)
);
comment on table SY_ORG_USER_RESUME is '简历信息';
comment on column SY_ORG_USER_RESUME.RSM_ID is '主键，自增';
comment on column SY_ORG_USER_RESUME.USER_CODE is '用户编码';
comment on column SY_ORG_USER_RESUME.RSM_BEGIN_DATE is '起始日期';
comment on column SY_ORG_USER_RESUME.RSM_END_DATE is '截至日期';
comment on column SY_ORG_USER_RESUME.RSM_COMPANY is '所在公司/学校';
comment on column SY_ORG_USER_RESUME.RSM_TITLE is '职务';
comment on column SY_ORG_USER_RESUME.RSM_MEMO is '简介';
comment on column SY_ORG_USER_RESUME.RSM_WITNESS is '见证人';
comment on column SY_ORG_USER_RESUME.RSM_TYPE is '类别';
comment on column SY_ORG_USER_RESUME.S_MTIME is '更新时间';
create table SY_ORG_USER_REWARD(
RWD_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40),
RWD_TITLE VARCHAR2(80),
RWD_TYPE NUMBER(4),
RWD_MEMO VARCHAR2(4000),
RWD_DATE VARCHAR2(20),
S_MTIME VARCHAR2(23),
constraint PK_SY_ORG_USER_REWARD primary key (RWD_ID)
);
comment on table SY_ORG_USER_REWARD is '奖惩情况';
comment on column SY_ORG_USER_REWARD.RWD_ID is '主键，UUID';
comment on column SY_ORG_USER_REWARD.USER_CODE is '用户编码';
comment on column SY_ORG_USER_REWARD.RWD_TITLE is '奖惩称谓';
comment on column SY_ORG_USER_REWARD.RWD_TYPE is '奖惩类型，1：奖励；2：惩罚';
comment on column SY_ORG_USER_REWARD.RWD_MEMO is '奖惩说明';
comment on column SY_ORG_USER_REWARD.RWD_DATE is '日期';
comment on column SY_ORG_USER_REWARD.S_MTIME is '更新时间';
create table SY_ORG_USER_STATE(
USER_CODE VARCHAR2(40) not null,
USER_LAST_IP VARCHAR2(40),
USER_LAST_LOGIN VARCHAR2(30),
USER_LOGIN_FAILS NUMBER(4),
MENU_TIME VARCHAR2(30),
USER_AGT_FLAG NUMBER(4),
SUB_CODES VARCHAR2(4000),
S_MTIME VARCHAR2(30),
JIAN_CODES VARCHAR2(4000),
LEAD_CODES VARCHAR2(4000),
USER_SUB_FLAG NUMBER(4),
USER_CMLE_DEG NUMBER(3),
USER_LAST_OS VARCHAR2(80),
USER_LAST_PCNAME VARCHAR2(80),
USER_LAST_BROWSER VARCHAR2(80),
USER_TOKEN VARCHAR2(200),
USER_LAST_CLIENT VARCHAR2(80),
constraint PK_SY_ORG_USER_STATE primary key (USER_CODE)
);
comment on table SY_ORG_USER_STATE is '用户状态信息';
comment on column SY_ORG_USER_STATE.USER_CODE is '用户编码';
comment on column SY_ORG_USER_STATE.USER_LAST_IP is '上次登录IP';
comment on column SY_ORG_USER_STATE.USER_LAST_LOGIN is '上次登录时间';
comment on column SY_ORG_USER_STATE.USER_LOGIN_FAILS is '登录失败次数';
comment on column SY_ORG_USER_STATE.MENU_TIME is '菜单时间';
comment on column SY_ORG_USER_STATE.USER_AGT_FLAG is '委托标志？ 1：是；2：否，当前是否在委托他人办理状态';
comment on column SY_ORG_USER_STATE.SUB_CODES is '代理用户列表，用户编码逗号分隔，正在被哪些人委托';
comment on column SY_ORG_USER_STATE.S_MTIME is '更新时间';
comment on column SY_ORG_USER_STATE.JIAN_CODES is '兼岗用户列表，多个用户逗号分隔，第一个用户为主用户';
comment on column SY_ORG_USER_STATE.LEAD_CODES is '领导列表，本人作为哪些领导的秘书';
comment on column SY_ORG_USER_STATE.USER_SUB_FLAG is '用户被委托标识， 1：是；2：否';
comment on column SY_ORG_USER_STATE.USER_CMLE_DEG is '用户资料完成度';
comment on column SY_ORG_USER_STATE.USER_LAST_OS is '操作系统';
comment on column SY_ORG_USER_STATE.USER_LAST_PCNAME is '机器名';
comment on column SY_ORG_USER_STATE.USER_LAST_BROWSER is '浏览器';
comment on column SY_ORG_USER_STATE.USER_TOKEN is '用户令牌';
comment on column SY_ORG_USER_STATE.USER_LAST_CLIENT is '客户端';
create table SY_ORG_USER_STYLE(
SS_ID VARCHAR2(40) not null,
SS_STYLE_MENU VARCHAR2(40),
SS_STYLE_BACK VARCHAR2(40),
SS_STYLE_BLOCK VARCHAR2(40),
USER_CODE VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(23),
SS_STYLE_PORTAL VARCHAR2(2000),
constraint PK_SY_ORG_USER_STYLE primary key (SS_ID)
);
comment on table SY_ORG_USER_STYLE is '风格定义设置';
comment on column SY_ORG_USER_STYLE.SS_ID is '主键';
comment on column SY_ORG_USER_STYLE.SS_STYLE_MENU is '菜单(风格定义)';
comment on column SY_ORG_USER_STYLE.SS_STYLE_BACK is '背景(风格定义)';
comment on column SY_ORG_USER_STYLE.SS_STYLE_BLOCK is '信息块(风格定义)';
comment on column SY_ORG_USER_STYLE.USER_CODE is '关联用户';
comment on column SY_ORG_USER_STYLE.S_PUBLIC is '公共标志';
comment on column SY_ORG_USER_STYLE.S_FLAG is '启用标志';
comment on column SY_ORG_USER_STYLE.S_CMPY is '公司主键';
comment on column SY_ORG_USER_STYLE.S_USER is '创建者';
comment on column SY_ORG_USER_STYLE.S_MTIME is '更新时间';
comment on column SY_ORG_USER_STYLE.SS_STYLE_PORTAL is '';
create table SY_ORG_USER_TYPE_AGENT(
AGT_ID VARCHAR2(40) not null,
USER_CODE VARCHAR2(40),
AGT_BEGIN_DATE VARCHAR2(20),
AGT_END_DATE VARCHAR2(20),
AGT_END_TYPE NUMBER(4),
AGT_MEMO VARCHAR2(4000),
AGT_STATUS NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(30),
S_FLAG NUMBER(4),
REAL_END_DATE VARCHAR2(20),
AGT_CURRTODO_FLAG NUMBER(4),
constraint PK_SY_ORG_USER_TYPE_AGENT primary key (AGT_ID)
);
comment on table SY_ORG_USER_TYPE_AGENT is '用户业务委托管理';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_ID is '主键，UUID';
comment on column SY_ORG_USER_TYPE_AGENT.USER_CODE is '被委托人';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_BEGIN_DATE is '委托开始日期';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_END_DATE is '委托截至日期';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_END_TYPE is '如何结束委托？1：手动结束；2：自动结束';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_MEMO is '留言信息';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_STATUS is '委托状态，1：委托中；2：未开始；3：委托结束';
comment on column SY_ORG_USER_TYPE_AGENT.S_CMPY is '所在公司';
comment on column SY_ORG_USER_TYPE_AGENT.S_USER is '操作人';
comment on column SY_ORG_USER_TYPE_AGENT.S_MTIME is '更新时间';
comment on column SY_ORG_USER_TYPE_AGENT.S_FLAG is '有效标志，1：有效；2：无效';
comment on column SY_ORG_USER_TYPE_AGENT.REAL_END_DATE is '实际结束时间';
comment on column SY_ORG_USER_TYPE_AGENT.AGT_CURRTODO_FLAG is '是否交办当前待办，1：是；2否';
create table SY_ORG_USER_TYPE_AGENT_REL(
RE_AGT_ID VARCHAR2(40) not null,
AGT_ID VARCHAR2(40),
USER_CODE VARCHAR2(40),
FROM_USER_CODE VARCHAR2(40),
TO_USER_CODE VARCHAR2(40),
AGT_TYPE_CODE VARCHAR2(40),
AGT_USER_PATH VARCHAR2(4000),
AGT_STATUS NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(40),
S_USER VARCHAR2(40),
REAGT_ID_PATH VARCHAR2(4000),
SRC_AGT_ID VARCHAR2(40),
AGT_BEGIN_DATE VARCHAR2(20),
AGT_END_DATE VARCHAR2(20),
VALID_BEGIN_DATE VARCHAR2(20),
VALID_END_DATE VARCHAR2(20),
LAST_REAGT_ID VARCHAR2(40),
REAL_END_DATE VARCHAR2(20),
constraint PK_SY_ORG_USER_TYPE_AGENT_REL primary key (RE_AGT_ID)
);
comment on table SY_ORG_USER_TYPE_AGENT_REL is '用户业务委托管理关系
A委托A1给B产生委托关系ab，
B委托A1给C产生委托关系bc，
C委托A1给D产生委托关系cd，
对于ab,"委托人"是A，"起委托人"是A，"受委托人"是B，
对于bc,"委托人"是A，"起委托人"是B，"受委托人"是C，
对于cd,"委托人"是A，"起委托人"是C，"受委托人"是D';
comment on column SY_ORG_USER_TYPE_AGENT_REL.RE_AGT_ID is '主键，UUID';
comment on column SY_ORG_USER_TYPE_AGENT_REL.AGT_ID is '外键，UUID';
comment on column SY_ORG_USER_TYPE_AGENT_REL.USER_CODE is '委托人';
comment on column SY_ORG_USER_TYPE_AGENT_REL.FROM_USER_CODE is '起委托人';
comment on column SY_ORG_USER_TYPE_AGENT_REL.TO_USER_CODE is '受委托人';
comment on column SY_ORG_USER_TYPE_AGENT_REL.AGT_TYPE_CODE is '委托业务类型代码';
comment on column SY_ORG_USER_TYPE_AGENT_REL.AGT_USER_PATH is '委托用户路径';
comment on column SY_ORG_USER_TYPE_AGENT_REL.AGT_STATUS is '委托状态，1：委托中；2：未开始；3：委托结束';
comment on column SY_ORG_USER_TYPE_AGENT_REL.S_FLAG is '有效标志，1：有效；2：无效';
comment on column SY_ORG_USER_TYPE_AGENT_REL.S_CMPY is '公司编码';
comment on column SY_ORG_USER_TYPE_AGENT_REL.S_MTIME is '更新时间';
comment on column SY_ORG_USER_TYPE_AGENT_REL.S_USER is '创建人';
comment on column SY_ORG_USER_TYPE_AGENT_REL.REAGT_ID_PATH is '委托主键路径';
comment on column SY_ORG_USER_TYPE_AGENT_REL.SRC_AGT_ID is '起始点外键，UUID';
comment on column SY_ORG_USER_TYPE_AGENT_REL.AGT_BEGIN_DATE is '委托开始日期';
comment on column SY_ORG_USER_TYPE_AGENT_REL.AGT_END_DATE is '委托结束日期';
comment on column SY_ORG_USER_TYPE_AGENT_REL.VALID_BEGIN_DATE is '有效开始日期';
comment on column SY_ORG_USER_TYPE_AGENT_REL.VALID_END_DATE is '有效结束日期';
comment on column SY_ORG_USER_TYPE_AGENT_REL.LAST_REAGT_ID is '上一个节点主键，UUID';
comment on column SY_ORG_USER_TYPE_AGENT_REL.REAL_END_DATE is '实际结束时间';
create table SY_ORG_WORK_HANDOVER(
HO_ID VARCHAR2(40) not null,
ORIG_USER_CODE VARCHAR2(40) not null,
ORIG_USER_NAME VARCHAR2(40),
ORIG_ODEPT_CODE VARCHAR2(40) not null,
TARGET_USER_CODE VARCHAR2(40) not null,
TARGET_USER_NAME VARCHAR2(40),
TARGET_ODEPT_CODE VARCHAR2(40) not null,
S_USER VARCHAR2(40) not null,
S_ATIME VARCHAR2(23) not null,
constraint PK_SY_ORG_WORK_HANDOVER primary key (HO_ID)
);
comment on table SY_ORG_WORK_HANDOVER is '';
comment on column SY_ORG_WORK_HANDOVER.HO_ID is 'ID';
comment on column SY_ORG_WORK_HANDOVER.ORIG_USER_CODE is '移交用户ID';
comment on column SY_ORG_WORK_HANDOVER.ORIG_USER_NAME is '移交用户姓名';
comment on column SY_ORG_WORK_HANDOVER.ORIG_ODEPT_CODE is '移交用户机构ID';
comment on column SY_ORG_WORK_HANDOVER.TARGET_USER_CODE is '接收用户ID';
comment on column SY_ORG_WORK_HANDOVER.TARGET_USER_NAME is '接收用户姓名';
comment on column SY_ORG_WORK_HANDOVER.TARGET_ODEPT_CODE is '接受用户机构ID';
comment on column SY_ORG_WORK_HANDOVER.S_USER is '操作用户';
comment on column SY_ORG_WORK_HANDOVER.S_ATIME is '操作时间';
create table SY_PLUG_REPORT(
REPORT_NAME VARCHAR2(120) not null,
REPORT_PRODUCT VARCHAR2(40) not null,
REPORT_FILE VARCHAR2(200) not null,
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
REPORT_CODE VARCHAR2(120) not null,
constraint PK_SY_PLUG_REPORT primary key (REPORT_CODE)
);
comment on table SY_PLUG_REPORT is '报表配置';
comment on column SY_PLUG_REPORT.REPORT_NAME is '报表名称';
comment on column SY_PLUG_REPORT.REPORT_PRODUCT is '报表类型';
comment on column SY_PLUG_REPORT.REPORT_FILE is '报表文件名称';
comment on column SY_PLUG_REPORT.S_USER is '最后修改用户';
comment on column SY_PLUG_REPORT.S_UNAME is '最后修改用户名称';
comment on column SY_PLUG_REPORT.S_CMPY is '用户所属公司';
comment on column SY_PLUG_REPORT.S_MTIME is '最后修改时间';
comment on column SY_PLUG_REPORT.S_FLAG is '删除标识，1：正常，2：删除';
comment on column SY_PLUG_REPORT.REPORT_CODE is '编码';
create table SY_PLUG_REPORT_ITEM(
ID VARCHAR2(120) not null,
REPORT_CODE VARCHAR2(40),
ARG_NAME VARCHAR2(120),
ARG_CODE VARCHAR2(120),
ARG_TYPE VARCHAR2(120),
DEFAULT_VALUE VARCHAR2(40),
INPUT_MODE VARCHAR2(200),
ACTIVE NUMBER(4),
INPUT_CONFIG VARCHAR2(2000),
INPUT_TYPE VARCHAR2(40),
ARG_COLS NUMBER(4),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
COL_WIDTH NUMBER(4),
constraint PK_SY_PLUG_REPORT_ITEM primary key (ID)
);
comment on table SY_PLUG_REPORT_ITEM is '报表配置项';
comment on column SY_PLUG_REPORT_ITEM.ID is '主键';
comment on column SY_PLUG_REPORT_ITEM.REPORT_CODE is '报表编码';
comment on column SY_PLUG_REPORT_ITEM.ARG_NAME is '参数名称';
comment on column SY_PLUG_REPORT_ITEM.ARG_CODE is '参数编码';
comment on column SY_PLUG_REPORT_ITEM.ARG_TYPE is '参数类型';
comment on column SY_PLUG_REPORT_ITEM.DEFAULT_VALUE is '缺省值';
comment on column SY_PLUG_REPORT_ITEM.INPUT_MODE is '输入模式';
comment on column SY_PLUG_REPORT_ITEM.ACTIVE is '是否启用';
comment on column SY_PLUG_REPORT_ITEM.INPUT_CONFIG is '输入配置';
comment on column SY_PLUG_REPORT_ITEM.INPUT_TYPE is '输入类型';
comment on column SY_PLUG_REPORT_ITEM.ARG_COLS is '参数项占用列数';
comment on column SY_PLUG_REPORT_ITEM.S_USER is '';
comment on column SY_PLUG_REPORT_ITEM.S_UNAME is '';
comment on column SY_PLUG_REPORT_ITEM.S_CMPY is '';
comment on column SY_PLUG_REPORT_ITEM.S_MTIME is '';
comment on column SY_PLUG_REPORT_ITEM.S_FLAG is '';
comment on column SY_PLUG_REPORT_ITEM.COL_WIDTH is '参数宽度';
create table SY_PLUG_SEARCH_CUSTOM(
ID VARCHAR2(120) not null,
KEYWORD VARCHAR2(120),
FIELD VARCHAR2(200),
SERVICE VARCHAR2(2000),
ORDER_FIELD VARCHAR2(2000),
SORT NUMBER(4),
DATA_LIMIT NUMBER(4),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
constraint PK_SY_PLUG_SEARCH_CUSTOM primary key (ID)
);
comment on table SY_PLUG_SEARCH_CUSTOM is '个性化搜索';
comment on column SY_PLUG_SEARCH_CUSTOM.ID is '主键';
comment on column SY_PLUG_SEARCH_CUSTOM.KEYWORD is '关键词';
comment on column SY_PLUG_SEARCH_CUSTOM.FIELD is '关键词位置';
comment on column SY_PLUG_SEARCH_CUSTOM.SERVICE is '限定搜索的数据源';
comment on column SY_PLUG_SEARCH_CUSTOM.ORDER_FIELD is '结果排序方式';
comment on column SY_PLUG_SEARCH_CUSTOM.SORT is '排序';
comment on column SY_PLUG_SEARCH_CUSTOM.DATA_LIMIT is '结果显示条数';
comment on column SY_PLUG_SEARCH_CUSTOM.S_USER is '最后修改用户';
comment on column SY_PLUG_SEARCH_CUSTOM.S_UNAME is '最后修改用户名称';
comment on column SY_PLUG_SEARCH_CUSTOM.S_CMPY is '用户所属公司';
comment on column SY_PLUG_SEARCH_CUSTOM.S_MTIME is '最后修改时间';
comment on column SY_PLUG_SEARCH_CUSTOM.S_FLAG is '删除标识，1：正常，2：删除';
create table SY_PLUG_SEARCH_LINK(
LINK_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
LINK_SERV_ID VARCHAR2(40),
LINK_TITLE VARCHAR2(400),
LINK_COUNT NUMBER(4),
LINK_ORDER NUMBER(4),
LINK_WHERE VARCHAR2(400),
S_FLAG NUMBER(4),
LINK_CONDITION VARCHAR2(800),
LINK_URL VARCHAR2(400),
LINK_MORE_URL VARCHAR2(400),
LINK_DYNAMIC NUMBER(4),
constraint PK_SY_PLUG_SEARCH_LINK primary key (LINK_ID)
);
comment on table SY_PLUG_SEARCH_LINK is '检索关联服务';
comment on column SY_PLUG_SEARCH_LINK.LINK_ID is '关联主键,UUID';
comment on column SY_PLUG_SEARCH_LINK.SERV_ID is '服务主键';
comment on column SY_PLUG_SEARCH_LINK.LINK_SERV_ID is '关联服务主键';
comment on column SY_PLUG_SEARCH_LINK.LINK_TITLE is '检索标题，支持变量替换';
comment on column SY_PLUG_SEARCH_LINK.LINK_COUNT is '关联类型，1：SQL关联；2：检索关联';
comment on column SY_PLUG_SEARCH_LINK.LINK_ORDER is '关联排序';
comment on column SY_PLUG_SEARCH_LINK.LINK_WHERE is 'Where过滤条件';
comment on column SY_PLUG_SEARCH_LINK.S_FLAG is '有效标志，1：是；2：否';
comment on column SY_PLUG_SEARCH_LINK.LINK_CONDITION is '有效表达式，js格式，支持变量替换';
comment on column SY_PLUG_SEARCH_LINK.LINK_URL is '链接URL';
comment on column SY_PLUG_SEARCH_LINK.LINK_MORE_URL is '更多URL';
comment on column SY_PLUG_SEARCH_LINK.LINK_DYNAMIC is '是否动态判断？，1：是（查询时检查）；2：否（索引时坚持）';
create table SY_PLUG_SEARCH_WEBCRAW(
ID VARCHAR2(120) not null,
NAME VARCHAR2(120),
HOST VARCHAR2(200),
CRAWL_URL VARCHAR2(2000),
URL_FILTER VARCHAR2(2000),
TITLE_PRE_TAG VARCHAR2(500),
TITLE_POST_TAG VARCHAR2(500),
TITLE_REGEXP VARCHAR2(100),
CONTENT_PRE_TAG VARCHAR2(500),
CONTENT_POST_TAG VARCHAR2(500),
CONTENT_REGEXP VARCHAR2(100),
CATEGORYS_CONF VARCHAR2(3000),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(23),
GRANTEE_TYPE VARCHAR2(4),
GRANTEE VARCHAR2(3000),
CRAWL_DEPTH NUMBER(4),
constraint PK_SY_PLUG_SEARCH_WEBCRAW primary key (ID)
);
comment on table SY_PLUG_SEARCH_WEBCRAW is '网站抓取';
comment on column SY_PLUG_SEARCH_WEBCRAW.ID is '主键';
comment on column SY_PLUG_SEARCH_WEBCRAW.NAME is '显示名称';
comment on column SY_PLUG_SEARCH_WEBCRAW.HOST is '网站地址';
comment on column SY_PLUG_SEARCH_WEBCRAW.CRAWL_URL is '起始抓取URL';
comment on column SY_PLUG_SEARCH_WEBCRAW.URL_FILTER is 'url过滤规则';
comment on column SY_PLUG_SEARCH_WEBCRAW.TITLE_PRE_TAG is '标题截取前缀';
comment on column SY_PLUG_SEARCH_WEBCRAW.TITLE_POST_TAG is '标题截取后缀';
comment on column SY_PLUG_SEARCH_WEBCRAW.TITLE_REGEXP is '标题截取正则';
comment on column SY_PLUG_SEARCH_WEBCRAW.CONTENT_PRE_TAG is '内容截取前缀';
comment on column SY_PLUG_SEARCH_WEBCRAW.CONTENT_POST_TAG is '内容截取后缀';
comment on column SY_PLUG_SEARCH_WEBCRAW.CONTENT_REGEXP is '内容截取正则';
comment on column SY_PLUG_SEARCH_WEBCRAW.CATEGORYS_CONF is '栏目配置，例：<category name="政务工作" reg-exp=".*/tab60/.*" />';
comment on column SY_PLUG_SEARCH_WEBCRAW.S_FLAG is '删除标识，1：正常，2：删除';
comment on column SY_PLUG_SEARCH_WEBCRAW.S_MTIME is '更新时间';
comment on column SY_PLUG_SEARCH_WEBCRAW.GRANTEE_TYPE is '';
comment on column SY_PLUG_SEARCH_WEBCRAW.GRANTEE is '';
comment on column SY_PLUG_SEARCH_WEBCRAW.CRAWL_DEPTH is 'crawlDepth';
create table SY_PLUG_SEARCH_WORD(
WORD_ID VARCHAR2(40) not null,
WORD_CODE VARCHAR2(80),
WORD_LENGTH NUMBER(4),
WORD_ORDER NUMBER(10),
WORD_TYPE VARCHAR2(40),
WORD_FLAG NUMBER(4),
constraint PK_SY_PLUG_SEARCH_WORD primary key (WORD_ID)
);
comment on table SY_PLUG_SEARCH_WORD is '全文检索词库';
comment on column SY_PLUG_SEARCH_WORD.WORD_ID is '主键，自增';
comment on column SY_PLUG_SEARCH_WORD.WORD_CODE is '词语';
comment on column SY_PLUG_SEARCH_WORD.WORD_LENGTH is '长度';
comment on column SY_PLUG_SEARCH_WORD.WORD_ORDER is '排序';
comment on column SY_PLUG_SEARCH_WORD.WORD_TYPE is '分类';
comment on column SY_PLUG_SEARCH_WORD.WORD_FLAG is '同步标志，1：已同步；2：未同步';
create table SY_QRTZ_BLOB_TRIGGERS(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_NAME VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
BLOB_DATA BLOB,
constraint PK_SY_QRTZ_BLOB_TRIGGERS primary key (SCHED_NAME,TRIGGER_GROUP,TRIGGER_NAME)
);
comment on table SY_QRTZ_BLOB_TRIGGERS is '';
comment on column SY_QRTZ_BLOB_TRIGGERS.SCHED_NAME is '';
comment on column SY_QRTZ_BLOB_TRIGGERS.TRIGGER_NAME is '';
comment on column SY_QRTZ_BLOB_TRIGGERS.TRIGGER_GROUP is '';
comment on column SY_QRTZ_BLOB_TRIGGERS.BLOB_DATA is '';
create table SY_QRTZ_CALENDARS(
SCHED_NAME VARCHAR2(120) not null,
CALENDAR_NAME VARCHAR2(200) not null,
CALENDAR BLOB not null,
constraint PK_SY_QRTZ_CALENDARS primary key (CALENDAR_NAME,SCHED_NAME)
);
comment on table SY_QRTZ_CALENDARS is '';
comment on column SY_QRTZ_CALENDARS.SCHED_NAME is '';
comment on column SY_QRTZ_CALENDARS.CALENDAR_NAME is '';
comment on column SY_QRTZ_CALENDARS.CALENDAR is '';
create table SY_QRTZ_CRON_TRIGGERS(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_NAME VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
CRON_EXPRESSION VARCHAR2(120) not null,
TIME_ZONE_ID VARCHAR2(80),
constraint PK_SY_QRTZ_CRON_TRIGGERS primary key (SCHED_NAME,TRIGGER_GROUP,TRIGGER_NAME)
);
comment on table SY_QRTZ_CRON_TRIGGERS is '';
comment on column SY_QRTZ_CRON_TRIGGERS.SCHED_NAME is '';
comment on column SY_QRTZ_CRON_TRIGGERS.TRIGGER_NAME is '';
comment on column SY_QRTZ_CRON_TRIGGERS.TRIGGER_GROUP is '';
comment on column SY_QRTZ_CRON_TRIGGERS.CRON_EXPRESSION is '';
comment on column SY_QRTZ_CRON_TRIGGERS.TIME_ZONE_ID is '';
create table SY_QRTZ_FIRED_TRIGGERS(
SCHED_NAME VARCHAR2(120) not null,
ENTRY_ID VARCHAR2(95) not null,
TRIGGER_NAME VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
INSTANCE_NAME VARCHAR2(200) not null,
FIRED_TIME NUMBER(13) not null,
PRIORITY NUMBER(13) not null,
STATE VARCHAR2(16) not null,
JOB_NAME VARCHAR2(200),
JOB_GROUP VARCHAR2(200),
IS_NONCONCURRENT VARCHAR2(1),
REQUESTS_RECOVERY VARCHAR2(1),
constraint PK_SY_QRTZ_FIRED_TRIGGERS primary key (ENTRY_ID,SCHED_NAME)
);
comment on table SY_QRTZ_FIRED_TRIGGERS is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.SCHED_NAME is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.ENTRY_ID is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.TRIGGER_NAME is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.TRIGGER_GROUP is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.INSTANCE_NAME is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.FIRED_TIME is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.PRIORITY is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.STATE is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.JOB_NAME is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.JOB_GROUP is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.IS_NONCONCURRENT is '';
comment on column SY_QRTZ_FIRED_TRIGGERS.REQUESTS_RECOVERY is '';
create table SY_QRTZ_JOB_DETAILS(
SCHED_NAME VARCHAR2(120) not null,
JOB_NAME VARCHAR2(200) not null,
JOB_GROUP VARCHAR2(200) not null,
DESCRIPTION VARCHAR2(250),
JOB_CLASS_NAME VARCHAR2(250) not null,
IS_DURABLE VARCHAR2(1) not null,
IS_NONCONCURRENT VARCHAR2(1) not null,
IS_UPDATE_DATA VARCHAR2(1) not null,
REQUESTS_RECOVERY VARCHAR2(1) not null,
JOB_DATA BLOB,
constraint PK_SY_QRTZ_JOB_DETAILS primary key (JOB_GROUP,JOB_NAME,SCHED_NAME)
);
comment on table SY_QRTZ_JOB_DETAILS is '';
comment on column SY_QRTZ_JOB_DETAILS.SCHED_NAME is '';
comment on column SY_QRTZ_JOB_DETAILS.JOB_NAME is '';
comment on column SY_QRTZ_JOB_DETAILS.JOB_GROUP is '';
comment on column SY_QRTZ_JOB_DETAILS.DESCRIPTION is '';
comment on column SY_QRTZ_JOB_DETAILS.JOB_CLASS_NAME is '';
comment on column SY_QRTZ_JOB_DETAILS.IS_DURABLE is '';
comment on column SY_QRTZ_JOB_DETAILS.IS_NONCONCURRENT is '';
comment on column SY_QRTZ_JOB_DETAILS.IS_UPDATE_DATA is '';
comment on column SY_QRTZ_JOB_DETAILS.REQUESTS_RECOVERY is '';
comment on column SY_QRTZ_JOB_DETAILS.JOB_DATA is '';
create table SY_QRTZ_LOCKS(
SCHED_NAME VARCHAR2(120) not null,
LOCK_NAME VARCHAR2(40) not null,
constraint PK_SY_QRTZ_LOCKS primary key (LOCK_NAME,SCHED_NAME)
);
comment on table SY_QRTZ_LOCKS is '';
comment on column SY_QRTZ_LOCKS.SCHED_NAME is '';
comment on column SY_QRTZ_LOCKS.LOCK_NAME is '';
create table SY_QRTZ_PAUSED_TRIGGER_GRPS(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
constraint PK_SY_QRTZ_PAUSED_TRIGGER_GRPS primary key (SCHED_NAME,TRIGGER_GROUP)
);
comment on table SY_QRTZ_PAUSED_TRIGGER_GRPS is '';
comment on column SY_QRTZ_PAUSED_TRIGGER_GRPS.SCHED_NAME is '';
comment on column SY_QRTZ_PAUSED_TRIGGER_GRPS.TRIGGER_GROUP is '';
create table SY_QRTZ_SCHEDULER_STATE(
SCHED_NAME VARCHAR2(120) not null,
INSTANCE_NAME VARCHAR2(200) not null,
LAST_CHECKIN_TIME NUMBER(13) not null,
CHECKIN_INTERVAL NUMBER(13) not null,
constraint PK_SY_QRTZ_SCHEDULER_STATE primary key (INSTANCE_NAME,SCHED_NAME)
);
comment on table SY_QRTZ_SCHEDULER_STATE is '';
comment on column SY_QRTZ_SCHEDULER_STATE.SCHED_NAME is '';
comment on column SY_QRTZ_SCHEDULER_STATE.INSTANCE_NAME is '';
comment on column SY_QRTZ_SCHEDULER_STATE.LAST_CHECKIN_TIME is '';
comment on column SY_QRTZ_SCHEDULER_STATE.CHECKIN_INTERVAL is '';
create table SY_QRTZ_SIMPLE_TRIGGERS(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_NAME VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
REPEAT_COUNT NUMBER(7) not null,
REPEAT_INTERVAL NUMBER(12) not null,
TIMES_TRIGGERED NUMBER(10) not null,
constraint PK_SY_QRTZ_SIMPLE_TRIGGERS primary key (SCHED_NAME,TRIGGER_GROUP,TRIGGER_NAME)
);
comment on table SY_QRTZ_SIMPLE_TRIGGERS is '';
comment on column SY_QRTZ_SIMPLE_TRIGGERS.SCHED_NAME is '';
comment on column SY_QRTZ_SIMPLE_TRIGGERS.TRIGGER_NAME is '';
comment on column SY_QRTZ_SIMPLE_TRIGGERS.TRIGGER_GROUP is '';
comment on column SY_QRTZ_SIMPLE_TRIGGERS.REPEAT_COUNT is '';
comment on column SY_QRTZ_SIMPLE_TRIGGERS.REPEAT_INTERVAL is '';
comment on column SY_QRTZ_SIMPLE_TRIGGERS.TIMES_TRIGGERED is '';
create table SY_QRTZ_SIMPROP_TRIGGERS(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_NAME VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
STR_PROP_1 VARCHAR2(512),
STR_PROP_2 VARCHAR2(512),
STR_PROP_3 VARCHAR2(512),
INT_PROP_1 NUMBER(10),
INT_PROP_2 NUMBER(10),
LONG_PROP_1 NUMBER(13),
LONG_PROP_2 NUMBER(13),
DEC_PROP_1 NUMBER(13,4),
DEC_PROP_2 NUMBER(13,4),
BOOL_PROP_1 VARCHAR2(1),
BOOL_PROP_2 VARCHAR2(1),
constraint PK_SY_QRTZ_SIMPROP_TRIGGERS primary key (SCHED_NAME,TRIGGER_GROUP,TRIGGER_NAME)
);
comment on table SY_QRTZ_SIMPROP_TRIGGERS is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.SCHED_NAME is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.TRIGGER_NAME is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.TRIGGER_GROUP is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.STR_PROP_1 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.STR_PROP_2 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.STR_PROP_3 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.INT_PROP_1 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.INT_PROP_2 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.LONG_PROP_1 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.LONG_PROP_2 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.DEC_PROP_1 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.DEC_PROP_2 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.BOOL_PROP_1 is '';
comment on column SY_QRTZ_SIMPROP_TRIGGERS.BOOL_PROP_2 is '';
create table SY_QRTZ_TRIGGERS(
SCHED_NAME VARCHAR2(120) not null,
TRIGGER_NAME VARCHAR2(200) not null,
TRIGGER_GROUP VARCHAR2(200) not null,
JOB_NAME VARCHAR2(200) not null,
JOB_GROUP VARCHAR2(200) not null,
DESCRIPTION VARCHAR2(250),
NEXT_FIRE_TIME NUMBER(13),
PREV_FIRE_TIME NUMBER(13),
PRIORITY NUMBER(13),
TRIGGER_STATE VARCHAR2(16) not null,
TRIGGER_TYPE VARCHAR2(8) not null,
START_TIME NUMBER(13) not null,
END_TIME NUMBER(13),
CALENDAR_NAME VARCHAR2(200),
MISFIRE_INSTR NUMBER(2),
JOB_DATA BLOB,
constraint PK_SY_QRTZ_TRIGGERS primary key (SCHED_NAME,TRIGGER_GROUP,TRIGGER_NAME)
);
comment on table SY_QRTZ_TRIGGERS is '';
comment on column SY_QRTZ_TRIGGERS.SCHED_NAME is '';
comment on column SY_QRTZ_TRIGGERS.TRIGGER_NAME is '';
comment on column SY_QRTZ_TRIGGERS.TRIGGER_GROUP is '';
comment on column SY_QRTZ_TRIGGERS.JOB_NAME is '';
comment on column SY_QRTZ_TRIGGERS.JOB_GROUP is '';
comment on column SY_QRTZ_TRIGGERS.DESCRIPTION is '';
comment on column SY_QRTZ_TRIGGERS.NEXT_FIRE_TIME is '';
comment on column SY_QRTZ_TRIGGERS.PREV_FIRE_TIME is '';
comment on column SY_QRTZ_TRIGGERS.PRIORITY is '';
comment on column SY_QRTZ_TRIGGERS.TRIGGER_STATE is '';
comment on column SY_QRTZ_TRIGGERS.TRIGGER_TYPE is '';
comment on column SY_QRTZ_TRIGGERS.START_TIME is '';
comment on column SY_QRTZ_TRIGGERS.END_TIME is '';
comment on column SY_QRTZ_TRIGGERS.CALENDAR_NAME is '';
comment on column SY_QRTZ_TRIGGERS.MISFIRE_INSTR is '';
comment on column SY_QRTZ_TRIGGERS.JOB_DATA is '';
create table SY_SERV(
SERV_ID VARCHAR2(40) not null,
SERV_TYPE NUMBER(4),
SERV_NAME VARCHAR2(80),
SERV_PID VARCHAR2(40),
TABLE_VIEW VARCHAR2(40),
TABLE_ACTION VARCHAR2(40),
SERV_SQL_WHERE VARCHAR2(200),
SERV_DATA_SOURCE VARCHAR2(40),
SERV_KEYS VARCHAR2(200),
SERV_LIST_STYLE VARCHAR2(400),
SERV_PAGE_COUNT NUMBER(4),
SERV_JS VARCHAR2(1000),
SERV_LIST_LOAD VARCHAR2(400),
SERV_CARD_LOAD VARCHAR2(400),
SERV_CARD_STYLE NUMBER(4),
SERV_CLASS VARCHAR2(100),
SERV_CACHE_FLAG NUMBER(4),
SERV_LOCK_FLAG NUMBER(4),
SERV_DELETE_FLAG NUMBER(4),
SERV_AUTH_FLAG NUMBER(4),
SERV_NAV_ITEMS VARCHAR2(400),
SERV_MEMO VARCHAR2(2000),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
SERV_SQL_ORDER VARCHAR2(200),
SERV_DICT_CACHE VARCHAR2(400),
SERV_SEARCH_FLAG NUMBER(4),
SERV_SRC_ID VARCHAR2(40),
SERV_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
SERV_MOBILE_LIST VARCHAR2(2000),
SERV_DATA_TITLE VARCHAR2(400),
SERV_CARD_TMPL VARCHAR2(100),
SERV_DATA_CODE VARCHAR2(200),
SERV_QUERY_MODE NUMBER(4),
SERV_RED_HEAD VARCHAR2(200),
SERV_CARD_TMPL_CODES VARCHAR2(1000),
SERV_WF_FLAG NUMBER(4),
SERV_FILE_PATH VARCHAR2(400),
SERV_NO_COUNT NUMBER(4),
PRO_FLAG NUMBER(4),
TODO_TYPE VARCHAR2(40),
SERV_MOBILE_JS VARCHAR2(1000),
constraint PK_SY_SERV primary key (SERV_ID)
);
comment on table SY_SERV is '服务定义';
comment on column SY_SERV.SERV_ID is '服务主键';
comment on column SY_SERV.SERV_TYPE is '服务类型  1：服务；2：报表；3：数据表；4：自定义';
comment on column SY_SERV.SERV_NAME is '服务名称';
comment on column SY_SERV.SERV_PID is '父服务编码';
comment on column SY_SERV.TABLE_VIEW is '查询表名  select时用到的表或者视图名';
comment on column SY_SERV.TABLE_ACTION is '操作表名  修改或删除时用到的表名';
comment on column SY_SERV.SERV_SQL_WHERE is 'WHERE条件';
comment on column SY_SERV.SERV_DATA_SOURCE is '数据源编码';
comment on column SY_SERV.SERV_KEYS is '主键信息  多个主键用逗号分隔';
comment on column SY_SERV.SERV_LIST_STYLE is '列表样式定义';
comment on column SY_SERV.SERV_PAGE_COUNT is '每页记录数';
comment on column SY_SERV.SERV_JS is '卡片扩展HTML';
comment on column SY_SERV.SERV_LIST_LOAD is '列表装载JS';
comment on column SY_SERV.SERV_CARD_LOAD is '卡片装载JS';
comment on column SY_SERV.SERV_CARD_STYLE is '卡片页面列数';
comment on column SY_SERV.SERV_CLASS is '服务扩展类';
comment on column SY_SERV.SERV_CACHE_FLAG is '缓存标志  1：缓存（随用随装载）；2：不装载（缺省）3：缓存（全部装载）';
comment on column SY_SERV.SERV_LOCK_FLAG is '乐观锁判断  1：启用锁定判断；2：不判断';
comment on column SY_SERV.SERV_DELETE_FLAG is '假删除判断  1：启用假删除及S_FLAG；2：不启用';
comment on column SY_SERV.SERV_AUTH_FLAG is '权限判断 1：session判断  2：服务权限；3：操作权限；4：数据权限；9：不 判断';
comment on column SY_SERV.SERV_NAV_ITEMS is '左侧导航字段，多个逗号分隔';
comment on column SY_SERV.SERV_MEMO is '服务说明';
comment on column SY_SERV.S_PUBLIC is '公共标志，1：是；2：否';
comment on column SY_SERV.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV.S_CMPY is '公司主键';
comment on column SY_SERV.S_USER is '创建者';
comment on column SY_SERV.SERV_SQL_ORDER is 'ORDERBY语句';
comment on column SY_SERV.SERV_DICT_CACHE is '字典缓存，支持多个字典编码，逗号分隔，修改数据后会自动清除对应字典的缓存';
comment on column SY_SERV.SERV_SEARCH_FLAG is '全文索引标志，1：启用；2：禁用（缺省）';
comment on column SY_SERV.SERV_SRC_ID is '引用自服务？（共享附件设置）';
comment on column SY_SERV.SERV_CMPY is '公司字段，用于区分多组织，装载对应字典';
comment on column SY_SERV.S_MTIME is '更新时间';
comment on column SY_SERV.SERV_MOBILE_LIST is '移动列表格式，HTML代码，自定义移动列表显示格式';
comment on column SY_SERV.SERV_DATA_TITLE is '标题格式，支持多个字段组合格式';
comment on column SY_SERV.SERV_CARD_TMPL is '卡片模版？ 1：是；2：否';
comment on column SY_SERV.SERV_DATA_CODE is '编码格式';
comment on column SY_SERV.SERV_QUERY_MODE is '查询模式，1：简洁模式；2：平铺模式；3：窗口模式';
comment on column SY_SERV.SERV_RED_HEAD is '红头文字';
comment on column SY_SERV.SERV_CARD_TMPL_CODES is '模版表达式，多卡片模版选择表达式，JSON列表格式，按顺序执行。';
comment on column SY_SERV.SERV_WF_FLAG is '流程标志：1.自动启动流程；2.手动或不启动流程';
comment on column SY_SERV.SERV_FILE_PATH is '文件路径';
comment on column SY_SERV.SERV_NO_COUNT is '查询不计总数？1：是；2：否（缺省）';
comment on column SY_SERV.PRO_FLAG is '产品标识？1：是；2：否';
comment on column SY_SERV.TODO_TYPE is '待办标识，与待办结合用于分组显示待办总数，不设置的话缺省使用SERV_SRC_ID';
comment on column SY_SERV.SERV_MOBILE_JS is '卡片移动HTML,HTML语法，支持扩展CSS和JS';
create table SY_SERV_ACT(
ACT_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40) not null,
ACT_CODE VARCHAR2(40) not null,
ACT_NAME VARCHAR2(40),
ACT_TYPE NUMBER(4),
ACT_ORDER NUMBER(4),
ACT_LOG_FLAG NUMBER(4),
ACT_EXPRESSION VARCHAR2(200),
ACT_HOT_KEY VARCHAR2(20),
ACT_MEMO VARCHAR2(400),
S_FLAG NUMBER(4),
ACT_CSS VARCHAR2(200),
ACT_GROUP NUMBER(4),
S_MTIME VARCHAR2(23),
ACT_EXPRESSION_FLAG NUMBER(4),
ACT_WS_FLAG NUMBER(4),
ACT_WS_RESULT VARCHAR2(4000),
ACT_TIP VARCHAR2(400),
ACT_MOBILE_FLAG VARCHAR2(40),
constraint PK_SY_SERV_ACT primary key (ACT_ID)
);
comment on table SY_SERV_ACT is '服务按钮';
comment on column SY_SERV_ACT.ACT_ID is '操作主键，自增';
comment on column SY_SERV_ACT.SERV_ID is '服务主键';
comment on column SY_SERV_ACT.ACT_CODE is '操作编码';
comment on column SY_SERV_ACT.ACT_NAME is '操作名称';
comment on column SY_SERV_ACT.ACT_TYPE is '操作类型  1:按钮列表；2:按钮卡片；3:非按钮';
comment on column SY_SERV_ACT.ACT_ORDER is '排序';
comment on column SY_SERV_ACT.ACT_LOG_FLAG is '操作留痕  1:留痕；2:不留痕';
comment on column SY_SERV_ACT.ACT_EXPRESSION is '操作表达式  支持系统变量和数据变量';
comment on column SY_SERV_ACT.ACT_HOT_KEY is '热键';
comment on column SY_SERV_ACT.ACT_MEMO is '操作说明';
comment on column SY_SERV_ACT.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV_ACT.ACT_CSS is '按钮样式，采用样式类名';
comment on column SY_SERV_ACT.ACT_GROUP is '是否编辑组？，1：是；2：否';
comment on column SY_SERV_ACT.S_MTIME is '更新时间';
comment on column SY_SERV_ACT.ACT_EXPRESSION_FLAG is '和操作表达式配合使用，1.是: 默认值，后台判断执行 2.否: 后台忽略执行';
comment on column SY_SERV_ACT.ACT_WS_FLAG is '启用WebService？';
comment on column SY_SERV_ACT.ACT_WS_RESULT is 'WebServie结果';
comment on column SY_SERV_ACT.ACT_TIP is '提示说明';
comment on column SY_SERV_ACT.ACT_MOBILE_FLAG is '移动标志，1：是（缺省）；2：否';
create table SY_SERV_ACT_PARAM(
PARAM_ID VARCHAR2(40) not null,
ACT_ID VARCHAR2(40),
PARAM_CODE VARCHAR2(40),
PARAM_TYPE VARCHAR2(20),
PARAM_FORMAT VARCHAR2(4000),
PARAM_MEMO VARCHAR2(4000),
PARAM_MUST NUMBER(4),
PARAM_ORDER NUMBER(4),
constraint PK_SY_SERV_ACT_PARAM primary key (PARAM_ID)
);
comment on table SY_SERV_ACT_PARAM is '参数定义';
comment on column SY_SERV_ACT_PARAM.PARAM_ID is '主键，UUID';
comment on column SY_SERV_ACT_PARAM.ACT_ID is '操作主键，自增';
comment on column SY_SERV_ACT_PARAM.PARAM_CODE is '参数值';
comment on column SY_SERV_ACT_PARAM.PARAM_TYPE is '参数类型';
comment on column SY_SERV_ACT_PARAM.PARAM_FORMAT is '参数格式';
comment on column SY_SERV_ACT_PARAM.PARAM_MEMO is '参数描述';
comment on column SY_SERV_ACT_PARAM.PARAM_MUST is '是否必须？ 1：是；2：否（缺省）';
comment on column SY_SERV_ACT_PARAM.PARAM_ORDER is '参数排序';
create table SY_SERV_COMMENT(
C_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
C_CONTENT VARCHAR2(4000),
S_CMPY VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_USER VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(23),
C_STATUS VARCHAR2(40),
LIKE_VOTE NUMBER(5),
DISLIKE_VOTE NUMBER(5),
REPLY_TO VARCHAR2(40),
S_CTIME VARCHAR2(23),
C_NUMBER NUMBER(5),
S_UNAME VARCHAR2(40),
C_QUOTE_CONTENT LONG,
ACL_TYPE NUMBER(4),
constraint PK_SY_SERV_COMMENT primary key (C_ID)
);
comment on table SY_SERV_COMMENT is '评论表';
comment on column SY_SERV_COMMENT.C_ID is '主键ID';
comment on column SY_SERV_COMMENT.SERV_ID is '服务ID';
comment on column SY_SERV_COMMENT.DATA_ID is '数据ID';
comment on column SY_SERV_COMMENT.C_CONTENT is '评论内容';
comment on column SY_SERV_COMMENT.S_CMPY is '公司ID';
comment on column SY_SERV_COMMENT.S_ODEPT is '机构编码';
comment on column SY_SERV_COMMENT.S_TDEPT is '有效部门';
comment on column SY_SERV_COMMENT.S_DEPT is '所属部门';
comment on column SY_SERV_COMMENT.S_USER is '提问用户';
comment on column SY_SERV_COMMENT.S_FLAG is '是否有效 (1,是;2,否)';
comment on column SY_SERV_COMMENT.S_MTIME is '更新时间';
comment on column SY_SERV_COMMENT.C_STATUS is '评论所属状态：1，已审核；2，未审核';
comment on column SY_SERV_COMMENT.LIKE_VOTE is '支持数量';
comment on column SY_SERV_COMMENT.DISLIKE_VOTE is '反对数量';
comment on column SY_SERV_COMMENT.REPLY_TO is '对XX的回应';
comment on column SY_SERV_COMMENT.S_CTIME is '创建时间';
comment on column SY_SERV_COMMENT.C_NUMBER is '评论编号';
comment on column SY_SERV_COMMENT.S_UNAME is '提问用户名称';
comment on column SY_SERV_COMMENT.C_QUOTE_CONTENT is '';
comment on column SY_SERV_COMMENT.ACL_TYPE is '权限类型';
create table SY_SERV_COMMENT_VOTE(
VOTE_ID VARCHAR2(40) not null,
VOTE_IP VARCHAR2(40),
VOTE_USER VARCHAR2(40),
VOTE_VALUE NUMBER(4),
COMMENT_ID VARCHAR2(40),
S_USER VARCHAR2(40),
S_UNAME VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_CTIME VARCHAR2(23),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
constraint PK_SY_SERV_COMMENT_VOTE primary key (VOTE_ID)
);
comment on table SY_SERV_COMMENT_VOTE is '评论投票结果';
comment on column SY_SERV_COMMENT_VOTE.VOTE_ID is '主键';
comment on column SY_SERV_COMMENT_VOTE.VOTE_IP is '投票IP';
comment on column SY_SERV_COMMENT_VOTE.VOTE_USER is '投票用户';
comment on column SY_SERV_COMMENT_VOTE.VOTE_VALUE is '投票性质? 1:支持,2:反对';
comment on column SY_SERV_COMMENT_VOTE.COMMENT_ID is '评论ID';
comment on column SY_SERV_COMMENT_VOTE.S_USER is '最后修改用户';
comment on column SY_SERV_COMMENT_VOTE.S_UNAME is '最后修改用户名称';
comment on column SY_SERV_COMMENT_VOTE.S_CMPY is '用户所属公司';
comment on column SY_SERV_COMMENT_VOTE.S_CTIME is '创建时间';
comment on column SY_SERV_COMMENT_VOTE.S_MTIME is '最后修改时间';
comment on column SY_SERV_COMMENT_VOTE.S_FLAG is '删除标识，1：正常，2：删除';

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


create table SY_SERV_DACL_ITEM(
ACL_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
ACL_TYPE VARCHAR2(40),
ACL_OWNER VARCHAR2(40),
DATA_ID VARCHAR2(40),
S_USER VARCHAR2(40),
constraint PK_SY_SERV_DACL_ITEM primary key (ACL_ID)
);
comment on table SY_SERV_DACL_ITEM is '';
comment on column SY_SERV_DACL_ITEM.ACL_ID is '栏目权限ID';
comment on column SY_SERV_DACL_ITEM.SERV_ID is '服务ID';
comment on column SY_SERV_DACL_ITEM.ACL_TYPE is '权限类别：用户自定义的，例如：浏览、发布、管理';
comment on column SY_SERV_DACL_ITEM.ACL_OWNER is '授权主体CODE：角色、部门、用户。分别以R_、D_、U_为前缀';
comment on column SY_SERV_DACL_ITEM.DATA_ID is '服务实例数据ID';
comment on column SY_SERV_DACL_ITEM.S_USER is '添加者CODE';
create table SY_SERV_DICT(
DICT_ID VARCHAR2(40) not null,
DICT_NAME VARCHAR2(40),
DICT_IS_INNER NUMBER(4),
DICT_TYPE NUMBER(4),
TABLE_ID VARCHAR2(40),
TABLE_SELECT VARCHAR2(400),
TABLE_WHERE VARCHAR2(400),
TABLE_ORDER VARCHAR2(400),
DICT_F_ID VARCHAR2(40),
DICT_F_NAME VARCHAR2(40),
DICT_F_PARENT VARCHAR2(40),
DICT_F_LEAF VARCHAR2(40),
DICT_F_FLAG VARCHAR2(40),
DICT_LOAD_TYPE NUMBER(4),
DICT_DIS_FORMAT VARCHAR2(200),
DICT_DIS_LAYER NUMBER(4),
DICT_NAME_LAYER NUMBER(4),
DICT_CHILD_ID VARCHAR2(40),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
DICT_F_CMPY VARCHAR2(40),
DICT_F_PATH VARCHAR2(40),
DICT_F_LEVEL VARCHAR2(40),
DICT_DATA_SOURCE VARCHAR2(40),
S_MTIME VARCHAR2(23),
DICT_ROOT VARCHAR2(40),
DICT_EXPRESSION VARCHAR2(400),
DICT_CLASS VARCHAR2(200),
DICT_SRC_ID VARCHAR2(40),
PRO_FLAG NUMBER(4),
constraint PK_SY_SERV_DICT primary key (DICT_ID)
);
comment on table SY_SERV_DICT is '字典表';
comment on column SY_SERV_DICT.DICT_ID is '字典主键';
comment on column SY_SERV_DICT.DICT_NAME is '字典名称';
comment on column SY_SERV_DICT.DICT_IS_INNER is '内部字典？，1：是；2：否';
comment on column SY_SERV_DICT.DICT_TYPE is '字典类型，1：列表；2：树；3：叶子';
comment on column SY_SERV_DICT.TABLE_ID is '所在表主键';
comment on column SY_SERV_DICT.TABLE_SELECT is '查询结果字段';
comment on column SY_SERV_DICT.TABLE_WHERE is '过滤条件';
comment on column SY_SERV_DICT.TABLE_ORDER is '排序字段';
comment on column SY_SERV_DICT.DICT_F_ID is '主键字段';
comment on column SY_SERV_DICT.DICT_F_NAME is '名称字段';
comment on column SY_SERV_DICT.DICT_F_PARENT is '父字段';
comment on column SY_SERV_DICT.DICT_F_LEAF is '叶子节点字段';
comment on column SY_SERV_DICT.DICT_F_FLAG is '启用标志字段';
comment on column SY_SERV_DICT.DICT_LOAD_TYPE is '装载方式，1：启动装载（缺省）；2：用时装载';
comment on column SY_SERV_DICT.DICT_DIS_FORMAT is '显示格式，支持CODE、NAME、IMG的替换';
comment on column SY_SERV_DICT.DICT_DIS_LAYER is '显示层级，显示几个层级数据字典';
comment on column SY_SERV_DICT.DICT_NAME_LAYER is '显示层级，在当前名字上显示几个层级';
comment on column SY_SERV_DICT.DICT_CHILD_ID is '子字典主键';
comment on column SY_SERV_DICT.S_PUBLIC is '公共标志，1：是；2：否';
comment on column SY_SERV_DICT.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV_DICT.S_CMPY is '公司主键';
comment on column SY_SERV_DICT.DICT_F_CMPY is '公司字段';
comment on column SY_SERV_DICT.DICT_F_PATH is '编码路径字段';
comment on column SY_SERV_DICT.DICT_F_LEVEL is '层级字段';
comment on column SY_SERV_DICT.DICT_DATA_SOURCE is '字典对应数据源';
comment on column SY_SERV_DICT.S_MTIME is '更新时间';
comment on column SY_SERV_DICT.DICT_ROOT is '动态根节点，支持变量替换。';
comment on column SY_SERV_DICT.DICT_EXPRESSION is '数据表达式，符合条件的进行展示。';
comment on column SY_SERV_DICT.DICT_CLASS is '监听类，用于对字典数据进行特定处理';
comment on column SY_SERV_DICT.DICT_SRC_ID is '引用字典数据，本字典采用指定字典的数据，使用自身设定的动态根和过滤规则等';
comment on column SY_SERV_DICT.PRO_FLAG is '产品标识，1：是；2：否';
create table SY_SERV_DICT_ITEM(
ITEM_ID VARCHAR2(40) not null,
DICT_ID VARCHAR2(40) not null,
ITEM_CODE VARCHAR2(40),
ITEM_NAME VARCHAR2(200),
ITEM_PCODE VARCHAR2(40),
ITEM_ORDER NUMBER(4),
ITEM_FLAG NUMBER(4),
ITEM_IMG VARCHAR2(200),
ITEM_LEAF NUMBER(4),
ITEM_FIELD1 VARCHAR2(2000),
ITEM_FIELD2 VARCHAR2(2000),
S_PUBLIC NUMBER(4),
S_CMPY VARCHAR2(40),
CODE_PATH VARCHAR2(2000),
ITEM_LEVEL NUMBER(4),
constraint PK_SY_SERV_DICT_ITEM primary key (ITEM_ID)
);
comment on table SY_SERV_DICT_ITEM is '字典内部详细信息表';
comment on column SY_SERV_DICT_ITEM.ITEM_ID is '字典项主键，自增';
comment on column SY_SERV_DICT_ITEM.DICT_ID is '字典主键';
comment on column SY_SERV_DICT_ITEM.ITEM_CODE is '字典项编码';
comment on column SY_SERV_DICT_ITEM.ITEM_NAME is '字典项名称';
comment on column SY_SERV_DICT_ITEM.ITEM_PCODE is '父字典项编码';
comment on column SY_SERV_DICT_ITEM.ITEM_ORDER is '排序';
comment on column SY_SERV_DICT_ITEM.ITEM_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV_DICT_ITEM.ITEM_IMG is '对应图片，带路径的图片地址';
comment on column SY_SERV_DICT_ITEM.ITEM_LEAF is '是否叶子节点，1：是；2：否';
comment on column SY_SERV_DICT_ITEM.ITEM_FIELD1 is '扩展字段1';
comment on column SY_SERV_DICT_ITEM.ITEM_FIELD2 is '扩展字段2';
comment on column SY_SERV_DICT_ITEM.S_PUBLIC is '公共标志';
comment on column SY_SERV_DICT_ITEM.S_CMPY is '组织主键';
comment on column SY_SERV_DICT_ITEM.CODE_PATH is '编码路径';
comment on column SY_SERV_DICT_ITEM.ITEM_LEVEL is '层级';
create table SY_SERV_FLOW(
FLOW_ID VARCHAR2(40) not null,
DATA_ID VARCHAR2(40),
OWNER_ID VARCHAR2(40),
S_ODEPT VARCHAR2(40),
constraint PK_SY_SERV_FLOW primary key (FLOW_ID)
);
comment on table SY_SERV_FLOW is '';
comment on column SY_SERV_FLOW.FLOW_ID is '';
comment on column SY_SERV_FLOW.DATA_ID is '';
comment on column SY_SERV_FLOW.OWNER_ID is '';
comment on column SY_SERV_FLOW.S_ODEPT is '';
create table SY_SERV_ITEM(
ITEM_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40) not null,
ITEM_CODE VARCHAR2(40) not null,
ITEM_NAME VARCHAR2(80),
ITEM_TYPE NUMBER(4),
ITEM_UNIQUE_GROUP NUMBER(4),
ITEM_FIELD_TYPE VARCHAR2(10),
ITEM_FIELD_LENGTH VARCHAR2(10),
ITEM_INPUT_TYPE NUMBER(4),
ITEM_INPUT_MODE NUMBER(4),
ITEM_INPUT_CONFIG VARCHAR2(2000),
ITEM_INPUT_DEFAULT VARCHAR2(100),
ITEM_INPUT_FLAG NUMBER(4),
ITEM_VALIDATE VARCHAR2(200),
ITEM_VALIDATE_HINT VARCHAR2(200),
ITEM_NOTNULL NUMBER(4),
ITEM_READONLY NUMBER(4),
ITEM_CARD_DISABLE NUMBER(4),
ITEM_LIST_STYLE VARCHAR2(200),
ITEM_CARD_STYLE VARCHAR2(200),
ITEM_LIST_FORMAT VARCHAR2(200),
ITEM_CARD_FORMAT VARCHAR2(200),
ITEM_LIST_LINK VARCHAR2(200),
ITEM_CARD_LINK VARCHAR2(200),
ITEM_LIST_WIDTH NUMBER(4),
ITEM_CARD_WIDTH NUMBER(4),
ITEM_LIST_ORDER NUMBER(4),
ITEM_CARD_ORDER NUMBER(4),
ITEM_CARD_ROWS NUMBER(4),
ITEM_CARD_COLS NUMBER(4),
ITEM_SEARCH_FLAG NUMBER(4),
ITEM_LIST_FLAG NUMBER(4),
ITEM_LIST_EDIT NUMBER(4),
ITEM_LOG_FLAG NUMBER(4),
ITEM_MEMO VARCHAR2(2000),
S_FLAG NUMBER(4),
DICT_ID VARCHAR2(40),
ITEM_LIST_ALIGN NUMBER(4),
ITEM_HIDDEN NUMBER(4),
S_MTIME VARCHAR2(23),
ITEM_MOBILE_TYPE NUMBER(4),
ITEM_TIP VARCHAR2(400),
ITEM_ORDER_CODES VARCHAR2(400),
ITEM_HIDDEN_SCRIPT VARCHAR2(2000),
ITEM_NOTNULL_SCRIPT VARCHAR2(2000),
ITEM_READONLY_SCRIPT VARCHAR2(2000),
ITEM_USER_FLAG NUMBER(4),
ITEM_LABEL_HIDDEN NUMBER(4),
ITEM_SUM_FLAG NUMBER(4),
ITEM_EXPTENDS VARCHAR2(2000),
constraint PK_SY_SERV_ITEM primary key (ITEM_ID)
);
comment on table SY_SERV_ITEM is '服务项定义';
comment on column SY_SERV_ITEM.ITEM_ID is '数据项主键，自增';
comment on column SY_SERV_ITEM.SERV_ID is '服务主键';
comment on column SY_SERV_ITEM.ITEM_CODE is '服务项编码，与数据库字段保持一致';
comment on column SY_SERV_ITEM.ITEM_NAME is '名称';
comment on column SY_SERV_ITEM.ITEM_TYPE is '类型，1：表字段；2：视图字段；3：自定义字段';
comment on column SY_SERV_ITEM.ITEM_UNIQUE_GROUP is '唯一分组，支持多组唯一，1：唯一组1；2：唯一组2；3：唯一组3；...';
comment on column SY_SERV_ITEM.ITEM_FIELD_TYPE is '字段类型，STR：字符串；NUM：数字；LONG：大文本；TIME：TIMESTAME';
comment on column SY_SERV_ITEM.ITEM_FIELD_LENGTH is '长度，数字的逗号分隔小数位';
comment on column SY_SERV_ITEM.ITEM_INPUT_TYPE is '输入类型，1：文本框；2：下拉框；3：单选框；4：多选框；5：大文本；6：超大文本；7：图片上传；8：嵌入服务；9：分组框';
comment on column SY_SERV_ITEM.ITEM_INPUT_MODE is '输入模式，1：无；2：查询选择；3：字典选择；4：日期选择；5：动态提示；6：组合值；9：自定义';
comment on column SY_SERV_ITEM.ITEM_INPUT_CONFIG is '输入设置，根据输入类型和输入模式进行设定';
comment on column SY_SERV_ITEM.ITEM_INPUT_DEFAULT is '缺省值，支持变量，支持序列格式';
comment on column SY_SERV_ITEM.ITEM_INPUT_FLAG is '可选可录入？，1：是；2：否';
comment on column SY_SERV_ITEM.ITEM_VALIDATE is '有效性检查，支持正则表达式';
comment on column SY_SERV_ITEM.ITEM_VALIDATE_HINT is '有效性提示，支持变量替换';
comment on column SY_SERV_ITEM.ITEM_NOTNULL is '必填项 ，1：是；2：否';
comment on column SY_SERV_ITEM.ITEM_READONLY is '只读项 ，1：是；2：否';
comment on column SY_SERV_ITEM.ITEM_CARD_DISABLE is '卡片禁用，自定义JSP列表用卡片不用时用到，1：是；2否';
comment on column SY_SERV_ITEM.ITEM_LIST_STYLE is '列表样式，设定列表本数据项展示的样式';
comment on column SY_SERV_ITEM.ITEM_CARD_STYLE is '卡片样式，设定卡片本数据项展示的样式';
comment on column SY_SERV_ITEM.ITEM_LIST_FORMAT is '列表格式，列表数据展示格式化';
comment on column SY_SERV_ITEM.ITEM_CARD_FORMAT is '卡片格式，卡片数据展示格式化';
comment on column SY_SERV_ITEM.ITEM_LIST_LINK is '列表URL';
comment on column SY_SERV_ITEM.ITEM_CARD_LINK is '卡片URL';
comment on column SY_SERV_ITEM.ITEM_LIST_WIDTH is '列表宽度，设定列表本数据项宽度，0为自动';
comment on column SY_SERV_ITEM.ITEM_CARD_WIDTH is '卡片宽度，设定卡片本数据项宽度，缺省为40px';
comment on column SY_SERV_ITEM.ITEM_LIST_ORDER is '列表排序：设定列表显示顺序';
comment on column SY_SERV_ITEM.ITEM_CARD_ORDER is '卡片排序，设定卡片页面显示顺序';
comment on column SY_SERV_ITEM.ITEM_CARD_ROWS is '卡片占用行数，设定占用卡片的行数';
comment on column SY_SERV_ITEM.ITEM_CARD_COLS is '卡片占用列数，设定占用卡片的列数';
comment on column SY_SERV_ITEM.ITEM_SEARCH_FLAG is '是否搜索？，1：是（视图及表字段缺省）；2：否';
comment on column SY_SERV_ITEM.ITEM_LIST_FLAG is '显示在列表？，1：是（视图及表字段缺省）；2：否';
comment on column SY_SERV_ITEM.ITEM_LIST_EDIT is '列表编辑？，1：是；2：否';
comment on column SY_SERV_ITEM.ITEM_LOG_FLAG is '记录历史？，1：是；2：否';
comment on column SY_SERV_ITEM.ITEM_MEMO is '说明，在帮助中显示';
comment on column SY_SERV_ITEM.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV_ITEM.DICT_ID is '引用字典主键，隐藏字段，自动设置，用于数据计算等';
comment on column SY_SERV_ITEM.ITEM_LIST_ALIGN is '列表对齐，1：左对齐（缺省）；2：右对齐；3：居中对齐';
comment on column SY_SERV_ITEM.ITEM_HIDDEN is '隐藏项 ，1：是；2：否';
comment on column SY_SERV_ITEM.S_MTIME is '更新时间';
comment on column SY_SERV_ITEM.ITEM_MOBILE_TYPE is '移动类型，1：列表标题；2：列表项；3：仅卡片项；9：不展示';
comment on column SY_SERV_ITEM.ITEM_TIP is '提示信息';
comment on column SY_SERV_ITEM.ITEM_ORDER_CODES is '重载排序字段，逗号分隔的字段列表，列表点击此列排序时指定按照哪几个字段排序';
comment on column SY_SERV_ITEM.ITEM_HIDDEN_SCRIPT is '隐藏表达式';
comment on column SY_SERV_ITEM.ITEM_NOTNULL_SCRIPT is '必填表达式';
comment on column SY_SERV_ITEM.ITEM_READONLY_SCRIPT is '只读表达式';
comment on column SY_SERV_ITEM.ITEM_USER_FLAG is '是否用户？，1：是；2：否（缺省）';
comment on column SY_SERV_ITEM.ITEM_LABEL_HIDDEN is '标签隐藏？ ，1：是；2：否（缺省）';
comment on column SY_SERV_ITEM.ITEM_SUM_FLAG is '启用小计？，1：是；2：否（缺省）';
comment on column SY_SERV_ITEM.ITEM_EXPTENDS is '扩展设置，JSON格式';
create table SY_SERV_LINK(
LINK_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40) not null,
LINK_SERV_ID VARCHAR2(40) not null,
LINK_NAME VARCHAR2(40),
LINK_ORDER NUMBER(4),
LINK_WHERE VARCHAR2(400),
LINK_EXPRESSION VARCHAR2(400),
LINK_READONLY NUMBER(4),
LINK_DELETE_FLAG NUMBER(4),
LINK_UPDATE_FLAG NUMBER(4),
LINK_QUERY_FLAG NUMBER(4),
LINK_SHOW_TYPE NUMBER(4),
LINK_SHOW_POSITION NUMBER(4),
LINK_PAGE_COUNT NUMBER(4),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(23),
LINK_REFRESH VARCHAR2(4),
LINK_MAIN_LIST NUMBER(4),
LINK_SERV_QUERY NUMBER(4),
constraint PK_SY_SERV_LINK primary key (LINK_ID)
);
comment on table SY_SERV_LINK is '服务关联定义';
comment on column SY_SERV_LINK.LINK_ID is '关联主键，自增';
comment on column SY_SERV_LINK.SERV_ID is '服务主键';
comment on column SY_SERV_LINK.LINK_SERV_ID is '子服务主键';
comment on column SY_SERV_LINK.LINK_NAME is '关联标题';
comment on column SY_SERV_LINK.LINK_ORDER is '排序';
comment on column SY_SERV_LINK.LINK_WHERE is '过滤条件';
comment on column SY_SERV_LINK.LINK_EXPRESSION is '表达式，显示表达式，支持变量替换';
comment on column SY_SERV_LINK.LINK_READONLY is '只读关联？，1：是；2：否（缺省）';
comment on column SY_SERV_LINK.LINK_DELETE_FLAG is '关联删除？，1：是；2：否';
comment on column SY_SERV_LINK.LINK_UPDATE_FLAG is '关联更新？，1：是；2：否';
comment on column SY_SERV_LINK.LINK_QUERY_FLAG is '显示搜索框？，1：是；2：否（缺省）';
comment on column SY_SERV_LINK.LINK_SHOW_TYPE is '显示方式，1：列表显示；2：卡片显示';
comment on column SY_SERV_LINK.LINK_SHOW_POSITION is '显示位置，1：主单数据项；2：主单下列表；3：主单标签';
comment on column SY_SERV_LINK.LINK_PAGE_COUNT is '每页记录数，0（缺省）为不分页';
comment on column SY_SERV_LINK.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV_LINK.S_MTIME is '更新时间';
comment on column SY_SERV_LINK.LINK_REFRESH is '接收部门名称';
comment on column SY_SERV_LINK.LINK_MAIN_LIST is '列表动态展开，1：是；2：否（缺省）';
comment on column SY_SERV_LINK.LINK_SERV_QUERY is '保留服务过滤，1：是；2：否（缺省）';
create table SY_SERV_LINK_ITEM(
LITEM_ID VARCHAR2(40) not null,
LINK_ID VARCHAR2(40),
ITEM_CODE VARCHAR2(40),
LINK_ITEM_CODE VARCHAR2(40),
LINK_WHERE_FLAG NUMBER(4),
LINK_VALUE_FLAG NUMBER(4),
constraint PK_SY_SERV_LINK_ITEM primary key (LITEM_ID)
);
comment on table SY_SERV_LINK_ITEM is '关联明细设定';
comment on column SY_SERV_LINK_ITEM.LITEM_ID is '关联主键，自增';
comment on column SY_SERV_LINK_ITEM.LINK_ID is '关联主键，自增';
comment on column SY_SERV_LINK_ITEM.ITEM_CODE is '主单数据项';
comment on column SY_SERV_LINK_ITEM.LINK_ITEM_CODE is '子单数据项';
comment on column SY_SERV_LINK_ITEM.LINK_WHERE_FLAG is '过滤标志，1：是（作为过滤条件拼接进关联查询）；2：否 ';
comment on column SY_SERV_LINK_ITEM.LINK_VALUE_FLAG is '传值标志，1：主单数据项值；2：常量值；3：不传值（只作为过滤设定）';
create table SY_SERV_LISTENER(
LIS_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
LIS_CLASS VARCHAR2(200),
LIS_CONF VARCHAR2(2000),
LIS_DESC VARCHAR2(200),
S_FLAG NUMBER(4),
LIS_SORT NUMBER(10),
S_MTIEM VARCHAR2(23),
constraint PK_SY_SERV_LISTENER primary key (LIS_ID)
);
comment on table SY_SERV_LISTENER is '服务监听';
comment on column SY_SERV_LISTENER.LIS_ID is '监听ID';
comment on column SY_SERV_LISTENER.SERV_ID is '服务';
comment on column SY_SERV_LISTENER.LIS_CLASS is '类';
comment on column SY_SERV_LISTENER.LIS_CONF is '配置';
comment on column SY_SERV_LISTENER.LIS_DESC is '描述';
comment on column SY_SERV_LISTENER.S_FLAG is '启用';
comment on column SY_SERV_LISTENER.LIS_SORT is '排序';
comment on column SY_SERV_LISTENER.S_MTIEM is '更新时间';
create table SY_SERV_LOG_ACT(
ALOG_ID VARCHAR2(40) not null,
ACT_ID VARCHAR2(40),
ACT_KEYS VARCHAR2(4000),
ACT_TIME NUMBER(8),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
ACT_IP VARCHAR2(40),
S_MTIME VARCHAR2(23),
SERV_ID VARCHAR2(40),
constraint PK_SY_SERV_LOG_ACT primary key (ALOG_ID)
);
comment on table SY_SERV_LOG_ACT is '操作留痕';
comment on column SY_SERV_LOG_ACT.ALOG_ID is '操作历史';
comment on column SY_SERV_LOG_ACT.ACT_ID is '操作主键';
comment on column SY_SERV_LOG_ACT.ACT_KEYS is '数据主键，多个主键逗号分隔';
comment on column SY_SERV_LOG_ACT.ACT_TIME is '操作耗时，单位为ms';
comment on column SY_SERV_LOG_ACT.S_CMPY is '公司主键';
comment on column SY_SERV_LOG_ACT.S_USER is '操作用户';
comment on column SY_SERV_LOG_ACT.ACT_IP is 'IP地址';
comment on column SY_SERV_LOG_ACT.S_MTIME is '更新时间';
comment on column SY_SERV_LOG_ACT.SERV_ID is '服务编码';
create table SY_SERV_LOG_ITEM(
ILOG_ID VARCHAR2(40) not null,
ITEM_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
ILOG_OLD VARCHAR2(2000),
ILOG_NEW VARCHAR2(2000),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
ILOG_IP VARCHAR2(40),
S_MTIME VARCHAR2(23),
SERV_ID VARCHAR2(40),
ITEM_CODE VARCHAR2(40),
constraint PK_SY_SERV_LOG_ITEM primary key (ILOG_ID)
);
comment on table SY_SERV_LOG_ITEM is '数据变更历史表';
comment on column SY_SERV_LOG_ITEM.ILOG_ID is '历史主键';
comment on column SY_SERV_LOG_ITEM.ITEM_ID is '数据项主键，自增';
comment on column SY_SERV_LOG_ITEM.DATA_ID is '数据主键';
comment on column SY_SERV_LOG_ITEM.ILOG_OLD is '原值';
comment on column SY_SERV_LOG_ITEM.ILOG_NEW is '当前值';
comment on column SY_SERV_LOG_ITEM.S_CMPY is '公司主键';
comment on column SY_SERV_LOG_ITEM.S_USER is '当前用户';
comment on column SY_SERV_LOG_ITEM.ILOG_IP is 'IP地址';
comment on column SY_SERV_LOG_ITEM.S_MTIME is '更新时间';
comment on column SY_SERV_LOG_ITEM.SERV_ID is '服务编码';
comment on column SY_SERV_LOG_ITEM.ITEM_CODE is '数据项编码';
create table SY_SERV_QUERY(
QUERY_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
QUERY_NAME VARCHAR2(40),
QUERY_SQL VARCHAR2(400),
QUERY_TYPE NUMBER(4),
QUERY_DEFAULT NUMBER(4),
QUERY_ORDER NUMBER(4),
LIST_ID VARCHAR2(40),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(30),
constraint PK_SY_SERV_QUERY primary key (QUERY_ID)
);
comment on table SY_SERV_QUERY is '查询策略表';
comment on column SY_SERV_QUERY.QUERY_ID is '查询主键';
comment on column SY_SERV_QUERY.SERV_ID is '服务主键';
comment on column SY_SERV_QUERY.QUERY_NAME is '查询策略名称';
comment on column SY_SERV_QUERY.QUERY_SQL is '查询SQL';
comment on column SY_SERV_QUERY.QUERY_TYPE is '策略类型，1：系统；2：个人';
comment on column SY_SERV_QUERY.QUERY_DEFAULT is '缺省策略？，1：是；2：否';
comment on column SY_SERV_QUERY.QUERY_ORDER is '排序';
comment on column SY_SERV_QUERY.LIST_ID is '列表策略主键';
comment on column SY_SERV_QUERY.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_SERV_QUERY.S_USER is '添加者';
comment on column SY_SERV_QUERY.S_MTIME is '更新时间';
create table SY_SERV_RELATE(
RELATE_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
RELATE_SERV_ID VARCHAR2(40),
RELATE_DATA_ID VARCHAR2(40),
RELATE_SORT NUMBER(4),
RELATE_TYPE VARCHAR2(40),
S_USER VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_ATIME VARCHAR2(23),
S_ODEPT VARCHAR2(40),
constraint PK_SY_SERV_RELATE primary key (RELATE_ID)
);
comment on table SY_SERV_RELATE is '流程中选取相关文件，';
comment on column SY_SERV_RELATE.RELATE_ID is '相关文件ID';
comment on column SY_SERV_RELATE.SERV_ID is '服务ID';
comment on column SY_SERV_RELATE.DATA_ID is '数据ID';
comment on column SY_SERV_RELATE.RELATE_SERV_ID is '关联服务主键';
comment on column SY_SERV_RELATE.RELATE_DATA_ID is '关联数据主键';
comment on column SY_SERV_RELATE.RELATE_SORT is '关系排序号';
comment on column SY_SERV_RELATE.RELATE_TYPE is '关系类型，例如：区分相关文件或者转发原文等';
comment on column SY_SERV_RELATE.S_USER is '用户编码';
comment on column SY_SERV_RELATE.S_DEPT is '部门';
comment on column SY_SERV_RELATE.S_TDEPT is '有效部门';
comment on column SY_SERV_RELATE.S_CMPY is '公司编码';
comment on column SY_SERV_RELATE.S_ATIME is '添加时间';
comment on column SY_SERV_RELATE.S_ODEPT is '机构部门';
create table SY_SERV_SEARCH(
SERV_ID VARCHAR2(40) not null,
SEARCH_SELECT VARCHAR2(800),
SEARCH_WHERE VARCHAR2(400),
SEARCH_INCR_WHERE VARCHAR2(400),
SEARCH_ORDER VARCHAR2(200),
SEARCH_INCR_ORDER VARCHAR2(200),
SEARCH_CLASS VARCHAR2(200),
SEARCH_TITLE VARCHAR2(400),
SEARCH_DIGEST VARCHAR2(1000),
SEARCH_PREVIEW VARCHAR2(1000),
SEARCH_INDEX VARCHAR2(400),
SEARCH_USER VARCHAR2(40),
SEARCH_TIME VARCHAR2(40),
SEARCH_DEPT VARCHAR2(40),
SEARCH_CMPY VARCHAR2(40),
SEARCH_URL VARCHAR2(400),
SEARCH_LAST_FIELD VARCHAR2(40),
SEARCH_LAST_DATA VARCHAR2(40),
SEARCH_LAST_COUNT NUMBER(12),
SEARCH_INCR_FIELD VARCHAR2(40),
SEARCH_INCR_DATA VARCHAR2(40),
SEARCH_INCR_COUNT NUMBER(12),
SEARCH_ALL_COUNT NUMBER(12),
SEARCH_FILE_FLAG NUMBER(4),
SEARCH_CONT_TYPE NUMBER(4),
SEARCH_CONT_FIELD VARCHAR2(1000),
SEARCH_FILE_SQL VARCHAR2(1000),
SEARCH_FILE_ID VARCHAR2(40),
SEARCH_FILE_NAME VARCHAR2(40),
SEARCH_FILE_PATH VARCHAR2(400),
SEARCH_SERV_AUTH NUMBER(4),
SEARCH_DATA_AUTH NUMBER(4),
SEARCH_ALL_CONDITION VARCHAR2(800),
SEARCH_USER_SQL VARCHAR2(800),
SEARCH_ROLE_SQL VARCHAR2(800),
SEARCH_DEPT_SQL VARCHAR2(800),
SEARCH_DEPT_ROLE_SQL VARCHAR2(800),
SEARCH_CMPY_CONDITION VARCHAR2(800),
SEARCH_CONT_SHOT NUMBER(4),
SEARCH_NAME VARCHAR2(40),
SEARCH_IMG VARCHAR2(800),
SEARCH_OTHER_FIELDS VARCHAR2(400),
SEARCH_DOMAIN VARCHAR2(80),
SEARCH_WF_URL VARCHAR2(400),
SEARCH_SRC_URL VARCHAR2(400),
SEARCH_BOOST VARCHAR2(1000),
SEARCH_KEYWORD VARCHAR2(400),
FILE_CACHE_FLAG NUMBER(4),
SEARCH_GROUP_SQL VARCHAR2(800),
SEARCH_HANDLER_CLASS VARCHAR2(200),
constraint PK_SY_SERV_SEARCH primary key (SERV_ID)
);
comment on table SY_SERV_SEARCH is '服务搜索定义';
comment on column SY_SERV_SEARCH.SERV_ID is '服务主键';
comment on column SY_SERV_SEARCH.SEARCH_SELECT is 'select语句，搜索的字段列表，根据设置自动生成';
comment on column SY_SERV_SEARCH.SEARCH_WHERE is 'where语句，固定索引搜索的过滤条件，不需要写where从and开始';
comment on column SY_SERV_SEARCH.SEARCH_INCR_WHERE is '增量where语句，增量索引搜索的过滤条件';
comment on column SY_SERV_SEARCH.SEARCH_ORDER is 'order语句，不需要写order by';
comment on column SY_SERV_SEARCH.SEARCH_INCR_ORDER is '增量order语句，不需要写order by';
comment on column SY_SERV_SEARCH.SEARCH_CLASS is '索引监听类';
comment on column SY_SERV_SEARCH.SEARCH_TITLE is '索引标题，支持字段变量替换';
comment on column SY_SERV_SEARCH.SEARCH_DIGEST is '索引摘要，支持html标签及变量替换';
comment on column SY_SERV_SEARCH.SEARCH_PREVIEW is '索引预览，支持html标签及变量替换';
comment on column SY_SERV_SEARCH.SEARCH_INDEX is '索引分组字段，进行分组的字段列表，逗号分隔';
comment on column SY_SERV_SEARCH.SEARCH_USER is '索引用户字段，索引数据的创建者或者拥有者字段';
comment on column SY_SERV_SEARCH.SEARCH_TIME is '索引时间字段，数据创建或者更新时间字段';
comment on column SY_SERV_SEARCH.SEARCH_DEPT is '索引部门字段，索引数据的拥有部门字段';
comment on column SY_SERV_SEARCH.SEARCH_CMPY is '索引公司字段，标明索引数据的所在公司的字段';
comment on column SY_SERV_SEARCH.SEARCH_URL is '查询连接，带http的全路径，支持变量替换';
comment on column SY_SERV_SEARCH.SEARCH_LAST_FIELD is '固定索引字段，一般为主键或者时间字段';
comment on column SY_SERV_SEARCH.SEARCH_LAST_DATA is '最后索引固定数据，用于作为持续索引的判断';
comment on column SY_SERV_SEARCH.SEARCH_LAST_COUNT is '上次固定索引数据量';
comment on column SY_SERV_SEARCH.SEARCH_INCR_FIELD is '增量索引字段，一般为主键或者时间字段';
comment on column SY_SERV_SEARCH.SEARCH_INCR_DATA is '最后增量固定数据，用于作为增量索引的判断';
comment on column SY_SERV_SEARCH.SEARCH_INCR_COUNT is '上次增量索引数据量';
comment on column SY_SERV_SEARCH.SEARCH_ALL_COUNT is '总索引数据量';
comment on column SY_SERV_SEARCH.SEARCH_FILE_FLAG is '索引附件标志，1：内部附件；2：外部附件；3：不索引附件（缺省）';
comment on column SY_SERV_SEARCH.SEARCH_CONT_TYPE is '索引正文类型，1：字段；2：第一个附件；3：特定附件';
comment on column SY_SERV_SEARCH.SEARCH_CONT_FIELD is '索引正文字段，字段名或者附件表达式';
comment on column SY_SERV_SEARCH.SEARCH_FILE_SQL is '附件SQL，获取附件的SQL语句';
comment on column SY_SERV_SEARCH.SEARCH_FILE_ID is '附件主键字段';
comment on column SY_SERV_SEARCH.SEARCH_FILE_NAME is '附件名称字段，带后缀的名称';
comment on column SY_SERV_SEARCH.SEARCH_FILE_PATH is '附件路径，可以是操作系统FILE、FTP、HTTP等地址';
comment on column SY_SERV_SEARCH.SEARCH_SERV_AUTH is '搜索服务权限，1：全部可以搜索；2：授权才可以搜索';
comment on column SY_SERV_SEARCH.SEARCH_DATA_AUTH is '搜索数据权限，1：全部；2：公司内全部；3：数据权限';
comment on column SY_SERV_SEARCH.SEARCH_ALL_CONDITION is '全部可查规则，JS条件表达式，符合规则的不进行权限设置';
comment on column SY_SERV_SEARCH.SEARCH_USER_SQL is '用户权限SQL';
comment on column SY_SERV_SEARCH.SEARCH_ROLE_SQL is '角色权限SQL';
comment on column SY_SERV_SEARCH.SEARCH_DEPT_SQL is '部门权限SQL';
comment on column SY_SERV_SEARCH.SEARCH_DEPT_ROLE_SQL is '部门角色权限SQL';
comment on column SY_SERV_SEARCH.SEARCH_CMPY_CONDITION is '公司全查规则，JS条件表达式，符合规则的设置全公司可查';
comment on column SY_SERV_SEARCH.SEARCH_CONT_SHOT is '正文快照？,1：是；2：否';
comment on column SY_SERV_SEARCH.SEARCH_NAME is '功能名称';
comment on column SY_SERV_SEARCH.SEARCH_IMG is '图片表达式，JS条件表达式，符合规则输出图片HTML';
comment on column SY_SERV_SEARCH.SEARCH_OTHER_FIELDS is '其他字段，规则中要用到的查询字段列表，多个逗号分隔';
comment on column SY_SERV_SEARCH.SEARCH_DOMAIN is '域名或IP地址';
comment on column SY_SERV_SEARCH.SEARCH_WF_URL is '流程跟踪连接，XML格式的流程跟踪信息';
comment on column SY_SERV_SEARCH.SEARCH_SRC_URL is '原始连接，带http的全路径，支持变量替换';
comment on column SY_SERV_SEARCH.SEARCH_BOOST is '加权表达式，支持脚本动态计算权重';
comment on column SY_SERV_SEARCH.SEARCH_KEYWORD is '索引关键词，用于增加特定词的权重，多个逗号或者空格分隔';
comment on column SY_SERV_SEARCH.FILE_CACHE_FLAG is '文件缓存类别';
comment on column SY_SERV_SEARCH.SEARCH_GROUP_SQL is '群组权限SQL';
comment on column SY_SERV_SEARCH.SEARCH_HANDLER_CLASS is '处理类';
create table SY_SERV_WHERE(
WHERE_ID VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
WHERE_NAME VARCHAR2(80),
WHERE_SCRIPT VARCHAR2(2000),
WHERE_CONTENT VARCHAR2(2000),
WHERE_FLOW_FLAG NUMBER(4),
WHERE_ORDER NUMBER(4),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(30),
WHERE_SERV_TYPE VARCHAR2(40),
constraint PK_SY_SERV_WHERE primary key (WHERE_ID)
);
comment on table SY_SERV_WHERE is '服务过滤规则';
comment on column SY_SERV_WHERE.WHERE_ID is '过滤主键，UUID';
comment on column SY_SERV_WHERE.SERV_ID is '服务编码';
comment on column SY_SERV_WHERE.WHERE_NAME is '过滤名称';
comment on column SY_SERV_WHERE.WHERE_SCRIPT is '条件规则';
comment on column SY_SERV_WHERE.WHERE_CONTENT is '过滤语句，and起始的SQL语句';
comment on column SY_SERV_WHERE.WHERE_FLOW_FLAG is '启用流经，1：是；2：否，是否并上流经规则';
comment on column SY_SERV_WHERE.WHERE_ORDER is '规则排序';
comment on column SY_SERV_WHERE.S_FLAG is '有效标志，1：是；2：否';
comment on column SY_SERV_WHERE.S_MTIME is '更新时间';
comment on column SY_SERV_WHERE.WHERE_SERV_TYPE is '服务类型，1：本服务（缺省），2：父服务；3：引用自服务';
create table SY_WFE_CUSTOM_VAR(
VAR_ID VARCHAR2(40) not null,
VAR_CODE VARCHAR2(60),
VAR_CONTENT VARCHAR2(1000),
VAR_MEMO VARCHAR2(1000),
PROC_CODE VARCHAR2(40),
NODE_CODE VARCHAR2(40),
S_MTIME VARCHAR2(30),
constraint PK_SY_WFE_CUSTOM_VAR primary key (VAR_ID)
);
comment on table SY_WFE_CUSTOM_VAR is '';
comment on column SY_WFE_CUSTOM_VAR.VAR_ID is '变量ID';
comment on column SY_WFE_CUSTOM_VAR.VAR_CODE is '变量名称';
comment on column SY_WFE_CUSTOM_VAR.VAR_CONTENT is '变量的值';
comment on column SY_WFE_CUSTOM_VAR.VAR_MEMO is '说明';
comment on column SY_WFE_CUSTOM_VAR.PROC_CODE is '所属流程';
comment on column SY_WFE_CUSTOM_VAR.NODE_CODE is '所属节点';
comment on column SY_WFE_CUSTOM_VAR.S_MTIME is '修改时间';
create table SY_WFE_LINE_DEF(
LD_ID VARCHAR2(40) not null,
LINE_CODE VARCHAR2(40),
LINE_COND_NAME VARCHAR2(40),
LINE_SORT NUMBER(2),
PROC_CODE VARCHAR2(40),
SRC_NODE_CODE VARCHAR2(40),
TAR_NODE_CODE VARCHAR2(40),
LINE_IF_RETURN NUMBER(1),
LINE_CONDS_SCRIPT VARCHAR2(2000),
LINE_EXTEND_CLASS VARCHAR2(200),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
S_MTIME VARCHAR2(23),
UPDATE_EXPRESS VARCHAR2(1000),
CONFIRM_MSG VARCHAR2(400),
IF_PARALLEL NUMBER(1),
IF_OUT_DEPT NUMBER(4),
COND_MSG VARCHAR2(400),
SEND_TEXT VARCHAR2(40),
RETURN_TEXT VARCHAR2(40),
LINE_EVENT VARCHAR2(100),
ORG_DEF VARCHAR2(4000),
constraint PK_SY_WFE_LINE_DEF primary key (LD_ID)
);
comment on table SY_WFE_LINE_DEF is '节点连线定义表';
comment on column SY_WFE_LINE_DEF.LD_ID is '工作流连线主键';
comment on column SY_WFE_LINE_DEF.LINE_CODE is '连线编码';
comment on column SY_WFE_LINE_DEF.LINE_COND_NAME is '条件名称';
comment on column SY_WFE_LINE_DEF.LINE_SORT is '连线排序号';
comment on column SY_WFE_LINE_DEF.PROC_CODE is '流程编码';
comment on column SY_WFE_LINE_DEF.SRC_NODE_CODE is '前节点编码';
comment on column SY_WFE_LINE_DEF.TAR_NODE_CODE is '后节点编码';
comment on column SY_WFE_LINE_DEF.LINE_IF_RETURN is '是否允许退回，1：是；2：否';
comment on column SY_WFE_LINE_DEF.LINE_CONDS_SCRIPT is '执行该连线的条件';
comment on column SY_WFE_LINE_DEF.LINE_EXTEND_CLASS is '该连线执行的扩展类';
comment on column SY_WFE_LINE_DEF.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_LINE_DEF.S_CMPY is '公司ID';
comment on column SY_WFE_LINE_DEF.S_USER is '添加者';
comment on column SY_WFE_LINE_DEF.S_MTIME is '更新时间';
comment on column SY_WFE_LINE_DEF.UPDATE_EXPRESS is '更新数据，更新主服务数据的条件和表达式。';
comment on column SY_WFE_LINE_DEF.CONFIRM_MSG is '提示信息';
comment on column SY_WFE_LINE_DEF.IF_PARALLEL is '是否并发，1：是；2：否';
comment on column SY_WFE_LINE_DEF.IF_OUT_DEPT is '是否出部门';
comment on column SY_WFE_LINE_DEF.COND_MSG is '不符合条件时，点击按钮弹出的消息框。';
comment on column SY_WFE_LINE_DEF.SEND_TEXT is '送交按钮名称';
comment on column SY_WFE_LINE_DEF.RETURN_TEXT is '返回按钮名称';
comment on column SY_WFE_LINE_DEF.LINE_EVENT is '流经事件,当流程流经此线时，触发此事件。';
comment on column SY_WFE_LINE_DEF.ORG_DEF is '组织资源定义';
create table SY_WFE_NODE_ACT(
NA_ID VARCHAR2(40) not null,
PROC_CODE VARCHAR2(40) not null,
NODE_CODE VARCHAR2(40) not null,
SERV_ID VARCHAR2(40),
FIELD_CONTROL NUMBER(4),
FIELD_EXCEPTION VARCHAR2(1000),
FIELD_UPDATE VARCHAR2(500),
FIELD_HIDDEN VARCHAR2(1000),
FIELD_MIND_UPDATE VARCHAR2(500),
FIELD_ROLLBACK VARCHAR2(500),
FORM_BUTTONS VARCHAR2(200),
FIELD_MUST VARCHAR2(400),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40) not null,
S_USER VARCHAR2(40),
FILE_CONTROL VARCHAR2(400),
WF_BUTTONS VARCHAR2(200),
S_MTIME VARCHAR2(23),
FIELD_DISPLAY VARCHAR2(1000),
GROUP_DISPLAY VARCHAR2(400),
GROUP_HIDE VARCHAR2(400),
GROUP_EXPAND VARCHAR2(400),
GROUP_COLLAPSE VARCHAR2(400),
BUTTON_PARAMS VARCHAR2(4000),
BUTTON_ALIAS VARCHAR2(1000),
constraint PK_SY_WFE_NODE_ACT primary key (NA_ID)
);
comment on table SY_WFE_NODE_ACT is '流程节点和ACT关联表';
comment on column SY_WFE_NODE_ACT.NA_ID is '关联表定义主键';
comment on column SY_WFE_NODE_ACT.PROC_CODE is '流程编码';
comment on column SY_WFE_NODE_ACT.NODE_CODE is '节点编码';
comment on column SY_WFE_NODE_ACT.SERV_ID is '服务编码(确定哪个表单)';
comment on column SY_WFE_NODE_ACT.FIELD_CONTROL is '字段控制类型：1 完全控制； 2 只读控制';
comment on column SY_WFE_NODE_ACT.FIELD_EXCEPTION is '可编辑字段，可以是逗号分隔的多个字段的字符串。<br>需要和【字段控制类型】配合起来使用：<br>完全控制：可编辑字段不起作用，在当前节点可以修改任何数据项。<br>只读控制：可编辑字段起作用，所有不在可编辑字段范围内的数据项全部只读不可修改。<br>';
comment on column SY_WFE_NODE_ACT.FIELD_UPDATE is '流程送交或者退回到此【节点】时更新对应的字段设定。<br>这里支持对多个字段进行设定，使用逗号分隔，同时字段的值支持对系统变量（使用@包含）的替换。<br>例如：<br>IDLE_XZRQ=@DATE@,AUD_FLAG=2,ADU_INFO=这是一个测试<br>';
comment on column SY_WFE_NODE_ACT.FIELD_HIDDEN is '字段隐藏设置，所有需要隐藏的字段列表，逗号分隔';
comment on column SY_WFE_NODE_ACT.FIELD_MIND_UPDATE is '在流程中填写意见时，自动更新单据中某些字段的数据。<br>这里支持对多个字段进行设定，使用逗号分隔，同时字段的值支持对系统变量（使用@包含）和意见数据（使用#包含）的替换。<br>意见数据有：<br>#MIND_CODE#    意见编码  <br>#AINST_MIND_AGREE#    是否同意：1 同意 2 不同意 <br>#AINST_MIND_CONTENT#    意见内容 <br>#AINST_MIND_TIME#    意见填写时间 <br>例如：<br>IDLE_XCJCYJ=#AINST_MIND_CONTENT#,IDLE_XCJCRQ=@DATE@,AUD_FLAG=#AINST_MIND_AGREE# <br>';
comment on column SY_WFE_NODE_ACT.FIELD_ROLLBACK is '对于流程启动点来说，启动流程执行【更新字段】设定，取消流程执行此更新设定；<br>对于流程结束点来说，结束流程执行此更新设定，取消结束流程执行【更新字段】设定。<br>填写格式参见【更新字段】';
comment on column SY_WFE_NODE_ACT.FORM_BUTTONS is '表单按钮控制，可以在本节点显示的表单按钮ID列表，逗号分隔';
comment on column SY_WFE_NODE_ACT.FIELD_MUST is '流程节点必填字段设定，字段编号的列表，使用逗号分隔，在只读控制模式下设定为必填字段后必须将字段设为可编辑字段才可编辑，系统也会自动显示保存按钮，如果本身是隐藏字段则不再隐藏';
comment on column SY_WFE_NODE_ACT.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_NODE_ACT.S_CMPY is '公司ID';
comment on column SY_WFE_NODE_ACT.S_USER is '添加者';
comment on column SY_WFE_NODE_ACT.FILE_CONTROL is '文件类型的控制';
comment on column SY_WFE_NODE_ACT.WF_BUTTONS is '';
comment on column SY_WFE_NODE_ACT.S_MTIME is '更新时间';
comment on column SY_WFE_NODE_ACT.FIELD_DISPLAY is '显示字段';
comment on column SY_WFE_NODE_ACT.GROUP_DISPLAY is '显示分组框';
comment on column SY_WFE_NODE_ACT.GROUP_HIDE is '隐藏分组框';
comment on column SY_WFE_NODE_ACT.GROUP_EXPAND is '展开分组框';
comment on column SY_WFE_NODE_ACT.GROUP_COLLAPSE is '收缩分组框';
comment on column SY_WFE_NODE_ACT.BUTTON_PARAMS is '按钮参数';
comment on column SY_WFE_NODE_ACT.BUTTON_ALIAS is '别名';
create table SY_WFE_NODE_DEF(
ND_ID VARCHAR2(40) not null,
NODE_CODE VARCHAR2(40),
NODE_NAME VARCHAR2(40),
NODE_CAPTION VARCHAR2(40),
NODE_TYPE NUMBER(1),
PROC_CODE VARCHAR2(40),
NODE_SORT NUMBER(2),
MIND_CODE VARCHAR2(40),
MIND_NEED_FLAG NUMBER(1),
MIND_CTRL_FORCE NUMBER(1),
NODE_IF_PARALLEL NUMBER(1),
NODE_IF_CONVERGE NUMBER(1),
NODE_IF_AUTOEND NUMBER(1),
NODE_ROLE_CODES VARCHAR2(2000),
NODE_ROLE_MODE NUMBER(1),
NODE_ROLE_WHERE VARCHAR2(2000),
NODE_DEPT_CODES VARCHAR2(2000),
NODE_DEPT_MODE NUMBER(1),
NODE_DEPT_LEVEL NUMBER(1),
NODE_DEPT_WHERE VARCHAR2(2000),
NODE_USER_CODES VARCHAR2(2000),
NODE_USER_MODE NUMBER(1),
NODE_USER_WHERE VARCHAR2(2000),
NODE_TIMEOUT VARCHAR2(400),
NODE_TIMEOUT_ACT VARCHAR2(40),
PROC_END_FLAG NUMBER(1),
PROC_END_NAME VARCHAR2(40),
NODE_SUB_PROC VARCHAR2(40),
NODE_MEMO VARCHAR2(2000),
NODE_EXTEND_CLASS VARCHAR2(200),
NODE_SELF_SEND NUMBER(1),
NODE_REMIND_USER VARCHAR2(2000),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
MIND_IF_HAND NUMBER(1),
MIND_REGULAR VARCHAR2(80),
S_MTIME VARCHAR2(23),
MIND_REGULAR_MUST NUMBER(1),
MIND_TERMINAL VARCHAR2(80),
MIND_TERMINAL_MUST NUMBER(1),
MIND_REGULAR_SCRIPT NVARCHAR2(400),
MIND_SCRIPT NVARCHAR2(400),
MIND_TERMINAL_SCRIPT NVARCHAR2(400),
NODE_BIND_MODE VARCHAR2(40),
constraint PK_SY_WFE_NODE_DEF primary key (ND_ID)
);
comment on table SY_WFE_NODE_DEF is '节点定义表';
comment on column SY_WFE_NODE_DEF.ND_ID is '节点定义主键';
comment on column SY_WFE_NODE_DEF.NODE_CODE is '节点编码';
comment on column SY_WFE_NODE_DEF.NODE_NAME is '节点名称';
comment on column SY_WFE_NODE_DEF.NODE_CAPTION is '节点显示按钮名称';
comment on column SY_WFE_NODE_DEF.NODE_TYPE is '节点类型，1：起草点；2：活动点；3：结束点';
comment on column SY_WFE_NODE_DEF.PROC_CODE is '流程编码';
comment on column SY_WFE_NODE_DEF.NODE_SORT is '节点排序';
comment on column SY_WFE_NODE_DEF.MIND_CODE is '节点意见编码';
comment on column SY_WFE_NODE_DEF.MIND_NEED_FLAG is '节点是否必须填意见，1：是；2：否';
comment on column SY_WFE_NODE_DEF.MIND_CTRL_FORCE is '是否通过意见控制流转，1：是；2：否';
comment on column SY_WFE_NODE_DEF.NODE_IF_PARALLEL is '是否并发节点，1：是；2：否';
comment on column SY_WFE_NODE_DEF.NODE_IF_CONVERGE is '是否合并节点，1：是；2：否';
comment on column SY_WFE_NODE_DEF.NODE_IF_AUTOEND is '是否自动结束，1：是；2：否';
comment on column SY_WFE_NODE_DEF.NODE_ROLE_CODES is '绑定角色编码';
comment on column SY_WFE_NODE_DEF.NODE_ROLE_MODE is '绑定角色类型，1：指定；2：全部；3：按角色送交';
comment on column SY_WFE_NODE_DEF.NODE_ROLE_WHERE is '绑定角色过滤条件';
comment on column SY_WFE_NODE_DEF.NODE_DEPT_CODES is '绑定部门编码，1：指定；2：全部；3：预定义';
comment on column SY_WFE_NODE_DEF.NODE_DEPT_MODE is '绑定部门类型';
comment on column SY_WFE_NODE_DEF.NODE_DEPT_LEVEL is '绑定部门层级，1：本级；大于1，包含子部门的层级';
comment on column SY_WFE_NODE_DEF.NODE_DEPT_WHERE is '绑定部门过滤条件';
comment on column SY_WFE_NODE_DEF.NODE_USER_CODES is '绑定用户编码';
comment on column SY_WFE_NODE_DEF.NODE_USER_MODE is '绑定用户类型，1：指定；2：全部；3：预定义';
comment on column SY_WFE_NODE_DEF.NODE_USER_WHERE is '绑定用户过滤条件';
comment on column SY_WFE_NODE_DEF.NODE_TIMEOUT is '节点超时时间';
comment on column SY_WFE_NODE_DEF.NODE_TIMEOUT_ACT is '到限定时间后的操作：空：发送提醒，BACK：有退回点自动退回';
comment on column SY_WFE_NODE_DEF.PROC_END_FLAG is '该节点是否可以结束流程，1：是；2：否';
comment on column SY_WFE_NODE_DEF.PROC_END_NAME is '结束流程按钮名称';
comment on column SY_WFE_NODE_DEF.NODE_SUB_PROC is '子流程定义ID';
comment on column SY_WFE_NODE_DEF.NODE_MEMO is '节点描述';
comment on column SY_WFE_NODE_DEF.NODE_EXTEND_CLASS is '节点送交人扩展类';
comment on column SY_WFE_NODE_DEF.NODE_SELF_SEND is '节点内部送交，1：是；2：否';
comment on column SY_WFE_NODE_DEF.NODE_REMIND_USER is '办理完成提醒用户';
comment on column SY_WFE_NODE_DEF.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_NODE_DEF.S_CMPY is '公司ID';
comment on column SY_WFE_NODE_DEF.S_USER is '添加者';
comment on column SY_WFE_NODE_DEF.MIND_IF_HAND is '';
comment on column SY_WFE_NODE_DEF.MIND_REGULAR is '固定意见类型';
comment on column SY_WFE_NODE_DEF.S_MTIME is '更新时间';
comment on column SY_WFE_NODE_DEF.MIND_REGULAR_MUST is '';
comment on column SY_WFE_NODE_DEF.MIND_TERMINAL is '';
comment on column SY_WFE_NODE_DEF.MIND_TERMINAL_MUST is '';
comment on column SY_WFE_NODE_DEF.MIND_REGULAR_SCRIPT is '固定意见过滤脚本';
comment on column SY_WFE_NODE_DEF.MIND_SCRIPT is '普通意见过滤脚本';
comment on column SY_WFE_NODE_DEF.MIND_TERMINAL_SCRIPT is '最终意见过滤脚本';
comment on column SY_WFE_NODE_DEF.NODE_BIND_MODE is '节点绑定类型, USER ROLE';
create table SY_WFE_NODE_INST(
NI_ID VARCHAR2(40) not null,
NODE_CODE VARCHAR2(40),
NODE_NAME VARCHAR2(100),
PROC_CODE VARCHAR2(40),
PI_ID VARCHAR2(40),
NODE_IF_RUNNING NUMBER(1),
NODE_BTIME VARCHAR2(20),
NODE_ETIME VARCHAR2(20),
NODE_LIMIT_TIME VARCHAR2(20),
NODE_DAYS NUMBER(8),
DONE_USER_ID VARCHAR2(40),
DONE_USER_NAME VARCHAR2(40),
DONE_DEPT_IDS VARCHAR2(2000),
DONE_DEPT_NAMES VARCHAR2(2000),
SUB_USER_ID VARCHAR2(40),
SUB_USER_NAME VARCHAR2(40),
SUB_DEPT_IDS VARCHAR2(2000),
SUB_DEPT_NAMES VARCHAR2(2000),
PRE_NI_ID VARCHAR2(40),
PRE_LINE_CODE VARCHAR2(40),
TO_TYPE NUMBER(1),
TO_USER_ID VARCHAR2(40),
REMIND_CONTENT VARCHAR2(200),
DONE_TYPE NUMBER(3),
DONE_DESC VARCHAR2(200),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
OPEN_TIME VARCHAR2(20),
TO_USER_NAME VARCHAR2(40),
S_MTIME VARCHAR2(23),
REMIND_LOG VARCHAR2(100),
DELAY_TIME NUMBER(8),
constraint PK_SY_WFE_NODE_INST primary key (NI_ID)
);
comment on table SY_WFE_NODE_INST is '节点实例表';
comment on column SY_WFE_NODE_INST.NI_ID is '节点实例主键';
comment on column SY_WFE_NODE_INST.NODE_CODE is '节点编码';
comment on column SY_WFE_NODE_INST.NODE_NAME is '节点名称';
comment on column SY_WFE_NODE_INST.PROC_CODE is '流程编码';
comment on column SY_WFE_NODE_INST.PI_ID is '实例ID';
comment on column SY_WFE_NODE_INST.NODE_IF_RUNNING is '节点是否运行，1：是；2：否';
comment on column SY_WFE_NODE_INST.NODE_BTIME is '节点开始时间';
comment on column SY_WFE_NODE_INST.NODE_ETIME is '节点结束时间';
comment on column SY_WFE_NODE_INST.NODE_LIMIT_TIME is '节点限定完成时间';
comment on column SY_WFE_NODE_INST.NODE_DAYS is '节点执行小时数';
comment on column SY_WFE_NODE_INST.DONE_USER_ID is '执行节点用户ID';
comment on column SY_WFE_NODE_INST.DONE_USER_NAME is '执行节点用户名称';
comment on column SY_WFE_NODE_INST.DONE_DEPT_IDS is '执行节点部门ID列表';
comment on column SY_WFE_NODE_INST.DONE_DEPT_NAMES is '执行节点部门名称列表';
comment on column SY_WFE_NODE_INST.SUB_USER_ID is '代理执行的用户ID';
comment on column SY_WFE_NODE_INST.SUB_USER_NAME is '代理执行的用户名称';
comment on column SY_WFE_NODE_INST.SUB_DEPT_IDS is '代理执行的部门ID列表';
comment on column SY_WFE_NODE_INST.SUB_DEPT_NAMES is '代理执行的部门名称列表';
comment on column SY_WFE_NODE_INST.PRE_NI_ID is '前一个节点ID';
comment on column SY_WFE_NODE_INST.PRE_LINE_CODE is '连线编码';
comment on column SY_WFE_NODE_INST.TO_TYPE is '送交类型：1：送部门+角色；2：送角色；3：送用户';
comment on column SY_WFE_NODE_INST.TO_USER_ID is '送交用户ID';
comment on column SY_WFE_NODE_INST.REMIND_CONTENT is '提醒的信息内容';
comment on column SY_WFE_NODE_INST.DONE_TYPE is '办理类型：3收回、2终止、1正常结束';
comment on column SY_WFE_NODE_INST.DONE_DESC is '办理说明';
comment on column SY_WFE_NODE_INST.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_NODE_INST.S_CMPY is '公司ID';
comment on column SY_WFE_NODE_INST.S_USER is '添加者';
comment on column SY_WFE_NODE_INST.OPEN_TIME is '打开时间';
comment on column SY_WFE_NODE_INST.TO_USER_NAME is '';
comment on column SY_WFE_NODE_INST.S_MTIME is '更新时间';
comment on column SY_WFE_NODE_INST.REMIND_LOG is '提醒记录';
comment on column SY_WFE_NODE_INST.DELAY_TIME is '超期时间';
create table SY_WFE_NODE_INST_HIS(
NI_ID VARCHAR2(40) not null,
NODE_CODE VARCHAR2(40),
NODE_NAME VARCHAR2(100),
PROC_CODE VARCHAR2(40),
PI_ID VARCHAR2(40),
NODE_IF_RUNNING NUMBER(1),
NODE_BTIME VARCHAR2(20),
NODE_ETIME VARCHAR2(20),
NODE_LIMIT_TIME VARCHAR2(20),
NODE_DAYS NUMBER(8),
DONE_USER_ID VARCHAR2(40),
DONE_USER_NAME VARCHAR2(40),
DONE_DEPT_IDS VARCHAR2(2000),
DONE_DEPT_NAMES VARCHAR2(2000),
SUB_USER_ID VARCHAR2(40),
SUB_USER_NAME VARCHAR2(40),
SUB_DEPT_IDS VARCHAR2(2000),
SUB_DEPT_NAMES VARCHAR2(2000),
PRE_NI_ID VARCHAR2(40),
PRE_LINE_CODE VARCHAR2(40),
TO_TYPE NUMBER(1),
TO_USER_ID VARCHAR2(40),
REMIND_CONTENT VARCHAR2(200),
DONE_TYPE NUMBER(3),
DONE_DESC VARCHAR2(200),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
OPEN_TIME VARCHAR2(20),
TO_USER_NAME VARCHAR2(40),
S_MTIME VARCHAR2(23),
REMIND_LOG VARCHAR2(100),
DELAY_TIME NUMBER(8),
constraint PK_SY_WFE_NODE_INST_HIS primary key (NI_ID)
);
comment on table SY_WFE_NODE_INST_HIS is '节点实例历史表';
comment on column SY_WFE_NODE_INST_HIS.NI_ID is '节点实例主键';
comment on column SY_WFE_NODE_INST_HIS.NODE_CODE is '节点编码';
comment on column SY_WFE_NODE_INST_HIS.NODE_NAME is '节点名称';
comment on column SY_WFE_NODE_INST_HIS.PROC_CODE is '流程编码';
comment on column SY_WFE_NODE_INST_HIS.PI_ID is '实例ID';
comment on column SY_WFE_NODE_INST_HIS.NODE_IF_RUNNING is '节点是否运行，1：是；2：否';
comment on column SY_WFE_NODE_INST_HIS.NODE_BTIME is '节点开始时间';
comment on column SY_WFE_NODE_INST_HIS.NODE_ETIME is '节点结束时间';
comment on column SY_WFE_NODE_INST_HIS.NODE_LIMIT_TIME is '节点限定完成时间';
comment on column SY_WFE_NODE_INST_HIS.NODE_DAYS is '节点执行小时数';
comment on column SY_WFE_NODE_INST_HIS.DONE_USER_ID is '执行节点用户ID';
comment on column SY_WFE_NODE_INST_HIS.DONE_USER_NAME is '执行节点用户名称';
comment on column SY_WFE_NODE_INST_HIS.DONE_DEPT_IDS is '执行节点部门ID列表';
comment on column SY_WFE_NODE_INST_HIS.DONE_DEPT_NAMES is '执行节点部门名称列表';
comment on column SY_WFE_NODE_INST_HIS.SUB_USER_ID is '代理执行的用户ID';
comment on column SY_WFE_NODE_INST_HIS.SUB_USER_NAME is '代理执行的用户名称';
comment on column SY_WFE_NODE_INST_HIS.SUB_DEPT_IDS is '代理执行的部门ID列表';
comment on column SY_WFE_NODE_INST_HIS.SUB_DEPT_NAMES is '代理执行的部门名称列表';
comment on column SY_WFE_NODE_INST_HIS.PRE_NI_ID is '前一个节点ID';
comment on column SY_WFE_NODE_INST_HIS.PRE_LINE_CODE is '连线编码';
comment on column SY_WFE_NODE_INST_HIS.TO_TYPE is '送交类型：1：送部门+角色；2：送角色；3：送用户';
comment on column SY_WFE_NODE_INST_HIS.TO_USER_ID is '送交用户ID';
comment on column SY_WFE_NODE_INST_HIS.REMIND_CONTENT is '提醒的信息内容';
comment on column SY_WFE_NODE_INST_HIS.DONE_TYPE is '办理类型：3收回、2终止、1正常结束';
comment on column SY_WFE_NODE_INST_HIS.DONE_DESC is '办理说明';
comment on column SY_WFE_NODE_INST_HIS.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_NODE_INST_HIS.S_CMPY is '公司ID';
comment on column SY_WFE_NODE_INST_HIS.S_USER is '添加者';
comment on column SY_WFE_NODE_INST_HIS.OPEN_TIME is '打开时间';
comment on column SY_WFE_NODE_INST_HIS.TO_USER_NAME is '';
comment on column SY_WFE_NODE_INST_HIS.S_MTIME is '更新时间';
comment on column SY_WFE_NODE_INST_HIS.REMIND_LOG is '提醒记录';
comment on column SY_WFE_NODE_INST_HIS.DELAY_TIME is '超期时间';
create table SY_WFE_NODE_PACTS(
PACT_ID VARCHAR2(40) not null,
PROC_CODE VARCHAR2(40),
ACT_CODE VARCHAR2(40),
ACT_NAME VARCHAR2(40),
ACT_TYPE NUMBER(4),
ACT_SORT NUMBER(4),
S_ATIME VARCHAR2(23),
constraint PK_SY_WFE_NODE_PACTS primary key (PACT_ID)
);
comment on table SY_WFE_NODE_PACTS is '公共按钮表';
comment on column SY_WFE_NODE_PACTS.PACT_ID is '公共按钮主键';
comment on column SY_WFE_NODE_PACTS.PROC_CODE is '流程CODE';
comment on column SY_WFE_NODE_PACTS.ACT_CODE is '按钮CODE';
comment on column SY_WFE_NODE_PACTS.ACT_NAME is '按钮名称';
comment on column SY_WFE_NODE_PACTS.ACT_TYPE is '1:工作流;2:审批单';
comment on column SY_WFE_NODE_PACTS.ACT_SORT is '排序号';
comment on column SY_WFE_NODE_PACTS.S_ATIME is '增加时间';
create table SY_WFE_NODE_USERS(
UN_ID VARCHAR2(40) not null,
NI_ID VARCHAR2(40),
TO_USER_ID VARCHAR2(40),
TO_USER_NAME VARCHAR2(80),
TO_DEPT_ID VARCHAR2(40),
TO_DEPT_NAME VARCHAR2(200),
PI_ID VARCHAR2(40),
S_ATIME VARCHAR2(20),
constraint PK_SY_WFE_NODE_USERS primary key (UN_ID)
);
comment on table SY_WFE_NODE_USERS is '节点实例用户信息';
comment on column SY_WFE_NODE_USERS.UN_ID is '主键ID';
comment on column SY_WFE_NODE_USERS.NI_ID is '节点实例ID';
comment on column SY_WFE_NODE_USERS.TO_USER_ID is '用户ID';
comment on column SY_WFE_NODE_USERS.TO_USER_NAME is '用户名称';
comment on column SY_WFE_NODE_USERS.TO_DEPT_ID is '部门ID';
comment on column SY_WFE_NODE_USERS.TO_DEPT_NAME is '部门名称';
comment on column SY_WFE_NODE_USERS.PI_ID is '流程实例ID';
comment on column SY_WFE_NODE_USERS.S_ATIME is '添加时间';
create table SY_WFE_NODE_USERS_HIS(
UN_ID VARCHAR2(40) not null,
NI_ID VARCHAR2(40),
TO_USER_ID VARCHAR2(40),
TO_USER_NAME VARCHAR2(80),
TO_DEPT_ID VARCHAR2(40),
TO_DEPT_NAME VARCHAR2(200),
PI_ID VARCHAR2(40),
S_ATIME VARCHAR2(20),
constraint PK_SY_WFE_NODE_USERS_HIS primary key (UN_ID)
);
comment on table SY_WFE_NODE_USERS_HIS is '节点实例用户历史信息';
comment on column SY_WFE_NODE_USERS_HIS.UN_ID is '主键ID';
comment on column SY_WFE_NODE_USERS_HIS.NI_ID is '节点实例ID';
comment on column SY_WFE_NODE_USERS_HIS.TO_USER_ID is '用户ID';
comment on column SY_WFE_NODE_USERS_HIS.TO_USER_NAME is '用户名称';
comment on column SY_WFE_NODE_USERS_HIS.TO_DEPT_ID is '部门ID';
comment on column SY_WFE_NODE_USERS_HIS.TO_DEPT_NAME is '部门名称';
comment on column SY_WFE_NODE_USERS_HIS.PI_ID is '流程实例ID';
comment on column SY_WFE_NODE_USERS_HIS.S_ATIME is '添加时间';
create table SY_WFE_PROC_DEF(
PROC_CODE VARCHAR2(40) not null,
PROC_NAME VARCHAR2(80),
PROC_TYPE NUMBER(4),
SERV_ID VARCHAR2(40),
PROC_MEMO VARCHAR2(200),
S_PUBLIC NUMBER(4),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
EN_NAME VARCHAR2(40),
PROC_XML LONG,
BIND_TITLE VARCHAR2(400),
BIND_BUTTONS VARCHAR2(400),
BIND_BUTTONS_NAME VARCHAR2(400),
BIND_ENDEDITFIELD VARCHAR2(400),
PROC_MANAGE VARCHAR2(40),
SERV_PID VARCHAR2(40),
EXPAND_CLASS VARCHAR2(200),
PROC_MANAGE_EDIT VARCHAR2(400),
S_MTIME VARCHAR2(23),
BIND_SCRIPT VARCHAR2(4000),
BIND_SORT NUMBER(4),
PROC_CATALOG VARCHAR2(40),
PROC_VERSION NUMBER(4),
EFFECTIVE_DATE VARCHAR2(23),
PROC_IS_LATEST NUMBER(4),
FINISH_REMIND VARCHAR2(400),
constraint PK_SY_WFE_PROC_DEF primary key (PROC_CODE)
);
comment on table SY_WFE_PROC_DEF is '流程定义表';
comment on column SY_WFE_PROC_DEF.PROC_CODE is '流程编码';
comment on column SY_WFE_PROC_DEF.PROC_NAME is '流程名称';
comment on column SY_WFE_PROC_DEF.PROC_TYPE is '流程分类';
comment on column SY_WFE_PROC_DEF.SERV_ID is '表单ID';
comment on column SY_WFE_PROC_DEF.PROC_MEMO is '流程描述';
comment on column SY_WFE_PROC_DEF.S_PUBLIC is '是否公共流程，1：是；2：否';
comment on column SY_WFE_PROC_DEF.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_PROC_DEF.S_CMPY is '公司ID';
comment on column SY_WFE_PROC_DEF.S_USER is '添加者';
comment on column SY_WFE_PROC_DEF.EN_NAME is '英文名称';
comment on column SY_WFE_PROC_DEF.PROC_XML is '流程是否为最新版本,1是 2否';
comment on column SY_WFE_PROC_DEF.BIND_TITLE is '提醒标题';
comment on column SY_WFE_PROC_DEF.BIND_BUTTONS is '全局按钮';
comment on column SY_WFE_PROC_DEF.BIND_BUTTONS_NAME is '按钮名称';
comment on column SY_WFE_PROC_DEF.BIND_ENDEDITFIELD is '流程结束后可编辑字段';
comment on column SY_WFE_PROC_DEF.PROC_MANAGE is '';
comment on column SY_WFE_PROC_DEF.SERV_PID is '';
comment on column SY_WFE_PROC_DEF.EXPAND_CLASS is '';
comment on column SY_WFE_PROC_DEF.PROC_MANAGE_EDIT is '';
comment on column SY_WFE_PROC_DEF.S_MTIME is '更新时间';
comment on column SY_WFE_PROC_DEF.BIND_SCRIPT is '绑定脚本';
comment on column SY_WFE_PROC_DEF.BIND_SORT is '绑定排序';
comment on column SY_WFE_PROC_DEF.PROC_CATALOG is '';
comment on column SY_WFE_PROC_DEF.PROC_VERSION is '版本号';
comment on column SY_WFE_PROC_DEF.EFFECTIVE_DATE is '生效日期';
comment on column SY_WFE_PROC_DEF.PROC_IS_LATEST is '流程定义XML文件';
comment on column SY_WFE_PROC_DEF.FINISH_REMIND is '办结提醒设置';
create table SY_WFE_PROC_INST(
PI_ID VARCHAR2(40) not null,
PROC_CODE VARCHAR2(40),
SERV_ID VARCHAR2(40),
DOC_ID VARCHAR2(40),
DOC_NAME VARCHAR2(200),
INST_IF_RUNNING NUMBER(1),
INST_BTIME VARCHAR2(20),
INST_ETIME VARCHAR2(20),
END_USER_ID VARCHAR2(40),
INST_IF_PARALLEL NUMBER(1),
INST_PARENT_NODE VARCHAR2(40),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
INST_LOCK NUMBER(4),
S_MTIME VARCHAR2(23),
INST_LOCK_USER VARCHAR2(40),
INST_LOCK_TIME VARCHAR2(20),
INST_MIN NUMBER(12),
constraint PK_SY_WFE_PROC_INST primary key (PI_ID)
);
comment on table SY_WFE_PROC_INST is '流程实例表';
comment on column SY_WFE_PROC_INST.PI_ID is '实例主键';
comment on column SY_WFE_PROC_INST.PROC_CODE is '流程编码';
comment on column SY_WFE_PROC_INST.SERV_ID is '表单ID';
comment on column SY_WFE_PROC_INST.DOC_ID is '表单实例ID';
comment on column SY_WFE_PROC_INST.DOC_NAME is '文档名称';
comment on column SY_WFE_PROC_INST.INST_IF_RUNNING is '流程是否运行，1：是；2：否';
comment on column SY_WFE_PROC_INST.INST_BTIME is '流程开始时间';
comment on column SY_WFE_PROC_INST.INST_ETIME is '流程结束时间';
comment on column SY_WFE_PROC_INST.END_USER_ID is '结束流程用户ID';
comment on column SY_WFE_PROC_INST.INST_IF_PARALLEL is '流程是否并发，1：是；2：否';
comment on column SY_WFE_PROC_INST.INST_PARENT_NODE is '流程的父流程节点ID';
comment on column SY_WFE_PROC_INST.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_PROC_INST.S_CMPY is '公司ID';
comment on column SY_WFE_PROC_INST.S_USER is '添加者';
comment on column SY_WFE_PROC_INST.INST_LOCK is '锁定状态  1 是 2 否';
comment on column SY_WFE_PROC_INST.S_MTIME is '更新时间';
comment on column SY_WFE_PROC_INST.INST_LOCK_USER is '锁定人';
comment on column SY_WFE_PROC_INST.INST_LOCK_TIME is '锁定时间';
comment on column SY_WFE_PROC_INST.INST_MIN is '执行时间';
create table SY_WFE_PROC_INST_HIS(
PI_ID VARCHAR2(40) not null,
PROC_CODE VARCHAR2(40),
SERV_ID VARCHAR2(40),
DOC_ID VARCHAR2(40),
DOC_NAME VARCHAR2(200),
INST_IF_RUNNING NUMBER(1),
INST_BTIME VARCHAR2(20),
INST_ETIME VARCHAR2(20),
END_USER_ID VARCHAR2(40),
INST_IF_PARALLEL NUMBER(1),
INST_PARENT_NODE VARCHAR2(40),
S_FLAG NUMBER(4),
S_CMPY VARCHAR2(40),
S_USER VARCHAR2(40),
INST_LOCK NUMBER(4),
S_MTIME VARCHAR2(23),
INST_LOCK_USER VARCHAR2(40),
INST_LOCK_TIME VARCHAR2(20),
INST_MIN NUMBER(12),
constraint PK_SY_WFE_PROC_INST_HIS primary key (PI_ID)
);
comment on table SY_WFE_PROC_INST_HIS is '流程实例历史表';
comment on column SY_WFE_PROC_INST_HIS.PI_ID is '实例主键';
comment on column SY_WFE_PROC_INST_HIS.PROC_CODE is '流程编码';
comment on column SY_WFE_PROC_INST_HIS.SERV_ID is '表单ID';
comment on column SY_WFE_PROC_INST_HIS.DOC_ID is '表单实例ID';
comment on column SY_WFE_PROC_INST_HIS.DOC_NAME is '文档名称';
comment on column SY_WFE_PROC_INST_HIS.INST_IF_RUNNING is '流程是否运行，1：是；2：否';
comment on column SY_WFE_PROC_INST_HIS.INST_BTIME is '流程开始时间';
comment on column SY_WFE_PROC_INST_HIS.INST_ETIME is '流程结束时间';
comment on column SY_WFE_PROC_INST_HIS.END_USER_ID is '结束流程用户ID';
comment on column SY_WFE_PROC_INST_HIS.INST_IF_PARALLEL is '流程是否并发，1：是；2：否';
comment on column SY_WFE_PROC_INST_HIS.INST_PARENT_NODE is '流程的父流程节点ID';
comment on column SY_WFE_PROC_INST_HIS.S_FLAG is '启用标志，1：是；2：否';
comment on column SY_WFE_PROC_INST_HIS.S_CMPY is '公司ID';
comment on column SY_WFE_PROC_INST_HIS.S_USER is '添加者';
comment on column SY_WFE_PROC_INST_HIS.INST_LOCK is '锁定状态  1 是 2 否';
comment on column SY_WFE_PROC_INST_HIS.S_MTIME is '更新时间';
comment on column SY_WFE_PROC_INST_HIS.INST_LOCK_USER is '锁定人';
comment on column SY_WFE_PROC_INST_HIS.INST_LOCK_TIME is '锁定时间';
comment on column SY_WFE_PROC_INST_HIS.INST_MIN is '执行时间';
create table SY_WFE_PROC_NODE_DEF(
ND_ID VARCHAR2(40) not null,
PROC_CODE VARCHAR2(40),
NODE_DEF LONG,
S_USER VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_MTIME VARCHAR2(23),
S_FLAG NUMBER(4),
constraint PK_SY_WFE_PROC_NODE_DEF primary key (ND_ID)
);
comment on table SY_WFE_PROC_NODE_DEF is '子流程节点配置信息';
comment on column SY_WFE_PROC_NODE_DEF.ND_ID is '节点定义主键';
comment on column SY_WFE_PROC_NODE_DEF.PROC_CODE is '流程编码';
comment on column SY_WFE_PROC_NODE_DEF.NODE_DEF is '删除标识，1：正常，2：删除';
comment on column SY_WFE_PROC_NODE_DEF.S_USER is '最后修改用户';
comment on column SY_WFE_PROC_NODE_DEF.S_CMPY is '用户所属公司';
comment on column SY_WFE_PROC_NODE_DEF.S_MTIME is '最后修改时间';
comment on column SY_WFE_PROC_NODE_DEF.S_FLAG is '节点配置信息,json格式';
create table SY_WFE_REMIND(
REMD_ID VARCHAR2(40) not null,
ACPT_USER VARCHAR2(40),
ACPT_DEPT VARCHAR2(40),
ACPT_TDEPT VARCHAR2(40),
ACPT_PHONE VARCHAR2(40),
REMD_TITLE VARCHAR2(200),
REMD_REASON VARCHAR2(1000),
REMD_CODE VARCHAR2(40),
REMD_YEAR NUMBER(4),
REMD_NUM NUMBER(4),
REMD_CDEPT VARCHAR2(400),
DEADLINE VARCHAR2(20),
OVER_DAYS NUMBER(4),
S_EMERGENCY VARCHAR2(10),
DO_MIND VARCHAR2(400),
REMD_PHONE VARCHAR2(40),
REMD_STATUS NUMBER(4),
S_FLAG NUMBER(4),
S_USER VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_ODEPT VARCHAR2(40),
S_CMPY VARCHAR2(40),
S_ATIME VARCHAR2(30),
S_MTIME VARCHAR2(30),
REMD_SCRT VARCHAR2(20),
SERV_ID VARCHAR2(40),
DATA_ID VARCHAR2(40),
WF_NODE_ID VARCHAR2(40),
ACPT_USER_NAME VARCHAR2(40),
constraint PK_SY_WFE_REMIND primary key (REMD_ID)
);
comment on table SY_WFE_REMIND is '催办单';
comment on column SY_WFE_REMIND.REMD_ID is '催办单主键';
comment on column SY_WFE_REMIND.ACPT_USER is '被催办用户';
comment on column SY_WFE_REMIND.ACPT_DEPT is '被催办部门';
comment on column SY_WFE_REMIND.ACPT_TDEPT is '被催办有效部门';
comment on column SY_WFE_REMIND.ACPT_PHONE is '被催办人电话';
comment on column SY_WFE_REMIND.REMD_TITLE is '催办事项';
comment on column SY_WFE_REMIND.REMD_REASON is '催办原因';
comment on column SY_WFE_REMIND.REMD_CODE is '催办代字';
comment on column SY_WFE_REMIND.REMD_YEAR is '催办年度';
comment on column SY_WFE_REMIND.REMD_NUM is '催办流水号';
comment on column SY_WFE_REMIND.REMD_CDEPT is '协办部门';
comment on column SY_WFE_REMIND.DEADLINE is '原定办理日期';
comment on column SY_WFE_REMIND.OVER_DAYS is '超期天数';
comment on column SY_WFE_REMIND.S_EMERGENCY is '催办缓急';
comment on column SY_WFE_REMIND.DO_MIND is '办理意见';
comment on column SY_WFE_REMIND.REMD_PHONE is '催办人电话';
comment on column SY_WFE_REMIND.REMD_STATUS is '催办提醒状态';
comment on column SY_WFE_REMIND.S_FLAG is '删除标志';
comment on column SY_WFE_REMIND.S_USER is '催办用户';
comment on column SY_WFE_REMIND.S_DEPT is '催办用户部门';
comment on column SY_WFE_REMIND.S_TDEPT is '催办部门';
comment on column SY_WFE_REMIND.S_ODEPT is '催办机构编码';
comment on column SY_WFE_REMIND.S_CMPY is '催办公司';
comment on column SY_WFE_REMIND.S_ATIME is '催办时间';
comment on column SY_WFE_REMIND.S_MTIME is '修改时间';
comment on column SY_WFE_REMIND.REMD_SCRT is '密级';
comment on column SY_WFE_REMIND.SERV_ID is '服务ID';
comment on column SY_WFE_REMIND.DATA_ID is '数据ID';
comment on column SY_WFE_REMIND.WF_NODE_ID is '流程节点ID';
comment on column SY_WFE_REMIND.ACPT_USER_NAME is '被催办人姓名';
create table SY_WFE_REMIND_PROC(
PROC_ID VARCHAR2(40) not null,
REMD_ID VARCHAR2(40),
PROC_MIND VARCHAR2(400),
S_USER VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_TDEPT VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(30),
constraint PK_SY_WFE_REMIND_PROC primary key (PROC_ID)
);
comment on table SY_WFE_REMIND_PROC is '催办办理过程表';
comment on column SY_WFE_REMIND_PROC.PROC_ID is '催办处理过程ID';
comment on column SY_WFE_REMIND_PROC.REMD_ID is '催办ID';
comment on column SY_WFE_REMIND_PROC.PROC_MIND is '催办意见';
comment on column SY_WFE_REMIND_PROC.S_USER is '处理人';
comment on column SY_WFE_REMIND_PROC.S_DEPT is '处理部门';
comment on column SY_WFE_REMIND_PROC.S_TDEPT is '处理有效部门';
comment on column SY_WFE_REMIND_PROC.S_FLAG is '删除标志';
comment on column SY_WFE_REMIND_PROC.S_MTIME is '';
create table SY_WFE_TEST(
ID VARCHAR2(40) not null,
NAME VARCHAR2(400),
TITLE VARCHAR2(400),
S_WF_INST VARCHAR2(40),
S_WF_NODE VARCHAR2(2000),
S_WF_USER VARCHAR2(2000),
S_WF_STATE NUMBER(4),
S_TDEPT VARCHAR2(40),
S_TNAME VARCHAR2(40),
S_DEPT VARCHAR2(40),
S_DNAME VARCHAR2(40),
S_USER VARCHAR2(40),
S_FLAG NUMBER(4),
S_MTIME VARCHAR2(23),
GW_MAIN_TO VARCHAR2(2000),
MAIN_TO_CODE VARCHAR2(2000),
GW_COPY_TO VARCHAR2(2000),
COPY_TO_CODE VARCHAR2(2000),
S_WF_USER_STATE VARCHAR2(4000),
S_HAS_PS_MIND VARCHAR2(100),
constraint PK_SY_WFE_TEST primary key (ID)
);
comment on table SY_WFE_TEST is '';
comment on column SY_WFE_TEST.ID is '';
comment on column SY_WFE_TEST.NAME is '';
comment on column SY_WFE_TEST.TITLE is '';
comment on column SY_WFE_TEST.S_WF_INST is '';
comment on column SY_WFE_TEST.S_WF_NODE is '';
comment on column SY_WFE_TEST.S_WF_USER is '';
comment on column SY_WFE_TEST.S_WF_STATE is '';
comment on column SY_WFE_TEST.S_TDEPT is '';
comment on column SY_WFE_TEST.S_TNAME is '';
comment on column SY_WFE_TEST.S_DEPT is '';
comment on column SY_WFE_TEST.S_DNAME is '';
comment on column SY_WFE_TEST.S_USER is '';
comment on column SY_WFE_TEST.S_FLAG is '';
comment on column SY_WFE_TEST.S_MTIME is '修改时间';
comment on column SY_WFE_TEST.GW_MAIN_TO is '主送';
comment on column SY_WFE_TEST.MAIN_TO_CODE is '主送方案编号';
comment on column SY_WFE_TEST.GW_COPY_TO is '抄送';
comment on column SY_WFE_TEST.COPY_TO_CODE is '抄送方案编号';
comment on column SY_WFE_TEST.S_WF_USER_STATE is '';
comment on column SY_WFE_TEST.S_HAS_PS_MIND is '指定公司是否有批示意见';
create or replace view SY_BASE_USER_V as SELECT u.USER_CODE,u.USER_LOGIN_NAME,u.USER_NAME,u.DEPT_CODE,u.USER_PASSWORD,u.USER_SORT,u.USER_HOME_PHONE,u.USER_MOBILE,u.USER_QQ,u.USER_EMAIL,u.USER_WORK_LOC,u.USER_POST,u.USER_POST_LEVEL,u.USER_ROOM,u.USER_WORK_NUM,u.USER_IDCARD,u.USER_BIRTHDAY,u.USER_OFFICE_PHONE,u.USER_NATION,u.USER_HEIGHT,u.USER_SEX,u.USER_HOME_LAND,u.USER_POLITICS,u.USER_MARRIAGE,u.USER_EDU_LEVLE,u.USER_EDU_SCHOOL,u.USER_EDU_MAJOR,u.USER_TITLE,u.USER_TITLE_DATE,u.USER_WORK_DATE,u.USER_CMPY_DATE,u.USER_STATE,u.CMPY_CODE,u.S_FLAG,u.S_USER,u.USER_LOGIN_TYPE,u.USER_EXPIRE_DATE,u.USER_PASSWORD_DATE,u.S_MTIME,u.USER_IMG_SRC,u.PT_ID,u.USER_FROM,u.JIANGANG_FLAG,u.USER_SHORT_NAME,u.USER_EN_NAME,
          d.DEPT_NAME,
          d.DEPT_LEVEL,
          d.DEPT_SORT,
          d.TDEPT_CODE,
          d.ODEPT_CODE,
          d.CODE_PATH,
          d.S_FLAG DEPT_FLAG,
          d.PT_ID DEPT_PT_ID
     FROM SY_ORG_USER u left join SY_ORG_DEPT d
    on u.dept_code = d.dept_code
;
create or replace view SY_COMM_ENTITY_SEND_DTL_RECV as SELECT a.ENTITY_ID,
          a.TITLE,
          a.S_EMERGENCY,
          a.MEMO,
          B.SERV_ID,
          a.DATA_ID,
          a.S_USER,
          a.S_DEPT,
          a.S_TDEPT,
          a.S_ODEPT,
          a.S_CMPY,
          a.S_ATIME,
          a.S_MTIME,
          a.S_WF_NODE,
          a.S_WF_USER,
          a.S_WF_STATE,
          a.S_WF_INST,
          a.SERV_NAME,
          a.ENTITY_CODE,
          a.SERV_SRC_ID,
          a.S_WF_USER_STATE,
          a.S_HAS_PS_MIND,
      a.QUERY_ODEPT,
          B.SEND_ID,
          B.RECV_ODEPT,
          B.RECV_USER,
          B.RECV_UNAME,
          B.RECV_TIME,
          B.RECV_TYPE,
          B.RETN_FLAG,
          B.S_ODEPT AS SEND_ODEPT,
          B.S_USER AS SEND_USER,
          B.S_UNAME AS SEND_UNAME,
          B.SEND_TIME,
          B.SEND_STATUS
     FROM SY_COMM_ENTITY a, SY_COMM_SEND_DETAIL b
    WHERE     a.DATA_ID = B.DATA_ID
          AND B.SEND_STATUS > 1
          AND A.S_FLAG = 1
          AND B.S_FLAG = 1
;
create or replace view SY_COMM_ENTITY_SEND_DTL_V as SELECT a.ENTITY_ID,
          a.TITLE,
          a.S_EMERGENCY,
          a.MEMO,
          a.SERV_ID,
          a.DATA_ID,
          a.S_USER,
          a.S_DEPT,
          a.S_TDEPT,
          a.S_ODEPT,
          a.S_CMPY,
          a.S_ATIME,
          a.S_MTIME,
          a.S_WF_NODE,
          a.S_WF_USER,
          a.S_WF_STATE,
          a.S_WF_INST,
          a.SERV_NAME,
          a.ENTITY_CODE,
          a.SERV_SRC_ID,
          a.S_WF_USER_STATE,
          a.S_HAS_PS_MIND,
          a.QUERY_ODEPT,
          B.RECV_ODEPT,
          B.RECV_USER,
          B.RECV_TIME,
          B.RECV_TYPE,
          B.RETN_FLAG,
          B.S_ODEPT AS SEND_ODEPT,
          B.S_USER AS SEND_USER,
          B.SEND_TIME,
          B.SEND_STATUS
     FROM SY_COMM_ENTITY a, SY_COMM_SEND_DETAIL b
    WHERE     a.DATA_ID = B.DATA_ID
          AND B.SEND_STATUS > 1
          AND A.S_FLAG = 1
          AND B.S_FLAG = 1
;
create or replace view SY_COMM_ENTITY_TAG_V as SELECT t.et_id,
          t.tag_id,
          t.data_id,
          t.serv_id,
          t.s_user,
          t.s_atime,
          s.S_emergency,
          s.s_mtime,
          s.s_wf_node,
          s.s_wf_user,
          s.title,
          s.s_wf_state,
          s.memo,
          s.serv_name,
          s.S_FLAG,
          S.ENTITY_CODE,
          S.S_WF_USER_STATE,
          S.QUERY_ODEPT
     FROM SY_COMM_ENTITY_TAG t, SY_COMM_ENTITY s
    WHERE t.data_id = s.data_id

;
create or replace view SY_COMM_FILE_HIS_V as SELECT
    b.FILE_NAME,
    a.HISTFILE_ID,
    a.FILE_ID,
    a.HISTFILE_PATH,
    a.HISTFILE_SIZE,
    a.HISTFILE_MTYPE,
    a.HISTFILE_MEMO,
    a.HISTFILE_VERSION,
    a.S_FLAG,
    a.S_USER,
    a.S_UNAME,
    a.S_DEPT,
    a.S_DNAME,
    a.S_CMPY,
    a.S_MTIME,
    a.FILE_CHECKSUM

     FROM SY_COMM_FILE b , SY_COMM_FILE_HIS a
    WHERE   a.FILE_ID = b.FILE_ID
;
create or replace view SY_COMM_MIND_V as SELECT a.MIND_ID,
          a.MIND_CONTENT,
          a.MIND_CODE,
          a.MIND_TIME,
          a.SERV_ID,
          a.DATA_ID,
          a.WF_NI_ID,
          a.MIND_DIS_RULE,
          a.MIND_SORT,
          a.MIND_TYPE,
          a.BD_USER,
          a.BD_UNAME,
          a.S_USER,
          a.S_UNAME,
          a.S_DEPT,
          a.S_DNAME,
          a.S_TDEPT,
          a.S_TNAME,
          a.S_CMPY,
          a.S_FLAG,
          a.S_MTIME,
          a.USUAL_ID,
          a.MIND_IS_TERMINAL,
          a.S_ODEPT,
          a.MIND_FILE,
          a.MIND_CODE_NAME,
          a.WF_NI_NAME,
          a.MIND_LEVEL,
          b.MIND_VALUE,
          b.MIND_CONTENT USUAL_CONTENT,
          a.IS_BD
     FROM SY_COMM_MIND a left join SY_COMM_MIND_USUAL b
    on a.USUAL_ID = b.MIND_ID
;
create or replace view SY_COMM_TODO_HIS_V as SELECT a.TODO_ID,
       a.OWNER_CODE,
       a.DEPT_CODE,
       a.TDEPT_CODE,
       a.SEND_USER_CODE,
       a.TODO_TITLE,
       a.TODO_URL,
       a.TODO_SEND_TIME,
       a.TODO_FINISH_TIME,
       a.TODO_CODE,
       a.TODO_CODE_NAME,
       a.S_EMERGENCY,
       a.TODO_OPERATION,
       a.TODO_CATALOG,
       a.TODO_OBJECT_ID1,
       a.TODO_OBJECT_ID2,
       a.TODO_DEADLINE1,
       a.TODO_DEADLINE2,
       a.TODO_BENCH_FLAG,
       a.TODO_ACCESS_FLAG,
       a.S_CMPY,
       a.TODO_CONTENT,
       a.S_MTIME,
       a.SERV_ID,
       a.AGT_USER_CODE,
       b.S_TDEPT,
       b.S_ODEPT,
       b.QUERY_ODEPT,
       A.SERV_DATA_CODE,A.TODO_FROM
 FROM SY_COMM_TODO_HIS a left join SY_COMM_ENTITY b
 on a.TODO_OBJECT_ID1 = b.DATA_ID
;
create or replace view SY_COMM_TODO_V as SELECT a.TODO_ID,
    a.OWNER_CODE,
    a.DEPT_CODE,
    a.TDEPT_CODE,
    a.SEND_USER_CODE,
    a.TODO_TITLE,
    a.TODO_URL,
    a.TODO_SEND_TIME,
    a.TODO_FINISH_TIME,
    a.TODO_CODE,
    a.TODO_CODE_NAME,
    a.S_EMERGENCY,
    a.TODO_OPERATION,
    a.TODO_CATALOG,
    a.TODO_OBJECT_ID1,
    a.TODO_OBJECT_ID2,
    a.TODO_DEADLINE1,
    a.TODO_DEADLINE2,
    a.TODO_BENCH_FLAG,
    a.TODO_ACCESS_FLAG,
    a.S_CMPY,
    a.TODO_CONTENT,
    a.S_MTIME,
    a.SERV_ID,
    a.AGT_USER_CODE,
    b.S_TDEPT,
    b.S_ODEPT,
    b.Query_Odept,
    a.SERV_DATA_CODE,
    a.TODO_FROM
 FROM sy_comm_todo a left join sy_comm_entity b
 on a.TODO_OBJECT_ID1 = b.DATA_ID
;
create or replace view SY_ORG_GROUP_USER_V as select
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
and a.USER_CODE=c.USER_CODE
;
create or replace view SY_ORG_ROLE_USER_V as SELECT a.RU_ID, a.USER_CODE, a.ROLE_CODE, a.CMPY_CODE, a.S_FLAG,
          a.S_USER, a.S_MTIME, b.role_name, b.role_sort, c.user_name,c.USER_LOGIN_NAME,
          c.user_sort, c.dept_code, c.user_state, c.s_flag user_s_flag, d.tdept_code, d.odept_code, d.dept_level, d.dept_sort, d.code_path
     FROM SY_ORG_ROLE_USER a, SY_ORG_ROLE b, SY_ORG_USER c left join SY_ORG_DEPT d
     on c.DEPT_CODE = d.DEPT_CODE
    WHERE a.role_code = b.role_code AND a.user_code = c.user_code
;
create or replace view SY_ORG_USER_RELATION_V as SELECT r.UR_ID,
          r.USER_CODE,
          r.ORIGIN_USER_CODE,
          r.RELATION_TYPE,
          r.RELATION_BTIME,
          r.RELATION_ETIME,
          r.RELATION_MEMO,
          r.CMPY_CODE,
          r.ORIGIN_CMPY_CODE,
          r.S_FLAG,
          r.S_USER,
          r.S_MTIME,
          d1.TDEPT_CODE,
          d1.ODEPT_CODE,
          d2.TDEPT_CODE ORIG_TDEPT_CODE,
          d2.ODEPT_CODE ORIG_ODEPT_CODE
     FROM SY_ORG_USER_RELATION r, SY_ORG_USER u1 left join SY_ORG_DEPT d1
     on u1.DEPT_CODE=d1.DEPT_CODE,
        SY_ORG_USER u2 left join SY_ORG_DEPT d2
     on u2.DEPT_CODE=d2.DEPT_CODE
    WHERE u1.USER_CODE = r.user_code AND u2.User_CODE = r.ORIGIN_USER_CODE
;
create or replace view SY_ORG_USER_TYPE_AGENT_REL_V as select a.RE_AGT_ID,a.AGT_ID,a.USER_CODE,a.FROM_USER_CODE,a.TO_USER_CODE,a.AGT_TYPE_CODE,a.AGT_USER_PATH,a.AGT_STATUS,a.S_FLAG,a.S_CMPY,a.S_MTIME,a.S_USER,a.REAGT_ID_PATH,a.SRC_AGT_ID,a.AGT_BEGIN_DATE,a.AGT_END_DATE,a.VALID_BEGIN_DATE,a.VALID_END_DATE,a.LAST_REAGT_ID, b.agt_memo MEMO_S from SY_ORG_USER_TYPE_AGENT_REL a, sy_org_user_type_agent b where a.AGT_ID = b.AGT_ID
;
create or replace view SY_SERV_LOG_ACT_V as select a.ALOG_ID,a.ACT_ID,a.ACT_KEYS,a.ACT_TIME,a.S_CMPY,a.S_USER,a.S_MTIME,a.ACT_IP, A.serv_id, nvl(b.act_code, a.ACT_ID) ACT_CODE, b.act_name,b.act_type
    from sy_serv_log_act a left join sy_serv_act b
  on a.act_id = b.act_id
;
create or replace view SY_SERV_LOG_ITEM_V as select a.ILOG_ID,a.ITEM_ID,a.ITEM_CODE,a.DATA_ID,a.ILOG_OLD,a.ILOG_NEW,a.S_CMPY,a.S_USER,a.S_MTIME,a.ILOG_IP, a.serv_id, b.item_name, b.item_input_type, b.item_input_mode, b.dict_id
    from SY_SERV_LOG_ITEM a left join SY_SERV_ITEM b
    on a.item_id = b.item_id
;
create or replace view SY_SERV_RELATE_V as SELECT a.RELATE_ID,
          a.SERV_ID,
          a.DATA_ID,
          a.RELATE_SERV_ID,
          a.RELATE_DATA_ID,
          a.RELATE_SORT,
          a.RELATE_TYPE,
          a.S_USER,
          a.S_DEPT,
          a.S_TDEPT,
          a.S_CMPY,
          a.S_ATIME,
          a.S_ODEPT,
          b.TITLE,
          b.SERV_NAME,
          b.QUERY_ODEPT
     FROM SY_SERV_RELATE a left join SY_COMM_ENTITY b
    on a.RELATE_DATA_ID = b.DATA_ID
;
create or replace view SY_SERV_TABLE_COL_V as select a.TABLE_NAME,a.COLUMN_NAME,a.DATA_TYPE,a.DATA_LENGTH,a.DATA_PRECISION,a.DATA_SCALE,a.NULLABLE,a.COLUMN_ID,b.COMMENTS from user_tab_columns a, user_col_comments b where a.TABLE_NAME=b.TABLE_NAME and a.COLUMN_NAME=b.COLUMN_NAME
;
create or replace view SY_WFE_NODE_USERS_V as select a.UN_ID,a.NI_ID,a.TO_USER_ID,a.TO_USER_NAME,a.TO_DEPT_ID,a.TO_DEPT_NAME,a.PI_ID,a.S_ATIME, b.NODE_IF_RUNNING from SY_WFE_NODE_USERS a, SY_WFE_NODE_INST b where A.NI_ID = b.NI_ID
;
create or replace view SY_WFE_REMIND_V as SELECT a.REMD_ID,
          a.ACPT_USER,
          a.ACPT_DEPT,
          a.ACPT_TDEPT,
          a.ACPT_PHONE,
          a.REMD_TITLE,
          a.REMD_REASON,
          a.REMD_CODE,
          a.REMD_YEAR,
          a.REMD_NUM,
          a.REMD_CDEPT,
          a.DEADLINE,
          a.OVER_DAYS,
          a.S_EMERGENCY,
          a.DO_MIND,
          a.REMD_PHONE,
          a.REMD_STATUS,
          a.S_FLAG,
          a.S_USER,
          a.S_DEPT,
          a.S_TDEPT,
          a.S_ODEPT,
          a.S_CMPY,
          a.S_ATIME,
          a.S_MTIME,
          a.REMD_SCRT,
          a.SERV_ID,
          a.DATA_ID,
          a.WF_NODE_ID,
          a.ACPT_USER_NAME,
          b.USER_NAME,
          c.DEPT_NAME
     FROM SY_WFE_REMIND a
     left join SY_ORG_USER b on a.ACPT_USER = b.USER_CODE
     left join SY_ORG_DEPT c on a.ACPT_DEPT = c.DEPT_CODE
;
