package com.rh.core.org.serv;

import com.rh.core.base.Context;
import com.rh.core.base.Context.APP;
import com.rh.core.base.TipException;
import com.rh.core.org.UserBean;
import com.rh.core.org.mgr.UserMgr;
import com.rh.core.serv.CommonServ;
import com.rh.core.serv.OutBean;
import com.rh.core.serv.ParamBean;
import com.rh.core.serv.ServMgr;
import com.rh.core.util.EncryptUtils;

/**
 * 
 * @author chujie
 * 
 */
public class UserSelfInfoServ extends CommonServ {

    /**
     * 个人信息功能 点击菜单弹出当前用户信息的卡片
     * @param paramBean 参数信息
     * @return outBean
     */
    public OutBean show(ParamBean paramBean) {
        OutBean outBean = new OutBean();
        String url = Context.appStr(APP.CONTEXTPATH) + "/sy/base/view/stdCardView.jsp?sId=" + paramBean.getServId() 
                + "&pkCode=" + Context.getUserBean().getCode();
        // URL跳转
        outBean.setToDispatcher(url).setOk();
        return outBean;
    }

    /**
     * 修改用户密码
     * @param paramBean 参数信息
     * @return outBean
     */
    public OutBean saveInfo(ParamBean paramBean) {
        OutBean outBean = new OutBean();
        String oldPassword = paramBean.getStr("OLD_PASSWORD"); // 输入的旧密码
        String newPassword = paramBean.getStr("USER_PASSWORD"); // 新密码
        UserBean userBean = Context.getUserBean();
        //如果输入旧密码就进行加密判断正确性    否则直接保存修改的数据
        if (!oldPassword.equals("")) {
            // 对输入的旧密码进行加密对比
            String enOldPswd = EncryptUtils.encrypt(oldPassword,
                    Context.getSyConf("SY_USER_PASSWORD_ENCRYPT", EncryptUtils.DES));
            if (!enOldPswd.equals(userBean.getPassword())) {
                throw new TipException("输入的旧密码错误。");
            } 
        } 
        paramBean.set("USER_PASSWORD", newPassword);
        outBean = ServMgr.act(ServMgr.SY_ORG_USER, "save", paramBean);
        outBean.setOk();
        return outBean;
    }
    /**
     * @param paramBean 参数信息
     * @param outBean 参数信息
     */
    protected void afterSave(ParamBean paramBean, OutBean outBean) {
        if (outBean.isOk()) {
            UserMgr.clearSelfUserCache();
        }
    }
}
 