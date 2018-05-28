package com.gmebtc.web.portal.service.impl;

import com.gmebtc.web.portal.entity.User;
import com.gmebtc.web.portal.net.CommonUtil;
import com.gmebtc.web.portal.net.JsonUtil;
import com.gmebtc.web.portal.net.modle.ResultJson;
import com.gmebtc.web.portal.service.UserLoginService;
import com.gmebtc.web.portal.utils.SendRequestUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;


/*
 * @Author zhou
 * @Date 2018/5/28 12:15
 * @Desc 用户登录,忘记登录密码,注销登录 服务类
 */
@Service(value = "userLoginService")
public class UserLoginServiceImpl implements UserLoginService {

    // 获得eolinker的基础参数
    @Value("${SERVICE_BASE_PARAM}")
    private String SERVICE_BASE_PARAM;

    /**
     * @Author zhou
     * @Date 2018/5/28 14:22
     * @Param [request, user, method]
     * @Desc 用户登录
     */
    @Override
    public String login(HttpServletRequest request, User user) {
        String method = SERVICE_BASE_PARAM + "userLogin&";
        return SendRequestUtil.sendRequest(request, user,method);
    }


    /**
     * @Author zhou
     * @Date 2018/5/28 14:27
     * @Param [request, method]
     * @Desc 用户登出
     */
    @Override
    public String logout(HttpServletRequest request) {
        String method = SERVICE_BASE_PARAM + "userLoginOut";
        return SendRequestUtil.sendRequest(request,method);
    }

    /**
     * @Author zhou
     * @Date 2018/5/28 16:19
     * @Param [request, user]
     * @Desc 用户忘记密码，重置
     */
    @Override
    public String forgetPassword(HttpServletRequest request, User user) {
        String method = SERVICE_BASE_PARAM + "resetPwd&";
        return SendRequestUtil.sendRequest(request, user, method);
    }


}
