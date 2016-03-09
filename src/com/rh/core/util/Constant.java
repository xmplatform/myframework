/*
 * Copyright (c) 2011 Ruaho All rights reserved.
 */
package com.rh.core.util;

/**
 * 定义系统中用到的常量
 * 
 * @author Jerry Li
 * @version $Id$
 */
public final class Constant {
    /**
     * 私有构建体方法
     */
    private Constant() {
    }

    /** 字段分隔符号 */
    public static final String SEPARATOR = ",";
    /** 文件分隔符号 */
    public static final String PATH_SEPARATOR = "/";
    /** 字符集 */
    public static final String ENCODING = "UTF-8";
    /** 回车符 */
    public static final String STR_ENTER = "\r\n";
    /** CODE_PATH字段内容分隔符   */
    public static final String CODE_PATH_SEPERATOR = "^";
    
    /** 主键项 */
    public static final String KEY_ID = "_PK_";

    /** 是 */
    public static final String YES = "1";
    /** 否 */
    public static final String NO = "2";

    /** 是 */
    public static final int YES_INT = 1;
    /** 否 */
    public static final int NO_INT = 2;
    
    
    /** 每页显示数据量 */
    public static final String PAGE_SHOWNUM = "SHOWNUM";
    /** 当前页 */
    public static final String PAGE_NOWPAGE = "NOWPAGE";
    /** 数据总量 */
    public static final String PAGE_ALLNUM = "ALLNUM";
    /** 总页数 */
    public static final String PAGE_PAGES = "PAGES";
    /** 排序 */
    public static final String PAGE_ORDER = "ORDER";

    /** list包装标签 */
    public static final String RTN_DATA = "_DATA_";
    /** JSP跳转传递的数据 */
    public static final String RTN_DISP_DATA = "_DISPDATA_";
    /** 文件ID列表 */
    public static final String RTN_FILE_IDS = "_FILEIDS_";
    /** 返回信息标签 */
    public static final String RTN_MSG = "_MSG_";
    /** 成功信息 */
    public static final String RTN_MSG_OK = "OK,";
    /** 警告信息 */
    public static final String RTN_MSG_WARN = "WARN,";
    /** 失败信息 */
    public static final String RTN_MSG_ERROR = "ERROR,";
    /** 登录信息 */
    public static final String RTN_MSG_LOGIN = "LOGIN,";
    /** 执行时间 */
    public static final String RTN_TIME = "_TIME_";
    /** 参数：查询字段 */
    public static final String PARAM_SELECT = "_SELECT_";
    /** 参数：查询表，支持多个  */
    public static final String PARAM_TABLE = "_TABLE_";
    /** 参数：过滤条件 */
    public static final String PARAM_WHERE = "_WHERE_";
    /** 参数：排序设置 */
    public static final String PARAM_ORDER = "_ORDER_";
    /** 参数：分组设置 */
    public static final String PARAM_GROUP = "_GROUP_";
    /** 参数：获取记录行数 */
    public static final String PARAM_ROWNUM = "_ROWNUM_";
    /** 参数：设置prepare sql变量信息 */
    public static final String PARAM_PRE_VALUES = "_PREVALUES_";
    /** 服务参数名 */
    public static final String PARAM_SERV_ID = "serv";
    /** 操作参数名 */
    public static final String PARAM_ACT_CODE = "act";
    /** 参数:json随机数 */
    public static final String PARAM_JSON_RANDOM = "expando";
    /** 参数:数据格式（xml或者json） */
    public static final String PARAM_FORMAT = "format";
    /** 参数:是否忽略空值，缺省为false */
    public static final String PARAM_EMPTY = "_EMPTY_";
    /** 参数:是否包含子数据，或是否强制级联处理 */
    public static final String PARAM_LINK_FLAG = "_LINK_";
    /** 过程变量：级联处理标志 */
    public static final String IS_LINK_ACT = "isLinkAct";
    /** 参数:级联层级 */
    public static final String PARAM_LINK_LEVEL = "_LINKLEVEL_";
    
    /** 查询语句Select语句之后的关键字，例如distinct、ORACLE SQL HINTS等 **/
    public static final String SELECT_KEYWORDS = "_AFTER_SELECT_KEYWORDS";

    /** ----------------------文件模块--------------------------------------- **/
    /** 内部文件前缀 */
    public static final String FILE_INNER_URL_PREFIX = "internal://";

    /** 办件 */
    public static final int TODO = 1;

    /** 阅件 */
    public static final int READ = 2;

    /** 分发方案明细类型--用户 */
    public static final String USER = "USER";

    /** 分发方案明细类型--部门 */
    public static final String DEPT = "DEPT";

    /** 分发方案明细类型--角色 */
    public static final String ROLE = "ROLE";

    /** 分发方案明细类型--其他机构 */
    public static final String OTHER_ODEPT = "OTHER_ODEPT";

    /** 机构内 */
    public static final String INSIDE = "inside";

    /** 机构外 */
    public static final String OUTSIDE = "outside";
    /**
     * 执行byid方法时忽略流程信息
     */
    public static final String IGNORE_WF_INFO = "_IGNORE_WF_INFO_";
    
    /**
     * 委托人用户CODE；原始的参数名为ORIGINAL_USER，现在改为_AGENT_USER_
     */
    public static final String AGENT_USER = "_AGENT_USER_";
    
    /** 指定webservice返回根 */
    public static final String XML_ROOT = "_XML_ROOT_";
    /** 指定webservice返回Bean */
    public static final String XML_ROOT_BEAN = "_XML_ROOT_BEAN_";
}
