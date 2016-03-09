package com.rh.core.wfe.serv;

import com.rh.core.base.Bean;
import com.rh.core.serv.ParamBean;
import com.rh.core.wfe.WfAct;
import com.rh.core.wfe.WfProcess;

/**
 * 流经用户 能看意见，相关文件，修改痕迹，文稿
 * @author anan
 *
 */
public class FlowOutBean extends WfOut {
    /**
     * 审批单查看模式：流经模式
     */
    private static final String MODE_FLOW = "MODE_FLOW";
	/**
	 * 
	 * @param aWfProc
	 *            流程实例
	 * @param aOutBean
	 *            返回前台Bean
	 * @param aParamBean 参数           
	 */
	public FlowOutBean(WfProcess aWfProc, Bean aOutBean, ParamBean aParamBean) {
		super(aWfProc, aOutBean, aParamBean);
	}

	@Override
	public void fillOutBean(WfAct wfAct) {
//		this.addFenFaProcBtn();

		addFlowProcBtn(wfAct);
		
		this.getOutBean().set(DISPLAY_MODE, MODE_FLOW);
	}

}
