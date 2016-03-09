package com.rh.core.base;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.rh.core.base.db.DbType;
import com.rh.core.base.db.SqlBuilder;
import com.rh.core.base.db.SqlExecutor;
import com.rh.core.base.db.impl.CommonBuilder;
import com.rh.core.base.db.impl.CommonExecutor;
import com.rh.core.base.db.impl.H2Builder;
import com.rh.core.base.db.impl.H2Executor;
import com.rh.core.base.db.impl.MssqlBuilder;
import com.rh.core.base.db.impl.MssqlExecutor;
import com.rh.core.base.db.impl.MysqlBuilder;
import com.rh.core.base.db.impl.MysqlExecutor;
import com.rh.core.base.db.impl.OracleBuilder;
import com.rh.core.base.db.impl.OracleExecutor;
import com.rh.core.comm.ConfMgr;
import com.rh.core.comm.MenuServ;
import com.rh.core.org.UserBean;
import com.rh.core.org.UserStateBean;
import com.rh.core.org.mgr.UserMgr;
import com.rh.core.org.serv.OnlineUserMgr;
import com.rh.core.serv.dict.DictMgr;
import com.rh.core.util.Constant;
import com.rh.core.util.DateUtils;
import com.rh.core.util.EncryptUtils;
import com.rh.core.util.Lang;
import com.rh.core.util.RequestUtils;

/**
 * 系统的总体控制类，管理各种系统级变量。
 * 
 * @author Jerry Li
 * @version $Id$
 */
public class Context {

    /**
     * 私有构建体方法
     */
    private Context() {
    }

    /** 数据源类型，及对应的实现类 */
    public enum DB_TYPE implements DbType {
        /** ORACLE */
        ORACLE {
            /**
             * 获取sqlBuilder对象
             * @return sqlBuilder对象
             */
            public SqlBuilder getBuilder() {
                return OracleBuilder.getBuilder();
            }
            /**
             * 获取sqlExecutor对象
             * @return sqlExecutor对象
             */
            public SqlExecutor getExecutor() {
                return OracleExecutor.getExecutor();
            }
        },
        /** MSSQL */
        MSSQL {
            /**
             * 获取sqlBuilder对象
             * @return sqlBuilder对象
             */
            public SqlBuilder getBuilder() {
                return MssqlBuilder.getBuilder();
            }
            /**
             * 获取sqlExecutor对象
             * @return sqlExecutor对象
             */
            public SqlExecutor getExecutor() {
                return MssqlExecutor.getExecutor();
            }
        },
        /** MYSQL */
        MYSQL {
            /**
             * 获取sqlBuilder对象
             * @return sqlBuilder对象
             */
            public SqlBuilder getBuilder() {
                return MysqlBuilder.getBuilder();
            }
            /**
             * 获取sqlExecutor对象
             * @return sqlExecutor对象
             */
            public SqlExecutor getExecutor() {
                return MysqlExecutor.getExecutor();
            }
        },
        /** H2 */
        H2 {
            /**
             * 获取sqlBuilder对象
             * @return sqlBuilder对象
             */
            public SqlBuilder getBuilder() {
                return H2Builder.getBuilder();
            }
            /**
             * 获取sqlExecutor对象
             * @return sqlExecutor对象
             */
            public SqlExecutor getExecutor() {
                return H2Executor.getExecutor();
            }
        },
        /** DB2 */
        DB2 {
            /**
             * 获取sqlBuilder对象
             * @return sqlBuilder对象
             */
            public SqlBuilder getBuilder() {
                return CommonBuilder.getBuilder();
            }
            /**
             * 获取sqlExecutor对象
             * @return sqlExecutor对象
             */
            public SqlExecutor getExecutor() {
                return CommonExecutor.getExecutor();
            }
        },
        /** OTHER */
        OTHER {
            /**
             * 获取sqlBuilder对象
             * @return sqlBuilder对象
             */
            public SqlBuilder getBuilder() {
                return CommonBuilder.getBuilder();
            }
            /**
             * 获取sqlExecutor对象
             * @return sqlExecutor对象
             */
            public SqlExecutor getExecutor() {
                return CommonExecutor.getExecutor();
            }
        };
    };

    /** 应用变量访问项 */
    public enum APP {
        /** 系统路径 */
        SYSPATH, 
        /** rtx api对象 */
        IM, 
        /** 虚路径 */
        CONTEXTPATH,
        /** 系统WEB-INF路径 */
        WEBINF, 
        /** 系统WEB-INF下的doc路径*/
        WEBINF_DOC,
        /** 系统WEB-INF下的doc下的cmpy路径*/
        WEBINF_DOC_CMPY,
        /** HTTP全路径头*/
        HTTP_URL
    }

    /** 数据源访问项 */
    public enum DS {
        /** 数据源名称，缺省数据源为""字符串 */
        NAME,
        /** 数据源全路径名称，包含各应用服务器约定的JNDI前缀 */
        FULL_NAME, 
        /** 数据所属用户名 */
        USER_NAME, 
        /** 数据源类型 */
        DB_TYPE, 
        /** JDBC URL */
        URL, 
        /** SCHEMA对象 */
        SCHEMA, 
        /** 数据源对象 */
        DS
    }

    /** 线程变量访问项 */
    public enum THREAD {
        /** 事务列表 */
        TRANSLIST, 
        /** 参数信息 */
        PARAMBEAN, 
        /** 服务编码 */
        SERVID, 
        /** 用户信息 */
        USERBEAN,
        /** SessionID */
        SESSIONID,
        /** 公司编码 */
        CMPYCODE,
        /** LOG_DEBUG标志 */
        LOGDEBUG
    }
    
    /** 系统参数名称：log */
    public  static final String SYS_PARAM_LOG = "log";
    /** 系统参数名称：JNDI前缀 */
    public  static final String SYS_PARAM_JNDI_PREFIX = "jndi_prefix";
    /** 系统参数名称：数据源前缀 */
    public  static final String SYS_PARAM_DATASOURCE_PREFIX = "datasource_prefix";
    /** 系统参数名称：启动监听类 */
    public  static final String SYS_PARAM_LISTENER = "listener";
    /** conf serv文件定义 */
    public static final String SY_PARAM_FROM_FILE1 = "SERV_FILE";
    
    /** 数据源名称 */
    private static HashMap<String, Bean> dataSourceMap = new HashMap<String, Bean>();
    /** 用户Session对照 */
    private static Map<String, String> userSessionMap = new ConcurrentHashMap<String, String>();

    /** 系统级参数信息 */
    private static Bean appBean = null;
    
    /** http URL 地址 */
    private static String httpUrl = null;

    /**
     * 线程级变量
     */
    private static ThreadLocal<Bean> thread = new ThreadLocal<Bean>() {
        public Bean initialValue() {
            return new Bean();
        }
    };
    
    /**
     * 清理ThreadLocal中的数据
     */
    public static void cleanThreadData() {
        thread.remove();
    }

    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @return 变量信息
     */
    public static Object app(Object key) {
        return appBean.get(key);
    }

    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @param def 缺省值
     * @return 变量信息
     */
    public static String app(Object key, String def) {
        return appBean.get(key, def);
    }

    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @param def 缺省值
     * @return 变量信息
     */
    public static int app(Object key, int def) {
        return appBean.get(key, def);
    }
    
    /**
     * 设置系统变量信息
     * @param key 变量键值
     * @param value 变量信息
     */
    public static void setApp(Object key, Object value) {
        appBean.set(key, value);
    }

    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @return 变量信息字符串
     */
    public static String appStr(Object key) {
        return appBean.getStr(key);
    }
    
    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @return int类型变量信息
     */
    public static int appInt(Object key) {
        return appBean.getInt(key);
    }
    
    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @return boolean类型变量信息
     */
    public static Boolean appBoolean(Object key) {
        return appBean.getBoolean(key);
    }

    /**
     * 获取appBean信息
     * @return appBean信息
     */
    public static Bean getAppBean() {
        return appBean;
    }
    
    /**
     * 获取线程级实例对象
     * @return rtnBean rtnBean
     */
    private static Bean threadBean() {
        return thread.get();
    }

    /**
     * 对应线程变量是否为空
     * @param key 键值
     * @return 是否为空
     */
    public static boolean isEmpytyThread(Object key) {
        return threadBean().isEmpty(key);
    }
    
    /**
     * 清除对应的线程变量
     * @param key 键值
     */
    public static void removeThread(Object key) {
        threadBean().remove(key);
    }
    
    
    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @return 变量信息字符串
     */
    public static Object getThread(Object key) {
        return threadBean().get(key);
    }

    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @param def 缺省值
     * @return 变量信息字符串
     */
    public static String getThread(Object key, String def) {
        return threadBean().get(key, def);
    }

    /**
     * 获取系统变量信息（布尔值）
     * @param key 变量键值
     * @param def 缺省值
     * @return 变量信息字符串
     */
    public static boolean getThread(Object key, boolean def) {
        return threadBean().get(key, def);
    }
    
    /**
     * 获取系统变量信息
     * @param key 变量键值
     * @return 变量信息字符串
     */
    public static String getThreadStr(Object key) {
        return threadBean().getStr(key);
    }

    /**
     * 设置线程变量信息
     * @param key 变量键值
     * @param value 变量信息
     * @return 本线程对象，支持级联设置
     */
    public static Bean setThread(Object key, Object value) {
        return threadBean().set(key, value);
    }

    /**
     * 系统启动，装载必须的应用
     * @param confBean 初始配置信息，需要系统路径、启动类名列表和数据源列表
     */
    public static synchronized void start(Bean confBean) {
        appBean = confBean;
        String webinf = appBean.getStr(APP.SYSPATH) + "WEB-INF" 
                + Constant.PATH_SEPARATOR;
        String webinfoDoc = webinf + "doc" + Constant.PATH_SEPARATOR;
        String webinfoDocCmpy = webinfoDoc + "cmpy" + Constant.PATH_SEPARATOR;
        appBean.set(APP.WEBINF, webinf);
        appBean.set(APP.WEBINF_DOC, webinfoDoc);
        appBean.set(APP.WEBINF_DOC_CMPY, webinfoDocCmpy);
        
        String[] listeners = confBean.getStr("listener").split(",");
        for (String listener : listeners) { //依次执行启动监听类
            try {
                if (listener.length() > 0) {
                    Lang.doMethod(listener, "start");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 系统关闭，关闭必须关闭的资源
     */
    protected static synchronized void stop() {
        String[] listeners = appStr(SYS_PARAM_LISTENER).split(",");
        for (String listener : listeners) { // 依次执行启动监听类
            if (listener.length() > 0) {
                Lang.doMethod(listener, "stop");
            }
        }
    }

    /**
     * 获取系统缺省对应数据源。
     * 
     * @return 对应数据源
     */
    public static Bean getDSBean() {
        return getDSBean("");
    }

    /**
     * 获取所有数据源名称列表。
     * @return 数据源名称集合
     */
    public static Set<String> getDSNames() {
        return dataSourceMap.keySet();
    }
    
    /**
     * 获取指定的数据源。
     * 
     * @param dsName 数据源名称
     * @return 对应数据源
     */
    public static Bean getDSBean(String dsName) {
        if (dataSourceMap.containsKey(dsName)) {
            return dataSourceMap.get(dsName);
        } else {
            return null;
        }
    }

    /**
     * 获取系统缺省数据源的用户名
     * @return 缺省数据源用户名
     */
    public static String getDBUserName() {
        return getDSBean().getStr(DS.USER_NAME);
    }
    
    /**
     * 获取指定数据源的用户名
     * @param dsName 数据源名称
     * @return 指定数据源用户名
     */
    public static String getDBUserName(String dsName) {
        return getDSBean(dsName).getStr(DS.USER_NAME);
    }
    
    /**
     * 得到缺省数据源的连接
     * @return 数据库连接
     */
    public static Connection getConn() {
        return getConn("");
    }
    
    /**
     * 得到指定数据源的连接
     * @param dsName 指定数据源名称
     * @return 数据库连接
     */
    public static Connection getConn(String dsName) {
        try {
            Connection conn = ((DataSource) getDSBean(dsName).get(DS.DS)).getConnection();
            return conn;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    /**
     * 关闭数据库连接数据源的连接
     * @param conn 数据库连接
     */
    public static void endConn(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    /**
     * 得到缺省数据源的SQL执行器
     * @return SQS执行器
     */
    public static SqlExecutor getExecutor() {
        return getExecutor("");
    }

    /**
     * 得到指定数据源的SQL执行器
     * @param dsName 数据源名称
     * @return SQS执行器
     */
    public static SqlExecutor getExecutor(String dsName) {
        return ((DB_TYPE) getDSBean(dsName).get(DS.DB_TYPE)).getExecutor();
    }
    
    /**
     * 得到缺省数据源的SQL执行器
     * @return SQS执行器
     */
    public static SqlBuilder getBuilder() {
        return ((DB_TYPE) getDSBean().get(DS.DB_TYPE)).getBuilder();
    }

    
    /**
     * 得到指定数据库类型的SQL执行器
     * @param type 数据库类型，要求全部大写
     * @return SQS执行器
     */
    public static SqlBuilder getBuilderByType(String type) {
        if (type.isEmpty()) {
            return getBuilder();
        } else {
            return ((DB_TYPE) DB_TYPE.valueOf(type)).getBuilder();
        }
    }
    
    /**
     * 设置数据源
     * @param dsName 数据源名称
     * @param dsBean 数据源信息
     */
    public static void setDSBean(String dsName, Bean dsBean) {
        dataSourceMap.put(dsName, dsBean);
    }

    /**
     * 得到系统启动配置信息，此配置信息在web.xml中设定
     * @param name 配置项名称
     * @return 配置项对应的值
     */
    public static String getInitConfig(String name) {
        return appStr(name);
    }
    

    /**
     * 得到系统启动配置信息，此配置信息在web.xml中设定
     * @param name 配置项名称
     * @param def 缺省值
     * @return 配置项对应的值
     */
    public static String getInitConfig(String name, String def) {
        String value = (String) app(name);
        if (value == null || value.isEmpty()) {
            value = def;
        }
        return value;
    }

    /**
     * 获取系统提示信息 将指定参数替换表达式中的变量，并返回结果
     * 信息编码要求在DICT_ID为SY_COMM_MESSAGE的字段中添加，信息的内容支持变量替换{1} {2} {3}，
     * 调用时带上对应的参数。
     * 例如：SY_SERV_ID_ERROR:  无效的服务主键：{1}
     * Context.get("SY_SERV_ID_ERROR", servId);
     * 获取到的信息为：“无效的服务主键：SY_DDDD ”
     * 
     * @param msgCode 错误码
     * @param params 需要在表达式中替换的参数，使用时请确认参数次序是否符合表达式format
     * @return 表达式替换后生成的错误信息
     */
    public static String getSyMsg(String msgCode, Object... params) {
        String msg = DictMgr.getName("SY_COMM_MESSAGE", msgCode);
        if (msg.length() > 0) {
            msg = msg.replaceAll("\\{(\\d)\\}", "\\%$1\\$s");
            return String.format(msg, params);
        } else {
            return params.toString();
        }
    }
    
    /**
     * 获取系统配置信息
     * @param key 键值
     * @param def 缺省配置
     * @return 配置信息
     */
    public static String getSyConf(String key, String def) {
        return ConfMgr.getConf(key, def);
    }
    
    /**
     * 获取系统配置信息
     * @param key 键值
     * @param def 缺省配置
     * @return 配置信息
     */
    public static boolean getSyConf(String key, boolean def) {
        return ConfMgr.getConf(key, def);
    }
    
    /**
     * 获取系统配置信息
     * @param key 键值
     * @param def 缺省配置
     * @return 配置信息
     */
    public static int getSyConf(String key, int def) {
        return ConfMgr.getConf(key, def);
    }
    
    /**
     * 从线程获取 参数信息
     * @return 参数信息
     */
    public static Bean getParamBean() {
        return (Bean) getThread(THREAD.PARAMBEAN);
    }
    
    /**
     * 从线程或者session中获取用户信息
     * @param request 对象
     * @return 用户信息
     */
    public static UserBean getUserBean(HttpServletRequest request) {
        UserBean userBean = null;
        if (request != null) { //从session中获取
            UserStateBean userState = (UserStateBean) RequestUtils.getSession(request, "USER_BEAN");
            if (userState != null && userState.isNotEmpty("USER_LAST_IP")) {
                userBean = setThreadUser(userState);
            }
        }
        return userBean;
    }
    
    /**
     * 获取用户信息，先从线程获取，不存从session获取，都不存在就返回null。
     * @return 用户信息
     */
    public static UserBean getUserBean() {
        UserBean userBean = (UserBean) getThread(THREAD.USERBEAN);
        HttpServletRequest req = getRequest();
        if ((userBean == null) && (req != null)) {
            return getUserBean(req);
        }
        return userBean;
    }
    
    /**
     * 
     * @param userBean 指定用户对象
     * @return 指定用户是否是当前用户
     */
    public static boolean isCurrentUser(UserBean userBean) {
        if (userBean == null) {
            return false;
        }
        UserBean currUser = Context.getUserBean();

        if (userBean.getCode().equals(currUser.getCode())) {
            return true;
        }

        return false;
    }
    
    /**
     * 根据session编码获取在线用户信息
     * @param sessionId session编码
     * @return 用户信息
     */
    public static UserBean getUserBean(String sessionId) {
        UserBean userBean = null;
        UserStateBean userState = OnlineUserMgr.getOnlineUserState(sessionId);
        if (userState != null && userState.isNotEmpty("USER_LAST_IP")) {
                userBean = setThreadUser(userState);
        }
        return userBean;
    }
    
    /**
     * 远程设备模式根据用户令牌获取在线用户信息
     * @param token 用户令牌
     * @return 用户信息
     */
    public static UserBean getUserBeanByToken(String token, String uuid) {
        UserBean userBean = null;
        UserStateBean userState = UserMgr.getUserStateByToken(token);
        if (userState != null) {
            String userCode = userState.getStr("USER_CODE");
            String checkToken = EncryptUtils.desEncrypt(userCode + Constant.SEPARATOR + uuid);
            if (checkToken.equals(token)) {
                userBean = UserMgr.getUser(userCode);
            }
        }
        return userBean;
    }
    
    /**
     * 增加在线用户
     * @param userState userStateBean
     */
    public static void addOnlineUser(UserStateBean userState) {
        OnlineUserMgr.addOnlineUser(userState);
    }
    
    /**
     * 将当前用户相关信息设置到线程变量中使用，放置sessionID，userBean，cmpyCode
     * @param userState 用户状态信息
     * @return userBean信息
     */
    public static UserBean setThreadUser(UserStateBean userState) {
        String sessionId = userState.getId();
        addOnlineUser(userState);
        UserBean userBean = UserMgr.getUser(userState.getStr("USER_CODE"));
        setThread(THREAD.SESSIONID, sessionId);
        setThread(THREAD.USERBEAN, userBean); //放入线程供后续调用
        setThread(THREAD.CMPYCODE, userBean.getCmpyCode());
        return userBean;
    }
    
    /**
     * 清除线程变量中用户信息
     */
    public static void removeThreadUser() {
        removeThread(THREAD.SESSIONID);
        removeThread(THREAD.USERBEAN);
        removeThread(THREAD.CMPYCODE);
    }
    
    /**
     * 设置用户信息
     * @param userBean 用户信息
     */
    public static void setOnlineUser(UserBean userBean) {
        setOnlineUser(getRequest(), userBean);
    }

    /**
     * 设置用户信息，一般给JSP，用来设置自动登录
     * @param req request对象
     * @param userBean 用户信息
     */
    public static void setOnlineUser(HttpServletRequest req, UserBean userBean) {
        //设置线程变量
        setThread(THREAD.USERBEAN, userBean);
        setThread(THREAD.CMPYCODE, userBean.getCmpyCode());
        //设置session变量
        if (req != null) {
            String userCode = userBean.getCode();
            UserMgr.clearCacheVarMap(userCode); //清除以重新获取用户变量
            String ip = req.getRemoteAddr();
            String time = DateUtils.getDatetime();
            //获取用户状态信息
            Bean updataState = new Bean();
            UserStateBean userState = UserMgr.getUserState(userCode); //获取用户状态信息
            if (userState == null) {
                userState = new UserStateBean(userCode);
                userState.set("USER_CODE", userCode);
                updataState.set("USER_CODE", userCode);  //为新建作准备
            } else {
                updataState.setId(userCode); //为修改作准备
            }
            if (req.getHeader("X-XSRF-TOKEN") == null) { //非令牌模式为正式登录，进行登录数据处理
                userState.set("USER_LAST_IP", ip);
                updataState.set("USER_LAST_IP", ip);
                userState.set("USER_LAST_LOGIN", time);
                updataState.set("USER_LAST_LOGIN", time);
                String client = RequestUtils.get(req, "USER_LAST_CLIENT", "");
                String os = RequestUtils.get(req, "USER_LAST_OS", "");
                String pcName = RequestUtils.get(req, "USER_LAST_PCNAME", "");
                String browser = RequestUtils.get(req, "USER_LAST_BROWSER", "");
                userState.set("USER_LAST_CLIENT", client).set("USER_LAST_OS", os).set("USER_LAST_PCNAME", pcName)
                    .set("USER_LAST_BROWSER", browser);
                updataState.set("USER_LAST_CLIENT", client).set("USER_LAST_OS", os).set("USER_LAST_PCNAME", pcName)
                    .set("USER_LAST_BROWSER", browser);
                String device = req.getHeader("X-DEVICE-NAME");
                if (device != null) {
                    updataState.set("USER_TOKEN", EncryptUtils.desEncrypt(userCode + Constant.SEPARATOR + device));
                }
            }
            boolean bMenu;
            //如果没有启用缓存或者菜单时间为空，则生成菜单
            if (userState.isEmpty("MENU_TIME") || !Context.getSyConf("SY_COMM_MENU_CACHE", true)) { 
                userState.set("MENU_TIME", time); //设置菜单时间
                updataState.set("MENU_TIME", time);
                bMenu = true;
            } else {
                bMenu = false;
            }
            //更新用户状态信息
            UserMgr.saveUserState(updataState, false); //更新数据库用户状态
            RequestUtils.setSession(req, "USER_BEAN", userState); //设置session自动在线用户
            setThread(THREAD.SESSIONID, userState.getId());
            setUserSessionId(userCode, userState.getId()); //记录用户编码与session的对应关系
            if (bMenu) { //则生成菜单
                MenuServ.menuToFile(userCode);
            } else {
                //在集群环境下，菜单改变之后，不是所有节点都会去更新缓存，所以在登录的时候，去清除菜单缓存
                UserMgr.clearCacheMenuList(userCode);
            }
        }
    }
    
    /**
     * 获取指定用户的在线用户的状态信息，未登录不存在返回null
     * @return 在线用户状态
     */
    public static UserStateBean getOnlineUserState() {
        return getOnlineUserState(Context.getThreadStr(THREAD.SESSIONID));
    }
    /**
     * 获取指定用户的在线用户的状态信息，未登录不存在返回null
     * @param sessionId session编码
     * @return 在线用户状态
     */
    public static UserStateBean getOnlineUserState(String sessionId) {
        return OnlineUserMgr.getOnlineUserState(sessionId);
    }
    /**
     * 获取指定用户的在线用户的状态信息，未登录不存在返回null
     * @param userCode 用户编码
     * @return 在线用户状态
     */
    public static Bean getOnlineUserStateByUser(String userCode) {
        String sessionId = getUserSessionId(userCode);
        if (sessionId != null) {
            return getOnlineUserState(sessionId);
        } else {
            return null;
        }
    }
    /**
     * 根据sessionId清除在线用户
     * @param sessionId session编码
     */
    public static void clearOnlineUser(String sessionId) {
        OnlineUserMgr.clearOnlineUser(sessionId);
    }
    
    /**
     * 根据用户编码获取最后登录的sessionId信息
     * @param userCode 用户编码
     * @return 最后登录sessionId
     */
    public static String getUserSessionId(String userCode) {
        return userSessionMap.get(userCode);
    }
    
    /**
     * 用户是否在线
     * @param userCode - usercode
     * @return 1: 在线, 2:离线
     */
    public static int userOnline(String userCode) {
        return Context.getUserSessionId(userCode) == null ? Constant.NO_INT : Constant.YES_INT;
    }
    
    /**
     * 设定用户编码对应最后登录的sessionId信息
     * @param userCode 用户编码
     * @param sessionId 最后登录sessionId
     */
    public static void setUserSessionId(String userCode, String sessionId) {
        userSessionMap.put(userCode, sessionId);
    }
    
    
    /**
     * 设定用户编码对应最后登录的sessionId信息
     * @param userCode 用户编码
     * @param sessionId 最后登录sessionId
     */
    public static void clearSessionId(String userCode, String sessionId) {
        userSessionMap.put(userCode, sessionId);
    }
    
    /**
     * 设置request对象到线程级变量供userInfo等使用
     * @param req request对象
     */
    public static void setRequest(HttpServletRequest req) {
        if ((req != null) && (req instanceof HttpServletRequest)) {
            setThread("^^REQUEST^^", req);
        }
    }
    
    /**
     * 设置response对象到线程级变量供下载等使用
     * @param res response对象
     */
    public static void setResponse(HttpServletResponse res) {
        if ((res != null) && (res instanceof HttpServletResponse)) {
            setThread("^^RESPONSE^^", res);
        }
    }
    
    /**
     * 获取response对象到线程级变量供下载等使用
     * @return response对象
     */
    public static HttpServletResponse getResponse() {
        return (HttpServletResponse) getThread("^^RESPONSE^^");
    }
    
    /**
     * 获取request对象到线程级变量供下载等使用
     * @return request对象
     */
    public static HttpServletRequest getRequest() {
        return (HttpServletRequest) getThread("^^REQUEST^^");
    }
    
    /**
     * 变更公司编码，主要用户根据数据的公司字段的值去获取字典信息，而不是根据当前用户。
     * @param newCmpy 新指定的公司编码
     * @return 原先的公司编码
     */
    public static String changeCmpy(String newCmpy) {
        String oldCmpy = getThreadStr(THREAD.CMPYCODE);
        setThread(THREAD.CMPYCODE, newCmpy);
        return oldCmpy;
    }
    
    /**
     * 获取当前用户对应的公司编码。
     * @return 公司编码
     */
    public static String getCmpy() {
        return getThreadStr(THREAD.CMPYCODE);
    }
    
    /**
     * 是否运行在开发调试模式下，如果是开发调试模式：
     *  1. 卡片模版不再进行缓存，修改后自动生效，便于调试；
     *  2. JS等文件不进行压缩，便于调试；
     *  3. 服务权限不再判断，便于Junit和开发调试；
     * @return 是否开发模式
     */
    public static boolean isDebugMode() {
        return Context.appBoolean("DEBUG_MODE");
    }
    
    /**
     * 根据属性文件地址（全路径地址）获取属性文件内容
     * @param fileName 属性文件全路径地址
     * @return 属性文件内容
     */
    public static Properties getProperties(String fileName) {
        Properties prop = new Properties();
        FileInputStream input = null;
        try {
            input = new FileInputStream(fileName);
            prop.load(input);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return prop;
    }
    
    /**
     * 获取服务器的httpd地址，如果系统集群则返回系统配置中的配置地址，优先取系统配置地址，如果取不到则通过request获取
     * 系统配置键值为:SY_HTTP_URL
     * 得到对应的URL的全名称信息及虚路径，比如：http://www.sina.com.cn:81/ruaho
     * @return 本机地址
     */
    public static String getHttpUrl() {
        String url = getSyConf("SY_HTTP_URL", "");
        if (url.isEmpty()) {
            if (httpUrl == null) {
                HttpServletRequest request = getRequest();
                // 服务器地址
                httpUrl = request.getScheme() + "://" + request.getServerName() + ":" 
                        + request.getServerPort();
            }
            url = httpUrl;
        }
        String contextPath = Context.appStr(APP.CONTEXTPATH);
        if (contextPath.length() > 0) {
            url = url + contextPath;
        }
        return url;
    }
}
