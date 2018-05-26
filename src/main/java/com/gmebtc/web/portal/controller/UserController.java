package com.gmebtc.web.portal.controller;

import com.gmebtc.web.portal.entiry.User;
import com.gmebtc.web.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @Author zhou
 * @Date 2018/5/26 10:01
 * @Desc 用户控制类
 */
@Controller
@RequestMapping(value = "${ROOT_PATH}")
public class UserController {


    @Resource
    private UserService userService;


    /**
     * @Author zhou
     * @Date 2018/5/24 14:21
     * @Desc 手机号注册
     */
    @RequestMapping("/user/userPhoneRegister")
    @ResponseBody
    public Object userPhoneRegister(User user, HttpServletRequest request) {
        String json = userService.userPhoneRegister(user, request);
        System.out.println(json);
        return json;
    }

}
