package com.rh.core.base.start.impl;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.naming.InitialContext;
import javax.naming.NameClassPair;
import javax.naming.NamingEnumeration;
import javax.sql.DataSource;

import com.rh.core.base.Bean;
import com.rh.core.base.Context;
import com.rh.core.base.Context.DB_TYPE;
import com.rh.core.base.Context.DS;



/**
 * 数据源JNDI管理类，处理数据源的初始化和关闭。
 * 
 * @author Jerry Li
 * @version $Id$
 */
public class DsJndi {
	
	/**
	 * 初始化数据库连接池，支持多数据源。
	 */
	public void start() {
		try {
    		//获取数据源，支持多数据源
		    String jndiPrefix = Context.app(Context.SYS_PARAM_JNDI_PREFIX, "");
		    javax.naming.Context env;
		    if (jndiPrefix.length() > 0) {
		        env = (javax.naming.Context) new InitialContext().lookup(jndiPrefix);
		        jndiPrefix += "/";
		    } else {
		        env = (javax.naming.Context) new InitialContext();
		    }
    		String dsPrefix = Context.app(Context.SYS_PARAM_DATASOURCE_PREFIX, "jdbc");
    		NamingEnumeration<NameClassPair> namEnumList = env.list(dsPrefix);
    		String prefix = dsPrefix + "/";
    		int i = 0;
    		while (namEnumList.hasMore()) {
    		    NameClassPair bnd = namEnumList.next();
    		    String name = prefix + bnd.getName();
        		try {
        		    Bean dsBean = new Bean();
                    dsBean.set(DS.NAME, name);
                    dsBean.set(DS.FULL_NAME, jndiPrefix + name);
                    DataSource ds = (DataSource) env.lookup(name);
                    Connection conn = ds.getConnection();
                    DatabaseMetaData dbmd = conn.getMetaData();
                    String url = dbmd.getURL();
                    String userName = dbmd.getUserName();
                    if (url.indexOf("oracle") >= 0) {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.ORACLE);
                        dsBean.set(DS.SCHEMA, userName);  //oracle schema为用户名
                    } else if (url.indexOf("sqlserver") >= 0) {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.MSSQL);
                    } else if (url.indexOf("mysql") >= 0) {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.MYSQL);
                        Pattern pattern = Pattern.compile(".*/(\\w+)\\??.*");
                        Matcher mt = pattern.matcher(url); //在URL上通过正则表达式查找数据库名
                        if (mt.find()) {
                            dsBean.set(DS.SCHEMA, mt.group(1));  //mysql schema为数据库名
                        }
                    } else if (url.indexOf("h2") >= 0) {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.H2);
                        Pattern pattern = Pattern.compile(".*/(\\w+)\\??.*");
                        Matcher mt = pattern.matcher(url); //在URL上通过正则表达式查找数据库名
                        if (mt.find()) {
                            dsBean.set(DS.SCHEMA, mt.group(1));  //mysql schema为数据库名
                        }
                    } else if (url.indexOf("db2") >= 0) {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.DB2);
                    } else {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.OTHER);
                    }
                    dbmd = null;
                    conn.close();
                    dsBean.set(DS.DS, ds);
                    dsBean.set(DS.USER_NAME, userName);
                    dsBean.set(DS.URL, url);
                    Context.setDSBean(name, dsBean); //放入应用级变量
                    if (name.equalsIgnoreCase(prefix + "default")) { //如果设置了缺省数据源，则直接使用
                        Context.setDSBean("", dsBean); //将缺省数据源放入应用级变量
                    } else if (i == 0) { //如果没有缺省数据源，设置第一个为缺省数据源
                        Context.setDSBean("", dsBean); //将缺省数据源放入应用级变量
                    }
                    i++;
                    System.out.println("dsName(JNDI):" + name + " Url=" + url + "(" + userName + ") is OK!");
    		    } catch (Exception e) {
    		        System.out.println("dsName(JNDI):" + name + "ERROR! " + e.getMessage());
    		    }
    		}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 关闭连接池
	 */
	public void stop() {
		
	}
}