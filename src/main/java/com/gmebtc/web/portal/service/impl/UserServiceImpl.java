package com.gmebtc.web.portal.service.impl;

import com.gmebtc.web.portal.entiry.User;
import com.gmebtc.web.portal.net.CommonUtil;
import com.gmebtc.web.portal.net.JsonUtil;
import com.gmebtc.web.portal.net.modle.ResultJson;
import com.gmebtc.web.portal.service.UserService;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;


/**
 * @Author zhou
 * @Date 2018/5/26 10:41
 * @Desc 用户基本信息service实现类
 */
@Service
public class UserServiceImpl implements UserService{


    @Override
    public String userPhoneRegister(User user, HttpServletRequest request) {



        String data = JsonUtil.getJsonStringJavaPOJO(user);

        ResultJson resultJson = null;
        try {
            resultJson = CommonUtil.getResultJson(data, request, "api/v1.0/user/&");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        Object obj = resultJson.getData();
        return obj.toString();
    }


}
