package com.rh.core.wfe;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;

import com.rh.core.TestEnv;
import com.rh.core.base.Bean;
import com.rh.core.base.Context;
import com.rh.core.org.UserBean;
import com.rh.core.org.mgr.UserMgr;
import com.rh.core.serv.ServDao;
import com.rh.core.serv.ServMgr;
import com.rh.core.serv.bean.WfOutBean;
import com.rh.core.serv.bean.WfParamBean;
import com.rh.core.wfe.db.WfProcDefDao;

public class TestWfStart extends TestEnv {

	private static Log log = LogFactory.getLog(TestWfStart.class);
	
	
	@Test
	public void testWfStart() {
		String procEnName = "name2";

		UserBean userBean = UserMgr.getUser("yuananan");

		log.debug("username is " + userBean.getName());

		Context.setOnlineUser(userBean);
		
		Bean procDefBean = WfProcDefDao.getWfProcBeanByEnName(procEnName, userBean.getCmpyCode());
		Bean servBean = ServDao.find("WF_TEST", "123456");
		WfParamBean param = new WfParamBean(WfParamBean.ACT_START);
		param.setProcDefBean(procDefBean).setDataBean(servBean);
		WfOutBean out = (WfOutBean) ServMgr.act(param);
		log.debug("-----the new act is " + out.getWfActInst().getId());
	}
}
