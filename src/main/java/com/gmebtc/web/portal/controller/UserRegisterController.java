package com.gmebtc.web.portal.controller;

import com.gmebtc.web.portal.entity.Coin;
import com.gmebtc.web.portal.entity.User;
import com.gmebtc.web.portal.result.GlobalResult;
import com.gmebtc.web.portal.result.ResultCode;
import com.gmebtc.web.portal.service.UserService;
import com.gmebtc.web.portal.utils.Toolkits;
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
 * @Date 2018/5/26 10:01
 * @Desc 用户控制类
 */
@Controller
@RequestMapping(value = "${ROOT_PATH}/user")
public class UserRegisterController {


    @Resource(name = "userService")
    private UserService userService;

    @RequestMapping("/coinInfo")
    @ResponseBody
    public Object coinInfo (HttpServletRequest request,Coin coin){
        String result = userService.coinInfo( request,coin);
        return result;
    }





    /**
     * @Author zhou
     * @Date 2018/5/24 14:21
     * @Desc 手机号注册
     */
    @RequestMapping(value = "/userPhoneRegister",method = RequestMethod.POST)
    @ResponseBody
    public Object userPhoneRegister( HttpServletRequest request,User user) {
        HttpSession session = request.getSession();
        // 获取当前本地语言
        Locale locale = (Locale) session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        Map<String,String> map = new HashMap<String,String>();
        GlobalResult result = new GlobalResult();
        if ("zh_CN".equals(locale.toString())) {
            map.put("msg1", "手机号不能为空");
            map.put("msg2", "手机验证码不能为空");
            map.put("msg3", "登录密码不能为空");
            map.put("msg4", "资金密码不能为空");
            map.put("msg5", "图片验证码错误");
            map.put("msg6", "手机号格式错误");

        }
        if ("en_US".equals(locale.toString())) {
            map.put("msg1", "Cell phone number can not be empty");
            map.put("msg2","Cell phone verification code can not be empty");
            map.put("msg3", "The login password can not be empty");
            map.put("msg4", "Capital cipher can not be empty");
            map.put("msg5", "Picture validation code error");
            map.put("msg6", "Cell phone number error");

        }

        // 判断图片验证码是否正确
        // 获取session中验证码
        Object imageVerifyCodeObj = session.getAttribute("imageVerifyCode");
        // 判断session中是否有验证码
      /*  if (null != imageVerifyCodeObj) {
            if (!imageVerifyCodeObj.toString().equalsIgnoreCase(user.getCheckCode())) {
                result.setCode(ResultCode.CODE_ERROR_7);
                result.setMessage(Toolkits.defaultString(map.get("msg5")));
                return result;
            }
        }else {
            result.setCode(ResultCode.CODE_ERROR_7);
            result.setMessage(Toolkits.defaultString(map.get("msg5")));
            return result;
        }*/

        // 手机号码是否为空
        if (null == user.getPhoneNumber() || "".equals(user.getPhoneNumber())) {
            result.setCode(ResultCode.CODE_ERROR_9);     // 手机号为空状态码
            result.setMessage(Toolkits.defaultString(map.get("msg1")));
            return result;
        }
        if (null == user.getPassword() || "".equals(user.getPassword())) {
            result.setCode(ResultCode.CODE_ERROR_2);
            result.setMessage(Toolkits.defaultString(map.get("msg3")));
            return result;
        }
        if (null == user.getPayPassword() || "".equals(user.getPayPassword())) {
            result.setCode(ResultCode.CODE_ERROR_3);
            result.setMessage(Toolkits.defaultString(map.get("msg4")));
            return result;
        }
        if (Toolkits.isPhone(user.getPhoneNumber())) {
            result.setCode(ResultCode.CODE_ERROR_13);
            result.setMessage(Toolkits.defaultString(map.get("msg6")));
        }
        // 手机验证码是否为空
        if (null == user.getPhoneCode() || "".equals(user.getPhoneCode())) {
            result.setCode(ResultCode.CODE_ERROR_11);
            result.setMessage(Toolkits.defaultString(map.get("msg2")));
            return result;
        }

        // 如果简单验证通过,调用service
        String json = userService.userPhoneRegister(request,user);
        return json;
    }


    @RequestMapping(value = "/userEmailRegister",method = RequestMethod.POST)
    @ResponseBody
    public Object userEmailRegister(HttpServletRequest request,User user) {
        /**
         * @Author zhou
         * @Date 2018/5/28 11:38
         * @Param [user:用户邮箱注册的信息]
         * @Desc 用户邮箱注册
         */
        HttpSession session = request.getSession();
        // 获取当前本地语言
        Locale locale = (Locale) session.getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        Map<String,String> map = new HashMap<String,String>();
        GlobalResult result = new GlobalResult();
        if ("zh_CN".equals(locale.toString())) {
            map.put("msg1", "邮箱不能为空");
            map.put("msg2", "登录密码不能为空");
            map.put("msg3", "资金密码不能为空");
            map.put("msg4", "图片验证码错误");

        }
        if ("en_US".equals(locale.toString())) {
            map.put("msg1", "Mailbox cannot be empty");
            map.put("msg2", "The login password can not be empty");
            map.put("msg3", "Capital cipher can not be empty");
            map.put("msg4", "Picture validation code error");
        }

        // 判断图片验证码是否正确
        // 获取session中验证码
        Object imageVerifyCodeObj = session.getAttribute("imageVerifyCode");
        // 判断session中是否有验证码
      /*  if (null != imageVerifyCodeObj) {
            if (!imageVerifyCodeObj.toString().equalsIgnoreCase(user.getCheckCode())) {
                result.setCode(ResultCode.CODE_ERROR_7);
                result.setMessage(Toolkits.defaultString(map.get("msg4")));
                return result;
            }
        }else {
            result.setCode(ResultCode.CODE_ERROR_7);
            result.setMessage(Toolkits.defaultString(map.get("msg4")));
            return result;
        }*/

        if (null == user.getEmail() || "".equals(user.getEmail())) {
            result.setCode(ResultCode.CODE_ERROR_10);
            result.setMessage(Toolkits.defaultString(map.get("msg1")));
            return result;
        }
        if (null == user.getPassword() || "".equals(user.getPassword())) {
            result.setCode(ResultCode.CODE_ERROR_2);
            result.setMessage(Toolkits.defaultString(map.get("msg2")));
            return result;
        }
        if (null == user.getPayPassword() || "".equals(user.getPayPassword())) {
            result.setCode(ResultCode.CODE_ERROR_3);
            result.setMessage(Toolkits.defaultString(map.get("msg3")));
            return result;
        }


        String json = userService.userEmaillRegister(request, user);
        return json;
    }




}
