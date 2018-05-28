package com.gmebtc.web.portal.controller;

import com.gmebtc.web.portal.entity.User;
import com.gmebtc.web.portal.result.GlobalResult;
import com.gmebtc.web.portal.result.ResultCode;
import com.gmebtc.web.portal.service.UserLoginService;
import com.gmebtc.web.portal.utils.Toolkits;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/**
 * @Author zhou
 * @Date 2018/5/28 11:59
 * @Desc 用户登录,忘记登录密码,注销登录 控制类
 */
@Controller
@RequestMapping(value = "${ROOT_PATH}/user")
public class UserLoginController {

    @Resource(name = "userLoginService")
    private UserLoginService userLoginService;


    @Value("${SERVICE_BASE_PARAM}")
    private String SERVICE_BASE_PARAM;

    /**
     * @Author zhou
     * @Date 2018/5/28 14:32
     * @Param [request, user]
     * @Desc 用户登录
     */
    @RequestMapping(value = "/userLogin",method = RequestMethod.POST)
    @ResponseBody
    public Object userLogin (HttpServletRequest request,User user){
        HttpSession session = request.getSession();
        // 获取当前本地语言
        Locale locale = (Locale) session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        Map<String,String> map = new HashMap<String,String>();
        GlobalResult result = new GlobalResult();
        if ("zh_CN".equals(locale.toString())) {
            map.put("msg1", "邮箱或者手机号不能为空");
            map.put("msg2", "登录密码不能为空");
            map.put("msg3", "图片验证码错误");

        }
        if ("en_US".equals(locale.toString())) {
            map.put("msg1", "Mailbox or cell phone number can not be empty");
            map.put("msg2", "The login password can not be empty");
            map.put("msg3", "Picture validation code error");
        }

        // 判断图片验证码是否正确
        // 获取session中验证码
        Object imageVerifyCodeObj = session.getAttribute("imageVerifyCode");
        // 判断session中是否有验证码
      /*  if (null != imageVerifyCodeObj) {
            if (!imageVerifyCodeObj.toString().equalsIgnoreCase(user.getCheckCode())) {
                result.setCode(ResultCode.CODE_ERROR_7);
                result.setMessage(Toolkits.defaultString(map.get("msg3")));
                return result;
            }
        }else {
            result.setCode(ResultCode.CODE_ERROR_7);
            result.setMessage(Toolkits.defaultString(map.get("msg3")));
            return result;
        }*/

        if (null == user.getUserName() || "".equals(user.getUserName())) {
            result.setCode(ResultCode.CODE_ERROR_14);
            result.setMessage(Toolkits.defaultString(map.get("msg1")));
            return result;
        }
        if (null == user.getPassword() || "".equals(user.getPassword())) {
            result.setCode(ResultCode.CODE_ERROR_2);
            result.setMessage(Toolkits.defaultString(map.get("msg2")));
            return result;
        }

        String json = userLoginService.login(request,user);
        return json;
    }


    /**
     * @Author zhou
     * @Date 2018/5/28 14:33
     * @Param [request]
     * @Desc 用户登出
     */
    @RequestMapping(value = "/userLogout",method = RequestMethod.POST)
    @ResponseBody
    public String userLogout (HttpServletRequest request){
        userLoginService.logout(request);
        return "api/v1/logout";
    }


    /**
     * @Author zhou
     * @Date 2018/5/28 16:23
     * @Param [request, user]
     * @Desc 用户找回密码
     */
    @RequestMapping(value = "/userForgetPassword",method = RequestMethod.POST)
    @ResponseBody
    public Object userForgetPassword (HttpServletRequest request,User user){
        HttpSession session = request.getSession();
        // 获取当前本地语言
        Locale locale = (Locale) session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        Map<String,String> map = new HashMap<String,String>();
        GlobalResult result = new GlobalResult();
        if ("zh_CN".equals(locale.toString())) {
            map.put("msg1", "邮箱或者手机号不能为空");
            map.put("msg2", "图片验证码错误");

        }
        if ("en_US".equals(locale.toString())) {
            map.put("msg1", "Mailbox or cell phone number can not be empty");
            map.put("msg2", "Picture validation code error");
        }

        // 判断图片验证码是否正确
        // 获取session中验证码
        Object imageVerifyCodeObj = session.getAttribute("imageVerifyCode");
        // 判断session中是否有验证码
      /*  if (null != imageVerifyCodeObj) {
            if (!imageVerifyCodeObj.toString().equalsIgnoreCase(user.getCheckCode())) {
                result.setCode(ResultCode.CODE_ERROR_7);
                result.setMessage(Toolkits.defaultString(map.get("msg3")));
                return result;
            }
        }else {
            result.setCode(ResultCode.CODE_ERROR_7);
            result.setMessage(Toolkits.defaultString(map.get("msg3")));
            return result;
        }*/

        if (null == user.getUserName() || "".equals(user.getUserName())) {
            result.setCode(ResultCode.CODE_ERROR_14);
            result.setMessage(Toolkits.defaultString(map.get("msg1")));
            return result;
        }


        String json = userLoginService.forgetPassword(request,user);
        return json;
    }

}
