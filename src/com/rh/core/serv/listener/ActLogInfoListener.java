package com.rh.core.serv.listener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.rh.core.serv.OutBean;
import com.rh.core.serv.ParamBean;
import com.rh.core.util.JsonUtils;

/**
 * 监听操作，输出日志信息
 * @author wanghg
 */
public class ActLogInfoListener {
    private Log log = LogFactory.getLog(ActLogInfoListener.class);
    private String serv;
    /**
     * 初始化，实例化后自动调用
     * @param serv 服务
     * @param conf 配置
     */
    public void init(String serv, String conf) {
        log.info("服务[" + serv + "]信息监听初始化" + (conf.length() > 0 ? "，配置：" + conf : ""));
        this.serv = serv;
    }
    /**
     * 执行前
     * @param act 操作
     * @param paramBean 参数bean
     */
    public void before(String act, ParamBean paramBean) {
        log.info("操作[" + this.serv + "." + act + "]执行开始，参数：" + JsonUtils.toJson(paramBean));
    }
    /**
     * 执行后
     * @param act 操作
     * @param paramBean 参数bean
     * @param result 结果
     */
    public void after(String act, ParamBean paramBean, OutBean result) {
        log.info("操作[" + this.serv + "." + act + "]执行完成，结果：" + JsonUtils.toJson(result));
    }
}
