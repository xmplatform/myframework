package com.rh.core.serv.listener;

import java.util.List;

import com.rh.core.base.Bean;
import com.rh.core.serv.CommonServ;
import com.rh.core.serv.OutBean;
import com.rh.core.serv.ParamBean;
import com.rh.core.serv.ServDao;
import com.rh.core.util.Constant;

/**
 * 服务监听配置
 * @author wanghg
 */
public class ServLisConf extends CommonServ {
    /**
     * 修改后重新加载监听
     * @param paramBean 参数Bean
     * @param outBean 输出信息
     */
    protected void afterSave(ParamBean paramBean, OutBean outBean) {
        if (outBean.isOk()) {
            if (paramBean.contains("SERV_ID")) {
                if (paramBean.getId().length() > 0) {
                    Bean oldBean = paramBean.getSaveOldData();
                    reloadListener(oldBean.getStr("SERV_ID"));
                }
            }
            reloadListener(outBean.getStr("SERV_ID"));
        }
    }

    /**
     * 修改后重新加载监听
     * @param paramBean 参数Bean
     * @param outBean 输出信息
     */
    protected void afterDelete(ParamBean paramBean, OutBean outBean) {
        List<Bean> dataList = outBean.getDataList();
        for (Bean bean : dataList) {
            reloadListener(bean.getStr("SERV_ID"));
        }
    }
    /**
     * 重新加载监听
     * @param servId 服务id
     */
    private void reloadListener(String servId) {
        Bean bean = new Bean();
        bean.set(Constant.PARAM_WHERE, " and serv_id='" + servId + "' and S_FLAG=1");
        bean.set(Constant.PARAM_ORDER, "lis_sort");
        List<Bean> list = ServDao.finds("SY_SERV_LISTENER", bean);
        String[] cls = new String[list.size()];
        String[] conf = new String[list.size()];
        for (int i = 0; i < cls.length; i++) {
            cls[i] = list.get(i).getStr("LIS_CLASS");
            conf[i] = list.get(i).getStr("LIS_CONF");
        }
        ServLisMgr.getInstance().setListener(servId, cls, conf);
    }
}
