/*
 * Copyright (c) 2011 Ruaho All rights reserved.
 */
package com.rh.core.base.start.impl;

import java.sql.SQLException;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mchange.v2.c3p0.DataSources;
import com.rh.core.base.Bean;
import com.rh.core.base.Context;
import com.rh.core.base.Context.APP;
import com.rh.core.base.Context.DB_TYPE;
import com.rh.core.base.Context.DS;
import com.rh.core.util.Constant;



/**
 * C3P0数据源管理类，处理数据源的初始化和关闭。
 * 
 * @author Jerry Li
 * @version $Id$
 */
public class DsC3p0 {
	
	/**
	 * 初始化数据库连接池，支持多数据源。
	 */
	public void start() {
		try {
		    String confFile = Context.appStr(APP.WEBINF) + "/db.properties";
		    Properties prop = Context.getProperties(confFile);
		    String[] names = prop.getProperty("names").split(Constant.SEPARATOR);
		    int i = 0;
		    for (String name : names) {
		        String url = prop.getProperty(name + ".jdbcUrl");
		        String user = prop.getProperty(name + ".user");
		        try {
    		        ComboPooledDataSource ds = new ComboPooledDataSource();
    		        ds.setDriverClass(prop.getProperty(name + ".driverClass"));        
    		        ds.setJdbcUrl(url);
    		        ds.setUser(user);                                  
    		        ds.setPassword(prop.getProperty(name + ".password"));
    		        ds.setMinPoolSize(Integer.parseInt(prop.getProperty(name + ".minPoolSize")));
    		        ds.setAcquireIncrement(Integer.parseInt(prop.getProperty(name + ".acquireIncrement")));
    		        ds.setMaxPoolSize(Integer.parseInt(prop.getProperty(name + ".maxPoolSize")));
    		        Bean dsBean = new Bean();
                    dsBean.set(DS.NAME, name);
                    dsBean.set(DS.FULL_NAME, name);
                    if (url.indexOf("oracle") >= 0) {
                        dsBean.set(DS.DB_TYPE, DB_TYPE.ORACLE);
                        dsBean.set(DS.SCHEMA, user);  //oracle schema为用户名
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
                    dsBean.set(DS.DS, ds);
                    dsBean.set(DS.USER_NAME, user);
                    dsBean.set(DS.URL, url);
                    Context.setDSBean(name, dsBean); //放入应用级变量
                    if (i == 0) { //设置第一个为缺省数据源
                        Context.setDSBean("", dsBean); //将缺省数据源放入应用级变量
                    }
                    i++;
                    System.out.println("dsName(JNDI):" + name + " Url=" + url + "(" + user + ") is OK!");
    		    } catch (Exception e) {
    		        System.out.println("dsName(JNDI):" + name + " Url=" + url + "(" + user + ") is ERROR! " 
    		                + e.getMessage());
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
	    try {
    	    for (String name : Context.getDSNames()) {
    	        if (!name.isEmpty()) {
    	            DataSources.destroy((DataSource) Context.getDSBean(name).get(DS.DS));
    	        }
    	    }
	    } catch (SQLException e) {
            throw new RuntimeException(e);
	    }
	}
}