package com.gmebtc.web.portal.service.impl;

import com.gmebtc.web.portal.entity.Coin;
import com.gmebtc.web.portal.entity.User;
import com.gmebtc.web.portal.net.CommonUtil;
import com.gmebtc.web.portal.net.JsonUtil;
import com.gmebtc.web.portal.net.modle.ResultJson;
import com.gmebtc.web.portal.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;


/**
 * @Author zhou
 * @Date 2018/5/26 10:41
 * @Desc 用户基本信息service实现类
 */
@Service(value = "userService")
public class UserRegisterServiceImpl implements UserService{

//    private Logger logger = Logger.getLogger(UserRegisterServiceImpl.class);

    // 获得eolinker的基础参数
    @Value("${SERVICE_BASE_PARAM}")
    private String SERVICE_BASE_PARAM;

    /**
     * @Author zhou
     * @Date 2018/5/26 14:14
     * @Param [user:用户手机注册填写的信息, request]
     * @Desc 手机号注册
     */
    @Override
    public String userPhoneRegister(HttpServletRequest request,User user) {
        // pojo转换json字符串
        String data = JsonUtil.getJsonStringJavaPOJO(user);
        ResultJson resultJson = null;
        // 获得后台接口的uri
        String method = SERVICE_BASE_PARAM + "userPhoneRegister&";
        try {
            resultJson = CommonUtil.getResultJson(data, request, method);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (null == resultJson) {
            return null;
        }
        Object obj = resultJson.getData();
        return obj.toString();

    }

    @Override
    public String coinInfo( HttpServletRequest request,Coin coin) {
        // 转换成json对象
        String data = JsonUtil.getJsonStringJavaPOJO(coin);

        ResultJson resultJson = null;
        String method = SERVICE_BASE_PARAM + "getCoinInfo&";
        try {
            resultJson = CommonUtil.getResultJson(data, request, method);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (null == resultJson) {
            return null;
        }
        Object object = resultJson.getData();
        return object.toString();

    }


    /**
     * @Author zhou
     * @Date 2018/5/28 15:50
     * @Param [request, user]
     * @Desc 用户邮箱注册
     */
    @Override
    public String userEmaillRegister(HttpServletRequest request, User user) {

        String data = JsonUtil.getJsonStringJavaPOJO(user);

        ResultJson resultJson = null;
        String method = SERVICE_BASE_PARAM + "userEmailRegister&";
        try {
            resultJson = CommonUtil.getResultJson(data, request, method);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        if (null == resultJson) {
            return null;
        }
        Object object = resultJson.getData();
        return object.toString();
    }


}
