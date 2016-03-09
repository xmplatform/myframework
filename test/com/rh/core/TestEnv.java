/*
 * Copyright (c) 2011 Ruaho All rights reserved.
 */
package com.rh.core;

import javax.sql.DataSource;

import org.apache.commons.logging.LogFactory;
import org.apache.log4j.LogManager;
import org.junit.AfterClass;
import org.junit.BeforeClass;

import com.mchange.v2.c3p0.DataSources;
import com.rh.core.base.Bean;
import com.rh.core.base.Context;
import com.rh.core.base.Context.APP;
import com.rh.core.base.Context.DB_TYPE;
import com.rh.core.base.Context.DS;
import com.rh.core.base.start.LogMgr;
import com.rh.core.org.mgr.UserMgr;

/**
 * 初始化测试环境及恢复测试环境的公共方法
 * 
 * @author Jerry Li
 */
public class TestEnv {
	/** 单数据源 */
	private static DataSource cpds = null;
    static {
		try { 
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		} catch (Exception e) { 
			e.printStackTrace();
		}
    }
    
	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		start();
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		stop();
	}

	/**
	 * 启动数据库连接和log日志
	 * @throws Exception 例外
	 */
	public static void start() throws Exception {
	    Bean param = new Bean();
	    param.set(Context.SYS_PARAM_LOG, "log4j.properties");
	    param.set(APP.CONTEXTPATH, "");
	    param.set(APP.SYSPATH, "D:/rh/product/core/pro/");
	    param.set("DEBUG_MODE", true);
		Context.start(param);
		
		LogMgr logMgr = new LogMgr();
		logMgr.start();
		//logMgr.changeLevel("ERROR");
//		String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
		String jdbcUrl = "jdbc:oracle:thin:@172.16.0.2:1521:orclcn";
//		String jdbcUrl = "jdbc:oracle:thin:@172.16.0.94:1521:ora10g";
//		String jdbcUrl = "jdbc:oracle:thin:@192.168.6.241:1521:orcl";

		cpds = DataSources.unpooledDataSource(jdbcUrl, "rhcore", "rhcore");
		Bean dsBean = new Bean();
		dsBean.set(DS.DB_TYPE, DB_TYPE.ORACLE);
		dsBean.set(DS.DS, cpds);
		Context.setDSBean("", dsBean); //设为系统缺省连接池
		Context.setThreadUser(UserMgr.getUserState("admin"));
		//启动IM服务
//		ImLoader imLoader = new ImLoader();
//		imLoader.start();
	}
	

	/**
	 * 关闭数据库连接和日志
	 * @throws Exception 例外
	 */
	public static void stop() throws Exception {
		DataSources.destroy(cpds);
        LogManager.shutdown();
        LogFactory.releaseAll();
        //关闭IM服务
//        ImLoader imLoader = new ImLoader();
//        imLoader.stop();
	}
}
